## 1：JVM基础知识

### 什么是JVM

答：jvm又叫java虚拟机，是虚拟的一个计算机。内部将class文件编译成了字节码。而后将字节码根据系统的不同编译成改系统可以运行的指令。所以屏蔽了平台的差异。

### Java 虚拟机的内存划分？

##### 一、程序计数器

线程私有的，是一块较小的内存空间，每个线程都有它自己的程序计数器，并且任何时间一个线程只有一个方法在执行，也就是所谓的当前方法。可以看做当前线程所执行的字节码的行号指示器，程序计数器会存储当前线程正在执行的 java 方法的 Jvm 指令地址。

##### 二、Java 虚拟机栈

每个线程在创建时都会创建一个虚拟机栈，其内部保存一个个的栈帧，对应着一次次的java方法调用，前面谈程序计数器时，提到的当前方法；同理，在一个时间点，对应的只有一个活动的栈帧，通常叫做当前帧，方法所在的类叫做当前类。如果在该方法中调用了其他方法，对应的新的栈帧就会被创建出来，成为新的当前帧，一直到它返回结果或者执行结束。JVM直接对栈的操作只有两个，就是对栈帧的压栈和出栈。

栈帧中存储着局部变量表，操作栈，动态链接，方法出口。

##### 第三、本地方法栈

也是线程私有的，它和Java虚拟机栈是非常的相似的，不同的是，本地方法栈服务的对象是native原生方法，而虚拟机栈服务的是java方法。在 Hotspot JVM 中，选择合并了虚拟机栈和本地方法栈。

##### 第四、堆

堆被所有的线程共享，它是Java内存管理的核心区域，用来放置 Java 对象实例。创建的对象和数组都保存在堆内存中，也是垃圾收集器进行垃圾收集的最重要的区域。由于现代JVM 采用分代收集算法，因此 Java堆从GC的角度还可以细分为：新生代（Eden区、From survivor 区 和 To Survivor区）和老年代。

##### 第五、方法区

就是我们常说的永久代，线程共享的。用于存储被JVM加载的类的信息、常量、静态变量、即时编译器编译后的代码等数据。Java 8中 永久代就被移出 Hotspot JVM了，移除永久代可以促进 HotsSpot与JRockit 的融合，因为JRockit没有永久代。元空间取代了永久代，元空间的是在内存中的。

运行时常量池。这是方法去的一部分。Class文件除了有类的版本、字段、方法、接口等信息外，还有一项信息是常量池。Java的常量池可以存放各种常量信息，不管是编译去生成的各种字面量，还是需要在运行时决定的符号引用，这部分内容将在类加载后存放到常量池中。

###  类的加载机制

答：双亲委派，自下向上查找类是否被加载，加载过的类直接拿。没发现被加载，就自上向下加载类。

![20190611005136673](C:\Users\whfch\Desktop\学习\jvm\20190611005136673.png)

一、为什么会这样设计

答：安全问题，如果有人恶意篡改了String类并打包。如果没有自上往下加载类，很可能会加载成恶意篡改的类。导致程序不安全。此外，在源码中加载类的方法（loadClass），都是采用 synchronized代码块 来加锁。

二、自定义加载类的实现

答：继承ClassLoader，重写findClass方法

三、是否可以打破双亲委派机制

答：可以，因为类的加载主要依靠ClassLoader这个类，只要重写ClassLoader中（loadClass）那么就可以将双亲委派机制打破。

像热部署就是打破了双亲委派机制才能实现改变类的加载。

四、类的加载过程

- Loading（类的加载）：双亲委派

- Linking（准备）：校验文件，将类、方法、属性等符号引用解析为直接引用
  常量池中的各种符号引用解析为指针、偏移量等内存地址的直接引用

- Initializing（初始化类）：初始化静态成员变量，如 static int a = 8 ，那么就会将a赋值为0

  小总结：

1. load - 默认值 - 初始值
2. new - 申请内存 - 默认值 - 初始值

五、单例模式中为什么需要使用volatile来修饰

因为，new一个类时，可能会发生指令重排，可能导致先一步赋值。所以将类可见，防止指令重排。



## 2:jmm

jmm是一个内存模型的规范，定义了内存和线程之间变量的存储关系。




MVC：
1.	View 通过delegate传送指令到 Controller
2.	Controller 实现delegate，完成业务逻辑后，要求持有的Model 改变状态。
3.	Controller 控制持有的View去显示 view持有的model的数据。

MVP：
将 Controller 改名为 Presenter，同时改变了通信方向

1.	Controller持有Presenter，model，view. Controller持有的View赋给presenter持有的View。Controller持有的Model赋给presenter持有的Model。
2.	View 通过delegate传送指令到 Presenter
3.	Presenter实现delegate，完成业务逻辑后，要求持有的Model 改变状态。
4.	Presenter控制持有的View去显示， Presenter持有的model的数。
备注：
   1. View 与 Model 不发生联系，都通过 Presenter 传递。
   2. View 非常薄，不部署任何业务逻辑，称为"被动视图"（Passive View），即没有任何主动性，而 Presenter非常厚，所有逻辑都部署在那里。

MVP优点：
1.	Model与View完全分离，修改互不影响
2.	更高效地使用，因为所有的逻辑交互都发生在一个地方—Presenter内部
3.	一个Preseter可用于多个View，而不需要改变Presenter的逻辑（因为View的变化总是比Model的变化频繁）。
4.	更便于测试。把逻辑放在Presenter中，就可以脱离用户接口来测试逻辑（单元测试）

MVP：是MVC模式的变种。
项目开发中，UI是容易变化的，且是多样的，一样的数据会有N种显示方式；业务逻辑也是比较容易变化的。为了使得应用具有较大的弹性，我们期望将UI、逻辑（UI的逻辑和业务逻辑）和数据隔离开来，而MVP是一个很好的选择。
Presenter代替了Controller，它比Controller担当更多的任务，也更加复杂。Presenter处理事件，执行相应的逻辑，这些逻辑映射到Model操作Model。那些处理UI如何工作的代码基本上都位于Presenter。
MVC中的Model和View使用Observer模式进行沟通；MPV中的Presenter和View则使用Mediator模式进行通信；Presenter操作Model则使用Command模式来进行。基本设计和MVC相同：Model存储数据，View对Model的表现，Presenter协调两者之间的通信。在 MVP 中 View 接收到事件，然后会将它们传递到 Presenter, 如何具体处理这些事件，将由Presenter来完成。
如果要实现的UI比较复杂，而且相关的显示逻辑还跟Model有关系，就可以在View和 Presenter之间放置一个Adapter。由这个 Adapter来访问Model和View，避免两者之间的关联。而同时，因为Adapter实现了View的接口，从而可以保证与Presenter之 间接口的不变。这样就可以保证View和Presenter之间接口的简洁，又不失去UI的灵活性。

MVVM：

1.	Controller持有ViewModel，model，view. Controller持有的View控制ViewModel持有的View根据Model变化显示。Controller持有的ViewModel控制ViewModel持有的Model。
2.	View 通过KVO检测ViewModel中str的值变化，反馈给ViewModel的View。
3.	ViewModel控制持有Model 改变状态。Controller持有的View控制ViewModel持有的View根据Model变化显示。

备注：它采用双向绑定（data-binding）：View的变动，自动反映在 ViewModel，反之亦然。

MVVM优点: 
1. 低耦合。View可以独立于Model变化和修改，一个ViewModel可以绑定到不同的”View”上，当View变化的时候Model可以不变，当Model变化的时候View也可以不变。 
2. 可重用性。你可以把一些视图逻辑放在一个ViewModel里面，让很多view重用这段视图逻辑。 
3. 独立开发。开发人员可以专注于业务逻辑和数据的开发（ViewModel），设计人员可以专注于页面设计。 
4. 可测试。界面素来是比较难于测试的，而现在测试可以针对ViewModel来写。

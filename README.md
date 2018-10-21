# AdapterFrameDemo
1、UITableView、UICollectionView 超多cell独立配置自我管理数据和UI，部分解耦VC和tableView。
2、增加页面的资源中心Context（上下文），中转当前页面的主模型（包含所有该页面的所有数据和状态）、逻辑处理类、网络请求管理类。
关键点是弱引用VC，将context传给全局View（contentView,甚至每个cell），view可以通过context调起所有数据和对应逻辑，方便其他类使用，而又避免反复的delegate回调。
当然，context写法会造成引用Context的类局部高度耦合，可以限定context的使用范围，区别使用。

# VHYun_SDK_OPS_iOS

微吼云 文档/白板演示 iOS SDK 及 Demo

集成和调用方式，参见官方文档：http://www.vhallyun.com/docs/show/305.html <br>

### SDK 两种引入方式
1、pod 'VHYun_OPS'<br>
注意检查有 Frameworks 路径 是否正常设置<br>

2、手动下载拖入工程设置路径、Embed&Sign<br>
注意依赖 https://github.com/vhall/VHYun_SDK_Core_iOS.git VHCore库<br>

### APP工程集成SDK基本设置
1、关闭bitcode 设置<br>
2、plist 中 App Transport Security Settings -> Allow Arbitrary Loads 设置为YES<br>
3、注册`AppKey`  [VHLiveBase registerApp:`AppKey`]; <br>
4、检查工程 `Bundle ID` 是否与`AppKey`对应 <br>


### 版本更新信息
#### 版本 v2.1.1 更新时间：2020.05.24
更新内容：<br>
1、修复偶现画笔不显示问题<br>

#### 版本 v2.1.0 更新时间：2020.04.26
更新内容：<br>
1、优化底层渲染库<br>

#### 版本 v2.0.1 更新时间：2020.03.13
更新内容：<br>
1、支持Pods集成<br>

#### 版本 v2.0.0 更新时间：2019.08.21
更新内容：<br>
1、支持文档多实例<br>

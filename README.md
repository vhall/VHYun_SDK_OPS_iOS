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
#### 版本 v2.5.3 更新时间：2023.11.10

更新内容：

1. 修复大文档加载不出来的问题

#### 版本 v2.5.2 更新时间：2023.11.09

更新内容：

1. 优化了文档日志上报
2. 修复了文档传递宽高为0导致加载失败的问题

#### 版本 v2.5.1 更新时间：2022.08.22

更新内容：

1. 增加画笔的撤销与恢复操作

#### 版本 v2.5.0 更新时间：2022.05.24

更新内容：<br>
1、修复已知的问题，其中包括显示异常、多文档等<br>
2、增加水印功能<br>

#### 版本 v2.4.1 更新时间：2022.03.21
更新内容：<br>
1、优化部分内容<br>
2、版本迁移<br>
3、修复部分一直Bug<br>

#### 版本 v2.4.0 更新时间：2021.10.27
更新内容：<br>
1、兼容base重构版本<br>

#### 版本 v2.3.0 更新时间：2021.05.31
更新内容：<br>
1、修复文档画笔颜色不生效的bug<br>
2、修复文档切换后台,观看端文档翻页加载不出来的bug<br>
3、修复回放文档拖动进度不显示的bug<br>
4、取消时间戳矫正<br>
5、优化日志上报<br>

#### 版本 v2.2.2 更新时间：2020.08.24
更新内容：<br>
1、修复文档选中不调用的问题<br>
2、修复文档默认显示的问题<br>
3、升级文档内核版本<br>

#### 版本 v2.1.2 更新时间：2020.06.15
更新内容：<br>
1、修复Web端打开文档开关再演示文档，文档不显示问题<br>

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

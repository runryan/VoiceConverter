# WAConverter
该库从腾讯云IM的项目抽取出来的，用于WAV、AMR音频格式转换

### 怎样安装？

* 在Objective-C项目中使用，在Podfile中加入：

  `pod 'WAConverter'`
  
 * 在Swift项目中使用:
   1. 在Podfile中加入：
  
      ```
      use_modular_headers!
      pod 'WAConverter'
      ```
    2. 在`Bridging-Header.h`文件中加入：
    
       ```
       #import <WAV_ARM_Converter/WAConverter.h>`
       ``` 
       
### 怎样使用？

```
if WAConverter.wav(toAmr: url.path, amrSavePath: armPath) != 0 {
  // 格式转换失败……
  return
}
```

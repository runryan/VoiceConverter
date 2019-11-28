# WAConverter
该库从腾讯云IM的项目抽取出来的，用于WAV、AMR音频格式转换

### 怎样安装？

* 在Objective-C项目中使用，在Podfile中加入：
  ```ruby
  pod 'WAConverter'
  ```
 * 在Swift项目中使用:
   1. 在Podfile中加入：
  
      ```ruby
      use_modular_headers!
      pod 'WAConverter'
      ```
    2. 在`Bridging-Header.h`文件中加入：
    
       ```Objective-C
       #import <WAConverter/WAConverter.h>
       ``` 
       
### 怎样使用？
* 在OC中使用
  ``` Objective-C
  #import <WAConverter.h>
  [WAConverter convertWAV:wavPath toAMR:amrPath]
  ```

* 在Swift中使用
  ```Swift
  if !WAConverter.convertWAV(url.path, toAMR: armPath) {
      // 格式转换失败
      return
  }
  ```

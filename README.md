# 依赖
`cordova-plugin-cocoapod-support`

# 安装

```bash
cordova plugin add https://github.com/boboxiaodd/cordova-plugin-inputbar
```
修改 `Bridging-Header.h` 增加
```c++
#import "ExtAudioConverter.h"
```

# 使用
```js
CDVInputBar.create(function(obj){
        console.log(obj);
         if(obj.action == "onResize"){
            //WebView Resize
            console.log(obj.height); //inputbar height
         }
         if(obj.action == "audio"){
             //Audio record filished
             //Play Sound
             CDVInputBar.play_sound(null,null,{"path":obj.url})
             setTimeout(function(){
                            //Stop Sound
                            CDVInputBar.stop_sound();
                        },1000)
         }
         //Play Sound End Event
         if(obj.action == "playend"){
         
         }
         if(obj.action == "onKeyboardDidHide") {}
         if(obj.action == "onKeyboardDidShow") {}
         if(obj.action == "onKeyboardWillShow") {}
         if(obj.action == "onKeyboardWillHide") {}   
         if(obj.action == "send"){
             console.log("send msg:" + obj.text); //send msg
         }
         if(obj.action == "emoji"){ //emji
            console.log("send emoji:" + obj.index) //send emoji
         } 
    },function(err){
        console.log(err);
    },{"is_chat":true,"emoji_prefix":"/www/images/emoji/emoji-"}, //表情至少48个
        [{"title":"Photo","action":"photo","icon":"ib_camera"},
         {"title":"GIft","action":"gift","icon":"ib_gift"},
         {"title":"Video","action":"video","icon":"ib_call"},
         {"title":"Call","action":"voice","icon":"ib_phone"}]); //图标预定义4个，可自己增加


CDVInputBar.play_sound(null,null,{"path":url}); //Play a local auido file
CDVInputBar.stop_sound(); //stop play
CDVInputBar.close(); //remove Inputbar from view
CDVInputBar.hide();  //hide Inputbar
CDVInputBar.show();  //show Inputbar
CDVInputBar.reset(); //reset Inputbar height
```

# Requirements
- iOS 11+
- Xcode 10.2+
- Swift 5+

# Refer

https://github.com/icanzilb/SwiftSpinner

https://github.com/lixing123/ExtAudioFileConverter

https://github.com/fulldecent/FDSoundActivatedRecorder

# ScreenShot

![image](https://github.com/boboxiaodd/cordova-plugin-inputbar/blob/master/screenshot/6011572437314_.pic.jpg)

![image](https://github.com/boboxiaodd/cordova-plugin-inputbar/blob/master/screenshot/6021572437315_.pic.jpg)

![image](https://github.com/boboxiaodd/cordova-plugin-inputbar/blob/master/screenshot/6031572437315_.pic.jpg)

![image](https://github.com/boboxiaodd/cordova-plugin-inputbar/blob/master/screenshot/6041572437316_.pic.jpg)

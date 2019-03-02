# MAK Indicator View

MAKIndicatorView is to show custom indicator view for vertical and horizontal scrolled images.  


![Video](https://res.cloudinary.com/dlikzl3m2/image/upload/v1551557555/Github/indicator.gif)



| Attribute Name   | Default Value  | Description  |
| ------------- |:-------------:| -----:|
| unfillImage : ***UIImage***     | empty blank image | unfill image of indicator |
| fillImage : ***UIImage***      | empty blank image | fill image of indicator |
| maxiumNumberOfImages : ***Int***     | 1 | count of indicators in view |
| isHorizontal  : ***Bool***    | true  | Indicator view can be horizontal andvertical |
| selectedImage : ***Int***     | nil  | set the number of selected view. Change it when image in collectionview change |


### Integration

- copy ***VerticalindicatorView*** folder in your project
- make a view in storyboard  and ***MAKIndicatorView*** child view and make IBOutlet in controller
- set ***unfilled*** and ***filled*** images of indicator either in story board or in controller
- Set ***maxiumNumberOfImages*** as size of indicators.
- update ***selectedImage*** to change indicator


Check viewcontroller of project for demo.

<img classes="fancybox fig-50" src="https://res.cloudinary.com/dlikzl3m2/image/upload/v1551560294/Github/license.png" style="width:5%;float:left"
title="Princess Make up Screen shot 1"/>



## License

    Copyright 2019 Afnan khan

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

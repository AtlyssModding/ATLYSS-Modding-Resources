# Icons Render
`IconScene.blend` is a simple scene to easily generate icons for your items. The hardest part is importing and positioning your model into the scene (not difficult at all) and hitting `Render`. The scene will do the rest of the work by generating a 32X32 icon with a thin black outline.
#
## Overview of the Scene
Inside **Layout Workspace** there are three tabs on the left, right and bottom.
- On the left anything inside the box is what will be rendered.
- Right is the **3D Workspace** itself so you can easily adjust position and rotation.
- Bottom is the **Material Editor** for the object.

**Rendering Tab** is where a full-screen version of whatever you render will be displayed.\
**Compositing tab** is the inner workings of the black outline and other compositing e[gisffects.
## Instructions
Start by Appending your desired model into the scene: `File -> Append -> (Model's .blend file) -> Objects -> (Object of model) -> Append`

The model will then be placed into the scene at the world origin, adjust the position and rotation of the object to fit inside the square on the left. You can make the object look smaller or bigger by either scaling the object itself or clicking on the Camera object, going to its Data tab, and adjusting the "Orthographic Scale" amount.

`Render` -> `Render image` -> You now have a 32X32 icon with black outline. Save it wherever you need it in.
#
If you would like to add/adjust the antialiasing to the icon's outline then go to the Compositing tab. The top Dilate/Erode node is how many pixels the outline's thickness will be (currently 1px), and the second one on the bottom erases the inner parts of the outline (currently 0px).

The two antialiasing nodes is how "blurry" the outline and model will be respectively. You can adjust the effect by changing the "Contrast Limit" amount. The current default settings make the outline a solid black colour and add a slight blurring to the model for better visibility.\
![Antialiasing example](/Homebrewery/Icons%20Render/Antialiasing.png)
## Troubleshooting
- If your model is all black in the viewport or when rendering, your material is set wrong. Plug the Image Texture directly into the Output, not through any BSDF nodes. There are no lights in the scene as ATLYSS renders everything unshaded and your model will be too.
- Don't simply drag & drop your object into the scene from another `.blend` file, Instead Append the object into the scene. Otherwise it'll open the other `.blend` file itself and close the IconScene project.
- If the resulting render looks a bit lopsided it's likely due to the rotation of the item being slightly off on one side. This is most prominent with swords at a 45-degree angle. To get a perfect render do the following:\
1\. Make sure the model is level with the X or Y axis.\
2\. Rotate using intervals of 45/90 degrees. This can be done by pressing R to rotate and typing the desired number.\
3\. Once the object has the right rotation it's more than likely to not have the right position, but you can move the object on the diagonals by pressing the desired axis button twice.

For instance, I press G to move, press X to lock it to the X axis and press X again to lock it to the diagonal X axis. This way you can keep the model perfectly down the middle of whichever axis you choose, removing any sort of weird lopsidedness upon rendering.\
![Positioning example](/Homebrewery/Icons%20Render/Positioning.png)
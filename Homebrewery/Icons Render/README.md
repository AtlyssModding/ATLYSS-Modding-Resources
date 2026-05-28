# EASY ATLYSS ICON MAKING SCENE
This .blend file is a simple scene set up to easily generate icons for your weapons/items. The hardest part is importing and positioning your model into the scene (not difficult at all) and hitting Render, the scene will do the rest of the work generating a 32x32 icon with a thin black outline.
#
## Overview of the Scene
On the Layout Workspace there are three tabs; On the left anything inside the box is what will be rendered, on the right is the 3D workspace itself so you can easily adjust position and rotation, and on the bottom is the Material Editor for the object.

On the Rendering Tab is where a full-screen version of whatever you render will be displayed.

On the Compositing tab is the inner workings of the black outline and other compositing effects.
## Instructions
Start by Appending your desired model into the scene (File > Append > (.blend file of model) > Objects > (Object of model) > Append)

The model will then be placed into the scene at the world origin. Adjust the position and rotation of the object to fit inside the square on the left. You can make the object look bigger or smaller by either scaling the object itself or clicking on the Camera object, going to its Data tab, and adjusting the Orthographic Scale amount.

Render > Render image > You now have a 32x32 icon with a black outline. Save to whatever folder you need it in.

If you would like to add/adjust the antialiasing to the icon's outline, go to the Compositing tab. The top Dilate/Erode node is how many pixels the outline's thickness will be (currently 1 pixel). The second one on the bottom changes erases the inner parts of the outline (currently 0 pixels) (This node is only here for moral support). The first antialiasing node is how "blurry" the outline will be, you can adjust its effects by changing the Contrast Limit amount. The second antialiasing node manages how "blurry" the model itself will look, you can adjust its effects by changing the Contrast Limit amount. The current default settings make the outline a solid black color and add slight blurring to the model for better visibility.
## Troubleshooting
If your model is all black in the viewport or when rendering, your material is set up wrong. Plug the Image Texture directly into the Output, not through any BSDF nodes. There are no lights in the scene as ATLYSS renders everything unshaded and your model will be too.

Do not simply drag/drop your object into the scene from another .blend file. It will open the other .blend file itself and close the IconScene project.

If the resulting render looks a bit lopsided it's likely due to the rotation being slightly off on one side. This is most prominent with swords at a 45 degree angle. To get a perfect render do the following:\
Make sure the model is level with the X or Y axis. Rotate using intervals of 45/90 degrees. This can be done by pressing R to rotate and typing the desired number. Once the object has the right rotation its more than likely to not have the right position, but you can move the object on the diagonals by pressing the desired axis button twice. For instance, I press G to move, press X to lock it to the X axis and press X again to lock it to the diagonal X axis. This way you can keep the model perfectly down the middle of whichever axis you choose, removing any sort of weird lopsidedness upon rendering.
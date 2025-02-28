# CSE 169: Computer Animation

below i've copied the assignment descriptions from canvas.

86 名前： ◆2Q36/6/OOo [sage] 投稿日：02/10/10(木) 21:43 ID:???
　　　　　　　　　　　　　　　　　　,,.　,ｨ ||　　　 　 i ﾞ(
　　　　　　　　　　　　　　 　 　 i｛,　ﾔ､!l,,､-‐‐‐-ヽヽ､､,,,,_　　　ﾄ､
　　　　　　　　　　　　　　　 \_\_,,,,＞｀''":.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:..｀ヽ‐-'丿
　　　　　　　　　　　　　 ,,ｨｼ-ッ:.:.:.:.:,:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:';.:.:.:.:.:｀ヽ--ｯ'
　　　　　　　　　　　 　 /'　.／:.:.:.:.:.:.:.:.:.:/:.:.:.:.:.:.:.:.:.:.:.:.:.:.:.:;;;:.:.:.:.:.:.:.:.:ﾞ､
　　　　　　　　　　　 　 　 /:.;:.:.:/-‐‐‐‐!:.:.:.:.:.:.:.ト､､;,;.:,;.:.:''':.:.:.:.:.:.:.:.:.:.ﾞ､
.　　　　　　　　　　 　 　 /:.「!:.:/　　 　 !:.:.:.:.:.:.;.:ｌ　 r-ﾞ!,｀'''''!:.:.:.:.:.:;:.:.:.:.:ﾞ'‐-ｲ
　　　　　　　　　　　　　,'／!'l:,'　　　_,,..l ﾘ;.:.:.:.:.l!;;!　ﾞ'ｰ r､ﾝ　 l,:.:.:.:.:.ト､:.:.:.ﾞ,"~
　　　　　　　　　　　　　'　 jr'l!'""!~/　 ! ',:.:.:.:.l l!~ﾞﾞ l'''i ﾞ''r-､ l,:.:.:.:.:l 　｀ﾞヾ.i
　　　　　　　　　　､,,　　,,r':l:.:.:.;;ﾝ l ﾂ　　　 ',:.:.:.|　　 |:.:!　 l:.:.:ﾞ'l,:.:.:.:,!　　　 j
　　　　　　　　　　 ﾞヾ ≡ 彡!:.:,;ﾝ-lr''",.　　 ﾞ､:.ﾄ､,,,,_ l ﾘ　 l:,:.:.;,!:.:.:l:.ﾞ'‐､.,, ,'
　　　　　　　　　　　-‐''-ﾂ:,／'i ir'}ヽ　　 　 ﾞ:l ﾞ' r-,､ﾞ'ｰ　!ﾞ i:.:.:i,:.:l:.:.:.:.:.:/
　　　　　　　　　　　　　 ,ﾝﾘ;;;;{j ゞ'_,　　　　　ﾞ　.{i"ﾘ ﾞ｝　　 l:.:.:l,:r-､:.:.:l ﾞ i
　　　　　　　　　　　　 　 /;;;;;;;;!　｀　　　　　　　 ｀ ´-　　　 '!:.|r'!}"}:.:.:! l
　　　　　　　　　　　　　/;;;;;;/;;{　　　 ,　　　　　　　　　　　　 l;lj ﾞ} .ﾉ;:.:.|. l
　　　　　　　　　　　 ,r';､-'";ｼ i;ﾞ,、　　 i::.､　　　　　　　　　 　 !,,／;;;;:.:|　 l,
　　　　　　　　　　　'"´ 　 '".,';;;;ヽ,　　　　　　　　　　　　,r'ﾞ~~;;;;;::;;;;:::{､, '､
　　　　　　　　　　　　　　　 /;;;;;;ｼ i ヽ,　‐-　　　　　　,､イ;;;;;;;;;;;;;;;;:.:.;;;:}ヽﾐ r'''''ヽ
　　　　　　　　　　　　　　　,シ''" /;ｼﾞ i ヽ, 　 　 ,.､-''"　 l;;;;;r､;;;;l､ﾞ'､:.;;l ｀ﾞ''i:{:::::::::',
　　　　　　　　　　　 ,､-‐…‐--､'",､-マ｀ﾞﾞﾞ"´ 　 　 　.!'､,ヽ-‐''ヽ,ヽ;;!　.l:l:::::::::::}
　　　　　　　　　　 /　　　　　､　　 ',. {´ 　　　　　　　　　/　　　　 ﾞ i 　 i,　 l:i;:::::::::l
　　 　 　 　 　 　 /　　　　　　 ヽ､　 i 　ヽ,　　　　　　 ,､-'　 　 　 　 l 　ﾞ､;:;ﾞ､､::::::j,
　　　　　　　　　/　　　　　　　 　 ﾞ､　　 ﾞ､　　　　 ,.'　　　　　 　 　 l 　 ｀ﾞ７ｰ''ﾞ､ヽ,
　 　 　 　 　 　 ,'　　　　 　 　 　 　 ',　　　ﾞヽ､,,,,,ノ　　　　　　　　　 l.　／　　　ﾞ'ヾ r､
　　　　　　　　 i 　　　　　　　　 　 　 i 　　　　　　　　　　　　　　　　　}r'　　　　ﾞ'ヽ{-､ヽ

ラッカ（灰羽連盟）

## Project 1: Skeleton

### Assignment

Write a program that loads a character skeleton from a .skel file (described below) and display it in 3D. All joints in the skeleton will be 3-DOF rotational joints (ball-and-socket joints) that rotate in x first, then y, then z. The program should perform the forward kinematics computations to generate world space matrices for the joints.

The program should be able to load any .skel file given to it, and should accept a .skel file name as a command line argument. If no file name is given, it should default to 'test.skel'.

World space matrices for each joint must be computed and retained in the joint for drawing and for later uses such as skinning (project 2).

The posed skeleton should be rendered as 3D boxes, based on the boxmin and boxmax properties specified in the .skel file. The boxes can be wireframe or shaded.

### Loading the File

To make loading the data file easier, a class called Tokenizer is provided in the sample code which opens a file and reads individual strings, ints or floats. Also, please see the lecture notes from Lecture 2: Skeletons for more info.

If you want to add extra features, feel free. Some possible ideas include:

-   The ability to select a current DOF and adjust its value interactively
-   Rendering solid boxes with shading
-   Create your own creature skeleton (make your own .skel file)
-   Load several different skeletons and display them together

### .skel File Format

The .skel file is a simple indented hierarchy of joints. Each joint also lists some relevant data about its configuration. For a sample .skel file, see test.skel. For a more complex skeleton, see dragon.skel Download dragon.skel, or wasp.skel. The .skel data file has 8 keyword tokens which are then followed by data (usually floats). These specify properties of a particular joint. Not all joints will specify all properties, so reasonable default values should be used. Here is a list of the keywords and their associated data:

| Token     | Format   | Description               |
| --------- | -------- | ------------------------- |
| offset    | x y z    | joint offset vector       |
| boxmin    | x y z    | min corner of box to draw |
| boxmax    | x y z    | max corner of box to draw |
| rotxlimit | min max  | x rotation DOF limits     |
| rotylimit | min max  | y rotation DOF limits     |
| rotzlimit | min max  | z rotation DOF limits     |
| pose      | x y z    | values to pose DOFs       |
| balljoint | name { } | child joint               |

The 'offset' is the constant positional offset to add to the local joint transformation. It represents the location of a joint's pivot point described relative to the parent joint's space. This will almost always be specified for a joint, but if not, it should default to (0,0,0).

The 'boxmin' and 'boxmax' parameters describe the min and max corners of a box representing the bone to render for the particular joint. If these are not specified for a joint, they should still have a reasonable default, say (-0.1,-0.1,-0.1) and (0.1,0.1,0.1).

The 'rotlimit' tokens describe the rotational joint DOF limits. Note that all angles are in radians. These should default to an essentially unlimited state if they are not specified in the file (i.e., -100000 to 100000 would be fine).

The 'pose' token specifies values to pose the DOFs at. Normally, data like this would not be needed in a skeleton file, as the skeleton is usually posed by a higher level animation system. For the purposes of this project, however, we will include optional pose data in the .skel file. By default, these should be 0. If the pose specifies values outside of the range of the DOF limits, then it should get properly clamped before displaying. Again, remember that these values are in radians.

The 'balljoint' token specifies a child balljoint which will have its own data and possibly its own children. There should not be any limit to the number of children allowed. Every balljoint has a name in the file, but you don't have to do anything with this string if you don't want to (unless you do the extra credit listed below).

In theory, one could extend this file format to include other joint types (hingejoint, prismaticjoint, freejoint, etc.). Each one of these joint types could have additional data tokens if needed.

## Project 2: Skin

### Assignment

Write a program that loads a character skin from a .skin file (described below) and attach it to a skeleton (loaded from a .skel file).

The skin should be rendered with shading using at least two different colored lights.

The program should load any .skin and .skel file given to it, and should accept the file names on the command line. For example:

```
project2 monster.skel monster.skin
```

It should also work if only one of the files is given. For example, if only the .skel file is given, it should operate as in project 1. If only the skin file is given, it should display the skin mesh in its undeformed state (i.e., in its original binding space).

The program should allow some way to interactively control individual DOF values in the skeleton. At a minimum, it should have a key for next/last DOF and increase/decrease value. It must display the current DOF by name and the current value somewhere (can print it to the console). Optionally, this all can be done through an interactive GUI.

### .skin File Format

The .skin file contains arrays of vertex data, an array of triangle data, and an array of binding matrices. For a sample .skin file, see tube.skin and its corresponding .skel file tube.skel. For a more complex example, see wasp.skin and wasp.skel.

```
positions [numverts] {
    [x] [y] [z]
    ...
}

normals [numverts] {
    [x] [y] [z]
    ...
}

skinweights [numverts] {
    [numattachments] [joint0] [weight0] ... [jointN] [weightN]
    ...
}

triangles [numtriangles] {
    [vertex0] [vertex1] [vertex2]
    ...
}

bindings [numjoints] {
    matrix {
        [ax] [ay] [az]
        [bx] [by] [bz]
        [cx] [cy] [cz]
        [dx] [dy] [dz]
    }
    ...
}
```

### .FBX Conversion Utility Tool

We offer a Blender plugin for .fbx to .skin/.skel conversion in this project. You can upload or download existing character rigs from mixamo.com. and use this tool to generate corresponding .skin/.skel files for your character.

## Project 3: Animation

### Assignment

Write a program that loads a keyframe animation from an .anim file (described below) and plays it back on a skinned character. The program should be able to load any .skin, .skel, and .anim file given to it, and should accept them as command line arguments. For example: project3 monster.skel monster.skin monster_walk.anim

### .anim File Format

The .anim file contains an array of channels, each channel containing an array of keyframes. For a simple example, see sample.anim. The sample is just a very basic example of an anim file and doesn't correspond to any useful animation. For a more complex example, see the wasp_walk.

-   NOTE: The skel and skin file in this version of the wasp are slightly different from those used in project 2, so make sure you use all of these files together.

The structure of the anim file is as follows:

```
animation {
    range [time_start] [time_end]
    numchannels [num]
    channel {
        extrapolate [extrap_in] [extrap_out]
        keys [numkeys] {
            [time] [value] [tangent_in] [tangent_out]
            ...
        }
    }
    channel {
       ...
    }
    ...
}
```

The \[time_start\] and \[time_end\] describe the time range in seconds that the animation is intended to play. This range doesn't necessarily correspond to the times of the first and last keyframes.

The number of channels \[num\] will be 3 times the number of joints in the character, plus an additional 3 for the root translation. The channels are listed with the 3 root translations first in x,y,z order, followed by the x,y,z rotation channels for each joint in depth-first order.

The extrapolation modes \[extrap_in\] and \[extrap_out\] will be one of the following: "constant", "linear", "cycle", "cycle_offset", or "bounce". \[numkeys\] specifies the number of keyframes in the channel.

The keys themselves will be listed in increasing order based on their time. Each key specifies its \[time\] and \[value\] in floating point. The tangent types \[tangent_in\] and \[tangent_out\] will be one of the following: "flat", "linear", "smooth", or it will be an actual floating point slope value indicating the fixed tangent mode.

## Project 4: Cloth Simulation

### Assignment

Write a program that simulates a piece of cloth made from particles, spring-dampers, and triangular surfaces. It should include the effects of uniform gravity, spring elasticity, damping, aerodynamic drag, and simple ground plane collisions. Some particles of the cloth must be ‘fixed’ in place in order to hold the cloth up, and there must be simple controls to move these fixed points around, as well as controls to adjust the ambient wind speed.

### Suggestions

Create separate classes for Particle, SpringDamper, and Triangle, where each implements the appropriate physics for that component. Then a Cloth class would just have an array of each of the three component types.

The Cloth class should have one or more initialization functions that sets up the arrays and configures the connectivity. That way, different init functions could set up different sizes of cloth, different material stiffness properties, or different configurations like ropes, and more.

Tune the different forces one by one. Start with just gravity and observe the cloth falling down at an appropriate speed. Then gradually bring up the spring constant until the cloth is able to hold itself up. It may jiggle around a bunch, but shouldn’t lose control. Then bring up the damping factor until the cloth comes to rest properly. Then you can work on aerodynamic drag and ground collisions.

The Triangles will need to compute their normal every Update in order to do the physics. This normal can be used for rendering as well. In addition, one can implement dynamic smooth shading, where the normals are averaged at the vertices (Particles). A simple way to do this is:

-   Loop through all particles and zero out the normal
-   Loop through all triangles and add the triangle normal to the normal of each of the three particles it connects
-   Loop through all the particles again and normalize the normal

To implement the ‘fixed’ particles, just add an additional bool to each Particle to indicate it’s fixed. Modify the Particle::Update() to do nothing if the fixed bool is true. To do the user controls, add a control function to the Cloth that responds to keyboard presses and loops through all the particles and adjusts the position of only the fixed particles accordingly. The fixed bool is set through the Cloth initialization process, so that you can experiment with fixing different parts of the cloth (such as an entire row of vertices or just the corners, etc.).

# OliverMachine
Simulation Software For Oliver's Machine

# Overview
This [Processing ](https://processing.org) application simulates Oliver's machine.

To run it, load it into Processing 3, then click the "play" arrow in the Processing IDE.

A window will appear with the simulation running.

A key stroke or mouse click will pause/restart the simulation.

Simulation parameters that can be set by the user are:
* Small disk sizes
* distance between the small disks (center to center)
* big wheel size
* wheel speeds
* pen holder arm lengths
* pen color
* simulation speed

These are all set in the "Config" tab of the IDE.

There should be no need to make changes in any other tab.

A [screencast](https://youtu.be/259S3xKFLBM) demo is available.

# How does it work?
## First, the Physical Machine
The real machine comprises 3 rotating disks and 2 arms joined at one end to hold the pen and the other ends are connected to points on the smaller roating disks.  The 3rd dsik is much larger and carries the canvas on which the pen writes. The disks and arms are arragned so that the pen sits on the canvas.

As the 3 disks turn, the pen moves on the canvas, leaving a curved track.

## Now the softawre
Conceptually, the 2 pen arms are radii of circles which intersect at the pen. The center of each of these circles is the other end point of the pen arm. Thus, the center of each circle rotates around one of the small disks.

It is straightforward to compute coordinates of the center of each of the intersecting circles based on the rotation speed of the disks. Once the center points are known, it is again straightforward to compute the intersection point.

By making the simulation take short steps, we can approximate continuous drawing by making a line from the current point to the previous one.

However, the canvas is rotating about its center as well. That means that each point will roate about the canvas disk center. So, as this roatation takes place, the program has to compute the complex trajectory of each previously drawn point. This would be a nightmare, if we didn't use a "tick". 

Our programming environment provides a Cartesion coordinate system for all our drawing. The origin of this coordinate system is the upper left corner of the window, with positve Y downwards and positive X to the right.

Our trick will be to create another coordinate system with the origin at the center of the canvas disk. Now, in this coordinate system the computation of a point's trajectory is straightforward. Also, the conversion between the 2 coordinate systems is straightforward as well.

## And finally, the Code

Once we understand what is going on, the code is very straightforward.

The Object paradigm was employed and the execution is performed by the collaboration of instances of classes. These classes are:
* **App:** the application itself, that is called at the top level by the basics processing code
* **Circle:** implementation of all that deals with circles, including their creation and computation of intersection points
* **Point:** management of our points
* **Config:** a place to put user config data

In addition to the classes, the top level processing code is held in the file **MachineRunner.pde.**

So How does it work?

1. Processing starts up and executes the code in the **MachineRunner.pde** file. An instance of the **Config** class is created, and the **setup** function creates an instance of the **App** class. **draw()** simply calls the **App.draw()** method. Mouse clicks and keypresses are also handed in the **MachineRunner.pde** file.
2. At instanciation, the **App** creates the disks (instances of **Circle**) and the end points of the pen arms (instances of **Point**) as well as an **ArrayList** of **Point** instances to record each point. It alwso draws the 3 disks.
3. Processing then repetedly calls **app.draw()**. This method first checks to see if simulation is paused or not. Then, if not paused, and depending on the debugging parameters, it will draw the disks, update the radius arm end points, and compute the pen point. Finally, depending on the debugging parameters it draws the arms and/or the base line, and or the points. At the very end it increments the iteration counter.
4. A subtle part of the code is the drawing of the points in the method **App.drawPenPoints.** After setting the stroke and fill, we push the current cooordinate system onto the matrix stack, then translate our coordinate system to the center of the canvas disk. If there are already points in the ArrayList, we take them one by one, rotate them about the origin (in the new coordinate system), then take the next point, rotate it, and draw a line from the previous point to it. Incredibly, this works! We then make the current point the last point and iterate through all the previously computed points. Then, we pop the coordinate matrix stack to get back to the original coordinate system and display the current pen point, which is still based on the original coordinates. At the very end of the method, we add a translated copy of the pen point to the ArrayList. We are good to go!

All the remaining funcitonality is easily understood by examining the code.


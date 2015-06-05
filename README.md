# yarp2DIC

These scripts demonstrate how to easily interface [`Yarp`](https://github.com/robotology/yarp)
with **MATLAB**/**Simulink** without relying on [Java bindings](http://wiki.icub.org/yarpdoc/yarp_swig.html).

To this end we can profitably exploit the **Direct Interface Communication** Toolbox
which provides a simple access to sockets, in particular through the [`tcpip`](http://www.mathworks.com/help/instrument/tcpip.html) command.
Having a socket in MATLAB enables us to directly talk to `Yarp` according to the rules described
[here](http://wiki.icub.org/yarpdoc/yarp_without_yarp.html).

Just for testing purpose, a [Simulink model](https://github.com/pattacini/yarp2DIC/blob/master/yarpSimTest.mdl)
is available to read from and write to `Yarp` world.

<p align="center">
  <img src="https://github.com/pattacini/yarp2DIC/blob/master/img/model.png"/>
</p>

#### Instructions
Launch the following in three different shells:
```
$1> yarpserver
$2> yarp write /write
$3> yarp read /read
```
Then, run the simulation and type `any two numbers` in the shell where you've opened
the `/write` port. Check out the model's display as well as the `/read` port output.

Have fun!

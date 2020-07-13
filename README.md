yarp2IC
=======

[![View Interface YARP with Instrument Control Toolbox on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/51109-interface-yarp-with-instrument-control-toolbox)

These scripts demonstrate how to easily interface [`YARP`](https://github.com/robotology/yarp)
with **MATLAB**/**Simulink** without relying on [Java bindings](http://wiki.icub.org/yarpdoc/yarp_swig.html).

To this end we can profitably exploit the **Instrument Control Toolbox**
which provides a simple access to sockets, in particular through the [`tcpip`](http://www.mathworks.com/help/instrument/tcpip.html) function.
Having a socket in MATLAB enables us to directly talk to `YARP` according to the rules described
[here](http://wiki.icub.org/yarpdoc/yarp_without_yarp.html).

Just for testing purpose, a [Simulink model](/yarpSimTest.mdl)
is available to read from and write to `YARP` world.

![model](/assets/model.png)

#### Instructions
Launch the following commands in three different shells:

```sh
$1> yarpserver
$2> yarp write /write
$3> yarp read /read
```

Then, open up the block `Settings` and enter the correct values. 

Finally, run the simulation and type `any two numbers` in the shell where you've opened
the `/write` port. Check out the model's display as well as the `/read` port output.

Have fun :tada:

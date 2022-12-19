## Basic JK Flip Flop
This is a simple project where we have designed a simple JK Flip Flop which is used to check how to work with the clock circuity of the PolarFire FPGA. This is a single variation of the code that we ran on the Basys 3 FPGA Board (link [here](https://github.com/sanathNU/Verilog-Projects/tree/main/J%20K%20Flip%20Flop)). The J and K inputs are connected to switches and the output to LEDs. <br>
All steps mentioned are similar to the previous project of Basic Gates in this repository. Check it out for detailed steps. Also, if you are accesing this for the first time, keep [this](https://microchipdeveloper.com/fpgadt:libero-getting-started) tab open which can be helpful in navigation Libero tool.
### Lesson 1 - Creating the project
Creating the project will be very simple as shown in the design guide earlier. The device selection will be the same as the previous Basic Gates tutorial (link [here](https://github.com/sanathNU/Experiments-in-PolarFire-Icicle-Kit/blob/main/Basic%20Gates/SimpleProject.md)). The settings for PolarFire Icicle Kit is as below:
* Family: PolarFire
* Die: MPFS250T_ES
* Package: FCVG484
* Speed: -1
* Range: EXT
The device settings selection can be left as default as we are not changing anything.
### Lesson 2 - Creating the Design
Here, we can add HDL Sources directly. As we can assign them later. They can be created using the option in **'Design Flow Tab -> Create HDL'** option. They also can be imported using the option from **'File -> Import -> HDL Source Files'**. The source code has been uploaded here too in [this](https://github.com/sanathNU/Experiments-in-PolarFire-Icicle-Kit/blob/main/Sequential%20Circuit/Source%20Files/JKK.v) link. <br>
The code contains logic for a single JKFF. Since the clock speed of a FPGA is very high and its hard to visualize the toggling option of the JK Flip flop, we have optionally added the code to slow down the clock to a visible speed. There is a 'count' variable, which determines the clock out. It is a very simple demonstration of sequential circuity of the FPGA. Press the 'Check HDL' option after writing the code to check for synatx errors. <br>
The RTL View of the hdl source code can be viewed using **'Design Flow Tab -> Implement Design -> Open Netlist Viewer'**, and in the tab that opens up, choose RTL. The image is shown as below.
![image](https://user-images.githubusercontent.com/77428228/208342452-e2274489-982e-4170-9c08-720373d4f548.png)

Should set the source file as root, as mentioned in steps 8-9 in the guide.
### Lesson 3 - Synthesis and Pin Assignment
TODO: Run Testbench and update about the pre-simulation results
### Lesson 4 - Programming the Design
### Lesson 5 - Running the Design

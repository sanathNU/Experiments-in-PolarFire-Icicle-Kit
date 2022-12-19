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
Follow the steps 1 - 3 from step 3 of the developer tutorial website. The contstrains will be set seperately as this board is different as mentioned earlier. Set the Pin Configurations as follows:

* Clk -> W12
* Clk_out -> V14
* J -> W18
* K -> W19
* Q -> T12
* Qbar -> AB19

We have set the Q and Qbar to LED 3 & 4. The clock out to LED 1. Switches W18 and W19 control J and K respectively. After completion, the I/O Constraint editor show be as follows.
![image](https://user-images.githubusercontent.com/77428228/208344070-7d8a207e-b0b4-466d-ac7e-68a9089e9b95.png)

Complete step 7 in the design guide and then exit the IO editor. This will conclude the IO constraints part.
### Lesson 4 - Programming the Design
The programming part is the same as the previous project. Make sure that power supply is connected to the board and make sure that USB cable is connected to the J33 mini USB connector. The rest as the same as in the guide.

### Lesson 5 - Running the Design
This has connections as mentioned.
1. Switches 1 and 2 are J and K inputs. LED 1 is clock out. LED 2 and 3 are Q and Qbar respectively.

| Switch 1 | Switch 2 | LED 3 | LED 4 |
| :-: | :-: | :-: | :-: |
| 0 | 0 | Latched | Latched |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | Toggle | Toggle |

Done: Added gif

![J K FF](https://user-images.githubusercontent.com/77428228/208359200-f10dcba0-94ba-415f-afb2-51cd9baaab00.gif)

In the gif above, we can see that LED 1 is toggling at regular intervals, showing it's the changing clock. When the switch 1 and 2 are initiazed, the LEDs switch exactly as predicted. Hence, the FPGA is properly programmed to simulate a JK Flip Flop

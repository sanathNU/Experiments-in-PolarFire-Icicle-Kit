# Experiments-in-PolarFire-Icicle-Kit
This repository contains all details and experiments conducted on the [PolarFire Soc Icicle Kit](https://www.microsemi.com/existing-parts/parts/152514) board. <br> <br>

<img title="Main Board" alt="Alt text" src="https://www.microchip.com/content/dam/mchp/fpgas-and-plds-design-center/PolarFire%20Icicle%20Thumb.png" style="display: block; 
           margin-left: auto;
           margin-right: auto;" height=250 width=500> <br>
           
It is a very powerful device which has a lot of capabilities. Here, we have documented working from the basics and adding more smaller projects and tutorials. All links will be mentioned here. <br>
The features of the board can be found in the [Quick Start Guide](https://www.microsemi.com/products/fpga-soc/polarfire-soc-icicle-quick-start-guide). <br>
The documentation for PolarFire SoCs are present in [this](https://github.com/polarfire-soc/polarfire-soc-documentation) github repository. A quick handy repository similar to the Microsemi page is [MPFS Icicle Kit User Guide](https://github.com/polarfire-soc/polarfire-soc-documentation/blob/master/boards/mpfs-icicle-kit-es/icicle-kit-user-guide/icicle-kit-user-guide.md) .It contains everything from theory to some examples to download and run on the board.
All the results will be documented here.<br>
Let's have some fun! :metal: <br>

So, the basic softwares that have been installed on the computer to be developing and testing applications on this board are as follows:
* Libero SoC development Suite v12.5 ( Version 2022.2.0.10)
* PolarFire SoC MSS Configurator ( Version 2022.2)
* Libero SoftConsole (Version 2022.2-RISC-V-747)

The structure of folders present in the repository are as follows.
1. 'Hello World' folder covers the basic design of the FPGA and the running the 'out-of-the-box-linux-boot' of it. <br>
2. 'Basic Gates' contains our running a small design for testing out simple combinational circuits on the Libero SoC Software.
3. 'Combinational Circuit' contains a simple design and code for running a JK Flip Flop on the Board.

Things to be added:
1. Introduction to the Board and Reference Design and what we plan to do with it.
4. Running the JK Flip Flop code for clocked circuits.
5. Final implemntation of Convolution code?

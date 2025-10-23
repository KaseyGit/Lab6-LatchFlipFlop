# Lab6-LatchFlipFlop
This repository contains various modules that represent various logic devices, including latches and different types of flip flops. Furthermore, there is a clock divider which returns a clock at 1/4 of the input clock frequency. Along with this are a counter made with T-Flip Flops (TFFs) and a button debouncer for stabilizing button input.

The latches and flip flops in this project were developed using their common definitions and truth tables. The SR latch is the only latch included in this project, where the output directly depends on the inputs Set and Reset. The flip flops included in this project are the SR Flip Flop, Delay/Data Flip Flop (with asynchronous and synchronous reset), and Toggle Flip Flop. Each of them process inputs differently to produce an output signal (sometimes also outputting a negative signal of the main output), but all have in common that they update output in sync with the clock.

The counter uses three TFFs to represent three bits of data. It increments with the clock to count from 0 to 7 and loops.

The clock divider simply uses a counter (incremented integer) to toggle a clock at a quarter of the rate of a given clock. For this project, the testbench and board provide a 100 MHz signal, so passing through the divider results in a 25 MHz clock.

Lastly, the button debouncer also uses a counter to ensure that the raw signal from a button is active for long enough before confirming that the button is being pressed (output HIGH to the clean signal). This is important as buttons face mechanical challenges, where a button press often does not have consistent pressure throughout.

// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/05/ComputerMax-external.tst

load Computer.hdl,
output-file Computermod.out,
//compare-to ComputerMax-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// Load a program written in the Hack machine language.
// The program computes the maximum of RAM[0] and RAM[1] 
// and writes the result in RAM[2].
ROM32K load mod.hack,
output;
set RAM16K[0] 9,
set RAM16K[1] 2,
//output;

repeat 50 {
    tick, tock, output;
}

set reset 1,
set RAM16K[0] 0,
set RAM16K[1] 0,
tick,tock,output;


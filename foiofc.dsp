declare name "Fourth order IIR open coefficients filter";
declare author "F";
declare version "1.0";
declare license "APACHE-2.0";

import("music.lib");

order = 4; // order + 1 for actual sample

coeffa(0) = hslider("coeff a0", 1, -1, 1, 0.01);
coeffa(i) = hslider("coeff a(%i)", 0, -0.99, 0.99, 0.01);
coeffb(i) = hslider("coeff b(%i)", 0, -0.99, 0.99, 0.01);
preGain = hslider("Pre Gain", 1, 0, 1.5, 0.01);

memInt = _ : *(preGain) <: par(i, order +1, coeffa(i)*@(i)) :> _;
memOut = _ <: par(i, order, coeffb(i+1)*@(i+1)) :> _;

filter =  +(memInt) ~ memOut;


process = filter, filter;
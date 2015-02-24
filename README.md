# foiofc
Fourth Order IIR Open Coefficients Filter

## Synopsis
This filter was written in Faust. Its purpose is to serve as an experimental
workbench in order to try different combinations of coefficients in a fourth 
order filter. It is highly unstable and should be used only to experimental
purposes.

## WARNING
Due to its recursive and open nature, this filter is HIGHLY UNSTABLE. It is
intended for experimentation only. It is recommended to use this filter within
an environment that detects and silences unusually loud sounds. Usage of this
filter in a live performances should be avoided as it can result in damage to
your equipment and your audience's health. 

USE AT YOUR OWN RISKS.

## Installation
Go to the [Grame website](http://faust.grame.fr/index.php/online-examples) and
copy-paste the source code in the text box. Click on the "Exec File" tab and
select the desired output.

## Usage
This is a filter of the form 
y(t) = a0*x(t) + a1*x(t-1) + a2*x(t-2) + a3*x(t-3) + a4*x(t-4)
               + b1*y(t-1) + b2*y(t-2) + b3*y(t-3) + b4*y(t-4)

One fader controls the pre gain. Each other fader controls a specific 
coefficient. This filter is intended to work in conjunction with white noise
and a spectrogram to analyse the frequency response. 

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D


## License
APACHE-2.0
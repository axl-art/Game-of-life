# Conway's Game of Life in FORTRAN 90!
This project establishes the rules of the game of life for Conway to obtain cellular automata.

Execution:
----------

Build the program with:

`` gfortran initial_conditions.90 -o executable.exe``

Then:

``executable.exe``

CI.bat is generated with the initial conditions (an array). 

Now we need to generate each of the steps of the automata after the initial conditions (many matrices).

`` gfortran live.90 -o executable.exe``

Then:

`` executable.exe``

Many files are generated: `` data+i+.dat``  according to the amount written in live.f90.

Visualize
------------

We can visualize the results using **gnuplot** and with the following instructions:

	set term png
	set size ratio 1
	set xrange [90:200]
	set yrange [50:170]
	unset xtics	
	unset ytics
	unset colorbox
	do for [i=1:500]{
	outfile= "output".i.".png"
	set output outfile
	datafile = 'data'.i.'.dat'
	plot datafile matrix with image
	}

With the generated images we can build a video or gif. For example:

![Alt text](https://media.giphy.com/media/eGwDcU4QB0QRaKVApb/source.gif)


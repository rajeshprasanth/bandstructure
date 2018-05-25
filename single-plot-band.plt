set term postscript eps enhanced
set output 'grp.bands.eps'

#--------------------------------------#
# Axis properties are defined here !!! #
#--------------------------------------#
xmin = 0.0000; 
xmax = 4.1912;
ymin = -0.5;
ymax = 1.5;
set xrange [xmin:xmax]
set yrange [ymin:ymax]

#----------------------------------------------#
# Points of high symmetry are defined here !!! #
#----------------------------------------------#
W = xmin;
G = 1.1180;
X = 2.1180;
W = 2.6180;
L = 3.3251;
G1 = xmax;

#--------------------------------------------------#
# Lines from points of high symmetry settings  !!! #
#--------------------------------------------------#
set arrow from W, ymin to  W,ymax nohead lt 5 lw 1
set arrow from G, ymin to  G,ymax nohead lt 5 lw 1
set arrow from X, ymin to  X,ymax nohead lt 5 lw 1
set arrow from W, ymin to  W,ymax nohead lt 5 lw 1
set arrow from L, ymin to  L,ymax nohead lt 5 lw 1
set arrow from G1, ymin to  G1,ymax nohead lt 5 lw 1

set nokey
set size 0.4,0.5

set noxtics
set ylabel 'E - E_F (eV)' font "Times-Roman, 14"
set noxlabel
set title "Band structure of graphene " font 'Times-Roman, 16'
set xtics ('W' xmin,'{/Symbol G}' G, 'X' X, 'W' W, 'L' L,'{/Symbol G}' G)
set ytics ymin,0.5,ymax font 'Helvetica, 12'
plot 'bands.dat.gnu' u 1:2 w l lt 1 lw 2

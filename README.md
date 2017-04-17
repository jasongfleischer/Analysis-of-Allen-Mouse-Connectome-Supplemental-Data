## Synopsis

Tools to analyze the supplemental data from The Allen Institute's publication of their mouse connectome atlas in 2014: Nature (508)207--217.  The suppl data reveal large scale connectivity between brain regions, allowing you to ask questions of the data without having to use the much more detailed (but larger/more difficult) raw data available from the Allen's website.     

## Code Example

See saved data.docx for some analyese I ran to look at HPC connectivity.  A fast example is below:

>> [Presm Postsm]=whosConnected('ENTm',Wipsi,Areas,AreasLookup,Pipsi,0.2);
>> Presm

Presm = 

    'Entorhinal area, lateral part'        [0.3317]    [2.9865e-66]
    'Medial septal nucleus'                [0.4397]    [7.6496e-24]
    'Parasubiculum'                        [0.7726]    [5.8431e-21]
    'Nucleus of reunions'                  [0.2745]    [1.0476e-14]
    'Diagonal band nucleus'                [0.2626]    [6.0253e-09]
    'Parataenial nucleus'                  [1.2141]    [1.4927e-05]
    'Subiculum, ventral part'              [0.1288]    [3.8951e-04]
                            [1x41 char]    [0.1397]    [4.1244e-04]
    'Postsubiculum'                        [0.4902]    [    0.0014]
    'Subiculum, dorsal part'               [0.1480]    [    0.0021]
    'Lateral visual area'                  [0.1680]    [    0.0049]
    'Posterior amygdalar nucleus'          [0.8548]    [    0.0294]
    'Posterolateral visual area'           [0.1525]    [    0.0350]
    'Claustrum'                            [0.4798]    [    0.0377]
    'Field CA1'                            [0.0727]    [    0.0389]
                            [1x34 char]    [0.8072]    [    0.0473]
    'Dentate gyrus'                        [0.0462]    [    0.0714]
    'Field CA3'                            [0.0465]    [    0.0764]
    'Basolateral amygdalar nucleus'        [0.1215]    [    0.0781]
    'Endopiriform nucleus, dorsal part'    [0.2363]    [    0.1155]
    'Piriform-amygdalar area'              [0.2833]    [    0.1556]
    'Medial mammillary nucleus'            [0.2955]    [    0.1618]

This list shows brain regions that send inputs to the medial entorhinal cortex.  The  first column is the "weight" of the connection, the second column is a p-value indicating the probability of of a null hypothesis of accidentally observing this connectivity given there was not actually any anatomical basis for it.


## Installation

Put this in a directory and cd to it in Matlab.  You're done.


## Contributors

Jason G. Fleischer

## License

You are free to use and distribute this code as you see fit.  Please credit the original author.
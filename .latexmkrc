$latex  =   'platex -synctex=1 %O %S';
$lualatex = 'lualatex -synctex=1 %O %S';
$bibtex =   'upbibtex %O %B';
$dvipdf =   'dvipdfmx %O -o %D %S';
$pdf_mode = 3;
$max_repeat =   5;
$pdf_previewer = 'evince %O %S';

$out_dir = "build/";

$latex  =   'platex -kanji=utf-8 -synctex=1 %S';
$bibtex =   'pbibtex %O %B';
$dvipdf =   'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_mode = 3;
$pdf_previewer = 'start evince %O %S';
$max_repeat =   10;

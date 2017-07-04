SET FILENAME=%1

DEL "%FILENAME%.aux"
DEL "%FILENAME%.bbl"
DEL "%FILENAME%.blg"
DEL "%FILENAME%.d"
DEL "%FILENAME%.fls"
DEL "%FILENAME%.ild"
DEL "%FILENAME%.ind"
DEL "%FILENAME%.toc"
DEL "%FILENAME%.lot"
DEL "%FILENAME%.lof"
DEL "%FILENAME%.idx"
DEL "%FILENAME%.out"
DEL "%FILENAME%.nlo"
DEL "%FILENAME%.nls"
DEL "%FILENAME%.pdf"
DEL "%FILENAME%.ps"
DEL "%FILENAME%.dvi"

pdflatex -shell-escape -draftmode -synctex=1 -interaction=nonstopmode -extra-mem-top=50000000  -extra-mem-bot=10000000  -main-memory=90000000 "%FILENAME%.tex"
makeindex "%FILENAME%.aux"
makeindex "%FILENAME%.idx"
biber "%FILENAME%"
makeglossaries "%FILENAME%"
pdflatex -shell-escape -draftmode -synctex=1 -interaction=nonstopmode -interaction=nonstopmode -extra-mem-top=50000000  -extra-mem-bot=10000000  -main-memory=90000000  "%FILENAME%.tex"
makeglossaries "%FILENAME%"
pdflatex  -shell-escape -synctex=1 -interaction=nonstopmode -interaction=nonstopmode -extra-mem-top=50000000  -extra-mem-bot=10000000  -main-memory=90000000 "%FILENAME%.tex"

countErrWrnBBx.bat "%FILENAME%.log"

DEL "%FILENAME%.aux"
DEL "%FILENAME%.acn"
DEL "%FILENAME%.acr"
DEL "%FILENAME%.alg"
DEL "%FILENAME%.auxlock"
DEL "%FILENAME%.bbl"
DEL "%FILENAME%.blg"
DEL "%FILENAME%.d"
DEL "%FILENAME%.fls"
DEL "%FILENAME%.ild"
DEL "%FILENAME%.ilg"
DEL "%FILENAME%.ind"
DEL "%FILENAME%.ist"
DEL "%FILENAME%.toc"
DEL "%FILENAME%.lot"
DEL "%FILENAME%.lof"
DEL "%FILENAME%.idx"
DEL "%FILENAME%.out"
DEL "%FILENAME%.pre"
DEL "%FILENAME%.nlo"
DEL "%FILENAME%.nls"
DEL "%FILENAME%.slg"
DEL "%FILENAME%.syg"
DEL "%FILENAME%.syi"


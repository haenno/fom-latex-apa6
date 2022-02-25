IF "%1" == "en" (
    lualatex --jobname=document_en  "\def\FOMEN{}\input{document.tex}"
    biber document_en
    lualatex --jobname=document_en  "\def\FOMEN{}\input{document.tex}"
    lualatex --jobname=document_en  "\def\FOMEN{}\input{document.tex}"
    document_en.pdf
) ELSE (
    lualatex document.tex
    biber document
    lualatex document.tex
    lualatex document.tex
    document.pdf
)
del *.bbl /f /q
del *.blg /f /q
del *.aux /f /q
del *.bcf /f /q
del *.ilg /f /q
del *.lof /f /q
del *.log /f /q
del *.lot /f /q
del *.nlo /f /q
del *.nls* /f /q
del *.out /f /q
del *.toc /f /q
del *.run.xml /f /q
del *.lot /f /q
del *.suc /f /q
del *.syc /f /q
del *.sym /f /q
del *.sub /f /q

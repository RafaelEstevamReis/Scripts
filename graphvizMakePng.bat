del Outputs\*.png
FOR /F "delims=." %%I IN ('DIR Inputs\*.dot /B') DO (
	graphviz\bin\dot.exe "Inputs\%%I.dot" -Tpng -o "Outputs\%%I.png"
)

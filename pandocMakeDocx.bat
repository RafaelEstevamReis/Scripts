del Output\*.docx
FOR /F "delims=." %%I IN ('DIR Input\*.md /B') DO (
	pandoc.exe "Input\%%I.md" --reference-doc="Ref\modelo.docx" -o "Output\%%I.docx"
)

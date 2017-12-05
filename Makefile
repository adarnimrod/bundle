bundle: hello shellscript
	awk '{if ($$0 == "INSERT BINARY HERE") {system("uuencode -m hello output")} else {print $$0}}' shellscript > bundle
	chmod +x bundle

hello: hello.c
	gcc -o hello hello.c

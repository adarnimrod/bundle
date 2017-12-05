bundle: hello.uu shellscript
	cat shellscript hello.uu > bundle
	chmod 755 bundle

hello.uu: hello
	uuencode hello output > hello.uu

hello: hello.c
	gcc -o hello hello.c

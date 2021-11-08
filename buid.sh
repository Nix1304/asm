nasm -f macho64 -o build/64.o 64.asm
ld -macosx_version_min 11.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem -o build/64 -no_pie build/64.o
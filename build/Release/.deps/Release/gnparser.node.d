cmd_Release/gnparser.node := c++ -bundle -undefined dynamic_lookup -Wl,-search_paths_first -mmacosx-version-min=10.13 -arch arm64 -L./Release -stdlib=libc++  -o Release/gnparser.node Release/obj.target/gnparser/macos/gnparser.o -Wl,-rpath,/Users/toby/Code/node-biodiversity/macos/ -lgnparser -L/Users/toby/Code/node-biodiversity/macos/

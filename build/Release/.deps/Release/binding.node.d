cmd_Release/binding.node := c++ -bundle -undefined dynamic_lookup -Wl,-search_paths_first -mmacosx-version-min=10.13 -arch arm64 -L./Release -stdlib=libc++  -o Release/binding.node Release/obj.target/binding/binding.o -Wl,-rpath,/Users/toby/Code/node-biodiversity -lgnparser -L/Users/toby/Code/node-biodiversity

{
  "targets": [
    {
      "conditions": [
        ['OS=="mac"', {
            'cflags+': ['-fvisibility=hidden'],
            'xcode_settings': {
              'GCC_SYMBOLS_PRIVATE_EXTERN': 'YES', # -fvisibility=hidden
            }
        }]
      ],
      "defines": [ 'NAPI_DISABLE_CPP_EXCEPTIONS' ],
      "include_dirs": ["/Users/toby/Code/node-biodiversity/macos/", "<!(node -p \"require('node-addon-api').include_dir\")"],
      "target_name": "gnparser",
      "sources": [ "macos/gnparser.cc" ],
      "libraries": [ "-Wl,-rpath,/Users/toby/Code/node-biodiversity/macos/", '-lgnparser', '-L/Users/toby/Code/node-biodiversity/macos/'],
    }
  ]
}
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
      "include_dirs": ["<(module_root_dir)", "<!(node -p \"require('node-addon-api').include_dir\")"],
      "target_name": "gnparser",
      "sources": [ "gnparser.cc" ],
      "libraries": [ "-Wl,-rpath,<(module_root_dir)", '-lgnparser', '-L<(module_root_dir)'],
    }
  ]
}
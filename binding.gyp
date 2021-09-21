{
  "targets": [
    {
      "conditions": [
        ['OS=="mac"', {
            'cflags+': ['-fvisibility=hidden'],
            'xcode_settings': {
              'GCC_SYMBOLS_PRIVATE_EXTERN': 'YES', # -fvisibility=hidden
            },
            "link_settings": {
              'libraries': ['-L<(module_root_dir)/macos-arm64', '-lgnparser'],
            },
            "include_dirs": ["<(module_root_dir)/macos-arm64"],
            "sources": [ "macos-arm64/gnparser.cc" ],
            'postbuilds': [
              {
                'postbuild_name': 'Change libgnparser load path',
                'action': ['install_name_tool', '-change',  'libgnparser.so', '@loader_path/../../macos-arm64/libgnparser.so', '<(PRODUCT_DIR)/gnparser.node'],
              },
            ]
        }]
      ],
      "defines": [ 'NAPI_DISABLE_CPP_EXCEPTIONS' ],
      "include_dirs": ["<!(node -p \"require('node-addon-api').include_dir\")"],
      "target_name": "gnparser",
    
    }
  ]
}
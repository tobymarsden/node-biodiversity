# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := gnparser
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=gnparser' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-O0 \
	-gdwarf-2 \
	-fvisibility=hidden \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Debug := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-std=gnu++14 \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Debug :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Debug :=

INCS_Debug := \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/include/node \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/src \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/openssl/config \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/openssl/openssl/include \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/uv/include \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/zlib \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/v8/include \
	-I$(srcdir)/node_modules/node-addon-api \
	-I/Users/toby/Code/node-biodiversity/macos-arm64

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=gnparser' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DV8_DEPRECATION_WARNINGS' \
	'-DV8_IMMINENT_DEPRECATION_WARNINGS' \
	'-D_GLIBCXX_USE_CXX11_ABI=1' \
	'-D_DARWIN_USE_64_BIT_INODE=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DOPENSSL_NO_PINSHARED' \
	'-DOPENSSL_THREADS' \
	'-DNAPI_DISABLE_CPP_EXCEPTIONS' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-O3 \
	-gdwarf-2 \
	-fvisibility=hidden \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-Wall \
	-Wendif-labels \
	-W \
	-Wno-unused-parameter

# Flags passed to only C files.
CFLAGS_C_Release := \
	-fno-strict-aliasing

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-std=gnu++14 \
	-stdlib=libc++ \
	-fno-rtti \
	-fno-exceptions \
	-fno-strict-aliasing

# Flags passed to only ObjC files.
CFLAGS_OBJC_Release :=

# Flags passed to only ObjC++ files.
CFLAGS_OBJCC_Release :=

INCS_Release := \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/include/node \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/src \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/openssl/config \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/openssl/openssl/include \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/uv/include \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/zlib \
	-I/Users/toby/Library/Caches/node-gyp/16.5.0/deps/v8/include \
	-I$(srcdir)/node_modules/node-addon-api \
	-I/Users/toby/Code/node-biodiversity/macos-arm64

OBJS := \
	$(obj).target/$(TARGET)/macos-arm64/gnparser.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))
$(OBJS): GYP_OBJCFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE)) $(CFLAGS_OBJC_$(BUILDTYPE))
$(OBJS): GYP_OBJCXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE)) $(CFLAGS_OBJCC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Debug := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LDFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first \
	-mmacosx-version-min=10.13 \
	-arch arm64 \
	-L$(builddir) \
	-stdlib=libc++

LIBTOOLFLAGS_Release := \
	-undefined dynamic_lookup \
	-Wl,-search_paths_first

LIBS := \
	-L/Users/toby/Code/node-biodiversity/macos-arm64 \
	-lgnparser

$(builddir)/gnparser.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/gnparser.node: LIBS := $(LIBS)
$(builddir)/gnparser.node: GYP_LIBTOOLFLAGS := $(LIBTOOLFLAGS_$(BUILDTYPE))
$(builddir)/gnparser.node: export BUILT_FRAMEWORKS_DIR := ${abs_builddir}
$(builddir)/gnparser.node: export BUILT_PRODUCTS_DIR := ${abs_builddir}
$(builddir)/gnparser.node: export CHROMIUM_STRIP_SAVE_FILE := 
$(builddir)/gnparser.node: export CONFIGURATION := ${BUILDTYPE}
$(builddir)/gnparser.node: export DYLIB_INSTALL_NAME_BASE := @rpath
$(builddir)/gnparser.node: export EXECUTABLE_NAME := gnparser.node
$(builddir)/gnparser.node: export EXECUTABLE_PATH := gnparser.node
$(builddir)/gnparser.node: export FULL_PRODUCT_NAME := gnparser.node
$(builddir)/gnparser.node: export LD_DYLIB_INSTALL_NAME := @rpath/gnparser.node
$(builddir)/gnparser.node: export MACH_O_TYPE := mh_bundle
$(builddir)/gnparser.node: export PRODUCT_NAME := gnparser
$(builddir)/gnparser.node: export PRODUCT_TYPE := com.apple.product-type.library.dynamic
$(builddir)/gnparser.node: export SDKROOT := /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk
$(builddir)/gnparser.node: export SRCROOT := ${abs_srcdir}/
$(builddir)/gnparser.node: export SOURCE_ROOT := ${SRCROOT}
$(builddir)/gnparser.node: export TARGET_BUILD_DIR := ${abs_builddir}
$(builddir)/gnparser.node: export TEMP_DIR := ${TMPDIR}
$(builddir)/gnparser.node: export XCODE_VERSION_ACTUAL := 1240
$(builddir)/gnparser.node: builddir := $(abs_builddir)
$(builddir)/gnparser.node: POSTBUILDS := 'cd ""' 'echo POSTBUILD\(gnparser\) Change libgnparser load path' 'install_name_tool -change libgnparser.so @loader_path/../../macos-arm64/libgnparser.so "$(builddir)/gnparser.node"'
$(builddir)/gnparser.node: TOOLSET := $(TOOLSET)
$(builddir)/gnparser.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module,,1)

all_deps += $(builddir)/gnparser.node
# Add target alias
.PHONY: gnparser
gnparser: $(builddir)/gnparser.node

# Short alias for building this executable.
.PHONY: gnparser.node
gnparser.node: $(builddir)/gnparser.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/gnparser.node


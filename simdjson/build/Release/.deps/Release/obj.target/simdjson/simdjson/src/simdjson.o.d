cmd_Release/obj.target/simdjson/simdjson/src/simdjson.o := g++ '-DNODE_GYP_MODULE_NAME=simdjson' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-DV8_DEPRECATION_WARNINGS' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-D__STDC_FORMAT_MACROS' '-DOPENSSL_NO_PINSHARED' '-DOPENSSL_THREADS' '-DNAPI_CPP_EXCEPTIONS' '-DBUILDING_NODE_EXTENSION' -I/home/junshu/.cache/node-gyp/14.21.3/include/node -I/home/junshu/.cache/node-gyp/14.21.3/src -I/home/junshu/.cache/node-gyp/14.21.3/deps/openssl/config -I/home/junshu/.cache/node-gyp/14.21.3/deps/openssl/openssl/include -I/home/junshu/.cache/node-gyp/14.21.3/deps/uv/include -I/home/junshu/.cache/node-gyp/14.21.3/deps/zlib -I/home/junshu/.cache/node-gyp/14.21.3/deps/v8/include -I/home/junshu/Documents/Architecture/simdjson/node_modules/node-addon-api  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -O3 -fno-omit-frame-pointer -std=c++17 -fno-rtti -MMD -MF ./Release/.deps/Release/obj.target/simdjson/simdjson/src/simdjson.o.d.raw  -mavx -mavx2 -mpclmul -mbmi -mbmi2 -mlzcnt -c -o Release/obj.target/simdjson/simdjson/src/simdjson.o ../simdjson/src/simdjson.cpp
Release/obj.target/simdjson/simdjson/src/simdjson.o: \
 ../simdjson/src/simdjson.cpp ../simdjson/src/simdjson.h
../simdjson/src/simdjson.cpp:
../simdjson/src/simdjson.h:

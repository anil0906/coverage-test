# Rust napi-rs project

# Make scripts:

## To install the toolchain and components

 make dev.init
 
##  To run unit test coverage

 make test.unit.coverage.rust
 
## To run in docker and to reproduce the error
docker build . -t coverage:0.0.1

## Error details

coverage report failed to run in docker container for napi-rs project

```js
error: linking with `cc` failed: exit status: 1
#8 251.2   |
#8 251.2   = note: "cc" "-m64" "/tmp/rustc3c0ez7/symbols.o" "/tmp/target/debug/deps/pg_js-90896110734e5902.pg_js.3e824fb9-cgu.0.rcgu.o" "/tmp/target/debug/deps/pg_js-90896110734e5902.1yet7u3b95mq11lc.rcgu.o" "-Wl,--as-needed" "-L" "/tmp/target/debug/deps" "-L" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-Wl,-Bstatic" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libtest-6ceca3ba335ba7c7.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libgetopts-c9e17414fa6fc5ea.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libunicode_width-fe3e890f428a0028.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_std_workspace_std-770d0f198bfd2db0.rlib" "/tmp/target/debug/deps/libnapi-b31056371401cd1d.rlib" "/tmp/target/debug/deps/libnapi_sys-1c04fc55f0bc86e7.rlib" "/tmp/target/debug/deps/libbitflags-05dfd5b5d1225bed.rlib" "/tmp/target/debug/deps/libserde_json-6c64fece31c999a7.rlib" "/tmp/target/debug/deps/libryu-35a1e8785e2c84ef.rlib" "/tmp/target/debug/deps/libitoa-8f7e72094391218a.rlib" "/tmp/target/debug/deps/libchrono-2f54431431ecbd0f.rlib" "/tmp/target/debug/deps/libiana_time_zone-455ab2f140e1a7fe.rlib" "/tmp/target/debug/deps/libnum_integer-853ae325bec373f8.rlib" "/tmp/target/debug/deps/libnum_traits-cf0e9ef357821d68.rlib" "/tmp/target/debug/deps/libtime-387c9cceedcf02c4.rlib" "/tmp/target/debug/deps/libthread_local-6098da764c0116d5.rlib" "/tmp/target/debug/deps/libonce_cell-32c8d89871b7ecb5.rlib" "/tmp/target/debug/deps/libtokio-8e34180aee956601.rlib" "/tmp/target/debug/deps/libnum_cpus-6660532e478dfdbb.rlib" "/tmp/target/debug/deps/liblibc-dc34163984ee94a4.rlib" "/tmp/target/debug/deps/libpin_project_lite-f2671a56a138cdc1.rlib" "/tmp/target/debug/deps/libserde-3ac03c5b2adadc6e.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libprofiler_builtins-1dc740fd680a189b.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libstd-3dd5f78c3b43746e.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libpanic_abort-ff530fcd7b22994a.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libobject-13ac6af5403a52c8.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libmemchr-a7b8febdd2acb289.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libaddr2line-343513f0726f71ed.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libgimli-8f833d900bfb98aa.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_demangle-e97a7960ca6216c8.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libstd_detect-fb8c561e8c8eb24d.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcfg_if-a45121889bb564ec.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libhashbrown-f943c2d34bd4b56d.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libminiz_oxide-72ce2aaa649404e0.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libadler-ac5d08ad5339e92e.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_std_workspace_alloc-dacfda262d5656fb.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libunwind-e2056a834ba0712c.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcfg_if-a60649c148c6e2db.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/liblibc-3e961d059b9bcde7.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/liballoc-20f26f875d0170e2.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/librustc_std_workspace_core-522518611024dce5.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcore-05898138a596088a.rlib" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib/libcompiler_builtins-5b83a1df856cf582.rlib" "-Wl,-Bdynamic" "-lgcc_s" "-lutil" "-lrt" "-lpthread" "-lm" "-ldl" "-lc" "-Wl,--eh-frame-hdr" "-Wl,-znoexecstack" "-L" "/usr/local/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/x86_64-unknown-linux-gnu/lib" "-o" "/tmp/target/debug/deps/pg_js-90896110734e5902" "-pie" "-Wl,-zrelro,-znow" "-nodefaultlibs" "-Wl,-undefined,dynamic_lookup"
#8 251.2   = note: /usr/bin/ld: /tmp/target/debug/deps/pg_js-90896110734e5902.pg_js.3e824fb9-cgu.0.rcgu.o: in function `napi::bindgen_runtime::callback_info::CallbackInfo<_>::new':

```

It worked in macbook

```js
rustup toolchain list

stable-x86_64-apple-darwin (default)
nightly-x86_64-apple-darwin
1.59.0-x86_64-apple-darwin
1.61.0-x86_64-apple-darwin
1.63.0-x86_64-apple-darwin (override)
```



#include <napi.h>

#ifdef __cplusplus
extern "C" {
#endif

  #include <libgnparser.h>

#ifdef __cplusplus
}
#endif

char name[] = "Sarracenia flava";
char format[] = "compact";

Napi::String Method(const Napi::CallbackInfo& info) {
  Napi::Env env = info.Env();
  const char* res = ParseToString(name, format, 1, 1);
  printf(res);  
  return Napi::String::New(env, "world");
}

Napi::Object Init(Napi::Env env, Napi::Object exports) {
  exports.Set(Napi::String::New(env, "hello"),
              Napi::Function::New(env, Method));
  return exports;
}

NODE_API_MODULE(hello, Init)
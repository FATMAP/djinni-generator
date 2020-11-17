// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from my_cpp_interface.djinni

#import "ITMyCppInterface+Private.h"
#import "ITMyCppInterface.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#include <exception>
#include <stdexcept>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface ITMyCppInterface ()

- (id)initWithCpp:(const std::shared_ptr<::MyCppInterface>&)cppRef;

@end

@implementation ITMyCppInterface {
    ::djinni::CppProxyCache::Handle<std::shared_ptr<::MyCppInterface>> _cppRefHandle;
}

- (id)initWithCpp:(const std::shared_ptr<::MyCppInterface>&)cppRef
{
    if (self = [super init]) {
        _cppRefHandle.assign(cppRef);
    }
    return self;
}

- (void)methodReturningNothing:(int32_t)value {
    try {
        _cppRefHandle.get()->method_returning_nothing(::djinni::I32::toCpp(value));
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)methodReturningSomeType:(nonnull NSString *)key {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->method_returning_some_type(::djinni::String::toCpp(key));
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)methodChangingNothing {
    try {
        auto objcpp_result_ = _cppRefHandle.get()->method_changing_nothing();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

+ (int32_t)getVersion {
    try {
        auto objcpp_result_ = ::MyCppInterface::get_version();
        return ::djinni::I32::fromCpp(objcpp_result_);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}


namespace djinni_generated {

auto MyCppInterface::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc->_cppRefHandle.get();
}

auto MyCppInterface::fromCppOpt(const CppOptType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::get_cpp_proxy<ITMyCppInterface>(cpp);
}

}  // namespace djinni_generated

@end

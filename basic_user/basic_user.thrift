namespace go basicuser

include "base.thrift"

struct BasicUser {
    1: string basicUserId
}

/*
 基础用户相关API
 */

// 基础用户注册
struct BasicUserRegisterReq {
    1:   string          authType,  // 认证类型
    2:   string          authId,    // 认证id
    3:   string          verify,    // 认证凭证
    4:   optional string password,  // 是否初始化密码
    255: base.App        app,
}

struct BasicUserRegisterResp {
    1:   base.Response resp,
    2:   string        token,
    255: BasicUser     basicUser,
}

// 基础用户登录
struct BasicUserLoginReq {
    1: string authType,
    2: string authId,
    3: string verify,
    255: base.App        app,
}

struct BasicUserLoginResp {
    1:   base.Response resp,
    2:   string token,
    255: BasicUser basicUser,
}
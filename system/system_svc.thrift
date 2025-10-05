namespace go system

include "./system.thrift"

// 系统基础服务
service SystemService {
  system.SendVerifyCodeResp SendVerifyCode(1:system.SendVerifyCodeReq req) (api.post = "/system/send_verify_code")
  system.CheckVerifyCodeResp CheckVerifyCode(1:system.CheckVerifyCodeReq req) (api.post = "/system/check_verify_code")
}
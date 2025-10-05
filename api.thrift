include "./basic_user/basic_user_svc.thrift"
include "./system/system_svc.thrift"

namespace go synapse

service SystemService extends system_svc.SystemService {}
service BasicUserService extends basic_user_svc.BasicUserService {}
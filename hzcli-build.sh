idl_dir=${IDL_DIR:=./idl}
module_name=$(grep '^module' go.mod | awk '{print $2}')
if [ $? != 0 ];then
  exit 1
hz client --mod=$module_name -I $idl_dir --idl=./api.thrift --model_dir=./hzcli/model --client_dir=./hzcli -t=template=slim

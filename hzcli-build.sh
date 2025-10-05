idl_dir=${IDL_DIR:=./idl}
if [ $? != 0 ];then
  exit 1
fi
hz client -I $idl_dir --idl=./api.thrift --model_dir=./hzcli/model --client_dir=./hzcli -t=template=slim

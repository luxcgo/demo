#!/bin/sh

# 脚本所在目录
SHELL_PATH=$(cd `dirname $0`; pwd)
# echo $SHELL_PATH;

rm -rf ${SHELL_PATH}/*.go;

# 更新pb
for pbFile in find ${SHELL_PATH} -name "*.proto";do
	# 是目录
	if [ -f $pbFile ]; then
		 echo $pbFile;
		 protoc \
			--go_out=. \
			--go-grpc_out=. \
			$pbFile;
	fi
done

echo "PB files compiled successfully."
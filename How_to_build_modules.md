+ 编译内核模块
```bash
make drv_modules _BUILD=/home/embedfire/test/ebf-buster-linux
```
通过_BUILD参数，指定内核源码路径
+ 安装内核模块
```bash
make drv_install
```
默认将所有的内核模块复制到当前目录的__install_dir
+ 清除内核模块的过程文件
```bash
make drv_clean
```

# 8Mi-ClashController

1. 安装前准备
	- 通用发行版 (需要有 `tmux` `git` 包)
	- 若是Debian及衍生发行版 (例如Deepin/UOS/UbuntuKylin)
`sudo apt install git tmux`
	- 并安装控制程序(分渠道,根据频道更新,建议使用国内的Git)
		- GitHub `git clone https://github.com/8Mi-Tech/8Mi-ClashController`
		- Gitee `git clone https://gitee.com/BMi-Tech/BMi-ClashController.git`
2. 使用前准备
	- 复制`clash_settings.config.example`在原路径内并改名成`clash_settings.config`
	- 编辑`clash_settings.config`内的参数
	- 调整项目有 `sub_link`订阅地址 `dl_engine`下载器引擎 `clash_dashboard`控制页地址
	- 输入`./bmiclash install`以安装Clash主控程序 (更新日期:2021.01.28)
3. 开始使用
	- 在终端内输入`./bmiclash start` 启动clash

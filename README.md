# 配置文件结构
wezterm
```
├── config
│   ├── appearance.lua
│   └── keymaps.lua
├── tab
│   ├── left-status.lua
│   ├── new-tab-button.lua
│   ├── right-status-2.lua
│   ├── right-status.lua
│   └── tab-title.lua
├── utils
│   └── math.lua
└── wezterm.lua
```
# 安装
## Linux
```bash
git clone https://github.com/ainaglar/wezterm_config.git ~/.config/wezterm
cd ~/.config/wezterm
rm -rf .git
```
## Windows
```
git clone https://github.com/ainaglar/wezterm_config.git $HOME/.config/wezterm/
cd $HOME/.config/wezterm/
rm .git
```
## 需要修改的配置
- 如果在windows下，需要修改`wezterm.lua`中的`config.default_prog = {"C:\\Path\\To\\Your\\Shell.exe}`，指定shell的安装目录

`config.window_background_image = "/Path/To/Your/Picture"` 指定背景图片
`config.leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 }` 修改key后的值从而修改`<leader>`
# keymaps

| `类别`   | `Key`                                        | `功能`                  |
| ------ | -------------------------------------------- | --------------------- |
| *切分窗口* | `<leader>`                                   | `leader按键，默认为<c-a>`   |
|        | `<leader>/`                                  | `在当前窗口下方切分一个窗口`       |
|        | `<leader>-`                                  | `在当前窗口右方切分一个窗口`       |
|        | `<leader>h`                                  | `光标移动到左边的窗口`          |
|        | `<leader>j`                                  | ``光标移动到下方的窗口`         |
|        | `<leader>k`                                  | ``光标移动到上方的窗口`         |
|        | `<leader>l`                                  | `光标移动到右方的窗口`          |
|        | `<leader>x`                                  | `关闭当前窗口`              |
|        | `<leader>z`                                  | `切换当前窗口的缩放状态`         |
|        | `<leader>o`                                  | `顺时针切换切分窗口顺序`         |
|        | `<leader>r`                                  | `调整当前选中切分窗口的大小`       |
|        | `<leader>h``<leader>j``<leader>k``<leader>l` | `在调整模式下调整大小`          |
| *新窗口*  | `<leader>t`                                  | `新建一个终端`              |
|        | `<leader>[`                                  | `前一个终端`               |
|        | `<leader>]`                                  | `后一个终端`               |
|        | `<leader>n`或者`鼠标右击标签栏`                       | `显示所有打开的终端，<Enter>选择` |
|        | `<leader>e`                                  | `修改当前终端名称（只能英语）`      |
|        | `<leader>m`                                  | `移动当前终端前后位置`          |
|        | `<leader>1~9`                                | `跳转到第i个终端`            |
## 配置文件
- `appearance.lua`定义了所有的外观，字体设置
- `keymaps.lua`定义了所有按键
- `tab`文件下定义标签栏。

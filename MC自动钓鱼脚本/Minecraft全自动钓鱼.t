﻿变量 时间差 = 0, at = 0, time = 0, 窗口句柄 = 0, 键值 = 0, 功能键 = 0
变量 线程ID = 0, 重置延时 = 0, color获取 = 0, 颜色 = 0, 坐标x = 0
变量 坐标y = 0, 延时 = 100, 判断 = 0, zt1 = 0, 窗口置顶 = 0, zt2 = 0
变量 栏目 = 0,栏目键码=0
功能 Minecraft全自动钓鱼_初始化()
    窗口句柄 = 窗口查找("MC自动钓鱼脚本")
    窗口隐藏(窗口句柄)
    键值 = 文件读配置("热键", "启动键值", "C:\\AppData\\gxh软件设置")
    功能键 = 文件读配置("热键", "启动功能键", "C:\\AppData\\gxh软件设置")
    如果(键值 != "")
        热键设置键码("启动0", 键值, 功能键, "Minecraft全自动钓鱼")
        热键注册("启动0", "Minecraft全自动钓鱼")
    结束
    键值 = 文件读配置("热键", "终止键值", "C:\\AppData\\gxh软件设置")
    功能键 = 文件读配置("热键", "终止功能键", "C:\\AppData\\gxh软件设置")
    如果(键值 != "")
        热键设置键码("终止0", 键值, 功能键, "Minecraft全自动钓鱼")
        热键注册("终止0", "Minecraft全自动钓鱼")
    结束
    坐标x = 文件读配置("钓鱼", "坐标x", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("坐标x", 坐标x, "Minecraft全自动钓鱼")
    坐标y = 文件读配置("钓鱼", "坐标y", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("坐标y", 坐标y, "Minecraft全自动钓鱼")
    颜色 = 文件读配置("钓鱼", "颜色", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("颜色", 颜色, "Minecraft全自动钓鱼")
    延时 = 文件读配置("钓鱼", "延时", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("延时", 延时, "Minecraft全自动钓鱼")
    判断 = 文件读配置("钓鱼", "判断", "C:\\AppData\\gxh软件设置")
    下拉框设置选项("判断", 判断, "Minecraft全自动钓鱼")
    重置延时 = 文件读配置("钓鱼", "重置延时", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("重置延时", 重置延时, "Minecraft全自动钓鱼")
    窗口置顶 = 文件读配置("钓鱼", "窗口置顶", "C:\\AppData\\gxh软件设置")
    if(窗口置顶)
        复选框设置状态("窗口置顶", 真, "Minecraft全自动钓鱼")
        窗口句柄 = 窗口查找("MC自动钓鱼脚本")
        窗口置顶(窗口句柄, 真)
    end
    栏目 = 文件读配置("钓鱼", "栏目", "C:\\AppData\\gxh软件设置")
    编辑框设置文本("栏目", 栏目, "Minecraft全自动钓鱼")
结束
功能 保存配置0_点击()
    热键获取键码("启动0", 键值, 功能键, "Minecraft全自动钓鱼")
    文件写配置("热键", "启动键值", 键值, "C:\\AppData\\gxh软件设置")
    文件写配置("热键", "启动功能键", 功能键, "C:\\AppData\\gxh软件设置")
    热键获取键码("终止0", 键值, 功能键, "Minecraft全自动钓鱼")
    文件写配置("热键", "终止键值", 键值, "C:\\AppData\\gxh软件设置")
    文件写配置("热键", "终止功能键", 功能键, "C:\\AppData\\gxh软件设置")
    坐标x = 编辑框获取文本("坐标x", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "坐标x", 坐标x, "C:\\AppData\\gxh软件设置")
    坐标y = 编辑框获取文本("坐标y", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "坐标y", 坐标y, "C:\\AppData\\gxh软件设置")
    颜色 = 字符串转小写(编辑框获取文本("颜色", "Minecraft全自动钓鱼"))
    文件写配置("钓鱼", "颜色", 颜色, "C:\\AppData\\gxh软件设置")
    延时 = 编辑框获取文本("延时", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "延时", 延时, "C:\\AppData\\gxh软件设置")
    判断 = 下拉框获取选项("判断", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "判断", 判断, "C:\\AppData\\gxh软件设置")
    重置延时 = 编辑框获取文本("重置延时", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "重置延时", 重置延时, "C:\\AppData\\gxh软件设置")
    窗口置顶 = 复选框获取状态("窗口置顶", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "窗口置顶", 窗口置顶, "C:\\AppData\\gxh软件设置")
    栏目 = 编辑框获取文本("栏目", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "栏目", 栏目, "C:\\AppData\\gxh软件设置")
    
结束
功能 启动0_失去焦点()
    热键销毁("启动0", "Minecraft全自动钓鱼")
    热键注册("启动0", "Minecraft全自动钓鱼")
结束
功能 终止0_失去焦点()
    热键销毁("终止0", "Minecraft全自动钓鱼")
    热键注册("终止0", "Minecraft全自动钓鱼")
结束
功能 启动0_热键()
    如果(线程ID == 0)
        线程ID = 线程开启("检测", "")
    否则
        对话框("脚本正在执行中,请先停止再启动.", "by gxh", 0, 真)
    结束
结束
功能 检测()
    标签设置文本("状态", "开", "Minecraft全自动钓鱼")
    标签设置颜色("状态", #2e8b57, 0, "Minecraft全自动钓鱼")
    判断 = 下拉框获取选项("判断", "Minecraft全自动钓鱼")
    延时 = 编辑框获取文本("延时", "Minecraft全自动钓鱼")
    颜色 = 字符串转小写(编辑框获取文本("颜色", "Minecraft全自动钓鱼"))
    坐标y = 编辑框获取文本("坐标y", "Minecraft全自动钓鱼")
    坐标x = 编辑框获取文本("坐标x", "Minecraft全自动钓鱼")
    重置延时 = 编辑框获取文本("重置延时", "Minecraft全自动钓鱼")
    栏目 = 编辑框获取文本("栏目", "Minecraft全自动钓鱼")
    栏目键码 = 栏目 + 48
    if(坐标x != "" && 坐标y != "" && 颜色 != "" && 延时 != "" && 判断 != "" && 延时 > 100 && 重置延时 > 5)
        at = 当前时间()
        time = 时间分(at) * 60 + 时间秒(at)
        if(判断 == 1)
            循环(真)
                color获取 = 取色(坐标x, 坐标y, 1)
                如果(color获取 != 颜色)
                    at = 当前时间()
                    time = 时间分(at) * 60 + 时间秒(at)
                    鼠标右键单击(1)
                    等待(延时)
                    鼠标右键单击(1)
                    等待(2500)
                否则
                    at = 当前时间()
                    时间差 = 时间分(at) * 60 + 时间秒(at) - time
                    if(时间差 > 重置延时)
                        at = 当前时间()
                        time = 时间分(at) * 60 + 时间秒(at)
                        鼠标中键上滚(1)
                        等待(250)
                        鼠标中键下滚(1)
                        等待(250)
                        if(栏目>0 && 栏目<10)
                            等待(100)
                            键盘按键(栏目键码) 
                        end
                        鼠标右键单击(1)
                        等待(1000)
                    end
                结束
            结束
        elseif(判断 == 0)
            循环(真)
                color获取 = 取色(坐标x, 坐标y, 1)
                如果(color获取 = 颜色)
                    at = 当前时间()
                    time = 时间分(at) * 60 + 时间秒(at)
                    鼠标右键单击(1)
                    等待(150)
                    鼠标中键上滚(1)
                    等待(延时 - 100)
                    鼠标中键下滚(1)
                    等待(150)
                    鼠标右键单击(1)
                    等待(1000)
                否则
                    at = 当前时间()
                    时间差 = 时间分(at) * 60 + 时间秒(at) - time
                    if(时间差 > 重置延时)
                        at = 当前时间()
                        time = 时间分(at) * 60 + 时间秒(at)
                        鼠标中键上滚(1)
                        等待(50)
                        鼠标中键下滚(1)
                        等待(50)
                        if(栏目>0 && 栏目<10)
                            等待(100)
                            键盘按键(栏目键码) 
                        end
                    end                        
                    鼠标右键单击(1)
                    等待(2000)
                结束
            结束
        end
    else
        对话框("请先填写完成或正确填写(重置延时需大于5秒,抛竿延时需大于100毫秒)", "by gxh", 0, 真)
        zt1 = 线程ID
        线程ID = 0
        标签设置文本("状态", "关", "Minecraft全自动钓鱼")
        标签设置颜色("状态", #f38080, 0, "Minecraft全自动钓鱼")
        线程关闭(zt1)
    end
结束
功能 终止0_热键()
    如果(线程ID != 0)
        标签设置文本("状态", "关", "Minecraft全自动钓鱼")
        标签设置颜色("状态", #f38080, 0, "Minecraft全自动钓鱼")
        线程关闭(线程ID)
        线程ID = 0
    结束    
结束

功能 Minecraft全自动钓鱼_关闭()
    窗口句柄 = 窗口查找("MC自动钓鱼脚本")
    窗口显示(窗口句柄)
    控件关闭子窗口("Minecraft全自动钓鱼", 0)
结束

功能 窗口置顶_点击()
    if(复选框获取状态("窗口置顶", "Minecraft全自动钓鱼"))
        窗口句柄 = 窗口查找("MC自动钓鱼脚本")
        if(窗口置顶(窗口句柄, 真))
            对话框("窗口置顶成功", "窗口置顶", 0, 真) 
        end
    else
        窗口句柄 = 窗口查找("MC自动钓鱼脚本")
        if(窗口置顶(窗口句柄, 假))
            对话框("已取消窗口置顶", "窗口置顶", 0, 真)
        end
    end
    窗口置顶 = 复选框获取状态("窗口置顶", "Minecraft全自动钓鱼")
    文件写配置("钓鱼", "窗口置顶", 窗口置顶, "C:\\AppData\\gxh软件设置")
结束
功能 收起_点击()
    if(zt2 == 0)
        窗口句柄 = 窗口查找("Minecraft全自动钓鱼")
        窗口设置大小(窗口句柄, 394, 120)
        zt2 = 1
        按钮设置文本("收起", "﹀", "Minecraft全自动钓鱼")
        控件显示("设置框", 假, "Minecraft全自动钓鱼")
    else
        窗口句柄 = 窗口查找("Minecraft全自动钓鱼")
        窗口设置大小(窗口句柄, 394, 356)
        zt2 = 0
        按钮设置文本("收起", "︿", "Minecraft全自动钓鱼")
        控件显示("设置框", 真, "Minecraft全自动钓鱼")
    end
结束

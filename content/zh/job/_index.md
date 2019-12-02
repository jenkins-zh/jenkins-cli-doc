---
title: "任务"
weight: 80
---

## 任务管理

使用如下的命令可以搜索 Jenkins 任务：

`jcli job search input`

要触发一个任务的话，可以使用下面的命令：

`jcli job build "jobName" -b`

通过下面的命令可以参考一个任务的执行日志：

`jcli job log "jobName" -w`

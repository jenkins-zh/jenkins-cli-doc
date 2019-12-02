---
title: "Quick Start"
date: 2018-01-28T21:58:09+01:00
weight: 60
---

# jcli Document

`jcli` was written by [golang](https://github.com/golang) which could provide you a easy way to manage your Jenkins. Unlike the [build-in cli](https://jenkins.io/doc/book/managing/cli/), `jcli` allows you manage multiple servers.

## How to get it

Read [here](../README.md) to get know about how to install `jcli`.

## Configuration

Once you'v installed `jcli`. You should provide a config file for it. Please execute cmd `jcli config generate`, this will help you to edit the config file `~/.jenkins-cli.yaml`. According to your Jenkins configuration to modify this file.

If you want to modify your config file of `jcli`. You just need to execute `jcli config edit`.

It's simple to add another Jenkins config item. Here's a sample cmd: `jcli config add -n yourJenkinsName --url http://localhost:8080/jenkins --token replacethesampletoken`.

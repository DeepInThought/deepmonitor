package main

import (
	_ "golang.org/x/sys/windows"
	"runtime"
	"fmt"
	"time"
)

func init() {
	runtime.LockOSThread()
	
}

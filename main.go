package main

import (
	_ "golang.org/x/sys/windows"
	"runtime"
	"fmt"
	"time"
)

func init() {
	runtime.LockOSThread()
	currentTime := time.Now()
	fmt.Printf("%+v\n", currentTime)
}

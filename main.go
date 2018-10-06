package main

import (
	"fmt"
	"os"
	"runtime"
	"time"
	"log"

	"golang.org/x/sys/windows"
)

// MainLogs Record logs and send to os.Stderr
var MainLogs= mainLogs{}
type mainLogs struct {
	info, warn, err *log.Logger
}

func init() {
	runtime.LockOSThread()
	MainLogs.info = log.New(os.Stderr, "INFO: ", log.Ltime)
	MainLogs.warn = log.New(os.Stderr, "WARNING: ", log.Ltime)
	MainLogs.err = log.New(os.Stderr, "ERROR: ", log.Ltime)
	return
}

func main() {
	deepTime := time.Now()
	fmt.Println("INITIATING:")
	fmt.Println("TIME: ", deepTime)
}

func version()  {
	windows.
	return
}
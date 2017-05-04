package main

import (
        "fmt"
        "time"
)

func main() {
        ticker := time.NewTicker(time.Second)
        defer ticker.Stop()

        for _ = range ticker.C {
                fmt.Println("Hello! I'm going to sleep for 1 second.")
                time.Sleep(time.Second)
        }
}

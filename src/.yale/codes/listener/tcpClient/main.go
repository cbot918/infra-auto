package main

import (
	u "listener/util"
	"net"
)

const (
	addr = "127.0.0.1:2000"
)

func main() {
	conn, err := net.Dial("tcp", addr)
	u.Checke(err, "net dial error")
	defer conn.Close()

	conn.Write([]byte("hihi"))

	bs := make([]byte, 1024)
	len, err := conn.Read(bs)
	u.Checke(err, "conn read error")
	u.Logg(string(bs[:len]))
}

package main

import (
	"fmt"
	"io"
	u "listener/util"
	"net"
)

func main() {
	// init listen
	l, err := net.Listen("tcp", ":2000")
	u.Checke(err, "listen error")
	defer l.Close()

	for {
		conn, err := l.Accept()
		u.Checke(err, "accept error")

		go handleConn(conn)
	}

}

func handleConn(c net.Conn) {
	remoteAddr := c.RemoteAddr().String()
	fmt.Println("Client connected from: " + remoteAddr)
	buf := make([]byte, 1024)

	for {
		len, err := c.Read(buf)
		if err != nil {

			if err.Error() == "EOF" {
				fmt.Println("Disconned from ", remoteAddr)
				break
			} else {
				fmt.Println("Error reading:", err.Error())
				break
			}
		}

		c.Write([]byte("hello from server\n"))
		u.Logg(string(buf[:len]))
	}

	io.Copy(c, c)
	c.Close()
}

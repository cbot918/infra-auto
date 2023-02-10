package main

import (
	u "godb/util"
	"log"

	"github.com/spf13/viper"
)

type Config struct {
	Connections struct {
		Postgresql struct {
			DB       string
			Host     string
			User     string
			Password string
			MaxOpen  int
			MaxIdle  int
		}
	}
}

func main() {
	v := viper.New()
	v.SetConfigFile("yaml")
	v.SetConfigName("test")
	v.AddConfigPath("./")

	if err := v.ReadInConfig(); err != nil {
		log.Fatal(err)
	}

	cfg := &Config{}

	v.Unmarshal(&cfg)

	u.Logg(cfg)

	// u.Logg(v.Get("connection"))
}

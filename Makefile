.PHONY: build

sdl:
	go get -v github.com/veandco/go-sdl2/sdl
	go get -v github.com/veandco/go-sdl2/sdl_mixer
	go get -v github.com/veandco/go-sdl2/sdl_image
	go get -v github.com/veandco/go-sdl2/sdl_ttf

test:
	glide nv | xargs go test

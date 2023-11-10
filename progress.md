# What did I do

## project setup

```bash
cabal init traffic
cd traffic
git init
```

### LICENSE

added the Hippocratic License https://firstdonoharm.dev/version/3/0/bds-eco-extr-ffd-law-media-mil-my-sv-tal-usta-xuar.txt

### README

added a skinny README

## cabal file

- adjust `cabal` file
  - introduce a `library` stanza
  - add `arduino-copilot` as dependency

## Traffic.hs

- write code to make a led blink, copied from https://hackage.haskell.org/package/arduino-copilot-1.7.7/docs/Copilot-Arduino.html#v:arduino
- use `traffic` from `Traffic.Traffic` in `App.main`
- run the program with `cabal exec traffic` to obtain a `traffic.ino`

## Arduino

- installed `arduino-ide`
- run `sudo chmod a+rw /dev/ttyACM0` to be able to write to board
- in the IDE select board and port
- upload sketch

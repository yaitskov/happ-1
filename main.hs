module Main where


-- import Happstack.Server (nullConf, simpleHTTP, toResponse, ok)

-- main :: IO ()
-- main = do simpleHTTP nullConf $ ok "Hello, World!"

import Happstack.Server

-- main :: IO ()
main = simpleHTTP nullConf $ ok "Hello, <b>world</b>"



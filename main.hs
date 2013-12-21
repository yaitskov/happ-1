module Main where


-- import Happstack.Server (nullConf, simpleHTTP, toResponse, ok)

-- main :: IO ()
-- main = do simpleHTTP nullConf $ ok "Hello, World!"

import Happstack.Server
import Control.Monad

-- main :: IO ()
main = simpleHTTP nullConf $ msum pathes

pathes = [ dir "download" $ ok "git clone from http://github.com/yaitskov",
           dir "info" $ ok "mini wiki",
           ok "home page"
         ]



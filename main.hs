{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Happstack.Server
import Control.Monad

main = simpleHTTP nullConf $ msum pathes

pathes = [ dir "download" $ ok "git clone from http://github.com/yaitskov",
           dir "info" $ ok "mini wiki",
           dir "path" $ path helloPage,
           ok "home page"
         ]

len :: String -> Int
len s = length s

helloPage s = do
   ok $ "hello " ++ (show (len s)) -- (show $ length (



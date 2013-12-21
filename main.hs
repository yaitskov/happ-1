{-# LANGUAGE ScopedTypeVariables #-}
module Main where

import Happstack.Server
import Control.Monad

main = simpleHTTP nullConf $ msum pathes

pathes = [ dir "download" $ ok "git clone from http://github.com/yaitskov",
           dir "info" $ ok "mini wiki",
           dir "path" $ path helloPage,
           dir "write" $ storeValue,
           dir "param" $ showParam,
           dir "read" $ readValue,
           ok "home page"
         ]

showParam = do
  p <- look "p1"
  ok $ "p1 = [" ++ p ++ "]"

readValue = do
  path $ \name -> do
    value <- lookCookieValue name
    ok $ "read [" ++ value ++ "]"

storeValue = do
  path $ \name -> do
    path $ \value -> do
      addCookies [ (Session, mkCookie name value) ]
      ok "the value is stored"

len :: String -> Int
len s = length s

helloPage s = do
   ok $ "hello " ++ (show (len s)) -- (show $ length (



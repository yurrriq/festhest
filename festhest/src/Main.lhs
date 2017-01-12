Use some language extensions.

> {-# LANGUAGE OverloadedStrings #-}
> {-# LANGUAGE QuasiQuotes       #-}
> {-# LANGUAGE TemplateHaskell   #-}
> {-# LANGUAGE TypeFamilies      #-}

> module Main (main) where

Import Yesod:

> import Yesod


... and write a bare-bones Yesod app:

> data App = App
> instance Yesod App

> mkYesod "App" [parseRoutes| / HomeR GET |]

> getHomeR :: Handler Html
> getHomeR = defaultLayout [whamlet| <h1>Hello, Haskell! |]

> main :: IO ()
> main = warp 80 App

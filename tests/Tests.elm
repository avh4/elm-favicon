module Tests exposing (..)

import Test exposing (..)
import Expect
import Favicon


all : Test
all =
    describe "Favicon"
        [ test "basic example" <|
            \() ->
                Favicon.fromUrl "https://google.com"
                    |> Expect.equal "https://google.com:443/favicon.ico"
        , test "URL with path" <|
            \() ->
                Favicon.fromUrl "https://github.com/audreyr/favicon-cheat-sheet"
                    |> Expect.equal "https://github.com:443/favicon.ico"
        ]

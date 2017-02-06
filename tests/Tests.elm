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
                    |> Expect.equal "https://google.com/favicon.ico"
        ]

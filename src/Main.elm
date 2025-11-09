module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (style)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


type alias Model =
    {}


type Msg
    = NoOp  -- Placeholder message type


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update _ model =
    ( model, Cmd.none )


view : Model -> Html Msg
view _ =
    div
        [ style "padding" "20px"
        , style "font-family" "sans-serif"
        ]
        [ h1 [] [ text "Elm Chrome Extension" ]
        ]


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none

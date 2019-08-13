module Views.NotFound exposing (..)

import Html exposing (Html, text, div)
import Html.Attributes exposing (class)

import Types exposing (..)
import Views.Components.Menu exposing (view)


view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view, 
        text "Not a valid route!" ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav Work", body = [ view model ]}

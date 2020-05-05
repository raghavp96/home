module Views.Components.Links exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (href, class)

import Types exposing (..)
import Views.Components.Link exposing (view)

view : Html Msg
view =
    div [] [
        Views.Components.Link.view "resume.pdf" "Resume",
        text " / ",
        Views.Components.Link.view "https://github.com/raghavp96/" "Github",
        text " / ",
        Views.Components.Link.view "https://www.linkedin.com/in/raghavp96/" "LinkedIn",
        text " / ",
        Views.Components.Link.view "mailto:raghavp96@gmail.com" "Email",
        text " / ",
        Views.Components.Link.view "https://www.instagram.com/raghavp96/" "Instagram"
    ]
module Views.WorkView exposing (..)

import Html exposing (Html, text, div, h2, h3, p, br, ul, li, a)
import Html.Attributes exposing (class, href)

import Types exposing (..)
import Content exposing (projects)
import Views.Components.Menu exposing (view)
import Views.Components.Tag exposing (viewTag)
import Views.Components.Link exposing (view)


viewWorkExperience: WorkExperienceEntry -> Html Msg
viewWorkExperience workExperienceEntry =
    div [ class "entry" ] [ 
        h2 [ class "header" ] [ Views.Components.Link.view workExperienceEntry.link workExperienceEntry.company ], 
        h3 [] [ text workExperienceEntry.title ], 
        div [ class "entry-component" ] (List.map (\item -> p [] [ text item ]) workExperienceEntry.description ),
        div [ class "entry-component" ] [ ul [ class "tag" ] (List.map (\item -> li [ class "tag" ] [ Views.Components.Tag.viewTag item ]) workExperienceEntry.tags)]]

viewWorkExperienceList: List WorkExperienceEntry -> Html Msg
viewWorkExperienceList workExperienceEntries =
    div [ class "row" ] (List.map (\item -> div [] [ viewWorkExperience item ]) workExperienceEntries)


view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view,
        br [][], 
        viewWorkExperienceList Content.workExperience ]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Work Experience", body = [ view model ]}

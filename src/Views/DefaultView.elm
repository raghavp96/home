module Views.DefaultView exposing (..)

import Array
import Html exposing (Html, text, div, br, h2, h3, h4, h5, button, a, img)
import Html.Attributes exposing (src, href, class, width, height)
import Html.Events exposing (onClick)

import Types exposing (..)
import Content exposing (workExperience, projects)
import Views.Components.Menu exposing (view)
import Views.Components.Links exposing (view)
import Views.Components.Link exposing (view)

viewWorkExperienceSnippet: WorkExperienceEntry -> Html Msg
viewWorkExperienceSnippet workExperienceEntry = 
    div [] [ 
        h4 [] [text (String.append (String.append workExperienceEntry.title " at ") workExperienceEntry.company)], 
        div [] [text workExperienceEntry.blurb]]

viewProjectEntrySnippet : ProjectEntry -> Html Msg
viewProjectEntrySnippet project = 
    div [] [ 
        h4 [] [text project.title], 
        div [] [text project.blurb]]

view : Model -> Html Msg
view model =
    div [ class "wrapper" ] [
        Views.Components.Menu.view, 
        div [ class "row" ] [
            br [][], 
            br [][], 
            div [ class "about" ] [ img [ src "me2.JPG"] []],
            br [][],
            h2 [ class "header" ] [ text "Hello hello, I'm Raghav."],
            h5 [ class "header" ] [ text "(That's short for Raghavprasanna Rajagopalan)" ],
            h3 [] [ text "I'm a Software Engineer at 1upHealth in Boston. I recently graduated from Northeastern University (May 2020) with my M.S. in Computer Science, specializing in AI. (I also got my B.S. in Computer Science and Biology from there in May 2019)." ],
            Views.Components.Links.view ],
        div [ class "row" ] [ 
            br [][], 
            h3 [ class "header nav-heading" ]  [ Views.Components.Link.view "/work" "Work Experience" ],
            div [ class "nav"]  [ button [ class "nav", onClick LeftWork ] [ text "<" ]],
            div [ class "nav-middle" ] [ viewWorkExperienceSnippet (Maybe.withDefault { title = "", company = "", blurb = "", description = [""], link = "", tags = [] } (Array.get model.workIndex (Array.fromList Content.workExperience))) ],
            div [ class "nav" ] [ button [ class "nav", onClick RightWork ] [ text ">" ]]],
        div [ class "row" ] [ 
            br [][], 
            h3 [ class "header nav-heading" ] [ Views.Components.Link.view "/project" "Projects" ],
            div [ class "nav" ]  [ button [ class "nav", onClick LeftProject ] [ text "<" ]], 
            div [ class "nav-middle" ] [ viewProjectEntrySnippet (Maybe.withDefault { title = "", githubProfile = "", blurb = "", description = "", tags = [] } (Array.get model.projectIndex (Array.fromList Content.projects))) ], 
            div [ class "nav" ]  [ button [ class "nav", onClick RightProject ] [ text ">" ]]],
        br [][]]

viewDocument : Model -> Document Msg
viewDocument model = 
    { title = "Raghav's Website", body = [ view  model ] }
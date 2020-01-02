module Views.Components.About exposing (..)

import Html exposing (Html, text, div, p, a)
import Html.Attributes exposing (class, href)

import Types exposing (..)
import Views.Components.Link exposing (view)


view : Html Msg
view =
    div [ class "about-content" ] [
        p [] [ text "I'm currently doing a PlusOne program at Northeastern where I can get my Masters in Computer Science in one year. I just finished my Bachelors in Computer Science and Biology this past May (2019)! Lately, I've become more interested in AI and machine learning, and have worked on some small projects involving big data and AI. In the near future, I'll potentially get the chance to connect with the other half of my degree, biology (more on this to come!)." ],
        p [] [ text "Reducing boilerplate code holds a special place in my heart, because I love not having to be redundant. A lot of my coding time is spent building frameworks or templates to make it easier for me to jump right in next time! I also am a big fan of establishing code pipelines, so other developers can focus only on coding." ],
        p [] [ 
            text "Perhaps because of the mentors I've found in my friends and coworkers, I'm super passionate about mentorship and have been helping first year students studying Computer Science at Northeastern navigate their college experience as a Resident Assistant (RA) for the past two years. As of this semester, I'm also serving as a Teaching Assistant for DS 4300 (Large Scale Storage and Retrieval), and I'm excited for that as well - check out the ",
            Views.Components.Link.view "http://www.ccs.neu.edu/home/rachlin/nosql/" "course page",
            text "!" ],
        p [] [ text "When I'm not coding or RAing, I'm probably getting food with friends, running, or gymming. I've recently got back into doing yoga and listening to podcasts (love NPR's Hidden Brain segment)!" ]
    ]
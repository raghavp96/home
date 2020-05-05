module Views.Components.About exposing (..)

import Html exposing (Html, text, div, p, a)
import Html.Attributes exposing (class, href)

import Types exposing (..)
import Views.Components.Link exposing (view)


view : Html Msg
view =
    div [ class "about-content" ] [
        p [] [ text "I just graduated from Northeastern with my Master's in Computer Science this May (2020)! Because of the PlusOne program at Northeastern, I was able to get my Master's in one year! I finished my Bachelors in Computer Science and Biology in May 2019. Lately, I've become more interested in AI and machine learning, and have worked on some small projects involving big data, AI, NLP, and Information Retrieval. I've also worked on biolink, a database project connecting biological knowledge, under the guidance of a professor at Northeastern!" ],
        p [] [ text "Reducing boilerplate code holds a special place in my heart, because I love not having to be redundant. A lot of my coding time is spent building frameworks or templates to make it easier for me to jump right in next time! I also am a big fan of establishing code pipelines, so other developers can focus only on coding." ],
        p [] [ 
            text "Perhaps because of the mentors I've found in my friends and coworkers, I'm super passionate about mentorship and have been helping first year students studying Computer Science at Northeastern navigate their college experience as a Resident Assistant (RA) for the past two years. In my last semester, I was also a Teaching Assistant for DS 4300 (Large Scale Storage and Retrieval). Through the course I got the opportunity to mentor students and help them as they contributed to biolink, which was super cool! (You can check out the  ",
            Views.Components.Link.view "http://www.ccs.neu.edu/home/rachlin/nosql/" "course page",
            text ") !" ],
        p [] [ text "When I'm not coding or RAing, I'm probably getting food with friends, running, or gymming. I've recently got back into doing yoga and listening to podcasts (love NPR's Hidden Brain segment)!" ]
    ]
*** Settings ***
Library				Selenium2Library
Test Teardown		Close Browser

*** Variables ***
${Browser}		gc
${Web}    	    https://music.youtube.com//
${Selspeed}		5s

*** Keyword ***

Play Music 
    Open Browser    ${Web}  ${Browser}
    Maximize Browser Window
    Sleep   2s 
    Click Element   xpath=//*[@id="play-button"]
    Sleep   2s
    Wait Until Element Is Visible   xpath=//*[@id="movie_player"]/div[1]/video
    Sleep   5s
    Close Browser

Search Music 
    Open Browser    ${Web}  ${Browser}
    Maximize Browser Window
    Sleep   2s 
    Click Element       xpath=//*[@id="icon"]   
    Sleep   2s
    Wait Until Element Is Visible       xpath=//*[@id="layout"]/ytmusic-nav-bar/div[2]/ytmusic-search-box/div
    Sleep   2s
    Input Text      xpath=/html/body/ytmusic-app/ytmusic-app-layout/ytmusic-nav-bar/div[2]/ytmusic-search-box/div/div[1]/input      wedding
    Sleep   3s
    Press Key    xpath=/html/body/ytmusic-app/ytmusic-app-layout/ytmusic-nav-bar/div[2]/ytmusic-search-box/div/div[1]/input     \\13
    Sleep   10s
    Close Browser
        

*** Test Case ***
Youtube Music
    # Play Music 
    Search Music 
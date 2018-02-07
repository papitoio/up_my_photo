
@up
Feature: Upload my photo
    For my profile to be awesome
    As a user
    I can upload my photos

    Background:
        Given that I authenticated

    Scenario: Photo upload

        And that I selected my profile picture
        When I upload this photo
        Then I see the message "Now your profile is very cool."

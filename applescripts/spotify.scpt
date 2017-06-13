if application "Spotify" is running then
    tell application "Spotify"
        set theName to name of the current track
        set theArtist to artist of the current track
        set theAlbum to album of the current track
        set theUrl to spotify url of the current track
        try
            if length of theName is greater than 40 then
                set theName to text 1 thru 40 of theName & "..."
            end if
            if length of theArtist is greater than 30 then
                set theArtist to text 1 thru 30 of theArtist & "..."
            end if
            return "♫  " & theName & " - " & theArtist
        on error err
            return err
        end try
    end tell
end if

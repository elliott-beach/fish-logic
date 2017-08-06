function on_ampersand -d "replace \"&&\" with \";and\" when applicable"

    if [ (string match '*&' (commandline -c)) ]
        # The backspace I want to occur takes place after inserting the ";and", so we have to move the cursor back and forth to make it work.
        commandline -f backward-word backward-word backward-delete-char forward-word forward-word
        commandline --insert -- ';and'
    else
         commandline --insert -- '&'
    end

    commandline -f repaint
end

# TODO
# Use non-global env var
# Handle ||
# Only do the switch if line at cursor is &&
# Push to github
# match with vi mode
function on_pipe --description 'replace "||" with ";or" when applicable'
	if [ (string match '*|' (commandline -c)) ]
        # The backspace I want to occur takes place after inserting the ";and", so we have to move the cursor back and forth to make it work.
        commandline -f backward-word backward-word backward-delete-char forward-word forward-word
        commandline --insert -- ';or'
    else
         commandline --insert -- '|'
    end

    commandline -f repaint
end

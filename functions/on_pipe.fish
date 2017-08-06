function _logic_on_pipe -d 'replace "||" with ";or" when applicable'
	
    if [ (string match '*|' (commandline -c)) ]
        commandline -f backward-word backward-word backward-delete-char forward-word forward-word
        commandline --insert -- ';or'
    else
         commandline --insert -- '|'
    end
    commandline -f repaint
end

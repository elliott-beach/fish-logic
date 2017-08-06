function _logic_on_ampersand -d 'replace "&&" with ";and" when applicable'

    if [ (string match '*&' (commandline -c)) ]
        commandline -f backward-word backward-word backward-delete-char forward-word forward-word
        commandline --insert -- ';and'
    else
         commandline --insert -- '&'
    end
    commandline -f repaint
end
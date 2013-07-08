alias scios="cd ~/Code/SC-urgent"
alias ll="ls -la -FHG"
alias ac="open -a AppCode"
alias webserver='python -m SimpleHTTPServer'
alias rs-logo='print -P "%F{120}" && cat ~/.dotfiles/ascii-art/rs-logo && print -P "%f"'
alias soundcloud-logo='print -P "%F{172}" && cat ~/.dotfiles/ascii-art/soundcloud && print -P "%f"'
# Remove duplicates from "Open with..." context menu
alias duplo='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
# xctool run tests and export results to json and open in sublime
alias xtj='xctool -workspace SoundCloud.xcworkspace -scheme SoundCloud -sdk iphonesimulator5.0 -configuration Debug run-tests -test-sdk iphonesimulator5.0 -freshSimulator -reporter json-stream:xctool-output.json && subl xctool-output.json'
# xctool run tests
alias xt='xctool -workspace SoundCloud.xcworkspace -scheme SoundCloud -sdk iphonesimulator5.0 -configuration Debug run-tests -test-sdk iphonesimulator5.0 -freshSimulator'
# Defined in - @ line 0
function upp --description 'Updates everything with Topgrade but also prints the default Node version, Update Resets Homebrew, Cleans Homebrew and Z'
  set nodeIcon ' '; set nodeVerb 'Node Version in use: '; set_color green --bold;
  printf "$nodeIcon"; set_color normal;
  printf "$nodeVerb"; set_color green --bold; and node --version; set_color white;
  printf '―― '(date "+%H:%M:%S")'- Brew - Update Reset ―――――――――――――――――――――――――――――――――――――――――――――――――\n'; set_color normal; and brew update-reset; and topgrade; set_color white;
  printf '\n―― '(date "+%H:%M:%S")'- Brew - Cleanup ――――――――――――――――――――――――――――――――――――――――――――――――――――\n'; set_color normal; and brew cleanup --prune=all;set_color white;
  printf '\n―― '(date "+%H:%M:%S")'- Z - Cleanup ――――――――――――――――――――――――――――――――――――――――――――――――――――――\n'; set_color normal; and z --clean;
end

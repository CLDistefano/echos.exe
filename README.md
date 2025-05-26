# echos.exe
Enhanced ECHO command for Windows

Echos.exe emulates useful features of the *nix echo command and has some additional features as well. Options include "-n" to omit the trailing newline from output, and "-e" to enable interpretation of backslash escape sequences. ANSI escape sequences to set text colors are supported. Escape sequences for characters (bytes) can be expressed in octal, hexadecimal or decimal. There is also an option "-U" which forces output in UTF-16.

`Usage: ECHOS [OPTION]... [STRING]...`

`Echo STRING to standard output.`

`   -n     do not output the trailing newline`
   
`   -e     enable interpretation of backslash escapes`
   
`   -E     disable interpretation of backslash escapes (default)`
   
`   -U     force UTF-16 output for characters in range 128 - 255 (implies -e)`

`   -h /?  --help     display this help and exit`

`   -v     --version  display this help and exit`
   
If -e is in effect, the following sequences are recognized:


`   \\     backslash`
   
`   \"     double quote (also works with other printable characters)`
   
`   \a     alert (BEL)`
   
`   \b     backspace`
   
`   \c     produce no further output`
   
`   \e     escape`
   
`   \f     form feed`
   
`   \n     newline`
   
`   \r     carriage return`
   
`   \t     horizontal tab`
   
`   \v     vertical tab`
   
`   \0NNN  byte with octal value NNN (1 to 3 digits)`
   
`   \dNNN  byte with decimal value NNN (1 to 3 digits)`
   
`   \xHH   byte with hexadecimal value HH (1 or 2 digits)`
   




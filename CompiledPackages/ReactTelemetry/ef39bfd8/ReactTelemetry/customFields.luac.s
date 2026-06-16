MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 DUPTABLE                         R1 K6 [{"context", "plugin_name"}]
        8 JUMPIFNOT                        R0 ; [+2]
        9 LOADK                            R2 K7 ["plugin"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K8 ["unknown"]
       12 SETTABLEKS                       R2 R1 K4 ["context"]
       14 JUMPIFNOT                        R0 ; [+3]
       15 GETTABLEKS                       R2 R0 K9 ["Name"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K5 ["plugin_name"]
       21 RETURN                           R1 1

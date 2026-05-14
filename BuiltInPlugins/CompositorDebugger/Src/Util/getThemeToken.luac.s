PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getThemeName"]
        3 CALL                             R1 0 1
        4 JUMPIFNOTEQKS                    R1 K1 ["Dark"] ; [+12]
        6 GETIMPORT                        R2 K3 [require]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K4 ["Src"]
       11 GETTABLEKS                       R3 R3 K5 ["Resources"]
       13 GETTABLEKS                       R3 R3 K6 ["PluginStylesDarkTheme"]
       15 CALL                             R2 1 1
       16 JUMP                             ; [+10]
       17 GETIMPORT                        R2 K3 [require]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K4 ["Src"]
       22 GETTABLEKS                       R3 R3 K5 ["Resources"]
       24 GETTABLEKS                       R3 R3 K7 ["PluginStylesLightTheme"]
       26 CALL                             R2 1 1
       27 MOVE                             R5 R0
       28 NAMECALL                         R3 R2 K8 ["GetAttribute"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Style"]
       16 GETTABLEKS                       R2 R2 K9 ["ThemeSwitcher"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 RETURN                           R3 1

PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+10]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        4 LOADK                            R4 K1 ["^%w+://.*$"]
        5 NAMECALL                         R2 R0 K2 ["match"]
        7 CALL                             R2 2 1
        8 JUMPIFEQKNIL                     R2 ; [+2]
       10 RETURN                           R0 1
       11 JUMPIFNOT                        R0 ; [+7]
       12 JUMPIFEQKS                       R0 K0 [""] ; [+6]
       14 LOADK                            R4 K3 ["^%w+$"]
       15 NAMECALL                         R2 R0 K2 ["match"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+2]
       19 LOADNIL                          R2
       20 RETURN                           R2 1
       21 JUMPIFNOTEQKS                    R1 K4 ["Small"] ; [+3]
       23 MOVE                             R2 R1
       24 JUMP                             ; [+1]
       25 LOADK                            R2 K0 [""]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K5 ["getThemeName"]
       29 CALL                             R3 0 1
       30 JUMPIFNOTEQKS                    R1 K4 ["Small"] ; [+3]
       32 LOADK                            R4 K6 ["Standard"]
       33 JUMP                             ; [+1]
       34 LOADK                            R4 K7 ["Medium"]
       35 LOADK                            R6 K8 ["rbxasset://studio_svg_textures/Shared/Ribbon/%*/%*/Ribbon%*%*.png"]
       36 MOVE                             R8 R3
       37 MOVE                             R9 R4
       38 MOVE                             R10 R0
       39 MOVE                             R11 R2
       40 NAMECALL                         R6 R6 K9 ["format"]
       42 CALL                             R6 5 1
       43 MOVE                             R5 R6
       44 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Style"]
       16 GETTABLEKS                       R2 R3 K9 ["ThemeSwitcher"]
       18 NEWTABLE                         R3 1 0
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K11 ["getPathForIcon"]
       24 RETURN                           R3 1

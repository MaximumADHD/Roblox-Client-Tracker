PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R0 R0 K3 ["ThemeChanged"]
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R0 R0 K5 ["Connect"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKS                    R0 K1 ["Default"] ; [+4]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 -1
        7 RETURN                           R0 -1
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K3 [game]
        9 LOADK                            R3 K4 ["StylingService"]
       10 NAMECALL                         R1 R1 K5 ["GetService"]
       12 CALL                             R1 2 1
       13 NAMECALL                         R2 R1 K6 ["GetChildren"]
       15 CALL                             R2 1 3
       16 FORGPREP                         R2
       17 LOADK                            R9 K7 ["Folder"]
       18 NAMECALL                         R7 R6 K8 ["IsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+25]
       22 GETTABLEKS                       R7 R6 K9 ["Name"]
       24 LOADK                            R9 K10 ["^StudioDesign"]
       25 NAMECALL                         R7 R7 K11 ["match"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+18]
       29 GETTABLEKS                       R7 R6 K12 ["Design"]
       31 NEWTABLE                         R9 0 1
       33 GETTABLEKS                       R10 R6 K13 ["Themes"]
       35 GETUPVAL                         R12 0
       36 GETTABLEKS                       R12 R12 K14 ["getThemeName"]
       38 CALL                             R12 0 -1
       39 NAMECALL                         R10 R10 K15 ["FindFirstChild"]
       41 CALL                             R10 -1 -1
       42 SETLIST                          R9 R10 -1 [1]
       44 NAMECALL                         R7 R7 K16 ["SetDerives"]
       46 CALL                             R7 2 0
       47 FORGLOOP                         R2 2 ; [-31]
       49 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
       16 GETTABLEKS                       R4 R4 K1 ["join"]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
       25 GETTABLEKS                       R4 R4 K1 ["join"]
       27 DUPTABLE                         R5 K4 [{"themesList", "themeChangedConnection"}]
       28 NEWTABLE                         R6 2 0
       30 SETTABLEKS                       R2 R6 K5 ["Dark"]
       32 SETTABLEKS                       R3 R6 K6 ["Light"]
       34 SETTABLEKS                       R6 R5 K2 ["themesList"]
       36 GETUPVAL                         R6 3
       37 SETTABLEKS                       R6 R5 K3 ["themeChangedConnection"]
       39 GETUPVAL                         R6 4
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 5
       42 MOVE                             R6 R4
       43 CALL                             R5 1 1
       44 GETUPVAL                         R6 4
       45 GETTABLEKS                       R6 R6 K7 ["setTheme"]
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R7 R7 K8 ["current"]
       50 CALL                             R6 1 0
       51 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K7 ["Signal"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R0 K8 ["Style"]
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R3 K9 ["Themes"]
       27 GETTABLEKS                       R5 R5 K10 ["DarkTheme"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R3 K9 ["Themes"]
       34 GETTABLEKS                       R6 R6 K11 ["LightTheme"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R3 K12 ["createDefaultTheme"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R3 K13 ["getStudioThemeNameOrDefault"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R2 K14 ["new"]
       49 CALL                             R8 0 1
       50 GETIMPORT                        R9 K16 [pcall]
       52 DUPCLOSURE                       R10 K17 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 CALL                             R9 1 0
       55 DUPTABLE                         R9 K20 [{["current"] = "Default"}]
       56 DUPCLOSURE                       R10 K21 [PROTO_2]
       57 CAPTURE                          VAL R9
       58 CAPTURE                          VAL R7
       59 SETTABLEKS                       R10 R9 K22 ["getThemeName"]
       61 DUPCLOSURE                       R10 K23 [PROTO_3]
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R10 R9 K24 ["setTheme"]
       66 DUPCLOSURE                       R10 K25 [PROTO_4]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R10 R9 K14 ["new"]
       75 RETURN                           R9 1

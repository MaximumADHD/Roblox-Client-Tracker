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
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Connect"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_4:
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

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Style"]
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R0 K6 ["Util"]
       13 GETTABLEKS                       R3 R3 K7 ["Signal"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["getStudioThemeNameOrDefault"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K9 ["new"]
       23 CALL                             R4 0 1
       24 GETIMPORT                        R5 K11 [pcall]
       26 DUPCLOSURE                       R6 K12 [PROTO_1]
       27 CAPTURE                          VAL R4
       28 CALL                             R5 1 0
       29 DUPTABLE                         R5 K16 [{["current"] = "Default", ["themeSignal"]}]
       30 SETTABLEKS                       R4 R5 K15 ["themeSignal"]
       32 DUPCLOSURE                       R6 K17 [PROTO_2]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R6 R5 K18 ["getThemeName"]
       37 DUPCLOSURE                       R6 K19 [PROTO_3]
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K20 ["subscribe"]
       41 DUPCLOSURE                       R6 K21 [PROTO_4]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R6 R5 K22 ["setTheme"]
       46 RETURN                           R5 1

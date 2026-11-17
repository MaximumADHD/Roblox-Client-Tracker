PROTO_0:
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
       37 GETTABLEKS                       R6 R6 K7 ["themeSignal"]
       39 SETTABLEKS                       R6 R5 K3 ["themeChangedConnection"]
       41 GETUPVAL                         R6 4
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 5
       44 MOVE                             R6 R4
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K8 ["setTheme"]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K9 ["current"]
       52 CALL                             R6 1 0
       53 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["Style"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K7 ["Themes"]
       20 GETTABLEKS                       R4 R4 K8 ["DarkTheme"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R2 K7 ["Themes"]
       27 GETTABLEKS                       R5 R5 K9 ["LightTheme"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R2 K10 ["createDefaultTheme"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K4 [require]
       37 GETTABLEKS                       R7 R2 K11 ["ThemeSwitcherState"]
       39 CALL                             R6 1 1
       40 DUPTABLE                         R7 K15 [{"getThemeName", "subscribe", "setTheme"}]
       41 GETTABLEKS                       R8 R6 K12 ["getThemeName"]
       43 SETTABLEKS                       R8 R7 K12 ["getThemeName"]
       45 GETTABLEKS                       R8 R6 K13 ["subscribe"]
       47 SETTABLEKS                       R8 R7 K13 ["subscribe"]
       49 GETTABLEKS                       R8 R6 K14 ["setTheme"]
       51 SETTABLEKS                       R8 R7 K14 ["setTheme"]
       53 DUPCLOSURE                       R8 K16 [PROTO_0]
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 SETTABLEKS                       R8 R7 K17 ["new"]
       62 RETURN                           R7 1

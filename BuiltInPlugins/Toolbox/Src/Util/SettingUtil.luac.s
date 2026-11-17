PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R0 K0 ["Dark"]
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K2 [settings]
        7 CALL                             R0 0 1
        8 GETTABLEKS                       R0 R0 K3 ["Studio"]
       10 GETTABLEKS                       R0 R0 K4 ["Theme"]
       12 GETTABLEKS                       R0 R0 K5 ["Name"]
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 NAMECALL                         R0 R0 K0 ["new"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1
        8 GETIMPORT                        R0 K2 [settings]
       10 CALL                             R0 0 1
       11 GETTABLEKS                       R0 R0 K3 ["Studio"]
       13 GETTABLEKS                       R0 R0 K4 ["ThemeChanged"]
       15 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["isCli"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K6 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["MockSignal"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 2 0
       29 DUPCLOSURE                       R4 K9 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K10 ["getStudioThemeName"]
       33 DUPCLOSURE                       R4 K11 [PROTO_1]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 SETTABLEKS                       R4 R3 K12 ["getStudioThemeChangedSignal"]
       38 RETURN                           R3 1

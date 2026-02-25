PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K0 ["Fire"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 LOADK                            R4 K0 ["Light"]
        9 GETUPVAL                         R6 3
       10 GETTABLEKS                       R5 R6 K1 ["new"]
       12 CALL                             R5 0 1
       13 DUPTABLE                         R6 K5 [{"getThemeName", "themesList", "themeChangedConnection"}]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          REF R4
       16 SETTABLEKS                       R7 R6 K2 ["getThemeName"]
       18 NEWTABLE                         R7 2 0
       20 SETTABLEKS                       R2 R7 K6 ["Dark"]
       22 SETTABLEKS                       R3 R7 K0 ["Light"]
       24 SETTABLEKS                       R7 R6 K3 ["themesList"]
       26 SETTABLEKS                       R5 R6 K4 ["themeChangedConnection"]
       28 GETUPVAL                         R7 4
       29 MOVE                             R8 R6
       30 CALL                             R7 1 1
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          REF R4
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R8 R7 K7 ["changeTheme"]
       36 CLOSEUPVALS                      R4
       37 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Style"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["Style"]
       13 GETTABLEKS                       R3 R4 K7 ["Themes"]
       15 GETTABLEKS                       R2 R3 K8 ["DarkTheme"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R5 R0 K2 ["Style"]
       22 GETTABLEKS                       R4 R5 K7 ["Themes"]
       24 GETTABLEKS                       R3 R4 K9 ["LightTheme"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R5 R0 K2 ["Style"]
       31 GETTABLEKS                       R4 R5 K10 ["createDefaultTheme"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R6 R0 K4 ["Parent"]
       38 GETTABLEKS                       R5 R6 K11 ["Dash"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Util"]
       45 GETTABLEKS                       R6 R7 K13 ["Signal"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R4 K14 ["join"]
       50 GETIMPORT                        R7 K6 [require]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R9 R10 K4 ["Parent"]
       56 GETTABLEKS                       R8 R9 K15 ["StudioTheme_stubbed"]
       58 CALL                             R7 1 1
       59 DUPCLOSURE                       R8 K16 [PROTO_2]
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R8 R7 K17 ["new"]
       67 RETURN                           R7 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETTABLEKS                       R2 R0 K0 ["Theme"]
        5 GETTABLEKS                       R1 R2 K1 ["Name"]
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["DEFAULT_STUDIO_THEME_NAME"]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETGLOBAL                        R1 K0 ["getStudioThemeNameOrDefault"]
        3 CALL                             R1 0 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETGLOBAL                        R2 K1 ["getStudioThemeNameOrDefault"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+13]
        9 GETTABLEKS                       R4 R3 K2 ["ThemeChanged"]
       11 JUMPIFNOT                        R4 ; [+10]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["useEventConnection"]
       15 GETTABLEKS                       R5 R3 K2 ["ThemeChanged"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 NEWTABLE                         R7 0 0
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R5 R6 K4 ["Provider"]
       26 DUPTABLE                         R6 K6 [{"value"}]
       27 SETTABLEKS                       R1 R6 K5 ["value"]
       29 GETTABLEKS                       R7 R0 K7 ["children"]
       31 CALL                             R4 3 -1
       32 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R5 K1 [script]
       13 GETTABLEKS                       R4 R5 K4 ["Parent"]
       15 GETTABLEKS                       R3 R4 K7 ["ThemeContext"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K8 ["Util"]
       22 GETTABLEKS                       R4 R5 K9 ["getStudioSettings"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K11 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["ReactUtils"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K13 ["SharedPluginConstants"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R5 K14 ["createElement"]
       47 DUPCLOSURE                       R9 K15 [PROTO_0]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R7
       50 SETGLOBAL                        R9 K16 ["getStudioThemeNameOrDefault"]
       52 DUPCLOSURE                       R9 K17 [PROTO_2]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R2
       58 RETURN                           R9 1

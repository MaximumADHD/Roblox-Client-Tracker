PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["Color3"] ; [+30]
       13 GETUPVAL                         R7 0
       14 MOVE                             R8 R6
       15 CALL                             R7 1 3
       16 GETUPVAL                         R10 1
       17 JUMPIFNOT                        R10 ; [+22]
       18 JUMPIFEQ                         R6 R7 ; [+21]
       20 GETIMPORT                        R10 K4 [warn]
       22 LOADK                            R11 K5 ["[DebugDeveloperFrameworkSdk] Theme override %s: (%s) replaced with the closest color system color %s[%s]: (%s)"]
       23 FASTCALL1                        TOSTRING R5 ; [+3]
       24 MOVE                             R14 R5
       25 GETIMPORT                        R13 K7 [tostring]
       27 CALL                             R13 1 1
       28 NAMECALL                         R14 R6 K8 ["ToHex"]
       30 CALL                             R14 1 1
       31 MOVE                             R15 R8
       32 MOVE                             R16 R9
       33 NAMECALL                         R17 R7 K8 ["ToHex"]
       35 CALL                             R17 1 -1
       36 NAMECALL                         R11 R11 K9 ["format"]
       38 CALL                             R11 -1 -1
       39 CALL                             R10 -1 0
       40 SETTABLE                         R7 R1 R5
       41 JUMP                             ; [+1]
       42 SETTABLE                         R6 R1 R5
       43 FORGLOOP                         R2 2 ; [-38]
       45 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K1 ["join"]
        7 GETUPVAL                         R4 0
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R0
       10 CALL                             R5 1 1
       11 CALL                             R3 2 1
       12 MOVE                             R2 R3
       13 GETUPVAL                         R3 3
       14 JUMPIFNOT                        R1 ; [+11]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K0 ["Dictionary"]
       18 GETTABLEKS                       R4 R4 K1 ["join"]
       20 GETUPVAL                         R5 3
       21 GETUPVAL                         R6 2
       22 MOVE                             R7 R1
       23 CALL                             R6 1 1
       24 CALL                             R4 2 1
       25 MOVE                             R3 R4
       26 GETUPVAL                         R4 4
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+3]
       29 GETTABLEKS                       R5 R4 K2 ["ThemeChanged"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 DUPTABLE                         R6 K6 [{"getThemeName", "themesList", "themeChangedConnection"}]
       34 GETUPVAL                         R7 5
       35 SETTABLEKS                       R7 R6 K3 ["getThemeName"]
       37 NEWTABLE                         R7 2 0
       39 SETTABLEKS                       R2 R7 K7 ["Dark"]
       41 SETTABLEKS                       R3 R7 K8 ["Light"]
       43 SETTABLEKS                       R7 R6 K4 ["themesList"]
       45 SETTABLEKS                       R5 R6 K5 ["themeChangedConnection"]
       47 GETUPVAL                         R7 6
       48 MOVE                             R8 R6
       49 CALL                             R7 1 -1
       50 RETURN                           R7 -1

PROTO_2:
        0 LOADK                            R0 K0 ["Dark"]
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        5 GETTABLEKS                       R2 R2 K1 ["join"]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 2
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 CALL                             R2 2 1
       12 MOVE                             R1 R2
       13 DUPTABLE                         R2 K4 [{"getThemeName", "themesList"}]
       14 DUPCLOSURE                       R3 K5 [PROTO_2]
       15 SETTABLEKS                       R3 R2 K2 ["getThemeName"]
       17 DUPTABLE                         R3 K7 [{"Dark"}]
       18 SETTABLEKS                       R1 R3 K6 ["Dark"]
       20 SETTABLEKS                       R3 R2 K3 ["themesList"]
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R2
       24 CALL                             R3 1 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Style"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["Style"]
       13 GETTABLEKS                       R2 R2 K7 ["Themes"]
       15 GETTABLEKS                       R2 R2 K8 ["DarkTheme"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K2 ["Style"]
       22 GETTABLEKS                       R3 R3 K7 ["Themes"]
       24 GETTABLEKS                       R3 R3 K9 ["LightTheme"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K2 ["Style"]
       31 GETTABLEKS                       R4 R4 K10 ["createDefaultTheme"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K4 ["Parent"]
       38 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Util"]
       45 GETTABLEKS                       R6 R6 K13 ["getStudioSettings"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K2 ["Style"]
       52 GETTABLEKS                       R7 R7 K14 ["getClosestColorSystemColor"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K6 [require]
       57 GETTABLEKS                       R8 R0 K2 ["Style"]
       59 GETTABLEKS                       R8 R8 K15 ["getStudioThemeNameOrDefault"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K17 [game]
       64 LOADK                            R10 K18 ["DebugDeveloperFrameworkSdk"]
       65 NAMECALL                         R8 R8 K19 ["GetFastFlag"]
       67 CALL                             R8 2 1
       68 NEWTABLE                         R9 2 0
       70 DUPCLOSURE                       R10 K20 [PROTO_0]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R8
       73 DUPCLOSURE                       R11 K21 [PROTO_1]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R11 R9 K22 ["new"]
       83 DUPCLOSURE                       R11 K23 [PROTO_3]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R11 R9 K24 ["mock"]
       90 RETURN                           R9 1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{["userId"] = 24813339, ["key"], ["userPresence"], ["size"], ["background"]}]
        5 SETTABLEKS                       R0 R3 K3 ["key"]
        7 GETUPVAL                         R4 2
        8 SETTABLEKS                       R4 R3 K4 ["userPresence"]
       10 SETTABLEKS                       R0 R3 K5 ["size"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K8 ["Color"]
       15 GETTABLEKS                       R4 R4 K9 ["Shift"]
       17 GETTABLEKS                       R4 R4 K10 ["Shift_200"]
       19 SETTABLEKS                       R4 R3 K6 ["background"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "auto-xy col gap-large"}]
        5 DUPTABLE                         R4 K6 [{"Header", "Avatars"}]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K0 ["createElement"]
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R7 K9 [{["Text"], ["tag"] = "text-caption-medium content-default align-x-left auto-xy size-0-0"}]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R9 R0
       13 GETIMPORT                        R8 K11 [tostring]
       15 CALL                             R8 1 1
       16 SETTABLEKS                       R8 R7 K7 ["Text"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K4 ["Header"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["createElement"]
       24 GETUPVAL                         R6 1
       25 DUPTABLE                         R7 K13 [{["tag"] = "auto-xy row gap-xxlarge"}]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K14 ["map"]
       29 NEWTABLE                         R9 0 4
       31 GETUPVAL                         R10 4
       32 GETTABLEKS                       R10 R10 K15 ["XSmall"]
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K16 ["Small"]
       37 GETUPVAL                         R12 4
       38 GETTABLEKS                       R12 R12 K17 ["Medium"]
       40 GETUPVAL                         R13 4
       41 GETTABLEKS                       R13 R13 K18 ["Large"]
       43 SETLIST                          R9 R10 4 [1]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U6
       50 CALL                             R8 2 -1
       51 CALL                             R5 -1 1
       52 SETTABLEKS                       R5 R4 K5 ["Avatars"]
       54 CALL                             R1 3 -1
       55 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K3 [{["tag"] = "auto-xy col gap-medium"}]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K4 ["map"]
       10 GETUPVAL                         R5 4
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          VAL R0
       19 CALL                             R4 2 -1
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Avatar"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Enums"]
       44 GETTABLEKS                       R8 R8 K14 ["InputSize"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K13 ["Enums"]
       51 GETTABLEKS                       R9 R9 K15 ["UserPresence"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R0 K16 ["Providers"]
       58 GETTABLEKS                       R10 R10 K17 ["Style"]
       60 GETTABLEKS                       R10 R10 K18 ["useTokens"]
       62 CALL                             R9 1 1
       63 DUPTABLE                         R10 K21 [{["summary"] = "Avatar", ["stories"]}]
       64 NEWTABLE                         R11 0 1
       66 DUPTABLE                         R12 K25 [{["name"] = "Base", ["story"]}]
       67 DUPCLOSURE                       R13 K26 [PROTO_2]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R13 R12 K24 ["story"]
       78 SETLIST                          R11 R12 1 [1]
       80 SETTABLEKS                       R11 R10 K20 ["stories"]
       82 RETURN                           R10 1

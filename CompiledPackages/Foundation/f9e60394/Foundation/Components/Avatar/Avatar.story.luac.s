PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"userId", "key", "userPresence", "size", "background"}]
        5 LOADK                            R4 K7 [24813339]
        6 SETTABLEKS                       R4 R3 K1 ["userId"]
        8 SETTABLEKS                       R0 R3 K2 ["key"]
       10 GETUPVAL                         R4 2
       11 SETTABLEKS                       R4 R3 K3 ["userPresence"]
       13 SETTABLEKS                       R0 R3 K4 ["size"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K8 ["Color"]
       18 GETTABLEKS                       R4 R4 K9 ["Shift"]
       20 GETTABLEKS                       R4 R4 K10 ["Shift_200"]
       22 SETTABLEKS                       R4 R3 K5 ["background"]
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["col gap-large auto-xy"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K6 [{"Header", "Avatars"}]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K8 [{"Text", "tag"}]
       14 FASTCALL1                        TOSTRING R0 ; [+3]
       15 MOVE                             R9 R0
       16 GETIMPORT                        R8 K10 [tostring]
       18 CALL                             R8 1 1
       19 SETTABLEKS                       R8 R7 K7 ["Text"]
       21 LOADK                            R8 K11 ["align-x-left size-0-0 auto-xy text-caption-medium content-default"]
       22 SETTABLEKS                       R8 R7 K1 ["tag"]
       24 CALL                             R5 2 1
       25 SETTABLEKS                       R5 R4 K4 ["Header"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["createElement"]
       30 GETUPVAL                         R6 1
       31 DUPTABLE                         R7 K2 [{"tag"}]
       32 LOADK                            R8 K12 ["row gap-xxlarge auto-xy"]
       33 SETTABLEKS                       R8 R7 K1 ["tag"]
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R8 R8 K13 ["map"]
       38 NEWTABLE                         R9 0 4
       40 GETUPVAL                         R10 4
       41 GETTABLEKS                       R10 R10 K14 ["XSmall"]
       43 GETUPVAL                         R11 4
       44 GETTABLEKS                       R11 R11 K15 ["Small"]
       46 GETUPVAL                         R12 4
       47 GETTABLEKS                       R12 R12 K16 ["Medium"]
       49 GETUPVAL                         R13 4
       50 GETTABLEKS                       R13 R13 K17 ["Large"]
       52 SETLIST                          R9 R10 4 [1]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R0
       58 CAPTURE                          UPVAL U6
       59 CALL                             R8 2 -1
       60 CALL                             R5 -1 1
       61 SETTABLEKS                       R5 R4 K5 ["Avatars"]
       63 CALL                             R1 3 -1
       64 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K2 [{"tag"}]
        7 LOADK                            R4 K3 ["col gap-medium auto-xy"]
        8 SETTABLEKS                       R4 R3 K1 ["tag"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K4 ["map"]
       13 GETUPVAL                         R5 4
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U6
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          VAL R0
       22 CALL                             R4 2 -1
       23 CALL                             R1 -1 -1
       24 RETURN                           R1 -1

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
       63 DUPTABLE                         R10 K21 [{"summary", "stories"}]
       64 LOADK                            R11 K10 ["Avatar"]
       65 SETTABLEKS                       R11 R10 K19 ["summary"]
       67 NEWTABLE                         R11 0 1
       69 DUPTABLE                         R12 K24 [{"name", "story"}]
       70 LOADK                            R13 K25 ["Base"]
       71 SETTABLEKS                       R13 R12 K22 ["name"]
       73 DUPCLOSURE                       R13 K26 [PROTO_2]
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R13 R12 K23 ["story"]
       84 SETLIST                          R11 R12 1 [1]
       86 SETTABLEKS                       R11 R10 K20 ["stories"]
       88 RETURN                           R10 1

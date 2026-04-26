PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K7 [{"isDisabled", "onActivated", "size", "icon", "isCircular"}]
        7 LOADB                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["isDisabled"]
       10 DUPCLOSURE                       R5 K8 [PROTO_0]
       11 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       13 GETTABLEKS                       R5 R1 K4 ["size"]
       15 SETTABLEKS                       R5 R4 K4 ["size"]
       17 GETTABLEKS                       R5 R1 K9 ["name"]
       19 SETTABLEKS                       R5 R4 K5 ["icon"]
       21 GETTABLEKS                       R5 R1 K6 ["isCircular"]
       23 SETTABLEKS                       R5 R4 K6 ["isCircular"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"controls"}]
        2 DUPTABLE                         R3 K5 [{"size", "name", "isCircular"}]
        3 SETTABLEKS                       R0 R3 K2 ["size"]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K0 ["controls"]
        8 GETTABLEKS                       R4 R5 K3 ["name"]
       10 SETTABLEKS                       R4 R3 K3 ["name"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K0 ["controls"]
       15 GETTABLEKS                       R4 R5 K4 ["isCircular"]
       17 SETTABLEKS                       R4 R3 K4 ["isCircular"]
       19 SETTABLEKS                       R3 R2 K0 ["controls"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["row align-y-center gap-medium size-full-0 auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R4 R5 K4 ["map"]
       11 GETUPVAL                         R5 3
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          VAL R0
       15 CALL                             R4 2 -1
       16 CALL                             R1 -1 -1
       17 RETURN                           R1 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["IconButton"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R7 K12 ["IconSize"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K13 ["View"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R8 0 5
       45 GETTABLEKS                       R9 R5 K15 ["Small"]
       47 GETTABLEKS                       R10 R5 K16 ["Medium"]
       49 GETTABLEKS                       R11 R5 K17 ["Large"]
       51 GETTABLEKS                       R12 R5 K18 ["XLarge"]
       53 GETTABLEKS                       R13 R5 K19 ["XXLarge"]
       55 SETLIST                          R8 R9 5 [1]
       57 DUPTABLE                         R9 K23 [{"summary", "story", "controls"}]
       58 LOADK                            R10 K24 ["Icon component for displaying icons"]
       59 SETTABLEKS                       R10 R9 K20 ["summary"]
       61 DUPCLOSURE                       R10 K25 [PROTO_3]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R10 R9 K21 ["story"]
       69 DUPTABLE                         R10 K28 [{"name", "isCircular"}]
       70 NEWTABLE                         R11 0 5
       72 LOADK                            R12 K29 ["icons/common/notificationOff"]
       73 LOADK                            R13 K30 ["icons/common/robux"]
       74 LOADK                            R14 K31 ["icons/common/search_small"]
       75 LOADK                            R15 K32 ["icons/controls/voice/microphone_off_light"]
       76 LOADK                            R16 K33 ["icons/controls/voice/video_on_light"]
       77 SETLIST                          R11 R12 5 [1]
       79 SETTABLEKS                       R11 R10 K26 ["name"]
       81 LOADB                            R11 0
       82 SETTABLEKS                       R11 R10 K27 ["isCircular"]
       84 SETTABLEKS                       R10 R9 K22 ["controls"]
       86 RETURN                           R9 1

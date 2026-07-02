PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K8 [{["isDisabled"] = False, ["onActivated"], ["size"], ["icon"], ["isCircular"]}]
        7 DUPCLOSURE                       R5 K9 [PROTO_0]
        8 SETTABLEKS                       R5 R4 K4 ["onActivated"]
       10 GETTABLEKS                       R5 R1 K5 ["size"]
       12 SETTABLEKS                       R5 R4 K5 ["size"]
       14 GETTABLEKS                       R5 R1 K10 ["name"]
       16 SETTABLEKS                       R5 R4 K6 ["icon"]
       18 GETTABLEKS                       R5 R1 K7 ["isCircular"]
       20 SETTABLEKS                       R5 R4 K7 ["isCircular"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"controls"}]
        2 DUPTABLE                         R3 K5 [{"size", "name", "isCircular"}]
        3 SETTABLEKS                       R0 R3 K2 ["size"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K0 ["controls"]
        8 GETTABLEKS                       R4 R4 K3 ["name"]
       10 SETTABLEKS                       R4 R3 K3 ["name"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K0 ["controls"]
       15 GETTABLEKS                       R4 R4 K4 ["isCircular"]
       17 SETTABLEKS                       R4 R3 K4 ["isCircular"]
       19 SETTABLEKS                       R3 R2 K0 ["controls"]
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{["tag"] = "row gap-medium auto-y size-full-0 align-y-center"}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K4 ["map"]
        8 GETUPVAL                         R5 3
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CALL                             R4 2 -1
       13 CALL                             R1 -1 -1
       14 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["View"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["IconButton"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K12 ["Enums"]
       37 GETTABLEKS                       R7 R7 K13 ["IconSize"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 NEWTABLE                         R8 0 5
       45 GETTABLEKS                       R9 R6 K15 ["Small"]
       47 GETTABLEKS                       R10 R6 K16 ["Medium"]
       49 GETTABLEKS                       R11 R6 K17 ["Large"]
       51 GETTABLEKS                       R12 R6 K18 ["XLarge"]
       53 GETTABLEKS                       R13 R6 K19 ["XXLarge"]
       55 SETLIST                          R8 R9 5 [1]
       57 DUPTABLE                         R9 K24 [{["summary"] = "Icon component for displaying icons", ["story"], ["controls"]}]
       58 DUPCLOSURE                       R10 K25 [PROTO_3]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R10 R9 K22 ["story"]
       66 DUPTABLE                         R10 K29 [{["name"], ["isCircular"] = False}]
       67 NEWTABLE                         R11 0 5
       69 LOADK                            R12 K30 ["icons/common/notificationOff"]
       70 LOADK                            R13 K31 ["icons/common/robux"]
       71 LOADK                            R14 K32 ["icons/common/search_small"]
       72 LOADK                            R15 K33 ["icons/controls/voice/microphone_off_light"]
       73 LOADK                            R16 K34 ["icons/controls/voice/video_on_light"]
       74 SETLIST                          R11 R12 5 [1]
       76 SETTABLEKS                       R11 R10 K26 ["name"]
       78 SETTABLEKS                       R10 R9 K23 ["controls"]
       80 RETURN                           R9 1

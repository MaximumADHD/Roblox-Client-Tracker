PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["userId"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Member"]
        2 GETTABLEKS                       R2 R0 K1 ["OnRemoved"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K6 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-medium size-full-0 auto-y padding-small radius-medium"}]
        9 GETTABLEKS                       R6 R0 K3 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K3 ["LayoutOrder"]
       13 DUPTABLE                         R6 K10 [{"Avatar", "Text", "RemoveButton"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K14 [{["LayoutOrder"] = 1, ["Id"], ["Size"]}]
       19 GETTABLEKS                       R10 R1 K15 ["userId"]
       21 SETTABLEKS                       R10 R9 K12 ["Id"]
       23 GETUPVAL                         R10 3
       24 SETTABLEKS                       R10 R9 K13 ["Size"]
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K7 ["Avatar"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 GETUPVAL                         R8 1
       33 DUPTABLE                         R9 K18 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y"}]
       34 DUPTABLE                         R10 K20 [{"Username"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K2 ["createElement"]
       38 GETUPVAL                         R12 4
       39 DUPTABLE                         R13 K22 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-medium content-default", ["Text"]}]
       40 GETTABLEKS                       R14 R1 K23 ["username"]
       42 SETTABLEKS                       R14 R13 K8 ["Text"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K19 ["Username"]
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K8 ["Text"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K2 ["createElement"]
       53 GETUPVAL                         R8 5
       54 DUPTABLE                         R9 K30 [{["LayoutOrder"] = 3, ["icon"] = "icons/navigation/close", ["size"] = "Small", ["onActivated"]}]
       55 NEWCLOSURE                       R10 P0
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 SETTABLEKS                       R10 R9 K29 ["onActivated"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K9 ["RemoveButton"]
       63 CALL                             R3 3 -1
       64 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["View"]
       27 GETTABLEKS                       R4 R2 K9 ["Text"]
       29 GETTABLEKS                       R5 R2 K10 ["IconButton"]
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R0 K11 ["Src"]
       35 GETTABLEKS                       R7 R7 K12 ["Components"]
       37 GETTABLEKS                       R7 R7 K13 ["Thumbnails"]
       39 GETTABLEKS                       R7 R7 K14 ["UserHeadshotThumbnail"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K17 [UDim2.fromOffset]
       44 LOADN                            R8 40
       45 LOADN                            R9 40
       46 CALL                             R7 2 1
       47 DUPCLOSURE                       R8 K18 [PROTO_1]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 RETURN                           R8 1

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
       13 DUPTABLE                         R6 K11 [{"Avatar", "Text", "CantInvite", "RemoveButton"}]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["createElement"]
       17 GETUPVAL                         R8 2
       18 DUPTABLE                         R9 K15 [{["LayoutOrder"] = 1, ["Id"], ["Size"]}]
       19 GETTABLEKS                       R10 R1 K16 ["userId"]
       21 SETTABLEKS                       R10 R9 K13 ["Id"]
       23 GETUPVAL                         R10 3
       24 SETTABLEKS                       R10 R9 K14 ["Size"]
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K7 ["Avatar"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["createElement"]
       32 GETUPVAL                         R8 1
       33 DUPTABLE                         R9 K19 [{["LayoutOrder"] = 2, ["tag"] = "col grow gap-xxsmall auto-y"}]
       34 DUPTABLE                         R10 K21 [{"Username"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K2 ["createElement"]
       38 GETUPVAL                         R12 4
       39 DUPTABLE                         R13 K23 [{["LayoutOrder"] = 2, ["tag"] = "auto-xy text-body-medium content-default", ["Text"]}]
       40 GETTABLEKS                       R14 R1 K24 ["username"]
       42 SETTABLEKS                       R14 R13 K8 ["Text"]
       44 CALL                             R11 2 1
       45 SETTABLEKS                       R11 R10 K20 ["Username"]
       47 CALL                             R7 3 1
       48 SETTABLEKS                       R7 R6 K8 ["Text"]
       50 GETTABLEKS                       R8 R0 K25 ["IsIneligible"]
       52 JUMPIFNOT                        R8 ; [+11]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K2 ["createElement"]
       56 GETUPVAL                         R8 5
       57 DUPTABLE                         R9 K28 [{["Localization"], ["LayoutOrder"] = 3}]
       58 GETTABLEKS                       R10 R0 K26 ["Localization"]
       60 SETTABLEKS                       R10 R9 K26 ["Localization"]
       62 CALL                             R7 2 1
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 SETTABLEKS                       R7 R6 K9 ["CantInvite"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K2 ["createElement"]
       70 GETUPVAL                         R8 6
       71 DUPTABLE                         R9 K35 [{["LayoutOrder"] = 4, ["icon"] = "icons/navigation/close", ["size"] = "Small", ["onActivated"]}]
       72 NEWCLOSURE                       R10 P0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R1
       75 SETTABLEKS                       R10 R9 K34 ["onActivated"]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K10 ["RemoveButton"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

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
       42 GETIMPORT                        R7 K4 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Src"]
       46 GETTABLEKS                       R8 R8 K12 ["Components"]
       48 GETTABLEKS                       R8 R8 K15 ["EarlyTesters"]
       50 GETTABLEKS                       R8 R8 K16 ["CantInviteLabel"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       55 LOADN                            R9 40
       56 LOADN                            R10 40
       57 CALL                             R8 2 1
       58 GETIMPORT                        R9 K4 [require]
       60 GETTABLEKS                       R10 R0 K11 ["Src"]
       62 GETTABLEKS                       R10 R10 K20 ["Types"]
       64 CALL                             R9 1 1
       65 DUPCLOSURE                       R10 K21 [PROTO_1]
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R5
       73 RETURN                           R10 1

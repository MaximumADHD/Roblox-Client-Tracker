PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["secondary activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Initialize"]
        8 CALL                             R1 1 2
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K2 ["createElement"]
       14 GETUPVAL                         R5 3
       15 DUPTABLE                         R6 K9 [{"Size", "BackgroundTransparency", "BackgroundColor3", "onStateChanged", "onActivated", "onSecondaryActivated"}]
       16 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       18 LOADN                            R8 100
       19 LOADN                            R9 100
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R6 K3 ["Size"]
       23 GETTABLEKS                       R7 R0 K13 ["Color"]
       25 GETTABLEKS                       R7 R7 K14 ["Extended"]
       27 GETTABLEKS                       R7 R7 K15 ["Green"]
       29 GETTABLEKS                       R7 R7 K16 ["Green_500"]
       31 GETTABLEKS                       R7 R7 K17 ["Transparency"]
       33 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       35 GETTABLEKS                       R7 R0 K13 ["Color"]
       37 GETTABLEKS                       R7 R7 K14 ["Extended"]
       39 GETTABLEKS                       R7 R7 K15 ["Green"]
       41 GETTABLEKS                       R7 R7 K16 ["Green_500"]
       43 GETTABLEKS                       R7 R7 K18 ["Color3"]
       45 SETTABLEKS                       R7 R6 K5 ["BackgroundColor3"]
       47 SETTABLEKS                       R3 R6 K6 ["onStateChanged"]
       49 DUPCLOSURE                       R7 K19 [PROTO_1]
       50 SETTABLEKS                       R7 R6 K7 ["onActivated"]
       52 DUPCLOSURE                       R7 K20 [PROTO_2]
       53 SETTABLEKS                       R7 R6 K8 ["onSecondaryActivated"]
       55 NEWTABLE                         R7 0 1
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R8 R8 K2 ["createElement"]
       60 GETUPVAL                         R9 4
       61 DUPTABLE                         R10 K24 [{"Text", "Position", "textStyle"}]
       62 DUPCLOSURE                       R13 K25 [PROTO_3]
       63 NAMECALL                         R11 R1 K26 ["map"]
       65 CALL                             R11 2 1
       66 SETTABLEKS                       R11 R10 K21 ["Text"]
       68 GETIMPORT                        R11 K28 [UDim2.fromScale]
       70 LOADK                            R12 K29 [0.5]
       71 LOADK                            R13 K29 [0.5]
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K22 ["Position"]
       75 GETTABLEKS                       R11 R0 K13 ["Color"]
       77 GETTABLEKS                       R11 R11 K30 ["Content"]
       79 GETTABLEKS                       R11 R11 K31 ["Emphasis"]
       81 SETTABLEKS                       R11 R10 K23 ["textStyle"]
       83 CALL                             R8 2 -1
       84 SETLIST                          R7 R8 -1 [1]
       86 CALL                             R4 3 -1
       87 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["ControlState"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Components"]
       20 GETTABLEKS                       R4 R4 K10 ["Interactable"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K9 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Providers"]
       39 GETTABLEKS                       R7 R7 K14 ["Style"]
       41 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K16 [PROTO_4]
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 DUPTABLE                         R8 K20 [{["summary"] = "View", ["stories"]}]
       51 DUPTABLE                         R9 K22 [{"BasicStory"}]
       52 DUPTABLE                         R10 K26 [{["name"] = "GUI State Use", ["story"]}]
       53 SETTABLEKS                       R7 R10 K25 ["story"]
       55 SETTABLEKS                       R10 R9 K21 ["BasicStory"]
       57 SETTABLEKS                       R9 R8 K19 ["stories"]
       59 RETURN                           R8 1

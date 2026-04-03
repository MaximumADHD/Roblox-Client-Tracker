PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["DraggerContext"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETTABLEKS                       R5 R1 K2 ["Hovered"]
        8 JUMPIFNOT                        R5 ; [+8]
        9 LOADK                            R3 K3 ["rbxasset://Textures/PivotEditor/HoveredPivot.png"]
       10 GETTABLEKS                       R7 R1 K4 ["IsActive"]
       12 NAMECALL                         R5 R2 K5 ["getSelectionBoxColor"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 JUMP                             ; [+4]
       17 LOADK                            R3 K6 ["rbxasset://Textures/PivotEditor/SelectedPivot.png"]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K7 ["WHITE"]
       21 GETTABLEKS                       R7 R1 K8 ["Position"]
       23 NAMECALL                         R5 R2 K9 ["worldToViewportPoint"]
       25 CALL                             R5 2 2
       26 JUMPIFNOT                        R6 ; [+69]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K10 ["createElement"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K11 ["Portal"]
       33 DUPTABLE                         R9 K13 [{"target"}]
       34 NAMECALL                         R10 R2 K14 ["getGuiParent"]
       36 CALL                             R10 1 1
       37 SETTABLEKS                       R10 R9 K12 ["target"]
       39 DUPTABLE                         R10 K16 [{"PivotHoverHighlight"}]
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R11 R12 K10 ["createElement"]
       43 LOADK                            R12 K17 ["ScreenGui"]
       44 NEWTABLE                         R13 0 0
       46 DUPTABLE                         R14 K19 [{"PivotHoverImage"}]
       47 GETUPVAL                         R16 1
       48 GETTABLEKS                       R15 R16 K10 ["createElement"]
       50 LOADK                            R16 K20 ["ImageLabel"]
       51 DUPTABLE                         R17 K26 [{"Image", "ImageColor3", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       52 SETTABLEKS                       R3 R17 K21 ["Image"]
       54 SETTABLEKS                       R4 R17 K22 ["ImageColor3"]
       56 GETIMPORT                        R18 K29 [UDim2.new]
       58 LOADN                            R19 0
       59 LOADN                            R20 32
       60 LOADN                            R21 0
       61 LOADN                            R22 32
       62 CALL                             R18 4 1
       63 SETTABLEKS                       R18 R17 K23 ["Size"]
       65 GETIMPORT                        R18 K31 [Vector2.new]
       67 LOADK                            R19 K32 [0.5]
       68 LOADK                            R20 K32 [0.5]
       69 CALL                             R18 2 1
       70 SETTABLEKS                       R18 R17 K24 ["AnchorPoint"]
       72 GETIMPORT                        R18 K29 [UDim2.new]
       74 LOADN                            R19 0
       75 GETTABLEKS                       R21 R5 K33 ["X"]
       77 ADDK                             R20 R21 K32 [0.5]
       78 LOADN                            R21 0
       79 GETTABLEKS                       R23 R5 K34 ["Y"]
       81 ADDK                             R22 R23 K32 [0.5]
       82 CALL                             R18 4 1
       83 SETTABLEKS                       R18 R17 K8 ["Position"]
       85 LOADN                            R18 1
       86 SETTABLEKS                       R18 R17 K25 ["BackgroundTransparency"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K18 ["PivotHoverImage"]
       91 CALL                             R11 3 1
       92 SETTABLEKS                       R11 R10 K15 ["PivotHoverHighlight"]
       94 CALL                             R7 3 -1
       95 RETURN                           R7 -1
       96 LOADNIL                          R7
       97 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R5 R0 K7 ["Utility"]
       22 GETTABLEKS                       R4 R5 K8 ["Colors"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R2 K9 ["Component"]
       27 LOADK                            R6 K10 ["PivotRing"]
       28 NAMECALL                         R4 R4 K11 ["extend"]
       30 CALL                             R4 2 1
       31 LOADN                            R5 15
       32 SETTABLEKS                       R5 R4 K12 ["HitTestRadius"]
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 SETTABLEKS                       R5 R4 K14 ["render"]
       39 RETURN                           R4 1

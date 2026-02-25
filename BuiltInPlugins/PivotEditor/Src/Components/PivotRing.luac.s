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
       21 GETTABLEKS                       R8 R1 K8 ["Pivot"]
       23 GETTABLEKS                       R7 R8 K9 ["Position"]
       25 NAMECALL                         R5 R2 K10 ["worldToViewportPoint"]
       27 CALL                             R5 2 2
       28 JUMPIFNOT                        R6 ; [+69]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K11 ["createElement"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K12 ["Portal"]
       35 DUPTABLE                         R9 K14 [{"target"}]
       36 NAMECALL                         R10 R2 K15 ["getGuiParent"]
       38 CALL                             R10 1 1
       39 SETTABLEKS                       R10 R9 K13 ["target"]
       41 DUPTABLE                         R10 K17 [{"PivotHoverHighlight"}]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R11 R12 K11 ["createElement"]
       45 LOADK                            R12 K18 ["ScreenGui"]
       46 NEWTABLE                         R13 0 0
       48 DUPTABLE                         R14 K20 [{"PivotHoverImage"}]
       49 GETUPVAL                         R16 1
       50 GETTABLEKS                       R15 R16 K11 ["createElement"]
       52 LOADK                            R16 K21 ["ImageLabel"]
       53 DUPTABLE                         R17 K27 [{"Image", "ImageColor3", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
       54 SETTABLEKS                       R3 R17 K22 ["Image"]
       56 SETTABLEKS                       R4 R17 K23 ["ImageColor3"]
       58 GETIMPORT                        R18 K30 [UDim2.new]
       60 LOADN                            R19 0
       61 LOADN                            R20 32
       62 LOADN                            R21 0
       63 LOADN                            R22 32
       64 CALL                             R18 4 1
       65 SETTABLEKS                       R18 R17 K24 ["Size"]
       67 GETIMPORT                        R18 K32 [Vector2.new]
       69 LOADK                            R19 K33 [0.5]
       70 LOADK                            R20 K33 [0.5]
       71 CALL                             R18 2 1
       72 SETTABLEKS                       R18 R17 K25 ["AnchorPoint"]
       74 GETIMPORT                        R18 K30 [UDim2.new]
       76 LOADN                            R19 0
       77 GETTABLEKS                       R21 R5 K34 ["X"]
       79 ADDK                             R20 R21 K33 [0.5]
       80 LOADN                            R21 0
       81 GETTABLEKS                       R23 R5 K35 ["Y"]
       83 ADDK                             R22 R23 K33 [0.5]
       84 CALL                             R18 4 1
       85 SETTABLEKS                       R18 R17 K9 ["Position"]
       87 LOADN                            R18 1
       88 SETTABLEKS                       R18 R17 K26 ["BackgroundTransparency"]
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K19 ["PivotHoverImage"]
       93 CALL                             R11 3 1
       94 SETTABLEKS                       R11 R10 K16 ["PivotHoverHighlight"]
       96 CALL                             R7 3 -1
       97 RETURN                           R7 -1
       98 LOADNIL                          R7
       99 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R6 R0 K5 ["Packages"]
       20 GETTABLEKS                       R5 R6 K7 ["DraggerFramework"]
       22 GETTABLEKS                       R4 R5 K8 ["Utility"]
       24 GETTABLEKS                       R3 R4 K9 ["Colors"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K10 ["Component"]
       29 LOADK                            R5 K11 ["PivotRing"]
       30 NAMECALL                         R3 R3 K12 ["extend"]
       32 CALL                             R3 2 1
       33 LOADN                            R4 15
       34 SETTABLEKS                       R4 R3 K13 ["HitTestRadius"]
       36 DUPCLOSURE                       R4 K14 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R4 R3 K15 ["render"]
       41 RETURN                           R3 1

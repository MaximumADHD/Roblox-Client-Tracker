PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["scrollBarTheme"]
        6 GETTABLEKS                       R4 R1 K3 ["Rotation"]
        8 GETTABLEKS                       R5 R1 K4 ["Position"]
       10 GETTABLEKS                       R6 R1 K5 ["AnchorPoint"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["createElement"]
       15 LOADK                            R8 K7 ["ImageButton"]
       16 NEWTABLE                         R9 8 0
       18 GETIMPORT                        R10 K10 [UDim2.new]
       20 LOADN                            R11 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R12 R12 K11 ["SCROLL_BAR_SIZE"]
       24 LOADN                            R13 0
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R14 R14 K11 ["SCROLL_BAR_SIZE"]
       28 CALL                             R10 4 1
       29 SETTABLEKS                       R10 R9 K12 ["Size"]
       31 SETTABLEKS                       R5 R9 K4 ["Position"]
       33 SETTABLEKS                       R6 R9 K5 ["AnchorPoint"]
       35 LOADB                            R10 0
       36 SETTABLEKS                       R10 R9 K13 ["AutoButtonColor"]
       38 GETTABLEKS                       R10 R3 K14 ["controlColor"]
       40 SETTABLEKS                       R10 R9 K15 ["BackgroundColor3"]
       42 GETTABLEKS                       R10 R3 K16 ["borderColor"]
       44 SETTABLEKS                       R10 R9 K17 ["BorderColor3"]
       46 LOADN                            R10 1
       47 SETTABLEKS                       R10 R9 K18 ["ImageTransparency"]
       49 GETUPVAL                         R10 0
       50 GETTABLEKS                       R10 R10 K19 ["Event"]
       52 GETTABLEKS                       R10 R10 K20 ["Activated"]
       54 GETTABLEKS                       R11 R1 K21 ["OnActivated"]
       56 SETTABLE                         R11 R9 R10
       57 DUPTABLE                         R10 K23 [{"Arrow"}]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K6 ["createElement"]
       61 LOADK                            R12 K24 ["ImageLabel"]
       62 DUPTABLE                         R13 K28 [{"Size", "Rotation", "Position", "AnchorPoint", "Image", "ImageColor3", "BackgroundTransparency"}]
       63 GETUPVAL                         R14 2
       64 SETTABLEKS                       R14 R13 K12 ["Size"]
       66 SETTABLEKS                       R4 R13 K3 ["Rotation"]
       68 GETIMPORT                        R14 K10 [UDim2.new]
       70 LOADK                            R15 K29 [0.5]
       71 LOADN                            R16 0
       72 LOADK                            R17 K29 [0.5]
       73 LOADN                            R18 0
       74 CALL                             R14 4 1
       75 SETTABLEKS                       R14 R13 K4 ["Position"]
       77 GETIMPORT                        R14 K31 [Vector2.new]
       79 LOADK                            R15 K29 [0.5]
       80 LOADK                            R16 K29 [0.5]
       81 CALL                             R14 2 1
       82 SETTABLEKS                       R14 R13 K5 ["AnchorPoint"]
       84 GETTABLEKS                       R14 R3 K32 ["arrowImage"]
       86 SETTABLEKS                       R14 R13 K25 ["Image"]
       88 GETTABLEKS                       R14 R3 K33 ["imageColor"]
       90 SETTABLEKS                       R14 R13 K26 ["ImageColor3"]
       92 LOADN                            R14 1
       93 SETTABLEKS                       R14 R13 K27 ["BackgroundTransparency"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K22 ["Arrow"]
       98 CALL                             R7 3 -1
       99 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [UDim2.new]
        3 LOADN                            R1 0
        4 LOADN                            R2 9
        5 LOADN                            R3 0
        6 LOADN                            R4 5
        7 CALL                             R0 4 1
        8 GETIMPORT                        R1 K4 [script]
       10 LOADK                            R3 K5 ["AnimationClipEditor"]
       11 NAMECALL                         R1 R1 K6 ["FindFirstAncestor"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K8 [require]
       16 GETTABLEKS                       R3 R1 K9 ["Packages"]
       18 GETTABLEKS                       R3 R3 K10 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K11 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K12 ["withContext"]
       25 GETIMPORT                        R5 K8 [require]
       27 GETTABLEKS                       R6 R1 K9 ["Packages"]
       29 GETTABLEKS                       R6 R6 K13 ["Roact"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K8 [require]
       34 GETTABLEKS                       R7 R1 K14 ["Src"]
       36 GETTABLEKS                       R7 R7 K15 ["Util"]
       38 GETTABLEKS                       R7 R7 K16 ["Constants"]
       40 CALL                             R6 1 1
       41 GETTABLEKS                       R7 R5 K17 ["PureComponent"]
       43 LOADK                            R9 K18 ["ArrowButton"]
       44 NAMECALL                         R7 R7 K19 ["extend"]
       46 CALL                             R7 2 1
       47 DUPCLOSURE                       R8 K20 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R8 R7 K21 ["render"]
       53 MOVE                             R8 R4
       54 DUPTABLE                         R9 K23 [{"Stylizer"}]
       55 GETTABLEKS                       R10 R3 K22 ["Stylizer"]
       57 SETTABLEKS                       R10 R9 K22 ["Stylizer"]
       59 CALL                             R8 1 1
       60 MOVE                             R9 R7
       61 CALL                             R8 1 1
       62 MOVE                             R7 R8
       63 RETURN                           R7 1

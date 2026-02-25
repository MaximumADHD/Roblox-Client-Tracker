PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R2 R0 K1 ["OnActivated"]
        4 DUPTABLE                         R3 K5 [{"Padding", "BackButton", "Separator"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K6 ["createElement"]
        8 LOADK                            R5 K7 ["UIPadding"]
        9 DUPTABLE                         R6 K9 [{"PaddingTop"}]
       10 GETIMPORT                        R7 K12 [UDim.new]
       12 LOADN                            R8 0
       13 LOADN                            R9 4
       14 CALL                             R7 2 1
       15 SETTABLEKS                       R7 R6 K8 ["PaddingTop"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["Padding"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K6 ["createElement"]
       23 LOADK                            R5 K13 ["ImageButton"]
       24 NEWTABLE                         R6 8 0
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K14 ["BackgroundTransparency"]
       29 LOADK                            R7 K15 ["rbxasset://textures/GameSettings/ArrowLeft.png"]
       30 SETTABLEKS                       R7 R6 K16 ["Image"]
       32 GETIMPORT                        R7 K18 [UDim2.new]
       34 LOADN                            R8 0
       35 LOADN                            R9 24
       36 LOADN                            R10 0
       37 LOADN                            R11 24
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K19 ["Size"]
       41 LOADN                            R7 90
       42 SETTABLEKS                       R7 R6 K20 ["Rotation"]
       44 LOADN                            R7 1
       45 SETTABLEKS                       R7 R6 K0 ["LayoutOrder"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K21 ["Event"]
       50 GETTABLEKS                       R7 R8 K22 ["Activated"]
       52 SETTABLE                         R2 R6 R7
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K3 ["BackButton"]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R4 R5 K6 ["createElement"]
       59 GETUPVAL                         R5 1
       60 DUPTABLE                         R6 K23 [{"LayoutOrder"}]
       61 LOADN                            R7 2
       62 SETTABLEKS                       R7 R6 K0 ["LayoutOrder"]
       64 CALL                             R4 2 1
       65 SETTABLEKS                       R4 R3 K4 ["Separator"]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R4 R5 K6 ["createElement"]
       70 GETUPVAL                         R5 2
       71 DUPTABLE                         R6 K28 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
       72 GETIMPORT                        R7 K31 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R7 R6 K24 ["AutomaticSize"]
       76 GETIMPORT                        R7 K33 [Enum.HorizontalAlignment.Left]
       78 SETTABLEKS                       R7 R6 K25 ["HorizontalAlignment"]
       80 SETTABLEKS                       R1 R6 K0 ["LayoutOrder"]
       82 GETIMPORT                        R7 K36 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R7 R6 K26 ["Layout"]
       86 GETIMPORT                        R7 K12 [UDim.new]
       88 LOADN                            R8 0
       89 LOADN                            R9 8
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K27 ["Spacing"]
       93 MOVE                             R7 R3
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Pane"]
       27 GETTABLEKS                       R5 R3 K10 ["Separator"]
       29 DUPCLOSURE                       R6 K11 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 RETURN                           R6 1

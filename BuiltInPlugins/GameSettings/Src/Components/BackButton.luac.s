PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["LayoutOrder"]
        2 GETTABLEKS                       R2 R0 K1 ["OnActivated"]
        4 DUPTABLE                         R3 K5 [{"Padding", "BackButton", "Separator"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K6 ["createElement"]
        8 LOADK                            R5 K7 ["UIPadding"]
        9 DUPTABLE                         R6 K9 [{"PaddingTop"}]
       10 GETIMPORT                        R7 K12 [UDim.new]
       12 LOADN                            R8 0
       13 LOADN                            R9 4
       14 CALL                             R7 2 1
       15 SETTABLEKS                       R7 R6 K8 ["PaddingTop"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K2 ["Padding"]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["createElement"]
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
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K21 ["Event"]
       50 GETTABLEKS                       R7 R7 K22 ["Activated"]
       52 SETTABLE                         R2 R6 R7
       53 CALL                             R4 2 1
       54 SETTABLEKS                       R4 R3 K3 ["BackButton"]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K6 ["createElement"]
       59 GETUPVAL                         R5 1
       60 DUPTABLE                         R6 K24 [{[1] = 2}]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K4 ["Separator"]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K6 ["createElement"]
       67 GETUPVAL                         R5 2
       68 DUPTABLE                         R6 K29 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "Layout", "Spacing"}]
       69 GETIMPORT                        R7 K32 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R7 R6 K25 ["AutomaticSize"]
       73 GETIMPORT                        R7 K34 [Enum.HorizontalAlignment.Left]
       75 SETTABLEKS                       R7 R6 K26 ["HorizontalAlignment"]
       77 SETTABLEKS                       R1 R6 K0 ["LayoutOrder"]
       79 GETIMPORT                        R7 K37 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R7 R6 K27 ["Layout"]
       83 GETIMPORT                        R7 K12 [UDim.new]
       85 LOADN                            R8 0
       86 LOADN                            R9 8
       87 CALL                             R7 2 1
       88 SETTABLEKS                       R7 R6 K28 ["Spacing"]
       90 MOVE                             R7 R3
       91 CALL                             R4 3 -1
       92 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Pane"]
       27 GETTABLEKS                       R5 R3 K10 ["Separator"]
       29 DUPCLOSURE                       R6 K11 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R4
       33 RETURN                           R6 1

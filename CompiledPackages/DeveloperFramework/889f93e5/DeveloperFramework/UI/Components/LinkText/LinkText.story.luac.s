PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"Style", "AutomaticSize", "Layout", "Spacing", "Padding"}]
        5 LOADK                            R3 K7 ["BorderBox"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 GETIMPORT                        R3 K10 [Enum.AutomaticSize.XY]
       10 SETTABLEKS                       R3 R2 K2 ["AutomaticSize"]
       12 GETIMPORT                        R3 K13 [Enum.FillDirection.Horizontal]
       14 SETTABLEKS                       R3 R2 K3 ["Layout"]
       16 GETIMPORT                        R3 K16 [UDim.new]
       18 LOADN                            R4 0
       19 LOADN                            R5 10
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K4 ["Spacing"]
       23 LOADN                            R3 5
       24 SETTABLEKS                       R3 R2 K5 ["Padding"]
       26 DUPTABLE                         R3 K20 [{"Link", "Link2", "Link3"}]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R4 R4 K0 ["createElement"]
       30 GETUPVAL                         R5 2
       31 DUPTABLE                         R6 K24 [{"Text", "LayoutOrder", "OnClick"}]
       32 LOADK                            R7 K25 ["Link 1"]
       33 SETTABLEKS                       R7 R6 K21 ["Text"]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       38 DUPCLOSURE                       R7 K26 [PROTO_0]
       39 SETTABLEKS                       R7 R6 K23 ["OnClick"]
       41 CALL                             R4 2 1
       42 SETTABLEKS                       R4 R3 K17 ["Link"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K0 ["createElement"]
       47 GETUPVAL                         R5 2
       48 DUPTABLE                         R6 K24 [{"Text", "LayoutOrder", "OnClick"}]
       49 LOADK                            R7 K27 ["Link 2 which is longer"]
       50 SETTABLEKS                       R7 R6 K21 ["Text"]
       52 LOADN                            R7 2
       53 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       55 DUPCLOSURE                       R7 K28 [PROTO_1]
       56 SETTABLEKS                       R7 R6 K23 ["OnClick"]
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K18 ["Link2"]
       61 GETUPVAL                         R4 0
       62 GETTABLEKS                       R4 R4 K0 ["createElement"]
       64 GETUPVAL                         R5 2
       65 DUPTABLE                         R6 K24 [{"Text", "LayoutOrder", "OnClick"}]
       66 LOADK                            R7 K29 ["Link 3"]
       67 SETTABLEKS                       R7 R6 K21 ["Text"]
       69 LOADN                            R7 3
       70 SETTABLEKS                       R7 R6 K22 ["LayoutOrder"]
       72 DUPCLOSURE                       R7 K30 [PROTO_2]
       73 SETTABLEKS                       R7 R6 K23 ["OnClick"]
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R3 K19 ["Link3"]
       78 CALL                             R0 3 -1
       79 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"Style", "Size", "Padding"}]
        5 LOADK                            R3 K5 ["BorderBox"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 GETIMPORT                        R3 K8 [UDim2.new]
       10 LOADN                            R4 1
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 LOADN                            R7 40
       14 CALL                             R3 4 1
       15 SETTABLEKS                       R3 R2 K2 ["Size"]
       17 LOADN                            R3 5
       18 SETTABLEKS                       R3 R2 K3 ["Padding"]
       20 DUPTABLE                         R3 K10 [{"Link"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["createElement"]
       24 GETUPVAL                         R5 2
       25 DUPTABLE                         R6 K14 [{"Text", "TextTruncate", "OnClick"}]
       26 LOADK                            R7 K15 ["Click Me! I get truncated when I am very long and go off the end of the screen, for example like this!"]
       27 SETTABLEKS                       R7 R6 K11 ["Text"]
       29 GETIMPORT                        R7 K18 [Enum.TextTruncate.AtEnd]
       31 SETTABLEKS                       R7 R6 K12 ["TextTruncate"]
       33 DUPCLOSURE                       R7 K19 [PROTO_4]
       34 SETTABLEKS                       R7 R6 K13 ["OnClick"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R3 K9 ["Link"]
       39 CALL                             R0 3 -1
       40 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K5 [{"Style", "Size", "AutomaticSize", "Padding"}]
        5 LOADK                            R3 K6 ["BorderBox"]
        6 SETTABLEKS                       R3 R2 K1 ["Style"]
        8 GETIMPORT                        R3 K9 [UDim2.new]
       10 LOADN                            R4 0
       11 LOADN                            R5 144
       12 LOADN                            R6 0
       13 LOADN                            R7 0
       14 CALL                             R3 4 1
       15 SETTABLEKS                       R3 R2 K2 ["Size"]
       17 GETIMPORT                        R3 K12 [Enum.AutomaticSize.XY]
       19 SETTABLEKS                       R3 R2 K3 ["AutomaticSize"]
       21 LOADN                            R3 5
       22 SETTABLEKS                       R3 R2 K4 ["Padding"]
       24 DUPTABLE                         R3 K14 [{"Link"}]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K0 ["createElement"]
       28 GETUPVAL                         R5 2
       29 DUPTABLE                         R6 K19 [{"Text", "TextWrapped", "TextXAlignment", "OnClick"}]
       30 LOADK                            R7 K20 ["Click Me! I get wrapped when I am very long and go on to the next line, for example like this!"]
       31 SETTABLEKS                       R7 R6 K15 ["Text"]
       33 LOADB                            R7 1
       34 SETTABLEKS                       R7 R6 K16 ["TextWrapped"]
       36 GETIMPORT                        R7 K22 [Enum.TextXAlignment.Left]
       38 SETTABLEKS                       R7 R6 K17 ["TextXAlignment"]
       40 DUPCLOSURE                       R7 K23 [PROTO_6]
       41 SETTABLEKS                       R7 R6 K18 ["OnClick"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K13 ["Link"]
       46 CALL                             R0 3 -1
       47 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["LinkText"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Pane"]
       33 CALL                             R3 1 1
       34 DUPTABLE                         R4 K12 [{"stories"}]
       35 DUPTABLE                         R5 K16 [{"Default", "Truncated", "Wrapped"}]
       36 DUPCLOSURE                       R6 K17 [PROTO_3]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R5 K13 ["Default"]
       42 DUPCLOSURE                       R6 K18 [PROTO_5]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R6 R5 K14 ["Truncated"]
       48 DUPCLOSURE                       R6 K19 [PROTO_7]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R6 R5 K15 ["Wrapped"]
       54 SETTABLEKS                       R5 R4 K11 ["stories"]
       56 RETURN                           R4 1

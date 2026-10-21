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
        4 DUPTABLE                         R2 K8 [{["Style"] = "BorderBox", ["AutomaticSize"], ["Layout"], ["Spacing"], ["Padding"] = 5}]
        5 GETIMPORT                        R3 K11 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R3 R2 K3 ["AutomaticSize"]
        9 GETIMPORT                        R3 K14 [Enum.FillDirection.Horizontal]
       11 SETTABLEKS                       R3 R2 K4 ["Layout"]
       13 GETIMPORT                        R3 K17 [UDim.new]
       15 LOADN                            R4 0
       16 LOADN                            R5 10
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K5 ["Spacing"]
       20 DUPTABLE                         R3 K21 [{"Link", "Link2", "Link3"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["createElement"]
       24 GETUPVAL                         R5 2
       25 DUPTABLE                         R6 K27 [{["Text"] = "Link 1", ["LayoutOrder"] = 1, ["OnClick"]}]
       26 DUPCLOSURE                       R7 K28 [PROTO_0]
       27 SETTABLEKS                       R7 R6 K26 ["OnClick"]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R3 K18 ["Link"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K0 ["createElement"]
       35 GETUPVAL                         R5 2
       36 DUPTABLE                         R6 K31 [{["Text"] = "Link 2 which is longer", ["LayoutOrder"] = 2, ["OnClick"]}]
       37 DUPCLOSURE                       R7 K32 [PROTO_1]
       38 SETTABLEKS                       R7 R6 K26 ["OnClick"]
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K19 ["Link2"]
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K0 ["createElement"]
       46 GETUPVAL                         R5 2
       47 DUPTABLE                         R6 K35 [{["Text"] = "Link 3", ["LayoutOrder"] = 3, ["OnClick"]}]
       48 DUPCLOSURE                       R7 K36 [PROTO_2]
       49 SETTABLEKS                       R7 R6 K26 ["OnClick"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K20 ["Link3"]
       54 CALL                             R0 3 -1
       55 RETURN                           R0 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["Style"] = "BorderBox", ["Size"], ["Padding"] = 5}]
        5 GETIMPORT                        R3 K9 [UDim2.new]
        7 LOADN                            R4 1
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 LOADN                            R7 40
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K3 ["Size"]
       14 DUPTABLE                         R3 K11 [{"Link"}]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["createElement"]
       18 GETUPVAL                         R5 2
       19 DUPTABLE                         R6 K16 [{["Text"] = "Click Me! I get truncated when I am very long and go off the end of the screen, for example like this!", ["TextTruncate"], ["OnClick"]}]
       20 GETIMPORT                        R7 K19 [Enum.TextTruncate.AtEnd]
       22 SETTABLEKS                       R7 R6 K14 ["TextTruncate"]
       24 DUPCLOSURE                       R7 K20 [PROTO_4]
       25 SETTABLEKS                       R7 R6 K15 ["OnClick"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K10 ["Link"]
       30 CALL                             R0 3 -1
       31 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["Style"] = "BorderBox", ["Size"], ["AutomaticSize"], ["Padding"] = 5}]
        5 GETIMPORT                        R3 K10 [UDim2.new]
        7 LOADN                            R4 0
        8 LOADN                            R5 400
        9 LOADN                            R6 0
       10 LOADN                            R7 0
       11 CALL                             R3 4 1
       12 SETTABLEKS                       R3 R2 K3 ["Size"]
       14 GETIMPORT                        R3 K13 [Enum.AutomaticSize.XY]
       16 SETTABLEKS                       R3 R2 K4 ["AutomaticSize"]
       18 DUPTABLE                         R3 K15 [{"Link"}]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["createElement"]
       22 GETUPVAL                         R5 2
       23 DUPTABLE                         R6 K22 [{["Text"] = "Click Me! I get wrapped when I am very long and go on to the next line, for example like this!", ["TextWrapped"] = True, ["TextXAlignment"], ["OnClick"]}]
       24 GETIMPORT                        R7 K24 [Enum.TextXAlignment.Left]
       26 SETTABLEKS                       R7 R6 K20 ["TextXAlignment"]
       28 DUPCLOSURE                       R7 K25 [PROTO_6]
       29 SETTABLEKS                       R7 R6 K21 ["OnClick"]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K14 ["Link"]
       34 CALL                             R0 3 -1
       35 RETURN                           R0 -1

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

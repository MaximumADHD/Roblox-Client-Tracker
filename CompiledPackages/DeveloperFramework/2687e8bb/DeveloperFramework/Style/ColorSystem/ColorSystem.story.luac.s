PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"Layout", "LayoutOrder", "Style", "Spacing", "Padding"}]
        5 GETIMPORT                        R5 K10 [Enum.FillDirection.Vertical]
        7 SETTABLEKS                       R5 R4 K1 ["Layout"]
        9 LOADK                            R7 K11 ["%d+"]
       10 NAMECALL                         R5 R0 K12 ["match"]
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K2 ["LayoutOrder"]
       15 LOADK                            R5 K13 ["BorderBox"]
       16 SETTABLEKS                       R5 R4 K3 ["Style"]
       18 LOADN                            R5 5
       19 SETTABLEKS                       R5 R4 K4 ["Spacing"]
       21 LOADN                            R5 5
       22 SETTABLEKS                       R5 R4 K5 ["Padding"]
       24 DUPTABLE                         R5 K17 [{"ColorSwatch", "ColorName", "HexCode"}]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R6 R7 K0 ["createElement"]
       28 LOADK                            R7 K18 ["Frame"]
       29 DUPTABLE                         R8 K21 [{"Size", "BackgroundColor3", "LayoutOrder"}]
       30 GETIMPORT                        R9 K24 [UDim2.fromOffset]
       32 LOADN                            R10 100
       33 LOADN                            R11 75
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K19 ["Size"]
       37 SETTABLEKS                       R1 R8 K20 ["BackgroundColor3"]
       39 LOADN                            R9 1
       40 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K14 ["ColorSwatch"]
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R6 R7 K0 ["createElement"]
       48 GETUPVAL                         R7 2
       49 DUPTABLE                         R8 K27 [{"Text", "AutomaticSize", "LayoutOrder"}]
       50 SETTABLEKS                       R0 R8 K25 ["Text"]
       52 GETIMPORT                        R9 K29 [Enum.AutomaticSize.XY]
       54 SETTABLEKS                       R9 R8 K26 ["AutomaticSize"]
       56 LOADN                            R9 2
       57 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K15 ["ColorName"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R6 R7 K0 ["createElement"]
       65 GETUPVAL                         R7 2
       66 DUPTABLE                         R8 K27 [{"Text", "AutomaticSize", "LayoutOrder"}]
       67 LOADK                            R9 K30 ["#%s"]
       68 NAMECALL                         R11 R1 K31 ["ToHex"]
       70 CALL                             R11 1 -1
       71 NAMECALL                         R9 R9 K32 ["format"]
       73 CALL                             R9 -1 1
       74 SETTABLEKS                       R9 R8 K25 ["Text"]
       76 GETIMPORT                        R9 K29 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R9 R8 K26 ["AutomaticSize"]
       80 LOADN                            R9 3
       81 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       83 CALL                             R6 2 1
       84 SETTABLEKS                       R6 R5 K16 ["HexCode"]
       86 CALL                             R2 3 -1
       87 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["createElement"]
        5 LOADK                            R4 K1 ["UIGridLayout"]
        6 DUPTABLE                         R5 K5 [{"SortOrder", "CellPadding", "CellSize"}]
        7 GETIMPORT                        R6 K8 [Enum.SortOrder.LayoutOrder]
        9 SETTABLEKS                       R6 R5 K2 ["SortOrder"]
       11 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       13 LOADN                            R7 5
       14 LOADN                            R8 5
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K3 ["CellPadding"]
       18 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       20 LOADN                            R7 200
       21 LOADN                            R8 200
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["CellSize"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R2 K12 ["Layout"]
       28 GETIMPORT                        R3 K14 [pairs]
       30 MOVE                             R4 R1
       31 CALL                             R3 1 3
       32 FORGPREP_NEXT                    R3
       33 MOVE                             R9 R2
       34 GETUPVAL                         R10 1
       35 MOVE                             R12 R0
       36 MOVE                             R13 R6
       37 CONCAT                           R11 R12 R13
       38 MOVE                             R12 R7
       39 CALL                             R10 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R8 K17 [table.insert]
       43 CALL                             R8 -1 0
       44 FORGLOOP                         R3 2 ; [-12]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K0 ["createElement"]
       49 GETUPVAL                         R4 2
       50 DUPTABLE                         R5 K19 [{"Title"}]
       51 SETTABLEKS                       R0 R5 K18 ["Title"]
       53 DUPTABLE                         R6 K21 [{"ColorList"}]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R7 R8 K0 ["createElement"]
       57 GETUPVAL                         R8 3
       58 DUPTABLE                         R9 K24 [{"Size", "AutomaticSize", "LayoutOrder"}]
       59 GETIMPORT                        R10 K26 [UDim2.fromScale]
       61 LOADN                            R11 1
       62 LOADN                            R12 0
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K22 ["Size"]
       66 GETIMPORT                        R10 K28 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R10 R9 K23 ["AutomaticSize"]
       70 LOADN                            R10 2
       71 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       73 MOVE                             R10 R2
       74 CALL                             R7 3 1
       75 SETTABLEKS                       R7 R6 K20 ["ColorList"]
       77 CALL                             R3 3 -1
       78 RETURN                           R3 -1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 DUPCLOSURE                       R1 K1 [PROTO_1]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U1
        9 NEWTABLE                         R2 0 0
       11 GETIMPORT                        R3 K3 [pairs]
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 3
       15 FORGPREP_NEXT                    R3
       16 MOVE                             R9 R2
       17 MOVE                             R10 R1
       18 MOVE                             R11 R6
       19 MOVE                             R12 R7
       20 CALL                             R10 2 -1
       21 FASTCALL                         TABLE_INSERT ; [+2]
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 -1 0
       25 FORGLOOP                         R3 2 ; [-10]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K7 ["createElement"]
       30 GETUPVAL                         R4 1
       31 DUPTABLE                         R5 K11 [{"Spacing", "AutomaticSize", "Layout"}]
       32 LOADN                            R6 50
       33 SETTABLEKS                       R6 R5 K8 ["Spacing"]
       35 GETIMPORT                        R6 K14 [Enum.AutomaticSize.Y]
       37 SETTABLEKS                       R6 R5 K9 ["AutomaticSize"]
       39 GETIMPORT                        R6 K17 [Enum.FillDirection.Vertical]
       41 SETTABLEKS                       R6 R5 K10 ["Layout"]
       43 MOVE                             R6 R2
       44 CALL                             R3 3 -1
       45 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Style"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K8 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K8 ["UI"]
       29 GETTABLEKS                       R5 R6 K9 ["Components"]
       31 GETTABLEKS                       R4 R5 K11 ["TextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K8 ["UI"]
       38 GETTABLEKS                       R6 R7 K9 ["Components"]
       40 GETTABLEKS                       R5 R6 K12 ["TitledFrame"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETIMPORT                        R7 K1 [script]
       47 GETTABLEKS                       R6 R7 K4 ["Parent"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K13 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 MOVE                             R7 R6
       57 CALL                             R7 0 -1
       58 RETURN                           R7 -1

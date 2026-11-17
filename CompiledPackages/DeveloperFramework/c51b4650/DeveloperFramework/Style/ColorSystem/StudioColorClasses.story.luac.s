PROTO_0:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["createElement"]
        6 GETUPVAL                         R3 2
        7 DUPTABLE                         R4 K9 [{["Layout"], ["LayoutOrder"], ["Style"] = "BorderBox", ["Padding"] = 5, ["Spacing"] = 5}]
        8 GETIMPORT                        R5 K13 [Enum.FillDirection.Vertical]
       10 SETTABLEKS                       R5 R4 K2 ["Layout"]
       12 GETUPVAL                         R5 0
       13 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       15 DUPTABLE                         R5 K17 [{"ColorSwatch", "ColorName", "HexCode"}]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 LOADK                            R7 K18 ["Frame"]
       20 DUPTABLE                         R8 K21 [{["Size"], ["BackgroundColor3"], ["LayoutOrder"] = 1}]
       21 GETIMPORT                        R9 K24 [UDim2.fromOffset]
       23 LOADN                            R10 100
       24 LOADN                            R11 75
       25 CALL                             R9 2 1
       26 SETTABLEKS                       R9 R8 K19 ["Size"]
       28 SETTABLEKS                       R1 R8 K20 ["BackgroundColor3"]
       30 CALL                             R6 2 1
       31 SETTABLEKS                       R6 R5 K14 ["ColorSwatch"]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K1 ["createElement"]
       36 GETUPVAL                         R7 3
       37 DUPTABLE                         R8 K28 [{["Text"], ["AutomaticSize"], ["LayoutOrder"] = 2}]
       38 SETTABLEKS                       R0 R8 K25 ["Text"]
       40 GETIMPORT                        R9 K30 [Enum.AutomaticSize.XY]
       42 SETTABLEKS                       R9 R8 K26 ["AutomaticSize"]
       44 CALL                             R6 2 1
       45 SETTABLEKS                       R6 R5 K15 ["ColorName"]
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K1 ["createElement"]
       50 GETUPVAL                         R7 3
       51 DUPTABLE                         R8 K32 [{["Text"], ["AutomaticSize"], ["LayoutOrder"] = 3}]
       52 LOADK                            R9 K33 ["#%s"]
       53 NAMECALL                         R11 R1 K34 ["ToHex"]
       55 CALL                             R11 1 -1
       56 NAMECALL                         R9 R9 K35 ["format"]
       58 CALL                             R9 -1 1
       59 SETTABLEKS                       R9 R8 K25 ["Text"]
       61 GETIMPORT                        R9 K30 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R9 R8 K26 ["AutomaticSize"]
       65 CALL                             R6 2 1
       66 SETTABLEKS                       R6 R5 K16 ["HexCode"]
       68 CALL                             R2 3 -1
       69 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["createElement"]
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
       35 MOVE                             R11 R6
       36 GETUPVAL                         R13 2
       37 GETTABLE                         R12 R7 R13
       38 CALL                             R10 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R8 K17 [table.insert]
       42 CALL                             R8 -1 0
       43 FORGLOOP                         R3 2 ; [-11]
       45 GETUPVAL                         R3 3
       46 ADDK                             R3 R3 K18 [1]
       47 SETUPVAL                         R3 3
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K0 ["createElement"]
       51 GETUPVAL                         R4 4
       52 DUPTABLE                         R5 K20 [{"Title"}]
       53 SETTABLEKS                       R0 R5 K19 ["Title"]
       55 DUPTABLE                         R6 K22 [{"ColorList"}]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K0 ["createElement"]
       59 GETUPVAL                         R8 5
       60 DUPTABLE                         R9 K26 [{["Size"], ["AutomaticSize"], ["LayoutOrder"] = 2}]
       61 GETIMPORT                        R10 K28 [UDim2.fromScale]
       63 LOADN                            R11 1
       64 LOADN                            R12 0
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K23 ["Size"]
       68 GETIMPORT                        R10 K30 [Enum.AutomaticSize.Y]
       70 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       72 MOVE                             R10 R2
       73 CALL                             R7 3 1
       74 SETTABLEKS                       R7 R6 K21 ["ColorList"]
       76 CALL                             R3 3 -1
       77 RETURN                           R3 -1

PROTO_2:
        0 LOADN                            R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 LOADN                            R3 0
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          REF R3
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U1
       14 NEWTABLE                         R5 0 0
       16 GETIMPORT                        R6 K1 [pairs]
       18 GETUPVAL                         R7 4
       19 CALL                             R6 1 3
       20 FORGPREP_NEXT                    R6
       21 MOVE                             R12 R5
       22 MOVE                             R13 R4
       23 MOVE                             R14 R9
       24 MOVE                             R15 R10
       25 CALL                             R13 2 -1
       26 FASTCALL                         TABLE_INSERT ; [+2]
       27 GETIMPORT                        R11 K4 [table.insert]
       29 CALL                             R11 -1 0
       30 FORGLOOP                         R6 2 ; [-10]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K5 ["createElement"]
       35 GETUPVAL                         R7 1
       36 DUPTABLE                         R8 K10 [{["Spacing"] = 50, ["AutomaticSize"], ["Layout"]}]
       37 GETIMPORT                        R9 K13 [Enum.AutomaticSize.Y]
       39 SETTABLEKS                       R9 R8 K8 ["AutomaticSize"]
       41 GETIMPORT                        R9 K16 [Enum.FillDirection.Vertical]
       43 SETTABLEKS                       R9 R8 K9 ["Layout"]
       45 MOVE                             R9 R5
       46 CALL                             R6 3 -1
       47 CLOSEUPVALS                      R1
       48 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Style"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K8 ["UI"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["TextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K8 ["UI"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K12 ["TitledFrame"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K4 ["Parent"]
       49 GETTABLEKS                       R6 R6 K13 ["StudioColorClasses"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K14 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 DUPTABLE                         R7 K16 [{"stories"}]
       59 DUPTABLE                         R8 K19 [{"LightTheme", "DarkTheme"}]
       60 MOVE                             R9 R6
       61 LOADK                            R10 K20 ["Light"]
       62 CALL                             R9 1 1
       63 SETTABLEKS                       R9 R8 K17 ["LightTheme"]
       65 MOVE                             R9 R6
       66 LOADK                            R10 K21 ["Dark"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K18 ["DarkTheme"]
       70 SETTABLEKS                       R8 R7 K15 ["stories"]
       72 RETURN                           R7 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"progress"}]
        2 SETTABLEKS                       R0 R3 K0 ["progress"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K4 [{[1] = False, ["progress"] = 0}]
        1 SETTABLEKS                       R1 R0 K5 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K6 ["finishLoading"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K7 ["setProgress"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["completed"]
        4 GETTABLEKS                       R2 R0 K0 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["progress"]
        8 LOADK                            R3 K3 ["%i%%"]
        9 MULK                             R5 R2 K4 [100]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K6 ["createElement"]
       16 GETUPVAL                         R5 1
       17 DUPTABLE                         R6 K13 [{["Layout"], ["AutomaticSize"], ["Padding"] = 10, ["Spacing"] = 15}]
       18 GETIMPORT                        R7 K17 [Enum.FillDirection.Vertical]
       20 SETTABLEKS                       R7 R6 K7 ["Layout"]
       22 GETIMPORT                        R7 K19 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R7 R6 K8 ["AutomaticSize"]
       26 DUPTABLE                         R7 K24 [{"FakeLoadingBar", "LoadingText", "FakeLoadingBar2", "Button"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K6 ["createElement"]
       30 GETUPVAL                         R9 2
       31 DUPTABLE                         R10 K31 [{["LayoutOrder"] = 1, ["Size"], ["LoadingTime"] = 5, ["OnProgressChanged"]}]
       32 GETIMPORT                        R11 K34 [UDim2.fromOffset]
       34 LOADN                            R12 125
       35 LOADN                            R13 8
       36 CALL                             R11 2 1
       37 SETTABLEKS                       R11 R10 K27 ["Size"]
       39 GETTABLEKS                       R11 R0 K35 ["setProgress"]
       41 SETTABLEKS                       R11 R10 K30 ["OnProgressChanged"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K20 ["FakeLoadingBar"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K6 ["createElement"]
       49 LOADK                            R9 K36 ["TextLabel"]
       50 DUPTABLE                         R10 K43 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"] = 16}]
       51 GETIMPORT                        R11 K34 [UDim2.fromOffset]
       53 LOADN                            R12 120
       54 LOADN                            R13 16
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K27 ["Size"]
       58 SETTABLEKS                       R3 R10 K39 ["Text"]
       60 GETIMPORT                        R11 K45 [Enum.Font.SourceSans]
       62 SETTABLEKS                       R11 R10 K40 ["Font"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K21 ["LoadingText"]
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K6 ["createElement"]
       70 GETUPVAL                         R9 2
       71 DUPTABLE                         R10 K50 [{["LayoutOrder"] = 3, ["Size"], ["LoadingTime"] = 2, ["HoldValue"] = 0.75, ["Completed"]}]
       72 GETIMPORT                        R11 K34 [UDim2.fromOffset]
       74 LOADN                            R12 125
       75 LOADN                            R13 8
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K27 ["Size"]
       79 SETTABLEKS                       R1 R10 K49 ["Completed"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K22 ["FakeLoadingBar2"]
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R8 R8 K6 ["createElement"]
       87 GETUPVAL                         R9 3
       88 DUPTABLE                         R10 K56 [{["LayoutOrder"] = 4, ["Style"] = "Round", ["Text"] = "Complete", ["Size"], ["OnClick"]}]
       89 GETIMPORT                        R11 K34 [UDim2.fromOffset]
       91 LOADN                            R12 120
       92 LOADN                            R13 32
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K27 ["Size"]
       96 GETTABLEKS                       R11 R0 K57 ["finishLoading"]
       98 SETTABLEKS                       R11 R10 K55 ["OnClick"]
      100 CALL                             R8 2 1
      101 SETTABLEKS                       R8 R7 K23 ["Button"]
      103 CALL                             R4 3 -1
      104 RETURN                           R4 -1

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
       22 GETTABLEKS                       R3 R3 K9 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["FakeLoadingBar"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["DEPRECATED_Button"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       45 LOADK                            R7 K13 ["ExampleLoadingBar"]
       46 NAMECALL                         R5 R5 K14 ["extend"]
       48 CALL                             R5 2 1
       49 DUPCLOSURE                       R6 K15 [PROTO_2]
       50 SETTABLEKS                       R6 R5 K16 ["init"]
       52 DUPCLOSURE                       R6 K17 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R6 R5 K18 ["render"]
       59 RETURN                           R5 1

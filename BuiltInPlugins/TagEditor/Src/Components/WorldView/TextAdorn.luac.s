PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R3 R0 K0 ["TagName"]
        4 LENGTH                           R2 R3
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+13]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 LOADK                            R3 K2 ["UIListLayout"]
       12 DUPTABLE                         R4 K4 [{"SortOrder"}]
       13 GETIMPORT                        R5 K7 [Enum.SortOrder.LayoutOrder]
       15 SETTABLEKS                       R5 R4 K3 ["SortOrder"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K2 ["UIListLayout"]
       20 LOADN                            R4 1
       21 GETTABLEKS                       R5 R0 K0 ["TagName"]
       23 LENGTH                           R2 R5
       24 LOADN                            R3 1
       25 FORNPREP                         R2
       26 GETTABLEKS                       R6 R0 K0 ["TagName"]
       28 GETTABLE                         R5 R6 R4
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K1 ["createElement"]
       32 LOADK                            R7 K8 ["TextLabel"]
       33 DUPTABLE                         R8 K23 [{["LayoutOrder"], ["Size"], ["Text"], ["TextScaled"] = True, ["TextSize"] = 20, ["Font"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["TextStrokeTransparency"] = 0}]
       34 SETTABLEKS                       R4 R8 K6 ["LayoutOrder"]
       36 GETIMPORT                        R9 K26 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 GETTABLEKS                       R14 R0 K0 ["TagName"]
       42 LENGTH                           R13 R14
       43 DIVRK                            R12 K18 [1] R13
       44 LOADN                            R13 0
       45 CALL                             R9 4 1
       46 SETTABLEKS                       R9 R8 K9 ["Size"]
       48 SETTABLEKS                       R5 R8 K10 ["Text"]
       50 GETIMPORT                        R9 K28 [Enum.Font.SourceSansBold]
       52 SETTABLEKS                       R9 R8 K15 ["Font"]
       54 GETUPVAL                         R9 1
       55 GETTABLEKS                       R9 R9 K29 ["White"]
       57 SETTABLEKS                       R9 R8 K16 ["TextColor3"]
       59 GETIMPORT                        R9 K31 [Enum.TextXAlignment.Left]
       61 SETTABLEKS                       R9 R8 K19 ["TextXAlignment"]
       63 GETIMPORT                        R9 K33 [Enum.TextYAlignment.Bottom]
       65 SETTABLEKS                       R9 R8 K20 ["TextYAlignment"]
       67 CALL                             R6 2 1
       68 SETTABLE                         R6 R1 R5
       69 FORNLOOP                         R2
       70 GETUPVAL                         R2 0
       71 GETTABLEKS                       R2 R2 K1 ["createElement"]
       73 LOADK                            R3 K34 ["BillboardGui"]
       74 DUPTABLE                         R4 K40 [{["Adornee"], ["Size"], ["SizeOffset"], ["ExtentsOffsetWorldSpace"] = {1, 1, 1}, ["AlwaysOnTop"]}]
       75 GETTABLEKS                       R5 R0 K35 ["Adornee"]
       77 SETTABLEKS                       R5 R4 K35 ["Adornee"]
       79 GETIMPORT                        R5 K26 [UDim2.new]
       81 LOADN                            R6 10
       82 LOADN                            R7 0
       83 GETTABLEKS                       R9 R0 K0 ["TagName"]
       85 LENGTH                           R8 R9
       86 LOADN                            R9 0
       87 CALL                             R5 4 1
       88 SETTABLEKS                       R5 R4 K9 ["Size"]
       90 GETIMPORT                        R5 K42 [Vector2.new]
       92 LOADK                            R6 K43 [0.5]
       93 LOADK                            R7 K43 [0.5]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K36 ["SizeOffset"]
       97 GETTABLEKS                       R5 R0 K39 ["AlwaysOnTop"]
       99 SETTABLEKS                       R5 R4 K39 ["AlwaysOnTop"]
      101 MOVE                             R5 R1
      102 CALL                             R2 3 -1
      103 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K9 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

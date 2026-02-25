PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R3 R0 K0 ["TagName"]
        4 LENGTH                           R2 R3
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+13]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K1 ["createElement"]
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
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R6 R7 K1 ["createElement"]
       32 LOADK                            R7 K8 ["TextLabel"]
       33 DUPTABLE                         R8 K19 [{"LayoutOrder", "Size", "Text", "TextScaled", "TextSize", "Font", "TextColor3", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextStrokeTransparency"}]
       34 SETTABLEKS                       R4 R8 K6 ["LayoutOrder"]
       36 GETIMPORT                        R9 K22 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 GETTABLEKS                       R14 R0 K0 ["TagName"]
       42 LENGTH                           R13 R14
       43 DIVRK                            R12 R23 K13 ["Font"]
       44 LOADN                            R13 0
       45 CALL                             R9 4 1
       46 SETTABLEKS                       R9 R8 K9 ["Size"]
       48 SETTABLEKS                       R5 R8 K10 ["Text"]
       50 LOADB                            R9 1
       51 SETTABLEKS                       R9 R8 K11 ["TextScaled"]
       53 LOADN                            R9 20
       54 SETTABLEKS                       R9 R8 K12 ["TextSize"]
       56 GETIMPORT                        R9 K25 [Enum.Font.SourceSansBold]
       58 SETTABLEKS                       R9 R8 K13 ["Font"]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R9 R10 K26 ["White"]
       63 SETTABLEKS                       R9 R8 K14 ["TextColor3"]
       65 LOADN                            R9 1
       66 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
       68 GETIMPORT                        R9 K28 [Enum.TextXAlignment.Left]
       70 SETTABLEKS                       R9 R8 K16 ["TextXAlignment"]
       72 GETIMPORT                        R9 K30 [Enum.TextYAlignment.Bottom]
       74 SETTABLEKS                       R9 R8 K17 ["TextYAlignment"]
       76 LOADN                            R9 0
       77 SETTABLEKS                       R9 R8 K18 ["TextStrokeTransparency"]
       79 CALL                             R6 2 1
       80 SETTABLE                         R6 R1 R5
       81 FORNLOOP                         R2
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R2 R3 K1 ["createElement"]
       85 LOADK                            R3 K31 ["BillboardGui"]
       86 DUPTABLE                         R4 K36 [{"Adornee", "Size", "SizeOffset", "ExtentsOffsetWorldSpace", "AlwaysOnTop"}]
       87 GETTABLEKS                       R5 R0 K32 ["Adornee"]
       89 SETTABLEKS                       R5 R4 K32 ["Adornee"]
       91 GETIMPORT                        R5 K22 [UDim2.new]
       93 LOADN                            R6 10
       94 LOADN                            R7 0
       95 GETTABLEKS                       R9 R0 K0 ["TagName"]
       97 LENGTH                           R8 R9
       98 LOADN                            R9 0
       99 CALL                             R5 4 1
      100 SETTABLEKS                       R5 R4 K9 ["Size"]
      102 GETIMPORT                        R5 K38 [Vector2.new]
      104 LOADK                            R6 K39 [0.5]
      105 LOADK                            R7 K39 [0.5]
      106 CALL                             R5 2 1
      107 SETTABLEKS                       R5 R4 K33 ["SizeOffset"]
      109 LOADK                            R5 K40 [{1, 1, 1}]
      110 SETTABLEKS                       R5 R4 K34 ["ExtentsOffsetWorldSpace"]
      112 GETTABLEKS                       R5 R0 K35 ["AlwaysOnTop"]
      114 SETTABLEKS                       R5 R4 K35 ["AlwaysOnTop"]
      116 MOVE                             R5 R1
      117 CALL                             R2 3 -1
      118 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K9 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentContent"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentContent"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["TextChangeCallBack"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onTextChanged"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Title"]
        8 GETTABLEKS                       R5 R1 K4 ["TotalHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["MaxCount"]
       14 GETTABLEKS                       R9 R1 K8 ["TextContent"]
       16 ORK                              R8 R9 K7 [""]
       17 GETTABLEKS                       R10 R2 K9 ["currentContent"]
       19 OR                               R9 R10 R8
       20 GETTABLEKS                       R10 R3 K10 ["publishAsset"]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K11 ["createElement"]
       25 LOADK                            R12 K12 ["Frame"]
       26 DUPTABLE                         R13 K18 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       27 GETIMPORT                        R14 K21 [UDim2.new]
       29 LOADN                            R15 1
       30 LOADN                            R16 0
       31 LOADN                            R17 0
       32 MOVE                             R18 R5
       33 CALL                             R14 4 1
       34 SETTABLEKS                       R14 R13 K13 ["Size"]
       36 SETTABLEKS                       R6 R13 K5 ["LayoutOrder"]
       38 DUPTABLE                         R14 K24 [{"UIListLayout", "Title", "TextField"}]
       39 GETUPVAL                         R15 0
       40 GETTABLEKS                       R15 R15 K11 ["createElement"]
       42 LOADK                            R16 K22 ["UIListLayout"]
       43 DUPTABLE                         R17 K30 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
       44 GETIMPORT                        R18 K33 [Enum.FillDirection.Horizontal]
       46 SETTABLEKS                       R18 R17 K25 ["FillDirection"]
       48 GETIMPORT                        R18 K35 [Enum.HorizontalAlignment.Left]
       50 SETTABLEKS                       R18 R17 K26 ["HorizontalAlignment"]
       52 GETIMPORT                        R18 K37 [Enum.VerticalAlignment.Top]
       54 SETTABLEKS                       R18 R17 K27 ["VerticalAlignment"]
       56 GETIMPORT                        R18 K38 [Enum.SortOrder.LayoutOrder]
       58 SETTABLEKS                       R18 R17 K28 ["SortOrder"]
       60 GETIMPORT                        R18 K40 [UDim.new]
       62 LOADN                            R19 0
       63 LOADN                            R20 0
       64 CALL                             R18 2 1
       65 SETTABLEKS                       R18 R17 K29 ["Padding"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K22 ["UIListLayout"]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K11 ["createElement"]
       73 LOADK                            R16 K41 ["TextLabel"]
       74 DUPTABLE                         R17 K48 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Text"], ["TextXAlignment"], ["TextYAlignment"], ["TextSize"], ["TextColor3"], ["Font"], ["LayoutOrder"] = 1}]
       75 GETIMPORT                        R18 K21 [UDim2.new]
       77 LOADN                            R19 0
       78 GETUPVAL                         R20 1
       79 GETTABLEKS                       R20 R20 K49 ["TITLE_GUTTER_WIDTH"]
       81 LOADN                            R21 1
       82 LOADN                            R22 0
       83 CALL                             R18 4 1
       84 SETTABLEKS                       R18 R17 K13 ["Size"]
       86 SETTABLEKS                       R4 R17 K42 ["Text"]
       88 GETIMPORT                        R18 K50 [Enum.TextXAlignment.Left]
       90 SETTABLEKS                       R18 R17 K43 ["TextXAlignment"]
       92 GETIMPORT                        R18 K51 [Enum.TextYAlignment.Top]
       94 SETTABLEKS                       R18 R17 K44 ["TextYAlignment"]
       96 GETUPVAL                         R18 1
       97 GETTABLEKS                       R18 R18 K52 ["FONT_SIZE_TITLE"]
       99 SETTABLEKS                       R18 R17 K45 ["TextSize"]
      101 GETTABLEKS                       R18 R10 K53 ["titleTextColor"]
      103 SETTABLEKS                       R18 R17 K46 ["TextColor3"]
      105 GETUPVAL                         R18 1
      106 GETTABLEKS                       R18 R18 K54 ["FONT"]
      108 SETTABLEKS                       R18 R17 K47 ["Font"]
      110 CALL                             R15 2 1
      111 SETTABLEKS                       R15 R14 K3 ["Title"]
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R15 R15 K11 ["createElement"]
      116 GETUPVAL                         R16 2
      117 DUPTABLE                         R17 K59 [{["LayoutOrder"] = 2, ["MaxLength"], ["MultiLine"], ["OnTextChanged"], ["Text"], ["Size"]}]
      118 SETTABLEKS                       R7 R17 K56 ["MaxLength"]
      120 LOADN                            R19 50
      121 JUMPIFLT                         R19 R7 ; [+2]
      123 LOADB                            R18 0 +1
      124 LOADB                            R18 1
      125 SETTABLEKS                       R18 R17 K57 ["MultiLine"]
      127 GETTABLEKS                       R18 R0 K60 ["onTextChanged"]
      129 SETTABLEKS                       R18 R17 K58 ["OnTextChanged"]
      131 SETTABLEKS                       R9 R17 K42 ["Text"]
      133 GETIMPORT                        R18 K21 [UDim2.new]
      135 LOADN                            R19 1
      136 GETUPVAL                         R21 1
      137 GETTABLEKS                       R21 R21 K49 ["TITLE_GUTTER_WIDTH"]
      139 MINUS                            R20 R21
      140 LOADN                            R21 0
      141 SUBK                             R23 R5 K62 [40]
      142 SUBK                             R22 R23 K61 [20]
      143 CALL                             R18 4 1
      144 SETTABLEKS                       R18 R17 K13 ["Size"]
      146 CALL                             R15 2 1
      147 SETTABLEKS                       R15 R14 K23 ["TextField"]
      149 CALL                             R11 3 -1
      150 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R3 K10 ["UI"]
       29 GETTABLEKS                       R7 R6 K11 ["TextInput"]
       31 GETTABLEKS                       R8 R0 K12 ["Src"]
       33 GETTABLEKS                       R8 R8 K13 ["Util"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R8 K14 ["Constants"]
       39 CALL                             R9 1 1
       40 GETTABLEKS                       R10 R2 K15 ["PureComponent"]
       42 LOADK                            R12 K16 ["ConfigTextField"]
       43 NAMECALL                         R10 R10 K17 ["extend"]
       45 CALL                             R10 2 1
       46 DUPCLOSURE                       R11 K18 [PROTO_1]
       47 SETTABLEKS                       R11 R10 K19 ["init"]
       49 DUPCLOSURE                       R11 K20 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R7
       53 SETTABLEKS                       R11 R10 K21 ["render"]
       55 MOVE                             R11 R5
       56 DUPTABLE                         R12 K23 [{"Stylizer"}]
       57 GETTABLEKS                       R13 R4 K22 ["Stylizer"]
       59 SETTABLEKS                       R13 R12 K22 ["Stylizer"]
       61 CALL                             R11 1 1
       62 MOVE                             R12 R10
       63 CALL                             R11 1 1
       64 MOVE                             R10 R11
       65 RETURN                           R10 1

PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["state"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["createRef"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R0 K2 ["baseFrameRef"]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["baseFrameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["baseFrameRef"]
       10 GETTABLEKS                       R1 R1 K1 ["current"]
       12 GETIMPORT                        R2 K4 [UDim2.new]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K5 ["X"]
       17 GETTABLEKS                       R3 R3 K6 ["Scale"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["X"]
       22 GETTABLEKS                       R4 R4 K7 ["Offset"]
       24 LOADN                            R5 0
       25 GETTABLEKS                       R7 R0 K9 ["AbsoluteContentSize"]
       27 GETTABLEKS                       R7 R7 K10 ["y"]
       29 ADDK                             R6 R7 K8 [48]
       30 CALL                             R2 4 1
       31 SETTABLEKS                       R2 R1 K11 ["CanvasSize"]
       33 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["name"]
       10 GETTABLEKS                       R6 R1 K5 ["description"]
       12 GETTABLEKS                       R7 R1 K6 ["owner"]
       14 GETTABLEKS                       R8 R1 K7 ["allowComment"]
       16 GETTABLEKS                       R9 R1 K8 ["commentOn"]
       18 GETTABLEKS                       R10 R1 K9 ["onNameChange"]
       20 GETTABLEKS                       R11 R1 K10 ["onDescChange"]
       22 GETTABLEKS                       R12 R1 K11 ["onOwnerSelected"]
       24 GETTABLEKS                       R13 R1 K12 ["toggleComment"]
       26 GETUPVAL                         R14 0
       27 GETTABLEKS                       R14 R14 K13 ["new"]
       29 CALL                             R14 0 1
       30 GETUPVAL                         R15 1
       31 GETTABLEKS                       R15 R15 K14 ["createElement"]
       33 GETUPVAL                         R16 2
       34 NEWTABLE                         R17 4 0
       36 GETIMPORT                        R18 K18 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R18 R17 K19 ["AutomaticCanvasSize"]
       40 SETTABLEKS                       R4 R17 K3 ["LayoutOrder"]
       42 SETTABLEKS                       R3 R17 K2 ["Size"]
       44 GETUPVAL                         R18 1
       45 GETTABLEKS                       R18 R18 K20 ["Ref"]
       47 GETTABLEKS                       R19 R0 K21 ["baseFrameRef"]
       49 SETTABLE                         R19 R17 R18
       50 DUPTABLE                         R18 K28 [{"Padding", "UIListLayout", "Title", "Description", "Ownership", "Comment"}]
       51 GETUPVAL                         R19 1
       52 GETTABLEKS                       R19 R19 K14 ["createElement"]
       54 LOADK                            R20 K29 ["UIPadding"]
       55 DUPTABLE                         R21 K34 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       56 GETIMPORT                        R22 K36 [UDim.new]
       58 LOADN                            R23 0
       59 LOADN                            R24 24
       60 CALL                             R22 2 1
       61 SETTABLEKS                       R22 R21 K30 ["PaddingTop"]
       63 GETIMPORT                        R22 K36 [UDim.new]
       65 LOADN                            R23 0
       66 LOADN                            R24 24
       67 CALL                             R22 2 1
       68 SETTABLEKS                       R22 R21 K31 ["PaddingBottom"]
       70 GETIMPORT                        R22 K36 [UDim.new]
       72 LOADN                            R23 0
       73 LOADN                            R24 24
       74 CALL                             R22 2 1
       75 SETTABLEKS                       R22 R21 K32 ["PaddingLeft"]
       77 GETIMPORT                        R22 K36 [UDim.new]
       79 LOADN                            R23 0
       80 LOADN                            R24 24
       81 CALL                             R22 2 1
       82 SETTABLEKS                       R22 R21 K33 ["PaddingRight"]
       84 CALL                             R19 2 1
       85 SETTABLEKS                       R19 R18 K22 ["Padding"]
       87 GETUPVAL                         R19 1
       88 GETTABLEKS                       R19 R19 K14 ["createElement"]
       90 LOADK                            R20 K23 ["UIListLayout"]
       91 NEWTABLE                         R21 8 0
       93 GETIMPORT                        R22 K39 [Enum.FillDirection.Vertical]
       95 SETTABLEKS                       R22 R21 K37 ["FillDirection"]
       97 GETIMPORT                        R22 K42 [Enum.HorizontalAlignment.Left]
       99 SETTABLEKS                       R22 R21 K40 ["HorizontalAlignment"]
      101 GETIMPORT                        R22 K45 [Enum.VerticalAlignment.Top]
      103 SETTABLEKS                       R22 R21 K43 ["VerticalAlignment"]
      105 GETIMPORT                        R22 K47 [Enum.SortOrder.LayoutOrder]
      107 SETTABLEKS                       R22 R21 K46 ["SortOrder"]
      109 GETIMPORT                        R22 K36 [UDim.new]
      111 LOADN                            R23 0
      112 LOADN                            R24 5
      113 CALL                             R22 2 1
      114 SETTABLEKS                       R22 R21 K22 ["Padding"]
      116 GETUPVAL                         R22 1
      117 GETTABLEKS                       R22 R22 K48 ["Change"]
      119 GETTABLEKS                       R22 R22 K49 ["AbsoluteContentSize"]
      121 NEWCLOSURE                       R23 P0
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R3
      124 SETTABLE                         R23 R21 R22
      125 CALL                             R19 2 1
      126 SETTABLEKS                       R19 R18 K23 ["UIListLayout"]
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R19 R19 K14 ["createElement"]
      131 GETUPVAL                         R20 3
      132 DUPTABLE                         R21 K54 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "LayoutOrder"}]
      133 LOADK                            R24 K55 ["General"]
      134 LOADK                            R25 K24 ["Title"]
      135 NAMECALL                         R22 R2 K56 ["getText"]
      137 CALL                             R22 3 1
      138 SETTABLEKS                       R22 R21 K24 ["Title"]
      140 LOADN                            R22 100
      141 SETTABLEKS                       R22 R21 K50 ["TotalHeight"]
      143 GETUPVAL                         R22 4
      144 GETTABLEKS                       R22 R22 K57 ["NAME_CHARACTER_LIMIT"]
      146 SETTABLEKS                       R22 R21 K51 ["MaxCount"]
      148 SETTABLEKS                       R10 R21 K52 ["TextChangeCallBack"]
      150 SETTABLEKS                       R5 R21 K53 ["TextContent"]
      152 NAMECALL                         R22 R14 K58 ["getNextOrder"]
      154 CALL                             R22 1 1
      155 SETTABLEKS                       R22 R21 K3 ["LayoutOrder"]
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K24 ["Title"]
      160 GETUPVAL                         R19 1
      161 GETTABLEKS                       R19 R19 K14 ["createElement"]
      163 GETUPVAL                         R20 3
      164 DUPTABLE                         R21 K54 [{"Title", "TotalHeight", "MaxCount", "TextChangeCallBack", "TextContent", "LayoutOrder"}]
      165 LOADK                            R24 K55 ["General"]
      166 LOADK                            R25 K25 ["Description"]
      167 NAMECALL                         R22 R2 K56 ["getText"]
      169 CALL                             R22 3 1
      170 SETTABLEKS                       R22 R21 K24 ["Title"]
      172 LOADN                            R22 64
      173 SETTABLEKS                       R22 R21 K50 ["TotalHeight"]
      175 GETUPVAL                         R22 4
      176 GETTABLEKS                       R22 R22 K59 ["DESCRIPTION_CHARACTER_LIMIT"]
      178 SETTABLEKS                       R22 R21 K51 ["MaxCount"]
      180 SETTABLEKS                       R11 R21 K52 ["TextChangeCallBack"]
      182 SETTABLEKS                       R6 R21 K53 ["TextContent"]
      184 NAMECALL                         R22 R14 K58 ["getNextOrder"]
      186 CALL                             R22 1 1
      187 SETTABLEKS                       R22 R21 K3 ["LayoutOrder"]
      189 CALL                             R19 2 1
      190 SETTABLEKS                       R19 R18 K25 ["Description"]
      192 GETUPVAL                         R19 1
      193 GETTABLEKS                       R19 R19 K14 ["createElement"]
      195 GETUPVAL                         R20 5
      196 DUPTABLE                         R21 K61 [{"Title", "owner", "TotalHeight", "onDropDownSelect", "LayoutOrder"}]
      197 LOADK                            R24 K55 ["General"]
      198 LOADK                            R25 K26 ["Ownership"]
      199 NAMECALL                         R22 R2 K56 ["getText"]
      201 CALL                             R22 3 1
      202 SETTABLEKS                       R22 R21 K24 ["Title"]
      204 SETTABLEKS                       R7 R21 K6 ["owner"]
      206 LOADN                            R22 70
      207 SETTABLEKS                       R22 R21 K50 ["TotalHeight"]
      209 SETTABLEKS                       R12 R21 K60 ["onDropDownSelect"]
      211 NAMECALL                         R22 R14 K58 ["getNextOrder"]
      213 CALL                             R22 1 1
      214 SETTABLEKS                       R22 R21 K3 ["LayoutOrder"]
      216 CALL                             R19 2 1
      217 SETTABLEKS                       R19 R18 K26 ["Ownership"]
      219 GETUPVAL                         R19 1
      220 GETTABLEKS                       R19 R19 K14 ["createElement"]
      222 GETUPVAL                         R20 6
      223 DUPTABLE                         R21 K65 [{"Title", "TotalHeight", "CommentEnabled", "CommentOn", "ToggleCallback", "LayoutOrder"}]
      224 LOADK                            R24 K55 ["General"]
      225 LOADK                            R25 K66 ["Comments"]
      226 NAMECALL                         R22 R2 K56 ["getText"]
      228 CALL                             R22 3 1
      229 SETTABLEKS                       R22 R21 K24 ["Title"]
      231 LOADN                            R22 80
      232 SETTABLEKS                       R22 R21 K50 ["TotalHeight"]
      234 SETTABLEKS                       R8 R21 K62 ["CommentEnabled"]
      236 SETTABLEKS                       R9 R21 K63 ["CommentOn"]
      238 SETTABLEKS                       R13 R21 K64 ["ToggleCallback"]
      240 NAMECALL                         R22 R14 K58 ["getNextOrder"]
      242 CALL                             R22 1 1
      243 SETTABLEKS                       R22 R21 K3 ["LayoutOrder"]
      245 CALL                             R19 2 1
      246 SETTABLEKS                       R19 R18 K27 ["Comment"]
      248 CALL                             R15 3 -1
      249 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Framework"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R4 K9 ["withContext"]
       27 GETTABLEKS                       R6 R2 K10 ["UI"]
       29 GETTABLEKS                       R7 R6 K11 ["ScrollingFrame"]
       31 GETTABLEKS                       R8 R0 K12 ["Src"]
       33 GETTABLEKS                       R8 R8 K13 ["Util"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R8 K14 ["LayoutOrderIterator"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R11 R8 K15 ["Constants"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R11 R0 K12 ["Src"]
       47 GETTABLEKS                       R11 R11 K16 ["Components"]
       49 GETTABLEKS                       R11 R11 K17 ["ConvertToPackageWindow"]
       51 GETIMPORT                        R12 K5 [require]
       53 GETTABLEKS                       R13 R11 K18 ["ConfigTextField"]
       55 CALL                             R12 1 1
       56 GETIMPORT                        R13 K5 [require]
       58 GETTABLEKS                       R14 R11 K19 ["ConfigAccess"]
       60 CALL                             R13 1 1
       61 GETIMPORT                        R14 K5 [require]
       63 GETTABLEKS                       R15 R11 K20 ["ConfigComment"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R15 R3 K21 ["PureComponent"]
       68 LOADK                            R17 K22 ["PublishAsset"]
       69 NAMECALL                         R15 R15 K23 ["extend"]
       71 CALL                             R15 2 1
       72 DUPCLOSURE                       R16 K24 [PROTO_0]
       73 CAPTURE                          VAL R3
       74 SETTABLEKS                       R16 R15 K25 ["init"]
       76 DUPCLOSURE                       R16 K26 [PROTO_2]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R14
       84 SETTABLEKS                       R16 R15 K27 ["render"]
       86 MOVE                             R16 R5
       87 DUPTABLE                         R17 K30 [{"Localization", "Stylizer"}]
       88 GETTABLEKS                       R18 R4 K28 ["Localization"]
       90 SETTABLEKS                       R18 R17 K28 ["Localization"]
       92 GETTABLEKS                       R18 R4 K29 ["Stylizer"]
       94 SETTABLEKS                       R18 R17 K29 ["Stylizer"]
       96 CALL                             R16 1 1
       97 MOVE                             R17 R15
       98 CALL                             R16 1 1
       99 MOVE                             R15 R16
      100 RETURN                           R15 1

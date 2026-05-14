PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refreshData"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Localization"]
        4 GETTABLEKS                       R5 R3 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R5 K3 ["TopPanel"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["createElement"]
       11 GETUPVAL                         R7 1
       12 DUPTABLE                         R8 K9 [{"Size", "Layout", "Padding", "LayoutOrder"}]
       13 GETTABLEKS                       R9 R5 K5 ["Size"]
       15 SETTABLEKS                       R9 R8 K5 ["Size"]
       17 GETIMPORT                        R9 K13 [Enum.FillDirection.Horizontal]
       19 SETTABLEKS                       R9 R8 K6 ["Layout"]
       21 GETTABLEKS                       R9 R5 K7 ["Padding"]
       23 SETTABLEKS                       R9 R8 K7 ["Padding"]
       25 LOADN                            R9 1
       26 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       28 DUPTABLE                         R9 K17 [{"NumTextures", "RefreshWrapper", "TotalMemory"}]
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R10 R10 K4 ["createElement"]
       32 GETUPVAL                         R11 2
       33 DUPTABLE                         R12 K20 [{"Text", "Size", "TextXAlignment", "LayoutOrder"}]
       34 LOADK                            R14 K21 ["# "]
       35 LOADK                            R20 K3 ["TopPanel"]
       36 LOADK                            R21 K22 ["Textures"]
       37 NAMECALL                         R18 R4 K23 ["getText"]
       39 CALL                             R18 3 1
       40 MOVE                             R15 R18
       41 LOADK                            R16 K24 [": "]
       42 MOVE                             R17 R1
       43 CONCAT                           R13 R14 R17
       44 SETTABLEKS                       R13 R12 K18 ["Text"]
       46 GETTABLEKS                       R13 R5 K25 ["AggregateStats"]
       48 GETTABLEKS                       R13 R13 K14 ["NumTextures"]
       50 GETTABLEKS                       R13 R13 K5 ["Size"]
       52 SETTABLEKS                       R13 R12 K5 ["Size"]
       54 GETIMPORT                        R13 K27 [Enum.TextXAlignment.Left]
       56 SETTABLEKS                       R13 R12 K19 ["TextXAlignment"]
       58 LOADN                            R13 1
       59 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       61 CALL                             R10 2 1
       62 SETTABLEKS                       R10 R9 K14 ["NumTextures"]
       64 GETUPVAL                         R10 0
       65 GETTABLEKS                       R10 R10 K4 ["createElement"]
       67 GETUPVAL                         R11 1
       68 DUPTABLE                         R12 K30 [{"Size", "AnchorPoint", "Position", "LayoutOrder"}]
       69 GETTABLEKS                       R13 R5 K31 ["Refresh"]
       71 GETTABLEKS                       R13 R13 K5 ["Size"]
       73 SETTABLEKS                       R13 R12 K5 ["Size"]
       75 GETTABLEKS                       R13 R5 K31 ["Refresh"]
       77 GETTABLEKS                       R13 R13 K28 ["AnchorPoint"]
       79 SETTABLEKS                       R13 R12 K28 ["AnchorPoint"]
       81 GETTABLEKS                       R13 R5 K31 ["Refresh"]
       83 GETTABLEKS                       R13 R13 K29 ["Position"]
       85 SETTABLEKS                       R13 R12 K29 ["Position"]
       87 LOADN                            R13 2
       88 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
       90 DUPTABLE                         R13 K33 [{"RefreshTextures"}]
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K4 ["createElement"]
       94 GETUPVAL                         R15 3
       95 DUPTABLE                         R16 K36 [{"Text", "TextXAlignment", "LeftIcon", "Size", "OnClick"}]
       96 LOADK                            R19 K3 ["TopPanel"]
       97 LOADK                            R20 K31 ["Refresh"]
       98 NAMECALL                         R17 R4 K23 ["getText"]
      100 CALL                             R17 3 1
      101 SETTABLEKS                       R17 R16 K18 ["Text"]
      103 GETIMPORT                        R17 K38 [Enum.TextXAlignment.Center]
      105 SETTABLEKS                       R17 R16 K19 ["TextXAlignment"]
      107 GETTABLEKS                       R17 R5 K31 ["Refresh"]
      109 GETTABLEKS                       R17 R17 K39 ["Button"]
      111 GETTABLEKS                       R17 R17 K40 ["Icon"]
      113 SETTABLEKS                       R17 R16 K34 ["LeftIcon"]
      115 GETIMPORT                        R17 K43 [UDim2.fromScale]
      117 LOADN                            R18 1
      118 LOADN                            R19 1
      119 CALL                             R17 2 1
      120 SETTABLEKS                       R17 R16 K5 ["Size"]
      122 NEWCLOSURE                       R17 P0
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R17 R16 K35 ["OnClick"]
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K32 ["RefreshTextures"]
      129 CALL                             R10 3 1
      130 SETTABLEKS                       R10 R9 K15 ["RefreshWrapper"]
      132 GETUPVAL                         R10 0
      133 GETTABLEKS                       R10 R10 K4 ["createElement"]
      135 GETUPVAL                         R11 2
      136 DUPTABLE                         R12 K20 [{"Text", "Size", "TextXAlignment", "LayoutOrder"}]
      137 LOADK                            R20 K3 ["TopPanel"]
      138 LOADK                            R21 K5 ["Size"]
      139 NAMECALL                         R18 R4 K23 ["getText"]
      141 CALL                             R18 3 1
      142 MOVE                             R14 R18
      143 LOADK                            R15 K24 [": "]
      144 GETUPVAL                         R18 4
      145 GETTABLEKS                       R18 R18 K44 ["round"]
      147 GETUPVAL                         R20 5
      148 GETTABLEKS                       R20 R20 K45 ["BYTES_IN_MB"]
      150 DIV                              R19 R2 R20
      151 LOADN                            R20 2
      152 CALL                             R18 2 1
      153 MOVE                             R16 R18
      154 LOADK                            R17 K46 [" MB"]
      155 CONCAT                           R13 R14 R17
      156 SETTABLEKS                       R13 R12 K18 ["Text"]
      158 GETTABLEKS                       R13 R5 K25 ["AggregateStats"]
      160 GETTABLEKS                       R13 R13 K16 ["TotalMemory"]
      162 GETTABLEKS                       R13 R13 K5 ["Size"]
      164 SETTABLEKS                       R13 R12 K5 ["Size"]
      166 GETIMPORT                        R13 K48 [Enum.TextXAlignment.Right]
      168 SETTABLEKS                       R13 R12 K19 ["TextXAlignment"]
      170 LOADN                            R13 3
      171 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      173 CALL                             R10 2 1
      174 SETTABLEKS                       R10 R9 K16 ["TotalMemory"]
      176 CALL                             R6 3 -1
      177 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Pane"]
       27 GETTABLEKS                       R4 R2 K8 ["UI"]
       29 GETTABLEKS                       R4 R4 K10 ["IconButton"]
       31 GETTABLEKS                       R5 R2 K8 ["UI"]
       33 GETTABLEKS                       R5 R5 K11 ["TextLabel"]
       35 GETTABLEKS                       R6 R0 K12 ["Src"]
       37 GETTABLEKS                       R6 R6 K13 ["Util"]
       39 GETIMPORT                        R7 K4 [require]
       41 GETTABLEKS                       R8 R6 K14 ["Utils"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K4 [require]
       46 GETTABLEKS                       R9 R6 K15 ["Constants"]
       48 CALL                             R8 1 1
       49 DUPCLOSURE                       R9 K16 [PROTO_1]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R8
       56 RETURN                           R9 1

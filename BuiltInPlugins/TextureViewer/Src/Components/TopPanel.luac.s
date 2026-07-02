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
       12 DUPTABLE                         R8 K10 [{["Size"], ["Layout"], ["Padding"], ["LayoutOrder"] = 1}]
       13 GETTABLEKS                       R9 R5 K5 ["Size"]
       15 SETTABLEKS                       R9 R8 K5 ["Size"]
       17 GETIMPORT                        R9 K14 [Enum.FillDirection.Horizontal]
       19 SETTABLEKS                       R9 R8 K6 ["Layout"]
       21 GETTABLEKS                       R9 R5 K7 ["Padding"]
       23 SETTABLEKS                       R9 R8 K7 ["Padding"]
       25 DUPTABLE                         R9 K18 [{"NumTextures", "RefreshWrapper", "TotalMemory"}]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K4 ["createElement"]
       29 GETUPVAL                         R11 2
       30 DUPTABLE                         R12 K21 [{["Text"], ["Size"], ["TextXAlignment"], ["LayoutOrder"] = 1}]
       31 LOADK                            R14 K22 ["# "]
       32 LOADK                            R20 K3 ["TopPanel"]
       33 LOADK                            R21 K23 ["Textures"]
       34 NAMECALL                         R18 R4 K24 ["getText"]
       36 CALL                             R18 3 1
       37 MOVE                             R15 R18
       38 LOADK                            R16 K25 [": "]
       39 MOVE                             R17 R1
       40 CONCAT                           R13 R14 R17
       41 SETTABLEKS                       R13 R12 K19 ["Text"]
       43 GETTABLEKS                       R13 R5 K26 ["AggregateStats"]
       45 GETTABLEKS                       R13 R13 K15 ["NumTextures"]
       47 GETTABLEKS                       R13 R13 K5 ["Size"]
       49 SETTABLEKS                       R13 R12 K5 ["Size"]
       51 GETIMPORT                        R13 K28 [Enum.TextXAlignment.Left]
       53 SETTABLEKS                       R13 R12 K20 ["TextXAlignment"]
       55 CALL                             R10 2 1
       56 SETTABLEKS                       R10 R9 K15 ["NumTextures"]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K4 ["createElement"]
       61 GETUPVAL                         R11 1
       62 DUPTABLE                         R12 K32 [{["Size"], ["AnchorPoint"], ["Position"], ["LayoutOrder"] = 2}]
       63 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       65 GETTABLEKS                       R13 R13 K5 ["Size"]
       67 SETTABLEKS                       R13 R12 K5 ["Size"]
       69 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       71 GETTABLEKS                       R13 R13 K29 ["AnchorPoint"]
       73 SETTABLEKS                       R13 R12 K29 ["AnchorPoint"]
       75 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       77 GETTABLEKS                       R13 R13 K30 ["Position"]
       79 SETTABLEKS                       R13 R12 K30 ["Position"]
       81 DUPTABLE                         R13 K35 [{"RefreshTextures"}]
       82 GETUPVAL                         R14 0
       83 GETTABLEKS                       R14 R14 K4 ["createElement"]
       85 GETUPVAL                         R15 3
       86 DUPTABLE                         R16 K38 [{"Text", "TextXAlignment", "LeftIcon", "Size", "OnClick"}]
       87 LOADK                            R19 K3 ["TopPanel"]
       88 LOADK                            R20 K33 ["Refresh"]
       89 NAMECALL                         R17 R4 K24 ["getText"]
       91 CALL                             R17 3 1
       92 SETTABLEKS                       R17 R16 K19 ["Text"]
       94 GETIMPORT                        R17 K40 [Enum.TextXAlignment.Center]
       96 SETTABLEKS                       R17 R16 K20 ["TextXAlignment"]
       98 GETTABLEKS                       R17 R5 K33 ["Refresh"]
      100 GETTABLEKS                       R17 R17 K41 ["Button"]
      102 GETTABLEKS                       R17 R17 K42 ["Icon"]
      104 SETTABLEKS                       R17 R16 K36 ["LeftIcon"]
      106 GETIMPORT                        R17 K45 [UDim2.fromScale]
      108 LOADN                            R18 1
      109 LOADN                            R19 1
      110 CALL                             R17 2 1
      111 SETTABLEKS                       R17 R16 K5 ["Size"]
      113 NEWCLOSURE                       R17 P0
      114 CAPTURE                          VAL R0
      115 SETTABLEKS                       R17 R16 K37 ["OnClick"]
      117 CALL                             R14 2 1
      118 SETTABLEKS                       R14 R13 K34 ["RefreshTextures"]
      120 CALL                             R10 3 1
      121 SETTABLEKS                       R10 R9 K16 ["RefreshWrapper"]
      123 GETUPVAL                         R10 0
      124 GETTABLEKS                       R10 R10 K4 ["createElement"]
      126 GETUPVAL                         R11 2
      127 DUPTABLE                         R12 K47 [{["Text"], ["Size"], ["TextXAlignment"], ["LayoutOrder"] = 3}]
      128 LOADK                            R20 K3 ["TopPanel"]
      129 LOADK                            R21 K5 ["Size"]
      130 NAMECALL                         R18 R4 K24 ["getText"]
      132 CALL                             R18 3 1
      133 MOVE                             R14 R18
      134 LOADK                            R15 K25 [": "]
      135 GETUPVAL                         R18 4
      136 GETTABLEKS                       R18 R18 K48 ["round"]
      138 GETUPVAL                         R20 5
      139 GETTABLEKS                       R20 R20 K49 ["BYTES_IN_MB"]
      141 DIV                              R19 R2 R20
      142 LOADN                            R20 2
      143 CALL                             R18 2 1
      144 MOVE                             R16 R18
      145 LOADK                            R17 K50 [" MB"]
      146 CONCAT                           R13 R14 R17
      147 SETTABLEKS                       R13 R12 K19 ["Text"]
      149 GETTABLEKS                       R13 R5 K26 ["AggregateStats"]
      151 GETTABLEKS                       R13 R13 K17 ["TotalMemory"]
      153 GETTABLEKS                       R13 R13 K5 ["Size"]
      155 SETTABLEKS                       R13 R12 K5 ["Size"]
      157 GETIMPORT                        R13 K52 [Enum.TextXAlignment.Right]
      159 SETTABLEKS                       R13 R12 K20 ["TextXAlignment"]
      161 CALL                             R10 2 1
      162 SETTABLEKS                       R10 R9 K17 ["TotalMemory"]
      164 CALL                             R6 3 -1
      165 RETURN                           R6 -1

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

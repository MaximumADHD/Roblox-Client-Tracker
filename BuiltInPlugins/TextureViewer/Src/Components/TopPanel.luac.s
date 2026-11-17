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
       32 LOADK                            R17 K3 ["TopPanel"]
       33 LOADK                            R18 K23 ["Textures"]
       34 NAMECALL                         R15 R4 K24 ["getText"]
       36 CALL                             R15 3 1
       37 LOADK                            R16 K25 [": "]
       38 MOVE                             R17 R1
       39 CONCAT                           R13 R14 R17
       40 SETTABLEKS                       R13 R12 K19 ["Text"]
       42 GETTABLEKS                       R13 R5 K26 ["AggregateStats"]
       44 GETTABLEKS                       R13 R13 K15 ["NumTextures"]
       46 GETTABLEKS                       R13 R13 K5 ["Size"]
       48 SETTABLEKS                       R13 R12 K5 ["Size"]
       50 GETIMPORT                        R13 K28 [Enum.TextXAlignment.Left]
       52 SETTABLEKS                       R13 R12 K20 ["TextXAlignment"]
       54 CALL                             R10 2 1
       55 SETTABLEKS                       R10 R9 K15 ["NumTextures"]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R10 R10 K4 ["createElement"]
       60 GETUPVAL                         R11 1
       61 DUPTABLE                         R12 K32 [{["Size"], ["AnchorPoint"], ["Position"], ["LayoutOrder"] = 2}]
       62 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       64 GETTABLEKS                       R13 R13 K5 ["Size"]
       66 SETTABLEKS                       R13 R12 K5 ["Size"]
       68 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       70 GETTABLEKS                       R13 R13 K29 ["AnchorPoint"]
       72 SETTABLEKS                       R13 R12 K29 ["AnchorPoint"]
       74 GETTABLEKS                       R13 R5 K33 ["Refresh"]
       76 GETTABLEKS                       R13 R13 K30 ["Position"]
       78 SETTABLEKS                       R13 R12 K30 ["Position"]
       80 DUPTABLE                         R13 K35 [{"RefreshTextures"}]
       81 GETUPVAL                         R14 0
       82 GETTABLEKS                       R14 R14 K4 ["createElement"]
       84 GETUPVAL                         R15 3
       85 DUPTABLE                         R16 K38 [{"Text", "TextXAlignment", "LeftIcon", "Size", "OnClick"}]
       86 LOADK                            R19 K3 ["TopPanel"]
       87 LOADK                            R20 K33 ["Refresh"]
       88 NAMECALL                         R17 R4 K24 ["getText"]
       90 CALL                             R17 3 1
       91 SETTABLEKS                       R17 R16 K19 ["Text"]
       93 GETIMPORT                        R17 K40 [Enum.TextXAlignment.Center]
       95 SETTABLEKS                       R17 R16 K20 ["TextXAlignment"]
       97 GETTABLEKS                       R17 R5 K33 ["Refresh"]
       99 GETTABLEKS                       R17 R17 K41 ["Button"]
      101 GETTABLEKS                       R17 R17 K42 ["Icon"]
      103 SETTABLEKS                       R17 R16 K36 ["LeftIcon"]
      105 GETIMPORT                        R17 K45 [UDim2.fromScale]
      107 LOADN                            R18 1
      108 LOADN                            R19 1
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K5 ["Size"]
      112 NEWCLOSURE                       R17 P0
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R17 R16 K37 ["OnClick"]
      116 CALL                             R14 2 1
      117 SETTABLEKS                       R14 R13 K34 ["RefreshTextures"]
      119 CALL                             R10 3 1
      120 SETTABLEKS                       R10 R9 K16 ["RefreshWrapper"]
      122 GETUPVAL                         R10 0
      123 GETTABLEKS                       R10 R10 K4 ["createElement"]
      125 GETUPVAL                         R11 2
      126 DUPTABLE                         R12 K47 [{["Text"], ["Size"], ["TextXAlignment"], ["LayoutOrder"] = 3}]
      127 LOADK                            R16 K3 ["TopPanel"]
      128 LOADK                            R17 K5 ["Size"]
      129 NAMECALL                         R14 R4 K24 ["getText"]
      131 CALL                             R14 3 1
      132 LOADK                            R15 K25 [": "]
      133 GETUPVAL                         R16 4
      134 GETTABLEKS                       R16 R16 K48 ["round"]
      136 GETUPVAL                         R18 5
      137 GETTABLEKS                       R18 R18 K49 ["BYTES_IN_MB"]
      139 DIV                              R17 R2 R18
      140 LOADN                            R18 2
      141 CALL                             R16 2 1
      142 LOADK                            R17 K50 [" MB"]
      143 CONCAT                           R13 R14 R17
      144 SETTABLEKS                       R13 R12 K19 ["Text"]
      146 GETTABLEKS                       R13 R5 K26 ["AggregateStats"]
      148 GETTABLEKS                       R13 R13 K17 ["TotalMemory"]
      150 GETTABLEKS                       R13 R13 K5 ["Size"]
      152 SETTABLEKS                       R13 R12 K5 ["Size"]
      154 GETIMPORT                        R13 K52 [Enum.TextXAlignment.Right]
      156 SETTABLEKS                       R13 R12 K20 ["TextXAlignment"]
      158 CALL                             R10 2 1
      159 SETTABLEKS                       R10 R9 K17 ["TotalMemory"]
      161 CALL                             R6 3 -1
      162 RETURN                           R6 -1

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

PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["MetadataDialog"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R0 K2 ["Image"]
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R2 K3 ["MetadataLineHeight"]
       16 GETTABLEKS                       R6 R2 K4 ["Padding"]
       18 GETTABLEKS                       R7 R2 K5 ["Spacing"]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K6 ["new"]
       23 CALL                             R8 0 1
       24 LENGTH                           R12 R4
       25 MUL                              R11 R12 R5
       26 LENGTH                           R14 R4
       27 SUBK                             R13 R14 K7 [1]
       28 MUL                              R12 R13 R7
       29 ADD                              R10 R11 R12
       30 MULK                             R11 R6 K8 [2]
       31 ADD                              R9 R10 R11
       32 NEWTABLE                         R10 0 0
       34 MOVE                             R11 R4
       35 LOADNIL                          R12
       36 LOADNIL                          R13
       37 FORGPREP                         R11
       38 LOADK                            R17 K9 ["Metadata%*"]
       39 MOVE                             R19 R14
       40 NAMECALL                         R17 R17 K10 ["format"]
       42 CALL                             R17 2 1
       43 MOVE                             R16 R17
       44 GETUPVAL                         R17 4
       45 GETTABLEKS                       R17 R17 K11 ["createElement"]
       47 GETUPVAL                         R18 5
       48 DUPTABLE                         R19 K17 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
       49 NAMECALL                         R20 R8 K18 ["getNextOrder"]
       51 CALL                             R20 1 1
       52 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
       54 GETIMPORT                        R20 K20 [UDim2.new]
       56 LOADN                            R21 1
       57 LOADN                            R22 0
       58 LOADN                            R23 0
       59 MOVE                             R24 R5
       60 CALL                             R20 4 1
       61 SETTABLEKS                       R20 R19 K13 ["Size"]
       63 LOADK                            R21 K21 ["%*: %*"]
       64 LOADK                            R25 K2 ["Image"]
       65 GETTABLEKS                       R26 R15 K22 ["Label"]
       67 NAMECALL                         R23 R1 K23 ["getText"]
       69 CALL                             R23 3 1
       70 GETTABLEKS                       R24 R15 K24 ["Value"]
       72 NAMECALL                         R21 R21 K10 ["format"]
       74 CALL                             R21 3 1
       75 MOVE                             R20 R21
       76 SETTABLEKS                       R20 R19 K14 ["Text"]
       78 SETTABLEKS                       R5 R19 K15 ["TextSize"]
       80 GETIMPORT                        R20 K27 [Enum.TextXAlignment.Left]
       82 SETTABLEKS                       R20 R19 K16 ["TextXAlignment"]
       84 CALL                             R17 2 1
       85 SETTABLE                         R17 R10 R16
       86 FORGLOOP                         R11 2 ; [-49]
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K11 ["createElement"]
       91 GETUPVAL                         R12 6
       92 DUPTABLE                         R13 K35 [{"Title", "Size", "MinSize", "Resizable", "Enabled", "Modal", "ZIndexBehavior", "OnClose"}]
       93 LOADK                            R16 K2 ["Image"]
       94 LOADK                            R17 K36 ["ImagePreview"]
       95 NAMECALL                         R14 R1 K23 ["getText"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K28 ["Title"]
      100 GETTABLEKS                       R14 R2 K13 ["Size"]
      102 SETTABLEKS                       R14 R13 K13 ["Size"]
      104 GETTABLEKS                       R14 R2 K29 ["MinSize"]
      106 SETTABLEKS                       R14 R13 K29 ["MinSize"]
      108 LOADB                            R14 1
      109 SETTABLEKS                       R14 R13 K30 ["Resizable"]
      111 LOADB                            R14 1
      112 SETTABLEKS                       R14 R13 K31 ["Enabled"]
      114 LOADB                            R14 0
      115 SETTABLEKS                       R14 R13 K32 ["Modal"]
      117 GETIMPORT                        R14 K38 [Enum.ZIndexBehavior.Sibling]
      119 SETTABLEKS                       R14 R13 K33 ["ZIndexBehavior"]
      121 GETTABLEKS                       R14 R0 K34 ["OnClose"]
      123 SETTABLEKS                       R14 R13 K34 ["OnClose"]
      125 DUPTABLE                         R14 K40 [{"Content"}]
      126 GETUPVAL                         R15 4
      127 GETTABLEKS                       R15 R15 K11 ["createElement"]
      129 GETUPVAL                         R16 7
      130 DUPTABLE                         R17 K42 [{"Layout"}]
      131 GETIMPORT                        R18 K45 [Enum.FillDirection.Vertical]
      133 SETTABLEKS                       R18 R17 K41 ["Layout"]
      135 DUPTABLE                         R18 K48 [{"Wrapper", "Metadata"}]
      136 GETUPVAL                         R19 4
      137 GETTABLEKS                       R19 R19 K11 ["createElement"]
      139 GETUPVAL                         R20 7
      140 DUPTABLE                         R21 K52 [{"BackgroundColor", "HorizontalAlignment", "LayoutOrder", "VerticalAlignment", "Size"}]
      141 GETTABLEKS                       R22 R2 K53 ["ImageBackgroundColor"]
      143 SETTABLEKS                       R22 R21 K49 ["BackgroundColor"]
      145 GETIMPORT                        R22 K55 [Enum.HorizontalAlignment.Center]
      147 SETTABLEKS                       R22 R21 K50 ["HorizontalAlignment"]
      149 NAMECALL                         R22 R8 K18 ["getNextOrder"]
      151 CALL                             R22 1 1
      152 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      154 GETIMPORT                        R22 K56 [Enum.VerticalAlignment.Center]
      156 SETTABLEKS                       R22 R21 K51 ["VerticalAlignment"]
      158 GETIMPORT                        R22 K20 [UDim2.new]
      160 LOADN                            R23 1
      161 LOADN                            R24 0
      162 LOADN                            R25 1
      163 MINUS                            R26 R9
      164 CALL                             R22 4 1
      165 SETTABLEKS                       R22 R21 K13 ["Size"]
      167 DUPTABLE                         R22 K57 [{"Image"}]
      168 GETUPVAL                         R23 4
      169 GETTABLEKS                       R23 R23 K11 ["createElement"]
      171 GETUPVAL                         R24 8
      172 DUPTABLE                         R25 K59 [{"Image", "ScaleType"}]
      173 GETTABLEKS                       R26 R3 K60 ["Preview"]
      175 GETTABLEKS                       R26 R26 K61 ["Id"]
      177 JUMPIF                           R26 ; [+5]
      178 GETTABLEKS                       R26 R3 K62 ["File"]
      180 NAMECALL                         R26 R26 K63 ["GetTemporaryId"]
      182 CALL                             R26 1 1
      183 SETTABLEKS                       R26 R25 K2 ["Image"]
      185 GETIMPORT                        R26 K65 [Enum.ScaleType.Fit]
      187 SETTABLEKS                       R26 R25 K58 ["ScaleType"]
      189 CALL                             R23 2 1
      190 SETTABLEKS                       R23 R22 K2 ["Image"]
      192 CALL                             R19 3 1
      193 SETTABLEKS                       R19 R18 K46 ["Wrapper"]
      195 GETUPVAL                         R19 4
      196 GETTABLEKS                       R19 R19 K11 ["createElement"]
      198 GETUPVAL                         R20 7
      199 DUPTABLE                         R21 K66 [{"Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
      200 GETIMPORT                        R22 K45 [Enum.FillDirection.Vertical]
      202 SETTABLEKS                       R22 R21 K41 ["Layout"]
      204 NAMECALL                         R22 R8 K18 ["getNextOrder"]
      206 CALL                             R22 1 1
      207 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      209 SETTABLEKS                       R6 R21 K4 ["Padding"]
      211 GETIMPORT                        R22 K20 [UDim2.new]
      213 LOADN                            R23 1
      214 LOADN                            R24 0
      215 LOADN                            R25 0
      216 MOVE                             R26 R9
      217 CALL                             R22 4 1
      218 SETTABLEKS                       R22 R21 K13 ["Size"]
      220 SETTABLEKS                       R7 R21 K5 ["Spacing"]
      222 MOVE                             R22 R10
      223 CALL                             R19 3 1
      224 SETTABLEKS                       R19 R18 K47 ["Metadata"]
      226 CALL                             R15 3 1
      227 SETTABLEKS                       R15 R14 K39 ["Content"]
      229 CALL                             R11 3 -1
      230 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R3 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R1 K12 ["UI"]
       29 GETTABLEKS                       R7 R6 K13 ["Dialog"]
       31 GETTABLEKS                       R8 R6 K14 ["Image"]
       33 GETTABLEKS                       R9 R6 K15 ["Pane"]
       35 GETTABLEKS                       R10 R6 K16 ["TextLabel"]
       37 GETTABLEKS                       R11 R1 K17 ["Util"]
       39 GETTABLEKS                       R11 R11 K18 ["LayoutOrderIterator"]
       41 GETIMPORT                        R12 K5 [require]
       43 GETTABLEKS                       R13 R0 K19 ["Src"]
       45 GETTABLEKS                       R13 R13 K20 ["Resources"]
       47 GETTABLEKS                       R13 R13 K21 ["Theme"]
       49 CALL                             R12 1 1
       50 GETIMPORT                        R13 K5 [require]
       52 GETTABLEKS                       R14 R0 K19 ["Src"]
       54 GETTABLEKS                       R14 R14 K22 ["Types"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K5 [require]
       59 GETTABLEKS                       R15 R0 K19 ["Src"]
       61 GETTABLEKS                       R15 R15 K17 ["Util"]
       63 GETTABLEKS                       R15 R15 K23 ["getMetadata"]
       65 CALL                             R14 1 1
       66 DUPCLOSURE                       R15 K24 [PROTO_0]
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R14
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 RETURN                           R15 1

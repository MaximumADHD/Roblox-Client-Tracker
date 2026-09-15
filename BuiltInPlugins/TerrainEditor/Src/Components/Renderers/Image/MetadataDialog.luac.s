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
       38 LOADK                            R16 K9 ["Metadata%*"]
       39 MOVE                             R18 R14
       40 NAMECALL                         R16 R16 K10 ["format"]
       42 CALL                             R16 2 1
       43 GETUPVAL                         R17 4
       44 GETTABLEKS                       R17 R17 K11 ["createElement"]
       46 GETUPVAL                         R18 5
       47 DUPTABLE                         R19 K17 [{"LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
       48 NAMECALL                         R20 R8 K18 ["getNextOrder"]
       50 CALL                             R20 1 1
       51 SETTABLEKS                       R20 R19 K12 ["LayoutOrder"]
       53 GETIMPORT                        R20 K20 [UDim2.new]
       55 LOADN                            R21 1
       56 LOADN                            R22 0
       57 LOADN                            R23 0
       58 MOVE                             R24 R5
       59 CALL                             R20 4 1
       60 SETTABLEKS                       R20 R19 K13 ["Size"]
       62 LOADK                            R20 K21 ["%*: %*"]
       63 LOADK                            R24 K2 ["Image"]
       64 GETTABLEKS                       R25 R15 K22 ["Label"]
       66 NAMECALL                         R22 R1 K23 ["getText"]
       68 CALL                             R22 3 1
       69 GETTABLEKS                       R23 R15 K24 ["Value"]
       71 NAMECALL                         R20 R20 K10 ["format"]
       73 CALL                             R20 3 1
       74 SETTABLEKS                       R20 R19 K14 ["Text"]
       76 SETTABLEKS                       R5 R19 K15 ["TextSize"]
       78 GETIMPORT                        R20 K27 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R20 R19 K16 ["TextXAlignment"]
       82 CALL                             R17 2 1
       83 SETTABLE                         R17 R10 R16
       84 FORGLOOP                         R11 2 ; [-47]
       86 GETUPVAL                         R11 4
       87 GETTABLEKS                       R11 R11 K11 ["createElement"]
       89 GETUPVAL                         R12 6
       90 DUPTABLE                         R13 K37 [{["Title"], ["Size"], ["MinSize"], ["Resizable"] = True, ["Enabled"] = True, ["Modal"] = False, ["ZIndexBehavior"], ["OnClose"]}]
       91 LOADK                            R16 K2 ["Image"]
       92 LOADK                            R17 K38 ["ImagePreview"]
       93 NAMECALL                         R14 R1 K23 ["getText"]
       95 CALL                             R14 3 1
       96 SETTABLEKS                       R14 R13 K28 ["Title"]
       98 GETTABLEKS                       R14 R2 K13 ["Size"]
      100 SETTABLEKS                       R14 R13 K13 ["Size"]
      102 GETTABLEKS                       R14 R2 K29 ["MinSize"]
      104 SETTABLEKS                       R14 R13 K29 ["MinSize"]
      106 GETIMPORT                        R14 K40 [Enum.ZIndexBehavior.Sibling]
      108 SETTABLEKS                       R14 R13 K35 ["ZIndexBehavior"]
      110 GETTABLEKS                       R14 R0 K36 ["OnClose"]
      112 SETTABLEKS                       R14 R13 K36 ["OnClose"]
      114 DUPTABLE                         R14 K42 [{"Content"}]
      115 GETUPVAL                         R15 4
      116 GETTABLEKS                       R15 R15 K11 ["createElement"]
      118 GETUPVAL                         R16 7
      119 DUPTABLE                         R17 K44 [{"Layout"}]
      120 GETIMPORT                        R18 K47 [Enum.FillDirection.Vertical]
      122 SETTABLEKS                       R18 R17 K43 ["Layout"]
      124 DUPTABLE                         R18 K50 [{"Wrapper", "Metadata"}]
      125 GETUPVAL                         R19 4
      126 GETTABLEKS                       R19 R19 K11 ["createElement"]
      128 GETUPVAL                         R20 7
      129 DUPTABLE                         R21 K54 [{"BackgroundColor", "HorizontalAlignment", "LayoutOrder", "VerticalAlignment", "Size"}]
      130 GETTABLEKS                       R22 R2 K55 ["ImageBackgroundColor"]
      132 SETTABLEKS                       R22 R21 K51 ["BackgroundColor"]
      134 GETIMPORT                        R22 K57 [Enum.HorizontalAlignment.Center]
      136 SETTABLEKS                       R22 R21 K52 ["HorizontalAlignment"]
      138 NAMECALL                         R22 R8 K18 ["getNextOrder"]
      140 CALL                             R22 1 1
      141 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      143 GETIMPORT                        R22 K58 [Enum.VerticalAlignment.Center]
      145 SETTABLEKS                       R22 R21 K53 ["VerticalAlignment"]
      147 GETIMPORT                        R22 K20 [UDim2.new]
      149 LOADN                            R23 1
      150 LOADN                            R24 0
      151 LOADN                            R25 1
      152 MINUS                            R26 R9
      153 CALL                             R22 4 1
      154 SETTABLEKS                       R22 R21 K13 ["Size"]
      156 DUPTABLE                         R22 K59 [{"Image"}]
      157 GETUPVAL                         R23 4
      158 GETTABLEKS                       R23 R23 K11 ["createElement"]
      160 GETUPVAL                         R24 8
      161 DUPTABLE                         R25 K61 [{"Image", "ScaleType"}]
      162 GETTABLEKS                       R26 R3 K62 ["Preview"]
      164 GETTABLEKS                       R26 R26 K63 ["Id"]
      166 JUMPIF                           R26 ; [+5]
      167 GETTABLEKS                       R26 R3 K64 ["File"]
      169 NAMECALL                         R26 R26 K65 ["GetTemporaryId"]
      171 CALL                             R26 1 1
      172 SETTABLEKS                       R26 R25 K2 ["Image"]
      174 GETIMPORT                        R26 K67 [Enum.ScaleType.Fit]
      176 SETTABLEKS                       R26 R25 K60 ["ScaleType"]
      178 CALL                             R23 2 1
      179 SETTABLEKS                       R23 R22 K2 ["Image"]
      181 CALL                             R19 3 1
      182 SETTABLEKS                       R19 R18 K48 ["Wrapper"]
      184 GETUPVAL                         R19 4
      185 GETTABLEKS                       R19 R19 K11 ["createElement"]
      187 GETUPVAL                         R20 7
      188 DUPTABLE                         R21 K68 [{"Layout", "LayoutOrder", "Padding", "Size", "Spacing"}]
      189 GETIMPORT                        R22 K47 [Enum.FillDirection.Vertical]
      191 SETTABLEKS                       R22 R21 K43 ["Layout"]
      193 NAMECALL                         R22 R8 K18 ["getNextOrder"]
      195 CALL                             R22 1 1
      196 SETTABLEKS                       R22 R21 K12 ["LayoutOrder"]
      198 SETTABLEKS                       R6 R21 K4 ["Padding"]
      200 GETIMPORT                        R22 K20 [UDim2.new]
      202 LOADN                            R23 1
      203 LOADN                            R24 0
      204 LOADN                            R25 0
      205 MOVE                             R26 R9
      206 CALL                             R22 4 1
      207 SETTABLEKS                       R22 R21 K13 ["Size"]
      209 SETTABLEKS                       R7 R21 K5 ["Spacing"]
      211 MOVE                             R22 R10
      212 CALL                             R19 3 1
      213 SETTABLEKS                       R19 R18 K49 ["Metadata"]
      215 CALL                             R15 3 1
      216 SETTABLEKS                       R15 R14 K41 ["Content"]
      218 CALL                             R11 3 -1
      219 RETURN                           R11 -1

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

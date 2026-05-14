PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETTABLEKS                       R4 R1 K3 ["Header"]
        8 GETTABLEKS                       R5 R1 K4 ["Description"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 LOADN                            R7 254
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K6 ["createElement"]
       18 GETUPVAL                         R8 2
       19 DUPTABLE                         R9 K8 [{"Buttons", "OnResult"}]
       20 SETTABLEKS                       R3 R9 K2 ["Buttons"]
       22 GETTABLEKS                       R10 R1 K7 ["OnResult"]
       24 SETTABLEKS                       R10 R9 K7 ["OnResult"]
       26 DUPTABLE                         R10 K10 [{"Header", "WarningDescription"}]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R11 R11 K6 ["createElement"]
       30 LOADK                            R12 K11 ["TextLabel"]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R13 R13 K12 ["Dictionary"]
       34 GETTABLEKS                       R13 R13 K13 ["join"]
       36 GETTABLEKS                       R14 R2 K14 ["fontStyle"]
       38 GETTABLEKS                       R14 R14 K15 ["Title"]
       40 DUPTABLE                         R15 K23 [{"AutomaticSize", "Size", "AnchorPoint", "LayoutOrder", "BackgroundTransparency", "Text", "TextXAlignment"}]
       41 GETIMPORT                        R16 K26 [Enum.AutomaticSize.Y]
       43 SETTABLEKS                       R16 R15 K16 ["AutomaticSize"]
       45 GETIMPORT                        R16 K28 [UDim2.new]
       47 LOADN                            R17 1
       48 GETTABLEKS                       R18 R2 K29 ["warningDialog"]
       50 GETTABLEKS                       R18 R18 K30 ["headerOffset"]
       52 LOADN                            R19 0
       53 LOADN                            R20 0
       54 CALL                             R16 4 1
       55 SETTABLEKS                       R16 R15 K17 ["Size"]
       57 GETIMPORT                        R16 K32 [Vector2.new]
       59 LOADK                            R17 K33 [0.5]
       60 LOADN                            R18 0
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K18 ["AnchorPoint"]
       64 NAMECALL                         R16 R6 K34 ["getNextOrder"]
       66 CALL                             R16 1 1
       67 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       69 LOADN                            R16 1
       70 SETTABLEKS                       R16 R15 K20 ["BackgroundTransparency"]
       72 SETTABLEKS                       R4 R15 K21 ["Text"]
       74 GETIMPORT                        R16 K36 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R16 R15 K22 ["TextXAlignment"]
       78 CALL                             R13 2 -1
       79 CALL                             R11 -1 1
       80 SETTABLEKS                       R11 R10 K3 ["Header"]
       82 GETUPVAL                         R11 1
       83 GETTABLEKS                       R11 R11 K6 ["createElement"]
       85 LOADK                            R12 K37 ["Frame"]
       86 DUPTABLE                         R13 K39 [{"AutomaticSize", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
       87 GETIMPORT                        R14 K41 [Enum.AutomaticSize.XY]
       89 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
       91 LOADN                            R14 1
       92 SETTABLEKS                       R14 R13 K20 ["BackgroundTransparency"]
       94 LOADN                            R14 0
       95 SETTABLEKS                       R14 R13 K38 ["BorderSizePixel"]
       97 NAMECALL                         R14 R6 K34 ["getNextOrder"]
       99 CALL                             R14 1 1
      100 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
      102 DUPTABLE                         R14 K44 [{"UILayout", "Warning", "Description"}]
      103 GETUPVAL                         R15 1
      104 GETTABLEKS                       R15 R15 K6 ["createElement"]
      106 LOADK                            R16 K45 ["UIListLayout"]
      107 DUPTABLE                         R17 K50 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
      108 GETIMPORT                        R18 K52 [Enum.FillDirection.Horizontal]
      110 SETTABLEKS                       R18 R17 K46 ["FillDirection"]
      112 GETIMPORT                        R18 K54 [UDim.new]
      114 LOADN                            R19 0
      115 GETTABLEKS                       R20 R2 K55 ["dialog"]
      117 GETTABLEKS                       R20 R20 K56 ["spacing"]
      119 CALL                             R18 2 1
      120 SETTABLEKS                       R18 R17 K47 ["Padding"]
      122 GETIMPORT                        R18 K57 [Enum.SortOrder.LayoutOrder]
      124 SETTABLEKS                       R18 R17 K48 ["SortOrder"]
      126 GETIMPORT                        R18 K59 [Enum.VerticalAlignment.Center]
      128 SETTABLEKS                       R18 R17 K49 ["VerticalAlignment"]
      130 CALL                             R15 2 1
      131 SETTABLEKS                       R15 R14 K42 ["UILayout"]
      133 GETUPVAL                         R15 1
      134 GETTABLEKS                       R15 R15 K6 ["createElement"]
      136 LOADK                            R16 K60 ["ImageLabel"]
      137 DUPTABLE                         R17 K62 [{"Image", "LayoutOrder", "BackgroundTransparency", "Size"}]
      138 GETUPVAL                         R18 4
      139 GETTABLEKS                       R18 R18 K63 ["WARNING_IMAGE"]
      141 SETTABLEKS                       R18 R17 K61 ["Image"]
      143 NAMECALL                         R18 R6 K34 ["getNextOrder"]
      145 CALL                             R18 1 1
      146 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      148 LOADN                            R18 1
      149 SETTABLEKS                       R18 R17 K20 ["BackgroundTransparency"]
      151 GETIMPORT                        R18 K28 [UDim2.new]
      153 LOADN                            R19 0
      154 GETTABLEKS                       R20 R2 K29 ["warningDialog"]
      156 GETTABLEKS                       R20 R20 K64 ["icon"]
      158 GETTABLEKS                       R20 R20 K65 ["size"]
      160 LOADN                            R21 0
      161 GETTABLEKS                       R22 R2 K29 ["warningDialog"]
      163 GETTABLEKS                       R22 R22 K64 ["icon"]
      165 GETTABLEKS                       R22 R22 K65 ["size"]
      167 CALL                             R18 4 1
      168 SETTABLEKS                       R18 R17 K17 ["Size"]
      170 CALL                             R15 2 1
      171 SETTABLEKS                       R15 R14 K43 ["Warning"]
      173 GETUPVAL                         R15 1
      174 GETTABLEKS                       R15 R15 K6 ["createElement"]
      176 LOADK                            R16 K11 ["TextLabel"]
      177 GETUPVAL                         R17 3
      178 GETTABLEKS                       R17 R17 K12 ["Dictionary"]
      180 GETTABLEKS                       R17 R17 K13 ["join"]
      182 GETTABLEKS                       R18 R2 K14 ["fontStyle"]
      184 GETTABLEKS                       R18 R18 K43 ["Warning"]
      186 DUPTABLE                         R19 K67 [{"AutomaticSize", "LayoutOrder", "Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextWrapped"}]
      187 GETIMPORT                        R20 K26 [Enum.AutomaticSize.Y]
      189 SETTABLEKS                       R20 R19 K16 ["AutomaticSize"]
      191 NAMECALL                         R20 R6 K34 ["getNextOrder"]
      193 CALL                             R20 1 1
      194 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      196 GETIMPORT                        R20 K28 [UDim2.new]
      198 LOADN                            R21 0
      199 GETTABLEKS                       R22 R2 K29 ["warningDialog"]
      201 GETTABLEKS                       R22 R22 K68 ["description"]
      203 GETTABLEKS                       R22 R22 K69 ["length"]
      205 LOADN                            R23 0
      206 LOADN                            R24 0
      207 CALL                             R20 4 1
      208 SETTABLEKS                       R20 R19 K17 ["Size"]
      210 LOADN                            R20 1
      211 SETTABLEKS                       R20 R19 K20 ["BackgroundTransparency"]
      213 SETTABLEKS                       R5 R19 K21 ["Text"]
      215 GETIMPORT                        R20 K36 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R20 R19 K22 ["TextXAlignment"]
      219 LOADB                            R20 1
      220 SETTABLEKS                       R20 R19 K66 ["TextWrapped"]
      222 CALL                             R17 2 -1
      223 CALL                             R15 -1 1
      224 SETTABLEKS                       R15 R14 K4 ["Description"]
      226 CALL                             R11 3 1
      227 SETTABLEKS                       R11 R10 K9 ["WarningDescription"]
      229 CALL                             R7 3 -1
      230 RETURN                           R7 -1

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
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Framework"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Util"]
       34 GETTABLEKS                       R5 R4 K10 ["LayoutOrderIterator"]
       36 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K12 ["withContext"]
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R9 K9 ["Util"]
       46 GETTABLEKS                       R9 R9 K14 ["DEPRECATED_Constants"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K4 [require]
       51 GETTABLEKS                       R10 R0 K13 ["Src"]
       53 GETTABLEKS                       R10 R10 K15 ["Components"]
       55 GETTABLEKS                       R10 R10 K16 ["Dialog"]
       57 GETTABLEKS                       R10 R10 K17 ["BaseDialog"]
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R1 K18 ["PureComponent"]
       62 LOADK                            R12 K19 ["WarningDialog"]
       63 NAMECALL                         R10 R10 K20 ["extend"]
       65 CALL                             R10 2 1
       66 DUPCLOSURE                       R11 K21 [PROTO_0]
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R11 R10 K22 ["render"]
       74 MOVE                             R11 R7
       75 DUPTABLE                         R12 K24 [{"Stylizer"}]
       76 GETTABLEKS                       R13 R6 K23 ["Stylizer"]
       78 SETTABLEKS                       R13 R12 K23 ["Stylizer"]
       80 CALL                             R11 1 1
       81 MOVE                             R12 R10
       82 CALL                             R11 1 1
       83 MOVE                             R10 R11
       84 RETURN                           R10 1

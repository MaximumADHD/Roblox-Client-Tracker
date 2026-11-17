PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Buttons"]
        6 GETTABLEKS                       R4 R1 K3 ["Header"]
        8 GETTABLEKS                       R5 R1 K4 ["Description"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["new"]
       13 LOADN                            R7 -2
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
       40 DUPTABLE                         R15 K24 [{["AutomaticSize"], ["Size"], ["AnchorPoint"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
       41 GETIMPORT                        R16 K27 [Enum.AutomaticSize.Y]
       43 SETTABLEKS                       R16 R15 K16 ["AutomaticSize"]
       45 GETIMPORT                        R16 K29 [UDim2.new]
       47 LOADN                            R17 1
       48 GETTABLEKS                       R18 R2 K30 ["warningDialog"]
       50 GETTABLEKS                       R18 R18 K31 ["headerOffset"]
       52 LOADN                            R19 0
       53 LOADN                            R20 0
       54 CALL                             R16 4 1
       55 SETTABLEKS                       R16 R15 K17 ["Size"]
       57 GETIMPORT                        R16 K33 [Vector2.new]
       59 LOADK                            R17 K34 [0.5]
       60 LOADN                            R18 0
       61 CALL                             R16 2 1
       62 SETTABLEKS                       R16 R15 K18 ["AnchorPoint"]
       64 NAMECALL                         R16 R6 K35 ["getNextOrder"]
       66 CALL                             R16 1 1
       67 SETTABLEKS                       R16 R15 K19 ["LayoutOrder"]
       69 SETTABLEKS                       R4 R15 K22 ["Text"]
       71 GETIMPORT                        R16 K37 [Enum.TextXAlignment.Left]
       73 SETTABLEKS                       R16 R15 K23 ["TextXAlignment"]
       75 CALL                             R13 2 -1
       76 CALL                             R11 -1 1
       77 SETTABLEKS                       R11 R10 K3 ["Header"]
       79 GETUPVAL                         R11 1
       80 GETTABLEKS                       R11 R11 K6 ["createElement"]
       82 LOADK                            R12 K38 ["Frame"]
       83 DUPTABLE                         R13 K41 [{["AutomaticSize"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
       84 GETIMPORT                        R14 K43 [Enum.AutomaticSize.XY]
       86 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
       88 NAMECALL                         R14 R6 K35 ["getNextOrder"]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R14 R13 K19 ["LayoutOrder"]
       93 DUPTABLE                         R14 K46 [{"UILayout", "Warning", "Description"}]
       94 GETUPVAL                         R15 1
       95 GETTABLEKS                       R15 R15 K6 ["createElement"]
       97 LOADK                            R16 K47 ["UIListLayout"]
       98 DUPTABLE                         R17 K52 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       99 GETIMPORT                        R18 K54 [Enum.FillDirection.Horizontal]
      101 SETTABLEKS                       R18 R17 K48 ["FillDirection"]
      103 GETIMPORT                        R18 K56 [UDim.new]
      105 LOADN                            R19 0
      106 GETTABLEKS                       R20 R2 K57 ["dialog"]
      108 GETTABLEKS                       R20 R20 K58 ["spacing"]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K49 ["Padding"]
      113 GETIMPORT                        R18 K59 [Enum.SortOrder.LayoutOrder]
      115 SETTABLEKS                       R18 R17 K50 ["SortOrder"]
      117 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Center]
      119 SETTABLEKS                       R18 R17 K51 ["VerticalAlignment"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K44 ["UILayout"]
      124 GETUPVAL                         R15 1
      125 GETTABLEKS                       R15 R15 K6 ["createElement"]
      127 LOADK                            R16 K62 ["ImageLabel"]
      128 DUPTABLE                         R17 K64 [{["Image"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"]}]
      129 GETUPVAL                         R18 4
      130 GETTABLEKS                       R18 R18 K65 ["WARNING_IMAGE"]
      132 SETTABLEKS                       R18 R17 K63 ["Image"]
      134 NAMECALL                         R18 R6 K35 ["getNextOrder"]
      136 CALL                             R18 1 1
      137 SETTABLEKS                       R18 R17 K19 ["LayoutOrder"]
      139 GETIMPORT                        R18 K29 [UDim2.new]
      141 LOADN                            R19 0
      142 GETTABLEKS                       R20 R2 K30 ["warningDialog"]
      144 GETTABLEKS                       R20 R20 K66 ["icon"]
      146 GETTABLEKS                       R20 R20 K67 ["size"]
      148 LOADN                            R21 0
      149 GETTABLEKS                       R22 R2 K30 ["warningDialog"]
      151 GETTABLEKS                       R22 R22 K66 ["icon"]
      153 GETTABLEKS                       R22 R22 K67 ["size"]
      155 CALL                             R18 4 1
      156 SETTABLEKS                       R18 R17 K17 ["Size"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K45 ["Warning"]
      161 GETUPVAL                         R15 1
      162 GETTABLEKS                       R15 R15 K6 ["createElement"]
      164 LOADK                            R16 K11 ["TextLabel"]
      165 GETUPVAL                         R17 3
      166 GETTABLEKS                       R17 R17 K12 ["Dictionary"]
      168 GETTABLEKS                       R17 R17 K13 ["join"]
      170 GETTABLEKS                       R18 R2 K14 ["fontStyle"]
      172 GETTABLEKS                       R18 R18 K45 ["Warning"]
      174 DUPTABLE                         R19 K70 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
      175 GETIMPORT                        R20 K27 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R20 R19 K16 ["AutomaticSize"]
      179 NAMECALL                         R20 R6 K35 ["getNextOrder"]
      181 CALL                             R20 1 1
      182 SETTABLEKS                       R20 R19 K19 ["LayoutOrder"]
      184 GETIMPORT                        R20 K29 [UDim2.new]
      186 LOADN                            R21 0
      187 GETTABLEKS                       R22 R2 K30 ["warningDialog"]
      189 GETTABLEKS                       R22 R22 K71 ["description"]
      191 GETTABLEKS                       R22 R22 K72 ["length"]
      193 LOADN                            R23 0
      194 LOADN                            R24 0
      195 CALL                             R20 4 1
      196 SETTABLEKS                       R20 R19 K17 ["Size"]
      198 SETTABLEKS                       R5 R19 K22 ["Text"]
      200 GETIMPORT                        R20 K37 [Enum.TextXAlignment.Left]
      202 SETTABLEKS                       R20 R19 K23 ["TextXAlignment"]
      204 CALL                             R17 2 -1
      205 CALL                             R15 -1 1
      206 SETTABLEKS                       R15 R14 K4 ["Description"]
      208 CALL                             R11 3 1
      209 SETTABLEKS                       R11 R10 K9 ["WarningDescription"]
      211 CALL                             R7 3 -1
      212 RETURN                           R7 -1

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

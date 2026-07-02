PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R2 R2 K1 ["use"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K2 ["CreatorName"]
       12 GETTABLEKS                       R4 R0 K3 ["Name"]
       14 GETTABLEKS                       R5 R0 K4 ["OnButtonClicked"]
       16 GETTABLEKS                       R6 R0 K5 ["OnClose"]
       18 GETTABLEKS                       R7 R0 K6 ["Price"]
       20 GETTABLEKS                       R8 R0 K7 ["Thumbnail"]
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R9 R9 K8 ["new"]
       25 CALL                             R9 0 1
       26 GETUPVAL                         R11 3
       27 GETTABLEKS                       R11 R11 K9 ["IMAGE_SIZE"]
       29 GETTABLEKS                       R11 R11 K10 ["X"]
       31 GETTABLEKS                       R11 R11 K11 ["Offset"]
       33 GETUPVAL                         R12 3
       34 GETTABLEKS                       R12 R12 K12 ["PROMPT_SIZE"]
       36 GETTABLEKS                       R12 R12 K10 ["X"]
       38 GETTABLEKS                       R12 R12 K11 ["Offset"]
       40 ADD                              R10 R11 R12
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R12 R12 K12 ["PROMPT_SIZE"]
       44 GETTABLEKS                       R12 R12 K13 ["Y"]
       46 GETTABLEKS                       R12 R12 K11 ["Offset"]
       48 GETUPVAL                         R13 3
       49 GETTABLEKS                       R13 R13 K14 ["BALANCE_SIZE"]
       51 GETTABLEKS                       R13 R13 K13 ["Y"]
       53 GETTABLEKS                       R13 R13 K11 ["Offset"]
       55 ADD                              R11 R12 R13
       56 GETUPVAL                         R12 4
       57 GETTABLEKS                       R12 R12 K15 ["createElement"]
       59 GETUPVAL                         R13 5
       60 DUPTABLE                         R14 K20 [{"Buttons", "MinContentSize", "OnButtonPressed", "OnClose", "Title"}]
       61 NEWTABLE                         R15 0 2
       63 DUPTABLE                         R16 K24 [{["Key"] = False, ["Text"]}]
       64 LOADK                            R19 K25 ["Purchase"]
       65 LOADK                            R20 K26 ["Cancel"]
       66 NAMECALL                         R17 R1 K27 ["getText"]
       68 CALL                             R17 3 1
       69 SETTABLEKS                       R17 R16 K23 ["Text"]
       71 DUPTABLE                         R17 K31 [{["Key"] = True, ["Style"] = "RoundPrimary", ["Text"]}]
       72 LOADK                            R20 K25 ["Purchase"]
       73 LOADK                            R21 K32 ["Buy"]
       74 NAMECALL                         R18 R1 K27 ["getText"]
       76 CALL                             R18 3 1
       77 SETTABLEKS                       R18 R17 K23 ["Text"]
       79 SETLIST                          R15 R16 2 [1]
       81 SETTABLEKS                       R15 R14 K16 ["Buttons"]
       83 GETIMPORT                        R15 K34 [Vector2.new]
       85 MOVE                             R16 R10
       86 MOVE                             R17 R11
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K17 ["MinContentSize"]
       90 SETTABLEKS                       R5 R14 K18 ["OnButtonPressed"]
       92 SETTABLEKS                       R6 R14 K5 ["OnClose"]
       94 LOADK                            R17 K25 ["Purchase"]
       95 LOADK                            R18 K35 ["BuyTitle"]
       96 NAMECALL                         R15 R1 K27 ["getText"]
       98 CALL                             R15 3 1
       99 SETTABLEKS                       R15 R14 K19 ["Title"]
      101 DUPTABLE                         R15 K37 [{"Container"}]
      102 GETUPVAL                         R16 4
      103 GETTABLEKS                       R16 R16 K15 ["createElement"]
      105 GETUPVAL                         R17 6
      106 DUPTABLE                         R18 K44 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 12, ["VerticalAlignment"]}]
      107 GETIMPORT                        R19 K47 [Enum.AutomaticSize.XY]
      109 SETTABLEKS                       R19 R18 K38 ["AutomaticSize"]
      111 GETIMPORT                        R19 K50 [Enum.FillDirection.Horizontal]
      113 SETTABLEKS                       R19 R18 K39 ["Layout"]
      115 GETTABLEKS                       R19 R0 K40 ["LayoutOrder"]
      117 SETTABLEKS                       R19 R18 K40 ["LayoutOrder"]
      119 GETIMPORT                        R19 K52 [Enum.VerticalAlignment.Top]
      121 SETTABLEKS                       R19 R18 K43 ["VerticalAlignment"]
      123 DUPTABLE                         R19 K54 [{"Thumbnail", "Prompt"}]
      124 GETUPVAL                         R20 4
      125 GETTABLEKS                       R20 R20 K15 ["createElement"]
      127 LOADK                            R21 K55 ["ImageLabel"]
      128 DUPTABLE                         R22 K60 [{["BackgroundTransparency"] = 1, ["Image"], ["LayoutOrder"], ["Size"]}]
      129 SETTABLEKS                       R8 R22 K58 ["Image"]
      131 NAMECALL                         R23 R9 K61 ["getNextOrder"]
      133 CALL                             R23 1 1
      134 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      136 GETUPVAL                         R23 3
      137 GETTABLEKS                       R23 R23 K9 ["IMAGE_SIZE"]
      139 SETTABLEKS                       R23 R22 K59 ["Size"]
      141 CALL                             R20 2 1
      142 SETTABLEKS                       R20 R19 K7 ["Thumbnail"]
      144 GETUPVAL                         R20 4
      145 GETTABLEKS                       R20 R20 K15 ["createElement"]
      147 GETUPVAL                         R21 7
      148 DUPTABLE                         R22 K66 [{["AutomaticSize"], ["Size"], ["LayoutOrder"], ["Text"], ["TextColor"], ["TextWrapped"] = True, ["TextXAlignment"], ["TextYAlignment"]}]
      149 GETIMPORT                        R23 K67 [Enum.AutomaticSize.Y]
      151 SETTABLEKS                       R23 R22 K38 ["AutomaticSize"]
      153 GETIMPORT                        R23 K69 [UDim2.new]
      155 LOADN                            R24 0
      156 GETUPVAL                         R25 3
      157 GETTABLEKS                       R25 R25 K12 ["PROMPT_SIZE"]
      159 GETTABLEKS                       R25 R25 K10 ["X"]
      161 GETTABLEKS                       R25 R25 K11 ["Offset"]
      163 LOADN                            R26 0
      164 LOADN                            R27 0
      165 CALL                             R23 4 1
      166 SETTABLEKS                       R23 R22 K59 ["Size"]
      168 NAMECALL                         R23 R9 K61 ["getNextOrder"]
      170 CALL                             R23 1 1
      171 SETTABLEKS                       R23 R22 K40 ["LayoutOrder"]
      173 LOADK                            R25 K25 ["Purchase"]
      174 LOADK                            R26 K70 ["FiatBuyPrompt"]
      175 DUPTABLE                         R27 K74 [{"name", "creator", "price"}]
      176 SETTABLEKS                       R4 R27 K71 ["name"]
      178 SETTABLEKS                       R3 R27 K72 ["creator"]
      180 SETTABLEKS                       R7 R27 K73 ["price"]
      182 NAMECALL                         R23 R1 K27 ["getText"]
      184 CALL                             R23 4 1
      185 SETTABLEKS                       R23 R22 K23 ["Text"]
      187 GETTABLEKS                       R23 R2 K75 ["purchaseDialog"]
      189 GETTABLEKS                       R23 R23 K76 ["promptText"]
      191 SETTABLEKS                       R23 R22 K62 ["TextColor"]
      193 GETIMPORT                        R23 K78 [Enum.TextXAlignment.Left]
      195 SETTABLEKS                       R23 R22 K64 ["TextXAlignment"]
      197 GETIMPORT                        R23 K79 [Enum.TextYAlignment.Top]
      199 SETTABLEKS                       R23 R22 K65 ["TextYAlignment"]
      201 CALL                             R20 2 1
      202 SETTABLEKS                       R20 R19 K53 ["Prompt"]
      204 CALL                             R16 3 1
      205 SETTABLEKS                       R16 R15 K36 ["Container"]
      207 CALL                             R12 3 -1
      208 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R5 R3 K9 ["UI"]
       23 GETTABLEKS                       R5 R5 K10 ["Pane"]
       25 GETTABLEKS                       R6 R4 K11 ["StyledDialog"]
       27 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       29 GETIMPORT                        R8 K6 [require]
       31 GETTABLEKS                       R9 R0 K13 ["Src"]
       33 GETTABLEKS                       R9 R9 K14 ["Components"]
       35 GETTABLEKS                       R9 R9 K15 ["PurchaseFlow"]
       37 GETTABLEKS                       R9 R9 K16 ["PurchaseDialog"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K17 ["Util"]
       44 GETIMPORT                        R10 K6 [require]
       46 GETTABLEKS                       R11 R9 K18 ["Constants"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K6 [require]
       51 GETTABLEKS                       R12 R9 K19 ["LayoutOrderIterator"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R10 K20 ["Dialog"]
       56 GETTABLEKS                       R13 R3 K21 ["ContextServices"]
       58 GETTABLEKS                       R13 R13 K22 ["Stylizer"]
       60 GETTABLEKS                       R14 R3 K21 ["ContextServices"]
       62 GETTABLEKS                       R15 R14 K23 ["withContext"]
       64 GETIMPORT                        R16 K6 [require]
       66 GETTABLEKS                       R17 R0 K13 ["Src"]
       68 GETTABLEKS                       R17 R17 K24 ["Types"]
       70 GETTABLEKS                       R17 R17 K25 ["MarketplaceFiatServiceTypes"]
       72 CALL                             R16 1 1
       73 DUPCLOSURE                       R17 K26 [PROTO_0]
       74 CAPTURE                          VAL R14
       75 CAPTURE                          VAL R13
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R7
       82 RETURN                           R17 1

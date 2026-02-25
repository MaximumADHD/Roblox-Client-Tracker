PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
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
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R9 R10 K8 ["new"]
       25 CALL                             R9 0 1
       26 GETUPVAL                         R14 3
       27 GETTABLEKS                       R13 R14 K9 ["IMAGE_SIZE"]
       29 GETTABLEKS                       R12 R13 K10 ["X"]
       31 GETTABLEKS                       R11 R12 K11 ["Offset"]
       33 GETUPVAL                         R15 3
       34 GETTABLEKS                       R14 R15 K12 ["PROMPT_SIZE"]
       36 GETTABLEKS                       R13 R14 K10 ["X"]
       38 GETTABLEKS                       R12 R13 K11 ["Offset"]
       40 ADD                              R10 R11 R12
       41 GETUPVAL                         R15 3
       42 GETTABLEKS                       R14 R15 K12 ["PROMPT_SIZE"]
       44 GETTABLEKS                       R13 R14 K13 ["Y"]
       46 GETTABLEKS                       R12 R13 K11 ["Offset"]
       48 GETUPVAL                         R16 3
       49 GETTABLEKS                       R15 R16 K14 ["BALANCE_SIZE"]
       51 GETTABLEKS                       R14 R15 K13 ["Y"]
       53 GETTABLEKS                       R13 R14 K11 ["Offset"]
       55 ADD                              R11 R12 R13
       56 GETUPVAL                         R13 4
       57 GETTABLEKS                       R12 R13 K15 ["createElement"]
       59 GETUPVAL                         R13 5
       60 DUPTABLE                         R14 K20 [{"Buttons", "MinContentSize", "OnButtonPressed", "OnClose", "Title"}]
       61 NEWTABLE                         R15 0 2
       63 DUPTABLE                         R16 K23 [{"Key", "Text"}]
       64 LOADB                            R17 0
       65 SETTABLEKS                       R17 R16 K21 ["Key"]
       67 LOADK                            R19 K24 ["Purchase"]
       68 LOADK                            R20 K25 ["Cancel"]
       69 NAMECALL                         R17 R1 K26 ["getText"]
       71 CALL                             R17 3 1
       72 SETTABLEKS                       R17 R16 K22 ["Text"]
       74 DUPTABLE                         R17 K28 [{"Key", "Style", "Text"}]
       75 LOADB                            R18 1
       76 SETTABLEKS                       R18 R17 K21 ["Key"]
       78 LOADK                            R18 K29 ["RoundPrimary"]
       79 SETTABLEKS                       R18 R17 K27 ["Style"]
       81 LOADK                            R20 K24 ["Purchase"]
       82 LOADK                            R21 K30 ["Buy"]
       83 NAMECALL                         R18 R1 K26 ["getText"]
       85 CALL                             R18 3 1
       86 SETTABLEKS                       R18 R17 K22 ["Text"]
       88 SETLIST                          R15 R16 2 [1]
       90 SETTABLEKS                       R15 R14 K16 ["Buttons"]
       92 GETIMPORT                        R15 K32 [Vector2.new]
       94 MOVE                             R16 R10
       95 MOVE                             R17 R11
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K17 ["MinContentSize"]
       99 SETTABLEKS                       R5 R14 K18 ["OnButtonPressed"]
      101 SETTABLEKS                       R6 R14 K5 ["OnClose"]
      103 LOADK                            R17 K24 ["Purchase"]
      104 LOADK                            R18 K33 ["BuyTitle"]
      105 NAMECALL                         R15 R1 K26 ["getText"]
      107 CALL                             R15 3 1
      108 SETTABLEKS                       R15 R14 K19 ["Title"]
      110 DUPTABLE                         R15 K35 [{"Container"}]
      111 GETUPVAL                         R17 4
      112 GETTABLEKS                       R16 R17 K15 ["createElement"]
      114 GETUPVAL                         R17 6
      115 DUPTABLE                         R18 K41 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "VerticalAlignment"}]
      116 GETIMPORT                        R19 K44 [Enum.AutomaticSize.XY]
      118 SETTABLEKS                       R19 R18 K36 ["AutomaticSize"]
      120 GETIMPORT                        R19 K47 [Enum.FillDirection.Horizontal]
      122 SETTABLEKS                       R19 R18 K37 ["Layout"]
      124 GETTABLEKS                       R19 R0 K38 ["LayoutOrder"]
      126 SETTABLEKS                       R19 R18 K38 ["LayoutOrder"]
      128 LOADN                            R19 12
      129 SETTABLEKS                       R19 R18 K39 ["Spacing"]
      131 GETIMPORT                        R19 K49 [Enum.VerticalAlignment.Top]
      133 SETTABLEKS                       R19 R18 K40 ["VerticalAlignment"]
      135 DUPTABLE                         R19 K51 [{"Thumbnail", "Prompt"}]
      136 GETUPVAL                         R21 4
      137 GETTABLEKS                       R20 R21 K15 ["createElement"]
      139 LOADK                            R21 K52 ["ImageLabel"]
      140 DUPTABLE                         R22 K56 [{"BackgroundTransparency", "Image", "LayoutOrder", "Size"}]
      141 LOADN                            R23 1
      142 SETTABLEKS                       R23 R22 K53 ["BackgroundTransparency"]
      144 SETTABLEKS                       R8 R22 K54 ["Image"]
      146 NAMECALL                         R23 R9 K57 ["getNextOrder"]
      148 CALL                             R23 1 1
      149 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      151 GETUPVAL                         R24 3
      152 GETTABLEKS                       R23 R24 K9 ["IMAGE_SIZE"]
      154 SETTABLEKS                       R23 R22 K55 ["Size"]
      156 CALL                             R20 2 1
      157 SETTABLEKS                       R20 R19 K7 ["Thumbnail"]
      159 GETUPVAL                         R21 4
      160 GETTABLEKS                       R20 R21 K15 ["createElement"]
      162 GETUPVAL                         R21 7
      163 DUPTABLE                         R22 K62 [{"AutomaticSize", "Size", "LayoutOrder", "Text", "TextColor", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      164 GETIMPORT                        R23 K63 [Enum.AutomaticSize.Y]
      166 SETTABLEKS                       R23 R22 K36 ["AutomaticSize"]
      168 GETIMPORT                        R23 K65 [UDim2.new]
      170 LOADN                            R24 0
      171 GETUPVAL                         R28 3
      172 GETTABLEKS                       R27 R28 K12 ["PROMPT_SIZE"]
      174 GETTABLEKS                       R26 R27 K10 ["X"]
      176 GETTABLEKS                       R25 R26 K11 ["Offset"]
      178 LOADN                            R26 0
      179 LOADN                            R27 0
      180 CALL                             R23 4 1
      181 SETTABLEKS                       R23 R22 K55 ["Size"]
      183 NAMECALL                         R23 R9 K57 ["getNextOrder"]
      185 CALL                             R23 1 1
      186 SETTABLEKS                       R23 R22 K38 ["LayoutOrder"]
      188 LOADK                            R25 K24 ["Purchase"]
      189 LOADK                            R26 K66 ["FiatBuyPrompt"]
      190 DUPTABLE                         R27 K70 [{"name", "creator", "price"}]
      191 SETTABLEKS                       R4 R27 K67 ["name"]
      193 SETTABLEKS                       R3 R27 K68 ["creator"]
      195 SETTABLEKS                       R7 R27 K69 ["price"]
      197 NAMECALL                         R23 R1 K26 ["getText"]
      199 CALL                             R23 4 1
      200 SETTABLEKS                       R23 R22 K22 ["Text"]
      202 GETTABLEKS                       R24 R2 K71 ["purchaseDialog"]
      204 GETTABLEKS                       R23 R24 K72 ["promptText"]
      206 SETTABLEKS                       R23 R22 K58 ["TextColor"]
      208 LOADB                            R23 1
      209 SETTABLEKS                       R23 R22 K59 ["TextWrapped"]
      211 GETIMPORT                        R23 K74 [Enum.TextXAlignment.Left]
      213 SETTABLEKS                       R23 R22 K60 ["TextXAlignment"]
      215 GETIMPORT                        R23 K75 [Enum.TextYAlignment.Top]
      217 SETTABLEKS                       R23 R22 K61 ["TextYAlignment"]
      219 CALL                             R20 2 1
      220 SETTABLEKS                       R20 R19 K50 ["Prompt"]
      222 CALL                             R16 3 1
      223 SETTABLEKS                       R16 R15 K34 ["Container"]
      225 CALL                             R12 3 -1
      226 RETURN                           R12 -1

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
       21 GETTABLEKS                       R6 R3 K9 ["UI"]
       23 GETTABLEKS                       R5 R6 K10 ["Pane"]
       25 GETTABLEKS                       R6 R4 K11 ["StyledDialog"]
       27 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       29 GETIMPORT                        R8 K6 [require]
       31 GETTABLEKS                       R12 R0 K13 ["Src"]
       33 GETTABLEKS                       R11 R12 K14 ["Components"]
       35 GETTABLEKS                       R10 R11 K15 ["PurchaseFlow"]
       37 GETTABLEKS                       R9 R10 K16 ["PurchaseDialog"]
       39 CALL                             R8 1 1
       40 GETTABLEKS                       R10 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R10 K17 ["Util"]
       44 GETIMPORT                        R10 K6 [require]
       46 GETTABLEKS                       R11 R9 K18 ["Constants"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K6 [require]
       51 GETTABLEKS                       R12 R9 K19 ["LayoutOrderIterator"]
       53 CALL                             R11 1 1
       54 GETTABLEKS                       R12 R10 K20 ["Dialog"]
       56 GETTABLEKS                       R14 R3 K21 ["ContextServices"]
       58 GETTABLEKS                       R13 R14 K22 ["Stylizer"]
       60 GETTABLEKS                       R14 R3 K21 ["ContextServices"]
       62 GETTABLEKS                       R15 R14 K23 ["withContext"]
       64 GETIMPORT                        R16 K6 [require]
       66 GETTABLEKS                       R19 R0 K13 ["Src"]
       68 GETTABLEKS                       R18 R19 K24 ["Types"]
       70 GETTABLEKS                       R17 R18 K25 ["MarketplaceFiatServiceTypes"]
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

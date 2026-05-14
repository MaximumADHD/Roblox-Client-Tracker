PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"dropDownIndex"}]
        2 SETTABLEKS                       R0 R3 K0 ["dropDownIndex"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["props"]
       10 GETTABLEKS                       R1 R1 K4 ["assetTypeEnum"]
       12 GETIMPORT                        R2 K8 [Enum.AssetType.Plugin]
       14 JUMPIFEQ                         R1 R2 ; [+10]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["props"]
       19 GETTABLEKS                       R1 R1 K4 ["assetTypeEnum"]
       21 GETIMPORT                        R2 K10 [Enum.AssetType.Animation]
       23 JUMPIFNOTEQ                      R1 R2 ; [+19]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K3 ["props"]
       28 GETTABLEKS                       R1 R1 K11 ["onAssetTypeSelected"]
       30 JUMPIFNOT                        R1 ; [+36]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K3 ["props"]
       34 GETTABLEKS                       R1 R1 K11 ["onAssetTypeSelected"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K3 ["props"]
       39 GETTABLEKS                       R2 R2 K4 ["assetTypeEnum"]
       41 CALL                             R1 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K3 ["props"]
       46 GETTABLEKS                       R1 R1 K11 ["onAssetTypeSelected"]
       48 JUMPIFNOT                        R1 ; [+18]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K3 ["props"]
       52 GETTABLEKS                       R2 R2 K12 ["items"]
       54 GETTABLE                         R1 R2 R0
       55 JUMPIFNOT                        R1 ; [+11]
       56 GETTABLEKS                       R2 R1 K13 ["type"]
       58 JUMPIFNOT                        R2 ; [+8]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K3 ["props"]
       62 GETTABLEKS                       R2 R2 K11 ["onAssetTypeSelected"]
       64 GETTABLEKS                       R3 R1 K13 ["type"]
       66 CALL                             R2 1 0
       67 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["onItemClicked"]
        4 GETTABLEKS                       R2 R0 K0 ["onItemClicked"]
        6 NAMECALL                         R3 R0 K1 ["getFirstSelectableIndex"]
        8 CALL                             R3 1 -1
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R3 1
        1 GETTABLEKS                       R4 R0 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["items"]
        5 LENGTH                           R1 R4
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 GETTABLEKS                       R5 R0 K0 ["props"]
       10 GETTABLEKS                       R5 R5 K1 ["items"]
       12 GETTABLE                         R4 R5 R3
       13 GETTABLEKS                       R4 R4 K2 ["selectable"]
       15 JUMPIFNOT                        R4 ; [+1]
       16 RETURN                           R3 1
       17 FORNLOOP                         R1
       18 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 LOADK                            R5 K4 ["Frame"]
       10 DUPTABLE                         R6 K9 [{"BackgroundTransparency", "Size", "Position", "Active"}]
       11 LOADN                            R7 1
       12 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       14 GETIMPORT                        R7 K12 [UDim2.new]
       16 LOADN                            R8 0
       17 GETTABLEKS                       R9 R1 K13 ["width"]
       19 LOADN                            R10 0
       20 GETTABLEKS                       R11 R1 K14 ["height"]
       22 CALL                             R7 4 1
       23 SETTABLEKS                       R7 R6 K6 ["Size"]
       25 GETTABLEKS                       R7 R1 K7 ["Position"]
       27 SETTABLEKS                       R7 R6 K7 ["Position"]
       29 LOADB                            R7 1
       30 SETTABLEKS                       R7 R6 K8 ["Active"]
       32 DUPTABLE                         R7 K18 [{"Title", "Dropdown", "Description"}]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K3 ["createElement"]
       36 LOADK                            R9 K19 ["TextLabel"]
       37 DUPTABLE                         R10 K25 [{"BackgroundTransparency", "Position", "Size", "TextColor3", "TextSize", "Font", "Text", "TextXAlignment"}]
       38 LOADN                            R11 1
       39 SETTABLEKS                       R11 R10 K5 ["BackgroundTransparency"]
       41 GETIMPORT                        R11 K12 [UDim2.new]
       43 LOADN                            R12 0
       44 LOADN                            R13 0
       45 LOADN                            R14 0
       46 LOADN                            R15 228
       47 CALL                             R11 4 1
       48 SETTABLEKS                       R11 R10 K7 ["Position"]
       50 GETIMPORT                        R11 K12 [UDim2.new]
       52 LOADN                            R12 1
       53 LOADN                            R13 0
       54 LOADN                            R14 0
       55 LOADN                            R15 24
       56 CALL                             R11 4 1
       57 SETTABLEKS                       R11 R10 K6 ["Size"]
       59 GETTABLEKS                       R11 R3 K26 ["typeSelection"]
       61 GETTABLEKS                       R11 R11 K27 ["selector"]
       63 GETTABLEKS                       R11 R11 K28 ["title"]
       65 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
       67 LOADN                            R11 16
       68 SETTABLEKS                       R11 R10 K21 ["TextSize"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K29 ["FONT"]
       73 SETTABLEKS                       R11 R10 K22 ["Font"]
       75 LOADK                            R11 K30 ["Choose asset type"]
       76 SETTABLEKS                       R11 R10 K23 ["Text"]
       78 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
       80 SETTABLEKS                       R11 R10 K24 ["TextXAlignment"]
       82 CALL                             R8 2 1
       83 SETTABLEKS                       R8 R7 K15 ["Title"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K3 ["createElement"]
       88 GETUPVAL                         R9 2
       89 DUPTABLE                         R10 K40 [{"Position", "Size", "selectedDropDownIndex", "visibleDropDOwnCount", "items", "rowHeight", "fontSize", "onItemClicked"}]
       90 GETIMPORT                        R11 K12 [UDim2.new]
       92 LOADK                            R12 K41 [0.5]
       93 GETTABLEKS                       R15 R1 K13 ["width"]
       95 MINUS                            R14 R15
       96 DIVK                             R13 R14 K42 [2]
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 CALL                             R11 4 1
      100 SETTABLEKS                       R11 R10 K7 ["Position"]
      102 GETIMPORT                        R11 K12 [UDim2.new]
      104 LOADN                            R12 1
      105 LOADN                            R13 0
      106 LOADN                            R14 1
      107 LOADN                            R15 0
      108 CALL                             R11 4 1
      109 SETTABLEKS                       R11 R10 K6 ["Size"]
      111 GETTABLEKS                       R11 R2 K43 ["dropDownIndex"]
      113 SETTABLEKS                       R11 R10 K34 ["selectedDropDownIndex"]
      115 LOADN                            R11 5
      116 SETTABLEKS                       R11 R10 K35 ["visibleDropDOwnCount"]
      118 GETTABLEKS                       R11 R0 K0 ["props"]
      120 GETTABLEKS                       R11 R11 K36 ["items"]
      122 SETTABLEKS                       R11 R10 K36 ["items"]
      124 LOADN                            R11 24
      125 SETTABLEKS                       R11 R10 K37 ["rowHeight"]
      127 LOADN                            R11 20
      128 SETTABLEKS                       R11 R10 K38 ["fontSize"]
      130 GETTABLEKS                       R11 R0 K39 ["onItemClicked"]
      132 SETTABLEKS                       R11 R10 K39 ["onItemClicked"]
      134 CALL                             R8 2 1
      135 SETTABLEKS                       R8 R7 K16 ["Dropdown"]
      137 GETUPVAL                         R8 0
      138 GETTABLEKS                       R8 R8 K3 ["createElement"]
      140 LOADK                            R9 K19 ["TextLabel"]
      141 DUPTABLE                         R10 K25 [{"BackgroundTransparency", "Position", "Size", "TextColor3", "TextSize", "Font", "Text", "TextXAlignment"}]
      142 LOADN                            R11 1
      143 SETTABLEKS                       R11 R10 K5 ["BackgroundTransparency"]
      145 GETIMPORT                        R11 K12 [UDim2.new]
      147 LOADN                            R12 0
      148 LOADN                            R13 0
      149 LOADN                            R14 1
      150 LOADN                            R15 0
      151 CALL                             R11 4 1
      152 SETTABLEKS                       R11 R10 K7 ["Position"]
      154 GETIMPORT                        R11 K12 [UDim2.new]
      156 LOADN                            R12 1
      157 LOADN                            R13 0
      158 LOADN                            R14 0
      159 LOADN                            R15 18
      160 CALL                             R11 4 1
      161 SETTABLEKS                       R11 R10 K6 ["Size"]
      163 GETTABLEKS                       R11 R3 K26 ["typeSelection"]
      165 GETTABLEKS                       R11 R11 K27 ["selector"]
      167 GETTABLEKS                       R11 R11 K44 ["description"]
      169 SETTABLEKS                       R11 R10 K20 ["TextColor3"]
      171 LOADN                            R11 12
      172 SETTABLEKS                       R11 R10 K21 ["TextSize"]
      174 GETUPVAL                         R11 1
      175 GETTABLEKS                       R11 R11 K29 ["FONT"]
      177 SETTABLEKS                       R11 R10 K22 ["Font"]
      179 LOADK                            R11 K45 ["Once published, this model can be shared in Marketplace"]
      180 SETTABLEKS                       R11 R10 K23 ["Text"]
      182 GETIMPORT                        R11 K33 [Enum.TextXAlignment.Left]
      184 SETTABLEKS                       R11 R10 K24 ["TextXAlignment"]
      186 CALL                             R8 2 1
      187 SETTABLEKS                       R8 R7 K17 ["Description"]
      189 CALL                             R4 3 -1
      190 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K9 ["Util"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K10 ["Constants"]
       31 CALL                             R5 1 1
       32 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       34 GETTABLEKS                       R7 R6 K12 ["withContext"]
       36 GETTABLEKS                       R8 R0 K8 ["Src"]
       38 GETTABLEKS                       R8 R8 K13 ["Components"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R8 K14 ["DropdownMenu"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R10 R2 K15 ["PureComponent"]
       47 LOADK                            R12 K16 ["AssetTypeSelector"]
       48 NAMECALL                         R10 R10 K17 ["extend"]
       50 CALL                             R10 2 1
       51 DUPCLOSURE                       R11 K18 [PROTO_1]
       52 SETTABLEKS                       R11 R10 K19 ["init"]
       54 DUPCLOSURE                       R11 K20 [PROTO_2]
       55 SETTABLEKS                       R11 R10 K21 ["getFirstSelectableIndex"]
       57 DUPCLOSURE                       R11 K22 [PROTO_3]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R11 R10 K23 ["render"]
       63 MOVE                             R11 R7
       64 DUPTABLE                         R12 K25 [{"Stylizer"}]
       65 GETTABLEKS                       R13 R6 K24 ["Stylizer"]
       67 SETTABLEKS                       R13 R12 K24 ["Stylizer"]
       69 CALL                             R11 1 1
       70 MOVE                             R12 R10
       71 CALL                             R11 1 1
       72 MOVE                             R10 R11
       73 RETURN                           R10 1

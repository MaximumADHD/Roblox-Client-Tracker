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
       10 DUPTABLE                         R6 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["Active"] = True}]
       11 GETIMPORT                        R7 K14 [UDim2.new]
       13 LOADN                            R8 0
       14 GETTABLEKS                       R9 R1 K15 ["width"]
       16 LOADN                            R10 0
       17 GETTABLEKS                       R11 R1 K16 ["height"]
       19 CALL                             R7 4 1
       20 SETTABLEKS                       R7 R6 K7 ["Size"]
       22 GETTABLEKS                       R7 R1 K8 ["Position"]
       24 SETTABLEKS                       R7 R6 K8 ["Position"]
       26 DUPTABLE                         R7 K20 [{"Title", "Dropdown", "Description"}]
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K3 ["createElement"]
       30 LOADK                            R9 K21 ["TextLabel"]
       31 DUPTABLE                         R10 K29 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextColor3"], ["TextSize"] = 16, ["Font"], ["Text"] = "Choose asset type", ["TextXAlignment"]}]
       32 GETIMPORT                        R11 K14 [UDim2.new]
       34 LOADN                            R12 0
       35 LOADN                            R13 0
       36 LOADN                            R14 0
       37 LOADN                            R15 -28
       38 CALL                             R11 4 1
       39 SETTABLEKS                       R11 R10 K8 ["Position"]
       41 GETIMPORT                        R11 K14 [UDim2.new]
       43 LOADN                            R12 1
       44 LOADN                            R13 0
       45 LOADN                            R14 0
       46 LOADN                            R15 24
       47 CALL                             R11 4 1
       48 SETTABLEKS                       R11 R10 K7 ["Size"]
       50 GETTABLEKS                       R11 R3 K30 ["typeSelection"]
       52 GETTABLEKS                       R11 R11 K31 ["selector"]
       54 GETTABLEKS                       R11 R11 K32 ["title"]
       56 SETTABLEKS                       R11 R10 K22 ["TextColor3"]
       58 GETUPVAL                         R11 1
       59 GETTABLEKS                       R11 R11 K33 ["FONT"]
       61 SETTABLEKS                       R11 R10 K25 ["Font"]
       63 GETIMPORT                        R11 K36 [Enum.TextXAlignment.Left]
       65 SETTABLEKS                       R11 R10 K28 ["TextXAlignment"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K17 ["Title"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K3 ["createElement"]
       73 GETUPVAL                         R9 2
       74 DUPTABLE                         R10 K46 [{["Position"], ["Size"], ["selectedDropDownIndex"], ["visibleDropDOwnCount"] = 5, ["items"], ["rowHeight"] = 24, ["fontSize"] = 20, ["onItemClicked"]}]
       75 GETIMPORT                        R11 K14 [UDim2.new]
       77 LOADK                            R12 K47 [0.5]
       78 GETTABLEKS                       R15 R1 K15 ["width"]
       80 MINUS                            R14 R15
       81 DIVK                             R13 R14 K48 [2]
       82 LOADN                            R14 0
       83 LOADN                            R15 0
       84 CALL                             R11 4 1
       85 SETTABLEKS                       R11 R10 K8 ["Position"]
       87 GETIMPORT                        R11 K14 [UDim2.new]
       89 LOADN                            R12 1
       90 LOADN                            R13 0
       91 LOADN                            R14 1
       92 LOADN                            R15 0
       93 CALL                             R11 4 1
       94 SETTABLEKS                       R11 R10 K7 ["Size"]
       96 GETTABLEKS                       R11 R2 K49 ["dropDownIndex"]
       98 SETTABLEKS                       R11 R10 K37 ["selectedDropDownIndex"]
      100 GETTABLEKS                       R11 R0 K0 ["props"]
      102 GETTABLEKS                       R11 R11 K40 ["items"]
      104 SETTABLEKS                       R11 R10 K40 ["items"]
      106 GETTABLEKS                       R11 R0 K45 ["onItemClicked"]
      108 SETTABLEKS                       R11 R10 K45 ["onItemClicked"]
      110 CALL                             R8 2 1
      111 SETTABLEKS                       R8 R7 K18 ["Dropdown"]
      113 GETUPVAL                         R8 0
      114 GETTABLEKS                       R8 R8 K3 ["createElement"]
      116 LOADK                            R9 K21 ["TextLabel"]
      117 DUPTABLE                         R10 K52 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"], ["TextColor3"], ["TextSize"] = 12, ["Font"], ["Text"] = "Once published, this model can be shared in Marketplace", ["TextXAlignment"]}]
      118 GETIMPORT                        R11 K14 [UDim2.new]
      120 LOADN                            R12 0
      121 LOADN                            R13 0
      122 LOADN                            R14 1
      123 LOADN                            R15 0
      124 CALL                             R11 4 1
      125 SETTABLEKS                       R11 R10 K8 ["Position"]
      127 GETIMPORT                        R11 K14 [UDim2.new]
      129 LOADN                            R12 1
      130 LOADN                            R13 0
      131 LOADN                            R14 0
      132 LOADN                            R15 18
      133 CALL                             R11 4 1
      134 SETTABLEKS                       R11 R10 K7 ["Size"]
      136 GETTABLEKS                       R11 R3 K30 ["typeSelection"]
      138 GETTABLEKS                       R11 R11 K31 ["selector"]
      140 GETTABLEKS                       R11 R11 K53 ["description"]
      142 SETTABLEKS                       R11 R10 K22 ["TextColor3"]
      144 GETUPVAL                         R11 1
      145 GETTABLEKS                       R11 R11 K33 ["FONT"]
      147 SETTABLEKS                       R11 R10 K25 ["Font"]
      149 GETIMPORT                        R11 K36 [Enum.TextXAlignment.Left]
      151 SETTABLEKS                       R11 R10 K28 ["TextXAlignment"]
      153 CALL                             R8 2 1
      154 SETTABLEKS                       R8 R7 K19 ["Description"]
      156 CALL                             R4 3 -1
      157 RETURN                           R4 -1

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

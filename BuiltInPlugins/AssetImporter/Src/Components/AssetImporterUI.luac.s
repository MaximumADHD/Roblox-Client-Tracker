PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["Sizes"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K5 [{"Layout"}]
       11 GETIMPORT                        R7 K9 [Enum.FillDirection.Vertical]
       13 SETTABLEKS                       R7 R6 K4 ["Layout"]
       15 DUPTABLE                         R7 K13 [{"TopBar", "TopSeparator", "BottomPanel"}]
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K3 ["createElement"]
       19 GETUPVAL                         R9 2
       20 DUPTABLE                         R10 K19 [{["LayoutOrder"] = 1, ["Padding"], ["Size"], ["FileName"]}]
       21 GETTABLEKS                       R11 R2 K20 ["TopBarPadding"]
       23 SETTABLEKS                       R11 R10 K16 ["Padding"]
       25 GETIMPORT                        R11 K23 [UDim2.new]
       27 LOADN                            R12 1
       28 LOADN                            R13 0
       29 LOADN                            R14 0
       30 GETTABLEKS                       R15 R3 K24 ["TopBarHeight"]
       32 CALL                             R11 4 1
       33 SETTABLEKS                       R11 R10 K17 ["Size"]
       35 GETTABLEKS                       R12 R1 K26 ["Filename"]
       37 ORK                              R11 R12 K25 [""]
       38 SETTABLEKS                       R11 R10 K18 ["FileName"]
       40 CALL                             R8 2 1
       41 SETTABLEKS                       R8 R7 K10 ["TopBar"]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K3 ["createElement"]
       46 GETUPVAL                         R9 3
       47 DUPTABLE                         R10 K29 [{["DominantAxis"], ["LayoutOrder"] = 2}]
       48 GETIMPORT                        R11 K31 [Enum.DominantAxis.Width]
       50 SETTABLEKS                       R11 R10 K27 ["DominantAxis"]
       52 CALL                             R8 2 1
       53 SETTABLEKS                       R8 R7 K11 ["TopSeparator"]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K3 ["createElement"]
       58 GETUPVAL                         R9 1
       59 DUPTABLE                         R10 K34 [{["Layout"], ["LayoutOrder"] = 3, ["Position"], ["Size"]}]
       60 GETIMPORT                        R11 K36 [Enum.FillDirection.Horizontal]
       62 SETTABLEKS                       R11 R10 K4 ["Layout"]
       64 GETIMPORT                        R11 K23 [UDim2.new]
       66 LOADN                            R12 1
       67 LOADN                            R13 0
       68 LOADN                            R14 0
       69 GETTABLEKS                       R15 R3 K24 ["TopBarHeight"]
       71 CALL                             R11 4 1
       72 SETTABLEKS                       R11 R10 K33 ["Position"]
       74 GETIMPORT                        R11 K23 [UDim2.new]
       76 LOADN                            R12 1
       77 LOADN                            R13 0
       78 LOADN                            R14 1
       79 GETTABLEKS                       R17 R3 K24 ["TopBarHeight"]
       81 ADDK                             R16 R17 K28 [2]
       82 MINUS                            R15 R16
       83 CALL                             R11 4 1
       84 SETTABLEKS                       R11 R10 K17 ["Size"]
       86 DUPTABLE                         R11 K40 [{"LeftPanel", "Separator", "RightPanel"}]
       87 GETUPVAL                         R12 0
       88 GETTABLEKS                       R12 R12 K3 ["createElement"]
       90 GETUPVAL                         R13 1
       91 DUPTABLE                         R14 K41 [{["LayoutOrder"] = 1, ["Layout"], ["Size"]}]
       92 GETIMPORT                        R15 K9 [Enum.FillDirection.Vertical]
       94 SETTABLEKS                       R15 R14 K4 ["Layout"]
       96 GETIMPORT                        R15 K23 [UDim2.new]
       98 LOADK                            R16 K42 [0.5]
       99 LOADN                            R17 0
      100 LOADN                            R18 1
      101 LOADN                            R19 0
      102 CALL                             R15 4 1
      103 SETTABLEKS                       R15 R14 K17 ["Size"]
      105 DUPTABLE                         R15 K45 [{"PreviewContainer", "Separator", "TreeContainer"}]
      106 GETUPVAL                         R16 0
      107 GETTABLEKS                       R16 R16 K3 ["createElement"]
      109 GETUPVAL                         R17 4
      110 DUPTABLE                         R18 K46 [{["LayoutOrder"] = 1}]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K43 ["PreviewContainer"]
      114 GETUPVAL                         R16 0
      115 GETTABLEKS                       R16 R16 K3 ["createElement"]
      117 GETUPVAL                         R17 3
      118 DUPTABLE                         R18 K29 [{["DominantAxis"], ["LayoutOrder"] = 2}]
      119 GETIMPORT                        R19 K31 [Enum.DominantAxis.Width]
      121 SETTABLEKS                       R19 R18 K27 ["DominantAxis"]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K38 ["Separator"]
      126 GETUPVAL                         R16 0
      127 GETTABLEKS                       R16 R16 K3 ["createElement"]
      129 GETUPVAL                         R17 1
      130 DUPTABLE                         R18 K47 [{["LayoutOrder"] = 3, ["Size"]}]
      131 GETIMPORT                        R19 K23 [UDim2.new]
      133 LOADN                            R20 1
      134 LOADN                            R21 0
      135 GETTABLEKS                       R22 R3 K48 ["PreviewRatio"]
      137 LOADN                            R23 -1
      138 CALL                             R19 4 1
      139 SETTABLEKS                       R19 R18 K17 ["Size"]
      141 DUPTABLE                         R19 K50 [{"TreeView"}]
      142 GETUPVAL                         R20 0
      143 GETTABLEKS                       R20 R20 K3 ["createElement"]
      145 GETUPVAL                         R21 5
      146 DUPTABLE                         R22 K52 [{"Instances", "FileName"}]
      147 NEWTABLE                         R23 0 1
      149 GETTABLEKS                       R24 R1 K53 ["ImportTree"]
      151 SETLIST                          R23 R24 1 [1]
      153 SETTABLEKS                       R23 R22 K51 ["Instances"]
      155 GETTABLEKS                       R24 R1 K26 ["Filename"]
      157 ORK                              R23 R24 K25 [""]
      158 SETTABLEKS                       R23 R22 K18 ["FileName"]
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K49 ["TreeView"]
      163 CALL                             R16 3 1
      164 SETTABLEKS                       R16 R15 K44 ["TreeContainer"]
      166 CALL                             R12 3 1
      167 SETTABLEKS                       R12 R11 K37 ["LeftPanel"]
      169 GETUPVAL                         R12 0
      170 GETTABLEKS                       R12 R12 K3 ["createElement"]
      172 GETUPVAL                         R13 3
      173 DUPTABLE                         R14 K29 [{["DominantAxis"], ["LayoutOrder"] = 2}]
      174 GETIMPORT                        R15 K55 [Enum.DominantAxis.Height]
      176 SETTABLEKS                       R15 R14 K27 ["DominantAxis"]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K38 ["Separator"]
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K3 ["createElement"]
      184 GETUPVAL                         R13 1
      185 DUPTABLE                         R14 K47 [{["LayoutOrder"] = 3, ["Size"]}]
      186 GETIMPORT                        R15 K23 [UDim2.new]
      188 LOADK                            R16 K42 [0.5]
      189 LOADN                            R17 -1
      190 LOADN                            R18 1
      191 LOADN                            R19 0
      192 CALL                             R15 4 1
      193 SETTABLEKS                       R15 R14 K17 ["Size"]
      195 DUPTABLE                         R15 K57 [{"ImportConfiguration"}]
      196 GETUPVAL                         R16 0
      197 GETTABLEKS                       R16 R16 K3 ["createElement"]
      199 GETUPVAL                         R17 6
      200 DUPTABLE                         R18 K60 [{"ImportItem", "AssetImportSession"}]
      201 GETTABLEKS                       R19 R1 K61 ["SelectedImportItem"]
      203 SETTABLEKS                       R19 R18 K58 ["ImportItem"]
      205 GETTABLEKS                       R19 R1 K59 ["AssetImportSession"]
      207 SETTABLEKS                       R19 R18 K59 ["AssetImportSession"]
      209 CALL                             R16 2 1
      210 SETTABLEKS                       R16 R15 K56 ["ImportConfiguration"]
      212 CALL                             R12 3 1
      213 SETTABLEKS                       R12 R11 K39 ["RightPanel"]
      215 CALL                             R8 3 1
      216 SETTABLEKS                       R8 R7 K12 ["BottomPanel"]
      218 CALL                             R4 3 -1
      219 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"AssetImportSession", "ImportTree", "Filename", "SelectedImportItem"}]
        1 GETTABLEKS                       R2 R0 K5 ["Preview"]
        3 GETTABLEKS                       R2 R2 K6 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R2 R0 K5 ["Preview"]
        9 GETTABLEKS                       R2 R2 K7 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R2 R0 K5 ["Preview"]
       15 GETTABLEKS                       R2 R2 K8 ["filename"]
       17 SETTABLEKS                       R2 R1 K2 ["Filename"]
       19 GETTABLEKS                       R2 R0 K5 ["Preview"]
       21 GETTABLEKS                       R2 R2 K9 ["selectedImportItem"]
       23 SETTABLEKS                       R2 R1 K3 ["SelectedImportItem"]
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R3 K13 ["Style"]
       36 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       38 GETTABLEKS                       R8 R3 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["Pane"]
       42 GETTABLEKS                       R10 R8 K17 ["Separator"]
       44 GETIMPORT                        R11 K5 [require]
       46 GETTABLEKS                       R12 R0 K18 ["Src"]
       48 GETTABLEKS                       R12 R12 K19 ["Controllers"]
       50 GETTABLEKS                       R12 R12 K20 ["PresetController"]
       52 CALL                             R11 1 1
       53 GETIMPORT                        R12 K5 [require]
       55 GETTABLEKS                       R13 R0 K18 ["Src"]
       57 GETTABLEKS                       R13 R13 K21 ["Components"]
       59 GETTABLEKS                       R13 R13 K22 ["AssetImportTree"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R0 K18 ["Src"]
       66 GETTABLEKS                       R14 R14 K21 ["Components"]
       68 GETTABLEKS                       R14 R14 K23 ["Properties"]
       70 GETTABLEKS                       R14 R14 K24 ["ImportConfiguration"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K5 [require]
       75 GETTABLEKS                       R15 R0 K18 ["Src"]
       77 GETTABLEKS                       R15 R15 K21 ["Components"]
       79 GETTABLEKS                       R15 R15 K25 ["TopBar"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K5 [require]
       84 GETTABLEKS                       R16 R0 K18 ["Src"]
       86 GETTABLEKS                       R16 R16 K21 ["Components"]
       88 GETTABLEKS                       R16 R16 K26 ["Preview"]
       90 GETTABLEKS                       R16 R16 K27 ["PreviewContainer"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R16 R1 K28 ["PureComponent"]
       95 LOADK                            R18 K29 ["AssetImporterUI"]
       96 NAMECALL                         R16 R16 K30 ["extend"]
       98 CALL                             R16 2 1
       99 DUPCLOSURE                       R17 K31 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R12
      106 CAPTURE                          VAL R13
      107 SETTABLEKS                       R17 R16 K32 ["render"]
      109 MOVE                             R17 R5
      110 DUPTABLE                         R18 K33 [{"Localization", "Stylizer", "PresetController"}]
      111 SETTABLEKS                       R6 R18 K12 ["Localization"]
      113 SETTABLEKS                       R7 R18 K14 ["Stylizer"]
      115 SETTABLEKS                       R11 R18 K20 ["PresetController"]
      117 CALL                             R17 1 1
      118 MOVE                             R18 R16
      119 CALL                             R17 1 1
      120 MOVE                             R16 R17
      121 DUPCLOSURE                       R17 K34 [PROTO_1]
      122 GETTABLEKS                       R18 R2 K35 ["connect"]
      124 MOVE                             R19 R17
      125 LOADNIL                          R20
      126 CALL                             R18 2 1
      127 MOVE                             R19 R16
      128 CALL                             R18 1 -1
      129 RETURN                           R18 -1

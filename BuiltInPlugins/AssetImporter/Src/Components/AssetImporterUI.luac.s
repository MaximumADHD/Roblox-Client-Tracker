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
       20 DUPTABLE                         R10 K18 [{"LayoutOrder", "Padding", "Size", "FileName"}]
       21 LOADN                            R11 1
       22 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       24 GETTABLEKS                       R11 R2 K19 ["TopBarPadding"]
       26 SETTABLEKS                       R11 R10 K15 ["Padding"]
       28 GETIMPORT                        R11 K22 [UDim2.new]
       30 LOADN                            R12 1
       31 LOADN                            R13 0
       32 LOADN                            R14 0
       33 GETTABLEKS                       R15 R3 K23 ["TopBarHeight"]
       35 CALL                             R11 4 1
       36 SETTABLEKS                       R11 R10 K16 ["Size"]
       38 GETTABLEKS                       R12 R1 K25 ["Filename"]
       40 ORK                              R11 R12 K24 [""]
       41 SETTABLEKS                       R11 R10 K17 ["FileName"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K10 ["TopBar"]
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K3 ["createElement"]
       49 GETUPVAL                         R9 3
       50 DUPTABLE                         R10 K27 [{"DominantAxis", "LayoutOrder"}]
       51 GETIMPORT                        R11 K29 [Enum.DominantAxis.Width]
       53 SETTABLEKS                       R11 R10 K26 ["DominantAxis"]
       55 LOADN                            R11 2
       56 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K11 ["TopSeparator"]
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K3 ["createElement"]
       64 GETUPVAL                         R9 1
       65 DUPTABLE                         R10 K31 [{"Layout", "LayoutOrder", "Position", "Size"}]
       66 GETIMPORT                        R11 K33 [Enum.FillDirection.Horizontal]
       68 SETTABLEKS                       R11 R10 K4 ["Layout"]
       70 LOADN                            R11 3
       71 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       73 GETIMPORT                        R11 K22 [UDim2.new]
       75 LOADN                            R12 1
       76 LOADN                            R13 0
       77 LOADN                            R14 0
       78 GETTABLEKS                       R15 R3 K23 ["TopBarHeight"]
       80 CALL                             R11 4 1
       81 SETTABLEKS                       R11 R10 K30 ["Position"]
       83 GETIMPORT                        R11 K22 [UDim2.new]
       85 LOADN                            R12 1
       86 LOADN                            R13 0
       87 LOADN                            R14 1
       88 GETTABLEKS                       R17 R3 K23 ["TopBarHeight"]
       90 ADDK                             R16 R17 K34 [2]
       91 MINUS                            R15 R16
       92 CALL                             R11 4 1
       93 SETTABLEKS                       R11 R10 K16 ["Size"]
       95 DUPTABLE                         R11 K38 [{"LeftPanel", "Separator", "RightPanel"}]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K3 ["createElement"]
       99 GETUPVAL                         R13 1
      100 DUPTABLE                         R14 K39 [{"LayoutOrder", "Layout", "Size"}]
      101 LOADN                            R15 1
      102 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      104 GETIMPORT                        R15 K9 [Enum.FillDirection.Vertical]
      106 SETTABLEKS                       R15 R14 K4 ["Layout"]
      108 GETIMPORT                        R15 K22 [UDim2.new]
      110 LOADK                            R16 K40 [0.5]
      111 LOADN                            R17 0
      112 LOADN                            R18 1
      113 LOADN                            R19 0
      114 CALL                             R15 4 1
      115 SETTABLEKS                       R15 R14 K16 ["Size"]
      117 DUPTABLE                         R15 K43 [{"PreviewContainer", "Separator", "TreeContainer"}]
      118 GETUPVAL                         R16 0
      119 GETTABLEKS                       R16 R16 K3 ["createElement"]
      121 GETUPVAL                         R17 4
      122 DUPTABLE                         R18 K44 [{"LayoutOrder"}]
      123 LOADN                            R19 1
      124 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K41 ["PreviewContainer"]
      129 GETUPVAL                         R16 0
      130 GETTABLEKS                       R16 R16 K3 ["createElement"]
      132 GETUPVAL                         R17 3
      133 DUPTABLE                         R18 K27 [{"DominantAxis", "LayoutOrder"}]
      134 GETIMPORT                        R19 K29 [Enum.DominantAxis.Width]
      136 SETTABLEKS                       R19 R18 K26 ["DominantAxis"]
      138 LOADN                            R19 2
      139 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K36 ["Separator"]
      144 GETUPVAL                         R16 0
      145 GETTABLEKS                       R16 R16 K3 ["createElement"]
      147 GETUPVAL                         R17 1
      148 DUPTABLE                         R18 K45 [{"LayoutOrder", "Size"}]
      149 LOADN                            R19 3
      150 SETTABLEKS                       R19 R18 K14 ["LayoutOrder"]
      152 GETIMPORT                        R19 K22 [UDim2.new]
      154 LOADN                            R20 1
      155 LOADN                            R21 0
      156 GETTABLEKS                       R22 R3 K46 ["PreviewRatio"]
      158 LOADN                            R23 255
      159 CALL                             R19 4 1
      160 SETTABLEKS                       R19 R18 K16 ["Size"]
      162 DUPTABLE                         R19 K48 [{"TreeView"}]
      163 GETUPVAL                         R20 0
      164 GETTABLEKS                       R20 R20 K3 ["createElement"]
      166 GETUPVAL                         R21 5
      167 DUPTABLE                         R22 K50 [{"Instances", "FileName"}]
      168 NEWTABLE                         R23 0 1
      170 GETTABLEKS                       R24 R1 K51 ["ImportTree"]
      172 SETLIST                          R23 R24 1 [1]
      174 SETTABLEKS                       R23 R22 K49 ["Instances"]
      176 GETTABLEKS                       R24 R1 K25 ["Filename"]
      178 ORK                              R23 R24 K24 [""]
      179 SETTABLEKS                       R23 R22 K17 ["FileName"]
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K47 ["TreeView"]
      184 CALL                             R16 3 1
      185 SETTABLEKS                       R16 R15 K42 ["TreeContainer"]
      187 CALL                             R12 3 1
      188 SETTABLEKS                       R12 R11 K35 ["LeftPanel"]
      190 GETUPVAL                         R12 0
      191 GETTABLEKS                       R12 R12 K3 ["createElement"]
      193 GETUPVAL                         R13 3
      194 DUPTABLE                         R14 K27 [{"DominantAxis", "LayoutOrder"}]
      195 GETIMPORT                        R15 K53 [Enum.DominantAxis.Height]
      197 SETTABLEKS                       R15 R14 K26 ["DominantAxis"]
      199 LOADN                            R15 2
      200 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      202 CALL                             R12 2 1
      203 SETTABLEKS                       R12 R11 K36 ["Separator"]
      205 GETUPVAL                         R12 0
      206 GETTABLEKS                       R12 R12 K3 ["createElement"]
      208 GETUPVAL                         R13 1
      209 DUPTABLE                         R14 K45 [{"LayoutOrder", "Size"}]
      210 LOADN                            R15 3
      211 SETTABLEKS                       R15 R14 K14 ["LayoutOrder"]
      213 GETIMPORT                        R15 K22 [UDim2.new]
      215 LOADK                            R16 K40 [0.5]
      216 LOADN                            R17 255
      217 LOADN                            R18 1
      218 LOADN                            R19 0
      219 CALL                             R15 4 1
      220 SETTABLEKS                       R15 R14 K16 ["Size"]
      222 DUPTABLE                         R15 K55 [{"ImportConfiguration"}]
      223 GETUPVAL                         R16 0
      224 GETTABLEKS                       R16 R16 K3 ["createElement"]
      226 GETUPVAL                         R17 6
      227 DUPTABLE                         R18 K58 [{"ImportItem", "AssetImportSession"}]
      228 GETTABLEKS                       R19 R1 K59 ["SelectedImportItem"]
      230 SETTABLEKS                       R19 R18 K56 ["ImportItem"]
      232 GETTABLEKS                       R19 R1 K57 ["AssetImportSession"]
      234 SETTABLEKS                       R19 R18 K57 ["AssetImportSession"]
      236 CALL                             R16 2 1
      237 SETTABLEKS                       R16 R15 K54 ["ImportConfiguration"]
      239 CALL                             R12 3 1
      240 SETTABLEKS                       R12 R11 K37 ["RightPanel"]
      242 CALL                             R8 3 1
      243 SETTABLEKS                       R8 R7 K12 ["BottomPanel"]
      245 CALL                             R4 3 -1
      246 RETURN                           R4 -1

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

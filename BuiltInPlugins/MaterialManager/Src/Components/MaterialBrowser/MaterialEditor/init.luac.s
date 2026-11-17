PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Material"]
        8 JUMPIF                           R4 ; [+6]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 GETUPVAL                         R5 1
       13 CALL                             R4 1 -1
       14 RETURN                           R4 -1
       15 GETTABLEKS                       R4 R1 K3 ["Material"]
       17 GETTABLEKS                       R4 R4 K5 ["MaterialVariant"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R7 R1 K3 ["Material"]
       22 GETTABLEKS                       R7 R7 K3 ["Material"]
       24 GETTABLE                         R5 R6 R7
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K6 ["new"]
       28 CALL                             R6 0 1
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K4 ["createElement"]
       32 GETUPVAL                         R8 4
       33 DUPTABLE                         R9 K8 [{"Layout", "LayoutOrder", "Size"}]
       34 GETIMPORT                        R10 K12 [Enum.FillDirection.Vertical]
       36 SETTABLEKS                       R10 R9 K7 ["Layout"]
       38 SETTABLEKS                       R2 R9 K1 ["LayoutOrder"]
       40 SETTABLEKS                       R3 R9 K2 ["Size"]
       42 DUPTABLE                         R10 K14 [{"Pane"}]
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K4 ["createElement"]
       46 GETUPVAL                         R12 1
       47 DUPTABLE                         R13 K16 [{"AutomaticSize", "Layout"}]
       48 GETIMPORT                        R14 K18 [Enum.AutomaticSize.Y]
       50 SETTABLEKS                       R14 R13 K15 ["AutomaticSize"]
       52 GETIMPORT                        R14 K12 [Enum.FillDirection.Vertical]
       54 SETTABLEKS                       R14 R13 K7 ["Layout"]
       56 DUPTABLE                         R14 K27 [{"MaterialHeader", "MaterialInformation", "GeneralSettings", "TextureSettings", "OverrideSettings", "TilingSettings", "TerrainDetailsSettings", "PhysicalSettings"}]
       57 GETUPVAL                         R15 0
       58 GETTABLEKS                       R15 R15 K4 ["createElement"]
       60 GETUPVAL                         R16 5
       61 DUPTABLE                         R17 K28 [{"LayoutOrder"}]
       62 NAMECALL                         R18 R6 K29 ["getNextOrder"]
       64 CALL                             R18 1 1
       65 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
       67 CALL                             R15 2 1
       68 SETTABLEKS                       R15 R14 K19 ["MaterialHeader"]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K4 ["createElement"]
       73 GETUPVAL                         R16 6
       74 DUPTABLE                         R17 K28 [{"LayoutOrder"}]
       75 NAMECALL                         R18 R6 K29 ["getNextOrder"]
       77 CALL                             R18 1 1
       78 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
       80 CALL                             R15 2 1
       81 SETTABLEKS                       R15 R14 K20 ["MaterialInformation"]
       83 JUMPIFNOT                        R4 ; [+14]
       84 GETUPVAL                         R15 0
       85 GETTABLEKS                       R15 R15 K4 ["createElement"]
       87 GETUPVAL                         R16 7
       88 DUPTABLE                         R17 K30 [{"LayoutOrder", "MaterialVariant"}]
       89 NAMECALL                         R18 R6 K29 ["getNextOrder"]
       91 CALL                             R18 1 1
       92 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
       94 SETTABLEKS                       R4 R17 K5 ["MaterialVariant"]
       96 CALL                             R15 2 1
       97 JUMP                             ; [+1]
       98 LOADNIL                          R15
       99 SETTABLEKS                       R15 R14 K21 ["GeneralSettings"]
      101 JUMPIFNOT                        R4 ; [+14]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R15 R15 K4 ["createElement"]
      105 GETUPVAL                         R16 8
      106 DUPTABLE                         R17 K34 [{["LayoutOrder"], ["PBRMaterial"], ["Expandable"] = True}]
      107 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      109 CALL                             R18 1 1
      110 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      112 SETTABLEKS                       R4 R17 K31 ["PBRMaterial"]
      114 CALL                             R15 2 1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R15
      117 SETTABLEKS                       R15 R14 K22 ["TextureSettings"]
      119 JUMPIFNOT                        R4 ; [+15]
      120 JUMPIFNOT                        R5 ; [+14]
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R15 R15 K4 ["createElement"]
      124 GETUPVAL                         R16 9
      125 DUPTABLE                         R17 K30 [{"LayoutOrder", "MaterialVariant"}]
      126 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      128 CALL                             R18 1 1
      129 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      131 SETTABLEKS                       R4 R17 K5 ["MaterialVariant"]
      133 CALL                             R15 2 1
      134 JUMP                             ; [+11]
      135 GETUPVAL                         R15 0
      136 GETTABLEKS                       R15 R15 K4 ["createElement"]
      138 GETUPVAL                         R16 10
      139 DUPTABLE                         R17 K28 [{"LayoutOrder"}]
      140 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      142 CALL                             R18 1 1
      143 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K23 ["OverrideSettings"]
      148 JUMPIFNOT                        R4 ; [+14]
      149 GETUPVAL                         R15 0
      150 GETTABLEKS                       R15 R15 K4 ["createElement"]
      152 GETUPVAL                         R16 11
      153 DUPTABLE                         R17 K34 [{["LayoutOrder"], ["PBRMaterial"], ["Expandable"] = True}]
      154 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      156 CALL                             R18 1 1
      157 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      159 SETTABLEKS                       R4 R17 K31 ["PBRMaterial"]
      161 CALL                             R15 2 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R15
      164 SETTABLEKS                       R15 R14 K24 ["TilingSettings"]
      166 JUMPIFNOT                        R4 ; [+14]
      167 GETUPVAL                         R15 0
      168 GETTABLEKS                       R15 R15 K4 ["createElement"]
      170 GETUPVAL                         R16 12
      171 DUPTABLE                         R17 K30 [{"LayoutOrder", "MaterialVariant"}]
      172 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      174 CALL                             R18 1 1
      175 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      177 SETTABLEKS                       R4 R17 K5 ["MaterialVariant"]
      179 CALL                             R15 2 1
      180 JUMP                             ; [+1]
      181 LOADNIL                          R15
      182 SETTABLEKS                       R15 R14 K25 ["TerrainDetailsSettings"]
      184 JUMPIFNOT                        R4 ; [+14]
      185 GETUPVAL                         R15 0
      186 GETTABLEKS                       R15 R15 K4 ["createElement"]
      188 GETUPVAL                         R16 13
      189 DUPTABLE                         R17 K30 [{"LayoutOrder", "MaterialVariant"}]
      190 NAMECALL                         R18 R6 K29 ["getNextOrder"]
      192 CALL                             R18 1 1
      193 SETTABLEKS                       R18 R17 K1 ["LayoutOrder"]
      195 SETTABLEKS                       R4 R17 K5 ["MaterialVariant"]
      197 CALL                             R15 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R15
      200 SETTABLEKS                       R15 R14 K26 ["PhysicalSettings"]
      202 CALL                             R11 3 1
      203 SETTABLEKS                       R11 R10 K13 ["Pane"]
      205 CALL                             R7 3 -1
      206 RETURN                           R7 -1

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"Material"}]
        1 GETTABLEKS                       R3 R1 K2 ["MaterialMock"]
        3 JUMPIF                           R3 ; [+4]
        4 GETTABLEKS                       R3 R0 K3 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R3 R3 K0 ["Material"]
        8 SETTABLEKS                       R3 R2 K0 ["Material"]
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Packages"]
       22 GETTABLEKS                       R3 R3 K8 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Packages"]
       29 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K7 ["Packages"]
       36 GETTABLEKS                       R5 R5 K10 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K12 ["withContext"]
       43 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       45 GETTABLEKS                       R8 R5 K14 ["Localization"]
       47 GETTABLEKS                       R9 R4 K15 ["Util"]
       49 GETTABLEKS                       R9 R9 K16 ["LayoutOrderIterator"]
       51 GETTABLEKS                       R10 R4 K17 ["UI"]
       53 GETTABLEKS                       R11 R10 K18 ["Pane"]
       55 GETTABLEKS                       R12 R10 K19 ["ScrollingFrame"]
       57 GETTABLEKS                       R13 R0 K5 ["Src"]
       59 GETTABLEKS                       R13 R13 K20 ["Components"]
       61 GETTABLEKS                       R13 R13 K21 ["MaterialBrowser"]
       63 GETTABLEKS                       R13 R13 K22 ["MaterialEditor"]
       65 GETIMPORT                        R14 K4 [require]
       67 GETTABLEKS                       R15 R13 K23 ["MaterialHeader"]
       69 CALL                             R14 1 1
       70 GETIMPORT                        R15 K4 [require]
       72 GETTABLEKS                       R16 R13 K24 ["MaterialInformation"]
       74 CALL                             R15 1 1
       75 GETIMPORT                        R16 K4 [require]
       77 GETTABLEKS                       R17 R13 K25 ["GeneralSettings"]
       79 CALL                             R16 1 1
       80 GETIMPORT                        R17 K4 [require]
       82 GETTABLEKS                       R18 R13 K26 ["TextureSettings"]
       84 CALL                             R17 1 1
       85 GETIMPORT                        R18 K4 [require]
       87 GETTABLEKS                       R19 R13 K27 ["TilingSettings"]
       89 CALL                             R18 1 1
       90 GETIMPORT                        R19 K4 [require]
       92 GETTABLEKS                       R20 R13 K28 ["MaterialOverrides"]
       94 CALL                             R19 1 1
       95 GETIMPORT                        R20 K4 [require]
       97 GETTABLEKS                       R21 R13 K29 ["OverrideSettings"]
       99 CALL                             R20 1 1
      100 GETIMPORT                        R21 K4 [require]
      102 GETTABLEKS                       R22 R13 K30 ["TerrainDetailsSettings"]
      104 CALL                             R21 1 1
      105 GETIMPORT                        R22 K4 [require]
      107 GETTABLEKS                       R23 R13 K31 ["PhysicalSettings"]
      109 CALL                             R22 1 1
      110 GETIMPORT                        R23 K4 [require]
      112 GETTABLEKS                       R24 R0 K5 ["Src"]
      114 GETTABLEKS                       R24 R24 K32 ["Resources"]
      116 GETTABLEKS                       R24 R24 K33 ["Constants"]
      118 GETTABLEKS                       R24 R24 K34 ["getSupportedMaterials"]
      120 CALL                             R23 1 1
      121 MOVE                             R24 R23
      122 CALL                             R24 0 1
      123 GETTABLEKS                       R25 R2 K35 ["PureComponent"]
      125 LOADK                            R27 K22 ["MaterialEditor"]
      126 NAMECALL                         R25 R25 K36 ["extend"]
      128 CALL                             R25 2 1
      129 DUPCLOSURE                       R26 K37 [PROTO_0]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R24
      133 CAPTURE                          VAL R9
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R17
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R19
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R21
      143 CAPTURE                          VAL R22
      144 SETTABLEKS                       R26 R25 K38 ["render"]
      146 MOVE                             R26 R6
      147 DUPTABLE                         R27 K39 [{"Analytics", "Localization"}]
      148 SETTABLEKS                       R7 R27 K13 ["Analytics"]
      150 SETTABLEKS                       R8 R27 K14 ["Localization"]
      152 CALL                             R26 1 1
      153 MOVE                             R27 R25
      154 CALL                             R26 1 1
      155 MOVE                             R25 R26
      156 GETTABLEKS                       R26 R3 K40 ["connect"]
      158 DUPCLOSURE                       R27 K41 [PROTO_1]
      159 CALL                             R26 1 1
      160 MOVE                             R27 R25
      161 CALL                             R26 1 -1
      162 RETURN                           R26 -1

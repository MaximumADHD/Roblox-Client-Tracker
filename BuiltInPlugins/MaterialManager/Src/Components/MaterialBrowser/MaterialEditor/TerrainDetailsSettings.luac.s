PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["GeneralServiceController"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["MaterialVariant"]
       10 MOVE                             R5 R0
       11 NAMECALL                         R2 R2 K3 ["createTerrainDetail"]
       13 CALL                             R2 3 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["GeneralServiceController"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K2 ["destroyWithUndo"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["dispatchSetExpandedPane"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["TerrainDetailsSettings"]
        8 GETTABLEKS                       R4 R0 K3 ["ExpandedPane"]
       10 NOT                              R3 R4
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onClick"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onDelete"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["onExpandedChanged"]
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onDelete"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClick"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["TerrainDetailsSettings"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R1 K5 ["Material"]
       14 GETTABLEKS                       R6 R5 K6 ["MaterialVariant"]
       16 JUMPIF                           R6 ; [+6]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K7 ["createElement"]
       20 GETUPVAL                         R7 2
       21 CALL                             R6 1 -1
       22 RETURN                           R6 -1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R7 R5 K6 ["MaterialVariant"]
       26 CALL                             R6 1 1
       27 NEWTABLE                         R7 0 0
       29 GETIMPORT                        R8 K9 [ipairs]
       31 GETUPVAL                         R9 4
       32 CALL                             R8 1 3
       33 FORGPREP_INEXT                   R8
       34 GETUPVAL                         R13 5
       35 MOVE                             R14 R12
       36 CALL                             R13 1 1
       37 GETTABLE                         R14 R6 R12
       38 JUMPIFNOT                        R14 ; [+26]
       39 GETUPVAL                         R15 1
       40 GETTABLEKS                       R15 R15 K7 ["createElement"]
       42 GETUPVAL                         R16 6
       43 DUPTABLE                         R17 K15 [{"LabelColumnWidth", "LayoutOrder", "TerrainDetail", "TerrainFace", "OnDelete"}]
       44 GETTABLEKS                       R18 R2 K10 ["LabelColumnWidth"]
       46 SETTABLEKS                       R18 R17 K10 ["LabelColumnWidth"]
       48 NAMECALL                         R18 R4 K16 ["getNextOrder"]
       50 CALL                             R18 1 1
       51 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
       53 SETTABLEKS                       R14 R17 K12 ["TerrainDetail"]
       55 SETTABLEKS                       R13 R17 K13 ["TerrainFace"]
       57 NEWCLOSURE                       R18 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R14
       60 SETTABLEKS                       R18 R17 K14 ["OnDelete"]
       62 CALL                             R15 2 1
       63 SETTABLE                         R15 R7 R13
       64 JUMP                             ; [+56]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K7 ["createElement"]
       68 GETUPVAL                         R16 7
       69 DUPTABLE                         R17 K18 [{"LabelColumnWidth", "LayoutOrder", "Text"}]
       70 GETTABLEKS                       R18 R2 K10 ["LabelColumnWidth"]
       72 SETTABLEKS                       R18 R17 K10 ["LabelColumnWidth"]
       74 NAMECALL                         R18 R4 K16 ["getNextOrder"]
       76 CALL                             R18 1 1
       77 SETTABLEKS                       R18 R17 K11 ["LayoutOrder"]
       79 LOADK                            R20 K19 ["TerrainDetails"]
       80 MOVE                             R21 R13
       81 NAMECALL                         R18 R3 K20 ["getText"]
       83 CALL                             R18 3 1
       84 SETTABLEKS                       R18 R17 K17 ["Text"]
       86 NEWTABLE                         R18 0 1
       88 GETUPVAL                         R19 1
       89 GETTABLEKS                       R19 R19 K7 ["createElement"]
       91 GETUPVAL                         R20 8
       92 DUPTABLE                         R21 K25 [{"Size", "Text", "TextXAlignment", "OnClick", "Style"}]
       93 GETTABLEKS                       R22 R2 K26 ["DialogColumnSize"]
       95 SETTABLEKS                       R22 R21 K21 ["Size"]
       97 LOADK                            R24 K19 ["TerrainDetails"]
       98 LOADK                            R25 K27 ["ButtonCreate"]
       99 NAMECALL                         R22 R3 K20 ["getText"]
      101 CALL                             R22 3 1
      102 SETTABLEKS                       R22 R21 K17 ["Text"]
      104 GETIMPORT                        R22 K30 [Enum.TextXAlignment.Center]
      106 SETTABLEKS                       R22 R21 K22 ["TextXAlignment"]
      108 NEWCLOSURE                       R22 P1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R13
      111 SETTABLEKS                       R22 R21 K23 ["OnClick"]
      113 LOADK                            R22 K31 ["Round"]
      114 SETTABLEKS                       R22 R21 K24 ["Style"]
      116 CALL                             R19 2 -1
      117 SETLIST                          R18 R19 -1 [1]
      119 CALL                             R15 3 1
      120 SETTABLE                         R15 R7 R13
      121 FORGLOOP                         R8 2 [inext] ; [-88]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R8 R8 K7 ["createElement"]
      126 GETUPVAL                         R9 9
      127 DUPTABLE                         R10 K36 [{"LayoutOrder", "ContentPadding", "ContentSpacing", "Text", "Style", "Expanded", "OnExpandedChanged"}]
      128 GETTABLEKS                       R11 R1 K11 ["LayoutOrder"]
      130 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
      132 GETTABLEKS                       R11 R2 K32 ["ContentPadding"]
      134 SETTABLEKS                       R11 R10 K32 ["ContentPadding"]
      136 GETTABLEKS                       R11 R2 K37 ["ItemSpacing"]
      138 SETTABLEKS                       R11 R10 K33 ["ContentSpacing"]
      140 LOADK                            R13 K19 ["TerrainDetails"]
      141 LOADK                            R14 K19 ["TerrainDetails"]
      142 NAMECALL                         R11 R3 K20 ["getText"]
      144 CALL                             R11 3 1
      145 SETTABLEKS                       R11 R10 K17 ["Text"]
      147 GETTABLEKS                       R11 R2 K38 ["CustomExpandablePane"]
      149 SETTABLEKS                       R11 R10 K24 ["Style"]
      151 GETTABLEKS                       R11 R1 K39 ["ExpandedPane"]
      153 SETTABLEKS                       R11 R10 K34 ["Expanded"]
      155 GETTABLEKS                       R11 R0 K40 ["onExpandedChanged"]
      157 SETTABLEKS                       R11 R10 K35 ["OnExpandedChanged"]
      159 MOVE                             R11 R7
      160 CALL                             R8 3 -1
      161 RETURN                           R8 -1

PROTO_7:
        0 DUPTABLE                         R2 K2 [{"Material", "ExpandedPane"}]
        1 GETTABLEKS                       R3 R1 K3 ["MockMaterial"]
        3 JUMPIF                           R3 ; [+4]
        4 GETTABLEKS                       R3 R0 K4 ["MaterialBrowserReducer"]
        6 GETTABLEKS                       R3 R3 K0 ["Material"]
        8 SETTABLEKS                       R3 R2 K0 ["Material"]
       10 GETTABLEKS                       R4 R0 K4 ["MaterialBrowserReducer"]
       12 GETTABLEKS                       R4 R4 K1 ["ExpandedPane"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["TerrainDetailsSettings"]
       17 GETTABLE                         R3 R4 R5
       18 SETTABLEKS                       R3 R2 K1 ["ExpandedPane"]
       20 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K1 [{"dispatchSetExpandedPane"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetExpandedPane"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R5 R0 K7 ["Packages"]
       38 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R3 K11 ["Util"]
       43 GETTABLEKS                       R5 R5 K12 ["LayoutOrderIterator"]
       45 GETTABLEKS                       R6 R3 K13 ["Style"]
       47 GETTABLEKS                       R6 R6 K14 ["Stylizer"]
       49 GETTABLEKS                       R7 R3 K15 ["ContextServices"]
       51 GETTABLEKS                       R8 R7 K16 ["withContext"]
       53 GETTABLEKS                       R9 R7 K17 ["Analytics"]
       55 GETTABLEKS                       R10 R7 K18 ["Localization"]
       57 GETTABLEKS                       R11 R3 K19 ["UI"]
       59 GETTABLEKS                       R12 R11 K20 ["Button"]
       61 GETTABLEKS                       R13 R11 K21 ["ExpandablePane"]
       63 GETTABLEKS                       R14 R11 K22 ["Pane"]
       65 GETIMPORT                        R15 K4 [require]
       67 GETTABLEKS                       R16 R0 K5 ["Src"]
       69 GETTABLEKS                       R16 R16 K11 ["Util"]
       71 GETTABLEKS                       R16 R16 K23 ["getTerrainDetails"]
       73 CALL                             R15 1 1
       74 GETTABLEKS                       R16 R0 K5 ["Src"]
       76 GETTABLEKS                       R16 R16 K24 ["Actions"]
       78 GETIMPORT                        R17 K4 [require]
       80 GETTABLEKS                       R18 R16 K25 ["SetExpandedPane"]
       82 CALL                             R17 1 1
       83 GETIMPORT                        R18 K4 [require]
       85 GETTABLEKS                       R19 R0 K5 ["Src"]
       87 GETTABLEKS                       R19 R19 K26 ["Reducers"]
       89 GETTABLEKS                       R19 R19 K27 ["MainReducer"]
       91 CALL                             R18 1 1
       92 GETTABLEKS                       R19 R0 K5 ["Src"]
       94 GETTABLEKS                       R19 R19 K28 ["Controllers"]
       96 GETIMPORT                        R20 K4 [require]
       98 GETTABLEKS                       R21 R19 K29 ["GeneralServiceController"]
      100 CALL                             R20 1 1
      101 GETTABLEKS                       R21 R0 K5 ["Src"]
      103 GETTABLEKS                       R21 R21 K30 ["Components"]
      105 GETTABLEKS                       R21 R21 K31 ["MaterialBrowser"]
      107 GETTABLEKS                       R21 R21 K32 ["MaterialEditor"]
      109 GETIMPORT                        R22 K4 [require]
      111 GETTABLEKS                       R23 R21 K33 ["LabeledElement"]
      113 CALL                             R22 1 1
      114 GETIMPORT                        R23 K4 [require]
      116 GETTABLEKS                       R24 R21 K34 ["TerrainDetailsEditor"]
      118 CALL                             R23 1 1
      119 GETTABLEKS                       R24 R0 K5 ["Src"]
      121 GETTABLEKS                       R24 R24 K35 ["Resources"]
      123 GETTABLEKS                       R24 R24 K36 ["Constants"]
      125 GETIMPORT                        R25 K4 [require]
      127 GETTABLEKS                       R26 R24 K37 ["getTerrainFaceName"]
      129 CALL                             R25 1 1
      130 GETIMPORT                        R26 K4 [require]
      132 GETTABLEKS                       R27 R24 K38 ["getTerrainFaces"]
      134 CALL                             R26 1 1
      135 GETIMPORT                        R27 K4 [require]
      137 GETTABLEKS                       R28 R24 K39 ["getSettingsNames"]
      139 CALL                             R27 1 1
      140 MOVE                             R28 R27
      141 CALL                             R28 0 1
      142 MOVE                             R29 R26
      143 CALL                             R29 0 1
      144 GETTABLEKS                       R30 R2 K40 ["PureComponent"]
      146 LOADK                            R32 K41 ["TerrainDetailsSettings"]
      147 NAMECALL                         R30 R30 K42 ["extend"]
      149 CALL                             R30 2 1
      150 DUPCLOSURE                       R31 K43 [PROTO_3]
      151 CAPTURE                          VAL R28
      152 SETTABLEKS                       R31 R30 K44 ["init"]
      154 DUPCLOSURE                       R31 K45 [PROTO_6]
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R2
      157 CAPTURE                          VAL R14
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R29
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R22
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R13
      165 SETTABLEKS                       R31 R30 K46 ["render"]
      167 MOVE                             R31 R8
      168 DUPTABLE                         R32 K47 [{"Analytics", "GeneralServiceController", "Localization", "Stylizer"}]
      169 SETTABLEKS                       R9 R32 K17 ["Analytics"]
      171 SETTABLEKS                       R20 R32 K29 ["GeneralServiceController"]
      173 SETTABLEKS                       R10 R32 K18 ["Localization"]
      175 SETTABLEKS                       R6 R32 K14 ["Stylizer"]
      177 CALL                             R31 1 1
      178 MOVE                             R32 R30
      179 CALL                             R31 1 1
      180 MOVE                             R30 R31
      181 GETTABLEKS                       R31 R4 K48 ["connect"]
      183 DUPCLOSURE                       R32 K49 [PROTO_7]
      184 CAPTURE                          VAL R28
      185 DUPCLOSURE                       R33 K50 [PROTO_9]
      186 CAPTURE                          VAL R17
      187 CALL                             R31 2 1
      188 MOVE                             R32 R30
      189 CALL                             R31 1 -1
      190 RETURN                           R31 -1

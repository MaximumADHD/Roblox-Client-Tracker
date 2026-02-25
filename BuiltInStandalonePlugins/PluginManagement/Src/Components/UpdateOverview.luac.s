PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["PluginManagementService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 FASTCALL1                        TONUMBER R2 ; [+2]
        8 GETIMPORT                        R1 K5 [tonumber]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K6 ["state"]
       14 GETTABLEKS                       R3 R4 K7 ["checked"]
       16 NOT                              R2 R3
       17 MOVE                             R5 R1
       18 MOVE                             R6 R2
       19 NAMECALL                         R3 R0 K8 ["SetAutoUpdate"]
       21 CALL                             R3 3 0
       22 GETUPVAL                         R3 1
       23 DUPTABLE                         R5 K10 [{"checked", "lastModified"}]
       24 SETTABLEKS                       R2 R5 K7 ["checked"]
       26 GETUPVAL                         R8 2
       27 GETTABLEKS                       R7 R8 K11 ["data"]
       29 GETTABLEKS                       R6 R7 K12 ["updated"]
       31 SETTABLEKS                       R6 R5 K9 ["lastModified"]
       33 NAMECALL                         R3 R3 K13 ["setState"]
       35 CALL                             R3 2 0
       36 JUMPIFNOT                        R2 ; [+24]
       37 GETUPVAL                         R3 3
       38 JUMPIFNOT                        R3 ; [+22]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R3 R4 K14 ["Analytics"]
       42 LOADK                            R5 K15 ["TryUpdatePlugin"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K11 ["data"]
       46 GETTABLEKS                       R6 R7 K16 ["assetId"]
       48 NAMECALL                         R3 R3 K17 ["report"]
       50 CALL                             R3 3 0
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K18 ["UpdatePlugin"]
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R4 R5 K11 ["data"]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R5 R6 K14 ["Analytics"]
       60 CALL                             R3 2 0
       61 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["plugin"]
        4 GETTABLEKS                       R3 R1 K2 ["updateAvailable"]
        6 GETTABLEKS                       R6 R1 K3 ["data"]
        8 GETTABLEKS                       R5 R6 K4 ["assetId"]
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K6 [tostring]
       13 CALL                             R4 1 1
       14 DUPTABLE                         R5 K9 [{"checked", "lastModified"}]
       15 GETTABLEKS                       R7 R1 K3 ["data"]
       17 GETTABLEKS                       R6 R7 K10 ["autoUpdateEnabled"]
       19 SETTABLEKS                       R6 R5 K7 ["checked"]
       21 GETTABLEKS                       R7 R1 K3 ["data"]
       23 GETTABLEKS                       R6 R7 K11 ["updated"]
       25 SETTABLEKS                       R6 R5 K8 ["lastModified"]
       27 SETTABLEKS                       R5 R0 K12 ["state"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R5 R0 K13 ["onClick"]
       36 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K11 [{"HorizontalAlignment", "LayoutOrder", "Layout", "Position", "Size", "Spacing", "Style"}]
       13 GETIMPORT                        R8 K14 [Enum.HorizontalAlignment.Left]
       15 SETTABLEKS                       R8 R7 K5 ["HorizontalAlignment"]
       17 SETTABLEKS                       R2 R7 K1 ["LayoutOrder"]
       19 GETIMPORT                        R8 K17 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R8 R7 K6 ["Layout"]
       23 GETIMPORT                        R8 K20 [UDim2.fromOffset]
       25 LOADN                            R9 0
       26 LOADN                            R10 0
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K7 ["Position"]
       30 GETIMPORT                        R8 K22 [UDim2.new]
       32 LOADN                            R9 1
       33 LOADN                            R10 0
       34 LOADN                            R11 0
       35 GETUPVAL                         R13 2
       36 GETTABLEKS                       R12 R13 K23 ["PLUGIN_UPDATE_HEIGHT"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K8 ["Size"]
       41 LOADN                            R8 10
       42 SETTABLEKS                       R8 R7 K9 ["Spacing"]
       44 LOADK                            R8 K24 ["Box"]
       45 SETTABLEKS                       R8 R7 K10 ["Style"]
       47 DUPTABLE                         R8 K28 [{"UpdatePane", "Separator", "LastUpdatedText"}]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K4 ["createElement"]
       51 GETUPVAL                         R10 1
       52 DUPTABLE                         R11 K30 [{"AutomaticSize", "Layout", "LayoutOrder", "Spacing", "Style"}]
       53 GETIMPORT                        R12 K32 [Enum.AutomaticSize.XY]
       55 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
       57 GETIMPORT                        R12 K17 [Enum.FillDirection.Horizontal]
       59 SETTABLEKS                       R12 R11 K6 ["Layout"]
       61 LOADN                            R12 1
       62 SETTABLEKS                       R12 R11 K1 ["LayoutOrder"]
       64 LOADN                            R12 10
       65 SETTABLEKS                       R12 R11 K9 ["Spacing"]
       67 LOADK                            R12 K24 ["Box"]
       68 SETTABLEKS                       R12 R11 K10 ["Style"]
       70 DUPTABLE                         R12 K35 [{"UpdateCheckbox", "UpdateText"}]
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R13 R14 K4 ["createElement"]
       74 GETUPVAL                         R14 3
       75 DUPTABLE                         R15 K40 [{"AutomaticSize", "Checked", "Disabled", "Font", "LayoutOrder", "OnClick"}]
       76 GETIMPORT                        R16 K32 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
       80 GETTABLEKS                       R17 R0 K41 ["state"]
       82 GETTABLEKS                       R16 R17 K42 ["checked"]
       84 SETTABLEKS                       R16 R15 K36 ["Checked"]
       86 LOADB                            R16 0
       87 SETTABLEKS                       R16 R15 K37 ["Disabled"]
       89 GETTABLEKS                       R16 R4 K38 ["Font"]
       91 SETTABLEKS                       R16 R15 K38 ["Font"]
       93 LOADN                            R16 1
       94 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
       96 GETTABLEKS                       R16 R0 K43 ["onClick"]
       98 SETTABLEKS                       R16 R15 K39 ["OnClick"]
      100 CALL                             R13 2 1
      101 SETTABLEKS                       R13 R12 K33 ["UpdateCheckbox"]
      103 GETUPVAL                         R14 0
      104 GETTABLEKS                       R13 R14 K4 ["createElement"]
      106 GETUPVAL                         R14 4
      107 DUPTABLE                         R15 K47 [{"AutomaticSize", "Font", "LayoutOrder", "Text", "TextSize", "TextXAlignment"}]
      108 GETIMPORT                        R16 K32 [Enum.AutomaticSize.XY]
      110 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
      112 GETTABLEKS                       R16 R4 K38 ["Font"]
      114 SETTABLEKS                       R16 R15 K38 ["Font"]
      116 LOADN                            R16 2
      117 SETTABLEKS                       R16 R15 K1 ["LayoutOrder"]
      119 LOADK                            R18 K48 ["PluginEntry"]
      120 LOADK                            R19 K49 ["AutoUpdateText"]
      121 NAMECALL                         R16 R3 K50 ["getText"]
      123 CALL                             R16 3 1
      124 SETTABLEKS                       R16 R15 K44 ["Text"]
      126 LOADN                            R16 16
      127 SETTABLEKS                       R16 R15 K45 ["TextSize"]
      129 GETIMPORT                        R16 K51 [Enum.TextXAlignment.Left]
      131 SETTABLEKS                       R16 R15 K46 ["TextXAlignment"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K34 ["UpdateText"]
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K25 ["UpdatePane"]
      139 GETUPVAL                         R10 0
      140 GETTABLEKS                       R9 R10 K4 ["createElement"]
      142 GETUPVAL                         R10 5
      143 DUPTABLE                         R11 K53 [{"DominantAxis", "LayoutOrder", "Style"}]
      144 GETIMPORT                        R12 K55 [Enum.DominantAxis.Height]
      146 SETTABLEKS                       R12 R11 K52 ["DominantAxis"]
      148 LOADN                            R12 2
      149 SETTABLEKS                       R12 R11 K1 ["LayoutOrder"]
      151 GETTABLEKS                       R12 R4 K26 ["Separator"]
      153 SETTABLEKS                       R12 R11 K10 ["Style"]
      155 CALL                             R9 2 1
      156 SETTABLEKS                       R9 R8 K26 ["Separator"]
      158 GETUPVAL                         R10 0
      159 GETTABLEKS                       R9 R10 K4 ["createElement"]
      161 GETUPVAL                         R10 4
      162 DUPTABLE                         R11 K56 [{"Font", "LayoutOrder", "Size", "Text", "TextSize", "TextXAlignment"}]
      163 GETTABLEKS                       R12 R4 K38 ["Font"]
      165 SETTABLEKS                       R12 R11 K38 ["Font"]
      167 LOADN                            R12 3
      168 SETTABLEKS                       R12 R11 K1 ["LayoutOrder"]
      170 GETIMPORT                        R12 K58 [UDim2.fromScale]
      172 LOADK                            R13 K59 [0.5]
      173 LOADN                            R14 1
      174 CALL                             R12 2 1
      175 SETTABLEKS                       R12 R11 K8 ["Size"]
      177 LOADK                            R14 K48 ["PluginEntry"]
      178 LOADK                            R15 K60 ["AutoUpdateEntry"]
      179 DUPTABLE                         R16 K62 [{"date"}]
      180 GETTABLEKS                       R18 R0 K41 ["state"]
      182 GETTABLEKS                       R17 R18 K63 ["lastModified"]
      184 SETTABLEKS                       R17 R16 K61 ["date"]
      186 NAMECALL                         R12 R3 K50 ["getText"]
      188 CALL                             R12 4 1
      189 SETTABLEKS                       R12 R11 K44 ["Text"]
      191 LOADN                            R12 16
      192 SETTABLEKS                       R12 R11 K45 ["TextSize"]
      194 GETIMPORT                        R12 K51 [Enum.TextXAlignment.Left]
      196 SETTABLEKS                       R12 R11 K46 ["TextXAlignment"]
      198 CALL                             R9 2 1
      199 SETTABLEKS                       R9 R8 K27 ["LastUpdatedText"]
      201 CALL                             R5 3 -1
      202 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"UpdatePlugin"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdatePlugin"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R6 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R6 K9 ["FitFrame"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K12 ["Constants"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K13 ["ContextServices"]
       48 GETTABLEKS                       R7 R6 K14 ["withContext"]
       50 GETTABLEKS                       R9 R3 K11 ["Util"]
       52 GETTABLEKS                       R8 R9 K15 ["deepCopy"]
       54 GETTABLEKS                       R9 R3 K16 ["UI"]
       56 GETTABLEKS                       R10 R9 K17 ["Pane"]
       58 GETTABLEKS                       R11 R9 K18 ["Checkbox"]
       60 GETTABLEKS                       R12 R9 K19 ["TextLabel"]
       62 GETTABLEKS                       R13 R9 K20 ["Separator"]
       64 GETIMPORT                        R14 K4 [require]
       66 GETTABLEKS                       R17 R0 K10 ["Src"]
       68 GETTABLEKS                       R16 R17 K21 ["Thunks"]
       70 GETTABLEKS                       R15 R16 K22 ["UpdatePlugin"]
       72 CALL                             R14 1 1
       73 GETTABLEKS                       R15 R1 K23 ["PureComponent"]
       75 LOADK                            R17 K24 ["UpdateOverview"]
       76 NAMECALL                         R15 R15 K25 ["extend"]
       78 CALL                             R15 2 1
       79 DUPTABLE                         R16 K28 [{"LayoutOrder", "data"}]
       80 LOADN                            R17 1
       81 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
       83 LOADNIL                          R17
       84 SETTABLEKS                       R17 R16 K27 ["data"]
       86 SETTABLEKS                       R16 R15 K29 ["defaultProps"]
       88 DUPCLOSURE                       R16 K30 [PROTO_1]
       89 SETTABLEKS                       R16 R15 K31 ["init"]
       91 DUPCLOSURE                       R16 K32 [PROTO_2]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 SETTABLEKS                       R16 R15 K33 ["render"]
      100 MOVE                             R16 R7
      101 DUPTABLE                         R17 K38 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
      102 GETTABLEKS                       R18 R6 K34 ["Analytics"]
      104 SETTABLEKS                       R18 R17 K34 ["Analytics"]
      106 GETTABLEKS                       R18 R6 K35 ["Localization"]
      108 SETTABLEKS                       R18 R17 K35 ["Localization"]
      110 GETTABLEKS                       R18 R6 K36 ["Plugin"]
      112 SETTABLEKS                       R18 R17 K36 ["Plugin"]
      114 GETTABLEKS                       R18 R6 K37 ["Stylizer"]
      116 SETTABLEKS                       R18 R17 K37 ["Stylizer"]
      118 CALL                             R16 1 1
      119 MOVE                             R17 R15
      120 CALL                             R16 1 1
      121 MOVE                             R15 R16
      122 DUPCLOSURE                       R16 K39 [PROTO_4]
      123 CAPTURE                          VAL R14
      124 GETTABLEKS                       R17 R2 K40 ["connect"]
      126 LOADNIL                          R18
      127 MOVE                             R19 R16
      128 CALL                             R17 2 1
      129 MOVE                             R18 R15
      130 CALL                             R17 1 -1
      131 RETURN                           R17 -1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["checked"]
       10 NOT                              R1 R2
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["props"]
       17 GETTABLEKS                       R2 R2 K5 ["PluginManagementApi"]
       19 MOVE                             R4 R0
       20 MOVE                             R5 R1
       21 NAMECALL                         R2 R2 K6 ["SetAutoUpdate"]
       23 CALL                             R2 3 0
       24 JUMP                             ; [+11]
       25 GETIMPORT                        R2 K8 [game]
       27 LOADK                            R4 K9 ["PluginManagementService"]
       28 NAMECALL                         R2 R2 K10 ["GetService"]
       30 CALL                             R2 2 1
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 NAMECALL                         R3 R2 K6 ["SetAutoUpdate"]
       35 CALL                             R3 3 0
       36 GETUPVAL                         R2 1
       37 DUPTABLE                         R4 K12 [{"checked", "lastModified"}]
       38 SETTABLEKS                       R1 R4 K3 ["checked"]
       40 GETUPVAL                         R5 3
       41 GETTABLEKS                       R5 R5 K13 ["data"]
       43 GETTABLEKS                       R5 R5 K14 ["updated"]
       45 SETTABLEKS                       R5 R4 K11 ["lastModified"]
       47 NAMECALL                         R2 R2 K15 ["setState"]
       49 CALL                             R2 2 0
       50 JUMPIFNOT                        R1 ; [+35]
       51 GETUPVAL                         R2 4
       52 JUMPIFNOT                        R2 ; [+33]
       53 GETUPVAL                         R3 2
       54 CALL                             R3 0 1
       55 JUMPIFNOT                        R3 ; [+6]
       56 GETUPVAL                         R2 1
       57 GETTABLEKS                       R2 R2 K4 ["props"]
       59 GETTABLEKS                       R2 R2 K5 ["PluginManagementApi"]
       61 JUMPIF                           R2 ; [+1]
       62 LOADNIL                          R2
       63 GETUPVAL                         R3 3
       64 GETTABLEKS                       R3 R3 K16 ["Analytics"]
       66 LOADK                            R5 K17 ["TryUpdatePlugin"]
       67 GETUPVAL                         R6 3
       68 GETTABLEKS                       R6 R6 K13 ["data"]
       70 GETTABLEKS                       R6 R6 K18 ["assetId"]
       72 NAMECALL                         R3 R3 K19 ["report"]
       74 CALL                             R3 3 0
       75 GETUPVAL                         R3 3
       76 GETTABLEKS                       R3 R3 K20 ["UpdatePlugin"]
       78 MOVE                             R4 R2
       79 GETUPVAL                         R5 3
       80 GETTABLEKS                       R5 R5 K13 ["data"]
       82 GETUPVAL                         R6 3
       83 GETTABLEKS                       R6 R6 K16 ["Analytics"]
       85 CALL                             R3 3 0
       86 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["plugin"]
        4 GETTABLEKS                       R3 R1 K2 ["updateAvailable"]
        6 GETTABLEKS                       R5 R1 K3 ["data"]
        8 GETTABLEKS                       R5 R5 K4 ["assetId"]
       10 FASTCALL1                        TOSTRING R5 ; [+2]
       11 GETIMPORT                        R4 K6 [tostring]
       13 CALL                             R4 1 1
       14 DUPTABLE                         R5 K9 [{"checked", "lastModified"}]
       15 GETTABLEKS                       R6 R1 K3 ["data"]
       17 GETTABLEKS                       R6 R6 K10 ["autoUpdateEnabled"]
       19 SETTABLEKS                       R6 R5 K7 ["checked"]
       21 GETTABLEKS                       R6 R1 K3 ["data"]
       23 GETTABLEKS                       R6 R6 K11 ["updated"]
       25 SETTABLEKS                       R6 R5 K8 ["lastModified"]
       27 SETTABLEKS                       R5 R0 K12 ["state"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R5 R0 K13 ["onClick"]
       37 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
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
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K23 ["PLUGIN_UPDATE_HEIGHT"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K8 ["Size"]
       41 LOADN                            R8 10
       42 SETTABLEKS                       R8 R7 K9 ["Spacing"]
       44 LOADK                            R8 K24 ["Box"]
       45 SETTABLEKS                       R8 R7 K10 ["Style"]
       47 DUPTABLE                         R8 K28 [{"UpdatePane", "Separator", "LastUpdatedText"}]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K4 ["createElement"]
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
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K4 ["createElement"]
       74 GETUPVAL                         R14 3
       75 DUPTABLE                         R15 K40 [{"AutomaticSize", "Checked", "Disabled", "Font", "LayoutOrder", "OnClick"}]
       76 GETIMPORT                        R16 K32 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R16 R15 K29 ["AutomaticSize"]
       80 GETTABLEKS                       R16 R0 K41 ["state"]
       82 GETTABLEKS                       R16 R16 K42 ["checked"]
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
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R13 R13 K4 ["createElement"]
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
      139 GETUPVAL                         R9 0
      140 GETTABLEKS                       R9 R9 K4 ["createElement"]
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
      158 GETUPVAL                         R9 0
      159 GETTABLEKS                       R9 R9 K4 ["createElement"]
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
      180 GETTABLEKS                       R17 R0 K41 ["state"]
      182 GETTABLEKS                       R17 R17 K63 ["lastModified"]
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
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"UpdatePlugin"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdatePlugin"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Bin"]
       13 GETTABLEKS                       R2 R2 K6 ["getFFlagStudioFixPluginManagementPluginTests"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K7 ["Packages"]
       41 GETTABLEKS                       R6 R6 K11 ["FitFrame"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Src"]
       48 GETTABLEKS                       R7 R7 K13 ["Util"]
       50 GETTABLEKS                       R7 R7 K14 ["Constants"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R4 K15 ["ContextServices"]
       55 GETTABLEKS                       R8 R7 K16 ["withContext"]
       57 GETTABLEKS                       R9 R4 K13 ["Util"]
       59 GETTABLEKS                       R9 R9 K17 ["deepCopy"]
       61 GETTABLEKS                       R10 R4 K18 ["UI"]
       63 GETTABLEKS                       R11 R10 K19 ["Pane"]
       65 GETTABLEKS                       R12 R10 K20 ["Checkbox"]
       67 GETTABLEKS                       R13 R10 K21 ["TextLabel"]
       69 GETTABLEKS                       R14 R10 K22 ["Separator"]
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R16 R0 K12 ["Src"]
       75 GETTABLEKS                       R16 R16 K23 ["Thunks"]
       77 GETTABLEKS                       R16 R16 K24 ["UpdatePlugin"]
       79 CALL                             R15 1 1
       80 LOADNIL                          R16
       81 MOVE                             R17 R1
       82 CALL                             R17 0 1
       83 JUMPIFNOT                        R17 ; [+10]
       84 GETIMPORT                        R17 K4 [require]
       86 GETTABLEKS                       R18 R0 K12 ["Src"]
       88 GETTABLEKS                       R18 R18 K13 ["Util"]
       90 GETTABLEKS                       R18 R18 K25 ["PluginManagementApi"]
       92 CALL                             R17 1 1
       93 MOVE                             R16 R17
       94 GETTABLEKS                       R17 R2 K26 ["PureComponent"]
       96 LOADK                            R19 K27 ["UpdateOverview"]
       97 NAMECALL                         R17 R17 K28 ["extend"]
       99 CALL                             R17 2 1
      100 DUPTABLE                         R18 K31 [{"LayoutOrder", "data"}]
      101 LOADN                            R19 1
      102 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      104 LOADNIL                          R19
      105 SETTABLEKS                       R19 R18 K30 ["data"]
      107 SETTABLEKS                       R18 R17 K32 ["defaultProps"]
      109 DUPCLOSURE                       R18 K33 [PROTO_1]
      110 CAPTURE                          VAL R1
      111 SETTABLEKS                       R18 R17 K34 ["init"]
      113 DUPCLOSURE                       R18 K35 [PROTO_2]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R14
      120 SETTABLEKS                       R18 R17 K36 ["render"]
      122 MOVE                             R18 R8
      123 DUPTABLE                         R19 K41 [{"Analytics", "Localization", "Plugin", "Stylizer", "PluginManagementApi"}]
      124 GETTABLEKS                       R20 R7 K37 ["Analytics"]
      126 SETTABLEKS                       R20 R19 K37 ["Analytics"]
      128 GETTABLEKS                       R20 R7 K38 ["Localization"]
      130 SETTABLEKS                       R20 R19 K38 ["Localization"]
      132 GETTABLEKS                       R20 R7 K39 ["Plugin"]
      134 SETTABLEKS                       R20 R19 K39 ["Plugin"]
      136 GETTABLEKS                       R20 R7 K40 ["Stylizer"]
      138 SETTABLEKS                       R20 R19 K40 ["Stylizer"]
      140 MOVE                             R21 R1
      141 CALL                             R21 0 1
      142 JUMPIFNOT                        R21 ; [+2]
      143 MOVE                             R20 R16
      144 JUMPIF                           R20 ; [+1]
      145 LOADNIL                          R20
      146 SETTABLEKS                       R20 R19 K25 ["PluginManagementApi"]
      148 CALL                             R18 1 1
      149 MOVE                             R19 R17
      150 CALL                             R18 1 1
      151 MOVE                             R17 R18
      152 DUPCLOSURE                       R18 K42 [PROTO_4]
      153 CAPTURE                          VAL R15
      154 GETTABLEKS                       R19 R3 K43 ["connect"]
      156 LOADNIL                          R20
      157 MOVE                             R21 R18
      158 CALL                             R19 2 1
      159 MOVE                             R20 R17
      160 CALL                             R19 1 -1
      161 RETURN                           R19 -1

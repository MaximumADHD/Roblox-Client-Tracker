PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TONUMBER R1 ; [+2]
        2 GETIMPORT                        R0 K1 [tonumber]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["state"]
        8 GETTABLEKS                       R2 R2 K3 ["checked"]
       10 NOT                              R1 R2
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["props"]
       14 GETTABLEKS                       R2 R2 K5 ["PluginManagementApi"]
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K6 ["SetAutoUpdate"]
       20 CALL                             R2 3 0
       21 GETUPVAL                         R2 1
       22 DUPTABLE                         R4 K8 [{"checked", "lastModified"}]
       23 SETTABLEKS                       R1 R4 K3 ["checked"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K9 ["data"]
       28 GETTABLEKS                       R5 R5 K10 ["updated"]
       30 SETTABLEKS                       R5 R4 K7 ["lastModified"]
       32 NAMECALL                         R2 R2 K11 ["setState"]
       34 CALL                             R2 2 0
       35 JUMPIFNOT                        R1 ; [+30]
       36 GETUPVAL                         R2 3
       37 JUMPIFNOT                        R2 ; [+28]
       38 GETUPVAL                         R2 1
       39 GETTABLEKS                       R2 R2 K4 ["props"]
       41 GETTABLEKS                       R2 R2 K5 ["PluginManagementApi"]
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R3 R3 K12 ["Analytics"]
       46 LOADK                            R5 K13 ["TryUpdatePlugin"]
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K9 ["data"]
       50 GETTABLEKS                       R6 R6 K14 ["assetId"]
       52 NAMECALL                         R3 R3 K15 ["report"]
       54 CALL                             R3 3 0
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K16 ["UpdatePlugin"]
       58 MOVE                             R4 R2
       59 GETUPVAL                         R5 2
       60 GETTABLEKS                       R5 R5 K9 ["data"]
       62 GETUPVAL                         R6 2
       63 GETTABLEKS                       R6 R6 K12 ["Analytics"]
       65 CALL                             R3 3 0
       66 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["updateAvailable"]
        4 GETTABLEKS                       R4 R1 K2 ["data"]
        6 GETTABLEKS                       R4 R4 K3 ["assetId"]
        8 FASTCALL1                        TOSTRING R4 ; [+2]
        9 GETIMPORT                        R3 K5 [tostring]
       11 CALL                             R3 1 1
       12 DUPTABLE                         R4 K8 [{"checked", "lastModified"}]
       13 GETTABLEKS                       R5 R1 K2 ["data"]
       15 GETTABLEKS                       R5 R5 K9 ["autoUpdateEnabled"]
       17 SETTABLEKS                       R5 R4 K6 ["checked"]
       19 GETTABLEKS                       R5 R1 K2 ["data"]
       21 GETTABLEKS                       R5 R5 K10 ["updated"]
       23 SETTABLEKS                       R5 R4 K7 ["lastModified"]
       25 SETTABLEKS                       R4 R0 K11 ["state"]
       27 NEWCLOSURE                       R4 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R4 R0 K12 ["onClick"]
       34 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K13 [{["HorizontalAlignment"], ["LayoutOrder"], ["Layout"], ["Position"], ["Size"], ["Spacing"] = 10, ["Style"] = "Box"}]
       13 GETIMPORT                        R8 K16 [Enum.HorizontalAlignment.Left]
       15 SETTABLEKS                       R8 R7 K5 ["HorizontalAlignment"]
       17 SETTABLEKS                       R2 R7 K1 ["LayoutOrder"]
       19 GETIMPORT                        R8 K19 [Enum.FillDirection.Horizontal]
       21 SETTABLEKS                       R8 R7 K6 ["Layout"]
       23 GETIMPORT                        R8 K22 [UDim2.fromOffset]
       25 LOADN                            R9 0
       26 LOADN                            R10 0
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K7 ["Position"]
       30 GETIMPORT                        R8 K24 [UDim2.new]
       32 LOADN                            R9 1
       33 LOADN                            R10 0
       34 LOADN                            R11 0
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K25 ["PLUGIN_UPDATE_HEIGHT"]
       38 CALL                             R8 4 1
       39 SETTABLEKS                       R8 R7 K8 ["Size"]
       41 DUPTABLE                         R8 K29 [{"UpdatePane", "Separator", "LastUpdatedText"}]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K4 ["createElement"]
       45 GETUPVAL                         R10 1
       46 DUPTABLE                         R11 K32 [{["AutomaticSize"], ["Layout"], ["LayoutOrder"] = 1, ["Spacing"] = 10, ["Style"] = "Box"}]
       47 GETIMPORT                        R12 K34 [Enum.AutomaticSize.XY]
       49 SETTABLEKS                       R12 R11 K30 ["AutomaticSize"]
       51 GETIMPORT                        R12 K19 [Enum.FillDirection.Horizontal]
       53 SETTABLEKS                       R12 R11 K6 ["Layout"]
       55 DUPTABLE                         R12 K37 [{"UpdateCheckbox", "UpdateText"}]
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R13 R13 K4 ["createElement"]
       59 GETUPVAL                         R14 3
       60 DUPTABLE                         R15 K43 [{["AutomaticSize"], ["Checked"], ["Disabled"] = False, ["Font"], ["LayoutOrder"] = 1, ["OnClick"]}]
       61 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
       63 SETTABLEKS                       R16 R15 K30 ["AutomaticSize"]
       65 GETTABLEKS                       R16 R0 K44 ["state"]
       67 GETTABLEKS                       R16 R16 K45 ["checked"]
       69 SETTABLEKS                       R16 R15 K38 ["Checked"]
       71 GETTABLEKS                       R16 R4 K41 ["Font"]
       73 SETTABLEKS                       R16 R15 K41 ["Font"]
       75 GETTABLEKS                       R16 R0 K46 ["onClick"]
       77 SETTABLEKS                       R16 R15 K42 ["OnClick"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K35 ["UpdateCheckbox"]
       82 GETUPVAL                         R13 0
       83 GETTABLEKS                       R13 R13 K4 ["createElement"]
       85 GETUPVAL                         R14 4
       86 DUPTABLE                         R15 K52 [{["AutomaticSize"], ["Font"], ["LayoutOrder"] = 2, ["Text"], ["TextSize"] = 16, ["TextXAlignment"]}]
       87 GETIMPORT                        R16 K34 [Enum.AutomaticSize.XY]
       89 SETTABLEKS                       R16 R15 K30 ["AutomaticSize"]
       91 GETTABLEKS                       R16 R4 K41 ["Font"]
       93 SETTABLEKS                       R16 R15 K41 ["Font"]
       95 LOADK                            R18 K53 ["PluginEntry"]
       96 LOADK                            R19 K54 ["AutoUpdateText"]
       97 NAMECALL                         R16 R3 K55 ["getText"]
       99 CALL                             R16 3 1
      100 SETTABLEKS                       R16 R15 K48 ["Text"]
      102 GETIMPORT                        R16 K56 [Enum.TextXAlignment.Left]
      104 SETTABLEKS                       R16 R15 K51 ["TextXAlignment"]
      106 CALL                             R13 2 1
      107 SETTABLEKS                       R13 R12 K36 ["UpdateText"]
      109 CALL                             R9 3 1
      110 SETTABLEKS                       R9 R8 K26 ["UpdatePane"]
      112 GETUPVAL                         R9 0
      113 GETTABLEKS                       R9 R9 K4 ["createElement"]
      115 GETUPVAL                         R10 5
      116 DUPTABLE                         R11 K58 [{["DominantAxis"], ["LayoutOrder"] = 2, ["Style"]}]
      117 GETIMPORT                        R12 K60 [Enum.DominantAxis.Height]
      119 SETTABLEKS                       R12 R11 K57 ["DominantAxis"]
      121 GETTABLEKS                       R12 R4 K27 ["Separator"]
      123 SETTABLEKS                       R12 R11 K11 ["Style"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K27 ["Separator"]
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K4 ["createElement"]
      131 GETUPVAL                         R10 4
      132 DUPTABLE                         R11 K62 [{["Font"], ["LayoutOrder"] = 3, ["Size"], ["Text"], ["TextSize"] = 16, ["TextXAlignment"]}]
      133 GETTABLEKS                       R12 R4 K41 ["Font"]
      135 SETTABLEKS                       R12 R11 K41 ["Font"]
      137 GETIMPORT                        R12 K64 [UDim2.fromScale]
      139 LOADK                            R13 K65 [0.5]
      140 LOADN                            R14 1
      141 CALL                             R12 2 1
      142 SETTABLEKS                       R12 R11 K8 ["Size"]
      144 LOADK                            R14 K53 ["PluginEntry"]
      145 LOADK                            R15 K66 ["AutoUpdateEntry"]
      146 DUPTABLE                         R16 K68 [{"date"}]
      147 GETTABLEKS                       R17 R0 K44 ["state"]
      149 GETTABLEKS                       R17 R17 K69 ["lastModified"]
      151 SETTABLEKS                       R17 R16 K67 ["date"]
      153 NAMECALL                         R12 R3 K55 ["getText"]
      155 CALL                             R12 4 1
      156 SETTABLEKS                       R12 R11 K48 ["Text"]
      158 GETIMPORT                        R12 K56 [Enum.TextXAlignment.Left]
      160 SETTABLEKS                       R12 R11 K51 ["TextXAlignment"]
      162 CALL                             R9 2 1
      163 SETTABLEKS                       R9 R8 K28 ["LastUpdatedText"]
      165 CALL                             R5 3 -1
      166 RETURN                           R5 -1

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
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K11 ["Constants"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K13 ["withContext"]
       43 GETTABLEKS                       R7 R3 K14 ["UI"]
       45 GETTABLEKS                       R8 R7 K15 ["Pane"]
       47 GETTABLEKS                       R9 R7 K16 ["Checkbox"]
       49 GETTABLEKS                       R10 R7 K17 ["TextLabel"]
       51 GETTABLEKS                       R11 R7 K18 ["Separator"]
       53 GETIMPORT                        R12 K4 [require]
       55 GETTABLEKS                       R13 R0 K9 ["Src"]
       57 GETTABLEKS                       R13 R13 K19 ["Thunks"]
       59 GETTABLEKS                       R13 R13 K20 ["UpdatePlugin"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K4 [require]
       64 GETTABLEKS                       R14 R0 K9 ["Src"]
       66 GETTABLEKS                       R14 R14 K10 ["Util"]
       68 GETTABLEKS                       R14 R14 K21 ["PluginManagementApi"]
       70 CALL                             R13 1 1
       71 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       73 LOADK                            R16 K23 ["UpdateOverview"]
       74 NAMECALL                         R14 R14 K24 ["extend"]
       76 CALL                             R14 2 1
       77 DUPTABLE                         R15 K29 [{["LayoutOrder"] = 1, ["data"] = }]
       78 SETTABLEKS                       R15 R14 K30 ["defaultProps"]
       80 DUPCLOSURE                       R15 K31 [PROTO_1]
       81 SETTABLEKS                       R15 R14 K32 ["init"]
       83 DUPCLOSURE                       R15 K33 [PROTO_2]
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R15 R14 K34 ["render"]
       92 MOVE                             R15 R6
       93 DUPTABLE                         R16 K39 [{"Analytics", "Localization", "Plugin", "Stylizer", "PluginManagementApi"}]
       94 GETTABLEKS                       R17 R5 K35 ["Analytics"]
       96 SETTABLEKS                       R17 R16 K35 ["Analytics"]
       98 GETTABLEKS                       R17 R5 K36 ["Localization"]
      100 SETTABLEKS                       R17 R16 K36 ["Localization"]
      102 GETTABLEKS                       R17 R5 K37 ["Plugin"]
      104 SETTABLEKS                       R17 R16 K37 ["Plugin"]
      106 GETTABLEKS                       R17 R5 K38 ["Stylizer"]
      108 SETTABLEKS                       R17 R16 K38 ["Stylizer"]
      110 SETTABLEKS                       R13 R16 K21 ["PluginManagementApi"]
      112 CALL                             R15 1 1
      113 MOVE                             R16 R14
      114 CALL                             R15 1 1
      115 MOVE                             R14 R15
      116 DUPCLOSURE                       R15 K40 [PROTO_4]
      117 CAPTURE                          VAL R12
      118 GETTABLEKS                       R16 R2 K41 ["connect"]
      120 LOADNIL                          R17
      121 MOVE                             R18 R15
      122 CALL                             R16 2 1
      123 MOVE                             R17 R14
      124 CALL                             R16 1 -1
      125 RETURN                           R16 -1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["MATERIAL_MANAGER_ENABLED"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K2 [tostring]
       11 CALL                             R4 1 1
       12 NAMECALL                         R1 R1 K3 ["setItem"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 3
       16 DUPTABLE                         R3 K5 [{"enabled"}]
       17 SETTABLEKS                       R0 R3 K4 ["enabled"]
       19 NAMECALL                         R1 R1 K6 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setEnabled"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["state"]
        6 GETTABLEKS                       R2 R3 K2 ["enabled"]
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setEnabled"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setEnabled"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Enabled"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setEnabled"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onClose"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 DUPTABLE                         R3 K2 [{"enabled"}]
        3 LOADB                            R4 0
        4 SETTABLEKS                       R4 R3 K1 ["enabled"]
        6 SETTABLEKS                       R3 R0 K3 ["state"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K4 ["new"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K4 ["new"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R4 R0 K5 ["assetHandler"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["new"]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R0 K6 ["imageLoader"]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R4 R0 K7 ["setEnabled"]
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R0 K8 ["toggleEnabled"]
       36 NEWCLOSURE                       R4 P2
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R4 R0 K9 ["onClose"]
       40 NEWCLOSURE                       R4 P3
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R4 R0 K10 ["onRestore"]
       44 NEWCLOSURE                       R4 P4
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R4 R0 K11 ["onWidgetEnabledChanged"]
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R5 R6 K12 ["Store"]
       51 GETTABLEKS                       R4 R5 K4 ["new"]
       53 GETUPVAL                         R5 7
       54 LOADNIL                          R6
       55 NEWTABLE                         R7 0 1
       57 GETUPVAL                         R9 6
       58 GETTABLEKS                       R8 R9 K13 ["thunkMiddleware"]
       60 SETLIST                          R7 R8 1 [1]
       62 LOADNIL                          R8
       63 CALL                             R4 4 1
       64 SETTABLEKS                       R4 R0 K14 ["store"]
       66 GETUPVAL                         R6 8
       67 GETTABLEKS                       R5 R6 K15 ["Localization"]
       69 GETTABLEKS                       R4 R5 K4 ["new"]
       71 DUPTABLE                         R5 K19 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       72 GETUPVAL                         R6 9
       73 SETTABLEKS                       R6 R5 K16 ["stringResourceTable"]
       75 GETUPVAL                         R6 10
       76 SETTABLEKS                       R6 R5 K17 ["translationResourceTable"]
       78 LOADK                            R6 K20 ["MaterialManager"]
       79 SETTABLEKS                       R6 R5 K18 ["pluginName"]
       81 CALL                             R4 1 1
       82 SETTABLEKS                       R4 R0 K21 ["localization"]
       84 GETUPVAL                         R6 8
       85 GETTABLEKS                       R5 R6 K22 ["Analytics"]
       87 GETTABLEKS                       R4 R5 K4 ["new"]
       89 GETUPVAL                         R5 11
       90 CALL                             R4 1 1
       91 SETTABLEKS                       R4 R0 K23 ["analytics"]
       93 GETUPVAL                         R5 12
       94 GETTABLEKS                       R4 R5 K4 ["new"]
       96 GETTABLEKS                       R5 R0 K14 ["store"]
       98 CALL                             R4 1 1
       99 SETTABLEKS                       R4 R0 K24 ["materialServiceController"]
      101 GETUPVAL                         R5 13
      102 GETTABLEKS                       R4 R5 K4 ["new"]
      104 CALL                             R4 0 1
      105 SETTABLEKS                       R4 R0 K25 ["generalServiceController"]
      107 GETUPVAL                         R5 14
      108 GETTABLEKS                       R4 R5 K4 ["new"]
      110 MOVE                             R5 R2
      111 GETTABLEKS                       R6 R0 K14 ["store"]
      113 NAMECALL                         R7 R2 K26 ["getMouse"]
      115 CALL                             R7 1 1
      116 GETTABLEKS                       R8 R0 K25 ["generalServiceController"]
      118 CALL                             R4 4 1
      119 SETTABLEKS                       R4 R0 K27 ["pluginController"]
      121 GETTABLEKS                       R4 R0 K27 ["pluginController"]
      123 NAMECALL                         R4 R4 K28 ["initialize"]
      125 CALL                             R4 1 0
      126 GETIMPORT                        R4 K30 [game]
      128 LOADK                            R6 K31 ["MaterialPickerBetaEnabled"]
      129 NAMECALL                         R4 R4 K32 ["GetEngineFeature"]
      131 CALL                             R4 2 1
      132 JUMPIF                           R4 ; [+7]
      133 GETIMPORT                        R4 K30 [game]
      135 LOADK                            R6 K33 ["ShowMaterialManagerFromElsewhere"]
      136 NAMECALL                         R4 R4 K34 ["GetFastFlag"]
      138 CALL                             R4 2 1
      139 JUMPIFNOT                        R4 ; [+21]
      140 GETUPVAL                         R4 4
      141 GETUPVAL                         R7 5
      142 GETTABLEKS                       R6 R7 K35 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
      144 NEWCLOSURE                       R7 P5
      145 CAPTURE                          VAL R0
      146 NAMECALL                         R4 R4 K36 ["Bind"]
      148 CALL                             R4 3 0
      149 GETUPVAL                         R4 15
      150 CALL                             R4 0 1
      151 JUMPIF                           R4 ; [+9]
      152 GETUPVAL                         R4 4
      153 GETUPVAL                         R7 5
      154 GETTABLEKS                       R6 R7 K37 ["DEPRECATED_HIDE_MATERIAL_MANAGER_PLUGIN_EVENT"]
      156 NEWCLOSURE                       R7 P6
      157 CAPTURE                          VAL R0
      158 NAMECALL                         R4 R4 K36 ["Bind"]
      160 CALL                             R4 3 0
      161 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["imageLoader"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["imageLoader"]
        5 NAMECALL                         R1 R1 K1 ["destroy"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["materialServiceController"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["materialServiceController"]
       13 NAMECALL                         R1 R1 K1 ["destroy"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["generalServiceController"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["generalServiceController"]
       21 NAMECALL                         R1 R1 K1 ["destroy"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["pluginController"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["pluginController"]
       29 NAMECALL                         R1 R1 K1 ["destroy"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K12 [{"Toolbar", "Active", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden"}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 LOADK                            R7 K13 ["MaterialManager"]
       15 SETTABLEKS                       R7 R6 K7 ["Title"]
       17 LOADK                            R7 K14 [""]
       18 SETTABLEKS                       R7 R6 K8 ["Tooltip"]
       20 LOADK                            R7 K14 [""]
       21 SETTABLEKS                       R7 R6 K9 ["Icon"]
       23 GETTABLEKS                       R7 R0 K15 ["toggleEnabled"]
       25 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K11 ["ClickableWhenViewportHidden"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       33 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 11
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R10 3
       25 GETTABLEKS                       R9 R10 K5 ["new"]
       27 NAMECALL                         R10 R3 K7 ["getMouse"]
       29 CALL                             R10 1 -1
       30 CALL                             R9 -1 1
       31 GETUPVAL                         R10 4
       32 CALL                             R10 0 1
       33 GETTABLEKS                       R11 R0 K8 ["localization"]
       35 GETTABLEKS                       R12 R0 K9 ["analytics"]
       37 GETTABLEKS                       R13 R0 K10 ["generalServiceController"]
       39 GETTABLEKS                       R14 R0 K11 ["materialServiceController"]
       41 GETTABLEKS                       R15 R0 K12 ["imageLoader"]
       43 GETTABLEKS                       R16 R0 K13 ["assetHandler"]
       45 GETTABLEKS                       R17 R0 K14 ["pluginController"]
       47 SETLIST                          R6 R7 11 [1]
       49 DUPTABLE                         R7 K17 [{"Toolbar", "MainWidget"}]
       50 GETUPVAL                         R9 5
       51 GETTABLEKS                       R8 R9 K18 ["createElement"]
       53 GETUPVAL                         R9 6
       54 DUPTABLE                         R10 K21 [{"Title", "RenderButtons"}]
       55 LOADK                            R11 K22 ["Edit"]
       56 SETTABLEKS                       R11 R10 K19 ["Title"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R11 R10 K20 ["RenderButtons"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K15 ["Toolbar"]
       65 GETUPVAL                         R9 5
       66 GETTABLEKS                       R8 R9 K18 ["createElement"]
       68 GETUPVAL                         R9 7
       69 NEWTABLE                         R10 16 0
       71 LOADK                            R11 K23 ["MaterialManager"]
       72 SETTABLEKS                       R11 R10 K24 ["Id"]
       74 SETTABLEKS                       R4 R10 K25 ["Enabled"]
       76 GETTABLEKS                       R11 R0 K8 ["localization"]
       78 LOADK                            R13 K2 ["Plugin"]
       79 LOADK                            R14 K26 ["Name"]
       80 NAMECALL                         R11 R11 K27 ["getText"]
       82 CALL                             R11 3 1
       83 SETTABLEKS                       R11 R10 K19 ["Title"]
       85 GETIMPORT                        R11 K31 [Enum.ZIndexBehavior.Sibling]
       87 SETTABLEKS                       R11 R10 K29 ["ZIndexBehavior"]
       89 GETIMPORT                        R11 K34 [Enum.InitialDockState.Bottom]
       91 SETTABLEKS                       R11 R10 K32 ["InitialDockState"]
       93 GETIMPORT                        R11 K36 [Vector2.new]
       95 LOADN                            R12 128
       96 LOADN                            R13 224
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K37 ["Size"]
      100 GETIMPORT                        R11 K36 [Vector2.new]
      102 LOADN                            R12 44
      103 LOADN                            R13 200
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K38 ["MinSize"]
      107 GETTABLEKS                       R11 R0 K39 ["onClose"]
      109 SETTABLEKS                       R11 R10 K40 ["OnClose"]
      111 LOADB                            R11 1
      112 SETTABLEKS                       R11 R10 K41 ["ShouldRestore"]
      114 GETTABLEKS                       R11 R0 K42 ["onRestore"]
      116 SETTABLEKS                       R11 R10 K43 ["OnWidgetRestored"]
      118 GETUPVAL                         R13 5
      119 GETTABLEKS                       R12 R13 K44 ["Change"]
      121 GETTABLEKS                       R11 R12 K25 ["Enabled"]
      123 GETTABLEKS                       R12 R0 K45 ["toggleEnabled"]
      125 SETTABLE                         R12 R10 R11
      126 NEWTABLE                         R11 0 1
      128 GETUPVAL                         R13 5
      129 GETTABLEKS                       R12 R13 K18 ["createElement"]
      131 GETUPVAL                         R13 8
      132 CALL                             R12 1 -1
      133 SETLIST                          R11 R12 -1 [1]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K16 ["MainWidget"]
      138 CALL                             R5 2 -1
      139 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R5 K8 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K9 ["UI"]
       30 GETTABLEKS                       R5 R4 K10 ["DockWidget"]
       32 GETTABLEKS                       R6 R4 K11 ["PluginButton"]
       34 GETTABLEKS                       R7 R4 K12 ["PluginToolbar"]
       36 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       38 GETTABLEKS                       R9 R8 K14 ["Plugin"]
       40 GETTABLEKS                       R10 R8 K15 ["Mouse"]
       42 GETTABLEKS                       R11 R8 K16 ["Store"]
       44 GETIMPORT                        R12 K4 [require]
       46 GETTABLEKS                       R13 R0 K17 ["SharedPluginConstants"]
       48 CALL                             R12 1 1
       49 GETIMPORT                        R13 K19 [game]
       51 LOADK                            R15 K20 ["MemStorageService"]
       52 NAMECALL                         R13 R13 K21 ["GetService"]
       54 CALL                             R13 2 1
       55 GETIMPORT                        R14 K4 [require]
       57 GETTABLEKS                       R17 R0 K22 ["Src"]
       59 GETTABLEKS                       R16 R17 K23 ["Reducers"]
       61 GETTABLEKS                       R15 R16 K24 ["MainReducer"]
       63 CALL                             R14 1 1
       64 GETIMPORT                        R15 K4 [require]
       66 GETTABLEKS                       R18 R0 K22 ["Src"]
       68 GETTABLEKS                       R17 R18 K25 ["Resources"]
       70 GETTABLEKS                       R16 R17 K26 ["MakeTheme"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R19 R0 K22 ["Src"]
       77 GETTABLEKS                       R18 R19 K25 ["Resources"]
       79 GETTABLEKS                       R17 R18 K27 ["createAnalyticsHandlers"]
       81 CALL                             R16 1 1
       82 GETTABLEKS                       R20 R0 K22 ["Src"]
       84 GETTABLEKS                       R19 R20 K25 ["Resources"]
       86 GETTABLEKS                       R18 R19 K28 ["Localization"]
       88 GETTABLEKS                       R17 R18 K29 ["SourceStrings"]
       90 GETTABLEKS                       R21 R0 K22 ["Src"]
       92 GETTABLEKS                       R20 R21 K25 ["Resources"]
       94 GETTABLEKS                       R19 R20 K28 ["Localization"]
       96 GETTABLEKS                       R18 R19 K30 ["LocalizedStrings"]
       98 GETTABLEKS                       R20 R0 K22 ["Src"]
      100 GETTABLEKS                       R19 R20 K31 ["Components"]
      102 GETIMPORT                        R20 K4 [require]
      104 GETTABLEKS                       R21 R19 K32 ["MaterialBrowser"]
      106 CALL                             R20 1 1
      107 GETTABLEKS                       R22 R0 K22 ["Src"]
      109 GETTABLEKS                       R21 R22 K33 ["Controllers"]
      111 GETIMPORT                        R22 K4 [require]
      113 GETTABLEKS                       R23 R21 K34 ["GeneralServiceController"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K4 [require]
      118 GETTABLEKS                       R24 R21 K35 ["ImageUploader"]
      120 CALL                             R23 1 1
      121 GETIMPORT                        R24 K4 [require]
      123 GETTABLEKS                       R25 R21 K36 ["ImportAssetHandler"]
      125 CALL                             R24 1 1
      126 GETIMPORT                        R25 K4 [require]
      128 GETTABLEKS                       R26 R21 K37 ["ImageLoader"]
      130 CALL                             R25 1 1
      131 GETIMPORT                        R26 K4 [require]
      133 GETTABLEKS                       R27 R21 K38 ["MaterialServiceController"]
      135 CALL                             R26 1 1
      136 GETIMPORT                        R27 K4 [require]
      138 GETTABLEKS                       R28 R21 K39 ["PluginController"]
      140 CALL                             R27 1 1
      141 GETIMPORT                        R28 K4 [require]
      143 GETTABLEKS                       R31 R0 K22 ["Src"]
      145 GETTABLEKS                       R30 R31 K40 ["Flags"]
      147 GETTABLEKS                       R29 R30 K41 ["getFFlagMaterialPickerUIChanges"]
      149 CALL                             R28 1 1
      150 GETIMPORT                        R29 K4 [require]
      152 GETTABLEKS                       R32 R0 K22 ["Src"]
      154 GETTABLEKS                       R31 R32 K40 ["Flags"]
      156 GETTABLEKS                       R30 R31 K42 ["getFFlagMaterialPickerRemoveToggles"]
      158 CALL                             R29 1 1
      159 GETTABLEKS                       R30 R1 K43 ["PureComponent"]
      161 LOADK                            R32 K44 ["MainPlugin"]
      162 NAMECALL                         R30 R30 K45 ["extend"]
      164 CALL                             R30 2 1
      165 DUPCLOSURE                       R31 K46 [PROTO_7]
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R24
      168 CAPTURE                          VAL R25
      169 CAPTURE                          VAL R28
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R14
      174 CAPTURE                          VAL R8
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R26
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R27
      181 CAPTURE                          VAL R29
      182 SETTABLEKS                       R31 R30 K47 ["init"]
      184 DUPCLOSURE                       R31 K48 [PROTO_8]
      185 SETTABLEKS                       R31 R30 K49 ["willUnmount"]
      187 DUPCLOSURE                       R31 K50 [PROTO_9]
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R6
      190 SETTABLEKS                       R31 R30 K51 ["renderButtons"]
      192 DUPCLOSURE                       R31 K52 [PROTO_11]
      193 CAPTURE                          VAL R8
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R11
      196 CAPTURE                          VAL R10
      197 CAPTURE                          VAL R15
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R7
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R20
      202 SETTABLEKS                       R31 R30 K53 ["render"]
      204 RETURN                           R30 1

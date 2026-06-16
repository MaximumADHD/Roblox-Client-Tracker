PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Checked"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["toggleEnabled"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MATERIAL_MANAGER_ENABLED"]
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R5 R0
        6 GETIMPORT                        R4 K2 [tostring]
        8 CALL                             R4 1 1
        9 NAMECALL                         R1 R1 K3 ["setItem"]
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 2
       13 DUPTABLE                         R3 K5 [{"enabled"}]
       14 SETTABLEKS                       R0 R3 K4 ["enabled"]
       16 NAMECALL                         R1 R1 K6 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["enabled"]
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETIMPORT                        R0 K4 [task.spawn]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFEQ                         R0 R1 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Enabled"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 GETTABLEKS                       R3 R1 K0 ["Plugin"]
        4 LOADK                            R5 K1 ["Actions"]
        5 NAMECALL                         R3 R3 K2 ["GetPluginComponent"]
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K5 [task.spawn]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U0
       14 CALL                             R4 1 0
       15 DUPTABLE                         R4 K7 [{"enabled"}]
       16 NEWTABLE                         R8 0 1
       18 GETUPVAL                         R9 0
       19 SETLIST                          R8 R9 1 [1]
       21 NAMECALL                         R6 R3 K8 ["GetAsync"]
       23 CALL                             R6 2 1
       24 GETTABLEN                        R5 R6 1
       25 GETTABLEKS                       R5 R5 K9 ["Checked"]
       27 SETTABLEKS                       R5 R4 K6 ["enabled"]
       29 SETTABLEKS                       R4 R0 K10 ["state"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K11 ["new"]
       34 CALL                             R4 0 1
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K11 ["new"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 SETTABLEKS                       R5 R0 K12 ["assetHandler"]
       42 GETUPVAL                         R5 3
       43 GETTABLEKS                       R5 R5 K11 ["new"]
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R0 K13 ["imageLoader"]
       48 NEWCLOSURE                       R5 P1
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R5 R0 K14 ["setEnabled"]
       54 NEWCLOSURE                       R5 P2
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R5 R0 K15 ["toggleEnabled"]
       58 NEWCLOSURE                       R5 P3
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U0
       62 SETTABLEKS                       R5 R0 K16 ["onClose"]
       64 NEWCLOSURE                       R5 P4
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U0
       68 SETTABLEKS                       R5 R0 K17 ["onRestore"]
       70 NEWCLOSURE                       R5 P5
       71 CAPTURE                          VAL R0
       72 SETTABLEKS                       R5 R0 K18 ["onWidgetEnabledChanged"]
       74 GETUPVAL                         R5 6
       75 GETTABLEKS                       R5 R5 K19 ["Store"]
       77 GETTABLEKS                       R5 R5 K11 ["new"]
       79 GETUPVAL                         R6 7
       80 LOADNIL                          R7
       81 NEWTABLE                         R8 0 1
       83 GETUPVAL                         R9 6
       84 GETTABLEKS                       R9 R9 K20 ["thunkMiddleware"]
       86 SETLIST                          R8 R9 1 [1]
       88 LOADNIL                          R9
       89 CALL                             R5 4 1
       90 SETTABLEKS                       R5 R0 K21 ["store"]
       92 GETUPVAL                         R5 8
       93 GETTABLEKS                       R5 R5 K22 ["Localization"]
       95 GETTABLEKS                       R5 R5 K11 ["new"]
       97 DUPTABLE                         R6 K26 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       98 GETUPVAL                         R7 9
       99 SETTABLEKS                       R7 R6 K23 ["stringResourceTable"]
      101 GETUPVAL                         R7 10
      102 SETTABLEKS                       R7 R6 K24 ["translationResourceTable"]
      104 LOADK                            R7 K27 ["MaterialManager"]
      105 SETTABLEKS                       R7 R6 K25 ["pluginName"]
      107 CALL                             R5 1 1
      108 SETTABLEKS                       R5 R0 K28 ["localization"]
      110 GETUPVAL                         R5 8
      111 GETTABLEKS                       R5 R5 K29 ["Analytics"]
      113 GETTABLEKS                       R5 R5 K11 ["new"]
      115 GETUPVAL                         R6 11
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R5 R0 K30 ["analytics"]
      119 GETUPVAL                         R5 12
      120 GETTABLEKS                       R5 R5 K11 ["new"]
      122 GETTABLEKS                       R6 R0 K21 ["store"]
      124 CALL                             R5 1 1
      125 SETTABLEKS                       R5 R0 K31 ["materialServiceController"]
      127 GETUPVAL                         R5 13
      128 GETTABLEKS                       R5 R5 K11 ["new"]
      130 CALL                             R5 0 1
      131 SETTABLEKS                       R5 R0 K32 ["generalServiceController"]
      133 GETUPVAL                         R5 14
      134 GETTABLEKS                       R5 R5 K11 ["new"]
      136 MOVE                             R6 R2
      137 GETTABLEKS                       R7 R0 K21 ["store"]
      139 NAMECALL                         R8 R2 K33 ["getMouse"]
      141 CALL                             R8 1 1
      142 GETTABLEKS                       R9 R0 K32 ["generalServiceController"]
      144 CALL                             R5 4 1
      145 SETTABLEKS                       R5 R0 K34 ["pluginController"]
      147 GETTABLEKS                       R5 R0 K34 ["pluginController"]
      149 NAMECALL                         R5 R5 K35 ["initialize"]
      151 CALL                             R5 1 0
      152 GETIMPORT                        R5 K37 [game]
      154 LOADK                            R7 K38 ["MaterialPickerBetaEnabled"]
      155 NAMECALL                         R5 R5 K39 ["GetEngineFeature"]
      157 CALL                             R5 2 1
      158 JUMPIF                           R5 ; [+7]
      159 GETIMPORT                        R5 K37 [game]
      161 LOADK                            R7 K40 ["ShowMaterialManagerFromElsewhere"]
      162 NAMECALL                         R5 R5 K41 ["GetFastFlag"]
      164 CALL                             R5 2 1
      165 JUMPIFNOT                        R5 ; [+9]
      166 GETUPVAL                         R5 4
      167 GETUPVAL                         R7 5
      168 GETTABLEKS                       R7 R7 K42 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
      170 NEWCLOSURE                       R8 P6
      171 CAPTURE                          VAL R0
      172 NAMECALL                         R5 R5 K43 ["Bind"]
      174 CALL                             R5 3 0
      175 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["provide"]
       11 NEWTABLE                         R6 0 11
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K5 ["new"]
       21 GETTABLEKS                       R9 R0 K6 ["store"]
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K5 ["new"]
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
       50 GETUPVAL                         R8 5
       51 GETTABLEKS                       R8 R8 K18 ["createElement"]
       53 GETUPVAL                         R9 6
       54 DUPTABLE                         R10 K21 [{"Title", "RenderButtons"}]
       55 LOADK                            R11 K22 ["Edit"]
       56 SETTABLEKS                       R11 R10 K19 ["Title"]
       58 NEWCLOSURE                       R11 P0
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R11 R10 K20 ["RenderButtons"]
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K15 ["Toolbar"]
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R8 R8 K18 ["createElement"]
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
      118 GETUPVAL                         R11 5
      119 GETTABLEKS                       R11 R11 K44 ["Change"]
      121 GETTABLEKS                       R11 R11 K25 ["Enabled"]
      123 GETTABLEKS                       R12 R0 K45 ["toggleEnabled"]
      125 SETTABLE                         R12 R10 R11
      126 NEWTABLE                         R11 0 1
      128 GETUPVAL                         R12 5
      129 GETTABLEKS                       R12 R12 K18 ["createElement"]
      131 GETUPVAL                         R13 8
      132 CALL                             R12 1 -1
      133 SETLIST                          R11 R12 -1 [1]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K16 ["MainWidget"]
      138 CALL                             R5 2 -1
      139 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["Packages"]
       25 GETTABLEKS                       R4 R4 K8 ["Framework"]
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
       57 GETTABLEKS                       R15 R0 K22 ["Src"]
       59 GETTABLEKS                       R15 R15 K23 ["Reducers"]
       61 GETTABLEKS                       R15 R15 K24 ["MainReducer"]
       63 CALL                             R14 1 1
       64 GETIMPORT                        R15 K4 [require]
       66 GETTABLEKS                       R16 R0 K22 ["Src"]
       68 GETTABLEKS                       R16 R16 K25 ["Resources"]
       70 GETTABLEKS                       R16 R16 K26 ["MakeTheme"]
       72 CALL                             R15 1 1
       73 GETIMPORT                        R16 K4 [require]
       75 GETTABLEKS                       R17 R0 K22 ["Src"]
       77 GETTABLEKS                       R17 R17 K25 ["Resources"]
       79 GETTABLEKS                       R17 R17 K27 ["createAnalyticsHandlers"]
       81 CALL                             R16 1 1
       82 GETTABLEKS                       R17 R0 K22 ["Src"]
       84 GETTABLEKS                       R17 R17 K25 ["Resources"]
       86 GETTABLEKS                       R17 R17 K28 ["Localization"]
       88 GETTABLEKS                       R17 R17 K29 ["SourceStrings"]
       90 GETTABLEKS                       R18 R0 K22 ["Src"]
       92 GETTABLEKS                       R18 R18 K25 ["Resources"]
       94 GETTABLEKS                       R18 R18 K28 ["Localization"]
       96 GETTABLEKS                       R18 R18 K30 ["LocalizedStrings"]
       98 GETTABLEKS                       R19 R0 K22 ["Src"]
      100 GETTABLEKS                       R19 R19 K31 ["Components"]
      102 GETIMPORT                        R20 K4 [require]
      104 GETTABLEKS                       R21 R19 K32 ["MaterialBrowser"]
      106 CALL                             R20 1 1
      107 GETTABLEKS                       R21 R0 K22 ["Src"]
      109 GETTABLEKS                       R21 R21 K33 ["Controllers"]
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
      141 DUPTABLE                         R28 K45 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      142 LOADK                            R29 K46 ["Standalone"]
      143 SETTABLEKS                       R29 R28 K40 ["DataModel"]
      145 LOADK                            R29 K47 ["Unknown"]
      146 SETTABLEKS                       R29 R28 K41 ["PluginType"]
      148 LOADK                            R29 K48 ["MaterialManager"]
      149 SETTABLEKS                       R29 R28 K42 ["PluginId"]
      151 LOADK                            R29 K49 ["Actions"]
      152 SETTABLEKS                       R29 R28 K43 ["Category"]
      154 LOADK                            R29 K50 ["Toggle"]
      155 SETTABLEKS                       R29 R28 K44 ["ItemId"]
      157 GETTABLEKS                       R29 R1 K51 ["PureComponent"]
      159 LOADK                            R31 K52 ["MainPlugin"]
      160 NAMECALL                         R29 R29 K53 ["extend"]
      162 CALL                             R29 2 1
      163 DUPCLOSURE                       R30 K54 [PROTO_10]
      164 CAPTURE                          VAL R28
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R25
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R18
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R26
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R27
      179 SETTABLEKS                       R30 R29 K55 ["init"]
      181 DUPCLOSURE                       R30 K56 [PROTO_11]
      182 SETTABLEKS                       R30 R29 K57 ["willUnmount"]
      184 DUPCLOSURE                       R30 K58 [PROTO_12]
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R6
      187 SETTABLEKS                       R30 R29 K59 ["renderButtons"]
      189 DUPCLOSURE                       R30 K60 [PROTO_14]
      190 CAPTURE                          VAL R8
      191 CAPTURE                          VAL R9
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R7
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R20
      199 SETTABLEKS                       R30 R29 K61 ["render"]
      201 RETURN                           R29 1

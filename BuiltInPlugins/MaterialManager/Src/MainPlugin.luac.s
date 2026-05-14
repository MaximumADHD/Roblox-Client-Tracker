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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["MATERIAL_MANAGER_ENABLED"]
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
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K5 ["setEnabled"]
       18 LOADB                            R1 0
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["enabled"]
        7 JUMPIFEQ                         R0 R1 ; [+13]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["setEnabled"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

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
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+7]
        4 GETTABLEKS                       R3 R1 K0 ["Plugin"]
        6 LOADK                            R5 K1 ["Actions"]
        7 NAMECALL                         R3 R3 K2 ["GetPluginComponent"]
        9 CALL                             R3 2 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 GETUPVAL                         R4 0
       13 JUMPIFNOT                        R4 ; [+7]
       14 GETIMPORT                        R4 K5 [task.spawn]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U1
       20 CALL                             R4 1 0
       21 DUPTABLE                         R4 K7 [{"enabled"}]
       22 GETUPVAL                         R6 0
       23 JUMPIFNOT                        R6 ; [+12]
       24 NEWTABLE                         R8 0 1
       26 GETUPVAL                         R9 1
       27 SETLIST                          R8 R9 1 [1]
       29 NAMECALL                         R6 R3 K8 ["GetAsync"]
       31 CALL                             R6 2 1
       32 GETTABLEN                        R5 R6 1
       33 GETTABLEKS                       R5 R5 K9 ["Checked"]
       35 JUMP                             ; [+1]
       36 LOADB                            R5 0
       37 SETTABLEKS                       R5 R4 K6 ["enabled"]
       39 SETTABLEKS                       R4 R0 K10 ["state"]
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K11 ["new"]
       44 CALL                             R4 0 1
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K11 ["new"]
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R0 K12 ["assetHandler"]
       52 GETUPVAL                         R5 4
       53 GETTABLEKS                       R5 R5 K11 ["new"]
       55 CALL                             R5 0 1
       56 SETTABLEKS                       R5 R0 K13 ["imageLoader"]
       58 NEWCLOSURE                       R5 P1
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R5 R0 K14 ["setEnabled"]
       65 NEWCLOSURE                       R5 P2
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R5 R0 K15 ["toggleEnabled"]
       69 NEWCLOSURE                       R5 P3
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R3
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R5 R0 K16 ["onClose"]
       76 NEWCLOSURE                       R5 P4
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U1
       81 SETTABLEKS                       R5 R0 K17 ["onRestore"]
       83 NEWCLOSURE                       R5 P5
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R5 R0 K18 ["onWidgetEnabledChanged"]
       87 GETUPVAL                         R5 8
       88 GETTABLEKS                       R5 R5 K19 ["Store"]
       90 GETTABLEKS                       R5 R5 K11 ["new"]
       92 GETUPVAL                         R6 9
       93 LOADNIL                          R7
       94 NEWTABLE                         R8 0 1
       96 GETUPVAL                         R9 8
       97 GETTABLEKS                       R9 R9 K20 ["thunkMiddleware"]
       99 SETLIST                          R8 R9 1 [1]
      101 LOADNIL                          R9
      102 CALL                             R5 4 1
      103 SETTABLEKS                       R5 R0 K21 ["store"]
      105 GETUPVAL                         R5 10
      106 GETTABLEKS                       R5 R5 K22 ["Localization"]
      108 GETTABLEKS                       R5 R5 K11 ["new"]
      110 DUPTABLE                         R6 K26 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      111 GETUPVAL                         R7 11
      112 SETTABLEKS                       R7 R6 K23 ["stringResourceTable"]
      114 GETUPVAL                         R7 12
      115 SETTABLEKS                       R7 R6 K24 ["translationResourceTable"]
      117 LOADK                            R7 K27 ["MaterialManager"]
      118 SETTABLEKS                       R7 R6 K25 ["pluginName"]
      120 CALL                             R5 1 1
      121 SETTABLEKS                       R5 R0 K28 ["localization"]
      123 GETUPVAL                         R5 10
      124 GETTABLEKS                       R5 R5 K29 ["Analytics"]
      126 GETTABLEKS                       R5 R5 K11 ["new"]
      128 GETUPVAL                         R6 13
      129 CALL                             R5 1 1
      130 SETTABLEKS                       R5 R0 K30 ["analytics"]
      132 GETUPVAL                         R5 14
      133 GETTABLEKS                       R5 R5 K11 ["new"]
      135 GETTABLEKS                       R6 R0 K21 ["store"]
      137 CALL                             R5 1 1
      138 SETTABLEKS                       R5 R0 K31 ["materialServiceController"]
      140 GETUPVAL                         R5 15
      141 GETTABLEKS                       R5 R5 K11 ["new"]
      143 CALL                             R5 0 1
      144 SETTABLEKS                       R5 R0 K32 ["generalServiceController"]
      146 GETUPVAL                         R5 16
      147 GETTABLEKS                       R5 R5 K11 ["new"]
      149 MOVE                             R6 R2
      150 GETTABLEKS                       R7 R0 K21 ["store"]
      152 NAMECALL                         R8 R2 K33 ["getMouse"]
      154 CALL                             R8 1 1
      155 GETTABLEKS                       R9 R0 K32 ["generalServiceController"]
      157 CALL                             R5 4 1
      158 SETTABLEKS                       R5 R0 K34 ["pluginController"]
      160 GETTABLEKS                       R5 R0 K34 ["pluginController"]
      162 NAMECALL                         R5 R5 K35 ["initialize"]
      164 CALL                             R5 1 0
      165 GETIMPORT                        R5 K37 [game]
      167 LOADK                            R7 K38 ["MaterialPickerBetaEnabled"]
      168 NAMECALL                         R5 R5 K39 ["GetEngineFeature"]
      170 CALL                             R5 2 1
      171 JUMPIF                           R5 ; [+7]
      172 GETIMPORT                        R5 K37 [game]
      174 LOADK                            R7 K40 ["ShowMaterialManagerFromElsewhere"]
      175 NAMECALL                         R5 R5 K41 ["GetFastFlag"]
      177 CALL                             R5 2 1
      178 JUMPIFNOT                        R5 ; [+9]
      179 GETUPVAL                         R5 6
      180 GETUPVAL                         R7 7
      181 GETTABLEKS                       R7 R7 K42 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
      183 NEWCLOSURE                       R8 P6
      184 CAPTURE                          VAL R0
      185 NAMECALL                         R5 R5 K43 ["Bind"]
      187 CALL                             R5 3 0
      188 RETURN                           R0 0

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
      141 GETIMPORT                        R28 K4 [require]
      143 GETTABLEKS                       R29 R0 K22 ["Src"]
      145 GETTABLEKS                       R29 R29 K40 ["Flags"]
      147 GETTABLEKS                       R29 R29 K41 ["getFFlagMaterialPickerUIChanges"]
      149 CALL                             R28 1 1
      150 GETIMPORT                        R29 K19 [game]
      152 LOADK                            R31 K42 ["MaterialManagerCheckableBugfix"]
      153 NAMECALL                         R29 R29 K43 ["GetEngineFeature"]
      155 CALL                             R29 2 1
      156 DUPTABLE                         R30 K49 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
      157 LOADK                            R31 K50 ["Standalone"]
      158 SETTABLEKS                       R31 R30 K44 ["DataModel"]
      160 LOADK                            R31 K51 ["Unknown"]
      161 SETTABLEKS                       R31 R30 K45 ["PluginType"]
      163 LOADK                            R31 K52 ["MaterialManager"]
      164 SETTABLEKS                       R31 R30 K46 ["PluginId"]
      166 LOADK                            R31 K53 ["Actions"]
      167 SETTABLEKS                       R31 R30 K47 ["Category"]
      169 LOADK                            R31 K54 ["Toggle"]
      170 SETTABLEKS                       R31 R30 K48 ["ItemId"]
      172 GETTABLEKS                       R31 R1 K55 ["PureComponent"]
      174 LOADK                            R33 K56 ["MainPlugin"]
      175 NAMECALL                         R31 R31 K57 ["extend"]
      177 CALL                             R31 2 1
      178 DUPCLOSURE                       R32 K58 [PROTO_10]
      179 CAPTURE                          VAL R29
      180 CAPTURE                          VAL R30
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R24
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R28
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R12
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R8
      190 CAPTURE                          VAL R17
      191 CAPTURE                          VAL R18
      192 CAPTURE                          VAL R16
      193 CAPTURE                          VAL R26
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R27
      196 SETTABLEKS                       R32 R31 K59 ["init"]
      198 DUPCLOSURE                       R32 K60 [PROTO_11]
      199 SETTABLEKS                       R32 R31 K61 ["willUnmount"]
      201 DUPCLOSURE                       R32 K62 [PROTO_12]
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R6
      204 SETTABLEKS                       R32 R31 K63 ["renderButtons"]
      206 DUPCLOSURE                       R32 K64 [PROTO_14]
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R10
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R7
      214 CAPTURE                          VAL R5
      215 CAPTURE                          VAL R20
      216 SETTABLEKS                       R32 R31 K65 ["render"]
      218 RETURN                           R31 1

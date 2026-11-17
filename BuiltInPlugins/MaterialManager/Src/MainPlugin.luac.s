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
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 GETTABLEKS                       R0 R0 K1 ["Checked"]
       12 LOADB                            R1 1
       13 SETUPVAL                         R1 2
       14 GETUPVAL                         R1 3
       15 GETTABLEKS                       R1 R1 K2 ["state"]
       17 GETTABLEKS                       R1 R1 K3 ["enabled"]
       19 JUMPIFEQ                         R1 R0 ; [+6]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K4 ["setEnabled"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["state"]
        6 GETTABLEKS                       R2 R2 K2 ["enabled"]
        8 NOT                              R1 R2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["state"]
        6 GETTABLEKS                       R1 R1 K1 ["enabled"]
        8 JUMPIFEQ                         R0 R1 ; [+7]
       10 GETIMPORT                        R1 K4 [task.spawn]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setEnabled"]
        3 GETTABLEKS                       R2 R0 K1 ["Enabled"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setEnabled"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_13:
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
       15 GETUPVAL                         R4 1
       16 JUMPIFNOT                        R4 ; [+4]
       17 DUPTABLE                         R4 K8 [{["enabled"] = False}]
       18 SETTABLEKS                       R4 R0 K9 ["state"]
       20 JUMP                             ; [+16]
       21 DUPTABLE                         R4 K10 [{"enabled"}]
       22 NEWTABLE                         R8 0 1
       24 GETUPVAL                         R9 0
       25 SETLIST                          R8 R9 1 [1]
       27 NAMECALL                         R6 R3 K11 ["GetAsync"]
       29 CALL                             R6 2 1
       30 GETTABLEN                        R5 R6 1
       31 GETTABLEKS                       R5 R5 K12 ["Checked"]
       33 SETTABLEKS                       R5 R4 K6 ["enabled"]
       35 SETTABLEKS                       R4 R0 K9 ["state"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K13 ["new"]
       40 CALL                             R4 0 1
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K13 ["new"]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 1
       46 SETTABLEKS                       R5 R0 K14 ["assetHandler"]
       48 GETUPVAL                         R5 4
       49 GETTABLEKS                       R5 R5 K13 ["new"]
       51 CALL                             R5 0 1
       52 SETTABLEKS                       R5 R0 K15 ["imageLoader"]
       54 NEWCLOSURE                       R5 P1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R5 R0 K16 ["setEnabled"]
       60 LOADB                            R5 0
       61 GETUPVAL                         R6 1
       62 JUMPIFNOT                        R6 ; [+8]
       63 GETIMPORT                        R6 K5 [task.spawn]
       65 NEWCLOSURE                       R7 P2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          REF R5
       69 CAPTURE                          VAL R0
       70 CALL                             R6 1 0
       71 NEWCLOSURE                       R6 P3
       72 CAPTURE                          VAL R0
       73 SETTABLEKS                       R6 R0 K17 ["toggleEnabled"]
       75 NEWCLOSURE                       R6 P4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R3
       78 CAPTURE                          UPVAL U0
       79 SETTABLEKS                       R6 R0 K18 ["onClose"]
       81 GETUPVAL                         R6 1
       82 JUMPIFNOT                        R6 ; [+8]
       83 NEWCLOSURE                       R6 P5
       84 CAPTURE                          REF R5
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U0
       88 SETTABLEKS                       R6 R0 K19 ["onRestore"]
       90 JUMP                             ; [+6]
       91 NEWCLOSURE                       R6 P6
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R3
       94 CAPTURE                          UPVAL U0
       95 SETTABLEKS                       R6 R0 K19 ["onRestore"]
       97 NEWCLOSURE                       R6 P7
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R6 R0 K20 ["onWidgetEnabledChanged"]
      101 GETUPVAL                         R6 7
      102 GETTABLEKS                       R6 R6 K21 ["Store"]
      104 GETTABLEKS                       R6 R6 K13 ["new"]
      106 GETUPVAL                         R7 8
      107 LOADNIL                          R8
      108 NEWTABLE                         R9 0 1
      110 GETUPVAL                         R10 7
      111 GETTABLEKS                       R10 R10 K22 ["thunkMiddleware"]
      113 SETLIST                          R9 R10 1 [1]
      115 LOADNIL                          R10
      116 CALL                             R6 4 1
      117 SETTABLEKS                       R6 R0 K23 ["store"]
      119 GETUPVAL                         R6 9
      120 GETTABLEKS                       R6 R6 K24 ["Localization"]
      122 GETTABLEKS                       R6 R6 K13 ["new"]
      124 DUPTABLE                         R7 K29 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "MaterialManager"}]
      125 GETUPVAL                         R8 10
      126 SETTABLEKS                       R8 R7 K25 ["stringResourceTable"]
      128 GETUPVAL                         R8 11
      129 SETTABLEKS                       R8 R7 K26 ["translationResourceTable"]
      131 CALL                             R6 1 1
      132 SETTABLEKS                       R6 R0 K30 ["localization"]
      134 GETUPVAL                         R6 9
      135 GETTABLEKS                       R6 R6 K31 ["Analytics"]
      137 GETTABLEKS                       R6 R6 K13 ["new"]
      139 GETUPVAL                         R7 12
      140 CALL                             R6 1 1
      141 SETTABLEKS                       R6 R0 K32 ["analytics"]
      143 GETUPVAL                         R6 13
      144 GETTABLEKS                       R6 R6 K13 ["new"]
      146 GETTABLEKS                       R7 R0 K23 ["store"]
      148 CALL                             R6 1 1
      149 SETTABLEKS                       R6 R0 K33 ["materialServiceController"]
      151 GETUPVAL                         R6 14
      152 GETTABLEKS                       R6 R6 K13 ["new"]
      154 CALL                             R6 0 1
      155 SETTABLEKS                       R6 R0 K34 ["generalServiceController"]
      157 GETUPVAL                         R6 15
      158 GETTABLEKS                       R6 R6 K13 ["new"]
      160 MOVE                             R7 R2
      161 GETTABLEKS                       R8 R0 K23 ["store"]
      163 NAMECALL                         R9 R2 K35 ["getMouse"]
      165 CALL                             R9 1 1
      166 GETTABLEKS                       R10 R0 K34 ["generalServiceController"]
      168 CALL                             R6 4 1
      169 SETTABLEKS                       R6 R0 K36 ["pluginController"]
      171 GETTABLEKS                       R6 R0 K36 ["pluginController"]
      173 NAMECALL                         R6 R6 K37 ["initialize"]
      175 CALL                             R6 1 0
      176 GETUPVAL                         R6 5
      177 GETUPVAL                         R8 6
      178 GETTABLEKS                       R8 R8 K38 ["SHOW_MATERIAL_MANAGER_PLUGIN_EVENT"]
      180 NEWCLOSURE                       R9 P8
      181 CAPTURE                          VAL R0
      182 NAMECALL                         R6 R6 K39 ["Bind"]
      184 CALL                             R6 3 0
      185 CLOSEUPVALS                      R5
      186 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["enabled"]
        4 DUPTABLE                         R3 K3 [{"Toggle"}]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K4 ["createElement"]
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K15 [{["Toolbar"], ["Active"], ["Title"] = "MaterialManager", ["Tooltip"] = "", ["Icon"] = "", ["OnClick"], ["ClickableWhenViewportHidden"] = True}]
       10 SETTABLEKS                       R1 R6 K5 ["Toolbar"]
       12 SETTABLEKS                       R2 R6 K6 ["Active"]
       14 GETTABLEKS                       R7 R0 K16 ["toggleEnabled"]
       16 SETTABLEKS                       R7 R6 K12 ["OnClick"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K2 ["Toggle"]
       21 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_17:
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
       54 DUPTABLE                         R10 K22 [{["Title"] = "Edit", ["RenderButtons"]}]
       55 NEWCLOSURE                       R11 P0
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R11 R10 K21 ["RenderButtons"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K15 ["Toolbar"]
       62 GETUPVAL                         R8 5
       63 GETTABLEKS                       R8 R8 K18 ["createElement"]
       65 GETUPVAL                         R9 7
       66 NEWTABLE                         R10 16 0
       68 LOADK                            R11 K23 ["MaterialManager"]
       69 SETTABLEKS                       R11 R10 K24 ["Id"]
       71 SETTABLEKS                       R4 R10 K25 ["Enabled"]
       73 GETTABLEKS                       R11 R0 K8 ["localization"]
       75 LOADK                            R13 K2 ["Plugin"]
       76 LOADK                            R14 K26 ["Name"]
       77 NAMECALL                         R11 R11 K27 ["getText"]
       79 CALL                             R11 3 1
       80 SETTABLEKS                       R11 R10 K19 ["Title"]
       82 GETIMPORT                        R11 K31 [Enum.ZIndexBehavior.Sibling]
       84 SETTABLEKS                       R11 R10 K29 ["ZIndexBehavior"]
       86 GETIMPORT                        R11 K34 [Enum.InitialDockState.Bottom]
       88 SETTABLEKS                       R11 R10 K32 ["InitialDockState"]
       90 GETIMPORT                        R11 K36 [Vector2.new]
       92 LOADN                            R12 640
       93 LOADN                            R13 480
       94 CALL                             R11 2 1
       95 SETTABLEKS                       R11 R10 K37 ["Size"]
       97 GETIMPORT                        R11 K36 [Vector2.new]
       99 LOADN                            R12 300
      100 LOADN                            R13 200
      101 CALL                             R11 2 1
      102 SETTABLEKS                       R11 R10 K38 ["MinSize"]
      104 GETTABLEKS                       R11 R0 K39 ["onClose"]
      106 SETTABLEKS                       R11 R10 K40 ["OnClose"]
      108 LOADB                            R11 1
      109 SETTABLEKS                       R11 R10 K41 ["ShouldRestore"]
      111 GETTABLEKS                       R11 R0 K42 ["onRestore"]
      113 SETTABLEKS                       R11 R10 K43 ["OnWidgetRestored"]
      115 GETUPVAL                         R11 5
      116 GETTABLEKS                       R11 R11 K44 ["Change"]
      118 GETTABLEKS                       R11 R11 K25 ["Enabled"]
      120 GETTABLEKS                       R12 R0 K45 ["toggleEnabled"]
      122 SETTABLE                         R12 R10 R11
      123 NEWTABLE                         R11 0 1
      125 GETUPVAL                         R12 5
      126 GETTABLEKS                       R12 R12 K18 ["createElement"]
      128 GETUPVAL                         R13 8
      129 CALL                             R12 1 -1
      130 SETLIST                          R11 R12 -1 [1]
      132 CALL                             R8 3 1
      133 SETTABLEKS                       R8 R7 K16 ["MainWidget"]
      135 CALL                             R5 2 -1
      136 RETURN                           R5 -1

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
      141 GETIMPORT                        R28 K19 [game]
      143 LOADK                            R30 K40 ["MaterialManagerFixMainAsync"]
      144 LOADB                            R31 0
      145 NAMECALL                         R28 R28 K41 ["DefineFastFlag"]
      147 CALL                             R28 3 1
      148 DUPTABLE                         R29 K52 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["PluginId"] = "MaterialManager", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      149 GETTABLEKS                       R30 R1 K53 ["PureComponent"]
      151 LOADK                            R32 K54 ["MainPlugin"]
      152 NAMECALL                         R30 R30 K55 ["extend"]
      154 CALL                             R30 2 1
      155 DUPCLOSURE                       R31 K56 [PROTO_13]
      156 CAPTURE                          VAL R29
      157 CAPTURE                          VAL R28
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R24
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R13
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R26
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R27
      172 SETTABLEKS                       R31 R30 K57 ["init"]
      174 DUPCLOSURE                       R31 K58 [PROTO_14]
      175 SETTABLEKS                       R31 R30 K59 ["willUnmount"]
      177 DUPCLOSURE                       R31 K60 [PROTO_15]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R6
      180 SETTABLEKS                       R31 R30 K61 ["renderButtons"]
      182 DUPCLOSURE                       R31 K62 [PROTO_17]
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R9
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R10
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R1
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R20
      192 SETTABLEKS                       R31 R30 K63 ["render"]
      194 RETURN                           R30 1

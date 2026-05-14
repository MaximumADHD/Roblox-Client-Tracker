PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["setEnabled"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 JUMPIFNOT                        R0 ; [+16]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["store"]
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 -1
       17 NAMECALL                         R1 R1 K4 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["store"]
       23 GETUPVAL                         R3 2
       24 CALL                             R3 0 -1
       25 NAMECALL                         R1 R1 K4 ["dispatch"]
       27 CALL                             R1 -1 0
       28 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["toggleUri"]
        6 SETLIST                          R3 R4 1 [1]
        8 NAMECALL                         R1 R1 K1 ["GetAsync"]
       10 CALL                             R1 2 1
       11 GETTABLEN                        R0 R1 1
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["setEnabled"]
       15 GETTABLEKS                       R2 R0 K3 ["Checked"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["setEnabled"]
        7 GETTABLEKS                       R2 R0 K4 ["Checked"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K3 ["toggleUri"]
       12 NAMECALL                         R2 R2 K4 ["BindToChangedAsync"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 NAMECALL                         R2 R2 K5 ["Connect"]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K6 ["syncStateWithActionConnection"]
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["toggleUri"]
        4 NAMECALL                         R0 R0 K1 ["ActivateAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["shouldMigrateToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+13]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["state"]
        8 GETTABLEKS                       R0 R0 K2 ["enabled"]
       10 JUMPIFNOT                        R0 ; [+12]
       11 GETIMPORT                        R0 K5 [task.spawn]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K6 ["setEnabled"]
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["toggleUri"]
        4 NAMECALL                         R0 R0 K1 ["ActivateAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldMigrateToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["state"]
        8 GETTABLEKS                       R1 R1 K2 ["enabled"]
       10 JUMPIFEQ                         R0 R1 ; [+13]
       12 GETIMPORT                        R1 K5 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K6 ["setEnabled"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["toggleUri"]
        4 NAMECALL                         R0 R0 K1 ["ActivateAsync"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["shouldMigrateToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+16]
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["state"]
       10 GETTABLEKS                       R2 R2 K3 ["enabled"]
       12 JUMPIFEQ                         R1 R2 ; [+14]
       14 GETIMPORT                        R1 K6 [task.spawn]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CALL                             R1 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K7 ["setEnabled"]
       24 GETTABLEKS                       R2 R0 K1 ["Enabled"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 SETTABLEKS                       R0 R3 K0 ["enabled"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["pluginLoaderContext"]
        5 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       10 NAMECALL                         R0 R0 K4 ["Connect"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R2 K1 [{"enabled"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 SETTABLEKS                       R2 R0 K2 ["state"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R2 R0 K3 ["toggleEnabled"]
       12 GETTABLEKS                       R2 R1 K4 ["Plugin"]
       14 LOADK                            R4 K5 ["Actions"]
       15 NAMECALL                         R2 R2 K6 ["GetPluginComponent"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K7 ["shouldMigrateToActions"]
       21 CALL                             R3 0 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETIMPORT                        R3 K10 [task.spawn]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R0
       29 CALL                             R3 1 0
       30 NEWCLOSURE                       R3 P2
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R0 K11 ["onClose"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 SETTABLEKS                       R3 R0 K12 ["onRestore"]
       44 NEWCLOSURE                       R3 P4
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R3 R0 K13 ["onWidgetEnabledChanged"]
       51 NEWCLOSURE                       R3 P5
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R3 R0 K14 ["setEnabled"]
       55 GETUPVAL                         R3 2
       56 GETTABLEKS                       R3 R3 K7 ["shouldMigrateToActions"]
       58 CALL                             R3 0 1
       59 JUMPIF                           R3 ; [+4]
       60 NEWCLOSURE                       R3 P6
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R3 R0 K15 ["onDockWidgetCreated"]
       64 NEWTABLE                         R3 0 1
       66 GETUPVAL                         R4 3
       67 DUPTABLE                         R5 K17 [{"SoundAssetChecker"}]
       68 GETTABLEKS                       R6 R1 K16 ["SoundAssetChecker"]
       70 SETTABLEKS                       R6 R5 K16 ["SoundAssetChecker"]
       72 CALL                             R4 1 -1
       73 SETLIST                          R3 R4 -1 [1]
       75 GETUPVAL                         R4 4
       76 GETTABLEKS                       R4 R4 K18 ["Store"]
       78 GETTABLEKS                       R4 R4 K19 ["new"]
       80 GETUPVAL                         R5 5
       81 LOADNIL                          R6
       82 MOVE                             R7 R3
       83 LOADNIL                          R8
       84 CALL                             R4 4 1
       85 SETTABLEKS                       R4 R0 K20 ["store"]
       87 GETUPVAL                         R4 6
       88 GETTABLEKS                       R4 R4 K21 ["Localization"]
       90 GETTABLEKS                       R4 R4 K19 ["new"]
       92 DUPTABLE                         R5 K25 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       93 GETUPVAL                         R6 7
       94 SETTABLEKS                       R6 R5 K22 ["stringResourceTable"]
       96 GETUPVAL                         R6 8
       97 SETTABLEKS                       R6 R5 K23 ["translationResourceTable"]
       99 LOADK                            R6 K26 ["AudioDiscovery"]
      100 SETTABLEKS                       R6 R5 K24 ["pluginName"]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R0 K27 ["localization"]
      105 GETUPVAL                         R4 6
      106 GETTABLEKS                       R4 R4 K28 ["Analytics"]
      108 GETTABLEKS                       R4 R4 K19 ["new"]
      110 DUPCLOSURE                       R5 K29 [PROTO_12]
      111 NEWTABLE                         R6 0 0
      113 CALL                             R4 2 1
      114 SETTABLEKS                       R4 R0 K30 ["analytics"]
      116 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["enabled"]
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETIMPORT                        R1 K3 [game]
        7 GETTABLEKS                       R1 R1 K4 ["CreatorId"]
        9 JUMPIFNOTEQKN                    R1 K5 [0] ; [+9]
       11 GETTABLEKS                       R1 R0 K6 ["store"]
       13 GETUPVAL                         R3 0
       14 LOADB                            R4 1
       15 CALL                             R3 1 -1
       16 NAMECALL                         R1 R1 K7 ["dispatch"]
       18 CALL                             R1 -1 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K8 ["shouldMigrateToActions"]
       22 CALL                             R1 0 1
       23 JUMPIF                           R1 ; [+18]
       24 GETTABLEKS                       R1 R0 K9 ["props"]
       26 GETTABLEKS                       R1 R1 K10 ["pluginLoaderContext"]
       28 JUMPIFNOT                        R1 ; [+13]
       29 GETTABLEKS                       R1 R0 K9 ["props"]
       31 GETTABLEKS                       R1 R1 K10 ["pluginLoaderContext"]
       33 GETTABLEKS                       R1 R1 K11 ["mainButton"]
       35 GETTABLEKS                       R3 R0 K0 ["state"]
       37 GETTABLEKS                       R3 R3 K1 ["enabled"]
       39 NAMECALL                         R1 R1 K12 ["SetActive"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["store"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 NAMECALL                         R1 R1 K1 ["dispatch"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["reportOpen"]
        3 CALL                             R1 1 0
        4 GETTABLEKS                       R1 R0 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["SoundAssetChecker"]
        8 GETTABLEKS                       R1 R1 K3 ["soundsFound"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R1 R1 K4 ["Connect"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K5 ["connection"]
       18 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R5 0
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["Src"]
       12 GETTABLEKS                       R6 R6 K5 ["Components"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K6 ["provide"]
       18 NEWTABLE                         R7 0 6
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K7 ["new"]
       23 MOVE                             R9 R3
       24 CALL                             R8 1 1
       25 GETUPVAL                         R9 4
       26 GETTABLEKS                       R9 R9 K7 ["new"]
       28 GETTABLEKS                       R10 R0 K8 ["store"]
       30 CALL                             R9 1 1
       31 GETUPVAL                         R10 5
       32 GETTABLEKS                       R10 R10 K7 ["new"]
       34 NAMECALL                         R11 R3 K9 ["getMouse"]
       36 CALL                             R11 1 -1
       37 CALL                             R10 -1 1
       38 MOVE                             R11 R5
       39 CALL                             R11 0 1
       40 GETTABLEKS                       R12 R0 K10 ["localization"]
       42 GETTABLEKS                       R13 R0 K11 ["analytics"]
       44 SETLIST                          R7 R8 6 [1]
       46 DUPTABLE                         R8 K13 [{"MainWidget"}]
       47 GETUPVAL                         R9 6
       48 GETTABLEKS                       R9 R9 K14 ["createElement"]
       50 GETUPVAL                         R10 7
       51 NEWTABLE                         R11 16 0
       53 LOADK                            R12 K15 ["AudioDiscovery"]
       54 SETTABLEKS                       R12 R11 K16 ["Id"]
       56 GETTABLEKS                       R12 R1 K17 ["pluginLoaderContext"]
       58 GETTABLEKS                       R12 R12 K18 ["mainDockWidget"]
       60 SETTABLEKS                       R12 R11 K19 ["Widget"]
       62 GETUPVAL                         R13 8
       63 GETTABLEKS                       R13 R13 K20 ["shouldMigrateToActions"]
       65 CALL                             R13 0 1
       66 JUMPIF                           R13 ; [+3]
       67 GETTABLEKS                       R12 R0 K21 ["onDockWidgetCreated"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R12
       71 SETTABLEKS                       R12 R11 K22 ["OnWidgetCreated"]
       73 SETTABLEKS                       R4 R11 K23 ["Enabled"]
       75 GETTABLEKS                       R12 R0 K10 ["localization"]
       77 LOADK                            R14 K2 ["Plugin"]
       78 LOADK                            R15 K24 ["Name"]
       79 NAMECALL                         R12 R12 K25 ["getText"]
       81 CALL                             R12 3 1
       82 SETTABLEKS                       R12 R11 K26 ["Title"]
       84 GETIMPORT                        R12 K30 [Enum.ZIndexBehavior.Sibling]
       86 SETTABLEKS                       R12 R11 K28 ["ZIndexBehavior"]
       88 GETIMPORT                        R12 K33 [Enum.InitialDockState.Bottom]
       90 SETTABLEKS                       R12 R11 K31 ["InitialDockState"]
       92 GETIMPORT                        R12 K35 [Vector2.new]
       94 LOADN                            R13 128
       95 LOADN                            R14 224
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K36 ["Size"]
       99 GETIMPORT                        R12 K35 [Vector2.new]
      101 LOADN                            R13 250
      102 LOADN                            R14 200
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K37 ["MinSize"]
      106 GETTABLEKS                       R12 R0 K38 ["onClose"]
      108 SETTABLEKS                       R12 R11 K39 ["OnClose"]
      110 LOADB                            R12 1
      111 SETTABLEKS                       R12 R11 K40 ["ShouldRestore"]
      113 GETTABLEKS                       R12 R0 K41 ["onRestore"]
      115 SETTABLEKS                       R12 R11 K42 ["OnWidgetRestored"]
      117 GETUPVAL                         R12 6
      118 GETTABLEKS                       R12 R12 K43 ["Change"]
      120 GETTABLEKS                       R12 R12 K23 ["Enabled"]
      122 GETTABLEKS                       R13 R0 K44 ["onWidgetEnabledChanged"]
      124 SETTABLE                         R13 R11 R12
      125 DUPTABLE                         R12 K46 [{"Window"}]
      126 GETUPVAL                         R13 6
      127 GETTABLEKS                       R13 R13 K14 ["createElement"]
      129 GETUPVAL                         R14 9
      130 CALL                             R13 1 1
      131 SETTABLEKS                       R13 R12 K45 ["Window"]
      133 CALL                             R9 3 1
      134 SETTABLEKS                       R9 R8 K12 ["MainWidget"]
      136 CALL                             R6 2 -1
      137 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Bin"]
       11 GETTABLEKS                       R2 R2 K6 ["defineLuaFlags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Rodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Actions"]
       41 GETTABLEKS                       R6 R6 K13 ["UpdateRows"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R4 K14 ["Util"]
       46 GETTABLEKS                       R7 R6 K15 ["ThunkWithArgsMiddleware"]
       48 GETTABLEKS                       R8 R4 K16 ["UI"]
       50 GETTABLEKS                       R9 R8 K17 ["DockWidget"]
       52 GETTABLEKS                       R10 R4 K18 ["ContextServices"]
       54 GETTABLEKS                       R11 R10 K19 ["Plugin"]
       56 GETTABLEKS                       R12 R10 K20 ["Mouse"]
       58 GETTABLEKS                       R13 R10 K21 ["Store"]
       60 GETIMPORT                        R14 K4 [require]
       62 GETTABLEKS                       R15 R0 K11 ["Src"]
       64 GETTABLEKS                       R15 R15 K22 ["Reducers"]
       66 GETTABLEKS                       R15 R15 K23 ["MainReducer"]
       68 CALL                             R14 1 1
       69 GETTABLEKS                       R15 R4 K24 ["Style"]
       71 GETTABLEKS                       R16 R15 K25 ["makeTheme"]
       73 GETTABLEKS                       R17 R0 K11 ["Src"]
       75 GETTABLEKS                       R17 R17 K26 ["Resources"]
       77 GETTABLEKS                       R17 R17 K27 ["Localization"]
       79 GETTABLEKS                       R17 R17 K28 ["SourceStrings"]
       81 GETTABLEKS                       R18 R0 K11 ["Src"]
       83 GETTABLEKS                       R18 R18 K26 ["Resources"]
       85 GETTABLEKS                       R18 R18 K27 ["Localization"]
       87 GETTABLEKS                       R18 R18 K29 ["LocalizedStrings"]
       89 GETTABLEKS                       R19 R0 K11 ["Src"]
       91 GETTABLEKS                       R19 R19 K30 ["Components"]
       93 GETIMPORT                        R20 K4 [require]
       95 GETTABLEKS                       R21 R19 K31 ["Window"]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K4 [require]
      100 GETTABLEKS                       R22 R0 K11 ["Src"]
      102 GETTABLEKS                       R22 R22 K12 ["Actions"]
      104 GETTABLEKS                       R22 R22 K32 ["SetDialog"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R0 K11 ["Src"]
      111 GETTABLEKS                       R23 R23 K12 ["Actions"]
      113 GETTABLEKS                       R23 R23 K33 ["Unpause"]
      115 CALL                             R22 1 1
      116 GETIMPORT                        R23 K4 [require]
      118 GETTABLEKS                       R24 R0 K11 ["Src"]
      120 GETTABLEKS                       R24 R24 K34 ["Thunks"]
      122 GETTABLEKS                       R24 R24 K35 ["DiscoverAudio"]
      124 CALL                             R23 1 1
      125 GETIMPORT                        R24 K4 [require]
      127 GETTABLEKS                       R25 R0 K11 ["Src"]
      129 GETTABLEKS                       R25 R25 K14 ["Util"]
      131 GETTABLEKS                       R25 R25 K36 ["Analytics"]
      133 CALL                             R24 1 1
      134 GETTABLEKS                       R25 R2 K37 ["PureComponent"]
      136 LOADK                            R27 K38 ["MainPlugin"]
      137 NAMECALL                         R25 R25 K39 ["extend"]
      139 CALL                             R25 2 1
      140 DUPCLOSURE                       R26 K40 [PROTO_13]
      141 CAPTURE                          VAL R22
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R18
      150 SETTABLEKS                       R26 R25 K41 ["init"]
      152 DUPCLOSURE                       R26 K42 [PROTO_14]
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R26 R25 K43 ["didUpdate"]
      157 DUPCLOSURE                       R26 K44 [PROTO_16]
      158 CAPTURE                          VAL R24
      159 CAPTURE                          VAL R5
      160 SETTABLEKS                       R26 R25 K45 ["didMount"]
      162 DUPCLOSURE                       R26 K46 [PROTO_17]
      163 SETTABLEKS                       R26 R25 K47 ["willUnmount"]
      165 DUPCLOSURE                       R26 K48 [PROTO_18]
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R0
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R12
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R1
      175 CAPTURE                          VAL R20
      176 SETTABLEKS                       R26 R25 K49 ["render"]
      178 RETURN                           R25 1

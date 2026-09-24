PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETIMPORT                        R1 K3 [string.find]
        5 GETIMPORT                        R2 K5 [string.lower]
        7 GETTABLEKS                       R3 R0 K0 ["Name"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 LOADN                            R4 1
       12 LOADB                            R5 1
       13 CALL                             R1 4 1
       14 JUMPIFNOT                        R1 ; [+1]
       15 RETURN                           R0 1
       16 GETTABLEKS                       R2 R0 K6 ["Children"]
       18 JUMPIFNOT                        R2 ; [+5]
       19 GETTABLEKS                       R3 R0 K6 ["Children"]
       21 LENGTH                           R2 R3
       22 JUMPIFNOTEQKN                    R2 K7 [0] ; [+3]
       24 LOADNIL                          R2
       25 RETURN                           R2 1
       26 NEWTABLE                         R2 0 0
       28 LOADN                            R3 0
       29 GETTABLEKS                       R4 R0 K6 ["Children"]
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 GETUPVAL                         R9 1
       35 MOVE                             R10 R8
       36 CALL                             R9 1 1
       37 JUMPIFNOT                        R9 ; [+11]
       38 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       40 MOVE                             R11 R2
       41 MOVE                             R12 R9
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 GETTABLEKS                       R11 R9 K11 ["Size"]
       47 ORK                              R10 R11 K7 [0]
       48 ADD                              R3 R3 R10
       49 FORGLOOP                         R4 2 ; [-16]
       51 LENGTH                           R4 R2
       52 JUMPIFNOTEQKN                    R4 K7 [0] ; [+3]
       54 LOADNIL                          R4
       55 RETURN                           R4 1
       56 GETIMPORT                        R4 K13 [table.clone]
       58 MOVE                             R5 R0
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R2 R4 K6 ["Children"]
       62 SETTABLEKS                       R3 R4 K11 ["Size"]
       64 RETURN                           R4 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+3]
        1 JUMPIFNOT                        R1 ; [+2]
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+2]
        4 RETURN                           R0 1
        5 GETIMPORT                        R2 K3 [string.lower]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R3
       12 MOVE                             R4 R3
       13 MOVE                             R5 R0
       14 CALL                             R4 1 1
       15 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"windowWidth"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["X"]
        6 SETTABLEKS                       R4 R3 K0 ["windowWidth"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_3]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K2 ["hookHeartbeat"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R3 1
       11 NAMECALL                         R1 R1 K4 ["hookHeartbeat"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U3
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["isPaused"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["isPaused"]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"paused"}]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["isPaused"]
       12 SETTABLEKS                       R3 R2 K1 ["paused"]
       14 NAMECALL                         R0 R0 K3 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["state"]
        6 GETTABLEKS                       R0 R0 K1 ["enabled"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETIMPORT                        R0 K4 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K2 ["enabled"]
        7 JUMPIFEQ                         R1 R2 ; [+7]
        9 GETIMPORT                        R1 K5 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        5 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        7 GETTABLEN                        R0 R1 1
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       12 NAMECALL                         R2 R0 K4 ["Connect"]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       17 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_16:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETTABLEKS                       R1 R0 K0 ["source"]
        3 JUMPIFNOTEQKS                    R1 K1 ["reapply"] ; [+2]
        5 RETURN                           R0 0
        6 MOVE                             R1 R0
        7 JUMPIFNOT                        R1 ; [+2]
        8 GETTABLEKS                       R1 R0 K2 ["idsHash"]
       10 MOVE                             R2 R1
       11 JUMPIFNOT                        R2 ; [+4]
       12 GETIMPORT                        R2 K4 [next]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 0
       17 DUPTABLE                         R5 K6 [{"selectedIdsHash"}]
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R6 R1
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K7 ["None"]
       24 SETTABLEKS                       R6 R5 K5 ["selectedIdsHash"]
       26 NAMECALL                         R3 R3 K8 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Id"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["onRightClick"]
       12 JUMPIFNOT                        R1 ; [+6]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K1 ["onRightClick"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 2
       20 JUMPIF                           R1 ; [+23]
       21 GETUPVAL                         R1 1
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K2 ["getNodeById"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K2 ["getNodeById"]
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 JUMPIFNOT                        R1 ; [+3]
       33 GETTABLEKS                       R2 R1 K3 ["path"]
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 0
       37 GETUPVAL                         R2 3
       38 LOADK                            R4 K4 ["SelectInstanceByPath"]
       39 GETTABLEKS                       R5 R1 K3 ["path"]
       41 NAMECALL                         R2 R2 K5 ["CallAssetPluginAsync"]
       43 CALL                             R2 3 0
       44 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["selectedCategory"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["state"]
        9 GETTABLEKS                       R1 R1 K1 ["selectedCategory"]
       11 GETTABLEKS                       R1 R1 K2 ["module"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETTABLEKS                       R2 R1 K3 ["syncWithExplorer"]
       16 JUMPIFNOT                        R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 JUMPIFNOT                        R2 ; [+5]
       20 JUMPIFNOT                        R1 ; [+3]
       21 GETTABLEKS                       R2 R1 K4 ["onRightClick"]
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R0 0
       25 NEWTABLE                         R2 0 0
       27 NEWTABLE                         R3 0 0
       29 DUPTABLE                         R4 K7 [{"Text", "OnItemClicked"}]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K8 ["localization"]
       33 LOADK                            R7 K9 ["ContextMenu"]
       34 LOADK                            R8 K10 ["SelectInstances"]
       35 NAMECALL                         R5 R5 K11 ["getText"]
       37 CALL                             R5 3 1
       38 SETTABLEKS                       R5 R4 K5 ["Text"]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 SETTABLEKS                       R5 R4 K6 ["OnItemClicked"]
       47 SETTABLEKS                       R4 R2 K12 ["SelectInstance"]
       49 FASTCALL2K                       TABLE_INSERT R3 K12 ; [+5]
       51 MOVE                             R5 R3
       52 LOADK                            R6 K12 ["SelectInstance"]
       53 GETIMPORT                        R4 K15 [table.insert]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K16 ["props"]
       59 GETTABLEKS                       R4 R4 K17 ["Plugin"]
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R5 R5 K18 ["UI"]
       64 GETTABLEKS                       R5 R5 K19 ["showContextMenu"]
       66 MOVE                             R6 R4
       67 MOVE                             R7 R2
       68 MOVE                             R8 R3
       69 CALL                             R5 3 0
       70 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["selectFromList"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["forceSelectFromList"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"windowHeight"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["windowHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setScrollHeight"]
        3 GETTABLEKS                       R2 R0 K1 ["CanvasPosition"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_23:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isPaused"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K1 ["forceUpdateOnce"]
        6 DUPTABLE                         R2 K19 [{["selectedIdsHash"] = , ["enabled"] = False, ["windowHeight"] = 0, ["windowWidth"] = 0, ["paused"] = False, ["searchTerm"] = "", ["filterMenuOpen"] = False, ["filterState"] = , ["warningIndex"] = 1, ["selectedCategory"] = , ["availableDataModels"], ["targetDataModel"] = }]
        7 NEWTABLE                         R3 0 0
        9 SETTABLEKS                       R3 R2 K17 ["availableDataModels"]
       11 SETTABLEKS                       R2 R0 K20 ["state"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K21 ["onHeaderSizeChange"]
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R2 R0 K22 ["toggleEnabled"]
       22 GETTABLEKS                       R2 R1 K23 ["Plugin"]
       24 LOADK                            R4 K24 ["Actions"]
       25 NAMECALL                         R2 R2 K25 ["GetPluginComponent"]
       27 CALL                             R2 2 1
       28 GETIMPORT                        R3 K28 [task.spawn]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          VAL R1
       35 CALL                             R3 1 0
       36 NEWCLOSURE                       R3 P3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R3 R0 K29 ["togglePause"]
       40 NEWCLOSURE                       R3 P4
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U0
       45 SETTABLEKS                       R3 R0 K30 ["onClose"]
       47 NEWCLOSURE                       R3 P5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          UPVAL U0
       51 SETTABLEKS                       R3 R0 K31 ["onRestore"]
       53 NEWCLOSURE                       R3 P6
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U0
       57 SETTABLEKS                       R3 R0 K32 ["onWidgetEnabledChanged"]
       59 NEWCLOSURE                       R3 P7
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R3 R0 K33 ["onDockWidgetCreated"]
       63 GETUPVAL                         R3 2
       64 GETTABLEKS                       R3 R3 K34 ["Localization"]
       66 GETTABLEKS                       R3 R3 K35 ["new"]
       68 DUPTABLE                         R4 K40 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "SceneAnalysis"}]
       69 GETUPVAL                         R5 3
       70 SETTABLEKS                       R5 R4 K36 ["stringResourceTable"]
       72 GETUPVAL                         R5 4
       73 SETTABLEKS                       R5 R4 K37 ["translationResourceTable"]
       75 CALL                             R3 1 1
       76 SETTABLEKS                       R3 R0 K41 ["localization"]
       78 GETUPVAL                         R3 2
       79 GETTABLEKS                       R3 R3 K42 ["Analytics"]
       81 GETTABLEKS                       R3 R3 K35 ["new"]
       83 DUPCLOSURE                       R4 K43 [PROTO_15]
       84 NEWTABLE                         R5 0 0
       86 CALL                             R3 2 1
       87 SETTABLEKS                       R3 R0 K44 ["analytics"]
       89 GETUPVAL                         R3 5
       90 GETTABLEKS                       R3 R3 K45 ["createRef"]
       92 CALL                             R3 0 1
       93 SETTABLEKS                       R3 R0 K46 ["treemapRef"]
       95 LOADN                            R3 0
       96 SETTABLEKS                       R3 R0 K47 ["timeOfNextAutomaticUpdate"]
       98 LOADN                            R3 1
       99 SETTABLEKS                       R3 R0 K48 ["delayBetweenAutomaticUpdates"]
      101 MOVE                             R5 R1
      102 NAMECALL                         R3 R0 K49 ["hookHeartbeat"]
      104 CALL                             R3 2 0
      105 GETUPVAL                         R3 6
      106 GETTABLEKS                       R3 R3 K50 ["create"]
      108 LOADN                            R4 0
      109 CALL                             R3 1 2
      110 SETTABLEKS                       R3 R0 K51 ["scrollHeightObservable"]
      112 SETTABLEKS                       R4 R0 K52 ["setScrollHeight"]
      114 GETUPVAL                         R3 5
      115 GETTABLEKS                       R3 R3 K45 ["createRef"]
      117 CALL                             R3 0 1
      118 SETTABLEKS                       R3 R0 K53 ["scrollRef"]
      120 GETUPVAL                         R3 5
      121 GETTABLEKS                       R3 R3 K45 ["createRef"]
      123 CALL                             R3 0 1
      124 SETTABLEKS                       R3 R0 K54 ["virtualizedListRef"]
      126 GETUPVAL                         R3 7
      127 GETTABLEKS                       R3 R3 K35 ["new"]
      129 DUPTABLE                         R4 K57 [{"treemapRef", "listRef", "plugin"}]
      130 GETTABLEKS                       R5 R0 K46 ["treemapRef"]
      132 SETTABLEKS                       R5 R4 K46 ["treemapRef"]
      134 GETTABLEKS                       R5 R0 K54 ["virtualizedListRef"]
      136 SETTABLEKS                       R5 R4 K55 ["listRef"]
      138 GETTABLEKS                       R5 R1 K23 ["Plugin"]
      140 SETTABLEKS                       R5 R4 K56 ["plugin"]
      142 CALL                             R3 1 1
      143 SETTABLEKS                       R3 R0 K58 ["selectionManager"]
      145 GETTABLEKS                       R3 R0 K58 ["selectionManager"]
      147 LOADB                            R5 1
      148 NAMECALL                         R3 R3 K59 ["setDeselectOnReselect"]
      150 CALL                             R3 2 0
      151 GETTABLEKS                       R3 R0 K58 ["selectionManager"]
      153 NAMECALL                         R3 R3 K60 ["getSelectionObservable"]
      155 CALL                             R3 1 1
      156 GETTABLEKS                       R3 R3 K61 ["changedSignal"]
      158 NEWCLOSURE                       R5 P9
      159 CAPTURE                          VAL R0
      160 CAPTURE                          UPVAL U8
      161 NAMECALL                         R3 R3 K62 ["Connect"]
      163 CALL                             R3 2 0
      164 NEWCLOSURE                       R3 P10
      165 CAPTURE                          VAL R0
      166 CAPTURE                          UPVAL U1
      167 CAPTURE                          UPVAL U9
      168 CAPTURE                          UPVAL U10
      169 SETTABLEKS                       R3 R0 K63 ["onNodeRightClicked"]
      171 GETUPVAL                         R3 11
      172 GETTABLEKS                       R3 R3 K35 ["new"]
      174 GETTABLEKS                       R4 R0 K58 ["selectionManager"]
      176 GETTABLEKS                       R5 R0 K63 ["onNodeRightClicked"]
      178 CALL                             R3 2 1
      179 SETTABLEKS                       R3 R0 K64 ["treemapContext"]
      181 NEWCLOSURE                       R3 P11
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R3 R0 K65 ["onNodeClicked"]
      185 NEWCLOSURE                       R3 P12
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R3 R0 K66 ["onListNodeRightClicked"]
      189 NEWCLOSURE                       R3 P13
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R3 R0 K67 ["onAbsoluteSizeChange"]
      193 NEWCLOSURE                       R3 P14
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R3 R0 K68 ["onCanvasPositionChange"]
      197 GETUPVAL                         R3 12
      198 GETTABLEKS                       R3 R3 K35 ["new"]
      200 CALL                             R3 0 1
      201 SETTABLEKS                       R3 R0 K69 ["DEPRECATED_stylizer"]
      203 GETUPVAL                         R3 13
      204 GETTABLEKS                       R3 R3 K70 ["Util"]
      206 GETTABLEKS                       R3 R3 K71 ["createFoundationDesignBinding"]
      208 CALL                             R3 0 2
      209 SETTABLEKS                       R4 R0 K72 ["onFoundationStyleSheetChange"]
      211 GETUPVAL                         R5 14
      212 GETTABLEKS                       R6 R1 K23 ["Plugin"]
      214 LOADNIL                          R7
      215 LOADNIL                          R8
      216 NEWTABLE                         R9 0 1
      218 MOVE                             R10 R3
      219 SETLIST                          R9 R10 1 [1]
      221 CALL                             R5 4 1
      222 SETTABLEKS                       R5 R0 K73 ["design"]
      224 NEWTABLE                         R5 0 6
      226 DUPTABLE                         R6 K81 [{["id"] = "Unparented", ["text"], ["module"], ["valueFormat"] = "instanceCount", ["colorRamp"]}]
      227 GETTABLEKS                       R7 R0 K41 ["localization"]
      229 LOADK                            R9 K82 ["Categories"]
      230 LOADK                            R10 K83 ["UnparentedInstances"]
      231 NAMECALL                         R7 R7 K84 ["getText"]
      233 CALL                             R7 3 1
      234 SETTABLEKS                       R7 R6 K76 ["text"]
      236 GETUPVAL                         R7 15
      237 SETTABLEKS                       R7 R6 K77 ["module"]
      239 GETUPVAL                         R7 16
      240 GETTABLEKS                       R7 R7 K85 ["Default"]
      242 SETTABLEKS                       R7 R6 K80 ["colorRamp"]
      244 DUPTABLE                         R7 K88 [{["id"] = "Script", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      245 GETTABLEKS                       R8 R0 K41 ["localization"]
      247 LOADK                            R10 K82 ["Categories"]
      248 LOADK                            R11 K89 ["ScriptMemoryUsage"]
      249 NAMECALL                         R8 R8 K84 ["getText"]
      251 CALL                             R8 3 1
      252 SETTABLEKS                       R8 R7 K76 ["text"]
      254 GETUPVAL                         R8 17
      255 SETTABLEKS                       R8 R7 K77 ["module"]
      257 GETUPVAL                         R8 16
      258 GETTABLEKS                       R8 R8 K90 ["IceBlue"]
      260 SETTABLEKS                       R8 R7 K80 ["colorRamp"]
      262 DUPTABLE                         R8 K93 [{["id"] = "Triangles", ["text"], ["module"], ["valueFormat"] = "count", ["colorRamp"]}]
      263 GETTABLEKS                       R9 R0 K41 ["localization"]
      265 LOADK                            R11 K82 ["Categories"]
      266 LOADK                            R12 K94 ["SceneTriangles"]
      267 NAMECALL                         R9 R9 K84 ["getText"]
      269 CALL                             R9 3 1
      270 SETTABLEKS                       R9 R8 K76 ["text"]
      272 GETUPVAL                         R9 18
      273 SETTABLEKS                       R9 R8 K77 ["module"]
      275 GETUPVAL                         R9 16
      276 GETTABLEKS                       R9 R9 K95 ["Forest"]
      278 SETTABLEKS                       R9 R8 K80 ["colorRamp"]
      280 DUPTABLE                         R9 K97 [{["id"] = "InstanceComposition", ["text"], ["module"], ["valueFormat"] = "instanceCount", ["colorRamp"]}]
      281 GETTABLEKS                       R10 R0 K41 ["localization"]
      283 LOADK                            R12 K82 ["Categories"]
      284 LOADK                            R13 K96 ["InstanceComposition"]
      285 NAMECALL                         R10 R10 K84 ["getText"]
      287 CALL                             R10 3 1
      288 SETTABLEKS                       R10 R9 K76 ["text"]
      290 GETUPVAL                         R10 19
      291 SETTABLEKS                       R10 R9 K77 ["module"]
      293 GETUPVAL                         R10 16
      294 GETTABLEKS                       R10 R10 K85 ["Default"]
      296 SETTABLEKS                       R10 R9 K80 ["colorRamp"]
      298 DUPTABLE                         R10 K99 [{["id"] = "Audio", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      299 GETTABLEKS                       R11 R0 K41 ["localization"]
      301 LOADK                            R13 K82 ["Categories"]
      302 LOADK                            R14 K100 ["AudioMemory"]
      303 NAMECALL                         R11 R11 K84 ["getText"]
      305 CALL                             R11 3 1
      306 SETTABLEKS                       R11 R10 K76 ["text"]
      308 GETUPVAL                         R11 20
      309 SETTABLEKS                       R11 R10 K77 ["module"]
      311 GETUPVAL                         R11 16
      312 GETTABLEKS                       R11 R11 K90 ["IceBlue"]
      314 SETTABLEKS                       R11 R10 K80 ["colorRamp"]
      316 DUPTABLE                         R11 K102 [{["id"] = "Animation", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      317 GETTABLEKS                       R12 R0 K41 ["localization"]
      319 LOADK                            R14 K82 ["Categories"]
      320 LOADK                            R15 K103 ["AnimationMemory"]
      321 NAMECALL                         R12 R12 K84 ["getText"]
      323 CALL                             R12 3 1
      324 SETTABLEKS                       R12 R11 K76 ["text"]
      326 GETUPVAL                         R12 21
      327 SETTABLEKS                       R12 R11 K77 ["module"]
      329 GETUPVAL                         R12 16
      330 GETTABLEKS                       R12 R12 K90 ["IceBlue"]
      332 SETTABLEKS                       R12 R11 K80 ["colorRamp"]
      334 SETLIST                          R5 R6 6 [1]
      336 SETTABLEKS                       R5 R0 K104 ["categories"]
      338 GETUPVAL                         R5 22
      339 JUMPIFNOT                        R5 ; [+25]
      340 GETTABLEKS                       R6 R0 K104 ["categories"]
      342 LOADN                            R7 4
      343 DUPTABLE                         R8 K106 [{["id"] = "SceneGeometry", ["text"], ["module"], ["valueFormat"] = "count", ["colorRamp"]}]
      344 GETTABLEKS                       R9 R0 K41 ["localization"]
      346 LOADK                            R11 K82 ["Categories"]
      347 LOADK                            R12 K105 ["SceneGeometry"]
      348 NAMECALL                         R9 R9 K84 ["getText"]
      350 CALL                             R9 3 1
      351 SETTABLEKS                       R9 R8 K76 ["text"]
      353 GETUPVAL                         R9 23
      354 SETTABLEKS                       R9 R8 K77 ["module"]
      356 GETUPVAL                         R9 16
      357 GETTABLEKS                       R9 R9 K85 ["Default"]
      359 SETTABLEKS                       R9 R8 K80 ["colorRamp"]
      361 FASTCALL                         TABLE_INSERT ; [+2]
      362 GETIMPORT                        R5 K109 [table.insert]
      364 CALL                             R5 3 0
      365 GETTABLEKS                       R6 R0 K104 ["categories"]
      367 GETTABLEN                        R5 R6 4
      368 GETTABLEKS                       R6 R0 K104 ["categories"]
      370 LOADNIL                          R7
      371 LOADNIL                          R8
      372 FORGPREP                         R6
      373 GETTABLEKS                       R11 R10 K74 ["id"]
      375 JUMPIFNOTEQKS                    R11 K96 ["InstanceComposition"] ; [+3]
      377 MOVE                             R5 R10
      378 JUMP                             ; [+2]
      379 FORGLOOP                         R6 2 ; [-7]
      381 DUPTABLE                         R8 K110 [{"selectedCategory"}]
      382 SETTABLEKS                       R5 R8 K16 ["selectedCategory"]
      384 NAMECALL                         R6 R0 K111 ["setState"]
      386 CALL                             R6 2 0
      387 GETTABLEKS                       R6 R0 K58 ["selectionManager"]
      389 GETTABLEKS                       R8 R5 K77 ["module"]
      391 NAMECALL                         R6 R6 K112 ["setQuery"]
      393 CALL                             R6 2 0
      394 GETUPVAL                         R6 24
      395 JUMPIFNOT                        R6 ; [+4]
      396 MOVE                             R8 R1
      397 NAMECALL                         R6 R0 K113 ["setupDataModelPicker"]
      399 CALL                             R6 2 0
      400 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mdiInstance"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["mdiInstance"]
        7 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["toName"]
       13 GETTABLEKS                       R2 R0 K3 ["CurrentDataModelType"]
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_25:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 MOVE                             R3 R2
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K2 ["Edit"]
       10 RETURN                           R3 1

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["localization"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Edit"] ; [+7]
        4 LOADK                            R5 K2 ["DataModel"]
        5 LOADK                            R6 K1 ["Edit"]
        6 NAMECALL                         R3 R2 K3 ["getText"]
        8 CALL                             R3 3 -1
        9 RETURN                           R3 -1
       10 JUMPIFNOTEQKS                    R1 K4 ["PlayServer"] ; [+7]
       12 LOADK                            R5 K2 ["DataModel"]
       13 LOADK                            R6 K5 ["Server"]
       14 NAMECALL                         R3 R2 K3 ["getText"]
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1
       18 JUMPIFNOTEQKS                    R1 K6 ["PlayClient"] ; [+8]
       20 LOADK                            R5 K2 ["DataModel"]
       21 LOADK                            R6 K7 ["ClientNumbered"]
       22 DUPTABLE                         R7 K10 [{["number"] = "1"}]
       23 NAMECALL                         R3 R2 K3 ["getText"]
       25 CALL                             R3 4 -1
       26 RETURN                           R3 -1
       27 MOVE                             R3 R1
       28 JUMPIFNOT                        R3 ; [+5]
       29 GETIMPORT                        R3 K13 [string.match]
       31 MOVE                             R4 R1
       32 LOADK                            R5 K14 ["^PlayClient_(%d+)$"]
       33 CALL                             R3 2 1
       34 JUMPIFNOT                        R3 ; [+9]
       35 LOADK                            R6 K2 ["DataModel"]
       36 LOADK                            R7 K7 ["ClientNumbered"]
       37 DUPTABLE                         R8 K15 [{"number"}]
       38 SETTABLEKS                       R3 R8 K8 ["number"]
       40 NAMECALL                         R4 R2 K3 ["getText"]
       42 CALL                             R4 4 -1
       43 RETURN                           R4 -1
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K16 ["toLabel"]
       47 MOVE                             R5 R1
       48 CALL                             R4 1 -1
       49 RETURN                           R4 -1

PROTO_27:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 DUPTABLE                         R10 K2 [{"id", "text"}]
        7 SETTABLEKS                       R7 R10 K0 ["id"]
        9 MOVE                             R13 R7
       10 NAMECALL                         R11 R0 K3 ["dataModelLabel"]
       12 CALL                             R11 2 1
       13 SETTABLEKS                       R11 R10 K1 ["text"]
       15 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       17 MOVE                             R9 R2
       18 GETIMPORT                        R8 K6 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-16]
       23 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["setTargetDataModel"]
        4 CALL                             R2 2 0
        5 GETTABLEKS                       R2 R0 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["selectedCategory"]
        9 JUMPIFNOT                        R2 ; [+6]
       10 GETTABLEKS                       R2 R0 K1 ["state"]
       12 GETTABLEKS                       R2 R2 K2 ["selectedCategory"]
       14 GETTABLEKS                       R2 R2 K3 ["module"]
       16 JUMPIFNOT                        R2 ; [+12]
       17 GETTABLEKS                       R3 R2 K4 ["reset"]
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R3 R2 K4 ["reset"]
       22 CALL                             R3 0 0
       23 GETTABLEKS                       R3 R2 K5 ["clearBaselines"]
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R3 R2 K5 ["clearBaselines"]
       28 CALL                             R3 0 0
       29 GETTABLEKS                       R3 R0 K6 ["selectionManager"]
       31 NAMECALL                         R3 R3 K7 ["clear"]
       33 CALL                             R3 1 0
       34 LOADN                            R3 0
       35 SETTABLEKS                       R3 R0 K8 ["timeOfNextAutomaticUpdate"]
       37 LOADB                            R3 1
       38 SETTABLEKS                       R3 R0 K9 ["forceUpdateOnce"]
       40 DUPTABLE                         R5 K11 [{"targetDataModel"}]
       41 SETTABLEKS                       R1 R5 K10 ["targetDataModel"]
       43 NAMECALL                         R3 R0 K12 ["setState"]
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"availableDataModels"}]
        2 GETUPVAL                         R4 0
        3 MOVE                             R6 R0
        4 NAMECALL                         R4 R4 K2 ["buildDataModelItems"]
        6 CALL                             R4 2 1
        7 SETTABLEKS                       R4 R3 K0 ["availableDataModels"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K4 ["recoverIfTargetGone"]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["rebindFocusFollowing"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["userPickedDataModel"]
        3 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        5 SETTABLEKS                       R2 R0 K2 ["pluginRef"]
        7 GETIMPORT                        R2 K4 [pcall]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 1 2
       12 JUMPIFNOT                        R2 ; [+2]
       13 MOVE                             R4 R3
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 SETTABLEKS                       R4 R0 K5 ["mdiInstance"]
       18 NAMECALL                         R4 R0 K6 ["resolveCurrentDataModelName"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 MOVE                             R7 R4
       23 NAMECALL                         R5 R5 K7 ["setTargetDataModel"]
       25 CALL                             R5 2 0
       26 DUPTABLE                         R7 K9 [{"targetDataModel"}]
       27 SETTABLEKS                       R4 R7 K8 ["targetDataModel"]
       29 NAMECALL                         R5 R0 K10 ["setState"]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R5 0
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R0
       35 NAMECALL                         R5 R5 K11 ["onAvailableDataModelsChanged"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R0 K12 ["availableDataModelsUnsubscribe"]
       40 DUPTABLE                         R7 K14 [{"availableDataModels"}]
       41 GETUPVAL                         R10 0
       42 NAMECALL                         R10 R10 K15 ["getAvailableDataModels"]
       44 CALL                             R10 1 -1
       45 NAMECALL                         R8 R0 K16 ["buildDataModelItems"]
       47 CALL                             R8 -1 1
       48 SETTABLEKS                       R8 R7 K13 ["availableDataModels"]
       50 NAMECALL                         R5 R0 K10 ["setState"]
       52 CALL                             R5 2 0
       53 GETUPVAL                         R5 0
       54 NAMECALL                         R5 R5 K17 ["refreshDataModels"]
       56 CALL                             R5 1 0
       57 NAMECALL                         R5 R0 K18 ["rebindFocusFollowing"]
       59 CALL                             R5 1 0
       60 GETTABLEKS                       R5 R0 K2 ["pluginRef"]
       62 LOADK                            R7 K19 ["MultipleDocumentInterfaceInstance"]
       63 NAMECALL                         R5 R5 K20 ["GetPropertyChangedSignal"]
       65 CALL                             R5 2 1
       66 NEWCLOSURE                       R7 P2
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R5 R5 K21 ["Connect"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R0 K22 ["mdiPropertyConnection"]
       73 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R2 K1 ["targetDataModel"]
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 JUMPIFNOTEQ                      R7 R2 ; [+2]
       12 RETURN                           R0 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R0 K2 ["userPickedDataModel"]
       18 NAMECALL                         R5 R0 K3 ["resolveCurrentDataModelName"]
       20 CALL                             R5 1 -1
       21 NAMECALL                         R3 R0 K4 ["switchTargetDataModel"]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 RETURN                           R0 1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["rebindFocusedSession"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["dataModelSessionStartedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["dataModelSessionStartedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["dataModelSessionStartedConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["pluginRef"]
       13 GETIMPORT                        R2 K4 [pcall]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          VAL R1
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 MOVE                             R4 R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 SETTABLEKS                       R4 R0 K5 ["mdiInstance"]
       24 GETTABLEKS                       R4 R0 K5 ["mdiInstance"]
       26 JUMPIF                           R4 ; [+1]
       27 RETURN                           R0 0
       28 GETTABLEKS                       R4 R0 K5 ["mdiInstance"]
       30 GETTABLEKS                       R4 R4 K6 ["DataModelSessionStarted"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R4 R4 K7 ["Connect"]
       36 CALL                             R4 2 1
       37 SETTABLEKS                       R4 R0 K0 ["dataModelSessionStartedConnection"]
       39 NAMECALL                         R4 R0 K8 ["rebindFocusedSession"]
       41 CALL                             R4 1 0
       42 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["userPickedDataModel"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K1 ["resolveCurrentDataModelName"]
        9 CALL                             R2 1 -1
       10 NAMECALL                         R0 R0 K2 ["switchTargetDataModel"]
       12 CALL                             R0 -1 0
       13 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["currentDataModelChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["currentDataModelChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["currentDataModelChangedConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["mdiInstance"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETTABLEKS                       R1 R0 K2 ["mdiInstance"]
       16 GETTABLEKS                       R1 R1 K3 ["FocusedDataModelSession"]
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R0 K4 ["userPickedDataModel"]
       22 JUMPIF                           R2 ; [+13]
       23 NAMECALL                         R2 R0 K5 ["resolveCurrentDataModelName"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R3 R0 K6 ["state"]
       28 GETTABLEKS                       R3 R3 K7 ["targetDataModel"]
       30 JUMPIFEQ                         R2 R3 ; [+5]
       32 MOVE                             R5 R2
       33 NAMECALL                         R3 R0 K8 ["switchTargetDataModel"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R2 R1 K9 ["CurrentDataModelTypeChanged"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R2 R2 K10 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R0 K0 ["currentDataModelChangedConnection"]
       45 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_40:
        0 DUPTABLE                         R1 K1 [{"warningIndex"}]
        1 GETTABLEKS                       R4 R0 K0 ["warningIndex"]
        3 ORK                              R3 R4 K2 [1]
        4 ADDK                             R2 R3 K2 [1]
        5 SETTABLEKS                       R2 R1 K0 ["warningIndex"]
        7 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+84]
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R0 1 2
        8 GETUPVAL                         R2 3
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["queryInFlight"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["treemapRef"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K3 ["treemapRef"]
       21 NAMECALL                         R2 R2 K4 ["getValue"]
       23 CALL                             R2 1 1
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 RETURN                           R0 0
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K5 ["state"]
       30 GETTABLEKS                       R3 R3 K6 ["selectedCategory"]
       32 GETUPVAL                         R4 1
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 RETURN                           R0 0
       36 JUMPIF                           R0 ; [+1]
       37 RETURN                           R0 0
       38 JUMPIF                           R1 ; [+1]
       39 RETURN                           R0 0
       40 GETUPVAL                         R3 2
       41 JUMPIFNOT                        R3 ; [+29]
       42 GETUPVAL                         R3 2
       43 JUMPIFEQKS                       R3 K7 [""] ; [+27]
       45 MOVE                             R3 R1
       46 GETUPVAL                         R4 2
       47 JUMPIFNOT                        R3 ; [+3]
       48 JUMPIFNOT                        R4 ; [+2]
       49 JUMPIFNOTEQKS                    R4 K7 [""] ; [+3]
       51 MOVE                             R1 R3
       52 JUMP                             ; [+11]
       53 GETIMPORT                        R5 K10 [string.lower]
       55 MOVE                             R6 R4
       56 CALL                             R5 1 1
       57 NEWCLOSURE                       R6 P1
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 MOVE                             R7 R6
       61 MOVE                             R8 R3
       62 CALL                             R7 1 1
       63 MOVE                             R1 R7
       64 JUMPIF                           R1 ; [+6]
       65 DUPTABLE                         R3 K17 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       66 NEWTABLE                         R4 0 0
       68 SETTABLEKS                       R4 R3 K16 ["Children"]
       70 MOVE                             R1 R3
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R3 R3 K18 ["selectionManager"]
       74 MOVE                             R5 R1
       75 NAMECALL                         R3 R3 K19 ["refreshMetaIds"]
       77 CALL                             R3 2 0
       78 MOVE                             R5 R1
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R6 R6 K20 ["sizeKey"]
       82 NAMECALL                         R3 R2 K21 ["submitTreemapNodes"]
       84 CALL                             R3 3 0
       85 RETURN                           R0 0
       86 GETUPVAL                         R0 3
       87 GETTABLEKS                       R0 R0 K3 ["treemapRef"]
       89 JUMPIFNOTEQKNIL                  R0 ; [+2]
       91 RETURN                           R0 0
       92 GETUPVAL                         R0 3
       93 GETTABLEKS                       R0 R0 K3 ["treemapRef"]
       95 NAMECALL                         R0 R0 K4 ["getValue"]
       97 CALL                             R0 1 1
       98 JUMPIFNOTEQKNIL                  R0 ; [+2]
      100 RETURN                           R0 0
      101 GETUPVAL                         R1 3
      102 GETTABLEKS                       R1 R1 K5 ["state"]
      104 GETTABLEKS                       R1 R1 K6 ["selectedCategory"]
      106 GETUPVAL                         R2 1
      107 JUMPIFEQ                         R1 R2 ; [+2]
      109 RETURN                           R0 0
      110 GETIMPORT                        R1 K1 [pcall]
      112 NEWCLOSURE                       R2 P2
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          UPVAL U2
      115 CALL                             R1 1 2
      116 JUMPIF                           R1 ; [+1]
      117 RETURN                           R0 0
      118 GETUPVAL                         R3 2
      119 JUMPIFNOT                        R3 ; [+22]
      120 GETUPVAL                         R3 2
      121 JUMPIFEQKS                       R3 K7 [""] ; [+20]
      123 MOVE                             R3 R2
      124 GETUPVAL                         R4 2
      125 JUMPIFNOT                        R3 ; [+3]
      126 JUMPIFNOT                        R4 ; [+2]
      127 JUMPIFNOTEQKS                    R4 K7 [""] ; [+3]
      129 MOVE                             R2 R3
      130 JUMP                             ; [+11]
      131 GETIMPORT                        R5 K10 [string.lower]
      133 MOVE                             R6 R4
      134 CALL                             R5 1 1
      135 NEWCLOSURE                       R6 P1
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R6
      138 MOVE                             R7 R6
      139 MOVE                             R8 R3
      140 CALL                             R7 1 1
      141 MOVE                             R2 R7
      142 JUMPIF                           R2 ; [+6]
      143 DUPTABLE                         R3 K17 [{["Id"] = 0, ["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      144 NEWTABLE                         R4 0 0
      146 SETTABLEKS                       R4 R3 K16 ["Children"]
      148 MOVE                             R2 R3
      149 GETUPVAL                         R3 3
      150 GETTABLEKS                       R3 R3 K18 ["selectionManager"]
      152 MOVE                             R5 R2
      153 NAMECALL                         R3 R3 K19 ["refreshMetaIds"]
      155 CALL                             R3 2 0
      156 MOVE                             R5 R2
      157 GETUPVAL                         R6 1
      158 GETTABLEKS                       R6 R6 K20 ["sizeKey"]
      160 NAMECALL                         R3 R0 K21 ["submitTreemapNodes"]
      162 CALL                             R3 3 0
      163 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["enabled"]
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["treemapRef"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["treemapRef"]
       15 NAMECALL                         R1 R1 K3 ["getValue"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 MOVE                             R4 R0
       20 NAMECALL                         R2 R1 K4 ["heartbeat"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K5 ["_nextWarningRotation"]
       26 JUMPIF                           R1 ; [+7]
       27 GETUPVAL                         R1 0
       28 GETIMPORT                        R3 K8 [tick]
       30 CALL                             R3 0 1
       31 ADDK                             R2 R3 K6 [5]
       32 SETTABLEKS                       R2 R1 K5 ["_nextWarningRotation"]
       34 GETIMPORT                        R1 K8 [tick]
       36 CALL                             R1 0 1
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K5 ["_nextWarningRotation"]
       40 JUMPIFNOTLT                      R2 R1 ; [+13]
       42 GETUPVAL                         R1 0
       43 GETIMPORT                        R3 K8 [tick]
       45 CALL                             R3 0 1
       46 ADDK                             R2 R3 K6 [5]
       47 SETTABLEKS                       R2 R1 K5 ["_nextWarningRotation"]
       49 GETUPVAL                         R1 0
       50 DUPCLOSURE                       R3 K9 [PROTO_40]
       51 NAMECALL                         R1 R1 K10 ["setState"]
       53 CALL                             R1 2 0
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K11 ["isPaused"]
       57 JUMPIF                           R2 ; [+9]
       58 LOADB                            R1 1
       59 GETIMPORT                        R2 K8 [tick]
       61 CALL                             R2 0 1
       62 GETUPVAL                         R3 0
       63 GETTABLEKS                       R3 R3 K12 ["timeOfNextAutomaticUpdate"]
       65 JUMPIFLT                         R3 R2 ; [+4]
       67 GETUPVAL                         R1 0
       68 GETTABLEKS                       R1 R1 K13 ["forceUpdateOnce"]
       70 GETUPVAL                         R3 1
       71 JUMPIFNOT                        R3 ; [+5]
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K14 ["queryInFlight"]
       75 NOT                              R2 R3
       76 JUMP                             ; [+1]
       77 LOADB                            R2 1
       78 JUMPIFNOT                        R1 ; [+39]
       79 JUMPIFNOT                        R2 ; [+38]
       80 GETUPVAL                         R3 0
       81 LOADB                            R4 0
       82 SETTABLEKS                       R4 R3 K13 ["forceUpdateOnce"]
       84 GETUPVAL                         R3 0
       85 GETIMPORT                        R5 K8 [tick]
       87 CALL                             R5 0 1
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K15 ["delayBetweenAutomaticUpdates"]
       91 ADD                              R4 R5 R6
       92 SETTABLEKS                       R4 R3 K12 ["timeOfNextAutomaticUpdate"]
       94 GETUPVAL                         R3 1
       95 JUMPIFNOT                        R3 ; [+4]
       96 GETUPVAL                         R3 0
       97 LOADB                            R4 1
       98 SETTABLEKS                       R4 R3 K14 ["queryInFlight"]
      100 GETUPVAL                         R3 0
      101 GETTABLEKS                       R3 R3 K0 ["state"]
      103 GETTABLEKS                       R3 R3 K16 ["selectedCategory"]
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K0 ["state"]
      108 GETTABLEKS                       R4 R4 K17 ["searchTerm"]
      110 GETIMPORT                        R5 K20 [task.spawn]
      112 NEWCLOSURE                       R6 P1
      113 CAPTURE                          UPVAL U1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U0
      117 CALL                             R5 1 0
      118 RETURN                           R0 0

PROTO_45:
        0 NAMECALL                         R2 R0 K0 ["unhookHeartbeat"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [game]
        5 LOADK                            R4 K3 ["RunService"]
        6 NAMECALL                         R2 R2 K4 ["GetService"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K5 ["Heartbeat"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R2 R2 K6 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R0 K7 ["heartbeatConnection"]
       19 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 NAMECALL                         R1 R0 K0 ["unhookHeartbeat"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K1 ["actionActivatedConnection"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K1 ["actionActivatedConnection"]
       10 NAMECALL                         R1 R1 K2 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETTABLEKS                       R1 R0 K3 ["syncStateWithActionConnection"]
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETTABLEKS                       R1 R0 K3 ["syncStateWithActionConnection"]
       18 NAMECALL                         R1 R1 K2 ["Disconnect"]
       20 CALL                             R1 1 0
       21 GETTABLEKS                       R1 R0 K4 ["currentDataModelChangedConnection"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETTABLEKS                       R1 R0 K4 ["currentDataModelChangedConnection"]
       26 NAMECALL                         R1 R1 K2 ["Disconnect"]
       28 CALL                             R1 1 0
       29 GETTABLEKS                       R1 R0 K5 ["dataModelSessionStartedConnection"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETTABLEKS                       R1 R0 K5 ["dataModelSessionStartedConnection"]
       34 NAMECALL                         R1 R1 K2 ["Disconnect"]
       36 CALL                             R1 1 0
       37 GETTABLEKS                       R1 R0 K6 ["mdiPropertyConnection"]
       39 JUMPIFNOT                        R1 ; [+5]
       40 GETTABLEKS                       R1 R0 K6 ["mdiPropertyConnection"]
       42 NAMECALL                         R1 R1 K2 ["Disconnect"]
       44 CALL                             R1 1 0
       45 GETTABLEKS                       R1 R0 K7 ["availableDataModelsUnsubscribe"]
       47 JUMPIFNOT                        R1 ; [+3]
       48 GETTABLEKS                       R1 R0 K7 ["availableDataModelsUnsubscribe"]
       50 CALL                             R1 0 0
       51 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["userPickedDataModel"]
        4 GETUPVAL                         R1 0
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["switchTargetDataModel"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["categories"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["id"]
        8 JUMPIFNOTEQ                      R7 R0 ; [+41]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K2 ["state"]
       13 GETTABLEKS                       R7 R7 K3 ["selectedCategory"]
       15 GETTABLEKS                       R7 R7 K4 ["module"]
       17 GETTABLEKS                       R7 R7 K5 ["reset"]
       19 CALL                             R7 0 0
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K6 ["selectionManager"]
       23 NAMECALL                         R7 R7 K7 ["clear"]
       25 CALL                             R7 1 0
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K6 ["selectionManager"]
       29 GETTABLEKS                       R9 R6 K4 ["module"]
       31 NAMECALL                         R7 R7 K8 ["setQuery"]
       33 CALL                             R7 2 0
       34 GETUPVAL                         R7 0
       35 LOADN                            R8 0
       36 SETTABLEKS                       R8 R7 K9 ["timeOfNextAutomaticUpdate"]
       38 GETUPVAL                         R7 0
       39 LOADB                            R8 1
       40 SETTABLEKS                       R8 R7 K10 ["forceUpdateOnce"]
       42 GETUPVAL                         R7 0
       43 DUPTABLE                         R9 K11 [{"selectedCategory"}]
       44 SETTABLEKS                       R6 R9 K3 ["selectedCategory"]
       46 NAMECALL                         R7 R7 K12 ["setState"]
       48 CALL                             R7 2 0
       49 RETURN                           R0 0
       50 FORGLOOP                         R2 2 ; [-45]
       52 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["timeOfNextAutomaticUpdate"]
       11 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["forceUpdateOnce"]
        4 GETUPVAL                         R0 0
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["timeOfNextAutomaticUpdate"]
        8 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clearBaselines"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["forceUpdateOnce"]
        8 GETUPVAL                         R0 1
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["timeOfNextAutomaticUpdate"]
       12 RETURN                           R0 0

PROTO_53:
        0 DUPTABLE                         R1 K1 [{"filterMenuOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["filterMenuOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["filterMenuOpen"]
        6 RETURN                           R1 1

PROTO_54:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_53]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setFilter"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 GETUPVAL                         R4 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K1 ["id"]
       10 GETTABLE                         R3 R4 R5
       11 NOT                              R2 R3
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K2 ["getFilterStateObservable"]
       16 CALL                             R0 0 1
       17 GETTABLEKS                       R0 R0 K3 ["get"]
       19 CALL                             R0 0 1
       20 GETUPVAL                         R1 3
       21 LOADB                            R2 1
       22 SETTABLEKS                       R2 R1 K4 ["forceUpdateOnce"]
       24 GETUPVAL                         R1 3
       25 LOADN                            R2 0
       26 SETTABLEKS                       R2 R1 K5 ["timeOfNextAutomaticUpdate"]
       28 GETUPVAL                         R1 3
       29 DUPTABLE                         R3 K7 [{"filterState"}]
       30 SETTABLEKS                       R0 R3 K6 ["filterState"]
       32 NAMECALL                         R1 R1 K8 ["setState"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_56:
        0 DUPTABLE                         R0 K2 [{"UIPadding", "UIListLayout"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["createElement"]
        4 LOADK                            R2 K0 ["UIPadding"]
        5 DUPTABLE                         R3 K6 [{"PaddingLeft", "PaddingRight"}]
        6 GETIMPORT                        R4 K9 [UDim.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 4
       10 CALL                             R4 2 1
       11 SETTABLEKS                       R4 R3 K4 ["PaddingLeft"]
       13 GETIMPORT                        R4 K9 [UDim.new]
       15 LOADN                            R5 0
       16 LOADN                            R6 4
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K5 ["PaddingRight"]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K0 ["UIPadding"]
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K3 ["createElement"]
       26 LOADK                            R2 K1 ["UIListLayout"]
       27 DUPTABLE                         R3 K13 [{"FillDirection", "VerticalAlignment", "Padding"}]
       28 GETIMPORT                        R4 K16 [Enum.FillDirection.Horizontal]
       30 SETTABLEKS                       R4 R3 K10 ["FillDirection"]
       32 GETIMPORT                        R4 K18 [Enum.VerticalAlignment.Center]
       34 SETTABLEKS                       R4 R3 K11 ["VerticalAlignment"]
       36 GETIMPORT                        R4 K9 [UDim.new]
       38 LOADN                            R5 0
       39 LOADN                            R6 12
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K12 ["Padding"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K1 ["UIListLayout"]
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R1 R1 K19 ["filterState"]
       49 JUMPIF                           R1 ; [+7]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R1 R1 K20 ["getFilterStateObservable"]
       53 CALL                             R1 0 1
       54 GETTABLEKS                       R1 R1 K21 ["get"]
       56 CALL                             R1 0 1
       57 GETUPVAL                         R2 2
       58 GETTABLEKS                       R2 R2 K22 ["filterOptions"]
       60 LOADNIL                          R3
       61 LOADNIL                          R4
       62 FORGPREP                         R2
       63 LOADK                            R8 K23 ["Filter_"]
       64 GETTABLEKS                       R9 R6 K24 ["id"]
       66 CONCAT                           R7 R8 R9
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K3 ["createElement"]
       70 GETUPVAL                         R9 3
       71 DUPTABLE                         R10 K30 [{"LayoutOrder", "label", "isChecked", "size", "onActivated"}]
       72 SETTABLEKS                       R5 R10 K25 ["LayoutOrder"]
       74 GETTABLEKS                       R11 R6 K31 ["text"]
       76 SETTABLEKS                       R11 R10 K26 ["label"]
       78 GETTABLEKS                       R13 R6 K24 ["id"]
       80 GETTABLE                         R12 R1 R13
       81 ORK                              R11 R12 K32 [False]
       82 SETTABLEKS                       R11 R10 K27 ["isChecked"]
       84 GETUPVAL                         R11 4
       85 GETTABLEKS                       R11 R11 K33 ["Enums"]
       87 GETTABLEKS                       R11 R11 K34 ["InputSize"]
       89 GETTABLEKS                       R11 R11 K35 ["Small"]
       91 SETTABLEKS                       R11 R10 K28 ["size"]
       93 NEWCLOSURE                       R11 P0
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R1
       97 CAPTURE                          UPVAL U5
       98 SETTABLEKS                       R11 R10 K29 ["onActivated"]
      100 CALL                             R8 2 1
      101 SETTABLE                         R8 R0 R7
      102 FORGLOOP                         R2 2 ; [-40]
      104 RETURN                           R0 1

PROTO_57:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+30]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+21]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K0 ["getWarnings"]
        9 JUMPIFNOT                        R1 ; [+17]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K0 ["getWarnings"]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K1 ["localization"]
       16 CALL                             R1 1 3
       17 FORGPREP                         R1
       18 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       20 MOVE                             R7 R0
       21 MOVE                             R8 R5
       22 GETIMPORT                        R6 K4 [table.insert]
       24 CALL                             R6 2 0
       25 FORGLOOP                         R1 2 ; [-8]
       27 LENGTH                           R1 R0
       28 JUMPIFNOTEQKN                    R1 K5 [0] ; [+41]
       30 NEWTABLE                         R1 0 0
       32 RETURN                           R1 1
       33 JUMP                             ; [+36]
       34 MOVE                             R2 R0
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K1 ["localization"]
       38 LOADK                            R5 K6 ["Messages"]
       39 LOADK                            R6 K7 ["LocalMachineValuesWarning"]
       40 NAMECALL                         R3 R3 K8 ["getText"]
       42 CALL                             R3 3 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R1 K4 [table.insert]
       46 CALL                             R1 -1 0
       47 GETUPVAL                         R1 1
       48 JUMPIFNOT                        R1 ; [+21]
       49 GETUPVAL                         R1 1
       50 GETTABLEKS                       R1 R1 K0 ["getWarnings"]
       52 JUMPIFNOT                        R1 ; [+17]
       53 GETUPVAL                         R1 1
       54 GETTABLEKS                       R1 R1 K0 ["getWarnings"]
       56 GETUPVAL                         R2 2
       57 GETTABLEKS                       R2 R2 K1 ["localization"]
       59 CALL                             R1 1 3
       60 FORGPREP                         R1
       61 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       63 MOVE                             R7 R0
       64 MOVE                             R8 R5
       65 GETIMPORT                        R6 K4 [table.insert]
       67 CALL                             R6 2 0
       68 FORGLOOP                         R1 2 ; [-8]
       70 GETUPVAL                         R4 3
       71 GETTABLEKS                       R4 R4 K10 ["warningIndex"]
       73 SUBK                             R3 R4 K9 [1]
       74 LENGTH                           R4 R0
       75 MOD                              R2 R3 R4
       76 ADDK                             R1 R2 K9 [1]
       77 GETTABLE                         R3 R0 R1
       78 ORK                              R2 R3 K11 [""]
       79 GETUPVAL                         R3 0
       80 JUMPIFNOT                        R3 ; [+111]
       81 DUPTABLE                         R3 K16 [{"UIPadding", "Layout", "InfoIcon", "WarningText"}]
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K17 ["createElement"]
       85 LOADK                            R5 K12 ["UIPadding"]
       86 DUPTABLE                         R6 K20 [{"PaddingLeft", "PaddingRight"}]
       87 GETIMPORT                        R7 K23 [UDim.new]
       89 LOADN                            R8 0
       90 LOADN                            R9 8
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K18 ["PaddingLeft"]
       94 GETIMPORT                        R7 K23 [UDim.new]
       96 LOADN                            R8 0
       97 LOADN                            R9 8
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K19 ["PaddingRight"]
      101 CALL                             R4 2 1
      102 SETTABLEKS                       R4 R3 K12 ["UIPadding"]
      104 GETUPVAL                         R4 4
      105 GETTABLEKS                       R4 R4 K17 ["createElement"]
      107 LOADK                            R5 K24 ["UIListLayout"]
      108 DUPTABLE                         R6 K29 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      109 GETIMPORT                        R7 K32 [Enum.FillDirection.Horizontal]
      111 SETTABLEKS                       R7 R6 K25 ["FillDirection"]
      113 GETIMPORT                        R7 K34 [Enum.HorizontalAlignment.Left]
      115 SETTABLEKS                       R7 R6 K26 ["HorizontalAlignment"]
      117 GETIMPORT                        R7 K36 [Enum.VerticalAlignment.Center]
      119 SETTABLEKS                       R7 R6 K27 ["VerticalAlignment"]
      121 GETIMPORT                        R7 K23 [UDim.new]
      123 LOADN                            R8 0
      124 LOADN                            R9 4
      125 CALL                             R7 2 1
      126 SETTABLEKS                       R7 R6 K28 ["Padding"]
      128 CALL                             R4 2 1
      129 SETTABLEKS                       R4 R3 K13 ["Layout"]
      131 GETUPVAL                         R4 4
      132 GETTABLEKS                       R4 R4 K17 ["createElement"]
      134 GETUPVAL                         R5 5
      135 DUPTABLE                         R6 K40 [{["name"] = "circle-i", ["size"]}]
      136 GETUPVAL                         R7 6
      137 GETTABLEKS                       R7 R7 K41 ["Enums"]
      139 GETTABLEKS                       R7 R7 K42 ["IconSize"]
      141 GETTABLEKS                       R7 R7 K43 ["Small"]
      143 SETTABLEKS                       R7 R6 K39 ["size"]
      145 CALL                             R4 2 1
      146 SETTABLEKS                       R4 R3 K14 ["InfoIcon"]
      148 GETUPVAL                         R4 4
      149 GETTABLEKS                       R4 R4 K17 ["createElement"]
      151 LOADK                            R5 K44 ["TextLabel"]
      152 NEWTABLE                         R6 8 0
      154 GETIMPORT                        R7 K46 [UDim2.new]
      156 LOADN                            R8 1
      157 LOADN                            R9 -24
      158 LOADN                            R10 1
      159 LOADN                            R11 0
      160 CALL                             R7 4 1
      161 SETTABLEKS                       R7 R6 K47 ["Size"]
      163 LOADN                            R7 2
      164 SETTABLEKS                       R7 R6 K48 ["LayoutOrder"]
      166 LOADN                            R7 1
      167 SETTABLEKS                       R7 R6 K49 ["BackgroundTransparency"]
      169 SETTABLEKS                       R2 R6 K50 ["Text"]
      171 GETIMPORT                        R7 K52 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R7 R6 K51 ["TextXAlignment"]
      175 GETIMPORT                        R7 K54 [Enum.TextYAlignment.Center]
      177 SETTABLEKS                       R7 R6 K53 ["TextYAlignment"]
      179 GETIMPORT                        R7 K57 [Enum.TextTruncate.AtEnd]
      181 SETTABLEKS                       R7 R6 K55 ["TextTruncate"]
      183 GETUPVAL                         R7 4
      184 GETTABLEKS                       R7 R7 K58 ["Tag"]
      186 LOADK                            R8 K59 ["SceneAnalysis-StandardText"]
      187 SETTABLE                         R8 R6 R7
      188 CALL                             R4 2 1
      189 SETTABLEKS                       R4 R3 K15 ["WarningText"]
      191 RETURN                           R3 1
      192 DUPTABLE                         R3 K16 [{"UIPadding", "Layout", "InfoIcon", "WarningText"}]
      193 GETUPVAL                         R4 4
      194 GETTABLEKS                       R4 R4 K17 ["createElement"]
      196 LOADK                            R5 K12 ["UIPadding"]
      197 DUPTABLE                         R6 K60 [{"PaddingLeft"}]
      198 GETIMPORT                        R7 K23 [UDim.new]
      200 LOADN                            R8 0
      201 LOADN                            R9 8
      202 CALL                             R7 2 1
      203 SETTABLEKS                       R7 R6 K18 ["PaddingLeft"]
      205 CALL                             R4 2 1
      206 SETTABLEKS                       R4 R3 K12 ["UIPadding"]
      208 GETUPVAL                         R4 4
      209 GETTABLEKS                       R4 R4 K17 ["createElement"]
      211 LOADK                            R5 K24 ["UIListLayout"]
      212 DUPTABLE                         R6 K29 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      213 GETIMPORT                        R7 K32 [Enum.FillDirection.Horizontal]
      215 SETTABLEKS                       R7 R6 K25 ["FillDirection"]
      217 GETIMPORT                        R7 K61 [Enum.HorizontalAlignment.Center]
      219 SETTABLEKS                       R7 R6 K26 ["HorizontalAlignment"]
      221 GETIMPORT                        R7 K36 [Enum.VerticalAlignment.Center]
      223 SETTABLEKS                       R7 R6 K27 ["VerticalAlignment"]
      225 GETIMPORT                        R7 K23 [UDim.new]
      227 LOADN                            R8 0
      228 LOADN                            R9 4
      229 CALL                             R7 2 1
      230 SETTABLEKS                       R7 R6 K28 ["Padding"]
      232 CALL                             R4 2 1
      233 SETTABLEKS                       R4 R3 K13 ["Layout"]
      235 GETUPVAL                         R4 4
      236 GETTABLEKS                       R4 R4 K17 ["createElement"]
      238 GETUPVAL                         R5 5
      239 DUPTABLE                         R6 K40 [{["name"] = "circle-i", ["size"]}]
      240 GETUPVAL                         R7 6
      241 GETTABLEKS                       R7 R7 K41 ["Enums"]
      243 GETTABLEKS                       R7 R7 K42 ["IconSize"]
      245 GETTABLEKS                       R7 R7 K43 ["Small"]
      247 SETTABLEKS                       R7 R6 K39 ["size"]
      249 CALL                             R4 2 1
      250 SETTABLEKS                       R4 R3 K14 ["InfoIcon"]
      252 GETUPVAL                         R4 4
      253 GETTABLEKS                       R4 R4 K17 ["createElement"]
      255 LOADK                            R5 K44 ["TextLabel"]
      256 NEWTABLE                         R6 8 0
      258 GETIMPORT                        R7 K64 [Enum.AutomaticSize.X]
      260 SETTABLEKS                       R7 R6 K62 ["AutomaticSize"]
      262 GETIMPORT                        R7 K46 [UDim2.new]
      264 LOADN                            R8 0
      265 LOADN                            R9 0
      266 LOADN                            R10 1
      267 LOADN                            R11 0
      268 CALL                             R7 4 1
      269 SETTABLEKS                       R7 R6 K47 ["Size"]
      271 LOADN                            R7 2
      272 SETTABLEKS                       R7 R6 K48 ["LayoutOrder"]
      274 LOADN                            R7 1
      275 SETTABLEKS                       R7 R6 K49 ["BackgroundTransparency"]
      277 SETTABLEKS                       R2 R6 K50 ["Text"]
      279 GETIMPORT                        R7 K52 [Enum.TextXAlignment.Left]
      281 SETTABLEKS                       R7 R6 K51 ["TextXAlignment"]
      283 GETIMPORT                        R7 K54 [Enum.TextYAlignment.Center]
      285 SETTABLEKS                       R7 R6 K53 ["TextYAlignment"]
      287 GETUPVAL                         R7 4
      288 GETTABLEKS                       R7 R7 K58 ["Tag"]
      290 LOADK                            R8 K65 ["SceneAnalysis-SmallText"]
      291 SETTABLE                         R8 R6 R7
      292 CALL                             R4 2 1
      293 SETTABLEKS                       R4 R3 K15 ["WarningText"]
      295 RETURN                           R3 1

PROTO_58:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["selectedCategory"]
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLEKS                       R5 R2 K4 ["selectedCategory"]
       13 GETTABLEKS                       R5 R5 K5 ["module"]
       15 MOVE                             R6 R5
       16 JUMPIFNOT                        R6 ; [+2]
       17 GETTABLEKS                       R6 R5 K6 ["filterOptions"]
       19 MOVE                             R7 R5
       20 JUMPIFNOT                        R7 ; [+2]
       21 GETTABLEKS                       R7 R5 K7 ["clearBaselines"]
       23 LOADNIL                          R8
       24 GETUPVAL                         R9 0
       25 JUMPIFNOT                        R9 ; [+51]
       26 NEWTABLE                         R8 0 0
       28 NEWTABLE                         R9 0 0
       30 GETTABLEKS                       R10 R2 K8 ["availableDataModels"]
       32 JUMPIF                           R10 ; [+2]
       33 NEWTABLE                         R10 0 0
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 FORGPREP                         R10
       38 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
       40 MOVE                             R16 R8
       41 MOVE                             R17 R14
       42 GETIMPORT                        R15 K11 [table.insert]
       44 CALL                             R15 2 0
       45 GETTABLEKS                       R15 R14 K12 ["id"]
       47 LOADB                            R16 1
       48 SETTABLE                         R16 R9 R15
       49 FORGLOOP                         R10 2 ; [-12]
       51 GETTABLEKS                       R10 R2 K13 ["targetDataModel"]
       53 JUMPIFNOT                        R10 ; [+23]
       54 GETTABLEKS                       R11 R2 K13 ["targetDataModel"]
       56 GETTABLE                         R10 R9 R11
       57 JUMPIF                           R10 ; [+19]
       58 LOADN                            R12 1
       59 DUPTABLE                         R13 K15 [{"id", "text"}]
       60 GETTABLEKS                       R14 R2 K13 ["targetDataModel"]
       62 SETTABLEKS                       R14 R13 K12 ["id"]
       64 GETTABLEKS                       R16 R2 K13 ["targetDataModel"]
       66 NAMECALL                         R14 R0 K16 ["dataModelLabel"]
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K14 ["text"]
       71 FASTCALL3                        TABLE_INSERT R8 R12 R13
       73 MOVE                             R11 R8
       74 GETIMPORT                        R10 K11 [table.insert]
       76 CALL                             R10 3 0
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K17 ["provide"]
       80 NEWTABLE                         R10 0 6
       82 GETUPVAL                         R11 2
       83 GETTABLEKS                       R11 R11 K18 ["new"]
       85 MOVE                             R12 R3
       86 CALL                             R11 1 1
       87 GETUPVAL                         R12 3
       88 GETTABLEKS                       R12 R12 K18 ["new"]
       90 NAMECALL                         R13 R3 K19 ["getMouse"]
       92 CALL                             R13 1 -1
       93 CALL                             R12 -1 1
       94 GETTABLEKS                       R13 R0 K20 ["localization"]
       96 GETTABLEKS                       R14 R0 K21 ["analytics"]
       98 GETTABLEKS                       R15 R0 K22 ["DEPRECATED_stylizer"]
      100 GETUPVAL                         R16 4
      101 GETTABLEKS                       R16 R16 K18 ["new"]
      103 GETTABLEKS                       R17 R0 K23 ["design"]
      105 CALL                             R16 1 -1
      106 SETLIST                          R10 R11 -1 [1]
      108 DUPTABLE                         R11 K25 [{"MainWidget"}]
      109 GETUPVAL                         R12 5
      110 GETTABLEKS                       R12 R12 K26 ["createElement"]
      112 GETUPVAL                         R13 6
      113 NEWTABLE                         R14 16 0
      115 LOADK                            R15 K27 ["SceneAnalysis"]
      116 SETTABLEKS                       R15 R14 K28 ["Id"]
      118 SETTABLEKS                       R4 R14 K29 ["Enabled"]
      120 GETTABLEKS                       R15 R0 K20 ["localization"]
      122 LOADK                            R17 K2 ["Plugin"]
      123 LOADK                            R18 K30 ["Name"]
      124 NAMECALL                         R15 R15 K31 ["getText"]
      126 CALL                             R15 3 1
      127 SETTABLEKS                       R15 R14 K32 ["Title"]
      129 GETIMPORT                        R15 K36 [Enum.ZIndexBehavior.Sibling]
      131 SETTABLEKS                       R15 R14 K34 ["ZIndexBehavior"]
      133 GETIMPORT                        R15 K39 [Enum.InitialDockState.Bottom]
      135 SETTABLEKS                       R15 R14 K37 ["InitialDockState"]
      137 GETIMPORT                        R15 K41 [Vector2.new]
      139 LOADN                            R16 640
      140 LOADN                            R17 480
      141 CALL                             R15 2 1
      142 SETTABLEKS                       R15 R14 K42 ["Size"]
      144 GETIMPORT                        R15 K41 [Vector2.new]
      146 LOADN                            R16 250
      147 LOADN                            R17 200
      148 CALL                             R15 2 1
      149 SETTABLEKS                       R15 R14 K43 ["MinSize"]
      151 GETTABLEKS                       R15 R0 K44 ["onClose"]
      153 SETTABLEKS                       R15 R14 K45 ["OnClose"]
      155 LOADB                            R15 1
      156 SETTABLEKS                       R15 R14 K46 ["ShouldRestore"]
      158 GETTABLEKS                       R15 R0 K47 ["onRestore"]
      160 SETTABLEKS                       R15 R14 K48 ["OnWidgetRestored"]
      162 GETTABLEKS                       R15 R1 K49 ["PluginLoaderContext"]
      164 GETTABLEKS                       R15 R15 K50 ["mainDockWidget"]
      166 SETTABLEKS                       R15 R14 K51 ["Widget"]
      168 GETTABLEKS                       R15 R0 K52 ["onDockWidgetCreated"]
      170 SETTABLEKS                       R15 R14 K53 ["OnWidgetCreated"]
      172 GETTABLEKS                       R15 R0 K23 ["design"]
      174 SETTABLEKS                       R15 R14 K54 ["PluginDesign"]
      176 GETUPVAL                         R15 5
      177 GETTABLEKS                       R15 R15 K55 ["Change"]
      179 GETTABLEKS                       R15 R15 K29 ["Enabled"]
      181 GETTABLEKS                       R16 R0 K56 ["onWidgetEnabledChanged"]
      183 SETTABLE                         R16 R14 R15
      184 DUPTABLE                         R15 K58 [{"Foundations"}]
      185 GETUPVAL                         R16 5
      186 GETTABLEKS                       R16 R16 K26 ["createElement"]
      188 GETUPVAL                         R17 7
      189 DUPTABLE                         R18 K60 [{"onStyleSheetChange"}]
      190 GETTABLEKS                       R19 R0 K61 ["onFoundationStyleSheetChange"]
      192 SETTABLEKS                       R19 R18 K59 ["onStyleSheetChange"]
      194 DUPTABLE                         R19 K63 [{"ContextStack"}]
      195 GETUPVAL                         R20 5
      196 GETTABLEKS                       R20 R20 K26 ["createElement"]
      198 GETUPVAL                         R21 8
      199 GETTABLEKS                       R21 R21 K62 ["ContextStack"]
      201 DUPTABLE                         R22 K65 [{"providers"}]
      202 NEWTABLE                         R23 0 1
      204 GETUPVAL                         R24 5
      205 GETTABLEKS                       R24 R24 K26 ["createElement"]
      207 GETUPVAL                         R25 9
      208 CALL                             R24 1 -1
      209 SETLIST                          R23 R24 -1 [1]
      211 SETTABLEKS                       R23 R22 K64 ["providers"]
      213 DUPTABLE                         R23 K69 [{"Wrapper", "StyleLink", "WidgetRegister"}]
      214 GETUPVAL                         R24 5
      215 GETTABLEKS                       R24 R24 K26 ["createElement"]
      217 LOADK                            R25 K70 ["Frame"]
      218 NEWTABLE                         R26 1 0
      220 GETUPVAL                         R27 5
      221 GETTABLEKS                       R27 R27 K71 ["Tag"]
      223 LOADK                            R28 K72 ["X-Fill X-Column SceneAnalysis-BackgroundColor"]
      224 SETTABLE                         R28 R26 R27
      225 DUPTABLE                         R27 K74 [{"ContentArea"}]
      226 GETUPVAL                         R28 5
      227 GETTABLEKS                       R28 R28 K26 ["createElement"]
      229 LOADK                            R29 K70 ["Frame"]
      230 DUPTABLE                         R30 K77 [{["Size"], ["BackgroundTransparency"] = 1}]
      231 GETIMPORT                        R31 K79 [UDim2.new]
      233 LOADN                            R32 1
      234 LOADN                            R33 0
      235 LOADN                            R34 1
      236 LOADN                            R35 0
      237 CALL                             R31 4 1
      238 SETTABLEKS                       R31 R30 K42 ["Size"]
      240 DUPTABLE                         R31 K84 [{"Layout", "DropdownFrame", "FilterMenu", "SplitPane"}]
      241 GETUPVAL                         R32 5
      242 GETTABLEKS                       R32 R32 K26 ["createElement"]
      244 LOADK                            R33 K85 ["UIListLayout"]
      245 DUPTABLE                         R34 K91 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      246 GETIMPORT                        R35 K93 [UDim.new]
      248 LOADN                            R36 0
      249 LOADN                            R37 0
      250 CALL                             R35 2 1
      251 SETTABLEKS                       R35 R34 K86 ["Padding"]
      253 GETIMPORT                        R35 K95 [Enum.FillDirection.Vertical]
      255 SETTABLEKS                       R35 R34 K87 ["FillDirection"]
      257 GETIMPORT                        R35 K97 [Enum.HorizontalAlignment.Left]
      259 SETTABLEKS                       R35 R34 K88 ["HorizontalAlignment"]
      261 GETIMPORT                        R35 K99 [Enum.VerticalAlignment.Top]
      263 SETTABLEKS                       R35 R34 K89 ["VerticalAlignment"]
      265 GETIMPORT                        R35 K101 [Enum.SortOrder.LayoutOrder]
      267 SETTABLEKS                       R35 R34 K90 ["SortOrder"]
      269 CALL                             R32 2 1
      270 SETTABLEKS                       R32 R31 K80 ["Layout"]
      272 GETUPVAL                         R32 5
      273 GETTABLEKS                       R32 R32 K26 ["createElement"]
      275 LOADK                            R33 K70 ["Frame"]
      276 NEWTABLE                         R34 4 0
      278 GETIMPORT                        R35 K79 [UDim2.new]
      280 LOADN                            R36 1
      281 LOADN                            R37 0
      282 LOADN                            R38 0
      283 LOADN                            R39 30
      284 CALL                             R35 4 1
      285 SETTABLEKS                       R35 R34 K42 ["Size"]
      287 LOADN                            R35 1
      288 SETTABLEKS                       R35 R34 K100 ["LayoutOrder"]
      290 LOADN                            R35 1
      291 SETTABLEKS                       R35 R34 K75 ["BackgroundTransparency"]
      293 GETUPVAL                         R35 5
      294 GETTABLEKS                       R35 R35 K55 ["Change"]
      296 GETTABLEKS                       R35 R35 K102 ["AbsoluteSize"]
      298 GETTABLEKS                       R36 R0 K103 ["onHeaderSizeChange"]
      300 SETTABLE                         R36 R34 R35
      301 DUPTABLE                         R35 K109 [{"UIPadding", "Layout", "DataModelDropdownContainer", "DropdownContainer", "SearchContainer", "RightGroup"}]
      302 GETUPVAL                         R36 5
      303 GETTABLEKS                       R36 R36 K26 ["createElement"]
      305 LOADK                            R37 K104 ["UIPadding"]
      306 DUPTABLE                         R38 K114 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      307 GETIMPORT                        R39 K93 [UDim.new]
      309 LOADN                            R40 0
      310 LOADN                            R41 4
      311 CALL                             R39 2 1
      312 SETTABLEKS                       R39 R38 K110 ["PaddingLeft"]
      314 GETIMPORT                        R39 K93 [UDim.new]
      316 LOADN                            R40 0
      317 LOADN                            R41 4
      318 CALL                             R39 2 1
      319 SETTABLEKS                       R39 R38 K111 ["PaddingRight"]
      321 GETIMPORT                        R39 K93 [UDim.new]
      323 LOADN                            R40 0
      324 LOADN                            R41 4
      325 CALL                             R39 2 1
      326 SETTABLEKS                       R39 R38 K112 ["PaddingTop"]
      328 GETIMPORT                        R39 K93 [UDim.new]
      330 LOADN                            R40 0
      331 LOADN                            R41 4
      332 CALL                             R39 2 1
      333 SETTABLEKS                       R39 R38 K113 ["PaddingBottom"]
      335 CALL                             R36 2 1
      336 SETTABLEKS                       R36 R35 K104 ["UIPadding"]
      338 GETUPVAL                         R36 5
      339 GETTABLEKS                       R36 R36 K26 ["createElement"]
      341 LOADK                            R37 K85 ["UIListLayout"]
      342 DUPTABLE                         R38 K115 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      343 GETIMPORT                        R39 K117 [Enum.FillDirection.Horizontal]
      345 SETTABLEKS                       R39 R38 K87 ["FillDirection"]
      347 GETIMPORT                        R39 K97 [Enum.HorizontalAlignment.Left]
      349 SETTABLEKS                       R39 R38 K88 ["HorizontalAlignment"]
      351 GETIMPORT                        R39 K119 [Enum.VerticalAlignment.Center]
      353 SETTABLEKS                       R39 R38 K89 ["VerticalAlignment"]
      355 GETIMPORT                        R39 K93 [UDim.new]
      357 LOADN                            R40 0
      358 LOADN                            R41 4
      359 CALL                             R39 2 1
      360 SETTABLEKS                       R39 R38 K86 ["Padding"]
      362 GETIMPORT                        R39 K101 [Enum.SortOrder.LayoutOrder]
      364 SETTABLEKS                       R39 R38 K90 ["SortOrder"]
      366 CALL                             R36 2 1
      367 SETTABLEKS                       R36 R35 K80 ["Layout"]
      369 GETUPVAL                         R37 0
      370 JUMPIFNOT                        R37 ; [+53]
      371 GETUPVAL                         R36 5
      372 GETTABLEKS                       R36 R36 K26 ["createElement"]
      374 LOADK                            R37 K70 ["Frame"]
      375 DUPTABLE                         R38 K121 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 0}]
      376 GETIMPORT                        R39 K79 [UDim2.new]
      378 LOADN                            R40 0
      379 LOADN                            R41 140
      380 LOADN                            R42 1
      381 LOADN                            R43 0
      382 CALL                             R39 4 1
      383 SETTABLEKS                       R39 R38 K42 ["Size"]
      385 DUPTABLE                         R39 K123 [{"Dropdown"}]
      386 GETUPVAL                         R40 5
      387 GETTABLEKS                       R40 R40 K26 ["createElement"]
      389 GETUPVAL                         R41 10
      390 GETTABLEKS                       R41 R41 K124 ["Root"]
      392 DUPTABLE                         R42 K132 [{["label"] = "", ["width"], ["size"], ["value"], ["items"], ["onItemChanged"]}]
      393 GETIMPORT                        R43 K93 [UDim.new]
      395 LOADN                            R44 1
      396 LOADN                            R45 0
      397 CALL                             R43 2 1
      398 SETTABLEKS                       R43 R42 K127 ["width"]
      400 GETUPVAL                         R43 11
      401 GETTABLEKS                       R43 R43 K133 ["Enums"]
      403 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      405 GETTABLEKS                       R43 R43 K135 ["XSmall"]
      407 SETTABLEKS                       R43 R42 K128 ["size"]
      409 GETTABLEKS                       R43 R2 K13 ["targetDataModel"]
      411 SETTABLEKS                       R43 R42 K129 ["value"]
      413 SETTABLEKS                       R8 R42 K130 ["items"]
      415 NEWCLOSURE                       R43 P0
      416 CAPTURE                          VAL R0
      417 SETTABLEKS                       R43 R42 K131 ["onItemChanged"]
      419 CALL                             R40 2 1
      420 SETTABLEKS                       R40 R39 K122 ["Dropdown"]
      422 CALL                             R36 3 1
      423 JUMPIF                           R36 ; [+1]
      424 LOADNIL                          R36
      425 SETTABLEKS                       R36 R35 K105 ["DataModelDropdownContainer"]
      427 GETUPVAL                         R36 5
      428 GETTABLEKS                       R36 R36 K26 ["createElement"]
      430 LOADK                            R37 K70 ["Frame"]
      431 DUPTABLE                         R38 K136 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      432 GETIMPORT                        R39 K79 [UDim2.new]
      434 LOADN                            R40 0
      435 LOADN                            R41 200
      436 LOADN                            R42 1
      437 LOADN                            R43 0
      438 CALL                             R39 4 1
      439 SETTABLEKS                       R39 R38 K42 ["Size"]
      441 DUPTABLE                         R39 K123 [{"Dropdown"}]
      442 GETUPVAL                         R40 5
      443 GETTABLEKS                       R40 R40 K26 ["createElement"]
      445 GETUPVAL                         R41 10
      446 GETTABLEKS                       R41 R41 K124 ["Root"]
      448 DUPTABLE                         R42 K132 [{["label"] = "", ["width"], ["size"], ["value"], ["items"], ["onItemChanged"]}]
      449 GETIMPORT                        R43 K93 [UDim.new]
      451 LOADN                            R44 1
      452 LOADN                            R45 0
      453 CALL                             R43 2 1
      454 SETTABLEKS                       R43 R42 K127 ["width"]
      456 GETUPVAL                         R43 11
      457 GETTABLEKS                       R43 R43 K133 ["Enums"]
      459 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      461 GETTABLEKS                       R43 R43 K135 ["XSmall"]
      463 SETTABLEKS                       R43 R42 K128 ["size"]
      465 GETTABLEKS                       R43 R0 K1 ["state"]
      467 GETTABLEKS                       R43 R43 K4 ["selectedCategory"]
      469 GETTABLEKS                       R43 R43 K12 ["id"]
      471 SETTABLEKS                       R43 R42 K129 ["value"]
      473 GETTABLEKS                       R43 R0 K137 ["categories"]
      475 SETTABLEKS                       R43 R42 K130 ["items"]
      477 NEWCLOSURE                       R43 P1
      478 CAPTURE                          VAL R0
      479 SETTABLEKS                       R43 R42 K131 ["onItemChanged"]
      481 CALL                             R40 2 1
      482 SETTABLEKS                       R40 R39 K122 ["Dropdown"]
      484 CALL                             R36 3 1
      485 SETTABLEKS                       R36 R35 K106 ["DropdownContainer"]
      487 GETUPVAL                         R37 12
      488 JUMPIFNOT                        R37 ; [+10]
      489 GETTABLEKS                       R37 R2 K138 ["windowWidth"]
      491 JUMPIFEQKN                       R37 K120 [0] ; [+7]
      493 LOADB                            R36 0
      494 GETTABLEKS                       R37 R2 K138 ["windowWidth"]
      496 LOADN                            R38 400
      497 JUMPIFNOTLE                      R38 R37 ; [+82]
      499 GETUPVAL                         R36 5
      500 GETTABLEKS                       R36 R36 K26 ["createElement"]
      502 LOADK                            R37 K70 ["Frame"]
      503 DUPTABLE                         R38 K140 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      504 GETIMPORT                        R39 K79 [UDim2.new]
      506 LOADN                            R40 0
      507 LOADN                            R41 0
      508 LOADN                            R42 1
      509 LOADN                            R43 0
      510 CALL                             R39 4 1
      511 SETTABLEKS                       R39 R38 K42 ["Size"]
      513 DUPTABLE                         R39 K143 [{"UIFlexItem", "SearchInput"}]
      514 GETUPVAL                         R40 5
      515 GETTABLEKS                       R40 R40 K26 ["createElement"]
      517 LOADK                            R41 K141 ["UIFlexItem"]
      518 DUPTABLE                         R42 K145 [{"FlexMode"}]
      519 GETIMPORT                        R43 K148 [Enum.UIFlexMode.Fill]
      521 SETTABLEKS                       R43 R42 K144 ["FlexMode"]
      523 CALL                             R40 2 1
      524 SETTABLEKS                       R40 R39 K141 ["UIFlexItem"]
      526 GETUPVAL                         R40 5
      527 GETTABLEKS                       R40 R40 K26 ["createElement"]
      529 GETUPVAL                         R41 13
      530 DUPTABLE                         R42 K152 [{["label"] = "", ["leadingIcon"], ["placeholder"], ["width"], ["size"], ["text"], ["onChanged"]}]
      531 GETUPVAL                         R43 11
      532 GETTABLEKS                       R43 R43 K133 ["Enums"]
      534 GETTABLEKS                       R43 R43 K153 ["IconName"]
      536 GETTABLEKS                       R43 R43 K154 ["MagnifyingGlass"]
      538 SETTABLEKS                       R43 R42 K149 ["leadingIcon"]
      540 GETTABLEKS                       R43 R0 K20 ["localization"]
      542 LOADK                            R45 K155 ["Controls"]
      543 LOADK                            R46 K156 ["SearchPlaceholder"]
      544 NAMECALL                         R43 R43 K31 ["getText"]
      546 CALL                             R43 3 1
      547 SETTABLEKS                       R43 R42 K150 ["placeholder"]
      549 GETIMPORT                        R43 K93 [UDim.new]
      551 LOADN                            R44 1
      552 LOADN                            R45 0
      553 CALL                             R43 2 1
      554 SETTABLEKS                       R43 R42 K127 ["width"]
      556 GETUPVAL                         R43 11
      557 GETTABLEKS                       R43 R43 K133 ["Enums"]
      559 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      561 GETTABLEKS                       R43 R43 K135 ["XSmall"]
      563 SETTABLEKS                       R43 R42 K128 ["size"]
      565 GETTABLEKS                       R44 R0 K1 ["state"]
      567 GETTABLEKS                       R44 R44 K157 ["searchTerm"]
      569 ORK                              R43 R44 K126 [""]
      570 SETTABLEKS                       R43 R42 K14 ["text"]
      572 NEWCLOSURE                       R43 P2
      573 CAPTURE                          VAL R0
      574 SETTABLEKS                       R43 R42 K151 ["onChanged"]
      576 CALL                             R40 2 1
      577 SETTABLEKS                       R40 R39 K142 ["SearchInput"]
      579 CALL                             R36 3 1
      580 SETTABLEKS                       R36 R35 K107 ["SearchContainer"]
      582 GETUPVAL                         R36 5
      583 GETTABLEKS                       R36 R36 K26 ["createElement"]
      585 LOADK                            R37 K70 ["Frame"]
      586 DUPTABLE                         R38 K160 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3}]
      587 GETIMPORT                        R39 K162 [Enum.AutomaticSize.X]
      589 SETTABLEKS                       R39 R38 K158 ["AutomaticSize"]
      591 GETIMPORT                        R39 K79 [UDim2.new]
      593 LOADN                            R40 0
      594 LOADN                            R41 0
      595 LOADN                            R42 1
      596 LOADN                            R43 0
      597 CALL                             R39 4 1
      598 SETTABLEKS                       R39 R38 K42 ["Size"]
      600 DUPTABLE                         R39 K167 [{"Layout", "ManualRefreshButton", "AutoupdateToggle", "ClearBaselineButton", "FilterButton"}]
      601 GETUPVAL                         R40 5
      602 GETTABLEKS                       R40 R40 K26 ["createElement"]
      604 LOADK                            R41 K85 ["UIListLayout"]
      605 GETUPVAL                         R43 12
      606 JUMPIFNOT                        R43 ; [+18]
      607 DUPTABLE                         R42 K168 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      608 GETIMPORT                        R43 K117 [Enum.FillDirection.Horizontal]
      610 SETTABLEKS                       R43 R42 K87 ["FillDirection"]
      612 GETIMPORT                        R43 K170 [Enum.HorizontalAlignment.Right]
      614 SETTABLEKS                       R43 R42 K88 ["HorizontalAlignment"]
      616 GETIMPORT                        R43 K119 [Enum.VerticalAlignment.Center]
      618 SETTABLEKS                       R43 R42 K89 ["VerticalAlignment"]
      620 GETIMPORT                        R43 K101 [Enum.SortOrder.LayoutOrder]
      622 SETTABLEKS                       R43 R42 K90 ["SortOrder"]
      624 JUMP                             ; [+13]
      625 DUPTABLE                         R42 K171 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      626 GETIMPORT                        R43 K117 [Enum.FillDirection.Horizontal]
      628 SETTABLEKS                       R43 R42 K87 ["FillDirection"]
      630 GETIMPORT                        R43 K170 [Enum.HorizontalAlignment.Right]
      632 SETTABLEKS                       R43 R42 K88 ["HorizontalAlignment"]
      634 GETIMPORT                        R43 K119 [Enum.VerticalAlignment.Center]
      636 SETTABLEKS                       R43 R42 K89 ["VerticalAlignment"]
      638 CALL                             R40 2 1
      639 SETTABLEKS                       R40 R39 K80 ["Layout"]
      641 GETUPVAL                         R40 12
      642 JUMPIFNOT                        R40 ; [+31]
      643 GETTABLEKS                       R40 R2 K172 ["paused"]
      645 JUMPIFNOT                        R40 ; [+28]
      646 GETUPVAL                         R40 5
      647 GETTABLEKS                       R40 R40 K26 ["createElement"]
      649 GETUPVAL                         R41 14
      650 DUPTABLE                         R42 K175 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
      651 GETUPVAL                         R43 11
      652 GETTABLEKS                       R43 R43 K133 ["Enums"]
      654 GETTABLEKS                       R43 R43 K153 ["IconName"]
      656 GETTABLEKS                       R43 R43 K176 ["ArrowSpinClockwise"]
      658 SETTABLEKS                       R43 R42 K173 ["icon"]
      660 GETUPVAL                         R43 11
      661 GETTABLEKS                       R43 R43 K133 ["Enums"]
      663 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      665 GETTABLEKS                       R43 R43 K177 ["Small"]
      667 SETTABLEKS                       R43 R42 K128 ["size"]
      669 NEWCLOSURE                       R43 P3
      670 CAPTURE                          VAL R0
      671 SETTABLEKS                       R43 R42 K174 ["onActivated"]
      673 CALL                             R40 2 1
      674 SETTABLEKS                       R40 R39 K163 ["ManualRefreshButton"]
      676 GETUPVAL                         R41 12
      677 JUMPIFNOT                        R41 ; [+10]
      678 GETTABLEKS                       R41 R2 K138 ["windowWidth"]
      680 JUMPIFEQKN                       R41 K120 [0] ; [+7]
      682 LOADB                            R40 0
      683 GETTABLEKS                       R41 R2 K138 ["windowWidth"]
      685 LOADN                            R42 400
      686 JUMPIFNOTLE                      R42 R41 ; [+37]
      688 GETUPVAL                         R40 5
      689 GETTABLEKS                       R40 R40 K26 ["createElement"]
      691 GETUPVAL                         R41 15
      692 DUPTABLE                         R42 K179 [{"LayoutOrder", "isChecked", "label", "size", "onActivated"}]
      693 GETUPVAL                         R44 12
      694 JUMPIFNOT                        R44 ; [+2]
      695 LOADN                            R43 2
      696 JUMP                             ; [+1]
      697 LOADN                            R43 1
      698 SETTABLEKS                       R43 R42 K100 ["LayoutOrder"]
      700 GETTABLEKS                       R44 R2 K172 ["paused"]
      702 NOT                              R43 R44
      703 SETTABLEKS                       R43 R42 K178 ["isChecked"]
      705 GETTABLEKS                       R43 R0 K20 ["localization"]
      707 LOADK                            R45 K155 ["Controls"]
      708 LOADK                            R46 K164 ["AutoupdateToggle"]
      709 NAMECALL                         R43 R43 K31 ["getText"]
      711 CALL                             R43 3 1
      712 SETTABLEKS                       R43 R42 K125 ["label"]
      714 GETUPVAL                         R43 16
      715 GETTABLEKS                       R43 R43 K177 ["Small"]
      717 SETTABLEKS                       R43 R42 K128 ["size"]
      719 NEWCLOSURE                       R43 P4
      720 CAPTURE                          VAL R0
      721 SETTABLEKS                       R43 R42 K174 ["onActivated"]
      723 CALL                             R40 2 1
      724 SETTABLEKS                       R40 R39 K164 ["AutoupdateToggle"]
      726 MOVE                             R40 R7
      727 JUMPIFNOT                        R40 ; [+46]
      728 GETUPVAL                         R40 5
      729 GETTABLEKS                       R40 R40 K26 ["createElement"]
      731 GETUPVAL                         R41 14
      732 DUPTABLE                         R42 K180 [{"LayoutOrder", "icon", "size", "onActivated"}]
      733 GETUPVAL                         R44 12
      734 JUMPIFNOT                        R44 ; [+2]
      735 LOADN                            R43 3
      736 JUMP                             ; [+1]
      737 LOADN                            R43 2
      738 SETTABLEKS                       R43 R42 K100 ["LayoutOrder"]
      740 GETUPVAL                         R44 12
      741 JUMPIFNOT                        R44 ; [+8]
      742 GETUPVAL                         R43 11
      743 GETTABLEKS                       R43 R43 K133 ["Enums"]
      745 GETTABLEKS                       R43 R43 K153 ["IconName"]
      747 GETTABLEKS                       R43 R43 K181 ["Eraser"]
      749 JUMP                             ; [+7]
      750 GETUPVAL                         R43 11
      751 GETTABLEKS                       R43 R43 K133 ["Enums"]
      753 GETTABLEKS                       R43 R43 K153 ["IconName"]
      755 GETTABLEKS                       R43 R43 K182 ["ArrowRotateRight"]
      757 SETTABLEKS                       R43 R42 K173 ["icon"]
      759 GETUPVAL                         R43 11
      760 GETTABLEKS                       R43 R43 K133 ["Enums"]
      762 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      764 GETTABLEKS                       R43 R43 K177 ["Small"]
      766 SETTABLEKS                       R43 R42 K128 ["size"]
      768 NEWCLOSURE                       R43 P5
      769 CAPTURE                          VAL R5
      770 CAPTURE                          VAL R0
      771 SETTABLEKS                       R43 R42 K174 ["onActivated"]
      773 CALL                             R40 2 1
      774 SETTABLEKS                       R40 R39 K165 ["ClearBaselineButton"]
      776 MOVE                             R40 R6
      777 JUMPIFNOT                        R40 ; [+35]
      778 GETUPVAL                         R40 5
      779 GETTABLEKS                       R40 R40 K26 ["createElement"]
      781 GETUPVAL                         R41 14
      782 DUPTABLE                         R42 K180 [{"LayoutOrder", "icon", "size", "onActivated"}]
      783 GETUPVAL                         R44 12
      784 JUMPIFNOT                        R44 ; [+2]
      785 LOADN                            R43 4
      786 JUMP                             ; [+1]
      787 LOADN                            R43 3
      788 SETTABLEKS                       R43 R42 K100 ["LayoutOrder"]
      790 GETUPVAL                         R43 11
      791 GETTABLEKS                       R43 R43 K133 ["Enums"]
      793 GETTABLEKS                       R43 R43 K153 ["IconName"]
      795 GETTABLEKS                       R43 R43 K183 ["ThreeSlidersHorizontal"]
      797 SETTABLEKS                       R43 R42 K173 ["icon"]
      799 GETUPVAL                         R43 11
      800 GETTABLEKS                       R43 R43 K133 ["Enums"]
      802 GETTABLEKS                       R43 R43 K134 ["InputSize"]
      804 GETTABLEKS                       R43 R43 K177 ["Small"]
      806 SETTABLEKS                       R43 R42 K128 ["size"]
      808 NEWCLOSURE                       R43 P6
      809 CAPTURE                          VAL R0
      810 SETTABLEKS                       R43 R42 K174 ["onActivated"]
      812 CALL                             R40 2 1
      813 SETTABLEKS                       R40 R39 K166 ["FilterButton"]
      815 CALL                             R36 3 1
      816 SETTABLEKS                       R36 R35 K108 ["RightGroup"]
      818 CALL                             R32 3 1
      819 SETTABLEKS                       R32 R31 K81 ["DropdownFrame"]
      821 MOVE                             R32 R6
      822 JUMPIFNOT                        R32 ; [+26]
      823 GETTABLEKS                       R32 R2 K184 ["filterMenuOpen"]
      825 JUMPIFNOT                        R32 ; [+23]
      826 GETUPVAL                         R32 5
      827 GETTABLEKS                       R32 R32 K26 ["createElement"]
      829 LOADK                            R33 K70 ["Frame"]
      830 DUPTABLE                         R34 K185 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      831 GETIMPORT                        R35 K79 [UDim2.new]
      833 LOADN                            R36 1
      834 LOADN                            R37 0
      835 LOADN                            R38 0
      836 LOADN                            R39 30
      837 CALL                             R35 4 1
      838 SETTABLEKS                       R35 R34 K42 ["Size"]
      840 NEWCLOSURE                       R35 P7
      841 CAPTURE                          UPVAL U5
      842 CAPTURE                          VAL R2
      843 CAPTURE                          VAL R5
      844 CAPTURE                          UPVAL U15
      845 CAPTURE                          UPVAL U11
      846 CAPTURE                          VAL R0
      847 CALL                             R35 0 1
      848 CALL                             R32 3 1
      849 SETTABLEKS                       R32 R31 K82 ["FilterMenu"]
      851 GETUPVAL                         R32 5
      852 GETTABLEKS                       R32 R32 K26 ["createElement"]
      854 GETUPVAL                         R33 17
      855 DUPTABLE                         R34 K194 [{["Size"], ["LayoutOrder"] = 3, ["InitialSizes"], ["UseScale"] = True, ["ClampSize"] = True, ["HideBars"] = False, ["MinSizes"], ["MaxSizes"], ["Layout"]}]
      856 GETIMPORT                        R35 K79 [UDim2.new]
      858 LOADN                            R36 1
      859 LOADN                            R37 0
      860 LOADN                            R38 1
      861 LOADN                            R39 0
      862 CALL                             R35 4 1
      863 SETTABLEKS                       R35 R34 K42 ["Size"]
      865 NEWTABLE                         R35 0 2
      867 GETIMPORT                        R36 K93 [UDim.new]
      869 LOADK                            R37 K195 [0.5]
      870 LOADN                            R38 0
      871 CALL                             R36 2 1
      872 GETIMPORT                        R37 K93 [UDim.new]
      874 LOADK                            R38 K195 [0.5]
      875 LOADN                            R39 0
      876 CALL                             R37 2 -1
      877 SETLIST                          R35 R36 -1 [1]
      879 SETTABLEKS                       R35 R34 K186 ["InitialSizes"]
      881 NEWTABLE                         R35 0 2
      883 GETIMPORT                        R36 K93 [UDim.new]
      885 LOADK                            R37 K196 [0.1]
      886 LOADN                            R38 0
      887 CALL                             R36 2 1
      888 GETIMPORT                        R37 K93 [UDim.new]
      890 LOADK                            R38 K196 [0.1]
      891 LOADN                            R39 0
      892 CALL                             R37 2 -1
      893 SETLIST                          R35 R36 -1 [1]
      895 SETTABLEKS                       R35 R34 K192 ["MinSizes"]
      897 NEWTABLE                         R35 0 2
      899 LOADNIL                          R36
      900 LOADNIL                          R37
      901 SETLIST                          R35 R36 2 [1]
      903 SETTABLEKS                       R35 R34 K193 ["MaxSizes"]
      905 GETIMPORT                        R35 K95 [Enum.FillDirection.Vertical]
      907 SETTABLEKS                       R35 R34 K80 ["Layout"]
      909 NEWTABLE                         R35 0 2
      911 GETUPVAL                         R36 5
      912 GETTABLEKS                       R36 R36 K26 ["createElement"]
      914 LOADK                            R37 K70 ["Frame"]
      915 DUPTABLE                         R38 K198 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      916 GETIMPORT                        R39 K79 [UDim2.new]
      918 LOADN                            R40 1
      919 LOADN                            R41 0
      920 LOADN                            R42 1
      921 LOADN                            R43 0
      922 CALL                             R39 4 1
      923 SETTABLEKS                       R39 R38 K42 ["Size"]
      925 GETIMPORT                        R39 K79 [UDim2.new]
      927 LOADN                            R40 0
      928 LOADN                            R41 0
      929 LOADN                            R42 0
      930 LOADN                            R43 0
      931 CALL                             R39 4 1
      932 SETTABLEKS                       R39 R38 K197 ["Position"]
      934 DUPTABLE                         R39 K200 [{"Treemap"}]
      935 GETUPVAL                         R40 5
      936 GETTABLEKS                       R40 R40 K26 ["createElement"]
      938 GETUPVAL                         R41 18
      939 DUPTABLE                         R42 K207 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization", "tooltipLabels"}]
      940 GETTABLEKS                       R43 R0 K208 ["treemapRef"]
      942 SETTABLEKS                       R43 R42 K201 ["ref"]
      944 GETIMPORT                        R43 K79 [UDim2.new]
      946 LOADN                            R44 1
      947 LOADN                            R45 -8
      948 LOADN                            R46 1
      949 LOADN                            R47 -8
      950 CALL                             R43 4 1
      951 SETTABLEKS                       R43 R42 K42 ["Size"]
      953 GETIMPORT                        R43 K79 [UDim2.new]
      955 LOADN                            R44 0
      956 LOADN                            R45 4
      957 LOADN                            R46 0
      958 LOADN                            R47 4
      959 CALL                             R43 4 1
      960 SETTABLEKS                       R43 R42 K197 ["Position"]
      962 GETUPVAL                         R43 19
      963 GETTABLEKS                       R43 R43 K209 ["mockData"]
      965 SETTABLEKS                       R43 R42 K202 ["NodeOutput"]
      967 GETTABLEKS                       R43 R0 K203 ["treemapContext"]
      969 SETTABLEKS                       R43 R42 K203 ["treemapContext"]
      971 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
      973 JUMPIFNOT                        R44 ; [+5]
      974 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      976 GETTABLEKS                       R43 R43 K204 ["valueFormat"]
      978 JUMPIF                           R43 ; [+1]
      979 LOADK                            R43 K210 ["memory"]
      980 SETTABLEKS                       R43 R42 K204 ["valueFormat"]
      982 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
      984 JUMPIFNOT                        R44 ; [+5]
      985 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      987 GETTABLEKS                       R43 R43 K205 ["colorRamp"]
      989 JUMPIF                           R43 ; [+3]
      990 GETUPVAL                         R43 20
      991 GETTABLEKS                       R43 R43 K211 ["Default"]
      993 SETTABLEKS                       R43 R42 K205 ["colorRamp"]
      995 GETTABLEKS                       R43 R0 K20 ["localization"]
      997 SETTABLEKS                       R43 R42 K20 ["localization"]
      999 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
     1001 JUMPIFNOT                        R44 ; [+12]
     1002 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
     1004 GETTABLEKS                       R44 R44 K5 ["module"]
     1006 JUMPIFNOT                        R44 ; [+7]
     1007 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
     1009 GETTABLEKS                       R43 R43 K5 ["module"]
     1011 GETTABLEKS                       R43 R43 K206 ["tooltipLabels"]
     1013 JUMPIF                           R43 ; [+1]
     1014 LOADNIL                          R43
     1015 SETTABLEKS                       R43 R42 K206 ["tooltipLabels"]
     1017 CALL                             R40 2 1
     1018 SETTABLEKS                       R40 R39 K199 ["Treemap"]
     1020 CALL                             R36 3 1
     1021 GETUPVAL                         R37 5
     1022 GETTABLEKS                       R37 R37 K26 ["createElement"]
     1024 LOADK                            R38 K70 ["Frame"]
     1025 DUPTABLE                         R39 K213 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"]}]
     1026 GETIMPORT                        R40 K79 [UDim2.new]
     1028 LOADN                            R41 1
     1029 LOADN                            R42 0
     1030 LOADN                            R43 1
     1031 LOADN                            R44 -32
     1032 CALL                             R40 4 1
     1033 SETTABLEKS                       R40 R39 K42 ["Size"]
     1035 GETUPVAL                         R40 12
     1036 SETTABLEKS                       R40 R39 K212 ["ClipsDescendants"]
     1038 DUPTABLE                         R40 K218 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper", "WarningBar"}]
     1039 GETUPVAL                         R41 5
     1040 GETTABLEKS                       R41 R41 K26 ["createElement"]
     1042 LOADK                            R42 K104 ["UIPadding"]
     1043 DUPTABLE                         R43 K219 [{"PaddingLeft"}]
     1044 GETIMPORT                        R44 K93 [UDim.new]
     1046 LOADN                            R45 0
     1047 LOADN                            R46 4
     1048 CALL                             R44 2 1
     1049 SETTABLEKS                       R44 R43 K110 ["PaddingLeft"]
     1051 CALL                             R41 2 1
     1052 SETTABLEKS                       R41 R40 K214 ["ListPadding"]
     1054 GETUPVAL                         R41 5
     1055 GETTABLEKS                       R41 R41 K26 ["createElement"]
     1057 LOADK                            R42 K85 ["UIListLayout"]
     1058 DUPTABLE                         R43 K220 [{"SortOrder", "FillDirection"}]
     1059 GETIMPORT                        R44 K101 [Enum.SortOrder.LayoutOrder]
     1061 SETTABLEKS                       R44 R43 K90 ["SortOrder"]
     1063 GETIMPORT                        R44 K95 [Enum.FillDirection.Vertical]
     1065 SETTABLEKS                       R44 R43 K87 ["FillDirection"]
     1067 CALL                             R41 2 1
     1068 SETTABLEKS                       R41 R40 K85 ["UIListLayout"]
     1070 GETUPVAL                         R41 5
     1071 GETTABLEKS                       R41 R41 K26 ["createElement"]
     1073 GETUPVAL                         R42 21
     1074 DUPTABLE                         R43 K224 [{["LayoutOrder"] = 1, ["query"], ["queryInfo"], ["selectedIdsHash"], ["localization"]}]
     1075 GETTABLEKS                       R45 R2 K4 ["selectedCategory"]
     1077 JUMPIFNOT                        R45 ; [+5]
     1078 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
     1080 GETTABLEKS                       R44 R44 K5 ["module"]
     1082 JUMP                             ; [+1]
     1083 LOADNIL                          R44
     1084 SETTABLEKS                       R44 R43 K221 ["query"]
     1086 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
     1088 SETTABLEKS                       R44 R43 K222 ["queryInfo"]
     1090 GETTABLEKS                       R44 R2 K223 ["selectedIdsHash"]
     1092 SETTABLEKS                       R44 R43 K223 ["selectedIdsHash"]
     1094 GETTABLEKS                       R44 R0 K20 ["localization"]
     1096 SETTABLEKS                       R44 R43 K20 ["localization"]
     1098 CALL                             R41 2 1
     1099 SETTABLEKS                       R41 R40 K215 ["Summary"]
     1101 GETUPVAL                         R41 5
     1102 GETTABLEKS                       R41 R41 K26 ["createElement"]
     1104 LOADK                            R42 K70 ["Frame"]
     1105 DUPTABLE                         R43 K225 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["ClipsDescendants"]}]
     1106 GETIMPORT                        R44 K79 [UDim2.new]
     1108 LOADN                            R45 1
     1109 LOADN                            R46 0
     1110 LOADN                            R47 1
     1111 LOADN                            R48 -58
     1112 CALL                             R44 4 1
     1113 SETTABLEKS                       R44 R43 K42 ["Size"]
     1115 GETUPVAL                         R44 12
     1116 SETTABLEKS                       R44 R43 K212 ["ClipsDescendants"]
     1118 DUPTABLE                         R44 K228 [{"UISizeConstraint", "List"}]
     1119 GETUPVAL                         R46 12
     1120 JUMPIFNOT                        R46 ; [+14]
     1121 GETUPVAL                         R45 5
     1122 GETTABLEKS                       R45 R45 K26 ["createElement"]
     1124 LOADK                            R46 K226 ["UISizeConstraint"]
     1125 DUPTABLE                         R47 K229 [{"MinSize"}]
     1126 GETIMPORT                        R48 K41 [Vector2.new]
     1128 LOADN                            R49 0
     1129 LOADN                            R50 100
     1130 CALL                             R48 2 1
     1131 SETTABLEKS                       R48 R47 K43 ["MinSize"]
     1133 CALL                             R45 2 1
     1134 JUMPIF                           R45 ; [+1]
     1135 LOADNIL                          R45
     1136 SETTABLEKS                       R45 R44 K226 ["UISizeConstraint"]
     1138 GETUPVAL                         R45 5
     1139 GETTABLEKS                       R45 R45 K26 ["createElement"]
     1141 GETUPVAL                         R46 22
     1142 DUPTABLE                         R47 K239 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
     1143 GETTABLEKS                       R48 R0 K240 ["virtualizedListRef"]
     1145 SETTABLEKS                       R48 R47 K201 ["ref"]
     1147 GETTABLEKS                       R48 R2 K230 ["windowHeight"]
     1149 SETTABLEKS                       R48 R47 K230 ["windowHeight"]
     1151 GETTABLEKS                       R49 R2 K4 ["selectedCategory"]
     1153 JUMPIFNOT                        R49 ; [+8]
     1154 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1156 GETTABLEKS                       R48 R48 K5 ["module"]
     1158 GETTABLEKS                       R48 R48 K241 ["getNodesObservable"]
     1160 CALL                             R48 0 1
     1161 JUMP                             ; [+1]
     1162 LOADNIL                          R48
     1163 SETTABLEKS                       R48 R47 K231 ["rootNodeObservable"]
     1165 GETTABLEKS                       R48 R0 K232 ["scrollHeightObservable"]
     1167 SETTABLEKS                       R48 R47 K232 ["scrollHeightObservable"]
     1169 GETTABLEKS                       R48 R0 K233 ["scrollRef"]
     1171 SETTABLEKS                       R48 R47 K233 ["scrollRef"]
     1173 GETTABLEKS                       R48 R0 K234 ["onAbsoluteSizeChange"]
     1175 SETTABLEKS                       R48 R47 K234 ["onAbsoluteSizeChange"]
     1177 GETTABLEKS                       R48 R0 K235 ["onCanvasPositionChange"]
     1179 SETTABLEKS                       R48 R47 K235 ["onCanvasPositionChange"]
     1181 GETTABLEKS                       R48 R1 K236 ["ZIndex"]
     1183 SETTABLEKS                       R48 R47 K236 ["ZIndex"]
     1185 GETTABLEKS                       R48 R0 K237 ["onNodeClicked"]
     1187 SETTABLEKS                       R48 R47 K237 ["onNodeClicked"]
     1189 GETTABLEKS                       R48 R0 K242 ["onListNodeRightClicked"]
     1191 SETTABLEKS                       R48 R47 K238 ["onNodeRightClicked"]
     1193 GETTABLEKS                       R49 R2 K4 ["selectedCategory"]
     1195 JUMPIFNOT                        R49 ; [+5]
     1196 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1198 GETTABLEKS                       R48 R48 K5 ["module"]
     1200 JUMP                             ; [+1]
     1201 LOADNIL                          R48
     1202 SETTABLEKS                       R48 R47 K221 ["query"]
     1204 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1206 SETTABLEKS                       R48 R47 K222 ["queryInfo"]
     1208 CALL                             R45 2 1
     1209 SETTABLEKS                       R45 R44 K227 ["List"]
     1211 CALL                             R41 3 1
     1212 SETTABLEKS                       R41 R40 K216 ["ListWrapper"]
     1214 GETUPVAL                         R41 5
     1215 GETTABLEKS                       R41 R41 K26 ["createElement"]
     1217 LOADK                            R42 K70 ["Frame"]
     1218 DUPTABLE                         R43 K243 [{["Size"], ["LayoutOrder"] = 3, ["BackgroundTransparency"] = 1}]
     1219 GETIMPORT                        R44 K79 [UDim2.new]
     1221 LOADN                            R45 1
     1222 LOADN                            R46 0
     1223 LOADN                            R47 0
     1224 LOADN                            R48 24
     1225 CALL                             R44 4 1
     1226 SETTABLEKS                       R44 R43 K42 ["Size"]
     1228 NEWCLOSURE                       R44 P8
     1229 CAPTURE                          UPVAL U12
     1230 CAPTURE                          VAL R5
     1231 CAPTURE                          VAL R0
     1232 CAPTURE                          VAL R2
     1233 CAPTURE                          UPVAL U5
     1234 CAPTURE                          UPVAL U23
     1235 CAPTURE                          UPVAL U11
     1236 CALL                             R44 0 1
     1237 CALL                             R41 3 1
     1238 SETTABLEKS                       R41 R40 K217 ["WarningBar"]
     1240 CALL                             R37 3 1
     1241 SETLIST                          R35 R36 2 [1]
     1243 CALL                             R32 3 1
     1244 SETTABLEKS                       R32 R31 K83 ["SplitPane"]
     1246 CALL                             R28 3 1
     1247 SETTABLEKS                       R28 R27 K73 ["ContentArea"]
     1249 CALL                             R24 3 1
     1250 SETTABLEKS                       R24 R23 K66 ["Wrapper"]
     1252 GETUPVAL                         R25 12
     1253 JUMPIFNOT                        R25 ; [+2]
     1254 LOADNIL                          R24
     1255 JUMP                             ; [+10]
     1256 GETUPVAL                         R24 5
     1257 GETTABLEKS                       R24 R24 K26 ["createElement"]
     1259 LOADK                            R25 K67 ["StyleLink"]
     1260 DUPTABLE                         R26 K245 [{"StyleSheet"}]
     1261 GETTABLEKS                       R27 R0 K23 ["design"]
     1263 SETTABLEKS                       R27 R26 K244 ["StyleSheet"]
     1265 CALL                             R24 2 1
     1266 SETTABLEKS                       R24 R23 K67 ["StyleLink"]
     1268 GETUPVAL                         R24 5
     1269 GETTABLEKS                       R24 R24 K26 ["createElement"]
     1271 GETUPVAL                         R25 24
     1272 CALL                             R24 1 1
     1273 SETTABLEKS                       R24 R23 K68 ["WidgetRegister"]
     1275 CALL                             R20 3 1
     1276 SETTABLEKS                       R20 R19 K62 ["ContextStack"]
     1278 CALL                             R16 3 1
     1279 SETTABLEKS                       R16 R15 K57 ["Foundations"]
     1281 CALL                             R12 3 1
     1282 SETTABLEKS                       R12 R11 K24 ["MainWidget"]
     1284 CALL                             R9 2 -1
     1285 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R5 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R6 R4 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["StudioUri"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K15 ["Bin"]
       47 GETTABLEKS                       R8 R8 K16 ["Common"]
       49 GETTABLEKS                       R8 R8 K17 ["defineLuaFlags"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K18 ["getFFlagSceneAnalysisRenderAttribution"]
       54 CALL                             R8 0 1
       55 GETTABLEKS                       R9 R7 K19 ["getFFlagSceneAnalysisBugfixesMay2026"]
       57 CALL                             R9 0 1
       58 GETTABLEKS                       R10 R7 K20 ["getFFlagSceneAnalysisMdiDataModelPicker"]
       60 CALL                             R10 0 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R0 K6 ["Packages"]
       65 GETTABLEKS                       R12 R12 K21 ["Foundation"]
       67 CALL                             R11 1 1
       68 GETTABLEKS                       R12 R11 K22 ["Dropdown"]
       70 GETTABLEKS                       R13 R11 K23 ["Toggle"]
       72 GETTABLEKS                       R14 R11 K24 ["TextInput"]
       74 GETTABLEKS                       R15 R11 K25 ["Icon"]
       76 GETTABLEKS                       R16 R11 K26 ["IconButton"]
       78 GETTABLEKS                       R17 R11 K27 ["Enums"]
       80 GETTABLEKS                       R17 R17 K28 ["InputSize"]
       82 GETTABLEKS                       R18 R3 K29 ["UI"]
       84 GETTABLEKS                       R18 R18 K30 ["DockWidget"]
       86 GETTABLEKS                       R19 R3 K31 ["ContextServices"]
       88 GETTABLEKS                       R20 R19 K32 ["Plugin"]
       90 GETTABLEKS                       R21 R19 K33 ["Mouse"]
       92 GETTABLEKS                       R22 R19 K34 ["Design"]
       94 GETTABLEKS                       R23 R3 K35 ["Style"]
       96 GETTABLEKS                       R23 R23 K36 ["Themes"]
       98 GETTABLEKS                       R23 R23 K37 ["StudioTheme"]
      100 GETTABLEKS                       R24 R3 K38 ["Styling"]
      102 GETTABLEKS                       R24 R24 K39 ["registerPluginStyles"]
      104 GETTABLEKS                       R25 R0 K40 ["Src"]
      106 GETTABLEKS                       R25 R25 K41 ["Resources"]
      108 GETTABLEKS                       R25 R25 K42 ["Localization"]
      110 GETTABLEKS                       R25 R25 K43 ["SourceStrings"]
      112 GETTABLEKS                       R26 R0 K40 ["Src"]
      114 GETTABLEKS                       R26 R26 K41 ["Resources"]
      116 GETTABLEKS                       R26 R26 K42 ["Localization"]
      118 GETTABLEKS                       R26 R26 K44 ["LocalizedStrings"]
      120 GETTABLEKS                       R27 R0 K40 ["Src"]
      122 GETTABLEKS                       R27 R27 K11 ["Components"]
      124 GETIMPORT                        R28 K5 [require]
      126 GETTABLEKS                       R29 R27 K45 ["Treemap"]
      128 CALL                             R28 1 1
      129 GETIMPORT                        R29 K5 [require]
      131 GETTABLEKS                       R30 R27 K46 ["ControlledSplitPane"]
      133 CALL                             R29 1 1
      134 GETIMPORT                        R30 K5 [require]
      136 GETTABLEKS                       R31 R27 K47 ["VirtualizedList"]
      138 CALL                             R30 1 1
      139 GETIMPORT                        R31 K5 [require]
      141 GETTABLEKS                       R32 R27 K48 ["SummaryPane"]
      143 CALL                             R31 1 1
      144 GETIMPORT                        R32 K5 [require]
      146 GETTABLEKS                       R33 R0 K40 ["Src"]
      148 GETTABLEKS                       R33 R33 K13 ["Util"]
      150 GETTABLEKS                       R33 R33 K49 ["Observable"]
      152 CALL                             R32 1 1
      153 GETIMPORT                        R33 K5 [require]
      155 GETTABLEKS                       R34 R27 K50 ["WidgetRegister"]
      157 CALL                             R33 1 1
      158 GETIMPORT                        R34 K5 [require]
      160 GETTABLEKS                       R35 R0 K40 ["Src"]
      162 GETTABLEKS                       R35 R35 K51 ["Providers"]
      164 GETTABLEKS                       R35 R35 K52 ["MouseContextProvider"]
      166 CALL                             R34 1 1
      167 GETIMPORT                        R35 K5 [require]
      169 GETTABLEKS                       R36 R0 K40 ["Src"]
      171 GETTABLEKS                       R36 R36 K41 ["Resources"]
      173 GETTABLEKS                       R36 R36 K53 ["ColorRamps"]
      175 CALL                             R35 1 1
      176 GETIMPORT                        R36 K5 [require]
      178 GETTABLEKS                       R37 R0 K6 ["Packages"]
      180 GETTABLEKS                       R37 R37 K54 ["Dash"]
      182 CALL                             R36 1 1
      183 GETIMPORT                        R37 K5 [require]
      185 GETTABLEKS                       R38 R0 K40 ["Src"]
      187 GETTABLEKS                       R38 R38 K11 ["Components"]
      189 GETTABLEKS                       R38 R38 K45 ["Treemap"]
      191 GETTABLEKS                       R38 R38 K55 ["TreemapMockData"]
      193 CALL                             R37 1 1
      194 GETIMPORT                        R38 K5 [require]
      196 GETTABLEKS                       R39 R0 K40 ["Src"]
      198 GETTABLEKS                       R39 R39 K11 ["Components"]
      200 GETTABLEKS                       R39 R39 K45 ["Treemap"]
      202 GETTABLEKS                       R39 R39 K56 ["TreemapTypes"]
      204 CALL                             R38 1 1
      205 DUPCLOSURE                       R39 K57 [PROTO_1]
      206 GETTABLEKS                       R40 R1 K58 ["PureComponent"]
      208 LOADK                            R42 K59 ["MainPlugin"]
      209 NAMECALL                         R40 R40 K60 ["extend"]
      211 CALL                             R40 2 1
      212 GETTABLEKS                       R41 R6 K61 ["fromAction"]
      214 LOADK                            R42 K2 ["SceneAnalysis"]
      215 LOADK                            R43 K23 ["Toggle"]
      216 CALL                             R41 2 1
      217 GETIMPORT                        R42 K5 [require]
      219 GETTABLEKS                       R43 R0 K40 ["Src"]
      221 GETTABLEKS                       R43 R43 K13 ["Util"]
      223 GETTABLEKS                       R43 R43 K62 ["AssetDMBridge"]
      225 CALL                             R42 1 1
      226 GETIMPORT                        R43 K5 [require]
      228 GETTABLEKS                       R44 R0 K40 ["Src"]
      230 GETTABLEKS                       R44 R44 K13 ["Util"]
      232 GETTABLEKS                       R44 R44 K63 ["SelectionManager"]
      234 CALL                             R43 1 1
      235 GETIMPORT                        R44 K5 [require]
      237 GETTABLEKS                       R45 R0 K40 ["Src"]
      239 GETTABLEKS                       R45 R45 K13 ["Util"]
      241 GETTABLEKS                       R45 R45 K64 ["dataModelTypeLabel"]
      243 CALL                             R44 1 1
      244 GETIMPORT                        R45 K5 [require]
      246 GETTABLEKS                       R46 R0 K40 ["Src"]
      248 GETTABLEKS                       R46 R46 K65 ["Queries"]
      250 GETTABLEKS                       R46 R46 K66 ["UnparentedInstancesView"]
      252 GETTABLEKS                       R46 R46 K67 ["FetchUnparentedInstances"]
      254 CALL                             R45 1 1
      255 GETIMPORT                        R46 K5 [require]
      257 GETTABLEKS                       R47 R0 K40 ["Src"]
      259 GETTABLEKS                       R47 R47 K65 ["Queries"]
      261 GETTABLEKS                       R47 R47 K68 ["ScriptMemoryView"]
      263 GETTABLEKS                       R47 R47 K69 ["FetchAllScriptMemory"]
      265 CALL                             R46 1 1
      266 GETIMPORT                        R47 K5 [require]
      268 GETTABLEKS                       R48 R0 K40 ["Src"]
      270 GETTABLEKS                       R48 R48 K65 ["Queries"]
      272 GETTABLEKS                       R48 R48 K70 ["SceneTrianglesView"]
      274 GETTABLEKS                       R48 R48 K71 ["FetchSceneTriangles"]
      276 CALL                             R47 1 1
      277 GETIMPORT                        R48 K5 [require]
      279 GETTABLEKS                       R49 R0 K40 ["Src"]
      281 GETTABLEKS                       R49 R49 K65 ["Queries"]
      283 GETTABLEKS                       R49 R49 K72 ["SceneGeometryView"]
      285 GETTABLEKS                       R49 R49 K73 ["FetchSceneGeometry"]
      287 CALL                             R48 1 1
      288 GETIMPORT                        R49 K5 [require]
      290 GETTABLEKS                       R50 R0 K40 ["Src"]
      292 GETTABLEKS                       R50 R50 K65 ["Queries"]
      294 GETTABLEKS                       R50 R50 K74 ["InstanceCompositionView"]
      296 GETTABLEKS                       R50 R50 K75 ["FetchInstanceComposition"]
      298 CALL                             R49 1 1
      299 GETIMPORT                        R50 K5 [require]
      301 GETTABLEKS                       R51 R0 K40 ["Src"]
      303 GETTABLEKS                       R51 R51 K65 ["Queries"]
      305 GETTABLEKS                       R51 R51 K76 ["AnimationMemoryView"]
      307 GETTABLEKS                       R51 R51 K77 ["FetchAnimationMemory"]
      309 CALL                             R50 1 1
      310 GETIMPORT                        R51 K5 [require]
      312 GETTABLEKS                       R52 R0 K40 ["Src"]
      314 GETTABLEKS                       R52 R52 K65 ["Queries"]
      316 GETTABLEKS                       R52 R52 K78 ["AudioMemoryView"]
      318 GETTABLEKS                       R52 R52 K79 ["FetchAudioMemory"]
      320 CALL                             R51 1 1
      321 GETIMPORT                        R52 K5 [require]
      323 GETTABLEKS                       R53 R0 K40 ["Src"]
      325 GETTABLEKS                       R53 R53 K11 ["Components"]
      327 GETTABLEKS                       R53 R53 K45 ["Treemap"]
      329 GETTABLEKS                       R53 R53 K80 ["TreemapContext"]
      331 CALL                             R52 1 1
      332 DUPCLOSURE                       R53 K81 [PROTO_23]
      333 CAPTURE                          VAL R41
      334 CAPTURE                          VAL R9
      335 CAPTURE                          VAL R19
      336 CAPTURE                          VAL R25
      337 CAPTURE                          VAL R26
      338 CAPTURE                          VAL R1
      339 CAPTURE                          VAL R32
      340 CAPTURE                          VAL R43
      341 CAPTURE                          VAL R36
      342 CAPTURE                          VAL R42
      343 CAPTURE                          VAL R3
      344 CAPTURE                          VAL R52
      345 CAPTURE                          VAL R23
      346 CAPTURE                          VAL R4
      347 CAPTURE                          VAL R24
      348 CAPTURE                          VAL R45
      349 CAPTURE                          VAL R35
      350 CAPTURE                          VAL R46
      351 CAPTURE                          VAL R47
      352 CAPTURE                          VAL R49
      353 CAPTURE                          VAL R51
      354 CAPTURE                          VAL R50
      355 CAPTURE                          VAL R8
      356 CAPTURE                          VAL R48
      357 CAPTURE                          VAL R10
      358 SETTABLEKS                       R53 R40 K82 ["init"]
      360 DUPCLOSURE                       R53 K83 [PROTO_25]
      361 CAPTURE                          VAL R44
      362 SETTABLEKS                       R53 R40 K84 ["resolveCurrentDataModelName"]
      364 DUPCLOSURE                       R53 K85 [PROTO_26]
      365 CAPTURE                          VAL R44
      366 SETTABLEKS                       R53 R40 K86 ["dataModelLabel"]
      368 DUPCLOSURE                       R53 K87 [PROTO_27]
      369 SETTABLEKS                       R53 R40 K88 ["buildDataModelItems"]
      371 DUPCLOSURE                       R53 K89 [PROTO_28]
      372 CAPTURE                          VAL R42
      373 SETTABLEKS                       R53 R40 K90 ["switchTargetDataModel"]
      375 DUPCLOSURE                       R53 K91 [PROTO_32]
      376 CAPTURE                          VAL R42
      377 SETTABLEKS                       R53 R40 K92 ["setupDataModelPicker"]
      379 DUPCLOSURE                       R53 K93 [PROTO_33]
      380 SETTABLEKS                       R53 R40 K94 ["recoverIfTargetGone"]
      382 DUPCLOSURE                       R53 K95 [PROTO_36]
      383 SETTABLEKS                       R53 R40 K96 ["rebindFocusFollowing"]
      385 DUPCLOSURE                       R53 K97 [PROTO_38]
      386 SETTABLEKS                       R53 R40 K98 ["rebindFocusedSession"]
      388 DUPCLOSURE                       R53 K99 [PROTO_39]
      389 SETTABLEKS                       R53 R40 K100 ["unhookHeartbeat"]
      391 DUPCLOSURE                       R53 K101 [PROTO_45]
      392 CAPTURE                          VAL R9
      393 SETTABLEKS                       R53 R40 K102 ["hookHeartbeat"]
      395 DUPCLOSURE                       R53 K103 [PROTO_46]
      396 CAPTURE                          VAL R9
      397 SETTABLEKS                       R53 R40 K104 ["willUnmount"]
      399 DUPCLOSURE                       R53 K105 [PROTO_58]
      400 CAPTURE                          VAL R10
      401 CAPTURE                          VAL R19
      402 CAPTURE                          VAL R20
      403 CAPTURE                          VAL R21
      404 CAPTURE                          VAL R22
      405 CAPTURE                          VAL R1
      406 CAPTURE                          VAL R18
      407 CAPTURE                          VAL R5
      408 CAPTURE                          VAL R2
      409 CAPTURE                          VAL R34
      410 CAPTURE                          VAL R12
      411 CAPTURE                          VAL R11
      412 CAPTURE                          VAL R9
      413 CAPTURE                          VAL R14
      414 CAPTURE                          VAL R16
      415 CAPTURE                          VAL R13
      416 CAPTURE                          VAL R17
      417 CAPTURE                          VAL R29
      418 CAPTURE                          VAL R28
      419 CAPTURE                          VAL R37
      420 CAPTURE                          VAL R35
      421 CAPTURE                          VAL R31
      422 CAPTURE                          VAL R30
      423 CAPTURE                          VAL R15
      424 CAPTURE                          VAL R33
      425 SETTABLEKS                       R53 R40 K106 ["render"]
      427 RETURN                           R40 1

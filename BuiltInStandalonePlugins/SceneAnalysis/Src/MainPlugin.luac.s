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
        6 DUPTABLE                         R2 K17 [{["selectedIdsHash"] = , ["enabled"] = False, ["windowHeight"] = 0, ["windowWidth"] = 0, ["paused"] = False, ["searchTerm"] = "", ["filterMenuOpen"] = False, ["filterState"] = , ["warningIndex"] = 1, ["selectedCategory"] = }]
        7 SETTABLEKS                       R2 R0 K18 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K19 ["onHeaderSizeChange"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R0 K20 ["toggleEnabled"]
       18 GETTABLEKS                       R2 R1 K21 ["Plugin"]
       20 LOADK                            R4 K22 ["Actions"]
       21 NAMECALL                         R2 R2 K23 ["GetPluginComponent"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K26 [task.spawn]
       26 NEWCLOSURE                       R4 P2
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R1
       31 CALL                             R3 1 0
       32 NEWCLOSURE                       R3 P3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R3 R0 K27 ["togglePause"]
       36 NEWCLOSURE                       R3 P4
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U0
       41 SETTABLEKS                       R3 R0 K28 ["onClose"]
       43 NEWCLOSURE                       R3 P5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U0
       47 SETTABLEKS                       R3 R0 K29 ["onRestore"]
       49 NEWCLOSURE                       R3 P6
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          UPVAL U0
       53 SETTABLEKS                       R3 R0 K30 ["onWidgetEnabledChanged"]
       55 NEWCLOSURE                       R3 P7
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R3 R0 K31 ["onDockWidgetCreated"]
       59 GETUPVAL                         R3 2
       60 GETTABLEKS                       R3 R3 K32 ["Localization"]
       62 GETTABLEKS                       R3 R3 K33 ["new"]
       64 DUPTABLE                         R4 K38 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "SceneAnalysis"}]
       65 GETUPVAL                         R5 3
       66 SETTABLEKS                       R5 R4 K34 ["stringResourceTable"]
       68 GETUPVAL                         R5 4
       69 SETTABLEKS                       R5 R4 K35 ["translationResourceTable"]
       71 CALL                             R3 1 1
       72 SETTABLEKS                       R3 R0 K39 ["localization"]
       74 GETUPVAL                         R3 2
       75 GETTABLEKS                       R3 R3 K40 ["Analytics"]
       77 GETTABLEKS                       R3 R3 K33 ["new"]
       79 DUPCLOSURE                       R4 K41 [PROTO_15]
       80 NEWTABLE                         R5 0 0
       82 CALL                             R3 2 1
       83 SETTABLEKS                       R3 R0 K42 ["analytics"]
       85 GETUPVAL                         R3 5
       86 GETTABLEKS                       R3 R3 K43 ["createRef"]
       88 CALL                             R3 0 1
       89 SETTABLEKS                       R3 R0 K44 ["treemapRef"]
       91 LOADN                            R3 0
       92 SETTABLEKS                       R3 R0 K45 ["timeOfNextAutomaticUpdate"]
       94 LOADN                            R3 1
       95 SETTABLEKS                       R3 R0 K46 ["delayBetweenAutomaticUpdates"]
       97 MOVE                             R5 R1
       98 NAMECALL                         R3 R0 K47 ["hookHeartbeat"]
      100 CALL                             R3 2 0
      101 GETUPVAL                         R3 6
      102 GETTABLEKS                       R3 R3 K48 ["create"]
      104 LOADN                            R4 0
      105 CALL                             R3 1 2
      106 SETTABLEKS                       R3 R0 K49 ["scrollHeightObservable"]
      108 SETTABLEKS                       R4 R0 K50 ["setScrollHeight"]
      110 GETUPVAL                         R3 5
      111 GETTABLEKS                       R3 R3 K43 ["createRef"]
      113 CALL                             R3 0 1
      114 SETTABLEKS                       R3 R0 K51 ["scrollRef"]
      116 GETUPVAL                         R3 5
      117 GETTABLEKS                       R3 R3 K43 ["createRef"]
      119 CALL                             R3 0 1
      120 SETTABLEKS                       R3 R0 K52 ["virtualizedListRef"]
      122 GETUPVAL                         R3 7
      123 GETTABLEKS                       R3 R3 K33 ["new"]
      125 DUPTABLE                         R4 K55 [{"treemapRef", "listRef", "plugin"}]
      126 GETTABLEKS                       R5 R0 K44 ["treemapRef"]
      128 SETTABLEKS                       R5 R4 K44 ["treemapRef"]
      130 GETTABLEKS                       R5 R0 K52 ["virtualizedListRef"]
      132 SETTABLEKS                       R5 R4 K53 ["listRef"]
      134 GETTABLEKS                       R5 R1 K21 ["Plugin"]
      136 SETTABLEKS                       R5 R4 K54 ["plugin"]
      138 CALL                             R3 1 1
      139 SETTABLEKS                       R3 R0 K56 ["selectionManager"]
      141 GETTABLEKS                       R3 R0 K56 ["selectionManager"]
      143 LOADB                            R5 1
      144 NAMECALL                         R3 R3 K57 ["setDeselectOnReselect"]
      146 CALL                             R3 2 0
      147 GETTABLEKS                       R3 R0 K56 ["selectionManager"]
      149 NAMECALL                         R3 R3 K58 ["getSelectionObservable"]
      151 CALL                             R3 1 1
      152 GETTABLEKS                       R3 R3 K59 ["changedSignal"]
      154 NEWCLOSURE                       R5 P9
      155 CAPTURE                          VAL R0
      156 CAPTURE                          UPVAL U8
      157 NAMECALL                         R3 R3 K60 ["Connect"]
      159 CALL                             R3 2 0
      160 NEWCLOSURE                       R3 P10
      161 CAPTURE                          VAL R0
      162 CAPTURE                          UPVAL U1
      163 CAPTURE                          UPVAL U9
      164 CAPTURE                          UPVAL U10
      165 SETTABLEKS                       R3 R0 K61 ["onNodeRightClicked"]
      167 GETUPVAL                         R3 11
      168 GETTABLEKS                       R3 R3 K33 ["new"]
      170 GETTABLEKS                       R4 R0 K56 ["selectionManager"]
      172 GETTABLEKS                       R5 R0 K61 ["onNodeRightClicked"]
      174 CALL                             R3 2 1
      175 SETTABLEKS                       R3 R0 K62 ["treemapContext"]
      177 NEWCLOSURE                       R3 P11
      178 CAPTURE                          VAL R0
      179 SETTABLEKS                       R3 R0 K63 ["onNodeClicked"]
      181 NEWCLOSURE                       R3 P12
      182 CAPTURE                          VAL R0
      183 SETTABLEKS                       R3 R0 K64 ["onListNodeRightClicked"]
      185 NEWCLOSURE                       R3 P13
      186 CAPTURE                          VAL R0
      187 SETTABLEKS                       R3 R0 K65 ["onAbsoluteSizeChange"]
      189 NEWCLOSURE                       R3 P14
      190 CAPTURE                          VAL R0
      191 SETTABLEKS                       R3 R0 K66 ["onCanvasPositionChange"]
      193 GETUPVAL                         R3 12
      194 GETTABLEKS                       R3 R3 K33 ["new"]
      196 CALL                             R3 0 1
      197 SETTABLEKS                       R3 R0 K67 ["DEPRECATED_stylizer"]
      199 GETUPVAL                         R3 13
      200 GETTABLEKS                       R3 R3 K68 ["Util"]
      202 GETTABLEKS                       R3 R3 K69 ["createFoundationDesignBinding"]
      204 CALL                             R3 0 2
      205 SETTABLEKS                       R4 R0 K70 ["onFoundationStyleSheetChange"]
      207 GETUPVAL                         R5 14
      208 GETTABLEKS                       R6 R1 K21 ["Plugin"]
      210 LOADNIL                          R7
      211 LOADNIL                          R8
      212 NEWTABLE                         R9 0 1
      214 MOVE                             R10 R3
      215 SETLIST                          R9 R10 1 [1]
      217 CALL                             R5 4 1
      218 SETTABLEKS                       R5 R0 K71 ["design"]
      220 NEWTABLE                         R5 0 6
      222 DUPTABLE                         R6 K79 [{["id"] = "Unparented", ["text"], ["module"], ["valueFormat"] = "instanceCount", ["colorRamp"]}]
      223 GETTABLEKS                       R7 R0 K39 ["localization"]
      225 LOADK                            R9 K80 ["Categories"]
      226 LOADK                            R10 K81 ["UnparentedInstances"]
      227 NAMECALL                         R7 R7 K82 ["getText"]
      229 CALL                             R7 3 1
      230 SETTABLEKS                       R7 R6 K74 ["text"]
      232 GETUPVAL                         R7 15
      233 SETTABLEKS                       R7 R6 K75 ["module"]
      235 GETUPVAL                         R7 16
      236 GETTABLEKS                       R7 R7 K83 ["Default"]
      238 SETTABLEKS                       R7 R6 K78 ["colorRamp"]
      240 DUPTABLE                         R7 K86 [{["id"] = "Script", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      241 GETTABLEKS                       R8 R0 K39 ["localization"]
      243 LOADK                            R10 K80 ["Categories"]
      244 LOADK                            R11 K87 ["ScriptMemoryUsage"]
      245 NAMECALL                         R8 R8 K82 ["getText"]
      247 CALL                             R8 3 1
      248 SETTABLEKS                       R8 R7 K74 ["text"]
      250 GETUPVAL                         R8 17
      251 SETTABLEKS                       R8 R7 K75 ["module"]
      253 GETUPVAL                         R8 16
      254 GETTABLEKS                       R8 R8 K88 ["IceBlue"]
      256 SETTABLEKS                       R8 R7 K78 ["colorRamp"]
      258 DUPTABLE                         R8 K91 [{["id"] = "Triangles", ["text"], ["module"], ["valueFormat"] = "count", ["colorRamp"]}]
      259 GETTABLEKS                       R9 R0 K39 ["localization"]
      261 LOADK                            R11 K80 ["Categories"]
      262 LOADK                            R12 K92 ["SceneTriangles"]
      263 NAMECALL                         R9 R9 K82 ["getText"]
      265 CALL                             R9 3 1
      266 SETTABLEKS                       R9 R8 K74 ["text"]
      268 GETUPVAL                         R9 18
      269 SETTABLEKS                       R9 R8 K75 ["module"]
      271 GETUPVAL                         R9 16
      272 GETTABLEKS                       R9 R9 K93 ["Forest"]
      274 SETTABLEKS                       R9 R8 K78 ["colorRamp"]
      276 DUPTABLE                         R9 K95 [{["id"] = "InstanceComposition", ["text"], ["module"], ["valueFormat"] = "instanceCount", ["colorRamp"]}]
      277 GETTABLEKS                       R10 R0 K39 ["localization"]
      279 LOADK                            R12 K80 ["Categories"]
      280 LOADK                            R13 K94 ["InstanceComposition"]
      281 NAMECALL                         R10 R10 K82 ["getText"]
      283 CALL                             R10 3 1
      284 SETTABLEKS                       R10 R9 K74 ["text"]
      286 GETUPVAL                         R10 19
      287 SETTABLEKS                       R10 R9 K75 ["module"]
      289 GETUPVAL                         R10 16
      290 GETTABLEKS                       R10 R10 K83 ["Default"]
      292 SETTABLEKS                       R10 R9 K78 ["colorRamp"]
      294 DUPTABLE                         R10 K97 [{["id"] = "Audio", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      295 GETTABLEKS                       R11 R0 K39 ["localization"]
      297 LOADK                            R13 K80 ["Categories"]
      298 LOADK                            R14 K98 ["AudioMemory"]
      299 NAMECALL                         R11 R11 K82 ["getText"]
      301 CALL                             R11 3 1
      302 SETTABLEKS                       R11 R10 K74 ["text"]
      304 GETUPVAL                         R11 20
      305 SETTABLEKS                       R11 R10 K75 ["module"]
      307 GETUPVAL                         R11 16
      308 GETTABLEKS                       R11 R11 K88 ["IceBlue"]
      310 SETTABLEKS                       R11 R10 K78 ["colorRamp"]
      312 DUPTABLE                         R11 K100 [{["id"] = "Animation", ["text"], ["module"], ["valueFormat"] = "memory", ["colorRamp"]}]
      313 GETTABLEKS                       R12 R0 K39 ["localization"]
      315 LOADK                            R14 K80 ["Categories"]
      316 LOADK                            R15 K101 ["AnimationMemory"]
      317 NAMECALL                         R12 R12 K82 ["getText"]
      319 CALL                             R12 3 1
      320 SETTABLEKS                       R12 R11 K74 ["text"]
      322 GETUPVAL                         R12 21
      323 SETTABLEKS                       R12 R11 K75 ["module"]
      325 GETUPVAL                         R12 16
      326 GETTABLEKS                       R12 R12 K88 ["IceBlue"]
      328 SETTABLEKS                       R12 R11 K78 ["colorRamp"]
      330 SETLIST                          R5 R6 6 [1]
      332 SETTABLEKS                       R5 R0 K102 ["categories"]
      334 GETUPVAL                         R5 22
      335 JUMPIFNOT                        R5 ; [+25]
      336 GETTABLEKS                       R6 R0 K102 ["categories"]
      338 LOADN                            R7 4
      339 DUPTABLE                         R8 K104 [{["id"] = "SceneGeometry", ["text"], ["module"], ["valueFormat"] = "count", ["colorRamp"]}]
      340 GETTABLEKS                       R9 R0 K39 ["localization"]
      342 LOADK                            R11 K80 ["Categories"]
      343 LOADK                            R12 K103 ["SceneGeometry"]
      344 NAMECALL                         R9 R9 K82 ["getText"]
      346 CALL                             R9 3 1
      347 SETTABLEKS                       R9 R8 K74 ["text"]
      349 GETUPVAL                         R9 23
      350 SETTABLEKS                       R9 R8 K75 ["module"]
      352 GETUPVAL                         R9 16
      353 GETTABLEKS                       R9 R9 K83 ["Default"]
      355 SETTABLEKS                       R9 R8 K78 ["colorRamp"]
      357 FASTCALL                         TABLE_INSERT ; [+2]
      358 GETIMPORT                        R5 K107 [table.insert]
      360 CALL                             R5 3 0
      361 GETTABLEKS                       R6 R0 K102 ["categories"]
      363 GETTABLEN                        R5 R6 4
      364 GETTABLEKS                       R6 R0 K102 ["categories"]
      366 LOADNIL                          R7
      367 LOADNIL                          R8
      368 FORGPREP                         R6
      369 GETTABLEKS                       R11 R10 K72 ["id"]
      371 JUMPIFNOTEQKS                    R11 K94 ["InstanceComposition"] ; [+3]
      373 MOVE                             R5 R10
      374 JUMP                             ; [+2]
      375 FORGLOOP                         R6 2 ; [-7]
      377 DUPTABLE                         R8 K108 [{"selectedCategory"}]
      378 SETTABLEKS                       R5 R8 K16 ["selectedCategory"]
      380 NAMECALL                         R6 R0 K109 ["setState"]
      382 CALL                             R6 2 0
      383 GETTABLEKS                       R6 R0 K56 ["selectionManager"]
      385 GETTABLEKS                       R8 R5 K75 ["module"]
      387 NAMECALL                         R6 R6 K110 ["setQuery"]
      389 CALL                             R6 2 0
      390 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R1 K1 [{"warningIndex"}]
        1 GETTABLEKS                       R4 R0 K0 ["warningIndex"]
        3 ORK                              R3 R4 K2 [1]
        4 ADDK                             R2 R3 K2 [1]
        5 SETTABLEKS                       R2 R1 K0 ["warningIndex"]
        7 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_28:
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

PROTO_29:
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
       50 DUPCLOSURE                       R3 K9 [PROTO_25]
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

PROTO_30:
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

PROTO_31:
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
       21 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["timeOfNextAutomaticUpdate"]
       11 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["forceUpdateOnce"]
        4 GETUPVAL                         R0 0
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["timeOfNextAutomaticUpdate"]
        8 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_36:
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

PROTO_37:
        0 DUPTABLE                         R1 K1 [{"filterMenuOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["filterMenuOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["filterMenuOpen"]
        6 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_37]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K8 ["provide"]
       26 NEWTABLE                         R9 0 6
       28 GETUPVAL                         R10 1
       29 GETTABLEKS                       R10 R10 K9 ["new"]
       31 MOVE                             R11 R3
       32 CALL                             R10 1 1
       33 GETUPVAL                         R11 2
       34 GETTABLEKS                       R11 R11 K9 ["new"]
       36 NAMECALL                         R12 R3 K10 ["getMouse"]
       38 CALL                             R12 1 -1
       39 CALL                             R11 -1 1
       40 GETTABLEKS                       R12 R0 K11 ["localization"]
       42 GETTABLEKS                       R13 R0 K12 ["analytics"]
       44 GETTABLEKS                       R14 R0 K13 ["DEPRECATED_stylizer"]
       46 GETUPVAL                         R15 3
       47 GETTABLEKS                       R15 R15 K9 ["new"]
       49 GETTABLEKS                       R16 R0 K14 ["design"]
       51 CALL                             R15 1 -1
       52 SETLIST                          R9 R10 -1 [1]
       54 DUPTABLE                         R10 K16 [{"MainWidget"}]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R11 R11 K17 ["createElement"]
       58 GETUPVAL                         R12 5
       59 NEWTABLE                         R13 16 0
       61 LOADK                            R14 K18 ["SceneAnalysis"]
       62 SETTABLEKS                       R14 R13 K19 ["Id"]
       64 SETTABLEKS                       R4 R13 K20 ["Enabled"]
       66 GETTABLEKS                       R14 R0 K11 ["localization"]
       68 LOADK                            R16 K2 ["Plugin"]
       69 LOADK                            R17 K21 ["Name"]
       70 NAMECALL                         R14 R14 K22 ["getText"]
       72 CALL                             R14 3 1
       73 SETTABLEKS                       R14 R13 K23 ["Title"]
       75 GETIMPORT                        R14 K27 [Enum.ZIndexBehavior.Sibling]
       77 SETTABLEKS                       R14 R13 K25 ["ZIndexBehavior"]
       79 GETIMPORT                        R14 K30 [Enum.InitialDockState.Bottom]
       81 SETTABLEKS                       R14 R13 K28 ["InitialDockState"]
       83 GETIMPORT                        R14 K32 [Vector2.new]
       85 LOADN                            R15 640
       86 LOADN                            R16 480
       87 CALL                             R14 2 1
       88 SETTABLEKS                       R14 R13 K33 ["Size"]
       90 GETIMPORT                        R14 K32 [Vector2.new]
       92 LOADN                            R15 250
       93 LOADN                            R16 200
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K34 ["MinSize"]
       97 GETTABLEKS                       R14 R0 K35 ["onClose"]
       99 SETTABLEKS                       R14 R13 K36 ["OnClose"]
      101 LOADB                            R14 1
      102 SETTABLEKS                       R14 R13 K37 ["ShouldRestore"]
      104 GETTABLEKS                       R14 R0 K38 ["onRestore"]
      106 SETTABLEKS                       R14 R13 K39 ["OnWidgetRestored"]
      108 GETTABLEKS                       R14 R1 K40 ["PluginLoaderContext"]
      110 GETTABLEKS                       R14 R14 K41 ["mainDockWidget"]
      112 SETTABLEKS                       R14 R13 K42 ["Widget"]
      114 GETTABLEKS                       R14 R0 K43 ["onDockWidgetCreated"]
      116 SETTABLEKS                       R14 R13 K44 ["OnWidgetCreated"]
      118 GETTABLEKS                       R14 R0 K14 ["design"]
      120 SETTABLEKS                       R14 R13 K45 ["PluginDesign"]
      122 GETUPVAL                         R14 4
      123 GETTABLEKS                       R14 R14 K46 ["Change"]
      125 GETTABLEKS                       R14 R14 K20 ["Enabled"]
      127 GETTABLEKS                       R15 R0 K47 ["onWidgetEnabledChanged"]
      129 SETTABLE                         R15 R13 R14
      130 DUPTABLE                         R14 K49 [{"Foundations"}]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R15 R15 K17 ["createElement"]
      134 GETUPVAL                         R16 6
      135 DUPTABLE                         R17 K51 [{"onStyleSheetChange"}]
      136 GETTABLEKS                       R18 R0 K52 ["onFoundationStyleSheetChange"]
      138 SETTABLEKS                       R18 R17 K50 ["onStyleSheetChange"]
      140 DUPTABLE                         R18 K54 [{"ContextStack"}]
      141 GETUPVAL                         R19 4
      142 GETTABLEKS                       R19 R19 K17 ["createElement"]
      144 GETUPVAL                         R20 7
      145 GETTABLEKS                       R20 R20 K53 ["ContextStack"]
      147 DUPTABLE                         R21 K56 [{"providers"}]
      148 NEWTABLE                         R22 0 1
      150 GETUPVAL                         R23 4
      151 GETTABLEKS                       R23 R23 K17 ["createElement"]
      153 GETUPVAL                         R24 8
      154 CALL                             R23 1 -1
      155 SETLIST                          R22 R23 -1 [1]
      157 SETTABLEKS                       R22 R21 K55 ["providers"]
      159 DUPTABLE                         R22 K60 [{"Wrapper", "StyleLink", "WidgetRegister"}]
      160 GETUPVAL                         R23 4
      161 GETTABLEKS                       R23 R23 K17 ["createElement"]
      163 LOADK                            R24 K61 ["Frame"]
      164 NEWTABLE                         R25 1 0
      166 GETUPVAL                         R26 4
      167 GETTABLEKS                       R26 R26 K62 ["Tag"]
      169 LOADK                            R27 K63 ["X-Fill X-Column SceneAnalysis-BackgroundColor"]
      170 SETTABLE                         R27 R25 R26
      171 DUPTABLE                         R26 K65 [{"ContentArea"}]
      172 GETUPVAL                         R27 4
      173 GETTABLEKS                       R27 R27 K17 ["createElement"]
      175 LOADK                            R28 K61 ["Frame"]
      176 DUPTABLE                         R29 K68 [{["Size"], ["BackgroundTransparency"] = 1}]
      177 GETIMPORT                        R30 K70 [UDim2.new]
      179 LOADN                            R31 1
      180 LOADN                            R32 0
      181 LOADN                            R33 1
      182 LOADN                            R34 0
      183 CALL                             R30 4 1
      184 SETTABLEKS                       R30 R29 K33 ["Size"]
      186 DUPTABLE                         R30 K75 [{"Layout", "DropdownFrame", "FilterMenu", "SplitPane"}]
      187 GETUPVAL                         R31 4
      188 GETTABLEKS                       R31 R31 K17 ["createElement"]
      190 LOADK                            R32 K76 ["UIListLayout"]
      191 DUPTABLE                         R33 K82 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      192 GETIMPORT                        R34 K84 [UDim.new]
      194 LOADN                            R35 0
      195 LOADN                            R36 0
      196 CALL                             R34 2 1
      197 SETTABLEKS                       R34 R33 K77 ["Padding"]
      199 GETIMPORT                        R34 K86 [Enum.FillDirection.Vertical]
      201 SETTABLEKS                       R34 R33 K78 ["FillDirection"]
      203 GETIMPORT                        R34 K88 [Enum.HorizontalAlignment.Left]
      205 SETTABLEKS                       R34 R33 K79 ["HorizontalAlignment"]
      207 GETIMPORT                        R34 K90 [Enum.VerticalAlignment.Top]
      209 SETTABLEKS                       R34 R33 K80 ["VerticalAlignment"]
      211 GETIMPORT                        R34 K92 [Enum.SortOrder.LayoutOrder]
      213 SETTABLEKS                       R34 R33 K81 ["SortOrder"]
      215 CALL                             R31 2 1
      216 SETTABLEKS                       R31 R30 K71 ["Layout"]
      218 GETUPVAL                         R31 4
      219 GETTABLEKS                       R31 R31 K17 ["createElement"]
      221 LOADK                            R32 K61 ["Frame"]
      222 NEWTABLE                         R33 4 0
      224 GETIMPORT                        R34 K70 [UDim2.new]
      226 LOADN                            R35 1
      227 LOADN                            R36 0
      228 LOADN                            R37 0
      229 LOADN                            R38 30
      230 CALL                             R34 4 1
      231 SETTABLEKS                       R34 R33 K33 ["Size"]
      233 LOADN                            R34 1
      234 SETTABLEKS                       R34 R33 K91 ["LayoutOrder"]
      236 LOADN                            R34 1
      237 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      239 GETUPVAL                         R34 4
      240 GETTABLEKS                       R34 R34 K46 ["Change"]
      242 GETTABLEKS                       R34 R34 K93 ["AbsoluteSize"]
      244 GETTABLEKS                       R35 R0 K94 ["onHeaderSizeChange"]
      246 SETTABLE                         R35 R33 R34
      247 DUPTABLE                         R34 K99 [{"UIPadding", "Layout", "DropdownContainer", "SearchContainer", "RightGroup"}]
      248 GETUPVAL                         R35 4
      249 GETTABLEKS                       R35 R35 K17 ["createElement"]
      251 LOADK                            R36 K95 ["UIPadding"]
      252 DUPTABLE                         R37 K104 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      253 GETIMPORT                        R38 K84 [UDim.new]
      255 LOADN                            R39 0
      256 LOADN                            R40 4
      257 CALL                             R38 2 1
      258 SETTABLEKS                       R38 R37 K100 ["PaddingLeft"]
      260 GETIMPORT                        R38 K84 [UDim.new]
      262 LOADN                            R39 0
      263 LOADN                            R40 4
      264 CALL                             R38 2 1
      265 SETTABLEKS                       R38 R37 K101 ["PaddingRight"]
      267 GETIMPORT                        R38 K84 [UDim.new]
      269 LOADN                            R39 0
      270 LOADN                            R40 4
      271 CALL                             R38 2 1
      272 SETTABLEKS                       R38 R37 K102 ["PaddingTop"]
      274 GETIMPORT                        R38 K84 [UDim.new]
      276 LOADN                            R39 0
      277 LOADN                            R40 4
      278 CALL                             R38 2 1
      279 SETTABLEKS                       R38 R37 K103 ["PaddingBottom"]
      281 CALL                             R35 2 1
      282 SETTABLEKS                       R35 R34 K95 ["UIPadding"]
      284 GETUPVAL                         R35 4
      285 GETTABLEKS                       R35 R35 K17 ["createElement"]
      287 LOADK                            R36 K76 ["UIListLayout"]
      288 DUPTABLE                         R37 K105 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      289 GETIMPORT                        R38 K107 [Enum.FillDirection.Horizontal]
      291 SETTABLEKS                       R38 R37 K78 ["FillDirection"]
      293 GETIMPORT                        R38 K88 [Enum.HorizontalAlignment.Left]
      295 SETTABLEKS                       R38 R37 K79 ["HorizontalAlignment"]
      297 GETIMPORT                        R38 K109 [Enum.VerticalAlignment.Center]
      299 SETTABLEKS                       R38 R37 K80 ["VerticalAlignment"]
      301 GETIMPORT                        R38 K84 [UDim.new]
      303 LOADN                            R39 0
      304 LOADN                            R40 4
      305 CALL                             R38 2 1
      306 SETTABLEKS                       R38 R37 K77 ["Padding"]
      308 GETIMPORT                        R38 K92 [Enum.SortOrder.LayoutOrder]
      310 SETTABLEKS                       R38 R37 K81 ["SortOrder"]
      312 CALL                             R35 2 1
      313 SETTABLEKS                       R35 R34 K71 ["Layout"]
      315 GETUPVAL                         R35 4
      316 GETTABLEKS                       R35 R35 K17 ["createElement"]
      318 LOADK                            R36 K61 ["Frame"]
      319 DUPTABLE                         R37 K110 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
      320 GETIMPORT                        R38 K70 [UDim2.new]
      322 LOADN                            R39 0
      323 LOADN                            R40 200
      324 LOADN                            R41 1
      325 LOADN                            R42 0
      326 CALL                             R38 4 1
      327 SETTABLEKS                       R38 R37 K33 ["Size"]
      329 DUPTABLE                         R38 K112 [{"Dropdown"}]
      330 GETUPVAL                         R39 4
      331 GETTABLEKS                       R39 R39 K17 ["createElement"]
      333 GETUPVAL                         R40 9
      334 GETTABLEKS                       R40 R40 K113 ["Root"]
      336 DUPTABLE                         R41 K121 [{["label"] = "", ["width"], ["size"], ["value"], ["items"], ["onItemChanged"]}]
      337 GETIMPORT                        R42 K84 [UDim.new]
      339 LOADN                            R43 1
      340 LOADN                            R44 0
      341 CALL                             R42 2 1
      342 SETTABLEKS                       R42 R41 K116 ["width"]
      344 GETUPVAL                         R42 10
      345 GETTABLEKS                       R42 R42 K122 ["Enums"]
      347 GETTABLEKS                       R42 R42 K123 ["InputSize"]
      349 GETTABLEKS                       R42 R42 K124 ["XSmall"]
      351 SETTABLEKS                       R42 R41 K117 ["size"]
      353 GETTABLEKS                       R42 R0 K1 ["state"]
      355 GETTABLEKS                       R42 R42 K4 ["selectedCategory"]
      357 GETTABLEKS                       R42 R42 K125 ["id"]
      359 SETTABLEKS                       R42 R41 K118 ["value"]
      361 GETTABLEKS                       R42 R0 K126 ["categories"]
      363 SETTABLEKS                       R42 R41 K119 ["items"]
      365 NEWCLOSURE                       R42 P0
      366 CAPTURE                          VAL R0
      367 SETTABLEKS                       R42 R41 K120 ["onItemChanged"]
      369 CALL                             R39 2 1
      370 SETTABLEKS                       R39 R38 K111 ["Dropdown"]
      372 CALL                             R35 3 1
      373 SETTABLEKS                       R35 R34 K96 ["DropdownContainer"]
      375 GETUPVAL                         R36 11
      376 JUMPIFNOT                        R36 ; [+10]
      377 GETTABLEKS                       R36 R2 K127 ["windowWidth"]
      379 JUMPIFEQKN                       R36 K128 [0] ; [+7]
      381 LOADB                            R35 0
      382 GETTABLEKS                       R36 R2 K127 ["windowWidth"]
      384 LOADN                            R37 400
      385 JUMPIFNOTLE                      R37 R36 ; [+82]
      387 GETUPVAL                         R35 4
      388 GETTABLEKS                       R35 R35 K17 ["createElement"]
      390 LOADK                            R36 K61 ["Frame"]
      391 DUPTABLE                         R37 K130 [{["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2}]
      392 GETIMPORT                        R38 K70 [UDim2.new]
      394 LOADN                            R39 0
      395 LOADN                            R40 0
      396 LOADN                            R41 1
      397 LOADN                            R42 0
      398 CALL                             R38 4 1
      399 SETTABLEKS                       R38 R37 K33 ["Size"]
      401 DUPTABLE                         R38 K133 [{"UIFlexItem", "SearchInput"}]
      402 GETUPVAL                         R39 4
      403 GETTABLEKS                       R39 R39 K17 ["createElement"]
      405 LOADK                            R40 K131 ["UIFlexItem"]
      406 DUPTABLE                         R41 K135 [{"FlexMode"}]
      407 GETIMPORT                        R42 K138 [Enum.UIFlexMode.Fill]
      409 SETTABLEKS                       R42 R41 K134 ["FlexMode"]
      411 CALL                             R39 2 1
      412 SETTABLEKS                       R39 R38 K131 ["UIFlexItem"]
      414 GETUPVAL                         R39 4
      415 GETTABLEKS                       R39 R39 K17 ["createElement"]
      417 GETUPVAL                         R40 12
      418 DUPTABLE                         R41 K143 [{["label"] = "", ["leadingIcon"], ["placeholder"], ["width"], ["size"], ["text"], ["onChanged"]}]
      419 GETUPVAL                         R42 10
      420 GETTABLEKS                       R42 R42 K122 ["Enums"]
      422 GETTABLEKS                       R42 R42 K144 ["IconName"]
      424 GETTABLEKS                       R42 R42 K145 ["MagnifyingGlass"]
      426 SETTABLEKS                       R42 R41 K139 ["leadingIcon"]
      428 GETTABLEKS                       R42 R0 K11 ["localization"]
      430 LOADK                            R44 K146 ["Controls"]
      431 LOADK                            R45 K147 ["SearchPlaceholder"]
      432 NAMECALL                         R42 R42 K22 ["getText"]
      434 CALL                             R42 3 1
      435 SETTABLEKS                       R42 R41 K140 ["placeholder"]
      437 GETIMPORT                        R42 K84 [UDim.new]
      439 LOADN                            R43 1
      440 LOADN                            R44 0
      441 CALL                             R42 2 1
      442 SETTABLEKS                       R42 R41 K116 ["width"]
      444 GETUPVAL                         R42 10
      445 GETTABLEKS                       R42 R42 K122 ["Enums"]
      447 GETTABLEKS                       R42 R42 K123 ["InputSize"]
      449 GETTABLEKS                       R42 R42 K124 ["XSmall"]
      451 SETTABLEKS                       R42 R41 K117 ["size"]
      453 GETTABLEKS                       R43 R0 K1 ["state"]
      455 GETTABLEKS                       R43 R43 K148 ["searchTerm"]
      457 ORK                              R42 R43 K115 [""]
      458 SETTABLEKS                       R42 R41 K141 ["text"]
      460 NEWCLOSURE                       R42 P1
      461 CAPTURE                          VAL R0
      462 SETTABLEKS                       R42 R41 K142 ["onChanged"]
      464 CALL                             R39 2 1
      465 SETTABLEKS                       R39 R38 K132 ["SearchInput"]
      467 CALL                             R35 3 1
      468 SETTABLEKS                       R35 R34 K97 ["SearchContainer"]
      470 GETUPVAL                         R35 4
      471 GETTABLEKS                       R35 R35 K17 ["createElement"]
      473 LOADK                            R36 K61 ["Frame"]
      474 DUPTABLE                         R37 K151 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3}]
      475 GETIMPORT                        R38 K153 [Enum.AutomaticSize.X]
      477 SETTABLEKS                       R38 R37 K149 ["AutomaticSize"]
      479 GETIMPORT                        R38 K70 [UDim2.new]
      481 LOADN                            R39 0
      482 LOADN                            R40 0
      483 LOADN                            R41 1
      484 LOADN                            R42 0
      485 CALL                             R38 4 1
      486 SETTABLEKS                       R38 R37 K33 ["Size"]
      488 DUPTABLE                         R38 K158 [{"Layout", "ManualRefreshButton", "AutoupdateToggle", "ClearBaselineButton", "FilterButton"}]
      489 GETUPVAL                         R39 4
      490 GETTABLEKS                       R39 R39 K17 ["createElement"]
      492 LOADK                            R40 K76 ["UIListLayout"]
      493 GETUPVAL                         R42 11
      494 JUMPIFNOT                        R42 ; [+18]
      495 DUPTABLE                         R41 K159 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      496 GETIMPORT                        R42 K107 [Enum.FillDirection.Horizontal]
      498 SETTABLEKS                       R42 R41 K78 ["FillDirection"]
      500 GETIMPORT                        R42 K161 [Enum.HorizontalAlignment.Right]
      502 SETTABLEKS                       R42 R41 K79 ["HorizontalAlignment"]
      504 GETIMPORT                        R42 K109 [Enum.VerticalAlignment.Center]
      506 SETTABLEKS                       R42 R41 K80 ["VerticalAlignment"]
      508 GETIMPORT                        R42 K92 [Enum.SortOrder.LayoutOrder]
      510 SETTABLEKS                       R42 R41 K81 ["SortOrder"]
      512 JUMP                             ; [+13]
      513 DUPTABLE                         R41 K162 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      514 GETIMPORT                        R42 K107 [Enum.FillDirection.Horizontal]
      516 SETTABLEKS                       R42 R41 K78 ["FillDirection"]
      518 GETIMPORT                        R42 K161 [Enum.HorizontalAlignment.Right]
      520 SETTABLEKS                       R42 R41 K79 ["HorizontalAlignment"]
      522 GETIMPORT                        R42 K109 [Enum.VerticalAlignment.Center]
      524 SETTABLEKS                       R42 R41 K80 ["VerticalAlignment"]
      526 CALL                             R39 2 1
      527 SETTABLEKS                       R39 R38 K71 ["Layout"]
      529 GETUPVAL                         R39 11
      530 JUMPIFNOT                        R39 ; [+31]
      531 GETTABLEKS                       R39 R2 K163 ["paused"]
      533 JUMPIFNOT                        R39 ; [+28]
      534 GETUPVAL                         R39 4
      535 GETTABLEKS                       R39 R39 K17 ["createElement"]
      537 GETUPVAL                         R40 13
      538 DUPTABLE                         R41 K166 [{["LayoutOrder"] = 1, ["icon"], ["size"], ["onActivated"]}]
      539 GETUPVAL                         R42 10
      540 GETTABLEKS                       R42 R42 K122 ["Enums"]
      542 GETTABLEKS                       R42 R42 K144 ["IconName"]
      544 GETTABLEKS                       R42 R42 K167 ["ArrowSpinClockwise"]
      546 SETTABLEKS                       R42 R41 K164 ["icon"]
      548 GETUPVAL                         R42 10
      549 GETTABLEKS                       R42 R42 K122 ["Enums"]
      551 GETTABLEKS                       R42 R42 K123 ["InputSize"]
      553 GETTABLEKS                       R42 R42 K168 ["Small"]
      555 SETTABLEKS                       R42 R41 K117 ["size"]
      557 NEWCLOSURE                       R42 P2
      558 CAPTURE                          VAL R0
      559 SETTABLEKS                       R42 R41 K165 ["onActivated"]
      561 CALL                             R39 2 1
      562 SETTABLEKS                       R39 R38 K154 ["ManualRefreshButton"]
      564 GETUPVAL                         R40 11
      565 JUMPIFNOT                        R40 ; [+10]
      566 GETTABLEKS                       R40 R2 K127 ["windowWidth"]
      568 JUMPIFEQKN                       R40 K128 [0] ; [+7]
      570 LOADB                            R39 0
      571 GETTABLEKS                       R40 R2 K127 ["windowWidth"]
      573 LOADN                            R41 400
      574 JUMPIFNOTLE                      R41 R40 ; [+37]
      576 GETUPVAL                         R39 4
      577 GETTABLEKS                       R39 R39 K17 ["createElement"]
      579 GETUPVAL                         R40 14
      580 DUPTABLE                         R41 K170 [{"LayoutOrder", "isChecked", "label", "size", "onActivated"}]
      581 GETUPVAL                         R43 11
      582 JUMPIFNOT                        R43 ; [+2]
      583 LOADN                            R42 2
      584 JUMP                             ; [+1]
      585 LOADN                            R42 1
      586 SETTABLEKS                       R42 R41 K91 ["LayoutOrder"]
      588 GETTABLEKS                       R43 R2 K163 ["paused"]
      590 NOT                              R42 R43
      591 SETTABLEKS                       R42 R41 K169 ["isChecked"]
      593 GETTABLEKS                       R42 R0 K11 ["localization"]
      595 LOADK                            R44 K146 ["Controls"]
      596 LOADK                            R45 K155 ["AutoupdateToggle"]
      597 NAMECALL                         R42 R42 K22 ["getText"]
      599 CALL                             R42 3 1
      600 SETTABLEKS                       R42 R41 K114 ["label"]
      602 GETUPVAL                         R42 15
      603 GETTABLEKS                       R42 R42 K168 ["Small"]
      605 SETTABLEKS                       R42 R41 K117 ["size"]
      607 NEWCLOSURE                       R42 P3
      608 CAPTURE                          VAL R0
      609 SETTABLEKS                       R42 R41 K165 ["onActivated"]
      611 CALL                             R39 2 1
      612 SETTABLEKS                       R39 R38 K155 ["AutoupdateToggle"]
      614 MOVE                             R39 R7
      615 JUMPIFNOT                        R39 ; [+46]
      616 GETUPVAL                         R39 4
      617 GETTABLEKS                       R39 R39 K17 ["createElement"]
      619 GETUPVAL                         R40 13
      620 DUPTABLE                         R41 K171 [{"LayoutOrder", "icon", "size", "onActivated"}]
      621 GETUPVAL                         R43 11
      622 JUMPIFNOT                        R43 ; [+2]
      623 LOADN                            R42 3
      624 JUMP                             ; [+1]
      625 LOADN                            R42 2
      626 SETTABLEKS                       R42 R41 K91 ["LayoutOrder"]
      628 GETUPVAL                         R43 11
      629 JUMPIFNOT                        R43 ; [+8]
      630 GETUPVAL                         R42 10
      631 GETTABLEKS                       R42 R42 K122 ["Enums"]
      633 GETTABLEKS                       R42 R42 K144 ["IconName"]
      635 GETTABLEKS                       R42 R42 K172 ["Eraser"]
      637 JUMP                             ; [+7]
      638 GETUPVAL                         R42 10
      639 GETTABLEKS                       R42 R42 K122 ["Enums"]
      641 GETTABLEKS                       R42 R42 K144 ["IconName"]
      643 GETTABLEKS                       R42 R42 K173 ["ArrowRotateRight"]
      645 SETTABLEKS                       R42 R41 K164 ["icon"]
      647 GETUPVAL                         R42 10
      648 GETTABLEKS                       R42 R42 K122 ["Enums"]
      650 GETTABLEKS                       R42 R42 K123 ["InputSize"]
      652 GETTABLEKS                       R42 R42 K168 ["Small"]
      654 SETTABLEKS                       R42 R41 K117 ["size"]
      656 NEWCLOSURE                       R42 P4
      657 CAPTURE                          VAL R5
      658 CAPTURE                          VAL R0
      659 SETTABLEKS                       R42 R41 K165 ["onActivated"]
      661 CALL                             R39 2 1
      662 SETTABLEKS                       R39 R38 K156 ["ClearBaselineButton"]
      664 MOVE                             R39 R6
      665 JUMPIFNOT                        R39 ; [+35]
      666 GETUPVAL                         R39 4
      667 GETTABLEKS                       R39 R39 K17 ["createElement"]
      669 GETUPVAL                         R40 13
      670 DUPTABLE                         R41 K171 [{"LayoutOrder", "icon", "size", "onActivated"}]
      671 GETUPVAL                         R43 11
      672 JUMPIFNOT                        R43 ; [+2]
      673 LOADN                            R42 4
      674 JUMP                             ; [+1]
      675 LOADN                            R42 3
      676 SETTABLEKS                       R42 R41 K91 ["LayoutOrder"]
      678 GETUPVAL                         R42 10
      679 GETTABLEKS                       R42 R42 K122 ["Enums"]
      681 GETTABLEKS                       R42 R42 K144 ["IconName"]
      683 GETTABLEKS                       R42 R42 K174 ["ThreeSlidersHorizontal"]
      685 SETTABLEKS                       R42 R41 K164 ["icon"]
      687 GETUPVAL                         R42 10
      688 GETTABLEKS                       R42 R42 K122 ["Enums"]
      690 GETTABLEKS                       R42 R42 K123 ["InputSize"]
      692 GETTABLEKS                       R42 R42 K168 ["Small"]
      694 SETTABLEKS                       R42 R41 K117 ["size"]
      696 NEWCLOSURE                       R42 P5
      697 CAPTURE                          VAL R0
      698 SETTABLEKS                       R42 R41 K165 ["onActivated"]
      700 CALL                             R39 2 1
      701 SETTABLEKS                       R39 R38 K157 ["FilterButton"]
      703 CALL                             R35 3 1
      704 SETTABLEKS                       R35 R34 K98 ["RightGroup"]
      706 CALL                             R31 3 1
      707 SETTABLEKS                       R31 R30 K72 ["DropdownFrame"]
      709 MOVE                             R31 R6
      710 JUMPIFNOT                        R31 ; [+26]
      711 GETTABLEKS                       R31 R2 K175 ["filterMenuOpen"]
      713 JUMPIFNOT                        R31 ; [+23]
      714 GETUPVAL                         R31 4
      715 GETTABLEKS                       R31 R31 K17 ["createElement"]
      717 LOADK                            R32 K61 ["Frame"]
      718 DUPTABLE                         R33 K176 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1}]
      719 GETIMPORT                        R34 K70 [UDim2.new]
      721 LOADN                            R35 1
      722 LOADN                            R36 0
      723 LOADN                            R37 0
      724 LOADN                            R38 30
      725 CALL                             R34 4 1
      726 SETTABLEKS                       R34 R33 K33 ["Size"]
      728 NEWCLOSURE                       R34 P6
      729 CAPTURE                          UPVAL U4
      730 CAPTURE                          VAL R2
      731 CAPTURE                          VAL R5
      732 CAPTURE                          UPVAL U14
      733 CAPTURE                          UPVAL U10
      734 CAPTURE                          VAL R0
      735 CALL                             R34 0 1
      736 CALL                             R31 3 1
      737 SETTABLEKS                       R31 R30 K73 ["FilterMenu"]
      739 GETUPVAL                         R31 4
      740 GETTABLEKS                       R31 R31 K17 ["createElement"]
      742 GETUPVAL                         R32 16
      743 DUPTABLE                         R33 K185 [{["Size"], ["LayoutOrder"] = 3, ["InitialSizes"], ["UseScale"] = True, ["ClampSize"] = True, ["HideBars"] = False, ["MinSizes"], ["MaxSizes"], ["Layout"]}]
      744 GETIMPORT                        R34 K70 [UDim2.new]
      746 LOADN                            R35 1
      747 LOADN                            R36 0
      748 LOADN                            R37 1
      749 LOADN                            R38 0
      750 CALL                             R34 4 1
      751 SETTABLEKS                       R34 R33 K33 ["Size"]
      753 NEWTABLE                         R34 0 2
      755 GETIMPORT                        R35 K84 [UDim.new]
      757 LOADK                            R36 K186 [0.5]
      758 LOADN                            R37 0
      759 CALL                             R35 2 1
      760 GETIMPORT                        R36 K84 [UDim.new]
      762 LOADK                            R37 K186 [0.5]
      763 LOADN                            R38 0
      764 CALL                             R36 2 -1
      765 SETLIST                          R34 R35 -1 [1]
      767 SETTABLEKS                       R34 R33 K177 ["InitialSizes"]
      769 NEWTABLE                         R34 0 2
      771 GETIMPORT                        R35 K84 [UDim.new]
      773 LOADK                            R36 K187 [0.1]
      774 LOADN                            R37 0
      775 CALL                             R35 2 1
      776 GETIMPORT                        R36 K84 [UDim.new]
      778 LOADK                            R37 K187 [0.1]
      779 LOADN                            R38 0
      780 CALL                             R36 2 -1
      781 SETLIST                          R34 R35 -1 [1]
      783 SETTABLEKS                       R34 R33 K183 ["MinSizes"]
      785 NEWTABLE                         R34 0 2
      787 LOADNIL                          R35
      788 LOADNIL                          R36
      789 SETLIST                          R34 R35 2 [1]
      791 SETTABLEKS                       R34 R33 K184 ["MaxSizes"]
      793 GETIMPORT                        R34 K86 [Enum.FillDirection.Vertical]
      795 SETTABLEKS                       R34 R33 K71 ["Layout"]
      797 NEWTABLE                         R34 0 2
      799 GETUPVAL                         R35 4
      800 GETTABLEKS                       R35 R35 K17 ["createElement"]
      802 LOADK                            R36 K61 ["Frame"]
      803 DUPTABLE                         R37 K189 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      804 GETIMPORT                        R38 K70 [UDim2.new]
      806 LOADN                            R39 1
      807 LOADN                            R40 0
      808 LOADN                            R41 1
      809 LOADN                            R42 0
      810 CALL                             R38 4 1
      811 SETTABLEKS                       R38 R37 K33 ["Size"]
      813 GETIMPORT                        R38 K70 [UDim2.new]
      815 LOADN                            R39 0
      816 LOADN                            R40 0
      817 LOADN                            R41 0
      818 LOADN                            R42 0
      819 CALL                             R38 4 1
      820 SETTABLEKS                       R38 R37 K188 ["Position"]
      822 DUPTABLE                         R38 K191 [{"Treemap"}]
      823 GETUPVAL                         R39 4
      824 GETTABLEKS                       R39 R39 K17 ["createElement"]
      826 GETUPVAL                         R40 17
      827 DUPTABLE                         R41 K198 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization", "tooltipLabels"}]
      828 GETTABLEKS                       R42 R0 K199 ["treemapRef"]
      830 SETTABLEKS                       R42 R41 K192 ["ref"]
      832 GETIMPORT                        R42 K70 [UDim2.new]
      834 LOADN                            R43 1
      835 LOADN                            R44 -8
      836 LOADN                            R45 1
      837 LOADN                            R46 -8
      838 CALL                             R42 4 1
      839 SETTABLEKS                       R42 R41 K33 ["Size"]
      841 GETIMPORT                        R42 K70 [UDim2.new]
      843 LOADN                            R43 0
      844 LOADN                            R44 4
      845 LOADN                            R45 0
      846 LOADN                            R46 4
      847 CALL                             R42 4 1
      848 SETTABLEKS                       R42 R41 K188 ["Position"]
      850 GETUPVAL                         R42 18
      851 GETTABLEKS                       R42 R42 K200 ["mockData"]
      853 SETTABLEKS                       R42 R41 K193 ["NodeOutput"]
      855 GETTABLEKS                       R42 R0 K194 ["treemapContext"]
      857 SETTABLEKS                       R42 R41 K194 ["treemapContext"]
      859 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      861 JUMPIFNOT                        R43 ; [+5]
      862 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      864 GETTABLEKS                       R42 R42 K195 ["valueFormat"]
      866 JUMPIF                           R42 ; [+1]
      867 LOADK                            R42 K201 ["memory"]
      868 SETTABLEKS                       R42 R41 K195 ["valueFormat"]
      870 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      872 JUMPIFNOT                        R43 ; [+5]
      873 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      875 GETTABLEKS                       R42 R42 K196 ["colorRamp"]
      877 JUMPIF                           R42 ; [+3]
      878 GETUPVAL                         R42 19
      879 GETTABLEKS                       R42 R42 K202 ["Default"]
      881 SETTABLEKS                       R42 R41 K196 ["colorRamp"]
      883 GETTABLEKS                       R42 R0 K11 ["localization"]
      885 SETTABLEKS                       R42 R41 K11 ["localization"]
      887 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      889 JUMPIFNOT                        R43 ; [+12]
      890 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      892 GETTABLEKS                       R43 R43 K5 ["module"]
      894 JUMPIFNOT                        R43 ; [+7]
      895 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      897 GETTABLEKS                       R42 R42 K5 ["module"]
      899 GETTABLEKS                       R42 R42 K197 ["tooltipLabels"]
      901 JUMPIF                           R42 ; [+1]
      902 LOADNIL                          R42
      903 SETTABLEKS                       R42 R41 K197 ["tooltipLabels"]
      905 CALL                             R39 2 1
      906 SETTABLEKS                       R39 R38 K190 ["Treemap"]
      908 CALL                             R35 3 1
      909 GETUPVAL                         R36 4
      910 GETTABLEKS                       R36 R36 K17 ["createElement"]
      912 LOADK                            R37 K61 ["Frame"]
      913 DUPTABLE                         R38 K204 [{["Size"], ["BackgroundTransparency"] = 1, ["ClipsDescendants"]}]
      914 GETIMPORT                        R39 K70 [UDim2.new]
      916 LOADN                            R40 1
      917 LOADN                            R41 0
      918 LOADN                            R42 1
      919 LOADN                            R43 -32
      920 CALL                             R39 4 1
      921 SETTABLEKS                       R39 R38 K33 ["Size"]
      923 GETUPVAL                         R39 11
      924 SETTABLEKS                       R39 R38 K203 ["ClipsDescendants"]
      926 DUPTABLE                         R39 K209 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper", "WarningBar"}]
      927 GETUPVAL                         R40 4
      928 GETTABLEKS                       R40 R40 K17 ["createElement"]
      930 LOADK                            R41 K95 ["UIPadding"]
      931 DUPTABLE                         R42 K210 [{"PaddingLeft"}]
      932 GETIMPORT                        R43 K84 [UDim.new]
      934 LOADN                            R44 0
      935 LOADN                            R45 4
      936 CALL                             R43 2 1
      937 SETTABLEKS                       R43 R42 K100 ["PaddingLeft"]
      939 CALL                             R40 2 1
      940 SETTABLEKS                       R40 R39 K205 ["ListPadding"]
      942 GETUPVAL                         R40 4
      943 GETTABLEKS                       R40 R40 K17 ["createElement"]
      945 LOADK                            R41 K76 ["UIListLayout"]
      946 DUPTABLE                         R42 K211 [{"SortOrder", "FillDirection"}]
      947 GETIMPORT                        R43 K92 [Enum.SortOrder.LayoutOrder]
      949 SETTABLEKS                       R43 R42 K81 ["SortOrder"]
      951 GETIMPORT                        R43 K86 [Enum.FillDirection.Vertical]
      953 SETTABLEKS                       R43 R42 K78 ["FillDirection"]
      955 CALL                             R40 2 1
      956 SETTABLEKS                       R40 R39 K76 ["UIListLayout"]
      958 GETUPVAL                         R40 4
      959 GETTABLEKS                       R40 R40 K17 ["createElement"]
      961 GETUPVAL                         R41 20
      962 DUPTABLE                         R42 K215 [{["LayoutOrder"] = 1, ["query"], ["queryInfo"], ["selectedIdsHash"], ["localization"]}]
      963 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
      965 JUMPIFNOT                        R44 ; [+5]
      966 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      968 GETTABLEKS                       R43 R43 K5 ["module"]
      970 JUMP                             ; [+1]
      971 LOADNIL                          R43
      972 SETTABLEKS                       R43 R42 K212 ["query"]
      974 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      976 SETTABLEKS                       R43 R42 K213 ["queryInfo"]
      978 GETTABLEKS                       R43 R2 K214 ["selectedIdsHash"]
      980 SETTABLEKS                       R43 R42 K214 ["selectedIdsHash"]
      982 GETTABLEKS                       R43 R0 K11 ["localization"]
      984 SETTABLEKS                       R43 R42 K11 ["localization"]
      986 CALL                             R40 2 1
      987 SETTABLEKS                       R40 R39 K206 ["Summary"]
      989 GETUPVAL                         R40 4
      990 GETTABLEKS                       R40 R40 K17 ["createElement"]
      992 LOADK                            R41 K61 ["Frame"]
      993 DUPTABLE                         R42 K216 [{["Size"], ["LayoutOrder"] = 2, ["BackgroundTransparency"] = 1, ["ClipsDescendants"]}]
      994 GETIMPORT                        R43 K70 [UDim2.new]
      996 LOADN                            R44 1
      997 LOADN                            R45 0
      998 LOADN                            R46 1
      999 LOADN                            R47 -58
     1000 CALL                             R43 4 1
     1001 SETTABLEKS                       R43 R42 K33 ["Size"]
     1003 GETUPVAL                         R43 11
     1004 SETTABLEKS                       R43 R42 K203 ["ClipsDescendants"]
     1006 DUPTABLE                         R43 K219 [{"UISizeConstraint", "List"}]
     1007 GETUPVAL                         R45 11
     1008 JUMPIFNOT                        R45 ; [+14]
     1009 GETUPVAL                         R44 4
     1010 GETTABLEKS                       R44 R44 K17 ["createElement"]
     1012 LOADK                            R45 K217 ["UISizeConstraint"]
     1013 DUPTABLE                         R46 K220 [{"MinSize"}]
     1014 GETIMPORT                        R47 K32 [Vector2.new]
     1016 LOADN                            R48 0
     1017 LOADN                            R49 100
     1018 CALL                             R47 2 1
     1019 SETTABLEKS                       R47 R46 K34 ["MinSize"]
     1021 CALL                             R44 2 1
     1022 JUMPIF                           R44 ; [+1]
     1023 LOADNIL                          R44
     1024 SETTABLEKS                       R44 R43 K217 ["UISizeConstraint"]
     1026 GETUPVAL                         R44 4
     1027 GETTABLEKS                       R44 R44 K17 ["createElement"]
     1029 GETUPVAL                         R45 21
     1030 DUPTABLE                         R46 K230 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
     1031 GETTABLEKS                       R47 R0 K231 ["virtualizedListRef"]
     1033 SETTABLEKS                       R47 R46 K192 ["ref"]
     1035 GETTABLEKS                       R47 R2 K221 ["windowHeight"]
     1037 SETTABLEKS                       R47 R46 K221 ["windowHeight"]
     1039 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1041 JUMPIFNOT                        R48 ; [+8]
     1042 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1044 GETTABLEKS                       R47 R47 K5 ["module"]
     1046 GETTABLEKS                       R47 R47 K232 ["getNodesObservable"]
     1048 CALL                             R47 0 1
     1049 JUMP                             ; [+1]
     1050 LOADNIL                          R47
     1051 SETTABLEKS                       R47 R46 K222 ["rootNodeObservable"]
     1053 GETTABLEKS                       R47 R0 K223 ["scrollHeightObservable"]
     1055 SETTABLEKS                       R47 R46 K223 ["scrollHeightObservable"]
     1057 GETTABLEKS                       R47 R0 K224 ["scrollRef"]
     1059 SETTABLEKS                       R47 R46 K224 ["scrollRef"]
     1061 GETTABLEKS                       R47 R0 K225 ["onAbsoluteSizeChange"]
     1063 SETTABLEKS                       R47 R46 K225 ["onAbsoluteSizeChange"]
     1065 GETTABLEKS                       R47 R0 K226 ["onCanvasPositionChange"]
     1067 SETTABLEKS                       R47 R46 K226 ["onCanvasPositionChange"]
     1069 GETTABLEKS                       R47 R1 K227 ["ZIndex"]
     1071 SETTABLEKS                       R47 R46 K227 ["ZIndex"]
     1073 GETTABLEKS                       R47 R0 K228 ["onNodeClicked"]
     1075 SETTABLEKS                       R47 R46 K228 ["onNodeClicked"]
     1077 GETTABLEKS                       R47 R0 K233 ["onListNodeRightClicked"]
     1079 SETTABLEKS                       R47 R46 K229 ["onNodeRightClicked"]
     1081 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1083 JUMPIFNOT                        R48 ; [+5]
     1084 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1086 GETTABLEKS                       R47 R47 K5 ["module"]
     1088 JUMP                             ; [+1]
     1089 LOADNIL                          R47
     1090 SETTABLEKS                       R47 R46 K212 ["query"]
     1092 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1094 SETTABLEKS                       R47 R46 K213 ["queryInfo"]
     1096 CALL                             R44 2 1
     1097 SETTABLEKS                       R44 R43 K218 ["List"]
     1099 CALL                             R40 3 1
     1100 SETTABLEKS                       R40 R39 K207 ["ListWrapper"]
     1102 GETUPVAL                         R40 4
     1103 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1105 LOADK                            R41 K61 ["Frame"]
     1106 DUPTABLE                         R42 K234 [{["Size"], ["LayoutOrder"] = 3, ["BackgroundTransparency"] = 1}]
     1107 GETIMPORT                        R43 K70 [UDim2.new]
     1109 LOADN                            R44 1
     1110 LOADN                            R45 0
     1111 LOADN                            R46 0
     1112 LOADN                            R47 24
     1113 CALL                             R43 4 1
     1114 SETTABLEKS                       R43 R42 K33 ["Size"]
     1116 NEWCLOSURE                       R43 P7
     1117 CAPTURE                          UPVAL U11
     1118 CAPTURE                          VAL R5
     1119 CAPTURE                          VAL R0
     1120 CAPTURE                          VAL R2
     1121 CAPTURE                          UPVAL U4
     1122 CAPTURE                          UPVAL U22
     1123 CAPTURE                          UPVAL U10
     1124 CALL                             R43 0 1
     1125 CALL                             R40 3 1
     1126 SETTABLEKS                       R40 R39 K208 ["WarningBar"]
     1128 CALL                             R36 3 1
     1129 SETLIST                          R34 R35 2 [1]
     1131 CALL                             R31 3 1
     1132 SETTABLEKS                       R31 R30 K74 ["SplitPane"]
     1134 CALL                             R27 3 1
     1135 SETTABLEKS                       R27 R26 K64 ["ContentArea"]
     1137 CALL                             R23 3 1
     1138 SETTABLEKS                       R23 R22 K57 ["Wrapper"]
     1140 GETUPVAL                         R24 11
     1141 JUMPIFNOT                        R24 ; [+2]
     1142 LOADNIL                          R23
     1143 JUMP                             ; [+10]
     1144 GETUPVAL                         R23 4
     1145 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1147 LOADK                            R24 K58 ["StyleLink"]
     1148 DUPTABLE                         R25 K236 [{"StyleSheet"}]
     1149 GETTABLEKS                       R26 R0 K14 ["design"]
     1151 SETTABLEKS                       R26 R25 K235 ["StyleSheet"]
     1153 CALL                             R23 2 1
     1154 SETTABLEKS                       R23 R22 K58 ["StyleLink"]
     1156 GETUPVAL                         R23 4
     1157 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1159 GETUPVAL                         R24 23
     1160 CALL                             R23 1 1
     1161 SETTABLEKS                       R23 R22 K59 ["WidgetRegister"]
     1163 CALL                             R19 3 1
     1164 SETTABLEKS                       R19 R18 K53 ["ContextStack"]
     1166 CALL                             R15 3 1
     1167 SETTABLEKS                       R15 R14 K48 ["Foundations"]
     1169 CALL                             R11 3 1
     1170 SETTABLEKS                       R11 R10 K15 ["MainWidget"]
     1172 CALL                             R8 2 -1
     1173 RETURN                           R8 -1

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
       58 GETIMPORT                        R10 K5 [require]
       60 GETTABLEKS                       R11 R0 K6 ["Packages"]
       62 GETTABLEKS                       R11 R11 K20 ["Foundation"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R10 K21 ["Dropdown"]
       67 GETTABLEKS                       R12 R10 K22 ["Toggle"]
       69 GETTABLEKS                       R13 R10 K23 ["TextInput"]
       71 GETTABLEKS                       R14 R10 K24 ["Icon"]
       73 GETTABLEKS                       R15 R10 K25 ["IconButton"]
       75 GETTABLEKS                       R16 R10 K26 ["Enums"]
       77 GETTABLEKS                       R16 R16 K27 ["InputSize"]
       79 GETTABLEKS                       R17 R3 K28 ["UI"]
       81 GETTABLEKS                       R17 R17 K29 ["DockWidget"]
       83 GETTABLEKS                       R18 R3 K30 ["ContextServices"]
       85 GETTABLEKS                       R19 R18 K31 ["Plugin"]
       87 GETTABLEKS                       R20 R18 K32 ["Mouse"]
       89 GETTABLEKS                       R21 R18 K33 ["Design"]
       91 GETTABLEKS                       R22 R3 K34 ["Style"]
       93 GETTABLEKS                       R22 R22 K35 ["Themes"]
       95 GETTABLEKS                       R22 R22 K36 ["StudioTheme"]
       97 GETTABLEKS                       R23 R3 K37 ["Styling"]
       99 GETTABLEKS                       R23 R23 K38 ["registerPluginStyles"]
      101 GETTABLEKS                       R24 R0 K39 ["Src"]
      103 GETTABLEKS                       R24 R24 K40 ["Resources"]
      105 GETTABLEKS                       R24 R24 K41 ["Localization"]
      107 GETTABLEKS                       R24 R24 K42 ["SourceStrings"]
      109 GETTABLEKS                       R25 R0 K39 ["Src"]
      111 GETTABLEKS                       R25 R25 K40 ["Resources"]
      113 GETTABLEKS                       R25 R25 K41 ["Localization"]
      115 GETTABLEKS                       R25 R25 K43 ["LocalizedStrings"]
      117 GETTABLEKS                       R26 R0 K39 ["Src"]
      119 GETTABLEKS                       R26 R26 K11 ["Components"]
      121 GETIMPORT                        R27 K5 [require]
      123 GETTABLEKS                       R28 R26 K44 ["Treemap"]
      125 CALL                             R27 1 1
      126 GETIMPORT                        R28 K5 [require]
      128 GETTABLEKS                       R29 R26 K45 ["ControlledSplitPane"]
      130 CALL                             R28 1 1
      131 GETIMPORT                        R29 K5 [require]
      133 GETTABLEKS                       R30 R26 K46 ["VirtualizedList"]
      135 CALL                             R29 1 1
      136 GETIMPORT                        R30 K5 [require]
      138 GETTABLEKS                       R31 R26 K47 ["SummaryPane"]
      140 CALL                             R30 1 1
      141 GETIMPORT                        R31 K5 [require]
      143 GETTABLEKS                       R32 R0 K39 ["Src"]
      145 GETTABLEKS                       R32 R32 K13 ["Util"]
      147 GETTABLEKS                       R32 R32 K48 ["Observable"]
      149 CALL                             R31 1 1
      150 GETIMPORT                        R32 K5 [require]
      152 GETTABLEKS                       R33 R26 K49 ["WidgetRegister"]
      154 CALL                             R32 1 1
      155 GETIMPORT                        R33 K5 [require]
      157 GETTABLEKS                       R34 R0 K39 ["Src"]
      159 GETTABLEKS                       R34 R34 K50 ["Providers"]
      161 GETTABLEKS                       R34 R34 K51 ["MouseContextProvider"]
      163 CALL                             R33 1 1
      164 GETIMPORT                        R34 K5 [require]
      166 GETTABLEKS                       R35 R0 K39 ["Src"]
      168 GETTABLEKS                       R35 R35 K40 ["Resources"]
      170 GETTABLEKS                       R35 R35 K52 ["ColorRamps"]
      172 CALL                             R34 1 1
      173 GETIMPORT                        R35 K5 [require]
      175 GETTABLEKS                       R36 R0 K6 ["Packages"]
      177 GETTABLEKS                       R36 R36 K53 ["Dash"]
      179 CALL                             R35 1 1
      180 GETIMPORT                        R36 K5 [require]
      182 GETTABLEKS                       R37 R0 K39 ["Src"]
      184 GETTABLEKS                       R37 R37 K11 ["Components"]
      186 GETTABLEKS                       R37 R37 K44 ["Treemap"]
      188 GETTABLEKS                       R37 R37 K54 ["TreemapMockData"]
      190 CALL                             R36 1 1
      191 GETIMPORT                        R37 K5 [require]
      193 GETTABLEKS                       R38 R0 K39 ["Src"]
      195 GETTABLEKS                       R38 R38 K11 ["Components"]
      197 GETTABLEKS                       R38 R38 K44 ["Treemap"]
      199 GETTABLEKS                       R38 R38 K55 ["TreemapTypes"]
      201 CALL                             R37 1 1
      202 DUPCLOSURE                       R38 K56 [PROTO_1]
      203 GETTABLEKS                       R39 R1 K57 ["PureComponent"]
      205 LOADK                            R41 K58 ["MainPlugin"]
      206 NAMECALL                         R39 R39 K59 ["extend"]
      208 CALL                             R39 2 1
      209 GETTABLEKS                       R40 R6 K60 ["fromAction"]
      211 LOADK                            R41 K2 ["SceneAnalysis"]
      212 LOADK                            R42 K22 ["Toggle"]
      213 CALL                             R40 2 1
      214 GETIMPORT                        R41 K5 [require]
      216 GETTABLEKS                       R42 R0 K39 ["Src"]
      218 GETTABLEKS                       R42 R42 K13 ["Util"]
      220 GETTABLEKS                       R42 R42 K61 ["AssetDMBridge"]
      222 CALL                             R41 1 1
      223 GETIMPORT                        R42 K5 [require]
      225 GETTABLEKS                       R43 R0 K39 ["Src"]
      227 GETTABLEKS                       R43 R43 K13 ["Util"]
      229 GETTABLEKS                       R43 R43 K62 ["SelectionManager"]
      231 CALL                             R42 1 1
      232 GETIMPORT                        R43 K5 [require]
      234 GETTABLEKS                       R44 R0 K39 ["Src"]
      236 GETTABLEKS                       R44 R44 K63 ["Queries"]
      238 GETTABLEKS                       R44 R44 K64 ["UnparentedInstancesView"]
      240 GETTABLEKS                       R44 R44 K65 ["FetchUnparentedInstances"]
      242 CALL                             R43 1 1
      243 GETIMPORT                        R44 K5 [require]
      245 GETTABLEKS                       R45 R0 K39 ["Src"]
      247 GETTABLEKS                       R45 R45 K63 ["Queries"]
      249 GETTABLEKS                       R45 R45 K66 ["ScriptMemoryView"]
      251 GETTABLEKS                       R45 R45 K67 ["FetchAllScriptMemory"]
      253 CALL                             R44 1 1
      254 GETIMPORT                        R45 K5 [require]
      256 GETTABLEKS                       R46 R0 K39 ["Src"]
      258 GETTABLEKS                       R46 R46 K63 ["Queries"]
      260 GETTABLEKS                       R46 R46 K68 ["SceneTrianglesView"]
      262 GETTABLEKS                       R46 R46 K69 ["FetchSceneTriangles"]
      264 CALL                             R45 1 1
      265 GETIMPORT                        R46 K5 [require]
      267 GETTABLEKS                       R47 R0 K39 ["Src"]
      269 GETTABLEKS                       R47 R47 K63 ["Queries"]
      271 GETTABLEKS                       R47 R47 K70 ["SceneGeometryView"]
      273 GETTABLEKS                       R47 R47 K71 ["FetchSceneGeometry"]
      275 CALL                             R46 1 1
      276 GETIMPORT                        R47 K5 [require]
      278 GETTABLEKS                       R48 R0 K39 ["Src"]
      280 GETTABLEKS                       R48 R48 K63 ["Queries"]
      282 GETTABLEKS                       R48 R48 K72 ["InstanceCompositionView"]
      284 GETTABLEKS                       R48 R48 K73 ["FetchInstanceComposition"]
      286 CALL                             R47 1 1
      287 GETIMPORT                        R48 K5 [require]
      289 GETTABLEKS                       R49 R0 K39 ["Src"]
      291 GETTABLEKS                       R49 R49 K63 ["Queries"]
      293 GETTABLEKS                       R49 R49 K74 ["AnimationMemoryView"]
      295 GETTABLEKS                       R49 R49 K75 ["FetchAnimationMemory"]
      297 CALL                             R48 1 1
      298 GETIMPORT                        R49 K5 [require]
      300 GETTABLEKS                       R50 R0 K39 ["Src"]
      302 GETTABLEKS                       R50 R50 K63 ["Queries"]
      304 GETTABLEKS                       R50 R50 K76 ["AudioMemoryView"]
      306 GETTABLEKS                       R50 R50 K77 ["FetchAudioMemory"]
      308 CALL                             R49 1 1
      309 GETIMPORT                        R50 K5 [require]
      311 GETTABLEKS                       R51 R0 K39 ["Src"]
      313 GETTABLEKS                       R51 R51 K11 ["Components"]
      315 GETTABLEKS                       R51 R51 K44 ["Treemap"]
      317 GETTABLEKS                       R51 R51 K78 ["TreemapContext"]
      319 CALL                             R50 1 1
      320 DUPCLOSURE                       R51 K79 [PROTO_23]
      321 CAPTURE                          VAL R40
      322 CAPTURE                          VAL R9
      323 CAPTURE                          VAL R18
      324 CAPTURE                          VAL R24
      325 CAPTURE                          VAL R25
      326 CAPTURE                          VAL R1
      327 CAPTURE                          VAL R31
      328 CAPTURE                          VAL R42
      329 CAPTURE                          VAL R35
      330 CAPTURE                          VAL R41
      331 CAPTURE                          VAL R3
      332 CAPTURE                          VAL R50
      333 CAPTURE                          VAL R22
      334 CAPTURE                          VAL R4
      335 CAPTURE                          VAL R23
      336 CAPTURE                          VAL R43
      337 CAPTURE                          VAL R34
      338 CAPTURE                          VAL R44
      339 CAPTURE                          VAL R45
      340 CAPTURE                          VAL R47
      341 CAPTURE                          VAL R49
      342 CAPTURE                          VAL R48
      343 CAPTURE                          VAL R8
      344 CAPTURE                          VAL R46
      345 SETTABLEKS                       R51 R39 K80 ["init"]
      347 DUPCLOSURE                       R51 K81 [PROTO_24]
      348 SETTABLEKS                       R51 R39 K82 ["unhookHeartbeat"]
      350 DUPCLOSURE                       R51 K83 [PROTO_30]
      351 CAPTURE                          VAL R9
      352 SETTABLEKS                       R51 R39 K84 ["hookHeartbeat"]
      354 DUPCLOSURE                       R51 K85 [PROTO_31]
      355 CAPTURE                          VAL R9
      356 SETTABLEKS                       R51 R39 K86 ["willUnmount"]
      358 DUPCLOSURE                       R51 K87 [PROTO_42]
      359 CAPTURE                          VAL R18
      360 CAPTURE                          VAL R19
      361 CAPTURE                          VAL R20
      362 CAPTURE                          VAL R21
      363 CAPTURE                          VAL R1
      364 CAPTURE                          VAL R17
      365 CAPTURE                          VAL R5
      366 CAPTURE                          VAL R2
      367 CAPTURE                          VAL R33
      368 CAPTURE                          VAL R11
      369 CAPTURE                          VAL R10
      370 CAPTURE                          VAL R9
      371 CAPTURE                          VAL R13
      372 CAPTURE                          VAL R15
      373 CAPTURE                          VAL R12
      374 CAPTURE                          VAL R16
      375 CAPTURE                          VAL R28
      376 CAPTURE                          VAL R27
      377 CAPTURE                          VAL R36
      378 CAPTURE                          VAL R34
      379 CAPTURE                          VAL R30
      380 CAPTURE                          VAL R29
      381 CAPTURE                          VAL R14
      382 CAPTURE                          VAL R32
      383 SETTABLEKS                       R51 R39 K88 ["render"]
      385 RETURN                           R39 1

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
        0 DUPTABLE                         R1 K1 [{"enabled"}]
        1 GETTABLEKS                       R3 R0 K0 ["enabled"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["enabled"]
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_2]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K2 ["hookHeartbeat"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["isPaused"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["isPaused"]
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K2 [{"paused"}]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["isPaused"]
       12 SETTABLEKS                       R3 R2 K1 ["paused"]
       14 NAMECALL                         R0 R0 K3 ["setState"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["state"]
        5 GETTABLEKS                       R0 R1 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+19]
        8 GETIMPORT                        R0 K4 [task.spawn]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CALL                             R0 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 1
       16 DUPTABLE                         R2 K5 [{"enabled"}]
       17 LOADB                            R3 0
       18 SETTABLEKS                       R3 R2 K1 ["enabled"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 1
       24 NAMECALL                         R0 R0 K7 ["unhookHeartbeat"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["state"]
        5 GETTABLEKS                       R1 R2 K1 ["enabled"]
        7 JUMPIFEQ                         R0 R1 ; [+20]
        9 GETIMPORT                        R1 K4 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 DUPTABLE                         R3 K5 [{"enabled"}]
       18 SETTABLEKS                       R0 R3 K1 ["enabled"]
       20 NAMECALL                         R1 R1 K6 ["setState"]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 1
       24 GETUPVAL                         R3 4
       25 NAMECALL                         R1 R1 K7 ["hookHeartbeat"]
       27 CALL                             R1 2 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+16]
        2 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["state"]
        7 GETTABLEKS                       R2 R3 K2 ["enabled"]
        9 JUMPIFEQ                         R1 R2 ; [+22]
       11 GETIMPORT                        R1 K5 [task.spawn]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 1
       19 DUPTABLE                         R3 K6 [{"enabled"}]
       20 GETTABLEKS                       R4 R0 K0 ["Enabled"]
       22 SETTABLEKS                       R4 R3 K2 ["enabled"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 GETUPVAL                         R1 1
       28 GETUPVAL                         R3 4
       29 NAMECALL                         R1 R1 K8 ["hookHeartbeat"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["props"]
        5 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R2 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K0 ["props"]
       23 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R1 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R3 K1 ["selectedCategory"]
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETTABLEKS                       R4 R0 K0 ["state"]
        7 GETTABLEKS                       R3 R4 K1 ["selectedCategory"]
        9 GETTABLEKS                       R2 R3 K2 ["module"]
       11 JUMPIFNOT                        R2 ; [+33]
       12 GETTABLEKS                       R5 R0 K0 ["state"]
       14 GETTABLEKS                       R4 R5 K1 ["selectedCategory"]
       16 GETTABLEKS                       R3 R4 K2 ["module"]
       18 GETTABLEKS                       R2 R3 K3 ["getIndexForId"]
       20 JUMPIFNOT                        R2 ; [+24]
       21 GETTABLEKS                       R5 R0 K0 ["state"]
       23 GETTABLEKS                       R4 R5 K1 ["selectedCategory"]
       25 GETTABLEKS                       R3 R4 K2 ["module"]
       27 GETTABLEKS                       R2 R3 K3 ["getIndexForId"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 1
       31 JUMPIFNOT                        R2 ; [+13]
       32 GETTABLEKS                       R4 R0 K4 ["virtualizedListRef"]
       34 GETTABLEKS                       R3 R4 K5 ["current"]
       36 JUMPIFNOT                        R3 ; [+8]
       37 GETTABLEKS                       R5 R0 K4 ["virtualizedListRef"]
       39 GETTABLEKS                       R4 R5 K5 ["current"]
       41 GETTABLEKS                       R3 R4 K6 ["scrollToIndex"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Id"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K1 ["state"]
       10 GETTABLEKS                       R1 R2 K2 ["selectedCategory"]
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K1 ["state"]
       16 GETTABLEKS                       R2 R3 K2 ["selectedCategory"]
       18 GETTABLEKS                       R1 R2 K3 ["module"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R2 R1 K4 ["onRightClick"]
       23 JUMPIFNOT                        R2 ; [+5]
       24 GETTABLEKS                       R2 R1 K4 ["onRightClick"]
       26 MOVE                             R3 R0
       27 CALL                             R2 1 0
       28 RETURN                           R0 0
       29 MOVE                             R2 R1
       30 JUMPIFNOT                        R2 ; [+7]
       31 GETTABLEKS                       R2 R1 K5 ["getNodeById"]
       33 JUMPIFNOT                        R2 ; [+4]
       34 GETTABLEKS                       R2 R1 K5 ["getNodeById"]
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R3 R2 K6 ["path"]
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETUPVAL                         R3 2
       44 LOADK                            R5 K7 ["SelectInstanceByPath"]
       45 GETTABLEKS                       R6 R2 K6 ["path"]
       47 NAMECALL                         R3 R3 K8 ["CallAssetPluginAsync"]
       49 CALL                             R3 3 0
       50 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 DUPTABLE                         R3 K2 [{"Text", "OnItemClicked"}]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K3 ["localization"]
        8 LOADK                            R6 K4 ["ContextMenu"]
        9 LOADK                            R7 K5 ["SelectInstances"]
       10 NAMECALL                         R4 R4 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K0 ["Text"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U1
       19 SETTABLEKS                       R4 R3 K1 ["OnItemClicked"]
       21 SETTABLEKS                       R3 R1 K7 ["SelectInstance"]
       23 FASTCALL2K                       TABLE_INSERT R2 K7 ; [+5]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K7 ["SelectInstance"]
       27 GETIMPORT                        R3 K10 [table.insert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K11 ["props"]
       33 GETTABLEKS                       R3 R4 K12 ["Plugin"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K13 ["UI"]
       38 GETTABLEKS                       R4 R5 K14 ["showContextMenu"]
       40 MOVE                             R5 R3
       41 MOVE                             R6 R1
       42 MOVE                             R7 R2
       43 CALL                             R4 3 0
       44 RETURN                           R0 0

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R0 R1 K0 ["onNodeSelectedFromTreemap"]
        4 GETUPVAL                         R1 0
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedIdsHash"}]
        2 MOVE                             R4 R0
        3 JUMPIF                           R4 ; [+3]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K2 ["None"]
        7 SETTABLEKS                       R4 R3 K0 ["selectedIdsHash"]
        9 NAMECALL                         R1 R1 K3 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"windowHeight"}]
        2 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R5 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["windowHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["setScrollHeight"]
        3 GETTABLEKS                       R3 R0 K1 ["CanvasPosition"]
        5 GETTABLEKS                       R2 R3 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isPaused"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K1 ["forceUpdateOnce"]
        6 DUPTABLE                         R2 K8 [{"selectedIdsHash", "enabled", "windowHeight", "paused", "searchTerm", "selectedCategory"}]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["selectedIdsHash"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["enabled"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["windowHeight"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["paused"]
       19 LOADK                            R3 K9 [""]
       20 SETTABLEKS                       R3 R2 K6 ["searchTerm"]
       22 LOADNIL                          R3
       23 SETTABLEKS                       R3 R2 K7 ["selectedCategory"]
       25 SETTABLEKS                       R2 R0 K10 ["state"]
       27 NEWCLOSURE                       R2 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R2 R0 K11 ["toggleEnabled"]
       32 GETTABLEKS                       R2 R1 K12 ["Plugin"]
       34 LOADK                            R4 K13 ["Actions"]
       35 NAMECALL                         R2 R2 K14 ["GetPluginComponent"]
       37 CALL                             R2 2 1
       38 GETUPVAL                         R3 0
       39 JUMPIFNOT                        R3 ; [+8]
       40 GETIMPORT                        R3 K17 [task.spawn]
       42 NEWCLOSURE                       R4 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R1
       47 CALL                             R3 1 0
       48 NEWCLOSURE                       R3 P2
       49 CAPTURE                          VAL R0
       50 SETTABLEKS                       R3 R0 K18 ["togglePause"]
       52 NEWCLOSURE                       R3 P3
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U1
       57 SETTABLEKS                       R3 R0 K19 ["onClose"]
       59 NEWCLOSURE                       R3 P4
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R3 R0 K20 ["onRestore"]
       67 NEWCLOSURE                       R3 P5
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R2
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R3 R0 K21 ["onWidgetEnabledChanged"]
       75 NEWCLOSURE                       R3 P6
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R3 R0 K22 ["onDockWidgetCreated"]
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R4 R5 K23 ["Localization"]
       83 GETTABLEKS                       R3 R4 K24 ["new"]
       85 DUPTABLE                         R4 K28 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       86 GETUPVAL                         R5 3
       87 SETTABLEKS                       R5 R4 K25 ["stringResourceTable"]
       89 GETUPVAL                         R5 4
       90 SETTABLEKS                       R5 R4 K26 ["translationResourceTable"]
       92 LOADK                            R5 K29 ["SceneAnalysis"]
       93 SETTABLEKS                       R5 R4 K27 ["pluginName"]
       95 CALL                             R3 1 1
       96 SETTABLEKS                       R3 R0 K30 ["localization"]
       98 GETUPVAL                         R5 2
       99 GETTABLEKS                       R4 R5 K31 ["Analytics"]
      101 GETTABLEKS                       R3 R4 K24 ["new"]
      103 DUPCLOSURE                       R4 K32 [PROTO_14]
      104 NEWTABLE                         R5 0 0
      106 CALL                             R3 2 1
      107 SETTABLEKS                       R3 R0 K33 ["analytics"]
      109 GETUPVAL                         R4 5
      110 GETTABLEKS                       R3 R4 K34 ["createRef"]
      112 CALL                             R3 0 1
      113 SETTABLEKS                       R3 R0 K35 ["treemapRef"]
      115 LOADN                            R3 0
      116 SETTABLEKS                       R3 R0 K36 ["timeOfNextAutomaticUpdate"]
      118 LOADN                            R3 1
      119 SETTABLEKS                       R3 R0 K37 ["delayBetweenAutomaticUpdates"]
      121 MOVE                             R5 R1
      122 NAMECALL                         R3 R0 K38 ["hookHeartbeat"]
      124 CALL                             R3 2 0
      125 GETUPVAL                         R4 6
      126 GETTABLEKS                       R3 R4 K39 ["create"]
      128 LOADN                            R4 0
      129 CALL                             R3 1 2
      130 SETTABLEKS                       R3 R0 K40 ["scrollHeightObservable"]
      132 SETTABLEKS                       R4 R0 K41 ["setScrollHeight"]
      134 GETUPVAL                         R4 5
      135 GETTABLEKS                       R3 R4 K34 ["createRef"]
      137 CALL                             R3 0 1
      138 SETTABLEKS                       R3 R0 K42 ["scrollRef"]
      140 GETUPVAL                         R4 5
      141 GETTABLEKS                       R3 R4 K34 ["createRef"]
      143 CALL                             R3 0 1
      144 SETTABLEKS                       R3 R0 K43 ["virtualizedListRef"]
      146 DUPCLOSURE                       R3 K44 [PROTO_15]
      147 SETTABLEKS                       R3 R0 K45 ["onNodeSelectedFromTreemap"]
      149 NEWCLOSURE                       R3 P9
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          UPVAL U8
      153 SETTABLEKS                       R3 R0 K46 ["onNodeRightClicked"]
      155 GETUPVAL                         R4 9
      156 GETTABLEKS                       R3 R4 K24 ["new"]
      158 GETTABLEKS                       R4 R0 K35 ["treemapRef"]
      160 GETTABLEKS                       R5 R0 K43 ["virtualizedListRef"]
      162 NEWCLOSURE                       R6 P10
      163 CAPTURE                          VAL R0
      164 GETTABLEKS                       R7 R0 K46 ["onNodeRightClicked"]
      166 NEWCLOSURE                       R8 P11
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U10
      169 CALL                             R3 5 1
      170 SETTABLEKS                       R3 R0 K47 ["treemapContext"]
      172 NEWCLOSURE                       R3 P12
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R3 R0 K48 ["onAbsoluteSizeChange"]
      176 NEWCLOSURE                       R3 P13
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R3 R0 K49 ["onCanvasPositionChange"]
      180 GETUPVAL                         R4 11
      181 GETTABLEKS                       R3 R4 K24 ["new"]
      183 CALL                             R3 0 1
      184 SETTABLEKS                       R3 R0 K50 ["DEPRECATED_stylizer"]
      186 GETUPVAL                         R5 12
      187 GETTABLEKS                       R4 R5 K51 ["Util"]
      189 GETTABLEKS                       R3 R4 K52 ["createFoundationDesignBinding"]
      191 CALL                             R3 0 2
      192 SETTABLEKS                       R4 R0 K53 ["onFoundationStyleSheetChange"]
      194 GETUPVAL                         R5 13
      195 GETTABLEKS                       R6 R1 K12 ["Plugin"]
      197 LOADNIL                          R7
      198 LOADNIL                          R8
      199 NEWTABLE                         R9 0 1
      201 MOVE                             R10 R3
      202 SETLIST                          R9 R10 1 [1]
      204 CALL                             R5 4 1
      205 SETTABLEKS                       R5 R0 K54 ["design"]
      207 NEWTABLE                         R5 0 6
      209 DUPTABLE                         R6 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      210 LOADK                            R7 K61 ["Unparented"]
      211 SETTABLEKS                       R7 R6 K55 ["id"]
      213 GETTABLEKS                       R7 R0 K30 ["localization"]
      215 LOADK                            R9 K62 ["Categories"]
      216 LOADK                            R10 K63 ["UnparentedInstances"]
      217 NAMECALL                         R7 R7 K64 ["getText"]
      219 CALL                             R7 3 1
      220 SETTABLEKS                       R7 R6 K56 ["text"]
      222 GETUPVAL                         R7 14
      223 SETTABLEKS                       R7 R6 K57 ["module"]
      225 LOADK                            R7 K65 ["instanceCount"]
      226 SETTABLEKS                       R7 R6 K58 ["valueFormat"]
      228 GETUPVAL                         R8 15
      229 GETTABLEKS                       R7 R8 K66 ["Default"]
      231 SETTABLEKS                       R7 R6 K59 ["colorRamp"]
      233 DUPTABLE                         R7 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      234 LOADK                            R8 K67 ["Script"]
      235 SETTABLEKS                       R8 R7 K55 ["id"]
      237 GETTABLEKS                       R8 R0 K30 ["localization"]
      239 LOADK                            R10 K62 ["Categories"]
      240 LOADK                            R11 K68 ["ScriptMemoryUsage"]
      241 NAMECALL                         R8 R8 K64 ["getText"]
      243 CALL                             R8 3 1
      244 SETTABLEKS                       R8 R7 K56 ["text"]
      246 GETUPVAL                         R8 16
      247 SETTABLEKS                       R8 R7 K57 ["module"]
      249 LOADK                            R8 K69 ["memory"]
      250 SETTABLEKS                       R8 R7 K58 ["valueFormat"]
      252 GETUPVAL                         R9 15
      253 GETTABLEKS                       R8 R9 K70 ["IceBlue"]
      255 SETTABLEKS                       R8 R7 K59 ["colorRamp"]
      257 DUPTABLE                         R8 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      258 LOADK                            R9 K71 ["Triangles"]
      259 SETTABLEKS                       R9 R8 K55 ["id"]
      261 GETTABLEKS                       R9 R0 K30 ["localization"]
      263 LOADK                            R11 K62 ["Categories"]
      264 LOADK                            R12 K72 ["SceneTriangles"]
      265 NAMECALL                         R9 R9 K64 ["getText"]
      267 CALL                             R9 3 1
      268 SETTABLEKS                       R9 R8 K56 ["text"]
      270 GETUPVAL                         R9 17
      271 SETTABLEKS                       R9 R8 K57 ["module"]
      273 LOADK                            R9 K73 ["count"]
      274 SETTABLEKS                       R9 R8 K58 ["valueFormat"]
      276 GETUPVAL                         R10 15
      277 GETTABLEKS                       R9 R10 K74 ["Forest"]
      279 SETTABLEKS                       R9 R8 K59 ["colorRamp"]
      281 DUPTABLE                         R9 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      282 LOADK                            R10 K75 ["InstanceComposition"]
      283 SETTABLEKS                       R10 R9 K55 ["id"]
      285 GETTABLEKS                       R10 R0 K30 ["localization"]
      287 LOADK                            R12 K62 ["Categories"]
      288 LOADK                            R13 K75 ["InstanceComposition"]
      289 NAMECALL                         R10 R10 K64 ["getText"]
      291 CALL                             R10 3 1
      292 SETTABLEKS                       R10 R9 K56 ["text"]
      294 GETUPVAL                         R10 18
      295 SETTABLEKS                       R10 R9 K57 ["module"]
      297 LOADK                            R10 K65 ["instanceCount"]
      298 SETTABLEKS                       R10 R9 K58 ["valueFormat"]
      300 GETUPVAL                         R11 15
      301 GETTABLEKS                       R10 R11 K66 ["Default"]
      303 SETTABLEKS                       R10 R9 K59 ["colorRamp"]
      305 DUPTABLE                         R10 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      306 LOADK                            R11 K76 ["Audio"]
      307 SETTABLEKS                       R11 R10 K55 ["id"]
      309 GETTABLEKS                       R11 R0 K30 ["localization"]
      311 LOADK                            R13 K62 ["Categories"]
      312 LOADK                            R14 K77 ["AudioMemory"]
      313 NAMECALL                         R11 R11 K64 ["getText"]
      315 CALL                             R11 3 1
      316 SETTABLEKS                       R11 R10 K56 ["text"]
      318 GETUPVAL                         R11 19
      319 SETTABLEKS                       R11 R10 K57 ["module"]
      321 LOADK                            R11 K69 ["memory"]
      322 SETTABLEKS                       R11 R10 K58 ["valueFormat"]
      324 GETUPVAL                         R12 15
      325 GETTABLEKS                       R11 R12 K70 ["IceBlue"]
      327 SETTABLEKS                       R11 R10 K59 ["colorRamp"]
      329 DUPTABLE                         R11 K60 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      330 LOADK                            R12 K78 ["Animation"]
      331 SETTABLEKS                       R12 R11 K55 ["id"]
      333 GETTABLEKS                       R12 R0 K30 ["localization"]
      335 LOADK                            R14 K62 ["Categories"]
      336 LOADK                            R15 K79 ["AnimationMemory"]
      337 NAMECALL                         R12 R12 K64 ["getText"]
      339 CALL                             R12 3 1
      340 SETTABLEKS                       R12 R11 K56 ["text"]
      342 GETUPVAL                         R12 20
      343 SETTABLEKS                       R12 R11 K57 ["module"]
      345 LOADK                            R12 K69 ["memory"]
      346 SETTABLEKS                       R12 R11 K58 ["valueFormat"]
      348 GETUPVAL                         R13 15
      349 GETTABLEKS                       R12 R13 K70 ["IceBlue"]
      351 SETTABLEKS                       R12 R11 K59 ["colorRamp"]
      353 SETLIST                          R5 R6 6 [1]
      355 SETTABLEKS                       R5 R0 K80 ["categories"]
      357 DUPTABLE                         R7 K81 [{"selectedCategory"}]
      358 GETTABLEKS                       R9 R0 K80 ["categories"]
      360 GETTABLEN                        R8 R9 4
      361 SETTABLEKS                       R8 R7 K7 ["selectedCategory"]
      363 NAMECALL                         R5 R0 K82 ["setState"]
      365 CALL                             R5 2 0
      366 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["treemapRef"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["treemapRef"]
        9 NAMECALL                         R0 R0 K1 ["getValue"]
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K2 ["state"]
       18 GETTABLEKS                       R1 R2 K3 ["selectedCategory"]
       20 GETUPVAL                         R2 1
       21 JUMPIFEQ                         R1 R2 ; [+2]
       23 RETURN                           R0 0
       24 GETIMPORT                        R1 K5 [pcall]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CALL                             R1 1 2
       30 JUMPIF                           R1 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 2
       33 JUMPIFNOT                        R3 ; [+22]
       34 GETUPVAL                         R3 2
       35 JUMPIFEQKS                       R3 K6 [""] ; [+20]
       37 MOVE                             R3 R2
       38 GETUPVAL                         R4 2
       39 JUMPIFNOT                        R3 ; [+3]
       40 JUMPIFNOT                        R4 ; [+2]
       41 JUMPIFNOTEQKS                    R4 K6 [""] ; [+3]
       43 MOVE                             R2 R3
       44 JUMP                             ; [+11]
       45 GETIMPORT                        R5 K9 [string.lower]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 1
       49 NEWCLOSURE                       R6 P1
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 MOVE                             R7 R6
       53 MOVE                             R8 R3
       54 CALL                             R7 1 1
       55 MOVE                             R2 R7
       56 JUMPIF                           R2 ; [+15]
       57 DUPTABLE                         R3 K14 [{"Id", "Name", "Size", "Children"}]
       58 LOADN                            R4 0
       59 SETTABLEKS                       R4 R3 K10 ["Id"]
       61 LOADK                            R4 K15 ["Root"]
       62 SETTABLEKS                       R4 R3 K11 ["Name"]
       64 LOADN                            R4 0
       65 SETTABLEKS                       R4 R3 K12 ["Size"]
       67 NEWTABLE                         R4 0 0
       69 SETTABLEKS                       R4 R3 K13 ["Children"]
       71 MOVE                             R2 R3
       72 MOVE                             R5 R2
       73 NAMECALL                         R3 R0 K16 ["submitTreemapNodes"]
       75 CALL                             R3 2 0
       76 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["enabled"]
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["treemapRef"]
       11 JUMPIFNOT                        R1 ; [+11]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K2 ["treemapRef"]
       15 NAMECALL                         R1 R1 K3 ["getValue"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+4]
       19 MOVE                             R4 R0
       20 NAMECALL                         R2 R1 K4 ["heartbeat"]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K5 ["isPaused"]
       26 JUMPIF                           R1 ; [+8]
       27 GETIMPORT                        R1 K7 [tick]
       29 CALL                             R1 0 1
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R2 R3 K8 ["timeOfNextAutomaticUpdate"]
       33 JUMPIFLT                         R2 R1 ; [+5]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R1 R2 K9 ["forceUpdateOnce"]
       38 JUMPIFNOT                        R1 ; [+31]
       39 GETUPVAL                         R1 0
       40 LOADB                            R2 0
       41 SETTABLEKS                       R2 R1 K9 ["forceUpdateOnce"]
       43 GETUPVAL                         R1 0
       44 GETIMPORT                        R3 K7 [tick]
       46 CALL                             R3 0 1
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K10 ["delayBetweenAutomaticUpdates"]
       50 ADD                              R2 R3 R4
       51 SETTABLEKS                       R2 R1 K8 ["timeOfNextAutomaticUpdate"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R2 R3 K0 ["state"]
       56 GETTABLEKS                       R1 R2 K11 ["selectedCategory"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K0 ["state"]
       61 GETTABLEKS                       R2 R3 K12 ["searchTerm"]
       63 GETIMPORT                        R3 K15 [task.spawn]
       65 NEWCLOSURE                       R4 P0
       66 CAPTURE                          UPVAL U0
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R2
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

PROTO_27:
        0 NAMECALL                         R2 R0 K0 ["unhookHeartbeat"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R3 K2 [game]
        5 LOADK                            R5 K3 ["RunService"]
        6 NAMECALL                         R3 R3 K4 ["GetService"]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R2 R3 K5 ["Heartbeat"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R2 R2 K6 ["Connect"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K7 ["heartbeatConnection"]
       18 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R2 K2 ["mainButton"]
        8 GETTABLEKS                       R4 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R4 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["actionActivatedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R2 R5 K0 ["categories"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K1 ["id"]
        8 JUMPIFNOTEQ                      R7 R0 ; [+33]
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R10 R11 K2 ["state"]
       13 GETTABLEKS                       R9 R10 K3 ["selectedCategory"]
       15 GETTABLEKS                       R8 R9 K4 ["module"]
       17 GETTABLEKS                       R7 R8 K5 ["reset"]
       19 CALL                             R7 0 0
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R7 R8 K6 ["treemapContext"]
       23 NAMECALL                         R7 R7 K7 ["clearSelectedNodes"]
       25 CALL                             R7 1 0
       26 GETUPVAL                         R7 0
       27 LOADN                            R8 0
       28 SETTABLEKS                       R8 R7 K8 ["timeOfNextAutomaticUpdate"]
       30 GETUPVAL                         R7 0
       31 LOADB                            R8 1
       32 SETTABLEKS                       R8 R7 K9 ["forceUpdateOnce"]
       34 GETUPVAL                         R7 0
       35 DUPTABLE                         R9 K10 [{"selectedCategory"}]
       36 SETTABLEKS                       R6 R9 K3 ["selectedCategory"]
       38 NAMECALL                         R7 R7 K11 ["setState"]
       40 CALL                             R7 2 0
       41 RETURN                           R0 0
       42 FORGLOOP                         R2 2 ; [-37]
       44 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["timeOfNextAutomaticUpdate"]
       11 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["provide"]
       11 NEWTABLE                         R6 0 6
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K5 ["new"]
       16 MOVE                             R8 R3
       17 CALL                             R7 1 1
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R8 R9 K5 ["new"]
       21 NAMECALL                         R9 R3 K6 ["getMouse"]
       23 CALL                             R9 1 -1
       24 CALL                             R8 -1 1
       25 GETTABLEKS                       R9 R0 K7 ["localization"]
       27 GETTABLEKS                       R10 R0 K8 ["analytics"]
       29 GETTABLEKS                       R11 R0 K9 ["DEPRECATED_stylizer"]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R12 R13 K5 ["new"]
       34 GETTABLEKS                       R13 R0 K10 ["design"]
       36 CALL                             R12 1 -1
       37 SETLIST                          R6 R7 -1 [1]
       39 DUPTABLE                         R7 K12 [{"MainWidget"}]
       40 GETUPVAL                         R9 4
       41 GETTABLEKS                       R8 R9 K13 ["createElement"]
       43 GETUPVAL                         R9 5
       44 NEWTABLE                         R10 16 0
       46 LOADK                            R11 K14 ["SceneAnalysis"]
       47 SETTABLEKS                       R11 R10 K15 ["Id"]
       49 SETTABLEKS                       R4 R10 K16 ["Enabled"]
       51 GETTABLEKS                       R11 R0 K7 ["localization"]
       53 LOADK                            R13 K2 ["Plugin"]
       54 LOADK                            R14 K17 ["Name"]
       55 NAMECALL                         R11 R11 K18 ["getText"]
       57 CALL                             R11 3 1
       58 SETTABLEKS                       R11 R10 K19 ["Title"]
       60 GETIMPORT                        R11 K23 [Enum.ZIndexBehavior.Sibling]
       62 SETTABLEKS                       R11 R10 K21 ["ZIndexBehavior"]
       64 GETIMPORT                        R11 K26 [Enum.InitialDockState.Bottom]
       66 SETTABLEKS                       R11 R10 K24 ["InitialDockState"]
       68 GETIMPORT                        R11 K28 [Vector2.new]
       70 LOADN                            R12 128
       71 LOADN                            R13 224
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K29 ["Size"]
       75 GETIMPORT                        R11 K28 [Vector2.new]
       77 LOADN                            R12 250
       78 LOADN                            R13 200
       79 CALL                             R11 2 1
       80 SETTABLEKS                       R11 R10 K30 ["MinSize"]
       82 GETTABLEKS                       R11 R0 K31 ["onClose"]
       84 SETTABLEKS                       R11 R10 K32 ["OnClose"]
       86 LOADB                            R11 1
       87 SETTABLEKS                       R11 R10 K33 ["ShouldRestore"]
       89 GETTABLEKS                       R11 R0 K34 ["onRestore"]
       91 SETTABLEKS                       R11 R10 K35 ["OnWidgetRestored"]
       93 GETTABLEKS                       R12 R1 K36 ["PluginLoaderContext"]
       95 GETTABLEKS                       R11 R12 K37 ["mainDockWidget"]
       97 SETTABLEKS                       R11 R10 K38 ["Widget"]
       99 GETTABLEKS                       R11 R0 K39 ["onDockWidgetCreated"]
      101 SETTABLEKS                       R11 R10 K40 ["OnWidgetCreated"]
      103 GETTABLEKS                       R11 R0 K10 ["design"]
      105 SETTABLEKS                       R11 R10 K41 ["PluginDesign"]
      107 GETUPVAL                         R13 4
      108 GETTABLEKS                       R12 R13 K42 ["Change"]
      110 GETTABLEKS                       R11 R12 K16 ["Enabled"]
      112 GETTABLEKS                       R12 R0 K43 ["onWidgetEnabledChanged"]
      114 SETTABLE                         R12 R10 R11
      115 DUPTABLE                         R11 K45 [{"Foundations"}]
      116 GETUPVAL                         R13 4
      117 GETTABLEKS                       R12 R13 K13 ["createElement"]
      119 GETUPVAL                         R13 6
      120 DUPTABLE                         R14 K47 [{"onStyleSheetChange"}]
      121 GETTABLEKS                       R15 R0 K48 ["onFoundationStyleSheetChange"]
      123 SETTABLEKS                       R15 R14 K46 ["onStyleSheetChange"]
      125 DUPTABLE                         R15 K50 [{"ContextStack"}]
      126 GETUPVAL                         R17 4
      127 GETTABLEKS                       R16 R17 K13 ["createElement"]
      129 GETUPVAL                         R18 7
      130 GETTABLEKS                       R17 R18 K49 ["ContextStack"]
      132 DUPTABLE                         R18 K52 [{"providers"}]
      133 NEWTABLE                         R19 0 1
      135 GETUPVAL                         R21 4
      136 GETTABLEKS                       R20 R21 K13 ["createElement"]
      138 GETUPVAL                         R21 8
      139 CALL                             R20 1 -1
      140 SETLIST                          R19 R20 -1 [1]
      142 SETTABLEKS                       R19 R18 K51 ["providers"]
      144 DUPTABLE                         R19 K56 [{"Wrapper", "StyleLink", "WidgetRegister"}]
      145 GETUPVAL                         R21 4
      146 GETTABLEKS                       R20 R21 K13 ["createElement"]
      148 LOADK                            R21 K57 ["Frame"]
      149 NEWTABLE                         R22 1 0
      151 GETUPVAL                         R24 4
      152 GETTABLEKS                       R23 R24 K58 ["Tag"]
      154 LOADK                            R24 K59 ["X-Fill X-Column SceneAnalysis-BackgroundColor"]
      155 SETTABLE                         R24 R22 R23
      156 DUPTABLE                         R23 K62 [{"ContentArea", "WarningBar"}]
      157 GETUPVAL                         R25 4
      158 GETTABLEKS                       R24 R25 K13 ["createElement"]
      160 LOADK                            R25 K57 ["Frame"]
      161 DUPTABLE                         R26 K64 [{"Size", "BackgroundTransparency"}]
      162 GETIMPORT                        R27 K66 [UDim2.new]
      164 LOADN                            R28 1
      165 LOADN                            R29 0
      166 LOADN                            R30 1
      167 LOADN                            R31 232
      168 CALL                             R27 4 1
      169 SETTABLEKS                       R27 R26 K29 ["Size"]
      171 LOADN                            R27 1
      172 SETTABLEKS                       R27 R26 K63 ["BackgroundTransparency"]
      174 DUPTABLE                         R27 K70 [{"Layout", "DropdownFrame", "SplitPane"}]
      175 GETUPVAL                         R29 4
      176 GETTABLEKS                       R28 R29 K13 ["createElement"]
      178 LOADK                            R29 K71 ["UIListLayout"]
      179 DUPTABLE                         R30 K77 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      180 GETIMPORT                        R31 K79 [UDim.new]
      182 LOADN                            R32 0
      183 LOADN                            R33 0
      184 CALL                             R31 2 1
      185 SETTABLEKS                       R31 R30 K72 ["Padding"]
      187 GETIMPORT                        R31 K81 [Enum.FillDirection.Vertical]
      189 SETTABLEKS                       R31 R30 K73 ["FillDirection"]
      191 GETIMPORT                        R31 K83 [Enum.HorizontalAlignment.Left]
      193 SETTABLEKS                       R31 R30 K74 ["HorizontalAlignment"]
      195 GETIMPORT                        R31 K85 [Enum.VerticalAlignment.Top]
      197 SETTABLEKS                       R31 R30 K75 ["VerticalAlignment"]
      199 GETIMPORT                        R31 K87 [Enum.SortOrder.LayoutOrder]
      201 SETTABLEKS                       R31 R30 K76 ["SortOrder"]
      203 CALL                             R28 2 1
      204 SETTABLEKS                       R28 R27 K67 ["Layout"]
      206 GETUPVAL                         R29 4
      207 GETTABLEKS                       R28 R29 K13 ["createElement"]
      209 LOADK                            R29 K57 ["Frame"]
      210 DUPTABLE                         R30 K88 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      211 GETIMPORT                        R31 K66 [UDim2.new]
      213 LOADN                            R32 1
      214 LOADN                            R33 0
      215 LOADN                            R34 0
      216 LOADN                            R35 30
      217 CALL                             R31 4 1
      218 SETTABLEKS                       R31 R30 K29 ["Size"]
      220 LOADN                            R31 1
      221 SETTABLEKS                       R31 R30 K86 ["LayoutOrder"]
      223 LOADN                            R31 1
      224 SETTABLEKS                       R31 R30 K63 ["BackgroundTransparency"]
      226 DUPTABLE                         R31 K92 [{"UIPadding", "LeftGroup", "RightGroup"}]
      227 GETUPVAL                         R33 4
      228 GETTABLEKS                       R32 R33 K13 ["createElement"]
      230 LOADK                            R33 K89 ["UIPadding"]
      231 DUPTABLE                         R34 K97 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      232 GETIMPORT                        R35 K79 [UDim.new]
      234 LOADN                            R36 0
      235 LOADN                            R37 4
      236 CALL                             R35 2 1
      237 SETTABLEKS                       R35 R34 K93 ["PaddingLeft"]
      239 GETIMPORT                        R35 K79 [UDim.new]
      241 LOADN                            R36 0
      242 LOADN                            R37 4
      243 CALL                             R35 2 1
      244 SETTABLEKS                       R35 R34 K94 ["PaddingRight"]
      246 GETIMPORT                        R35 K79 [UDim.new]
      248 LOADN                            R36 0
      249 LOADN                            R37 4
      250 CALL                             R35 2 1
      251 SETTABLEKS                       R35 R34 K95 ["PaddingTop"]
      253 GETIMPORT                        R35 K79 [UDim.new]
      255 LOADN                            R36 0
      256 LOADN                            R37 4
      257 CALL                             R35 2 1
      258 SETTABLEKS                       R35 R34 K96 ["PaddingBottom"]
      260 CALL                             R32 2 1
      261 SETTABLEKS                       R32 R31 K89 ["UIPadding"]
      263 GETUPVAL                         R33 4
      264 GETTABLEKS                       R32 R33 K13 ["createElement"]
      266 LOADK                            R33 K57 ["Frame"]
      267 DUPTABLE                         R34 K99 [{"AutomaticSize", "Size", "BackgroundTransparency"}]
      268 GETIMPORT                        R35 K101 [Enum.AutomaticSize.X]
      270 SETTABLEKS                       R35 R34 K98 ["AutomaticSize"]
      272 GETIMPORT                        R35 K66 [UDim2.new]
      274 LOADN                            R36 0
      275 LOADN                            R37 0
      276 LOADN                            R38 1
      277 LOADN                            R39 0
      278 CALL                             R35 4 1
      279 SETTABLEKS                       R35 R34 K29 ["Size"]
      281 LOADN                            R35 1
      282 SETTABLEKS                       R35 R34 K63 ["BackgroundTransparency"]
      284 DUPTABLE                         R35 K104 [{"Layout", "DropdownContainer", "FilterContainer"}]
      285 GETUPVAL                         R37 4
      286 GETTABLEKS                       R36 R37 K13 ["createElement"]
      288 LOADK                            R37 K71 ["UIListLayout"]
      289 DUPTABLE                         R38 K105 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      290 GETIMPORT                        R39 K107 [Enum.FillDirection.Horizontal]
      292 SETTABLEKS                       R39 R38 K73 ["FillDirection"]
      294 GETIMPORT                        R39 K83 [Enum.HorizontalAlignment.Left]
      296 SETTABLEKS                       R39 R38 K74 ["HorizontalAlignment"]
      298 GETIMPORT                        R39 K109 [Enum.VerticalAlignment.Center]
      300 SETTABLEKS                       R39 R38 K75 ["VerticalAlignment"]
      302 GETIMPORT                        R39 K79 [UDim.new]
      304 LOADN                            R40 0
      305 LOADN                            R41 4
      306 CALL                             R39 2 1
      307 SETTABLEKS                       R39 R38 K72 ["Padding"]
      309 GETIMPORT                        R39 K87 [Enum.SortOrder.LayoutOrder]
      311 SETTABLEKS                       R39 R38 K76 ["SortOrder"]
      313 CALL                             R36 2 1
      314 SETTABLEKS                       R36 R35 K67 ["Layout"]
      316 GETUPVAL                         R37 4
      317 GETTABLEKS                       R36 R37 K13 ["createElement"]
      319 LOADK                            R37 K57 ["Frame"]
      320 DUPTABLE                         R38 K110 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      321 GETIMPORT                        R39 K112 [UDim2.fromOffset]
      323 LOADN                            R40 36
      324 LOADN                            R41 30
      325 CALL                             R39 2 1
      326 SETTABLEKS                       R39 R38 K29 ["Size"]
      328 LOADN                            R39 1
      329 SETTABLEKS                       R39 R38 K63 ["BackgroundTransparency"]
      331 LOADN                            R39 1
      332 SETTABLEKS                       R39 R38 K86 ["LayoutOrder"]
      334 DUPTABLE                         R39 K114 [{"UIListLayout", "Dropdown"}]
      335 GETUPVAL                         R41 4
      336 GETTABLEKS                       R40 R41 K13 ["createElement"]
      338 LOADK                            R41 K71 ["UIListLayout"]
      339 DUPTABLE                         R42 K115 [{"FillDirection", "VerticalAlignment"}]
      340 GETIMPORT                        R43 K107 [Enum.FillDirection.Horizontal]
      342 SETTABLEKS                       R43 R42 K73 ["FillDirection"]
      344 GETIMPORT                        R43 K109 [Enum.VerticalAlignment.Center]
      346 SETTABLEKS                       R43 R42 K75 ["VerticalAlignment"]
      348 CALL                             R40 2 1
      349 SETTABLEKS                       R40 R39 K71 ["UIListLayout"]
      351 GETUPVAL                         R41 4
      352 GETTABLEKS                       R40 R41 K13 ["createElement"]
      354 GETUPVAL                         R42 9
      355 GETTABLEKS                       R41 R42 K116 ["Root"]
      357 DUPTABLE                         R42 K123 [{"LayoutOrder", "label", "width", "size", "value", "items", "onItemChanged"}]
      358 LOADN                            R43 1
      359 SETTABLEKS                       R43 R42 K86 ["LayoutOrder"]
      361 LOADK                            R43 K124 [""]
      362 SETTABLEKS                       R43 R42 K117 ["label"]
      364 GETIMPORT                        R43 K79 [UDim.new]
      366 LOADN                            R44 0
      367 LOADN                            R45 36
      368 CALL                             R43 2 1
      369 SETTABLEKS                       R43 R42 K118 ["width"]
      371 GETUPVAL                         R46 10
      372 GETTABLEKS                       R45 R46 K125 ["Enums"]
      374 GETTABLEKS                       R44 R45 K126 ["InputSize"]
      376 GETTABLEKS                       R43 R44 K127 ["XSmall"]
      378 SETTABLEKS                       R43 R42 K119 ["size"]
      380 GETTABLEKS                       R45 R0 K1 ["state"]
      382 GETTABLEKS                       R44 R45 K128 ["selectedCategory"]
      384 GETTABLEKS                       R43 R44 K129 ["id"]
      386 SETTABLEKS                       R43 R42 K120 ["value"]
      388 GETTABLEKS                       R43 R0 K130 ["categories"]
      390 SETTABLEKS                       R43 R42 K121 ["items"]
      392 NEWCLOSURE                       R43 P0
      393 CAPTURE                          VAL R0
      394 SETTABLEKS                       R43 R42 K122 ["onItemChanged"]
      396 CALL                             R40 2 1
      397 SETTABLEKS                       R40 R39 K113 ["Dropdown"]
      399 CALL                             R36 3 1
      400 SETTABLEKS                       R36 R35 K102 ["DropdownContainer"]
      402 GETUPVAL                         R37 4
      403 GETTABLEKS                       R36 R37 K13 ["createElement"]
      405 LOADK                            R37 K57 ["Frame"]
      406 DUPTABLE                         R38 K110 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      407 GETIMPORT                        R39 K112 [UDim2.fromOffset]
      409 LOADN                            R40 192
      410 LOADN                            R41 30
      411 CALL                             R39 2 1
      412 SETTABLEKS                       R39 R38 K29 ["Size"]
      414 LOADN                            R39 1
      415 SETTABLEKS                       R39 R38 K63 ["BackgroundTransparency"]
      417 LOADN                            R39 2
      418 SETTABLEKS                       R39 R38 K86 ["LayoutOrder"]
      420 DUPTABLE                         R39 K132 [{"UIListLayout", "SearchInput"}]
      421 GETUPVAL                         R41 4
      422 GETTABLEKS                       R40 R41 K13 ["createElement"]
      424 LOADK                            R41 K71 ["UIListLayout"]
      425 DUPTABLE                         R42 K115 [{"FillDirection", "VerticalAlignment"}]
      426 GETIMPORT                        R43 K107 [Enum.FillDirection.Horizontal]
      428 SETTABLEKS                       R43 R42 K73 ["FillDirection"]
      430 GETIMPORT                        R43 K109 [Enum.VerticalAlignment.Center]
      432 SETTABLEKS                       R43 R42 K75 ["VerticalAlignment"]
      434 CALL                             R40 2 1
      435 SETTABLEKS                       R40 R39 K71 ["UIListLayout"]
      437 GETUPVAL                         R41 4
      438 GETTABLEKS                       R40 R41 K13 ["createElement"]
      440 GETUPVAL                         R41 11
      441 DUPTABLE                         R42 K137 [{"label", "leadingIcon", "placeholder", "width", "size", "text", "onChanged"}]
      442 LOADK                            R43 K124 [""]
      443 SETTABLEKS                       R43 R42 K117 ["label"]
      445 GETUPVAL                         R46 10
      446 GETTABLEKS                       R45 R46 K125 ["Enums"]
      448 GETTABLEKS                       R44 R45 K138 ["IconName"]
      450 GETTABLEKS                       R43 R44 K139 ["MagnifyingGlass"]
      452 SETTABLEKS                       R43 R42 K133 ["leadingIcon"]
      454 GETTABLEKS                       R43 R0 K7 ["localization"]
      456 LOADK                            R45 K140 ["Controls"]
      457 LOADK                            R46 K141 ["SearchPlaceholder"]
      458 NAMECALL                         R43 R43 K18 ["getText"]
      460 CALL                             R43 3 1
      461 SETTABLEKS                       R43 R42 K134 ["placeholder"]
      463 GETIMPORT                        R43 K79 [UDim.new]
      465 LOADN                            R44 0
      466 LOADN                            R45 192
      467 CALL                             R43 2 1
      468 SETTABLEKS                       R43 R42 K118 ["width"]
      470 GETUPVAL                         R46 10
      471 GETTABLEKS                       R45 R46 K125 ["Enums"]
      473 GETTABLEKS                       R44 R45 K126 ["InputSize"]
      475 GETTABLEKS                       R43 R44 K127 ["XSmall"]
      477 SETTABLEKS                       R43 R42 K119 ["size"]
      479 GETTABLEKS                       R45 R0 K1 ["state"]
      481 GETTABLEKS                       R44 R45 K142 ["searchTerm"]
      483 ORK                              R43 R44 K124 [""]
      484 SETTABLEKS                       R43 R42 K135 ["text"]
      486 NEWCLOSURE                       R43 P1
      487 CAPTURE                          VAL R0
      488 SETTABLEKS                       R43 R42 K136 ["onChanged"]
      490 CALL                             R40 2 1
      491 SETTABLEKS                       R40 R39 K131 ["SearchInput"]
      493 CALL                             R36 3 1
      494 SETTABLEKS                       R36 R35 K103 ["FilterContainer"]
      496 CALL                             R32 3 1
      497 SETTABLEKS                       R32 R31 K90 ["LeftGroup"]
      499 GETUPVAL                         R33 4
      500 GETTABLEKS                       R32 R33 K13 ["createElement"]
      502 LOADK                            R33 K57 ["Frame"]
      503 DUPTABLE                         R34 K145 [{"AnchorPoint", "Position", "Size", "BackgroundTransparency"}]
      504 GETIMPORT                        R35 K28 [Vector2.new]
      506 LOADN                            R36 1
      507 LOADK                            R37 K146 [0.5]
      508 CALL                             R35 2 1
      509 SETTABLEKS                       R35 R34 K143 ["AnchorPoint"]
      511 GETIMPORT                        R35 K66 [UDim2.new]
      513 LOADN                            R36 1
      514 LOADN                            R37 252
      515 LOADK                            R38 K146 [0.5]
      516 LOADN                            R39 0
      517 CALL                             R35 4 1
      518 SETTABLEKS                       R35 R34 K144 ["Position"]
      520 GETIMPORT                        R35 K66 [UDim2.new]
      522 LOADN                            R36 0
      523 LOADN                            R37 180
      524 LOADN                            R38 1
      525 LOADN                            R39 0
      526 CALL                             R35 4 1
      527 SETTABLEKS                       R35 R34 K29 ["Size"]
      529 LOADN                            R35 1
      530 SETTABLEKS                       R35 R34 K63 ["BackgroundTransparency"]
      532 DUPTABLE                         R35 K148 [{"Layout", "AutoupdateToggle"}]
      533 GETUPVAL                         R37 4
      534 GETTABLEKS                       R36 R37 K13 ["createElement"]
      536 LOADK                            R37 K71 ["UIListLayout"]
      537 DUPTABLE                         R38 K149 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      538 GETIMPORT                        R39 K107 [Enum.FillDirection.Horizontal]
      540 SETTABLEKS                       R39 R38 K73 ["FillDirection"]
      542 GETIMPORT                        R39 K151 [Enum.HorizontalAlignment.Right]
      544 SETTABLEKS                       R39 R38 K74 ["HorizontalAlignment"]
      546 GETIMPORT                        R39 K109 [Enum.VerticalAlignment.Center]
      548 SETTABLEKS                       R39 R38 K75 ["VerticalAlignment"]
      550 CALL                             R36 2 1
      551 SETTABLEKS                       R36 R35 K67 ["Layout"]
      553 GETUPVAL                         R37 4
      554 GETTABLEKS                       R36 R37 K13 ["createElement"]
      556 GETUPVAL                         R37 12
      557 DUPTABLE                         R38 K154 [{"isChecked", "label", "size", "onActivated"}]
      558 GETTABLEKS                       R40 R2 K155 ["paused"]
      560 NOT                              R39 R40
      561 SETTABLEKS                       R39 R38 K152 ["isChecked"]
      563 GETTABLEKS                       R39 R0 K7 ["localization"]
      565 LOADK                            R41 K140 ["Controls"]
      566 LOADK                            R42 K147 ["AutoupdateToggle"]
      567 NAMECALL                         R39 R39 K18 ["getText"]
      569 CALL                             R39 3 1
      570 SETTABLEKS                       R39 R38 K117 ["label"]
      572 GETUPVAL                         R40 13
      573 GETTABLEKS                       R39 R40 K156 ["Small"]
      575 SETTABLEKS                       R39 R38 K119 ["size"]
      577 NEWCLOSURE                       R39 P2
      578 CAPTURE                          VAL R0
      579 SETTABLEKS                       R39 R38 K153 ["onActivated"]
      581 CALL                             R36 2 1
      582 SETTABLEKS                       R36 R35 K147 ["AutoupdateToggle"]
      584 CALL                             R32 3 1
      585 SETTABLEKS                       R32 R31 K91 ["RightGroup"]
      587 CALL                             R28 3 1
      588 SETTABLEKS                       R28 R27 K68 ["DropdownFrame"]
      590 GETUPVAL                         R29 4
      591 GETTABLEKS                       R28 R29 K13 ["createElement"]
      593 GETUPVAL                         R29 14
      594 DUPTABLE                         R30 K163 [{"Size", "LayoutOrder", "InitialSizes", "UseScale", "ClampSize", "HideBars", "MinSizes", "MaxSizes", "Layout"}]
      595 GETIMPORT                        R31 K66 [UDim2.new]
      597 LOADN                            R32 1
      598 LOADN                            R33 0
      599 LOADN                            R34 1
      600 LOADN                            R35 0
      601 CALL                             R31 4 1
      602 SETTABLEKS                       R31 R30 K29 ["Size"]
      604 LOADN                            R31 2
      605 SETTABLEKS                       R31 R30 K86 ["LayoutOrder"]
      607 NEWTABLE                         R31 0 2
      609 GETIMPORT                        R32 K79 [UDim.new]
      611 LOADK                            R33 K146 [0.5]
      612 LOADN                            R34 0
      613 CALL                             R32 2 1
      614 GETIMPORT                        R33 K79 [UDim.new]
      616 LOADK                            R34 K146 [0.5]
      617 LOADN                            R35 0
      618 CALL                             R33 2 -1
      619 SETLIST                          R31 R32 -1 [1]
      621 SETTABLEKS                       R31 R30 K157 ["InitialSizes"]
      623 LOADB                            R31 1
      624 SETTABLEKS                       R31 R30 K158 ["UseScale"]
      626 LOADB                            R31 1
      627 SETTABLEKS                       R31 R30 K159 ["ClampSize"]
      629 LOADB                            R31 0
      630 SETTABLEKS                       R31 R30 K160 ["HideBars"]
      632 NEWTABLE                         R31 0 2
      634 GETIMPORT                        R32 K79 [UDim.new]
      636 LOADK                            R33 K164 [0.1]
      637 LOADN                            R34 0
      638 CALL                             R32 2 1
      639 GETIMPORT                        R33 K79 [UDim.new]
      641 LOADK                            R34 K164 [0.1]
      642 LOADN                            R35 0
      643 CALL                             R33 2 -1
      644 SETLIST                          R31 R32 -1 [1]
      646 SETTABLEKS                       R31 R30 K161 ["MinSizes"]
      648 NEWTABLE                         R31 0 2
      650 LOADNIL                          R32
      651 LOADNIL                          R33
      652 SETLIST                          R31 R32 2 [1]
      654 SETTABLEKS                       R31 R30 K162 ["MaxSizes"]
      656 GETIMPORT                        R31 K81 [Enum.FillDirection.Vertical]
      658 SETTABLEKS                       R31 R30 K67 ["Layout"]
      660 NEWTABLE                         R31 0 2
      662 GETUPVAL                         R33 4
      663 GETTABLEKS                       R32 R33 K13 ["createElement"]
      665 LOADK                            R33 K57 ["Frame"]
      666 DUPTABLE                         R34 K165 [{"Size", "Position", "BackgroundTransparency"}]
      667 GETIMPORT                        R35 K66 [UDim2.new]
      669 LOADN                            R36 1
      670 LOADN                            R37 0
      671 LOADN                            R38 1
      672 LOADN                            R39 0
      673 CALL                             R35 4 1
      674 SETTABLEKS                       R35 R34 K29 ["Size"]
      676 GETIMPORT                        R35 K66 [UDim2.new]
      678 LOADN                            R36 0
      679 LOADN                            R37 0
      680 LOADN                            R38 0
      681 LOADN                            R39 0
      682 CALL                             R35 4 1
      683 SETTABLEKS                       R35 R34 K144 ["Position"]
      685 LOADN                            R35 1
      686 SETTABLEKS                       R35 R34 K63 ["BackgroundTransparency"]
      688 DUPTABLE                         R35 K167 [{"Treemap"}]
      689 GETUPVAL                         R37 4
      690 GETTABLEKS                       R36 R37 K13 ["createElement"]
      692 GETUPVAL                         R37 15
      693 DUPTABLE                         R38 K173 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization"}]
      694 GETTABLEKS                       R39 R0 K174 ["treemapRef"]
      696 SETTABLEKS                       R39 R38 K168 ["ref"]
      698 GETIMPORT                        R39 K66 [UDim2.new]
      700 LOADN                            R40 1
      701 LOADN                            R41 248
      702 LOADN                            R42 1
      703 LOADN                            R43 248
      704 CALL                             R39 4 1
      705 SETTABLEKS                       R39 R38 K29 ["Size"]
      707 GETIMPORT                        R39 K66 [UDim2.new]
      709 LOADN                            R40 0
      710 LOADN                            R41 4
      711 LOADN                            R42 0
      712 LOADN                            R43 4
      713 CALL                             R39 4 1
      714 SETTABLEKS                       R39 R38 K144 ["Position"]
      716 GETUPVAL                         R40 16
      717 GETTABLEKS                       R39 R40 K175 ["mockData"]
      719 SETTABLEKS                       R39 R38 K169 ["NodeOutput"]
      721 GETTABLEKS                       R39 R0 K170 ["treemapContext"]
      723 SETTABLEKS                       R39 R38 K170 ["treemapContext"]
      725 GETTABLEKS                       R40 R2 K128 ["selectedCategory"]
      727 JUMPIFNOT                        R40 ; [+5]
      728 GETTABLEKS                       R40 R2 K128 ["selectedCategory"]
      730 GETTABLEKS                       R39 R40 K171 ["valueFormat"]
      732 JUMPIF                           R39 ; [+1]
      733 LOADK                            R39 K176 ["memory"]
      734 SETTABLEKS                       R39 R38 K171 ["valueFormat"]
      736 GETTABLEKS                       R40 R2 K128 ["selectedCategory"]
      738 JUMPIFNOT                        R40 ; [+5]
      739 GETTABLEKS                       R40 R2 K128 ["selectedCategory"]
      741 GETTABLEKS                       R39 R40 K172 ["colorRamp"]
      743 JUMPIF                           R39 ; [+3]
      744 GETUPVAL                         R40 17
      745 GETTABLEKS                       R39 R40 K177 ["Default"]
      747 SETTABLEKS                       R39 R38 K172 ["colorRamp"]
      749 GETTABLEKS                       R39 R0 K7 ["localization"]
      751 SETTABLEKS                       R39 R38 K7 ["localization"]
      753 CALL                             R36 2 1
      754 SETTABLEKS                       R36 R35 K166 ["Treemap"]
      756 CALL                             R32 3 1
      757 GETUPVAL                         R34 4
      758 GETTABLEKS                       R33 R34 K13 ["createElement"]
      760 LOADK                            R34 K57 ["Frame"]
      761 DUPTABLE                         R35 K64 [{"Size", "BackgroundTransparency"}]
      762 GETIMPORT                        R36 K66 [UDim2.new]
      764 LOADN                            R37 1
      765 LOADN                            R38 0
      766 LOADN                            R39 1
      767 LOADN                            R40 224
      768 CALL                             R36 4 1
      769 SETTABLEKS                       R36 R35 K29 ["Size"]
      771 LOADN                            R36 1
      772 SETTABLEKS                       R36 R35 K63 ["BackgroundTransparency"]
      774 DUPTABLE                         R36 K181 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper"}]
      775 GETUPVAL                         R38 4
      776 GETTABLEKS                       R37 R38 K13 ["createElement"]
      778 LOADK                            R38 K89 ["UIPadding"]
      779 DUPTABLE                         R39 K182 [{"PaddingLeft"}]
      780 GETIMPORT                        R40 K79 [UDim.new]
      782 LOADN                            R41 0
      783 LOADN                            R42 4
      784 CALL                             R40 2 1
      785 SETTABLEKS                       R40 R39 K93 ["PaddingLeft"]
      787 CALL                             R37 2 1
      788 SETTABLEKS                       R37 R36 K178 ["ListPadding"]
      790 GETUPVAL                         R38 4
      791 GETTABLEKS                       R37 R38 K13 ["createElement"]
      793 LOADK                            R38 K71 ["UIListLayout"]
      794 DUPTABLE                         R39 K183 [{"SortOrder", "FillDirection"}]
      795 GETIMPORT                        R40 K87 [Enum.SortOrder.LayoutOrder]
      797 SETTABLEKS                       R40 R39 K76 ["SortOrder"]
      799 GETIMPORT                        R40 K81 [Enum.FillDirection.Vertical]
      801 SETTABLEKS                       R40 R39 K73 ["FillDirection"]
      803 CALL                             R37 2 1
      804 SETTABLEKS                       R37 R36 K71 ["UIListLayout"]
      806 GETUPVAL                         R38 4
      807 GETTABLEKS                       R37 R38 K13 ["createElement"]
      809 GETUPVAL                         R38 18
      810 DUPTABLE                         R39 K187 [{"LayoutOrder", "query", "queryInfo", "selectedIdsHash", "localization"}]
      811 LOADN                            R40 1
      812 SETTABLEKS                       R40 R39 K86 ["LayoutOrder"]
      814 GETTABLEKS                       R41 R2 K128 ["selectedCategory"]
      816 JUMPIFNOT                        R41 ; [+5]
      817 GETTABLEKS                       R41 R2 K128 ["selectedCategory"]
      819 GETTABLEKS                       R40 R41 K188 ["module"]
      821 JUMP                             ; [+1]
      822 LOADNIL                          R40
      823 SETTABLEKS                       R40 R39 K184 ["query"]
      825 GETTABLEKS                       R40 R2 K128 ["selectedCategory"]
      827 SETTABLEKS                       R40 R39 K185 ["queryInfo"]
      829 GETTABLEKS                       R40 R2 K186 ["selectedIdsHash"]
      831 SETTABLEKS                       R40 R39 K186 ["selectedIdsHash"]
      833 GETTABLEKS                       R40 R0 K7 ["localization"]
      835 SETTABLEKS                       R40 R39 K7 ["localization"]
      837 CALL                             R37 2 1
      838 SETTABLEKS                       R37 R36 K179 ["Summary"]
      840 GETUPVAL                         R38 4
      841 GETTABLEKS                       R37 R38 K13 ["createElement"]
      843 LOADK                            R38 K57 ["Frame"]
      844 DUPTABLE                         R39 K88 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      845 GETIMPORT                        R40 K66 [UDim2.new]
      847 LOADN                            R41 1
      848 LOADN                            R42 0
      849 LOADN                            R43 1
      850 LOADN                            R44 222
      851 CALL                             R40 4 1
      852 SETTABLEKS                       R40 R39 K29 ["Size"]
      854 LOADN                            R40 2
      855 SETTABLEKS                       R40 R39 K86 ["LayoutOrder"]
      857 LOADN                            R40 1
      858 SETTABLEKS                       R40 R39 K63 ["BackgroundTransparency"]
      860 DUPTABLE                         R40 K190 [{"List"}]
      861 GETUPVAL                         R42 4
      862 GETTABLEKS                       R41 R42 K13 ["createElement"]
      864 GETUPVAL                         R42 19
      865 DUPTABLE                         R43 K199 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "treemapContext", "query", "queryInfo", "deselectOnReselect"}]
      866 GETTABLEKS                       R44 R0 K200 ["virtualizedListRef"]
      868 SETTABLEKS                       R44 R43 K168 ["ref"]
      870 GETTABLEKS                       R44 R2 K191 ["windowHeight"]
      872 SETTABLEKS                       R44 R43 K191 ["windowHeight"]
      874 GETTABLEKS                       R45 R2 K128 ["selectedCategory"]
      876 JUMPIFNOT                        R45 ; [+8]
      877 GETTABLEKS                       R46 R2 K128 ["selectedCategory"]
      879 GETTABLEKS                       R45 R46 K188 ["module"]
      881 GETTABLEKS                       R44 R45 K201 ["getNodesObservable"]
      883 CALL                             R44 0 1
      884 JUMP                             ; [+1]
      885 LOADNIL                          R44
      886 SETTABLEKS                       R44 R43 K192 ["rootNodeObservable"]
      888 GETTABLEKS                       R44 R0 K193 ["scrollHeightObservable"]
      890 SETTABLEKS                       R44 R43 K193 ["scrollHeightObservable"]
      892 GETTABLEKS                       R44 R0 K194 ["scrollRef"]
      894 SETTABLEKS                       R44 R43 K194 ["scrollRef"]
      896 GETTABLEKS                       R44 R0 K195 ["onAbsoluteSizeChange"]
      898 SETTABLEKS                       R44 R43 K195 ["onAbsoluteSizeChange"]
      900 GETTABLEKS                       R44 R0 K196 ["onCanvasPositionChange"]
      902 SETTABLEKS                       R44 R43 K196 ["onCanvasPositionChange"]
      904 GETTABLEKS                       R44 R1 K197 ["ZIndex"]
      906 SETTABLEKS                       R44 R43 K197 ["ZIndex"]
      908 GETTABLEKS                       R44 R0 K170 ["treemapContext"]
      910 SETTABLEKS                       R44 R43 K170 ["treemapContext"]
      912 GETTABLEKS                       R45 R2 K128 ["selectedCategory"]
      914 JUMPIFNOT                        R45 ; [+5]
      915 GETTABLEKS                       R45 R2 K128 ["selectedCategory"]
      917 GETTABLEKS                       R44 R45 K188 ["module"]
      919 JUMP                             ; [+1]
      920 LOADNIL                          R44
      921 SETTABLEKS                       R44 R43 K184 ["query"]
      923 GETTABLEKS                       R44 R2 K128 ["selectedCategory"]
      925 SETTABLEKS                       R44 R43 K185 ["queryInfo"]
      927 LOADB                            R44 1
      928 SETTABLEKS                       R44 R43 K198 ["deselectOnReselect"]
      930 CALL                             R41 2 1
      931 SETTABLEKS                       R41 R40 K189 ["List"]
      933 CALL                             R37 3 1
      934 SETTABLEKS                       R37 R36 K180 ["ListWrapper"]
      936 CALL                             R33 3 1
      937 SETLIST                          R31 R32 2 [1]
      939 CALL                             R28 3 1
      940 SETTABLEKS                       R28 R27 K69 ["SplitPane"]
      942 CALL                             R24 3 1
      943 SETTABLEKS                       R24 R23 K60 ["ContentArea"]
      945 GETUPVAL                         R25 4
      946 GETTABLEKS                       R24 R25 K13 ["createElement"]
      948 LOADK                            R25 K57 ["Frame"]
      949 NEWTABLE                         R26 4 0
      951 GETIMPORT                        R27 K66 [UDim2.new]
      953 LOADN                            R28 1
      954 LOADN                            R29 0
      955 LOADN                            R30 0
      956 LOADN                            R31 24
      957 CALL                             R27 4 1
      958 SETTABLEKS                       R27 R26 K29 ["Size"]
      960 GETIMPORT                        R27 K66 [UDim2.new]
      962 LOADN                            R28 0
      963 LOADN                            R29 0
      964 LOADN                            R30 1
      965 LOADN                            R31 232
      966 CALL                             R27 4 1
      967 SETTABLEKS                       R27 R26 K144 ["Position"]
      969 LOADN                            R27 1
      970 SETTABLEKS                       R27 R26 K63 ["BackgroundTransparency"]
      972 GETUPVAL                         R28 4
      973 GETTABLEKS                       R27 R28 K58 ["Tag"]
      975 LOADK                            R28 K202 ["SceneAnalysis-BackgroundColor"]
      976 SETTABLE                         R28 R26 R27
      977 DUPTABLE                         R27 K205 [{"UIPadding", "Layout", "InfoIcon", "WarningText"}]
      978 GETUPVAL                         R29 4
      979 GETTABLEKS                       R28 R29 K13 ["createElement"]
      981 LOADK                            R29 K89 ["UIPadding"]
      982 DUPTABLE                         R30 K206 [{"PaddingLeft", "PaddingBottom"}]
      983 GETIMPORT                        R31 K79 [UDim.new]
      985 LOADN                            R32 0
      986 LOADN                            R33 8
      987 CALL                             R31 2 1
      988 SETTABLEKS                       R31 R30 K93 ["PaddingLeft"]
      990 GETIMPORT                        R31 K79 [UDim.new]
      992 LOADN                            R32 0
      993 LOADN                            R33 2
      994 CALL                             R31 2 1
      995 SETTABLEKS                       R31 R30 K96 ["PaddingBottom"]
      997 CALL                             R28 2 1
      998 SETTABLEKS                       R28 R27 K89 ["UIPadding"]
     1000 GETUPVAL                         R29 4
     1001 GETTABLEKS                       R28 R29 K13 ["createElement"]
     1003 LOADK                            R29 K71 ["UIListLayout"]
     1004 DUPTABLE                         R30 K207 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
     1005 GETIMPORT                        R31 K107 [Enum.FillDirection.Horizontal]
     1007 SETTABLEKS                       R31 R30 K73 ["FillDirection"]
     1009 GETIMPORT                        R31 K208 [Enum.HorizontalAlignment.Center]
     1011 SETTABLEKS                       R31 R30 K74 ["HorizontalAlignment"]
     1013 GETIMPORT                        R31 K109 [Enum.VerticalAlignment.Center]
     1015 SETTABLEKS                       R31 R30 K75 ["VerticalAlignment"]
     1017 GETIMPORT                        R31 K79 [UDim.new]
     1019 LOADN                            R32 0
     1020 LOADN                            R33 4
     1021 CALL                             R31 2 1
     1022 SETTABLEKS                       R31 R30 K72 ["Padding"]
     1024 CALL                             R28 2 1
     1025 SETTABLEKS                       R28 R27 K67 ["Layout"]
     1027 GETUPVAL                         R29 4
     1028 GETTABLEKS                       R28 R29 K13 ["createElement"]
     1030 GETUPVAL                         R29 20
     1031 DUPTABLE                         R30 K210 [{"name", "size"}]
     1032 LOADK                            R31 K211 ["circle-i"]
     1033 SETTABLEKS                       R31 R30 K209 ["name"]
     1035 GETUPVAL                         R34 10
     1036 GETTABLEKS                       R33 R34 K125 ["Enums"]
     1038 GETTABLEKS                       R32 R33 K212 ["IconSize"]
     1040 GETTABLEKS                       R31 R32 K156 ["Small"]
     1042 SETTABLEKS                       R31 R30 K119 ["size"]
     1044 CALL                             R28 2 1
     1045 SETTABLEKS                       R28 R27 K203 ["InfoIcon"]
     1047 GETUPVAL                         R29 4
     1048 GETTABLEKS                       R28 R29 K13 ["createElement"]
     1050 LOADK                            R29 K213 ["TextLabel"]
     1051 NEWTABLE                         R30 8 0
     1053 GETIMPORT                        R31 K101 [Enum.AutomaticSize.X]
     1055 SETTABLEKS                       R31 R30 K98 ["AutomaticSize"]
     1057 GETIMPORT                        R31 K66 [UDim2.new]
     1059 LOADN                            R32 0
     1060 LOADN                            R33 0
     1061 LOADN                            R34 1
     1062 LOADN                            R35 0
     1063 CALL                             R31 4 1
     1064 SETTABLEKS                       R31 R30 K29 ["Size"]
     1066 LOADN                            R31 2
     1067 SETTABLEKS                       R31 R30 K86 ["LayoutOrder"]
     1069 LOADN                            R31 1
     1070 SETTABLEKS                       R31 R30 K63 ["BackgroundTransparency"]
     1072 GETTABLEKS                       R31 R0 K7 ["localization"]
     1074 LOADK                            R33 K214 ["Messages"]
     1075 LOADK                            R34 K215 ["LocalMachineValuesWarning"]
     1076 NAMECALL                         R31 R31 K18 ["getText"]
     1078 CALL                             R31 3 1
     1079 SETTABLEKS                       R31 R30 K216 ["Text"]
     1081 GETIMPORT                        R31 K218 [Enum.TextXAlignment.Left]
     1083 SETTABLEKS                       R31 R30 K217 ["TextXAlignment"]
     1085 GETIMPORT                        R31 K220 [Enum.TextYAlignment.Center]
     1087 SETTABLEKS                       R31 R30 K219 ["TextYAlignment"]
     1089 GETUPVAL                         R32 4
     1090 GETTABLEKS                       R31 R32 K58 ["Tag"]
     1092 LOADK                            R32 K221 ["SceneAnalysis-SmallText"]
     1093 SETTABLE                         R32 R30 R31
     1094 CALL                             R28 2 1
     1095 SETTABLEKS                       R28 R27 K204 ["WarningText"]
     1097 CALL                             R24 3 1
     1098 SETTABLEKS                       R24 R23 K61 ["WarningBar"]
     1100 CALL                             R20 3 1
     1101 SETTABLEKS                       R20 R19 K53 ["Wrapper"]
     1103 GETUPVAL                         R21 4
     1104 GETTABLEKS                       R20 R21 K13 ["createElement"]
     1106 LOADK                            R21 K54 ["StyleLink"]
     1107 DUPTABLE                         R22 K223 [{"StyleSheet"}]
     1108 GETTABLEKS                       R23 R0 K10 ["design"]
     1110 SETTABLEKS                       R23 R22 K222 ["StyleSheet"]
     1112 CALL                             R20 2 1
     1113 SETTABLEKS                       R20 R19 K54 ["StyleLink"]
     1115 GETUPVAL                         R21 4
     1116 GETTABLEKS                       R20 R21 K13 ["createElement"]
     1118 GETUPVAL                         R21 21
     1119 CALL                             R20 1 1
     1120 SETTABLEKS                       R20 R19 K55 ["WidgetRegister"]
     1122 CALL                             R16 3 1
     1123 SETTABLEKS                       R16 R15 K49 ["ContextStack"]
     1125 CALL                             R12 3 1
     1126 SETTABLEKS                       R12 R11 K44 ["Foundations"]
     1128 CALL                             R8 3 1
     1129 SETTABLEKS                       R8 R7 K11 ["MainWidget"]
     1131 CALL                             R5 2 -1
     1132 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R4 K11 ["Components"]
       37 GETTABLEKS                       R5 R6 K12 ["FoundationProviderAdapter"]
       39 GETTABLEKS                       R7 R4 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["StudioUri"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R10 R0 K15 ["Bin"]
       47 GETTABLEKS                       R9 R10 K16 ["Common"]
       49 GETTABLEKS                       R8 R9 K17 ["defineLuaFlags"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K18 ["getFFlagRegisterActionsPluginLoader"]
       54 CALL                             R8 0 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETTABLEKS                       R11 R0 K6 ["Packages"]
       59 GETTABLEKS                       R10 R11 K19 ["Foundation"]
       61 CALL                             R9 1 1
       62 GETTABLEKS                       R10 R9 K20 ["Dropdown"]
       64 GETTABLEKS                       R11 R9 K21 ["Toggle"]
       66 GETTABLEKS                       R12 R9 K22 ["TextInput"]
       68 GETTABLEKS                       R13 R9 K23 ["Icon"]
       70 GETTABLEKS                       R15 R9 K24 ["Enums"]
       72 GETTABLEKS                       R14 R15 K25 ["InputSize"]
       74 GETTABLEKS                       R16 R3 K26 ["UI"]
       76 GETTABLEKS                       R15 R16 K27 ["DockWidget"]
       78 GETTABLEKS                       R16 R3 K28 ["ContextServices"]
       80 GETTABLEKS                       R17 R16 K29 ["Plugin"]
       82 GETTABLEKS                       R18 R16 K30 ["Mouse"]
       84 GETTABLEKS                       R19 R16 K31 ["Design"]
       86 GETTABLEKS                       R22 R3 K32 ["Style"]
       88 GETTABLEKS                       R21 R22 K33 ["Themes"]
       90 GETTABLEKS                       R20 R21 K34 ["StudioTheme"]
       92 GETTABLEKS                       R22 R3 K35 ["Styling"]
       94 GETTABLEKS                       R21 R22 K36 ["registerPluginStyles"]
       96 GETTABLEKS                       R25 R0 K37 ["Src"]
       98 GETTABLEKS                       R24 R25 K38 ["Resources"]
      100 GETTABLEKS                       R23 R24 K39 ["Localization"]
      102 GETTABLEKS                       R22 R23 K40 ["SourceStrings"]
      104 GETTABLEKS                       R26 R0 K37 ["Src"]
      106 GETTABLEKS                       R25 R26 K38 ["Resources"]
      108 GETTABLEKS                       R24 R25 K39 ["Localization"]
      110 GETTABLEKS                       R23 R24 K41 ["LocalizedStrings"]
      112 GETTABLEKS                       R25 R0 K37 ["Src"]
      114 GETTABLEKS                       R24 R25 K11 ["Components"]
      116 GETIMPORT                        R25 K5 [require]
      118 GETTABLEKS                       R26 R24 K42 ["Treemap"]
      120 CALL                             R25 1 1
      121 GETIMPORT                        R26 K5 [require]
      123 GETTABLEKS                       R27 R24 K43 ["ControlledSplitPane"]
      125 CALL                             R26 1 1
      126 GETIMPORT                        R27 K5 [require]
      128 GETTABLEKS                       R28 R24 K44 ["VirtualizedList"]
      130 CALL                             R27 1 1
      131 GETIMPORT                        R28 K5 [require]
      133 GETTABLEKS                       R29 R24 K45 ["SummaryPane"]
      135 CALL                             R28 1 1
      136 GETIMPORT                        R29 K5 [require]
      138 GETTABLEKS                       R32 R0 K37 ["Src"]
      140 GETTABLEKS                       R31 R32 K13 ["Util"]
      142 GETTABLEKS                       R30 R31 K46 ["Observable"]
      144 CALL                             R29 1 1
      145 GETIMPORT                        R30 K5 [require]
      147 GETTABLEKS                       R31 R24 K47 ["WidgetRegister"]
      149 CALL                             R30 1 1
      150 GETIMPORT                        R31 K5 [require]
      152 GETTABLEKS                       R34 R0 K37 ["Src"]
      154 GETTABLEKS                       R33 R34 K48 ["Providers"]
      156 GETTABLEKS                       R32 R33 K49 ["MouseContextProvider"]
      158 CALL                             R31 1 1
      159 GETIMPORT                        R32 K5 [require]
      161 GETTABLEKS                       R35 R0 K37 ["Src"]
      163 GETTABLEKS                       R34 R35 K38 ["Resources"]
      165 GETTABLEKS                       R33 R34 K50 ["ColorRamps"]
      167 CALL                             R32 1 1
      168 GETIMPORT                        R33 K5 [require]
      170 GETTABLEKS                       R35 R0 K6 ["Packages"]
      172 GETTABLEKS                       R34 R35 K51 ["Dash"]
      174 CALL                             R33 1 1
      175 GETIMPORT                        R34 K5 [require]
      177 GETTABLEKS                       R38 R0 K37 ["Src"]
      179 GETTABLEKS                       R37 R38 K11 ["Components"]
      181 GETTABLEKS                       R36 R37 K42 ["Treemap"]
      183 GETTABLEKS                       R35 R36 K52 ["TreemapMockData"]
      185 CALL                             R34 1 1
      186 GETIMPORT                        R35 K5 [require]
      188 GETTABLEKS                       R39 R0 K37 ["Src"]
      190 GETTABLEKS                       R38 R39 K11 ["Components"]
      192 GETTABLEKS                       R37 R38 K42 ["Treemap"]
      194 GETTABLEKS                       R36 R37 K53 ["TreemapTypes"]
      196 CALL                             R35 1 1
      197 DUPCLOSURE                       R36 K54 [PROTO_1]
      198 GETTABLEKS                       R37 R1 K55 ["PureComponent"]
      200 LOADK                            R39 K56 ["MainPlugin"]
      201 NAMECALL                         R37 R37 K57 ["extend"]
      203 CALL                             R37 2 1
      204 GETTABLEKS                       R38 R6 K58 ["fromAction"]
      206 LOADK                            R39 K2 ["SceneAnalysis"]
      207 LOADK                            R40 K21 ["Toggle"]
      208 CALL                             R38 2 1
      209 GETIMPORT                        R39 K5 [require]
      211 GETTABLEKS                       R42 R0 K37 ["Src"]
      213 GETTABLEKS                       R41 R42 K13 ["Util"]
      215 GETTABLEKS                       R40 R41 K59 ["AssetDMBridge"]
      217 CALL                             R39 1 1
      218 GETIMPORT                        R40 K5 [require]
      220 GETTABLEKS                       R44 R0 K37 ["Src"]
      222 GETTABLEKS                       R43 R44 K60 ["Queries"]
      224 GETTABLEKS                       R42 R43 K61 ["UnparentedInstancesView"]
      226 GETTABLEKS                       R41 R42 K62 ["FetchUnparentedInstances"]
      228 CALL                             R40 1 1
      229 GETIMPORT                        R41 K5 [require]
      231 GETTABLEKS                       R45 R0 K37 ["Src"]
      233 GETTABLEKS                       R44 R45 K60 ["Queries"]
      235 GETTABLEKS                       R43 R44 K63 ["ScriptMemoryView"]
      237 GETTABLEKS                       R42 R43 K64 ["FetchAllScriptMemory"]
      239 CALL                             R41 1 1
      240 GETIMPORT                        R42 K5 [require]
      242 GETTABLEKS                       R46 R0 K37 ["Src"]
      244 GETTABLEKS                       R45 R46 K60 ["Queries"]
      246 GETTABLEKS                       R44 R45 K65 ["SceneTrianglesView"]
      248 GETTABLEKS                       R43 R44 K66 ["FetchSceneTriangles"]
      250 CALL                             R42 1 1
      251 GETIMPORT                        R43 K5 [require]
      253 GETTABLEKS                       R47 R0 K37 ["Src"]
      255 GETTABLEKS                       R46 R47 K60 ["Queries"]
      257 GETTABLEKS                       R45 R46 K67 ["InstanceCompositionView"]
      259 GETTABLEKS                       R44 R45 K68 ["FetchInstanceComposition"]
      261 CALL                             R43 1 1
      262 GETIMPORT                        R44 K5 [require]
      264 GETTABLEKS                       R48 R0 K37 ["Src"]
      266 GETTABLEKS                       R47 R48 K60 ["Queries"]
      268 GETTABLEKS                       R46 R47 K69 ["AnimationMemoryView"]
      270 GETTABLEKS                       R45 R46 K70 ["FetchAnimationMemory"]
      272 CALL                             R44 1 1
      273 GETIMPORT                        R45 K5 [require]
      275 GETTABLEKS                       R49 R0 K37 ["Src"]
      277 GETTABLEKS                       R48 R49 K60 ["Queries"]
      279 GETTABLEKS                       R47 R48 K71 ["AudioMemoryView"]
      281 GETTABLEKS                       R46 R47 K72 ["FetchAudioMemory"]
      283 CALL                             R45 1 1
      284 GETIMPORT                        R46 K5 [require]
      286 GETTABLEKS                       R50 R0 K37 ["Src"]
      288 GETTABLEKS                       R49 R50 K11 ["Components"]
      290 GETTABLEKS                       R48 R49 K42 ["Treemap"]
      292 GETTABLEKS                       R47 R48 K73 ["TreemapContext"]
      294 CALL                             R46 1 1
      295 DUPCLOSURE                       R47 K74 [PROTO_22]
      296 CAPTURE                          VAL R8
      297 CAPTURE                          VAL R38
      298 CAPTURE                          VAL R16
      299 CAPTURE                          VAL R22
      300 CAPTURE                          VAL R23
      301 CAPTURE                          VAL R1
      302 CAPTURE                          VAL R29
      303 CAPTURE                          VAL R39
      304 CAPTURE                          VAL R3
      305 CAPTURE                          VAL R46
      306 CAPTURE                          VAL R33
      307 CAPTURE                          VAL R20
      308 CAPTURE                          VAL R4
      309 CAPTURE                          VAL R21
      310 CAPTURE                          VAL R40
      311 CAPTURE                          VAL R32
      312 CAPTURE                          VAL R41
      313 CAPTURE                          VAL R42
      314 CAPTURE                          VAL R43
      315 CAPTURE                          VAL R45
      316 CAPTURE                          VAL R44
      317 SETTABLEKS                       R47 R37 K75 ["init"]
      319 DUPCLOSURE                       R47 K76 [PROTO_23]
      320 SETTABLEKS                       R47 R37 K77 ["unhookHeartbeat"]
      322 DUPCLOSURE                       R47 K78 [PROTO_27]
      323 SETTABLEKS                       R47 R37 K79 ["hookHeartbeat"]
      325 DUPCLOSURE                       R47 K80 [PROTO_28]
      326 CAPTURE                          VAL R8
      327 SETTABLEKS                       R47 R37 K81 ["didUpdate"]
      329 DUPCLOSURE                       R47 K82 [PROTO_29]
      330 SETTABLEKS                       R47 R37 K83 ["willUnmount"]
      332 DUPCLOSURE                       R47 K84 [PROTO_33]
      333 CAPTURE                          VAL R16
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R18
      336 CAPTURE                          VAL R19
      337 CAPTURE                          VAL R1
      338 CAPTURE                          VAL R15
      339 CAPTURE                          VAL R5
      340 CAPTURE                          VAL R2
      341 CAPTURE                          VAL R31
      342 CAPTURE                          VAL R10
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R12
      345 CAPTURE                          VAL R11
      346 CAPTURE                          VAL R14
      347 CAPTURE                          VAL R26
      348 CAPTURE                          VAL R25
      349 CAPTURE                          VAL R34
      350 CAPTURE                          VAL R32
      351 CAPTURE                          VAL R28
      352 CAPTURE                          VAL R27
      353 CAPTURE                          VAL R13
      354 CAPTURE                          VAL R30
      355 SETTABLEKS                       R47 R37 K85 ["render"]
      357 RETURN                           R37 1

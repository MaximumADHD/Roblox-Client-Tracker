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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["state"]
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["state"]
        5 GETTABLEKS                       R1 R1 K1 ["enabled"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["state"]
        7 GETTABLEKS                       R2 R2 K2 ["enabled"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["props"]
        5 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        7 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["toggleEnabled"]
       14 NAMECALL                         R2 R0 K4 ["Connect"]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K5 ["actionActivatedConnection"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K0 ["props"]
       23 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       25 GETTABLEKS                       R0 R0 K6 ["mainButtonClickedSignal"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K3 ["toggleEnabled"]
       30 NAMECALL                         R0 R0 K4 ["Connect"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_15:
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

PROTO_16:
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
       19 GETUPVAL                         R1 1
       20 JUMPIFNOT                        R1 ; [+9]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K2 ["getNodeById"]
       24 JUMPIFNOT                        R1 ; [+5]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K2 ["getNodeById"]
       28 MOVE                             R2 R0
       29 CALL                             R1 1 1
       30 JUMPIFNOT                        R1 ; [+3]
       31 GETTABLEKS                       R2 R1 K3 ["path"]
       33 JUMPIF                           R2 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 2
       36 LOADK                            R4 K4 ["SelectInstanceByPath"]
       37 GETTABLEKS                       R5 R1 K3 ["path"]
       39 NAMECALL                         R2 R2 K5 ["CallAssetPluginAsync"]
       41 CALL                             R2 3 0
       42 RETURN                           R0 0

PROTO_17:
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
       18 NEWTABLE                         R2 0 0
       20 NEWTABLE                         R3 0 0
       22 DUPTABLE                         R4 K6 [{"Text", "OnItemClicked"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K7 ["localization"]
       26 LOADK                            R7 K8 ["ContextMenu"]
       27 LOADK                            R8 K9 ["SelectInstances"]
       28 NAMECALL                         R5 R5 K10 ["getText"]
       30 CALL                             R5 3 1
       31 SETTABLEKS                       R5 R4 K4 ["Text"]
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R5 R4 K5 ["OnItemClicked"]
       39 SETTABLEKS                       R4 R2 K11 ["SelectInstance"]
       41 FASTCALL2K                       TABLE_INSERT R3 K11 ; [+5]
       43 MOVE                             R5 R3
       44 LOADK                            R6 K11 ["SelectInstance"]
       45 GETIMPORT                        R4 K14 [table.insert]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K15 ["props"]
       51 GETTABLEKS                       R4 R4 K16 ["Plugin"]
       53 GETUPVAL                         R5 2
       54 GETTABLEKS                       R5 R5 K17 ["UI"]
       56 GETTABLEKS                       R5 R5 K18 ["showContextMenu"]
       58 MOVE                             R6 R4
       59 MOVE                             R7 R2
       60 MOVE                             R8 R3
       61 CALL                             R5 3 0
       62 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["selectFromList"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectionManager"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["forceSelectFromList"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"windowHeight"}]
        2 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        4 GETTABLEKS                       R4 R4 K3 ["Y"]
        6 SETTABLEKS                       R4 R3 K0 ["windowHeight"]
        8 NAMECALL                         R1 R1 K4 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setScrollHeight"]
        3 GETTABLEKS                       R2 R0 K1 ["CanvasPosition"]
        5 GETTABLEKS                       R2 R2 K2 ["Y"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R0 K0 ["isPaused"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K1 ["forceUpdateOnce"]
        6 DUPTABLE                         R2 K11 [{"selectedIdsHash", "enabled", "windowHeight", "paused", "searchTerm", "filterMenuOpen", "filterState", "warningIndex", "selectedCategory"}]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["selectedIdsHash"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["enabled"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["windowHeight"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["paused"]
       19 LOADK                            R3 K12 [""]
       20 SETTABLEKS                       R3 R2 K6 ["searchTerm"]
       22 LOADB                            R3 0
       23 SETTABLEKS                       R3 R2 K7 ["filterMenuOpen"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K8 ["filterState"]
       28 LOADN                            R3 1
       29 SETTABLEKS                       R3 R2 K9 ["warningIndex"]
       31 LOADNIL                          R3
       32 SETTABLEKS                       R3 R2 K10 ["selectedCategory"]
       34 SETTABLEKS                       R2 R0 K13 ["state"]
       36 NEWCLOSURE                       R2 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R2 R0 K14 ["toggleEnabled"]
       41 GETTABLEKS                       R2 R1 K15 ["Plugin"]
       43 LOADK                            R4 K16 ["Actions"]
       44 NAMECALL                         R2 R2 K17 ["GetPluginComponent"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 0
       48 JUMPIFNOT                        R3 ; [+8]
       49 GETIMPORT                        R3 K20 [task.spawn]
       51 NEWCLOSURE                       R4 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R1
       56 CALL                             R3 1 0
       57 NEWCLOSURE                       R3 P2
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R3 R0 K21 ["togglePause"]
       61 NEWCLOSURE                       R3 P3
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R3 R0 K22 ["onClose"]
       68 NEWCLOSURE                       R3 P4
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R2
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          VAL R1
       74 SETTABLEKS                       R3 R0 K23 ["onRestore"]
       76 NEWCLOSURE                       R3 P5
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R3 R0 K24 ["onWidgetEnabledChanged"]
       84 NEWCLOSURE                       R3 P6
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R3 R0 K25 ["onDockWidgetCreated"]
       89 GETUPVAL                         R3 2
       90 GETTABLEKS                       R3 R3 K26 ["Localization"]
       92 GETTABLEKS                       R3 R3 K27 ["new"]
       94 DUPTABLE                         R4 K31 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       95 GETUPVAL                         R5 3
       96 SETTABLEKS                       R5 R4 K28 ["stringResourceTable"]
       98 GETUPVAL                         R5 4
       99 SETTABLEKS                       R5 R4 K29 ["translationResourceTable"]
      101 LOADK                            R5 K32 ["SceneAnalysis"]
      102 SETTABLEKS                       R5 R4 K30 ["pluginName"]
      104 CALL                             R3 1 1
      105 SETTABLEKS                       R3 R0 K33 ["localization"]
      107 GETUPVAL                         R3 2
      108 GETTABLEKS                       R3 R3 K34 ["Analytics"]
      110 GETTABLEKS                       R3 R3 K27 ["new"]
      112 DUPCLOSURE                       R4 K35 [PROTO_14]
      113 NEWTABLE                         R5 0 0
      115 CALL                             R3 2 1
      116 SETTABLEKS                       R3 R0 K36 ["analytics"]
      118 GETUPVAL                         R3 5
      119 GETTABLEKS                       R3 R3 K37 ["createRef"]
      121 CALL                             R3 0 1
      122 SETTABLEKS                       R3 R0 K38 ["treemapRef"]
      124 LOADN                            R3 0
      125 SETTABLEKS                       R3 R0 K39 ["timeOfNextAutomaticUpdate"]
      127 LOADN                            R3 1
      128 SETTABLEKS                       R3 R0 K40 ["delayBetweenAutomaticUpdates"]
      130 MOVE                             R5 R1
      131 NAMECALL                         R3 R0 K41 ["hookHeartbeat"]
      133 CALL                             R3 2 0
      134 GETUPVAL                         R3 6
      135 GETTABLEKS                       R3 R3 K42 ["create"]
      137 LOADN                            R4 0
      138 CALL                             R3 1 2
      139 SETTABLEKS                       R3 R0 K43 ["scrollHeightObservable"]
      141 SETTABLEKS                       R4 R0 K44 ["setScrollHeight"]
      143 GETUPVAL                         R3 5
      144 GETTABLEKS                       R3 R3 K37 ["createRef"]
      146 CALL                             R3 0 1
      147 SETTABLEKS                       R3 R0 K45 ["scrollRef"]
      149 GETUPVAL                         R3 5
      150 GETTABLEKS                       R3 R3 K37 ["createRef"]
      152 CALL                             R3 0 1
      153 SETTABLEKS                       R3 R0 K46 ["virtualizedListRef"]
      155 GETUPVAL                         R3 7
      156 GETTABLEKS                       R3 R3 K27 ["new"]
      158 DUPTABLE                         R4 K49 [{"treemapRef", "listRef", "plugin"}]
      159 GETTABLEKS                       R5 R0 K38 ["treemapRef"]
      161 SETTABLEKS                       R5 R4 K38 ["treemapRef"]
      163 GETTABLEKS                       R5 R0 K46 ["virtualizedListRef"]
      165 SETTABLEKS                       R5 R4 K47 ["listRef"]
      167 GETTABLEKS                       R5 R1 K15 ["Plugin"]
      169 SETTABLEKS                       R5 R4 K48 ["plugin"]
      171 CALL                             R3 1 1
      172 SETTABLEKS                       R3 R0 K50 ["selectionManager"]
      174 GETTABLEKS                       R3 R0 K50 ["selectionManager"]
      176 LOADB                            R5 1
      177 NAMECALL                         R3 R3 K51 ["setDeselectOnReselect"]
      179 CALL                             R3 2 0
      180 GETTABLEKS                       R3 R0 K50 ["selectionManager"]
      182 NAMECALL                         R3 R3 K52 ["getSelectionObservable"]
      184 CALL                             R3 1 1
      185 GETTABLEKS                       R3 R3 K53 ["changedSignal"]
      187 NEWCLOSURE                       R5 P8
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U8
      190 NAMECALL                         R3 R3 K54 ["Connect"]
      192 CALL                             R3 2 0
      193 NEWCLOSURE                       R3 P9
      194 CAPTURE                          VAL R0
      195 CAPTURE                          UPVAL U9
      196 CAPTURE                          UPVAL U10
      197 SETTABLEKS                       R3 R0 K55 ["onNodeRightClicked"]
      199 GETUPVAL                         R3 11
      200 GETTABLEKS                       R3 R3 K27 ["new"]
      202 GETTABLEKS                       R4 R0 K50 ["selectionManager"]
      204 GETTABLEKS                       R5 R0 K55 ["onNodeRightClicked"]
      206 CALL                             R3 2 1
      207 SETTABLEKS                       R3 R0 K56 ["treemapContext"]
      209 NEWCLOSURE                       R3 P10
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R3 R0 K57 ["onNodeClicked"]
      213 NEWCLOSURE                       R3 P11
      214 CAPTURE                          VAL R0
      215 SETTABLEKS                       R3 R0 K58 ["onListNodeRightClicked"]
      217 NEWCLOSURE                       R3 P12
      218 CAPTURE                          VAL R0
      219 SETTABLEKS                       R3 R0 K59 ["onAbsoluteSizeChange"]
      221 NEWCLOSURE                       R3 P13
      222 CAPTURE                          VAL R0
      223 SETTABLEKS                       R3 R0 K60 ["onCanvasPositionChange"]
      225 GETUPVAL                         R3 12
      226 GETTABLEKS                       R3 R3 K27 ["new"]
      228 CALL                             R3 0 1
      229 SETTABLEKS                       R3 R0 K61 ["DEPRECATED_stylizer"]
      231 GETUPVAL                         R3 13
      232 GETTABLEKS                       R3 R3 K62 ["Util"]
      234 GETTABLEKS                       R3 R3 K63 ["createFoundationDesignBinding"]
      236 CALL                             R3 0 2
      237 SETTABLEKS                       R4 R0 K64 ["onFoundationStyleSheetChange"]
      239 GETUPVAL                         R5 14
      240 GETTABLEKS                       R6 R1 K15 ["Plugin"]
      242 LOADNIL                          R7
      243 LOADNIL                          R8
      244 NEWTABLE                         R9 0 1
      246 MOVE                             R10 R3
      247 SETLIST                          R9 R10 1 [1]
      249 CALL                             R5 4 1
      250 SETTABLEKS                       R5 R0 K65 ["design"]
      252 NEWTABLE                         R5 0 6
      254 DUPTABLE                         R6 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      255 LOADK                            R7 K72 ["Unparented"]
      256 SETTABLEKS                       R7 R6 K66 ["id"]
      258 GETTABLEKS                       R7 R0 K33 ["localization"]
      260 LOADK                            R9 K73 ["Categories"]
      261 LOADK                            R10 K74 ["UnparentedInstances"]
      262 NAMECALL                         R7 R7 K75 ["getText"]
      264 CALL                             R7 3 1
      265 SETTABLEKS                       R7 R6 K67 ["text"]
      267 GETUPVAL                         R7 15
      268 SETTABLEKS                       R7 R6 K68 ["module"]
      270 LOADK                            R7 K76 ["instanceCount"]
      271 SETTABLEKS                       R7 R6 K69 ["valueFormat"]
      273 GETUPVAL                         R7 16
      274 GETTABLEKS                       R7 R7 K77 ["Default"]
      276 SETTABLEKS                       R7 R6 K70 ["colorRamp"]
      278 DUPTABLE                         R7 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      279 LOADK                            R8 K78 ["Script"]
      280 SETTABLEKS                       R8 R7 K66 ["id"]
      282 GETTABLEKS                       R8 R0 K33 ["localization"]
      284 LOADK                            R10 K73 ["Categories"]
      285 LOADK                            R11 K79 ["ScriptMemoryUsage"]
      286 NAMECALL                         R8 R8 K75 ["getText"]
      288 CALL                             R8 3 1
      289 SETTABLEKS                       R8 R7 K67 ["text"]
      291 GETUPVAL                         R8 17
      292 SETTABLEKS                       R8 R7 K68 ["module"]
      294 LOADK                            R8 K80 ["memory"]
      295 SETTABLEKS                       R8 R7 K69 ["valueFormat"]
      297 GETUPVAL                         R8 16
      298 GETTABLEKS                       R8 R8 K81 ["IceBlue"]
      300 SETTABLEKS                       R8 R7 K70 ["colorRamp"]
      302 DUPTABLE                         R8 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      303 LOADK                            R9 K82 ["Triangles"]
      304 SETTABLEKS                       R9 R8 K66 ["id"]
      306 GETTABLEKS                       R9 R0 K33 ["localization"]
      308 LOADK                            R11 K73 ["Categories"]
      309 LOADK                            R12 K83 ["SceneTriangles"]
      310 NAMECALL                         R9 R9 K75 ["getText"]
      312 CALL                             R9 3 1
      313 SETTABLEKS                       R9 R8 K67 ["text"]
      315 GETUPVAL                         R9 18
      316 SETTABLEKS                       R9 R8 K68 ["module"]
      318 LOADK                            R9 K84 ["count"]
      319 SETTABLEKS                       R9 R8 K69 ["valueFormat"]
      321 GETUPVAL                         R9 16
      322 GETTABLEKS                       R9 R9 K85 ["Forest"]
      324 SETTABLEKS                       R9 R8 K70 ["colorRamp"]
      326 DUPTABLE                         R9 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      327 LOADK                            R10 K86 ["InstanceComposition"]
      328 SETTABLEKS                       R10 R9 K66 ["id"]
      330 GETTABLEKS                       R10 R0 K33 ["localization"]
      332 LOADK                            R12 K73 ["Categories"]
      333 LOADK                            R13 K86 ["InstanceComposition"]
      334 NAMECALL                         R10 R10 K75 ["getText"]
      336 CALL                             R10 3 1
      337 SETTABLEKS                       R10 R9 K67 ["text"]
      339 GETUPVAL                         R10 19
      340 SETTABLEKS                       R10 R9 K68 ["module"]
      342 LOADK                            R10 K76 ["instanceCount"]
      343 SETTABLEKS                       R10 R9 K69 ["valueFormat"]
      345 GETUPVAL                         R10 16
      346 GETTABLEKS                       R10 R10 K77 ["Default"]
      348 SETTABLEKS                       R10 R9 K70 ["colorRamp"]
      350 DUPTABLE                         R10 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      351 LOADK                            R11 K87 ["Audio"]
      352 SETTABLEKS                       R11 R10 K66 ["id"]
      354 GETTABLEKS                       R11 R0 K33 ["localization"]
      356 LOADK                            R13 K73 ["Categories"]
      357 LOADK                            R14 K88 ["AudioMemory"]
      358 NAMECALL                         R11 R11 K75 ["getText"]
      360 CALL                             R11 3 1
      361 SETTABLEKS                       R11 R10 K67 ["text"]
      363 GETUPVAL                         R11 20
      364 SETTABLEKS                       R11 R10 K68 ["module"]
      366 LOADK                            R11 K80 ["memory"]
      367 SETTABLEKS                       R11 R10 K69 ["valueFormat"]
      369 GETUPVAL                         R11 16
      370 GETTABLEKS                       R11 R11 K81 ["IceBlue"]
      372 SETTABLEKS                       R11 R10 K70 ["colorRamp"]
      374 DUPTABLE                         R11 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      375 LOADK                            R12 K89 ["Animation"]
      376 SETTABLEKS                       R12 R11 K66 ["id"]
      378 GETTABLEKS                       R12 R0 K33 ["localization"]
      380 LOADK                            R14 K73 ["Categories"]
      381 LOADK                            R15 K90 ["AnimationMemory"]
      382 NAMECALL                         R12 R12 K75 ["getText"]
      384 CALL                             R12 3 1
      385 SETTABLEKS                       R12 R11 K67 ["text"]
      387 GETUPVAL                         R12 21
      388 SETTABLEKS                       R12 R11 K68 ["module"]
      390 LOADK                            R12 K80 ["memory"]
      391 SETTABLEKS                       R12 R11 K69 ["valueFormat"]
      393 GETUPVAL                         R12 16
      394 GETTABLEKS                       R12 R12 K81 ["IceBlue"]
      396 SETTABLEKS                       R12 R11 K70 ["colorRamp"]
      398 SETLIST                          R5 R6 6 [1]
      400 SETTABLEKS                       R5 R0 K91 ["categories"]
      402 GETUPVAL                         R5 22
      403 JUMPIFNOT                        R5 ; [+31]
      404 GETTABLEKS                       R6 R0 K91 ["categories"]
      406 LOADN                            R7 4
      407 DUPTABLE                         R8 K71 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      408 LOADK                            R9 K92 ["SceneGeometry"]
      409 SETTABLEKS                       R9 R8 K66 ["id"]
      411 GETTABLEKS                       R9 R0 K33 ["localization"]
      413 LOADK                            R11 K73 ["Categories"]
      414 LOADK                            R12 K92 ["SceneGeometry"]
      415 NAMECALL                         R9 R9 K75 ["getText"]
      417 CALL                             R9 3 1
      418 SETTABLEKS                       R9 R8 K67 ["text"]
      420 GETUPVAL                         R9 23
      421 SETTABLEKS                       R9 R8 K68 ["module"]
      423 LOADK                            R9 K84 ["count"]
      424 SETTABLEKS                       R9 R8 K69 ["valueFormat"]
      426 GETUPVAL                         R9 16
      427 GETTABLEKS                       R9 R9 K77 ["Default"]
      429 SETTABLEKS                       R9 R8 K70 ["colorRamp"]
      431 FASTCALL                         TABLE_INSERT ; [+2]
      432 GETIMPORT                        R5 K95 [table.insert]
      434 CALL                             R5 3 0
      435 GETTABLEKS                       R6 R0 K91 ["categories"]
      437 GETTABLEN                        R5 R6 4
      438 GETTABLEKS                       R6 R0 K91 ["categories"]
      440 LOADNIL                          R7
      441 LOADNIL                          R8
      442 FORGPREP                         R6
      443 GETTABLEKS                       R11 R10 K66 ["id"]
      445 JUMPIFNOTEQKS                    R11 K86 ["InstanceComposition"] ; [+3]
      447 MOVE                             R5 R10
      448 JUMP                             ; [+2]
      449 FORGLOOP                         R6 2 ; [-7]
      451 DUPTABLE                         R8 K96 [{"selectedCategory"}]
      452 SETTABLEKS                       R5 R8 K10 ["selectedCategory"]
      454 NAMECALL                         R6 R0 K97 ["setState"]
      456 CALL                             R6 2 0
      457 GETTABLEKS                       R6 R0 K50 ["selectionManager"]
      459 GETTABLEKS                       R8 R5 K68 ["module"]
      461 NAMECALL                         R6 R6 K98 ["setQuery"]
      463 CALL                             R6 2 0
      464 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["heartbeatConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K1 [{"warningIndex"}]
        1 GETTABLEKS                       R4 R0 K0 ["warningIndex"]
        3 ORK                              R3 R4 K2 [1]
        4 ADDK                             R2 R3 K2 [1]
        5 SETTABLEKS                       R2 R1 K0 ["warningIndex"]
        7 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["module"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["RunQueryAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["treemapRef"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["treemapRef"]
        9 NAMECALL                         R0 R0 K1 ["getValue"]
       11 CALL                             R0 1 1
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["state"]
       18 GETTABLEKS                       R1 R1 K3 ["selectedCategory"]
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
       72 GETUPVAL                         R3 0
       73 GETTABLEKS                       R3 R3 K16 ["selectionManager"]
       75 MOVE                             R5 R2
       76 NAMECALL                         R3 R3 K17 ["refreshMetaIds"]
       78 CALL                             R3 2 0
       79 MOVE                             R5 R2
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K18 ["sizeKey"]
       83 NAMECALL                         R3 R0 K19 ["submitTreemapNodes"]
       85 CALL                             R3 3 0
       86 RETURN                           R0 0

PROTO_27:
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
       50 DUPCLOSURE                       R3 K9 [PROTO_24]
       51 NAMECALL                         R1 R1 K10 ["setState"]
       53 CALL                             R1 2 0
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K11 ["isPaused"]
       57 JUMPIF                           R1 ; [+8]
       58 GETIMPORT                        R1 K8 [tick]
       60 CALL                             R1 0 1
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R2 R2 K12 ["timeOfNextAutomaticUpdate"]
       64 JUMPIFLT                         R2 R1 ; [+5]
       66 GETUPVAL                         R1 0
       67 GETTABLEKS                       R1 R1 K13 ["forceUpdateOnce"]
       69 JUMPIFNOT                        R1 ; [+31]
       70 GETUPVAL                         R1 0
       71 LOADB                            R2 0
       72 SETTABLEKS                       R2 R1 K13 ["forceUpdateOnce"]
       74 GETUPVAL                         R1 0
       75 GETIMPORT                        R3 K8 [tick]
       77 CALL                             R3 0 1
       78 GETUPVAL                         R4 0
       79 GETTABLEKS                       R4 R4 K14 ["delayBetweenAutomaticUpdates"]
       81 ADD                              R2 R3 R4
       82 SETTABLEKS                       R2 R1 K12 ["timeOfNextAutomaticUpdate"]
       84 GETUPVAL                         R1 0
       85 GETTABLEKS                       R1 R1 K0 ["state"]
       87 GETTABLEKS                       R1 R1 K15 ["selectedCategory"]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R2 R2 K0 ["state"]
       92 GETTABLEKS                       R2 R2 K16 ["searchTerm"]
       94 GETIMPORT                        R3 K19 [task.spawn]
       96 NEWCLOSURE                       R4 P1
       97 CAPTURE                          UPVAL U0
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R2
      100 CALL                             R3 1 0
      101 RETURN                           R0 0

PROTO_28:
        0 NAMECALL                         R2 R0 K0 ["unhookHeartbeat"]
        2 CALL                             R2 1 0
        3 GETIMPORT                        R2 K2 [game]
        5 LOADK                            R4 K3 ["RunService"]
        6 NAMECALL                         R2 R2 K4 ["GetService"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R2 R2 K5 ["Heartbeat"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R2 R2 K6 ["Connect"]
       15 CALL                             R2 2 1
       16 SETTABLEKS                       R2 R0 K7 ["heartbeatConnection"]
       18 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["timeOfNextAutomaticUpdate"]
       11 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
        0 DUPTABLE                         R1 K1 [{"filterMenuOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["filterMenuOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["filterMenuOpen"]
        6 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_35]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
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

PROTO_39:
        0 NEWTABLE                         R0 0 0
        2 MOVE                             R2 R0
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["localization"]
        6 LOADK                            R5 K1 ["Messages"]
        7 LOADK                            R6 K2 ["LocalMachineValuesWarning"]
        8 NAMECALL                         R3 R3 K3 ["getText"]
       10 CALL                             R3 3 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R1 K6 [table.insert]
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 1
       16 JUMPIFNOT                        R1 ; [+21]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K7 ["getWarnings"]
       20 JUMPIFNOT                        R1 ; [+17]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R1 R1 K7 ["getWarnings"]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["localization"]
       27 CALL                             R1 1 3
       28 FORGPREP                         R1
       29 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       31 MOVE                             R7 R0
       32 MOVE                             R8 R5
       33 GETIMPORT                        R6 K6 [table.insert]
       35 CALL                             R6 2 0
       36 FORGLOOP                         R1 2 ; [-8]
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R4 R4 K9 ["warningIndex"]
       41 SUBK                             R3 R4 K8 [1]
       42 LENGTH                           R4 R0
       43 MOD                              R2 R3 R4
       44 ADDK                             R1 R2 K8 [1]
       45 GETTABLE                         R3 R0 R1
       46 ORK                              R2 R3 K10 [""]
       47 DUPTABLE                         R3 K15 [{"UIPadding", "Layout", "InfoIcon", "WarningText"}]
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K16 ["createElement"]
       51 LOADK                            R5 K11 ["UIPadding"]
       52 DUPTABLE                         R6 K18 [{"PaddingLeft"}]
       53 GETIMPORT                        R7 K21 [UDim.new]
       55 LOADN                            R8 0
       56 LOADN                            R9 8
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K17 ["PaddingLeft"]
       60 CALL                             R4 2 1
       61 SETTABLEKS                       R4 R3 K11 ["UIPadding"]
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R4 R4 K16 ["createElement"]
       66 LOADK                            R5 K22 ["UIListLayout"]
       67 DUPTABLE                         R6 K27 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
       68 GETIMPORT                        R7 K30 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R7 R6 K23 ["FillDirection"]
       72 GETIMPORT                        R7 K32 [Enum.HorizontalAlignment.Center]
       74 SETTABLEKS                       R7 R6 K24 ["HorizontalAlignment"]
       76 GETIMPORT                        R7 K33 [Enum.VerticalAlignment.Center]
       78 SETTABLEKS                       R7 R6 K25 ["VerticalAlignment"]
       80 GETIMPORT                        R7 K21 [UDim.new]
       82 LOADN                            R8 0
       83 LOADN                            R9 4
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K26 ["Padding"]
       87 CALL                             R4 2 1
       88 SETTABLEKS                       R4 R3 K12 ["Layout"]
       90 GETUPVAL                         R4 3
       91 GETTABLEKS                       R4 R4 K16 ["createElement"]
       93 GETUPVAL                         R5 4
       94 DUPTABLE                         R6 K36 [{"name", "size"}]
       95 LOADK                            R7 K37 ["circle-i"]
       96 SETTABLEKS                       R7 R6 K34 ["name"]
       98 GETUPVAL                         R7 5
       99 GETTABLEKS                       R7 R7 K38 ["Enums"]
      101 GETTABLEKS                       R7 R7 K39 ["IconSize"]
      103 GETTABLEKS                       R7 R7 K40 ["Small"]
      105 SETTABLEKS                       R7 R6 K35 ["size"]
      107 CALL                             R4 2 1
      108 SETTABLEKS                       R4 R3 K13 ["InfoIcon"]
      110 GETUPVAL                         R4 3
      111 GETTABLEKS                       R4 R4 K16 ["createElement"]
      113 LOADK                            R5 K41 ["TextLabel"]
      114 NEWTABLE                         R6 8 0
      116 GETIMPORT                        R7 K44 [Enum.AutomaticSize.X]
      118 SETTABLEKS                       R7 R6 K42 ["AutomaticSize"]
      120 GETIMPORT                        R7 K46 [UDim2.new]
      122 LOADN                            R8 0
      123 LOADN                            R9 0
      124 LOADN                            R10 1
      125 LOADN                            R11 0
      126 CALL                             R7 4 1
      127 SETTABLEKS                       R7 R6 K47 ["Size"]
      129 LOADN                            R7 2
      130 SETTABLEKS                       R7 R6 K48 ["LayoutOrder"]
      132 LOADN                            R7 1
      133 SETTABLEKS                       R7 R6 K49 ["BackgroundTransparency"]
      135 SETTABLEKS                       R2 R6 K50 ["Text"]
      137 GETIMPORT                        R7 K53 [Enum.TextXAlignment.Left]
      139 SETTABLEKS                       R7 R6 K51 ["TextXAlignment"]
      141 GETIMPORT                        R7 K55 [Enum.TextYAlignment.Center]
      143 SETTABLEKS                       R7 R6 K54 ["TextYAlignment"]
      145 GETUPVAL                         R7 3
      146 GETTABLEKS                       R7 R7 K56 ["Tag"]
      148 LOADK                            R8 K57 ["SceneAnalysis-SmallText"]
      149 SETTABLE                         R8 R6 R7
      150 CALL                             R4 2 1
      151 SETTABLEKS                       R4 R3 K14 ["WarningText"]
      153 RETURN                           R3 1

PROTO_40:
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
       85 LOADN                            R15 128
       86 LOADN                            R16 224
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
      176 DUPTABLE                         R29 K67 [{"Size", "BackgroundTransparency"}]
      177 GETIMPORT                        R30 K69 [UDim2.new]
      179 LOADN                            R31 1
      180 LOADN                            R32 0
      181 LOADN                            R33 1
      182 LOADN                            R34 0
      183 CALL                             R30 4 1
      184 SETTABLEKS                       R30 R29 K33 ["Size"]
      186 LOADN                            R30 1
      187 SETTABLEKS                       R30 R29 K66 ["BackgroundTransparency"]
      189 DUPTABLE                         R30 K74 [{"Layout", "DropdownFrame", "FilterMenu", "SplitPane"}]
      190 GETUPVAL                         R31 4
      191 GETTABLEKS                       R31 R31 K17 ["createElement"]
      193 LOADK                            R32 K75 ["UIListLayout"]
      194 DUPTABLE                         R33 K81 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      195 GETIMPORT                        R34 K83 [UDim.new]
      197 LOADN                            R35 0
      198 LOADN                            R36 0
      199 CALL                             R34 2 1
      200 SETTABLEKS                       R34 R33 K76 ["Padding"]
      202 GETIMPORT                        R34 K85 [Enum.FillDirection.Vertical]
      204 SETTABLEKS                       R34 R33 K77 ["FillDirection"]
      206 GETIMPORT                        R34 K87 [Enum.HorizontalAlignment.Left]
      208 SETTABLEKS                       R34 R33 K78 ["HorizontalAlignment"]
      210 GETIMPORT                        R34 K89 [Enum.VerticalAlignment.Top]
      212 SETTABLEKS                       R34 R33 K79 ["VerticalAlignment"]
      214 GETIMPORT                        R34 K91 [Enum.SortOrder.LayoutOrder]
      216 SETTABLEKS                       R34 R33 K80 ["SortOrder"]
      218 CALL                             R31 2 1
      219 SETTABLEKS                       R31 R30 K70 ["Layout"]
      221 GETUPVAL                         R31 4
      222 GETTABLEKS                       R31 R31 K17 ["createElement"]
      224 LOADK                            R32 K61 ["Frame"]
      225 DUPTABLE                         R33 K92 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      226 GETIMPORT                        R34 K69 [UDim2.new]
      228 LOADN                            R35 1
      229 LOADN                            R36 0
      230 LOADN                            R37 0
      231 LOADN                            R38 30
      232 CALL                             R34 4 1
      233 SETTABLEKS                       R34 R33 K33 ["Size"]
      235 LOADN                            R34 1
      236 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      238 LOADN                            R34 1
      239 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      241 DUPTABLE                         R34 K97 [{"UIPadding", "Layout", "DropdownContainer", "SearchContainer", "RightGroup"}]
      242 GETUPVAL                         R35 4
      243 GETTABLEKS                       R35 R35 K17 ["createElement"]
      245 LOADK                            R36 K93 ["UIPadding"]
      246 DUPTABLE                         R37 K102 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      247 GETIMPORT                        R38 K83 [UDim.new]
      249 LOADN                            R39 0
      250 LOADN                            R40 4
      251 CALL                             R38 2 1
      252 SETTABLEKS                       R38 R37 K98 ["PaddingLeft"]
      254 GETIMPORT                        R38 K83 [UDim.new]
      256 LOADN                            R39 0
      257 LOADN                            R40 4
      258 CALL                             R38 2 1
      259 SETTABLEKS                       R38 R37 K99 ["PaddingRight"]
      261 GETIMPORT                        R38 K83 [UDim.new]
      263 LOADN                            R39 0
      264 LOADN                            R40 4
      265 CALL                             R38 2 1
      266 SETTABLEKS                       R38 R37 K100 ["PaddingTop"]
      268 GETIMPORT                        R38 K83 [UDim.new]
      270 LOADN                            R39 0
      271 LOADN                            R40 4
      272 CALL                             R38 2 1
      273 SETTABLEKS                       R38 R37 K101 ["PaddingBottom"]
      275 CALL                             R35 2 1
      276 SETTABLEKS                       R35 R34 K93 ["UIPadding"]
      278 GETUPVAL                         R35 4
      279 GETTABLEKS                       R35 R35 K17 ["createElement"]
      281 LOADK                            R36 K75 ["UIListLayout"]
      282 DUPTABLE                         R37 K103 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      283 GETIMPORT                        R38 K105 [Enum.FillDirection.Horizontal]
      285 SETTABLEKS                       R38 R37 K77 ["FillDirection"]
      287 GETIMPORT                        R38 K87 [Enum.HorizontalAlignment.Left]
      289 SETTABLEKS                       R38 R37 K78 ["HorizontalAlignment"]
      291 GETIMPORT                        R38 K107 [Enum.VerticalAlignment.Center]
      293 SETTABLEKS                       R38 R37 K79 ["VerticalAlignment"]
      295 GETIMPORT                        R38 K83 [UDim.new]
      297 LOADN                            R39 0
      298 LOADN                            R40 4
      299 CALL                             R38 2 1
      300 SETTABLEKS                       R38 R37 K76 ["Padding"]
      302 GETIMPORT                        R38 K91 [Enum.SortOrder.LayoutOrder]
      304 SETTABLEKS                       R38 R37 K80 ["SortOrder"]
      306 CALL                             R35 2 1
      307 SETTABLEKS                       R35 R34 K70 ["Layout"]
      309 GETUPVAL                         R35 4
      310 GETTABLEKS                       R35 R35 K17 ["createElement"]
      312 LOADK                            R36 K61 ["Frame"]
      313 DUPTABLE                         R37 K108 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      314 GETIMPORT                        R38 K69 [UDim2.new]
      316 LOADN                            R39 0
      317 LOADN                            R40 200
      318 LOADN                            R41 1
      319 LOADN                            R42 0
      320 CALL                             R38 4 1
      321 SETTABLEKS                       R38 R37 K33 ["Size"]
      323 LOADN                            R38 1
      324 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      326 LOADN                            R38 1
      327 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      329 DUPTABLE                         R38 K110 [{"Dropdown"}]
      330 GETUPVAL                         R39 4
      331 GETTABLEKS                       R39 R39 K17 ["createElement"]
      333 GETUPVAL                         R40 9
      334 GETTABLEKS                       R40 R40 K111 ["Root"]
      336 DUPTABLE                         R41 K118 [{"label", "width", "size", "value", "items", "onItemChanged"}]
      337 LOADK                            R42 K119 [""]
      338 SETTABLEKS                       R42 R41 K112 ["label"]
      340 GETIMPORT                        R42 K83 [UDim.new]
      342 LOADN                            R43 1
      343 LOADN                            R44 0
      344 CALL                             R42 2 1
      345 SETTABLEKS                       R42 R41 K113 ["width"]
      347 GETUPVAL                         R42 10
      348 GETTABLEKS                       R42 R42 K120 ["Enums"]
      350 GETTABLEKS                       R42 R42 K121 ["InputSize"]
      352 GETTABLEKS                       R42 R42 K122 ["XSmall"]
      354 SETTABLEKS                       R42 R41 K114 ["size"]
      356 GETTABLEKS                       R42 R0 K1 ["state"]
      358 GETTABLEKS                       R42 R42 K4 ["selectedCategory"]
      360 GETTABLEKS                       R42 R42 K123 ["id"]
      362 SETTABLEKS                       R42 R41 K115 ["value"]
      364 GETTABLEKS                       R42 R0 K124 ["categories"]
      366 SETTABLEKS                       R42 R41 K116 ["items"]
      368 NEWCLOSURE                       R42 P0
      369 CAPTURE                          VAL R0
      370 SETTABLEKS                       R42 R41 K117 ["onItemChanged"]
      372 CALL                             R39 2 1
      373 SETTABLEKS                       R39 R38 K109 ["Dropdown"]
      375 CALL                             R35 3 1
      376 SETTABLEKS                       R35 R34 K94 ["DropdownContainer"]
      378 GETUPVAL                         R35 4
      379 GETTABLEKS                       R35 R35 K17 ["createElement"]
      381 LOADK                            R36 K61 ["Frame"]
      382 DUPTABLE                         R37 K108 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      383 GETIMPORT                        R38 K69 [UDim2.new]
      385 LOADN                            R39 0
      386 LOADN                            R40 0
      387 LOADN                            R41 1
      388 LOADN                            R42 0
      389 CALL                             R38 4 1
      390 SETTABLEKS                       R38 R37 K33 ["Size"]
      392 LOADN                            R38 1
      393 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      395 LOADN                            R38 2
      396 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      398 DUPTABLE                         R38 K127 [{"UIFlexItem", "SearchInput"}]
      399 GETUPVAL                         R39 4
      400 GETTABLEKS                       R39 R39 K17 ["createElement"]
      402 LOADK                            R40 K125 ["UIFlexItem"]
      403 DUPTABLE                         R41 K129 [{"FlexMode"}]
      404 GETIMPORT                        R42 K132 [Enum.UIFlexMode.Fill]
      406 SETTABLEKS                       R42 R41 K128 ["FlexMode"]
      408 CALL                             R39 2 1
      409 SETTABLEKS                       R39 R38 K125 ["UIFlexItem"]
      411 GETUPVAL                         R39 4
      412 GETTABLEKS                       R39 R39 K17 ["createElement"]
      414 GETUPVAL                         R40 11
      415 DUPTABLE                         R41 K137 [{"label", "leadingIcon", "placeholder", "width", "size", "text", "onChanged"}]
      416 LOADK                            R42 K119 [""]
      417 SETTABLEKS                       R42 R41 K112 ["label"]
      419 GETUPVAL                         R42 10
      420 GETTABLEKS                       R42 R42 K120 ["Enums"]
      422 GETTABLEKS                       R42 R42 K138 ["IconName"]
      424 GETTABLEKS                       R42 R42 K139 ["MagnifyingGlass"]
      426 SETTABLEKS                       R42 R41 K133 ["leadingIcon"]
      428 GETTABLEKS                       R42 R0 K11 ["localization"]
      430 LOADK                            R44 K140 ["Controls"]
      431 LOADK                            R45 K141 ["SearchPlaceholder"]
      432 NAMECALL                         R42 R42 K22 ["getText"]
      434 CALL                             R42 3 1
      435 SETTABLEKS                       R42 R41 K134 ["placeholder"]
      437 GETIMPORT                        R42 K83 [UDim.new]
      439 LOADN                            R43 1
      440 LOADN                            R44 0
      441 CALL                             R42 2 1
      442 SETTABLEKS                       R42 R41 K113 ["width"]
      444 GETUPVAL                         R42 10
      445 GETTABLEKS                       R42 R42 K120 ["Enums"]
      447 GETTABLEKS                       R42 R42 K121 ["InputSize"]
      449 GETTABLEKS                       R42 R42 K122 ["XSmall"]
      451 SETTABLEKS                       R42 R41 K114 ["size"]
      453 GETTABLEKS                       R43 R0 K1 ["state"]
      455 GETTABLEKS                       R43 R43 K142 ["searchTerm"]
      457 ORK                              R42 R43 K119 [""]
      458 SETTABLEKS                       R42 R41 K135 ["text"]
      460 NEWCLOSURE                       R42 P1
      461 CAPTURE                          VAL R0
      462 SETTABLEKS                       R42 R41 K136 ["onChanged"]
      464 CALL                             R39 2 1
      465 SETTABLEKS                       R39 R38 K126 ["SearchInput"]
      467 CALL                             R35 3 1
      468 SETTABLEKS                       R35 R34 K95 ["SearchContainer"]
      470 GETUPVAL                         R35 4
      471 GETTABLEKS                       R35 R35 K17 ["createElement"]
      473 LOADK                            R36 K61 ["Frame"]
      474 DUPTABLE                         R37 K144 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
      475 GETIMPORT                        R38 K146 [Enum.AutomaticSize.X]
      477 SETTABLEKS                       R38 R37 K143 ["AutomaticSize"]
      479 GETIMPORT                        R38 K69 [UDim2.new]
      481 LOADN                            R39 0
      482 LOADN                            R40 0
      483 LOADN                            R41 1
      484 LOADN                            R42 0
      485 CALL                             R38 4 1
      486 SETTABLEKS                       R38 R37 K33 ["Size"]
      488 LOADN                            R38 1
      489 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      491 LOADN                            R38 3
      492 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      494 DUPTABLE                         R38 K150 [{"Layout", "AutoupdateToggle", "ClearBaselineButton", "FilterButton"}]
      495 GETUPVAL                         R39 4
      496 GETTABLEKS                       R39 R39 K17 ["createElement"]
      498 LOADK                            R40 K75 ["UIListLayout"]
      499 DUPTABLE                         R41 K151 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      500 GETIMPORT                        R42 K105 [Enum.FillDirection.Horizontal]
      502 SETTABLEKS                       R42 R41 K77 ["FillDirection"]
      504 GETIMPORT                        R42 K153 [Enum.HorizontalAlignment.Right]
      506 SETTABLEKS                       R42 R41 K78 ["HorizontalAlignment"]
      508 GETIMPORT                        R42 K107 [Enum.VerticalAlignment.Center]
      510 SETTABLEKS                       R42 R41 K79 ["VerticalAlignment"]
      512 CALL                             R39 2 1
      513 SETTABLEKS                       R39 R38 K70 ["Layout"]
      515 GETUPVAL                         R39 4
      516 GETTABLEKS                       R39 R39 K17 ["createElement"]
      518 GETUPVAL                         R40 12
      519 DUPTABLE                         R41 K156 [{"LayoutOrder", "isChecked", "label", "size", "onActivated"}]
      520 LOADN                            R42 1
      521 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      523 GETTABLEKS                       R43 R2 K157 ["paused"]
      525 NOT                              R42 R43
      526 SETTABLEKS                       R42 R41 K154 ["isChecked"]
      528 GETTABLEKS                       R42 R0 K11 ["localization"]
      530 LOADK                            R44 K140 ["Controls"]
      531 LOADK                            R45 K147 ["AutoupdateToggle"]
      532 NAMECALL                         R42 R42 K22 ["getText"]
      534 CALL                             R42 3 1
      535 SETTABLEKS                       R42 R41 K112 ["label"]
      537 GETUPVAL                         R42 13
      538 GETTABLEKS                       R42 R42 K158 ["Small"]
      540 SETTABLEKS                       R42 R41 K114 ["size"]
      542 NEWCLOSURE                       R42 P2
      543 CAPTURE                          VAL R0
      544 SETTABLEKS                       R42 R41 K155 ["onActivated"]
      546 CALL                             R39 2 1
      547 SETTABLEKS                       R39 R38 K147 ["AutoupdateToggle"]
      549 MOVE                             R39 R7
      550 JUMPIFNOT                        R39 ; [+32]
      551 GETUPVAL                         R39 4
      552 GETTABLEKS                       R39 R39 K17 ["createElement"]
      554 GETUPVAL                         R40 14
      555 DUPTABLE                         R41 K160 [{"LayoutOrder", "icon", "size", "onActivated"}]
      556 LOADN                            R42 2
      557 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      559 GETUPVAL                         R42 10
      560 GETTABLEKS                       R42 R42 K120 ["Enums"]
      562 GETTABLEKS                       R42 R42 K138 ["IconName"]
      564 GETTABLEKS                       R42 R42 K161 ["ArrowRotateRight"]
      566 SETTABLEKS                       R42 R41 K159 ["icon"]
      568 GETUPVAL                         R42 10
      569 GETTABLEKS                       R42 R42 K120 ["Enums"]
      571 GETTABLEKS                       R42 R42 K121 ["InputSize"]
      573 GETTABLEKS                       R42 R42 K158 ["Small"]
      575 SETTABLEKS                       R42 R41 K114 ["size"]
      577 NEWCLOSURE                       R42 P3
      578 CAPTURE                          VAL R5
      579 CAPTURE                          VAL R0
      580 SETTABLEKS                       R42 R41 K155 ["onActivated"]
      582 CALL                             R39 2 1
      583 SETTABLEKS                       R39 R38 K148 ["ClearBaselineButton"]
      585 MOVE                             R39 R6
      586 JUMPIFNOT                        R39 ; [+31]
      587 GETUPVAL                         R39 4
      588 GETTABLEKS                       R39 R39 K17 ["createElement"]
      590 GETUPVAL                         R40 14
      591 DUPTABLE                         R41 K160 [{"LayoutOrder", "icon", "size", "onActivated"}]
      592 LOADN                            R42 3
      593 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      595 GETUPVAL                         R42 10
      596 GETTABLEKS                       R42 R42 K120 ["Enums"]
      598 GETTABLEKS                       R42 R42 K138 ["IconName"]
      600 GETTABLEKS                       R42 R42 K162 ["ThreeSlidersHorizontal"]
      602 SETTABLEKS                       R42 R41 K159 ["icon"]
      604 GETUPVAL                         R42 10
      605 GETTABLEKS                       R42 R42 K120 ["Enums"]
      607 GETTABLEKS                       R42 R42 K121 ["InputSize"]
      609 GETTABLEKS                       R42 R42 K158 ["Small"]
      611 SETTABLEKS                       R42 R41 K114 ["size"]
      613 NEWCLOSURE                       R42 P4
      614 CAPTURE                          VAL R0
      615 SETTABLEKS                       R42 R41 K155 ["onActivated"]
      617 CALL                             R39 2 1
      618 SETTABLEKS                       R39 R38 K149 ["FilterButton"]
      620 CALL                             R35 3 1
      621 SETTABLEKS                       R35 R34 K96 ["RightGroup"]
      623 CALL                             R31 3 1
      624 SETTABLEKS                       R31 R30 K71 ["DropdownFrame"]
      626 MOVE                             R31 R6
      627 JUMPIFNOT                        R31 ; [+32]
      628 GETTABLEKS                       R31 R2 K163 ["filterMenuOpen"]
      630 JUMPIFNOT                        R31 ; [+29]
      631 GETUPVAL                         R31 4
      632 GETTABLEKS                       R31 R31 K17 ["createElement"]
      634 LOADK                            R32 K61 ["Frame"]
      635 DUPTABLE                         R33 K92 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      636 GETIMPORT                        R34 K69 [UDim2.new]
      638 LOADN                            R35 1
      639 LOADN                            R36 0
      640 LOADN                            R37 0
      641 LOADN                            R38 30
      642 CALL                             R34 4 1
      643 SETTABLEKS                       R34 R33 K33 ["Size"]
      645 LOADN                            R34 2
      646 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      648 LOADN                            R34 1
      649 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      651 NEWCLOSURE                       R34 P5
      652 CAPTURE                          UPVAL U4
      653 CAPTURE                          VAL R2
      654 CAPTURE                          VAL R5
      655 CAPTURE                          UPVAL U12
      656 CAPTURE                          UPVAL U10
      657 CAPTURE                          VAL R0
      658 CALL                             R34 0 1
      659 CALL                             R31 3 1
      660 SETTABLEKS                       R31 R30 K72 ["FilterMenu"]
      662 GETUPVAL                         R31 4
      663 GETTABLEKS                       R31 R31 K17 ["createElement"]
      665 GETUPVAL                         R32 15
      666 DUPTABLE                         R33 K170 [{"Size", "LayoutOrder", "InitialSizes", "UseScale", "ClampSize", "HideBars", "MinSizes", "MaxSizes", "Layout"}]
      667 GETIMPORT                        R34 K69 [UDim2.new]
      669 LOADN                            R35 1
      670 LOADN                            R36 0
      671 LOADN                            R37 1
      672 LOADN                            R38 0
      673 CALL                             R34 4 1
      674 SETTABLEKS                       R34 R33 K33 ["Size"]
      676 LOADN                            R34 3
      677 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      679 NEWTABLE                         R34 0 2
      681 GETIMPORT                        R35 K83 [UDim.new]
      683 LOADK                            R36 K171 [0.5]
      684 LOADN                            R37 0
      685 CALL                             R35 2 1
      686 GETIMPORT                        R36 K83 [UDim.new]
      688 LOADK                            R37 K171 [0.5]
      689 LOADN                            R38 0
      690 CALL                             R36 2 -1
      691 SETLIST                          R34 R35 -1 [1]
      693 SETTABLEKS                       R34 R33 K164 ["InitialSizes"]
      695 LOADB                            R34 1
      696 SETTABLEKS                       R34 R33 K165 ["UseScale"]
      698 LOADB                            R34 1
      699 SETTABLEKS                       R34 R33 K166 ["ClampSize"]
      701 LOADB                            R34 0
      702 SETTABLEKS                       R34 R33 K167 ["HideBars"]
      704 NEWTABLE                         R34 0 2
      706 GETIMPORT                        R35 K83 [UDim.new]
      708 LOADK                            R36 K172 [0.1]
      709 LOADN                            R37 0
      710 CALL                             R35 2 1
      711 GETIMPORT                        R36 K83 [UDim.new]
      713 LOADK                            R37 K172 [0.1]
      714 LOADN                            R38 0
      715 CALL                             R36 2 -1
      716 SETLIST                          R34 R35 -1 [1]
      718 SETTABLEKS                       R34 R33 K168 ["MinSizes"]
      720 NEWTABLE                         R34 0 2
      722 LOADNIL                          R35
      723 LOADNIL                          R36
      724 SETLIST                          R34 R35 2 [1]
      726 SETTABLEKS                       R34 R33 K169 ["MaxSizes"]
      728 GETIMPORT                        R34 K85 [Enum.FillDirection.Vertical]
      730 SETTABLEKS                       R34 R33 K70 ["Layout"]
      732 NEWTABLE                         R34 0 2
      734 GETUPVAL                         R35 4
      735 GETTABLEKS                       R35 R35 K17 ["createElement"]
      737 LOADK                            R36 K61 ["Frame"]
      738 DUPTABLE                         R37 K174 [{"Size", "Position", "BackgroundTransparency"}]
      739 GETIMPORT                        R38 K69 [UDim2.new]
      741 LOADN                            R39 1
      742 LOADN                            R40 0
      743 LOADN                            R41 1
      744 LOADN                            R42 0
      745 CALL                             R38 4 1
      746 SETTABLEKS                       R38 R37 K33 ["Size"]
      748 GETIMPORT                        R38 K69 [UDim2.new]
      750 LOADN                            R39 0
      751 LOADN                            R40 0
      752 LOADN                            R41 0
      753 LOADN                            R42 0
      754 CALL                             R38 4 1
      755 SETTABLEKS                       R38 R37 K173 ["Position"]
      757 LOADN                            R38 1
      758 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      760 DUPTABLE                         R38 K176 [{"Treemap"}]
      761 GETUPVAL                         R39 4
      762 GETTABLEKS                       R39 R39 K17 ["createElement"]
      764 GETUPVAL                         R40 16
      765 DUPTABLE                         R41 K183 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization", "tooltipLabels"}]
      766 GETTABLEKS                       R42 R0 K184 ["treemapRef"]
      768 SETTABLEKS                       R42 R41 K177 ["ref"]
      770 GETIMPORT                        R42 K69 [UDim2.new]
      772 LOADN                            R43 1
      773 LOADN                            R44 248
      774 LOADN                            R45 1
      775 LOADN                            R46 248
      776 CALL                             R42 4 1
      777 SETTABLEKS                       R42 R41 K33 ["Size"]
      779 GETIMPORT                        R42 K69 [UDim2.new]
      781 LOADN                            R43 0
      782 LOADN                            R44 4
      783 LOADN                            R45 0
      784 LOADN                            R46 4
      785 CALL                             R42 4 1
      786 SETTABLEKS                       R42 R41 K173 ["Position"]
      788 GETUPVAL                         R42 17
      789 GETTABLEKS                       R42 R42 K185 ["mockData"]
      791 SETTABLEKS                       R42 R41 K178 ["NodeOutput"]
      793 GETTABLEKS                       R42 R0 K179 ["treemapContext"]
      795 SETTABLEKS                       R42 R41 K179 ["treemapContext"]
      797 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      799 JUMPIFNOT                        R43 ; [+5]
      800 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      802 GETTABLEKS                       R42 R42 K180 ["valueFormat"]
      804 JUMPIF                           R42 ; [+1]
      805 LOADK                            R42 K186 ["memory"]
      806 SETTABLEKS                       R42 R41 K180 ["valueFormat"]
      808 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      810 JUMPIFNOT                        R43 ; [+5]
      811 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      813 GETTABLEKS                       R42 R42 K181 ["colorRamp"]
      815 JUMPIF                           R42 ; [+3]
      816 GETUPVAL                         R42 18
      817 GETTABLEKS                       R42 R42 K187 ["Default"]
      819 SETTABLEKS                       R42 R41 K181 ["colorRamp"]
      821 GETTABLEKS                       R42 R0 K11 ["localization"]
      823 SETTABLEKS                       R42 R41 K11 ["localization"]
      825 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      827 JUMPIFNOT                        R43 ; [+12]
      828 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      830 GETTABLEKS                       R43 R43 K5 ["module"]
      832 JUMPIFNOT                        R43 ; [+7]
      833 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      835 GETTABLEKS                       R42 R42 K5 ["module"]
      837 GETTABLEKS                       R42 R42 K182 ["tooltipLabels"]
      839 JUMPIF                           R42 ; [+1]
      840 LOADNIL                          R42
      841 SETTABLEKS                       R42 R41 K182 ["tooltipLabels"]
      843 CALL                             R39 2 1
      844 SETTABLEKS                       R39 R38 K175 ["Treemap"]
      846 CALL                             R35 3 1
      847 GETUPVAL                         R36 4
      848 GETTABLEKS                       R36 R36 K17 ["createElement"]
      850 LOADK                            R37 K61 ["Frame"]
      851 DUPTABLE                         R38 K67 [{"Size", "BackgroundTransparency"}]
      852 GETIMPORT                        R39 K69 [UDim2.new]
      854 LOADN                            R40 1
      855 LOADN                            R41 0
      856 LOADN                            R42 1
      857 LOADN                            R43 224
      858 CALL                             R39 4 1
      859 SETTABLEKS                       R39 R38 K33 ["Size"]
      861 LOADN                            R39 1
      862 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      864 DUPTABLE                         R39 K192 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper", "WarningBar"}]
      865 GETUPVAL                         R40 4
      866 GETTABLEKS                       R40 R40 K17 ["createElement"]
      868 LOADK                            R41 K93 ["UIPadding"]
      869 DUPTABLE                         R42 K193 [{"PaddingLeft"}]
      870 GETIMPORT                        R43 K83 [UDim.new]
      872 LOADN                            R44 0
      873 LOADN                            R45 4
      874 CALL                             R43 2 1
      875 SETTABLEKS                       R43 R42 K98 ["PaddingLeft"]
      877 CALL                             R40 2 1
      878 SETTABLEKS                       R40 R39 K188 ["ListPadding"]
      880 GETUPVAL                         R40 4
      881 GETTABLEKS                       R40 R40 K17 ["createElement"]
      883 LOADK                            R41 K75 ["UIListLayout"]
      884 DUPTABLE                         R42 K194 [{"SortOrder", "FillDirection"}]
      885 GETIMPORT                        R43 K91 [Enum.SortOrder.LayoutOrder]
      887 SETTABLEKS                       R43 R42 K80 ["SortOrder"]
      889 GETIMPORT                        R43 K85 [Enum.FillDirection.Vertical]
      891 SETTABLEKS                       R43 R42 K77 ["FillDirection"]
      893 CALL                             R40 2 1
      894 SETTABLEKS                       R40 R39 K75 ["UIListLayout"]
      896 GETUPVAL                         R40 4
      897 GETTABLEKS                       R40 R40 K17 ["createElement"]
      899 GETUPVAL                         R41 19
      900 DUPTABLE                         R42 K198 [{"LayoutOrder", "query", "queryInfo", "selectedIdsHash", "localization"}]
      901 LOADN                            R43 1
      902 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
      904 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
      906 JUMPIFNOT                        R44 ; [+5]
      907 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      909 GETTABLEKS                       R43 R43 K5 ["module"]
      911 JUMP                             ; [+1]
      912 LOADNIL                          R43
      913 SETTABLEKS                       R43 R42 K195 ["query"]
      915 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      917 SETTABLEKS                       R43 R42 K196 ["queryInfo"]
      919 GETTABLEKS                       R43 R2 K197 ["selectedIdsHash"]
      921 SETTABLEKS                       R43 R42 K197 ["selectedIdsHash"]
      923 GETTABLEKS                       R43 R0 K11 ["localization"]
      925 SETTABLEKS                       R43 R42 K11 ["localization"]
      927 CALL                             R40 2 1
      928 SETTABLEKS                       R40 R39 K189 ["Summary"]
      930 GETUPVAL                         R40 4
      931 GETTABLEKS                       R40 R40 K17 ["createElement"]
      933 LOADK                            R41 K61 ["Frame"]
      934 DUPTABLE                         R42 K92 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      935 GETIMPORT                        R43 K69 [UDim2.new]
      937 LOADN                            R44 1
      938 LOADN                            R45 0
      939 LOADN                            R46 1
      940 LOADN                            R47 198
      941 CALL                             R43 4 1
      942 SETTABLEKS                       R43 R42 K33 ["Size"]
      944 LOADN                            R43 2
      945 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
      947 LOADN                            R43 1
      948 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
      950 DUPTABLE                         R43 K200 [{"List"}]
      951 GETUPVAL                         R44 4
      952 GETTABLEKS                       R44 R44 K17 ["createElement"]
      954 GETUPVAL                         R45 20
      955 DUPTABLE                         R46 K210 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
      956 GETTABLEKS                       R47 R0 K211 ["virtualizedListRef"]
      958 SETTABLEKS                       R47 R46 K177 ["ref"]
      960 GETTABLEKS                       R47 R2 K201 ["windowHeight"]
      962 SETTABLEKS                       R47 R46 K201 ["windowHeight"]
      964 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
      966 JUMPIFNOT                        R48 ; [+8]
      967 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
      969 GETTABLEKS                       R47 R47 K5 ["module"]
      971 GETTABLEKS                       R47 R47 K212 ["getNodesObservable"]
      973 CALL                             R47 0 1
      974 JUMP                             ; [+1]
      975 LOADNIL                          R47
      976 SETTABLEKS                       R47 R46 K202 ["rootNodeObservable"]
      978 GETTABLEKS                       R47 R0 K203 ["scrollHeightObservable"]
      980 SETTABLEKS                       R47 R46 K203 ["scrollHeightObservable"]
      982 GETTABLEKS                       R47 R0 K204 ["scrollRef"]
      984 SETTABLEKS                       R47 R46 K204 ["scrollRef"]
      986 GETTABLEKS                       R47 R0 K205 ["onAbsoluteSizeChange"]
      988 SETTABLEKS                       R47 R46 K205 ["onAbsoluteSizeChange"]
      990 GETTABLEKS                       R47 R0 K206 ["onCanvasPositionChange"]
      992 SETTABLEKS                       R47 R46 K206 ["onCanvasPositionChange"]
      994 GETTABLEKS                       R47 R1 K207 ["ZIndex"]
      996 SETTABLEKS                       R47 R46 K207 ["ZIndex"]
      998 GETTABLEKS                       R47 R0 K208 ["onNodeClicked"]
     1000 SETTABLEKS                       R47 R46 K208 ["onNodeClicked"]
     1002 GETTABLEKS                       R47 R0 K213 ["onListNodeRightClicked"]
     1004 SETTABLEKS                       R47 R46 K209 ["onNodeRightClicked"]
     1006 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1008 JUMPIFNOT                        R48 ; [+5]
     1009 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1011 GETTABLEKS                       R47 R47 K5 ["module"]
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R47
     1015 SETTABLEKS                       R47 R46 K195 ["query"]
     1017 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1019 SETTABLEKS                       R47 R46 K196 ["queryInfo"]
     1021 CALL                             R44 2 1
     1022 SETTABLEKS                       R44 R43 K199 ["List"]
     1024 CALL                             R40 3 1
     1025 SETTABLEKS                       R40 R39 K190 ["ListWrapper"]
     1027 GETUPVAL                         R40 4
     1028 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1030 LOADK                            R41 K61 ["Frame"]
     1031 DUPTABLE                         R42 K92 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
     1032 GETIMPORT                        R43 K69 [UDim2.new]
     1034 LOADN                            R44 1
     1035 LOADN                            R45 0
     1036 LOADN                            R46 0
     1037 LOADN                            R47 24
     1038 CALL                             R43 4 1
     1039 SETTABLEKS                       R43 R42 K33 ["Size"]
     1041 LOADN                            R43 3
     1042 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
     1044 LOADN                            R43 1
     1045 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
     1047 NEWCLOSURE                       R43 P6
     1048 CAPTURE                          VAL R0
     1049 CAPTURE                          VAL R5
     1050 CAPTURE                          VAL R2
     1051 CAPTURE                          UPVAL U4
     1052 CAPTURE                          UPVAL U21
     1053 CAPTURE                          UPVAL U10
     1054 CALL                             R43 0 1
     1055 CALL                             R40 3 1
     1056 SETTABLEKS                       R40 R39 K191 ["WarningBar"]
     1058 CALL                             R36 3 1
     1059 SETLIST                          R34 R35 2 [1]
     1061 CALL                             R31 3 1
     1062 SETTABLEKS                       R31 R30 K73 ["SplitPane"]
     1064 CALL                             R27 3 1
     1065 SETTABLEKS                       R27 R26 K64 ["ContentArea"]
     1067 CALL                             R23 3 1
     1068 SETTABLEKS                       R23 R22 K57 ["Wrapper"]
     1070 GETUPVAL                         R23 4
     1071 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1073 LOADK                            R24 K58 ["StyleLink"]
     1074 DUPTABLE                         R25 K215 [{"StyleSheet"}]
     1075 GETTABLEKS                       R26 R0 K14 ["design"]
     1077 SETTABLEKS                       R26 R25 K214 ["StyleSheet"]
     1079 CALL                             R23 2 1
     1080 SETTABLEKS                       R23 R22 K58 ["StyleLink"]
     1082 GETUPVAL                         R23 4
     1083 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1085 GETUPVAL                         R24 22
     1086 CALL                             R23 1 1
     1087 SETTABLEKS                       R23 R22 K59 ["WidgetRegister"]
     1089 CALL                             R19 3 1
     1090 SETTABLEKS                       R19 R18 K53 ["ContextStack"]
     1092 CALL                             R15 3 1
     1093 SETTABLEKS                       R15 R14 K48 ["Foundations"]
     1095 CALL                             R11 3 1
     1096 SETTABLEKS                       R11 R10 K15 ["MainWidget"]
     1098 CALL                             R8 2 -1
     1099 RETURN                           R8 -1

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
       52 GETTABLEKS                       R8 R7 K18 ["getFFlagRegisterActionsPluginLoader"]
       54 CALL                             R8 0 1
       55 GETTABLEKS                       R9 R7 K19 ["getFFlagSceneAnalysisRenderAttribution"]
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
      320 DUPCLOSURE                       R51 K79 [PROTO_22]
      321 CAPTURE                          VAL R8
      322 CAPTURE                          VAL R40
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
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R46
      345 SETTABLEKS                       R51 R39 K80 ["init"]
      347 DUPCLOSURE                       R51 K81 [PROTO_23]
      348 SETTABLEKS                       R51 R39 K82 ["unhookHeartbeat"]
      350 DUPCLOSURE                       R51 K83 [PROTO_28]
      351 SETTABLEKS                       R51 R39 K84 ["hookHeartbeat"]
      353 DUPCLOSURE                       R51 K85 [PROTO_29]
      354 CAPTURE                          VAL R8
      355 SETTABLEKS                       R51 R39 K86 ["didUpdate"]
      357 DUPCLOSURE                       R51 K87 [PROTO_30]
      358 SETTABLEKS                       R51 R39 K88 ["willUnmount"]
      360 DUPCLOSURE                       R51 K89 [PROTO_40]
      361 CAPTURE                          VAL R18
      362 CAPTURE                          VAL R19
      363 CAPTURE                          VAL R20
      364 CAPTURE                          VAL R21
      365 CAPTURE                          VAL R1
      366 CAPTURE                          VAL R17
      367 CAPTURE                          VAL R5
      368 CAPTURE                          VAL R2
      369 CAPTURE                          VAL R33
      370 CAPTURE                          VAL R11
      371 CAPTURE                          VAL R10
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R12
      374 CAPTURE                          VAL R16
      375 CAPTURE                          VAL R15
      376 CAPTURE                          VAL R28
      377 CAPTURE                          VAL R27
      378 CAPTURE                          VAL R36
      379 CAPTURE                          VAL R34
      380 CAPTURE                          VAL R30
      381 CAPTURE                          VAL R29
      382 CAPTURE                          VAL R14
      383 CAPTURE                          VAL R32
      384 SETTABLEKS                       R51 R39 K90 ["render"]
      386 RETURN                           R39 1

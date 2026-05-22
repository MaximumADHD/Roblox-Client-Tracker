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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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
        6 DUPTABLE                         R2 K12 [{"selectedIdsHash", "enabled", "windowHeight", "windowWidth", "paused", "searchTerm", "filterMenuOpen", "filterState", "warningIndex", "selectedCategory"}]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["selectedIdsHash"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["enabled"]
       13 LOADN                            R3 0
       14 SETTABLEKS                       R3 R2 K4 ["windowHeight"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["windowWidth"]
       19 LOADB                            R3 0
       20 SETTABLEKS                       R3 R2 K6 ["paused"]
       22 LOADK                            R3 K13 [""]
       23 SETTABLEKS                       R3 R2 K7 ["searchTerm"]
       25 LOADB                            R3 0
       26 SETTABLEKS                       R3 R2 K8 ["filterMenuOpen"]
       28 LOADNIL                          R3
       29 SETTABLEKS                       R3 R2 K9 ["filterState"]
       31 LOADN                            R3 1
       32 SETTABLEKS                       R3 R2 K10 ["warningIndex"]
       34 LOADNIL                          R3
       35 SETTABLEKS                       R3 R2 K11 ["selectedCategory"]
       37 SETTABLEKS                       R2 R0 K14 ["state"]
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R2 R0 K15 ["onHeaderSizeChange"]
       43 NEWCLOSURE                       R2 P1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 SETTABLEKS                       R2 R0 K16 ["toggleEnabled"]
       48 GETTABLEKS                       R2 R1 K17 ["Plugin"]
       50 LOADK                            R4 K18 ["Actions"]
       51 NAMECALL                         R2 R2 K19 ["GetPluginComponent"]
       53 CALL                             R2 2 1
       54 GETUPVAL                         R3 0
       55 JUMPIFNOT                        R3 ; [+8]
       56 GETIMPORT                        R3 K22 [task.spawn]
       58 NEWCLOSURE                       R4 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R1
       63 CALL                             R3 1 0
       64 NEWCLOSURE                       R3 P3
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R3 R0 K23 ["togglePause"]
       68 NEWCLOSURE                       R3 P4
       69 CAPTURE                          UPVAL U0
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R2
       72 CAPTURE                          UPVAL U1
       73 SETTABLEKS                       R3 R0 K24 ["onClose"]
       75 NEWCLOSURE                       R3 P5
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U1
       80 CAPTURE                          VAL R1
       81 SETTABLEKS                       R3 R0 K25 ["onRestore"]
       83 NEWCLOSURE                       R3 P6
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          VAL R0
       86 CAPTURE                          VAL R2
       87 CAPTURE                          UPVAL U1
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R3 R0 K26 ["onWidgetEnabledChanged"]
       91 NEWCLOSURE                       R3 P7
       92 CAPTURE                          UPVAL U0
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R3 R0 K27 ["onDockWidgetCreated"]
       96 GETUPVAL                         R3 2
       97 GETTABLEKS                       R3 R3 K28 ["Localization"]
       99 GETTABLEKS                       R3 R3 K29 ["new"]
      101 DUPTABLE                         R4 K33 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      102 GETUPVAL                         R5 3
      103 SETTABLEKS                       R5 R4 K30 ["stringResourceTable"]
      105 GETUPVAL                         R5 4
      106 SETTABLEKS                       R5 R4 K31 ["translationResourceTable"]
      108 LOADK                            R5 K34 ["SceneAnalysis"]
      109 SETTABLEKS                       R5 R4 K32 ["pluginName"]
      111 CALL                             R3 1 1
      112 SETTABLEKS                       R3 R0 K35 ["localization"]
      114 GETUPVAL                         R3 2
      115 GETTABLEKS                       R3 R3 K36 ["Analytics"]
      117 GETTABLEKS                       R3 R3 K29 ["new"]
      119 DUPCLOSURE                       R4 K37 [PROTO_15]
      120 NEWTABLE                         R5 0 0
      122 CALL                             R3 2 1
      123 SETTABLEKS                       R3 R0 K38 ["analytics"]
      125 GETUPVAL                         R3 5
      126 GETTABLEKS                       R3 R3 K39 ["createRef"]
      128 CALL                             R3 0 1
      129 SETTABLEKS                       R3 R0 K40 ["treemapRef"]
      131 LOADN                            R3 0
      132 SETTABLEKS                       R3 R0 K41 ["timeOfNextAutomaticUpdate"]
      134 LOADN                            R3 1
      135 SETTABLEKS                       R3 R0 K42 ["delayBetweenAutomaticUpdates"]
      137 MOVE                             R5 R1
      138 NAMECALL                         R3 R0 K43 ["hookHeartbeat"]
      140 CALL                             R3 2 0
      141 GETUPVAL                         R3 6
      142 GETTABLEKS                       R3 R3 K44 ["create"]
      144 LOADN                            R4 0
      145 CALL                             R3 1 2
      146 SETTABLEKS                       R3 R0 K45 ["scrollHeightObservable"]
      148 SETTABLEKS                       R4 R0 K46 ["setScrollHeight"]
      150 GETUPVAL                         R3 5
      151 GETTABLEKS                       R3 R3 K39 ["createRef"]
      153 CALL                             R3 0 1
      154 SETTABLEKS                       R3 R0 K47 ["scrollRef"]
      156 GETUPVAL                         R3 5
      157 GETTABLEKS                       R3 R3 K39 ["createRef"]
      159 CALL                             R3 0 1
      160 SETTABLEKS                       R3 R0 K48 ["virtualizedListRef"]
      162 GETUPVAL                         R3 7
      163 GETTABLEKS                       R3 R3 K29 ["new"]
      165 DUPTABLE                         R4 K51 [{"treemapRef", "listRef", "plugin"}]
      166 GETTABLEKS                       R5 R0 K40 ["treemapRef"]
      168 SETTABLEKS                       R5 R4 K40 ["treemapRef"]
      170 GETTABLEKS                       R5 R0 K48 ["virtualizedListRef"]
      172 SETTABLEKS                       R5 R4 K49 ["listRef"]
      174 GETTABLEKS                       R5 R1 K17 ["Plugin"]
      176 SETTABLEKS                       R5 R4 K50 ["plugin"]
      178 CALL                             R3 1 1
      179 SETTABLEKS                       R3 R0 K52 ["selectionManager"]
      181 GETTABLEKS                       R3 R0 K52 ["selectionManager"]
      183 LOADB                            R5 1
      184 NAMECALL                         R3 R3 K53 ["setDeselectOnReselect"]
      186 CALL                             R3 2 0
      187 GETTABLEKS                       R3 R0 K52 ["selectionManager"]
      189 NAMECALL                         R3 R3 K54 ["getSelectionObservable"]
      191 CALL                             R3 1 1
      192 GETTABLEKS                       R3 R3 K55 ["changedSignal"]
      194 NEWCLOSURE                       R5 P9
      195 CAPTURE                          VAL R0
      196 CAPTURE                          UPVAL U8
      197 NAMECALL                         R3 R3 K56 ["Connect"]
      199 CALL                             R3 2 0
      200 NEWCLOSURE                       R3 P10
      201 CAPTURE                          VAL R0
      202 CAPTURE                          UPVAL U9
      203 CAPTURE                          UPVAL U10
      204 SETTABLEKS                       R3 R0 K57 ["onNodeRightClicked"]
      206 GETUPVAL                         R3 11
      207 GETTABLEKS                       R3 R3 K29 ["new"]
      209 GETTABLEKS                       R4 R0 K52 ["selectionManager"]
      211 GETTABLEKS                       R5 R0 K57 ["onNodeRightClicked"]
      213 CALL                             R3 2 1
      214 SETTABLEKS                       R3 R0 K58 ["treemapContext"]
      216 NEWCLOSURE                       R3 P11
      217 CAPTURE                          VAL R0
      218 SETTABLEKS                       R3 R0 K59 ["onNodeClicked"]
      220 NEWCLOSURE                       R3 P12
      221 CAPTURE                          VAL R0
      222 SETTABLEKS                       R3 R0 K60 ["onListNodeRightClicked"]
      224 NEWCLOSURE                       R3 P13
      225 CAPTURE                          VAL R0
      226 SETTABLEKS                       R3 R0 K61 ["onAbsoluteSizeChange"]
      228 NEWCLOSURE                       R3 P14
      229 CAPTURE                          VAL R0
      230 SETTABLEKS                       R3 R0 K62 ["onCanvasPositionChange"]
      232 GETUPVAL                         R3 12
      233 GETTABLEKS                       R3 R3 K29 ["new"]
      235 CALL                             R3 0 1
      236 SETTABLEKS                       R3 R0 K63 ["DEPRECATED_stylizer"]
      238 GETUPVAL                         R3 13
      239 GETTABLEKS                       R3 R3 K64 ["Util"]
      241 GETTABLEKS                       R3 R3 K65 ["createFoundationDesignBinding"]
      243 CALL                             R3 0 2
      244 SETTABLEKS                       R4 R0 K66 ["onFoundationStyleSheetChange"]
      246 GETUPVAL                         R5 14
      247 GETTABLEKS                       R6 R1 K17 ["Plugin"]
      249 LOADNIL                          R7
      250 LOADNIL                          R8
      251 NEWTABLE                         R9 0 1
      253 MOVE                             R10 R3
      254 SETLIST                          R9 R10 1 [1]
      256 CALL                             R5 4 1
      257 SETTABLEKS                       R5 R0 K67 ["design"]
      259 NEWTABLE                         R5 0 6
      261 DUPTABLE                         R6 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      262 LOADK                            R7 K74 ["Unparented"]
      263 SETTABLEKS                       R7 R6 K68 ["id"]
      265 GETTABLEKS                       R7 R0 K35 ["localization"]
      267 LOADK                            R9 K75 ["Categories"]
      268 LOADK                            R10 K76 ["UnparentedInstances"]
      269 NAMECALL                         R7 R7 K77 ["getText"]
      271 CALL                             R7 3 1
      272 SETTABLEKS                       R7 R6 K69 ["text"]
      274 GETUPVAL                         R7 15
      275 SETTABLEKS                       R7 R6 K70 ["module"]
      277 LOADK                            R7 K78 ["instanceCount"]
      278 SETTABLEKS                       R7 R6 K71 ["valueFormat"]
      280 GETUPVAL                         R7 16
      281 GETTABLEKS                       R7 R7 K79 ["Default"]
      283 SETTABLEKS                       R7 R6 K72 ["colorRamp"]
      285 DUPTABLE                         R7 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      286 LOADK                            R8 K80 ["Script"]
      287 SETTABLEKS                       R8 R7 K68 ["id"]
      289 GETTABLEKS                       R8 R0 K35 ["localization"]
      291 LOADK                            R10 K75 ["Categories"]
      292 LOADK                            R11 K81 ["ScriptMemoryUsage"]
      293 NAMECALL                         R8 R8 K77 ["getText"]
      295 CALL                             R8 3 1
      296 SETTABLEKS                       R8 R7 K69 ["text"]
      298 GETUPVAL                         R8 17
      299 SETTABLEKS                       R8 R7 K70 ["module"]
      301 LOADK                            R8 K82 ["memory"]
      302 SETTABLEKS                       R8 R7 K71 ["valueFormat"]
      304 GETUPVAL                         R8 16
      305 GETTABLEKS                       R8 R8 K83 ["IceBlue"]
      307 SETTABLEKS                       R8 R7 K72 ["colorRamp"]
      309 DUPTABLE                         R8 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      310 LOADK                            R9 K84 ["Triangles"]
      311 SETTABLEKS                       R9 R8 K68 ["id"]
      313 GETTABLEKS                       R9 R0 K35 ["localization"]
      315 LOADK                            R11 K75 ["Categories"]
      316 LOADK                            R12 K85 ["SceneTriangles"]
      317 NAMECALL                         R9 R9 K77 ["getText"]
      319 CALL                             R9 3 1
      320 SETTABLEKS                       R9 R8 K69 ["text"]
      322 GETUPVAL                         R9 18
      323 SETTABLEKS                       R9 R8 K70 ["module"]
      325 LOADK                            R9 K86 ["count"]
      326 SETTABLEKS                       R9 R8 K71 ["valueFormat"]
      328 GETUPVAL                         R9 16
      329 GETTABLEKS                       R9 R9 K87 ["Forest"]
      331 SETTABLEKS                       R9 R8 K72 ["colorRamp"]
      333 DUPTABLE                         R9 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      334 LOADK                            R10 K88 ["InstanceComposition"]
      335 SETTABLEKS                       R10 R9 K68 ["id"]
      337 GETTABLEKS                       R10 R0 K35 ["localization"]
      339 LOADK                            R12 K75 ["Categories"]
      340 LOADK                            R13 K88 ["InstanceComposition"]
      341 NAMECALL                         R10 R10 K77 ["getText"]
      343 CALL                             R10 3 1
      344 SETTABLEKS                       R10 R9 K69 ["text"]
      346 GETUPVAL                         R10 19
      347 SETTABLEKS                       R10 R9 K70 ["module"]
      349 LOADK                            R10 K78 ["instanceCount"]
      350 SETTABLEKS                       R10 R9 K71 ["valueFormat"]
      352 GETUPVAL                         R10 16
      353 GETTABLEKS                       R10 R10 K79 ["Default"]
      355 SETTABLEKS                       R10 R9 K72 ["colorRamp"]
      357 DUPTABLE                         R10 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      358 LOADK                            R11 K89 ["Audio"]
      359 SETTABLEKS                       R11 R10 K68 ["id"]
      361 GETTABLEKS                       R11 R0 K35 ["localization"]
      363 LOADK                            R13 K75 ["Categories"]
      364 LOADK                            R14 K90 ["AudioMemory"]
      365 NAMECALL                         R11 R11 K77 ["getText"]
      367 CALL                             R11 3 1
      368 SETTABLEKS                       R11 R10 K69 ["text"]
      370 GETUPVAL                         R11 20
      371 SETTABLEKS                       R11 R10 K70 ["module"]
      373 LOADK                            R11 K82 ["memory"]
      374 SETTABLEKS                       R11 R10 K71 ["valueFormat"]
      376 GETUPVAL                         R11 16
      377 GETTABLEKS                       R11 R11 K83 ["IceBlue"]
      379 SETTABLEKS                       R11 R10 K72 ["colorRamp"]
      381 DUPTABLE                         R11 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      382 LOADK                            R12 K91 ["Animation"]
      383 SETTABLEKS                       R12 R11 K68 ["id"]
      385 GETTABLEKS                       R12 R0 K35 ["localization"]
      387 LOADK                            R14 K75 ["Categories"]
      388 LOADK                            R15 K92 ["AnimationMemory"]
      389 NAMECALL                         R12 R12 K77 ["getText"]
      391 CALL                             R12 3 1
      392 SETTABLEKS                       R12 R11 K69 ["text"]
      394 GETUPVAL                         R12 21
      395 SETTABLEKS                       R12 R11 K70 ["module"]
      397 LOADK                            R12 K82 ["memory"]
      398 SETTABLEKS                       R12 R11 K71 ["valueFormat"]
      400 GETUPVAL                         R12 16
      401 GETTABLEKS                       R12 R12 K83 ["IceBlue"]
      403 SETTABLEKS                       R12 R11 K72 ["colorRamp"]
      405 SETLIST                          R5 R6 6 [1]
      407 SETTABLEKS                       R5 R0 K93 ["categories"]
      409 GETUPVAL                         R5 22
      410 JUMPIFNOT                        R5 ; [+31]
      411 GETTABLEKS                       R6 R0 K93 ["categories"]
      413 LOADN                            R7 4
      414 DUPTABLE                         R8 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      415 LOADK                            R9 K94 ["SceneGeometry"]
      416 SETTABLEKS                       R9 R8 K68 ["id"]
      418 GETTABLEKS                       R9 R0 K35 ["localization"]
      420 LOADK                            R11 K75 ["Categories"]
      421 LOADK                            R12 K94 ["SceneGeometry"]
      422 NAMECALL                         R9 R9 K77 ["getText"]
      424 CALL                             R9 3 1
      425 SETTABLEKS                       R9 R8 K69 ["text"]
      427 GETUPVAL                         R9 23
      428 SETTABLEKS                       R9 R8 K70 ["module"]
      430 LOADK                            R9 K86 ["count"]
      431 SETTABLEKS                       R9 R8 K71 ["valueFormat"]
      433 GETUPVAL                         R9 16
      434 GETTABLEKS                       R9 R9 K79 ["Default"]
      436 SETTABLEKS                       R9 R8 K72 ["colorRamp"]
      438 FASTCALL                         TABLE_INSERT ; [+2]
      439 GETIMPORT                        R5 K97 [table.insert]
      441 CALL                             R5 3 0
      442 GETTABLEKS                       R6 R0 K93 ["categories"]
      444 GETTABLEN                        R5 R6 4
      445 GETTABLEKS                       R6 R0 K93 ["categories"]
      447 LOADNIL                          R7
      448 LOADNIL                          R8
      449 FORGPREP                         R6
      450 GETTABLEKS                       R11 R10 K68 ["id"]
      452 JUMPIFNOTEQKS                    R11 K88 ["InstanceComposition"] ; [+3]
      454 MOVE                             R5 R10
      455 JUMP                             ; [+2]
      456 FORGLOOP                         R6 2 ; [-7]
      458 DUPTABLE                         R8 K98 [{"selectedCategory"}]
      459 SETTABLEKS                       R5 R8 K11 ["selectedCategory"]
      461 NAMECALL                         R6 R0 K99 ["setState"]
      463 CALL                             R6 2 0
      464 GETTABLEKS                       R6 R0 K52 ["selectionManager"]
      466 GETTABLEKS                       R8 R5 K70 ["module"]
      468 NAMECALL                         R6 R6 K100 ["setQuery"]
      470 CALL                             R6 2 0
      471 RETURN                           R0 0

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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
        1 GETTABLEKS                       R0 R0 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
        0 DUPTABLE                         R1 K1 [{"filterMenuOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["filterMenuOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["filterMenuOpen"]
        6 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_36]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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
      225 NEWTABLE                         R33 4 0
      227 GETIMPORT                        R34 K69 [UDim2.new]
      229 LOADN                            R35 1
      230 LOADN                            R36 0
      231 LOADN                            R37 0
      232 LOADN                            R38 30
      233 CALL                             R34 4 1
      234 SETTABLEKS                       R34 R33 K33 ["Size"]
      236 LOADN                            R34 1
      237 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      239 LOADN                            R34 1
      240 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      242 GETUPVAL                         R34 4
      243 GETTABLEKS                       R34 R34 K46 ["Change"]
      245 GETTABLEKS                       R34 R34 K92 ["AbsoluteSize"]
      247 GETTABLEKS                       R35 R0 K93 ["onHeaderSizeChange"]
      249 SETTABLE                         R35 R33 R34
      250 DUPTABLE                         R34 K98 [{"UIPadding", "Layout", "DropdownContainer", "SearchContainer", "RightGroup"}]
      251 GETUPVAL                         R35 4
      252 GETTABLEKS                       R35 R35 K17 ["createElement"]
      254 LOADK                            R36 K94 ["UIPadding"]
      255 DUPTABLE                         R37 K103 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      256 GETIMPORT                        R38 K83 [UDim.new]
      258 LOADN                            R39 0
      259 LOADN                            R40 4
      260 CALL                             R38 2 1
      261 SETTABLEKS                       R38 R37 K99 ["PaddingLeft"]
      263 GETIMPORT                        R38 K83 [UDim.new]
      265 LOADN                            R39 0
      266 LOADN                            R40 4
      267 CALL                             R38 2 1
      268 SETTABLEKS                       R38 R37 K100 ["PaddingRight"]
      270 GETIMPORT                        R38 K83 [UDim.new]
      272 LOADN                            R39 0
      273 LOADN                            R40 4
      274 CALL                             R38 2 1
      275 SETTABLEKS                       R38 R37 K101 ["PaddingTop"]
      277 GETIMPORT                        R38 K83 [UDim.new]
      279 LOADN                            R39 0
      280 LOADN                            R40 4
      281 CALL                             R38 2 1
      282 SETTABLEKS                       R38 R37 K102 ["PaddingBottom"]
      284 CALL                             R35 2 1
      285 SETTABLEKS                       R35 R34 K94 ["UIPadding"]
      287 GETUPVAL                         R35 4
      288 GETTABLEKS                       R35 R35 K17 ["createElement"]
      290 LOADK                            R36 K75 ["UIListLayout"]
      291 DUPTABLE                         R37 K104 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding", "SortOrder"}]
      292 GETIMPORT                        R38 K106 [Enum.FillDirection.Horizontal]
      294 SETTABLEKS                       R38 R37 K77 ["FillDirection"]
      296 GETIMPORT                        R38 K87 [Enum.HorizontalAlignment.Left]
      298 SETTABLEKS                       R38 R37 K78 ["HorizontalAlignment"]
      300 GETIMPORT                        R38 K108 [Enum.VerticalAlignment.Center]
      302 SETTABLEKS                       R38 R37 K79 ["VerticalAlignment"]
      304 GETIMPORT                        R38 K83 [UDim.new]
      306 LOADN                            R39 0
      307 LOADN                            R40 4
      308 CALL                             R38 2 1
      309 SETTABLEKS                       R38 R37 K76 ["Padding"]
      311 GETIMPORT                        R38 K91 [Enum.SortOrder.LayoutOrder]
      313 SETTABLEKS                       R38 R37 K80 ["SortOrder"]
      315 CALL                             R35 2 1
      316 SETTABLEKS                       R35 R34 K70 ["Layout"]
      318 GETUPVAL                         R35 4
      319 GETTABLEKS                       R35 R35 K17 ["createElement"]
      321 LOADK                            R36 K61 ["Frame"]
      322 DUPTABLE                         R37 K109 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      323 GETIMPORT                        R38 K69 [UDim2.new]
      325 LOADN                            R39 0
      326 LOADN                            R40 200
      327 LOADN                            R41 1
      328 LOADN                            R42 0
      329 CALL                             R38 4 1
      330 SETTABLEKS                       R38 R37 K33 ["Size"]
      332 LOADN                            R38 1
      333 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      335 LOADN                            R38 1
      336 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      338 DUPTABLE                         R38 K111 [{"Dropdown"}]
      339 GETUPVAL                         R39 4
      340 GETTABLEKS                       R39 R39 K17 ["createElement"]
      342 GETUPVAL                         R40 9
      343 GETTABLEKS                       R40 R40 K112 ["Root"]
      345 DUPTABLE                         R41 K119 [{"label", "width", "size", "value", "items", "onItemChanged"}]
      346 LOADK                            R42 K120 [""]
      347 SETTABLEKS                       R42 R41 K113 ["label"]
      349 GETIMPORT                        R42 K83 [UDim.new]
      351 LOADN                            R43 1
      352 LOADN                            R44 0
      353 CALL                             R42 2 1
      354 SETTABLEKS                       R42 R41 K114 ["width"]
      356 GETUPVAL                         R42 10
      357 GETTABLEKS                       R42 R42 K121 ["Enums"]
      359 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      361 GETTABLEKS                       R42 R42 K123 ["XSmall"]
      363 SETTABLEKS                       R42 R41 K115 ["size"]
      365 GETTABLEKS                       R42 R0 K1 ["state"]
      367 GETTABLEKS                       R42 R42 K4 ["selectedCategory"]
      369 GETTABLEKS                       R42 R42 K124 ["id"]
      371 SETTABLEKS                       R42 R41 K116 ["value"]
      373 GETTABLEKS                       R42 R0 K125 ["categories"]
      375 SETTABLEKS                       R42 R41 K117 ["items"]
      377 NEWCLOSURE                       R42 P0
      378 CAPTURE                          VAL R0
      379 SETTABLEKS                       R42 R41 K118 ["onItemChanged"]
      381 CALL                             R39 2 1
      382 SETTABLEKS                       R39 R38 K110 ["Dropdown"]
      384 CALL                             R35 3 1
      385 SETTABLEKS                       R35 R34 K95 ["DropdownContainer"]
      387 GETTABLEKS                       R36 R2 K126 ["windowWidth"]
      389 JUMPIFEQKN                       R36 K127 [0] ; [+7]
      391 LOADB                            R35 0
      392 GETTABLEKS                       R36 R2 K126 ["windowWidth"]
      394 LOADN                            R37 144
      395 JUMPIFNOTLE                      R37 R36 ; [+91]
      397 GETUPVAL                         R35 4
      398 GETTABLEKS                       R35 R35 K17 ["createElement"]
      400 LOADK                            R36 K61 ["Frame"]
      401 DUPTABLE                         R37 K109 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
      402 GETIMPORT                        R38 K69 [UDim2.new]
      404 LOADN                            R39 0
      405 LOADN                            R40 0
      406 LOADN                            R41 1
      407 LOADN                            R42 0
      408 CALL                             R38 4 1
      409 SETTABLEKS                       R38 R37 K33 ["Size"]
      411 LOADN                            R38 1
      412 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      414 LOADN                            R38 2
      415 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      417 DUPTABLE                         R38 K130 [{"UIFlexItem", "SearchInput"}]
      418 GETUPVAL                         R39 4
      419 GETTABLEKS                       R39 R39 K17 ["createElement"]
      421 LOADK                            R40 K128 ["UIFlexItem"]
      422 DUPTABLE                         R41 K132 [{"FlexMode"}]
      423 GETIMPORT                        R42 K135 [Enum.UIFlexMode.Fill]
      425 SETTABLEKS                       R42 R41 K131 ["FlexMode"]
      427 CALL                             R39 2 1
      428 SETTABLEKS                       R39 R38 K128 ["UIFlexItem"]
      430 GETUPVAL                         R39 4
      431 GETTABLEKS                       R39 R39 K17 ["createElement"]
      433 GETUPVAL                         R40 11
      434 DUPTABLE                         R41 K140 [{"label", "leadingIcon", "placeholder", "width", "size", "text", "onChanged"}]
      435 LOADK                            R42 K120 [""]
      436 SETTABLEKS                       R42 R41 K113 ["label"]
      438 GETUPVAL                         R42 10
      439 GETTABLEKS                       R42 R42 K121 ["Enums"]
      441 GETTABLEKS                       R42 R42 K141 ["IconName"]
      443 GETTABLEKS                       R42 R42 K142 ["MagnifyingGlass"]
      445 SETTABLEKS                       R42 R41 K136 ["leadingIcon"]
      447 GETTABLEKS                       R42 R0 K11 ["localization"]
      449 LOADK                            R44 K143 ["Controls"]
      450 LOADK                            R45 K144 ["SearchPlaceholder"]
      451 NAMECALL                         R42 R42 K22 ["getText"]
      453 CALL                             R42 3 1
      454 SETTABLEKS                       R42 R41 K137 ["placeholder"]
      456 GETIMPORT                        R42 K83 [UDim.new]
      458 LOADN                            R43 1
      459 LOADN                            R44 0
      460 CALL                             R42 2 1
      461 SETTABLEKS                       R42 R41 K114 ["width"]
      463 GETUPVAL                         R42 10
      464 GETTABLEKS                       R42 R42 K121 ["Enums"]
      466 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      468 GETTABLEKS                       R42 R42 K123 ["XSmall"]
      470 SETTABLEKS                       R42 R41 K115 ["size"]
      472 GETTABLEKS                       R43 R0 K1 ["state"]
      474 GETTABLEKS                       R43 R43 K145 ["searchTerm"]
      476 ORK                              R42 R43 K120 [""]
      477 SETTABLEKS                       R42 R41 K138 ["text"]
      479 NEWCLOSURE                       R42 P1
      480 CAPTURE                          VAL R0
      481 SETTABLEKS                       R42 R41 K139 ["onChanged"]
      483 CALL                             R39 2 1
      484 SETTABLEKS                       R39 R38 K129 ["SearchInput"]
      486 CALL                             R35 3 1
      487 SETTABLEKS                       R35 R34 K96 ["SearchContainer"]
      489 GETUPVAL                         R35 4
      490 GETTABLEKS                       R35 R35 K17 ["createElement"]
      492 LOADK                            R36 K61 ["Frame"]
      493 DUPTABLE                         R37 K147 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
      494 GETIMPORT                        R38 K149 [Enum.AutomaticSize.X]
      496 SETTABLEKS                       R38 R37 K146 ["AutomaticSize"]
      498 GETIMPORT                        R38 K69 [UDim2.new]
      500 LOADN                            R39 0
      501 LOADN                            R40 0
      502 LOADN                            R41 1
      503 LOADN                            R42 0
      504 CALL                             R38 4 1
      505 SETTABLEKS                       R38 R37 K33 ["Size"]
      507 LOADN                            R38 1
      508 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      510 LOADN                            R38 3
      511 SETTABLEKS                       R38 R37 K90 ["LayoutOrder"]
      513 DUPTABLE                         R38 K153 [{"Layout", "AutoupdateToggle", "ClearBaselineButton", "FilterButton"}]
      514 GETUPVAL                         R39 4
      515 GETTABLEKS                       R39 R39 K17 ["createElement"]
      517 LOADK                            R40 K75 ["UIListLayout"]
      518 DUPTABLE                         R41 K154 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      519 GETIMPORT                        R42 K106 [Enum.FillDirection.Horizontal]
      521 SETTABLEKS                       R42 R41 K77 ["FillDirection"]
      523 GETIMPORT                        R42 K156 [Enum.HorizontalAlignment.Right]
      525 SETTABLEKS                       R42 R41 K78 ["HorizontalAlignment"]
      527 GETIMPORT                        R42 K108 [Enum.VerticalAlignment.Center]
      529 SETTABLEKS                       R42 R41 K79 ["VerticalAlignment"]
      531 CALL                             R39 2 1
      532 SETTABLEKS                       R39 R38 K70 ["Layout"]
      534 GETTABLEKS                       R40 R2 K126 ["windowWidth"]
      536 JUMPIFEQKN                       R40 K127 [0] ; [+7]
      538 LOADB                            R39 0
      539 GETTABLEKS                       R40 R2 K126 ["windowWidth"]
      541 LOADN                            R41 144
      542 JUMPIFNOTLE                      R41 R40 ; [+33]
      544 GETUPVAL                         R39 4
      545 GETTABLEKS                       R39 R39 K17 ["createElement"]
      547 GETUPVAL                         R40 12
      548 DUPTABLE                         R41 K159 [{"LayoutOrder", "isChecked", "label", "size", "onActivated"}]
      549 LOADN                            R42 1
      550 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      552 GETTABLEKS                       R43 R2 K160 ["paused"]
      554 NOT                              R42 R43
      555 SETTABLEKS                       R42 R41 K157 ["isChecked"]
      557 GETTABLEKS                       R42 R0 K11 ["localization"]
      559 LOADK                            R44 K143 ["Controls"]
      560 LOADK                            R45 K150 ["AutoupdateToggle"]
      561 NAMECALL                         R42 R42 K22 ["getText"]
      563 CALL                             R42 3 1
      564 SETTABLEKS                       R42 R41 K113 ["label"]
      566 GETUPVAL                         R42 13
      567 GETTABLEKS                       R42 R42 K161 ["Small"]
      569 SETTABLEKS                       R42 R41 K115 ["size"]
      571 NEWCLOSURE                       R42 P2
      572 CAPTURE                          VAL R0
      573 SETTABLEKS                       R42 R41 K158 ["onActivated"]
      575 CALL                             R39 2 1
      576 SETTABLEKS                       R39 R38 K150 ["AutoupdateToggle"]
      578 MOVE                             R39 R7
      579 JUMPIFNOT                        R39 ; [+32]
      580 GETUPVAL                         R39 4
      581 GETTABLEKS                       R39 R39 K17 ["createElement"]
      583 GETUPVAL                         R40 14
      584 DUPTABLE                         R41 K163 [{"LayoutOrder", "icon", "size", "onActivated"}]
      585 LOADN                            R42 2
      586 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      588 GETUPVAL                         R42 10
      589 GETTABLEKS                       R42 R42 K121 ["Enums"]
      591 GETTABLEKS                       R42 R42 K141 ["IconName"]
      593 GETTABLEKS                       R42 R42 K164 ["ArrowRotateRight"]
      595 SETTABLEKS                       R42 R41 K162 ["icon"]
      597 GETUPVAL                         R42 10
      598 GETTABLEKS                       R42 R42 K121 ["Enums"]
      600 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      602 GETTABLEKS                       R42 R42 K161 ["Small"]
      604 SETTABLEKS                       R42 R41 K115 ["size"]
      606 NEWCLOSURE                       R42 P3
      607 CAPTURE                          VAL R5
      608 CAPTURE                          VAL R0
      609 SETTABLEKS                       R42 R41 K158 ["onActivated"]
      611 CALL                             R39 2 1
      612 SETTABLEKS                       R39 R38 K151 ["ClearBaselineButton"]
      614 MOVE                             R39 R6
      615 JUMPIFNOT                        R39 ; [+31]
      616 GETUPVAL                         R39 4
      617 GETTABLEKS                       R39 R39 K17 ["createElement"]
      619 GETUPVAL                         R40 14
      620 DUPTABLE                         R41 K163 [{"LayoutOrder", "icon", "size", "onActivated"}]
      621 LOADN                            R42 3
      622 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      624 GETUPVAL                         R42 10
      625 GETTABLEKS                       R42 R42 K121 ["Enums"]
      627 GETTABLEKS                       R42 R42 K141 ["IconName"]
      629 GETTABLEKS                       R42 R42 K165 ["ThreeSlidersHorizontal"]
      631 SETTABLEKS                       R42 R41 K162 ["icon"]
      633 GETUPVAL                         R42 10
      634 GETTABLEKS                       R42 R42 K121 ["Enums"]
      636 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      638 GETTABLEKS                       R42 R42 K161 ["Small"]
      640 SETTABLEKS                       R42 R41 K115 ["size"]
      642 NEWCLOSURE                       R42 P4
      643 CAPTURE                          VAL R0
      644 SETTABLEKS                       R42 R41 K158 ["onActivated"]
      646 CALL                             R39 2 1
      647 SETTABLEKS                       R39 R38 K152 ["FilterButton"]
      649 CALL                             R35 3 1
      650 SETTABLEKS                       R35 R34 K97 ["RightGroup"]
      652 CALL                             R31 3 1
      653 SETTABLEKS                       R31 R30 K71 ["DropdownFrame"]
      655 MOVE                             R31 R6
      656 JUMPIFNOT                        R31 ; [+32]
      657 GETTABLEKS                       R31 R2 K166 ["filterMenuOpen"]
      659 JUMPIFNOT                        R31 ; [+29]
      660 GETUPVAL                         R31 4
      661 GETTABLEKS                       R31 R31 K17 ["createElement"]
      663 LOADK                            R32 K61 ["Frame"]
      664 DUPTABLE                         R33 K167 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      665 GETIMPORT                        R34 K69 [UDim2.new]
      667 LOADN                            R35 1
      668 LOADN                            R36 0
      669 LOADN                            R37 0
      670 LOADN                            R38 30
      671 CALL                             R34 4 1
      672 SETTABLEKS                       R34 R33 K33 ["Size"]
      674 LOADN                            R34 2
      675 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      677 LOADN                            R34 1
      678 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      680 NEWCLOSURE                       R34 P5
      681 CAPTURE                          UPVAL U4
      682 CAPTURE                          VAL R2
      683 CAPTURE                          VAL R5
      684 CAPTURE                          UPVAL U12
      685 CAPTURE                          UPVAL U10
      686 CAPTURE                          VAL R0
      687 CALL                             R34 0 1
      688 CALL                             R31 3 1
      689 SETTABLEKS                       R31 R30 K72 ["FilterMenu"]
      691 GETUPVAL                         R31 4
      692 GETTABLEKS                       R31 R31 K17 ["createElement"]
      694 GETUPVAL                         R32 15
      695 DUPTABLE                         R33 K174 [{"Size", "LayoutOrder", "InitialSizes", "UseScale", "ClampSize", "HideBars", "MinSizes", "MaxSizes", "Layout"}]
      696 GETIMPORT                        R34 K69 [UDim2.new]
      698 LOADN                            R35 1
      699 LOADN                            R36 0
      700 LOADN                            R37 1
      701 LOADN                            R38 0
      702 CALL                             R34 4 1
      703 SETTABLEKS                       R34 R33 K33 ["Size"]
      705 LOADN                            R34 3
      706 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      708 NEWTABLE                         R34 0 2
      710 GETIMPORT                        R35 K83 [UDim.new]
      712 LOADK                            R36 K175 [0.5]
      713 LOADN                            R37 0
      714 CALL                             R35 2 1
      715 GETIMPORT                        R36 K83 [UDim.new]
      717 LOADK                            R37 K175 [0.5]
      718 LOADN                            R38 0
      719 CALL                             R36 2 -1
      720 SETLIST                          R34 R35 -1 [1]
      722 SETTABLEKS                       R34 R33 K168 ["InitialSizes"]
      724 LOADB                            R34 1
      725 SETTABLEKS                       R34 R33 K169 ["UseScale"]
      727 LOADB                            R34 1
      728 SETTABLEKS                       R34 R33 K170 ["ClampSize"]
      730 LOADB                            R34 0
      731 SETTABLEKS                       R34 R33 K171 ["HideBars"]
      733 NEWTABLE                         R34 0 2
      735 GETIMPORT                        R35 K83 [UDim.new]
      737 LOADK                            R36 K176 [0.1]
      738 LOADN                            R37 0
      739 CALL                             R35 2 1
      740 GETIMPORT                        R36 K83 [UDim.new]
      742 LOADK                            R37 K176 [0.1]
      743 LOADN                            R38 0
      744 CALL                             R36 2 -1
      745 SETLIST                          R34 R35 -1 [1]
      747 SETTABLEKS                       R34 R33 K172 ["MinSizes"]
      749 NEWTABLE                         R34 0 2
      751 LOADNIL                          R35
      752 LOADNIL                          R36
      753 SETLIST                          R34 R35 2 [1]
      755 SETTABLEKS                       R34 R33 K173 ["MaxSizes"]
      757 GETIMPORT                        R34 K85 [Enum.FillDirection.Vertical]
      759 SETTABLEKS                       R34 R33 K70 ["Layout"]
      761 NEWTABLE                         R34 0 2
      763 GETUPVAL                         R35 4
      764 GETTABLEKS                       R35 R35 K17 ["createElement"]
      766 LOADK                            R36 K61 ["Frame"]
      767 DUPTABLE                         R37 K178 [{"Size", "Position", "BackgroundTransparency"}]
      768 GETIMPORT                        R38 K69 [UDim2.new]
      770 LOADN                            R39 1
      771 LOADN                            R40 0
      772 LOADN                            R41 1
      773 LOADN                            R42 0
      774 CALL                             R38 4 1
      775 SETTABLEKS                       R38 R37 K33 ["Size"]
      777 GETIMPORT                        R38 K69 [UDim2.new]
      779 LOADN                            R39 0
      780 LOADN                            R40 0
      781 LOADN                            R41 0
      782 LOADN                            R42 0
      783 CALL                             R38 4 1
      784 SETTABLEKS                       R38 R37 K177 ["Position"]
      786 LOADN                            R38 1
      787 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      789 DUPTABLE                         R38 K180 [{"Treemap"}]
      790 GETUPVAL                         R39 4
      791 GETTABLEKS                       R39 R39 K17 ["createElement"]
      793 GETUPVAL                         R40 16
      794 DUPTABLE                         R41 K187 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization", "tooltipLabels"}]
      795 GETTABLEKS                       R42 R0 K188 ["treemapRef"]
      797 SETTABLEKS                       R42 R41 K181 ["ref"]
      799 GETIMPORT                        R42 K69 [UDim2.new]
      801 LOADN                            R43 1
      802 LOADN                            R44 248
      803 LOADN                            R45 1
      804 LOADN                            R46 248
      805 CALL                             R42 4 1
      806 SETTABLEKS                       R42 R41 K33 ["Size"]
      808 GETIMPORT                        R42 K69 [UDim2.new]
      810 LOADN                            R43 0
      811 LOADN                            R44 4
      812 LOADN                            R45 0
      813 LOADN                            R46 4
      814 CALL                             R42 4 1
      815 SETTABLEKS                       R42 R41 K177 ["Position"]
      817 GETUPVAL                         R42 17
      818 GETTABLEKS                       R42 R42 K189 ["mockData"]
      820 SETTABLEKS                       R42 R41 K182 ["NodeOutput"]
      822 GETTABLEKS                       R42 R0 K183 ["treemapContext"]
      824 SETTABLEKS                       R42 R41 K183 ["treemapContext"]
      826 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      828 JUMPIFNOT                        R43 ; [+5]
      829 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      831 GETTABLEKS                       R42 R42 K184 ["valueFormat"]
      833 JUMPIF                           R42 ; [+1]
      834 LOADK                            R42 K190 ["memory"]
      835 SETTABLEKS                       R42 R41 K184 ["valueFormat"]
      837 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      839 JUMPIFNOT                        R43 ; [+5]
      840 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      842 GETTABLEKS                       R42 R42 K185 ["colorRamp"]
      844 JUMPIF                           R42 ; [+3]
      845 GETUPVAL                         R42 18
      846 GETTABLEKS                       R42 R42 K191 ["Default"]
      848 SETTABLEKS                       R42 R41 K185 ["colorRamp"]
      850 GETTABLEKS                       R42 R0 K11 ["localization"]
      852 SETTABLEKS                       R42 R41 K11 ["localization"]
      854 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      856 JUMPIFNOT                        R43 ; [+12]
      857 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      859 GETTABLEKS                       R43 R43 K5 ["module"]
      861 JUMPIFNOT                        R43 ; [+7]
      862 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      864 GETTABLEKS                       R42 R42 K5 ["module"]
      866 GETTABLEKS                       R42 R42 K186 ["tooltipLabels"]
      868 JUMPIF                           R42 ; [+1]
      869 LOADNIL                          R42
      870 SETTABLEKS                       R42 R41 K186 ["tooltipLabels"]
      872 CALL                             R39 2 1
      873 SETTABLEKS                       R39 R38 K179 ["Treemap"]
      875 CALL                             R35 3 1
      876 GETUPVAL                         R36 4
      877 GETTABLEKS                       R36 R36 K17 ["createElement"]
      879 LOADK                            R37 K61 ["Frame"]
      880 DUPTABLE                         R38 K193 [{"Size", "BackgroundTransparency", "ClipsDescendants"}]
      881 GETIMPORT                        R39 K69 [UDim2.new]
      883 LOADN                            R40 1
      884 LOADN                            R41 0
      885 LOADN                            R42 1
      886 LOADN                            R43 224
      887 CALL                             R39 4 1
      888 SETTABLEKS                       R39 R38 K33 ["Size"]
      890 LOADN                            R39 1
      891 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      893 LOADB                            R39 1
      894 SETTABLEKS                       R39 R38 K192 ["ClipsDescendants"]
      896 DUPTABLE                         R39 K198 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper", "WarningBar"}]
      897 GETUPVAL                         R40 4
      898 GETTABLEKS                       R40 R40 K17 ["createElement"]
      900 LOADK                            R41 K94 ["UIPadding"]
      901 DUPTABLE                         R42 K199 [{"PaddingLeft"}]
      902 GETIMPORT                        R43 K83 [UDim.new]
      904 LOADN                            R44 0
      905 LOADN                            R45 4
      906 CALL                             R43 2 1
      907 SETTABLEKS                       R43 R42 K99 ["PaddingLeft"]
      909 CALL                             R40 2 1
      910 SETTABLEKS                       R40 R39 K194 ["ListPadding"]
      912 GETUPVAL                         R40 4
      913 GETTABLEKS                       R40 R40 K17 ["createElement"]
      915 LOADK                            R41 K75 ["UIListLayout"]
      916 DUPTABLE                         R42 K200 [{"SortOrder", "FillDirection"}]
      917 GETIMPORT                        R43 K91 [Enum.SortOrder.LayoutOrder]
      919 SETTABLEKS                       R43 R42 K80 ["SortOrder"]
      921 GETIMPORT                        R43 K85 [Enum.FillDirection.Vertical]
      923 SETTABLEKS                       R43 R42 K77 ["FillDirection"]
      925 CALL                             R40 2 1
      926 SETTABLEKS                       R40 R39 K75 ["UIListLayout"]
      928 GETUPVAL                         R40 4
      929 GETTABLEKS                       R40 R40 K17 ["createElement"]
      931 GETUPVAL                         R41 19
      932 DUPTABLE                         R42 K204 [{"LayoutOrder", "query", "queryInfo", "selectedIdsHash", "localization"}]
      933 LOADN                            R43 1
      934 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
      936 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
      938 JUMPIFNOT                        R44 ; [+5]
      939 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      941 GETTABLEKS                       R43 R43 K5 ["module"]
      943 JUMP                             ; [+1]
      944 LOADNIL                          R43
      945 SETTABLEKS                       R43 R42 K201 ["query"]
      947 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      949 SETTABLEKS                       R43 R42 K202 ["queryInfo"]
      951 GETTABLEKS                       R43 R2 K203 ["selectedIdsHash"]
      953 SETTABLEKS                       R43 R42 K203 ["selectedIdsHash"]
      955 GETTABLEKS                       R43 R0 K11 ["localization"]
      957 SETTABLEKS                       R43 R42 K11 ["localization"]
      959 CALL                             R40 2 1
      960 SETTABLEKS                       R40 R39 K195 ["Summary"]
      962 GETUPVAL                         R40 4
      963 GETTABLEKS                       R40 R40 K17 ["createElement"]
      965 LOADK                            R41 K61 ["Frame"]
      966 DUPTABLE                         R42 K205 [{"Size", "LayoutOrder", "BackgroundTransparency", "ClipsDescendants"}]
      967 GETIMPORT                        R43 K69 [UDim2.new]
      969 LOADN                            R44 1
      970 LOADN                            R45 0
      971 LOADN                            R46 1
      972 LOADN                            R47 198
      973 CALL                             R43 4 1
      974 SETTABLEKS                       R43 R42 K33 ["Size"]
      976 LOADN                            R43 2
      977 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
      979 LOADN                            R43 1
      980 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
      982 LOADB                            R43 1
      983 SETTABLEKS                       R43 R42 K192 ["ClipsDescendants"]
      985 DUPTABLE                         R43 K208 [{"UISizeConstraint", "List"}]
      986 GETUPVAL                         R44 4
      987 GETTABLEKS                       R44 R44 K17 ["createElement"]
      989 LOADK                            R45 K206 ["UISizeConstraint"]
      990 DUPTABLE                         R46 K209 [{"MinSize"}]
      991 GETIMPORT                        R47 K32 [Vector2.new]
      993 LOADN                            R48 0
      994 LOADN                            R49 100
      995 CALL                             R47 2 1
      996 SETTABLEKS                       R47 R46 K34 ["MinSize"]
      998 CALL                             R44 2 1
      999 SETTABLEKS                       R44 R43 K206 ["UISizeConstraint"]
     1001 GETUPVAL                         R44 4
     1002 GETTABLEKS                       R44 R44 K17 ["createElement"]
     1004 GETUPVAL                         R45 20
     1005 DUPTABLE                         R46 K219 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
     1006 GETTABLEKS                       R47 R0 K220 ["virtualizedListRef"]
     1008 SETTABLEKS                       R47 R46 K181 ["ref"]
     1010 GETTABLEKS                       R47 R2 K210 ["windowHeight"]
     1012 SETTABLEKS                       R47 R46 K210 ["windowHeight"]
     1014 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1016 JUMPIFNOT                        R48 ; [+8]
     1017 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1019 GETTABLEKS                       R47 R47 K5 ["module"]
     1021 GETTABLEKS                       R47 R47 K221 ["getNodesObservable"]
     1023 CALL                             R47 0 1
     1024 JUMP                             ; [+1]
     1025 LOADNIL                          R47
     1026 SETTABLEKS                       R47 R46 K211 ["rootNodeObservable"]
     1028 GETTABLEKS                       R47 R0 K212 ["scrollHeightObservable"]
     1030 SETTABLEKS                       R47 R46 K212 ["scrollHeightObservable"]
     1032 GETTABLEKS                       R47 R0 K213 ["scrollRef"]
     1034 SETTABLEKS                       R47 R46 K213 ["scrollRef"]
     1036 GETTABLEKS                       R47 R0 K214 ["onAbsoluteSizeChange"]
     1038 SETTABLEKS                       R47 R46 K214 ["onAbsoluteSizeChange"]
     1040 GETTABLEKS                       R47 R0 K215 ["onCanvasPositionChange"]
     1042 SETTABLEKS                       R47 R46 K215 ["onCanvasPositionChange"]
     1044 GETTABLEKS                       R47 R1 K216 ["ZIndex"]
     1046 SETTABLEKS                       R47 R46 K216 ["ZIndex"]
     1048 GETTABLEKS                       R47 R0 K217 ["onNodeClicked"]
     1050 SETTABLEKS                       R47 R46 K217 ["onNodeClicked"]
     1052 GETTABLEKS                       R47 R0 K222 ["onListNodeRightClicked"]
     1054 SETTABLEKS                       R47 R46 K218 ["onNodeRightClicked"]
     1056 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1058 JUMPIFNOT                        R48 ; [+5]
     1059 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1061 GETTABLEKS                       R47 R47 K5 ["module"]
     1063 JUMP                             ; [+1]
     1064 LOADNIL                          R47
     1065 SETTABLEKS                       R47 R46 K201 ["query"]
     1067 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1069 SETTABLEKS                       R47 R46 K202 ["queryInfo"]
     1071 CALL                             R44 2 1
     1072 SETTABLEKS                       R44 R43 K207 ["List"]
     1074 CALL                             R40 3 1
     1075 SETTABLEKS                       R40 R39 K196 ["ListWrapper"]
     1077 GETUPVAL                         R40 4
     1078 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1080 LOADK                            R41 K61 ["Frame"]
     1081 DUPTABLE                         R42 K167 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
     1082 GETIMPORT                        R43 K69 [UDim2.new]
     1084 LOADN                            R44 1
     1085 LOADN                            R45 0
     1086 LOADN                            R46 0
     1087 LOADN                            R47 24
     1088 CALL                             R43 4 1
     1089 SETTABLEKS                       R43 R42 K33 ["Size"]
     1091 LOADN                            R43 3
     1092 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
     1094 LOADN                            R43 1
     1095 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
     1097 NEWCLOSURE                       R43 P6
     1098 CAPTURE                          VAL R0
     1099 CAPTURE                          VAL R5
     1100 CAPTURE                          VAL R2
     1101 CAPTURE                          UPVAL U4
     1102 CAPTURE                          UPVAL U21
     1103 CAPTURE                          UPVAL U10
     1104 CALL                             R43 0 1
     1105 CALL                             R40 3 1
     1106 SETTABLEKS                       R40 R39 K197 ["WarningBar"]
     1108 CALL                             R36 3 1
     1109 SETLIST                          R34 R35 2 [1]
     1111 CALL                             R31 3 1
     1112 SETTABLEKS                       R31 R30 K73 ["SplitPane"]
     1114 CALL                             R27 3 1
     1115 SETTABLEKS                       R27 R26 K64 ["ContentArea"]
     1117 CALL                             R23 3 1
     1118 SETTABLEKS                       R23 R22 K57 ["Wrapper"]
     1120 GETUPVAL                         R23 4
     1121 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1123 LOADK                            R24 K58 ["StyleLink"]
     1124 DUPTABLE                         R25 K224 [{"StyleSheet"}]
     1125 GETTABLEKS                       R26 R0 K14 ["design"]
     1127 SETTABLEKS                       R26 R25 K223 ["StyleSheet"]
     1129 CALL                             R23 2 1
     1130 SETTABLEKS                       R23 R22 K58 ["StyleLink"]
     1132 GETUPVAL                         R23 4
     1133 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1135 GETUPVAL                         R24 22
     1136 CALL                             R23 1 1
     1137 SETTABLEKS                       R23 R22 K59 ["WidgetRegister"]
     1139 CALL                             R19 3 1
     1140 SETTABLEKS                       R19 R18 K53 ["ContextStack"]
     1142 CALL                             R15 3 1
     1143 SETTABLEKS                       R15 R14 K48 ["Foundations"]
     1145 CALL                             R11 3 1
     1146 SETTABLEKS                       R11 R10 K15 ["MainWidget"]
     1148 CALL                             R8 2 -1
     1149 RETURN                           R8 -1

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
      320 DUPCLOSURE                       R51 K79 [PROTO_23]
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
      347 DUPCLOSURE                       R51 K81 [PROTO_24]
      348 SETTABLEKS                       R51 R39 K82 ["unhookHeartbeat"]
      350 DUPCLOSURE                       R51 K83 [PROTO_29]
      351 SETTABLEKS                       R51 R39 K84 ["hookHeartbeat"]
      353 DUPCLOSURE                       R51 K85 [PROTO_30]
      354 CAPTURE                          VAL R8
      355 SETTABLEKS                       R51 R39 K86 ["didUpdate"]
      357 DUPCLOSURE                       R51 K87 [PROTO_31]
      358 SETTABLEKS                       R51 R39 K88 ["willUnmount"]
      360 DUPCLOSURE                       R51 K89 [PROTO_41]
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

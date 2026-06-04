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
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K0 ["state"]
        8 GETTABLEKS                       R0 R0 K1 ["enabled"]
       10 JUMPIFNOT                        R0 ; [+19]
       11 GETIMPORT                        R0 K4 [task.spawn]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CALL                             R0 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 2
       19 DUPTABLE                         R2 K5 [{"enabled"}]
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K1 ["enabled"]
       23 NAMECALL                         R0 R0 K6 ["setState"]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 2
       27 NAMECALL                         R0 R0 K7 ["unhookHeartbeat"]
       29 CALL                             R0 1 0
       30 RETURN                           R0 0

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
       70 CAPTURE                          UPVAL U2
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U1
       74 SETTABLEKS                       R3 R0 K24 ["onClose"]
       76 NEWCLOSURE                       R3 P5
       77 CAPTURE                          UPVAL U0
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R2
       80 CAPTURE                          UPVAL U1
       81 CAPTURE                          VAL R1
       82 SETTABLEKS                       R3 R0 K25 ["onRestore"]
       84 NEWCLOSURE                       R3 P6
       85 CAPTURE                          UPVAL U0
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R2
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R3 R0 K26 ["onWidgetEnabledChanged"]
       92 NEWCLOSURE                       R3 P7
       93 CAPTURE                          UPVAL U0
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R3 R0 K27 ["onDockWidgetCreated"]
       97 GETUPVAL                         R3 3
       98 GETTABLEKS                       R3 R3 K28 ["Localization"]
      100 GETTABLEKS                       R3 R3 K29 ["new"]
      102 DUPTABLE                         R4 K33 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
      103 GETUPVAL                         R5 4
      104 SETTABLEKS                       R5 R4 K30 ["stringResourceTable"]
      106 GETUPVAL                         R5 5
      107 SETTABLEKS                       R5 R4 K31 ["translationResourceTable"]
      109 LOADK                            R5 K34 ["SceneAnalysis"]
      110 SETTABLEKS                       R5 R4 K32 ["pluginName"]
      112 CALL                             R3 1 1
      113 SETTABLEKS                       R3 R0 K35 ["localization"]
      115 GETUPVAL                         R3 3
      116 GETTABLEKS                       R3 R3 K36 ["Analytics"]
      118 GETTABLEKS                       R3 R3 K29 ["new"]
      120 DUPCLOSURE                       R4 K37 [PROTO_15]
      121 NEWTABLE                         R5 0 0
      123 CALL                             R3 2 1
      124 SETTABLEKS                       R3 R0 K38 ["analytics"]
      126 GETUPVAL                         R3 6
      127 GETTABLEKS                       R3 R3 K39 ["createRef"]
      129 CALL                             R3 0 1
      130 SETTABLEKS                       R3 R0 K40 ["treemapRef"]
      132 LOADN                            R3 0
      133 SETTABLEKS                       R3 R0 K41 ["timeOfNextAutomaticUpdate"]
      135 LOADN                            R3 1
      136 SETTABLEKS                       R3 R0 K42 ["delayBetweenAutomaticUpdates"]
      138 MOVE                             R5 R1
      139 NAMECALL                         R3 R0 K43 ["hookHeartbeat"]
      141 CALL                             R3 2 0
      142 GETUPVAL                         R3 7
      143 GETTABLEKS                       R3 R3 K44 ["create"]
      145 LOADN                            R4 0
      146 CALL                             R3 1 2
      147 SETTABLEKS                       R3 R0 K45 ["scrollHeightObservable"]
      149 SETTABLEKS                       R4 R0 K46 ["setScrollHeight"]
      151 GETUPVAL                         R3 6
      152 GETTABLEKS                       R3 R3 K39 ["createRef"]
      154 CALL                             R3 0 1
      155 SETTABLEKS                       R3 R0 K47 ["scrollRef"]
      157 GETUPVAL                         R3 6
      158 GETTABLEKS                       R3 R3 K39 ["createRef"]
      160 CALL                             R3 0 1
      161 SETTABLEKS                       R3 R0 K48 ["virtualizedListRef"]
      163 GETUPVAL                         R3 8
      164 GETTABLEKS                       R3 R3 K29 ["new"]
      166 DUPTABLE                         R4 K51 [{"treemapRef", "listRef", "plugin"}]
      167 GETTABLEKS                       R5 R0 K40 ["treemapRef"]
      169 SETTABLEKS                       R5 R4 K40 ["treemapRef"]
      171 GETTABLEKS                       R5 R0 K48 ["virtualizedListRef"]
      173 SETTABLEKS                       R5 R4 K49 ["listRef"]
      175 GETTABLEKS                       R5 R1 K17 ["Plugin"]
      177 SETTABLEKS                       R5 R4 K50 ["plugin"]
      179 CALL                             R3 1 1
      180 SETTABLEKS                       R3 R0 K52 ["selectionManager"]
      182 GETTABLEKS                       R3 R0 K52 ["selectionManager"]
      184 LOADB                            R5 1
      185 NAMECALL                         R3 R3 K53 ["setDeselectOnReselect"]
      187 CALL                             R3 2 0
      188 GETTABLEKS                       R3 R0 K52 ["selectionManager"]
      190 NAMECALL                         R3 R3 K54 ["getSelectionObservable"]
      192 CALL                             R3 1 1
      193 GETTABLEKS                       R3 R3 K55 ["changedSignal"]
      195 NEWCLOSURE                       R5 P9
      196 CAPTURE                          VAL R0
      197 CAPTURE                          UPVAL U9
      198 NAMECALL                         R3 R3 K56 ["Connect"]
      200 CALL                             R3 2 0
      201 NEWCLOSURE                       R3 P10
      202 CAPTURE                          VAL R0
      203 CAPTURE                          UPVAL U2
      204 CAPTURE                          UPVAL U10
      205 CAPTURE                          UPVAL U11
      206 SETTABLEKS                       R3 R0 K57 ["onNodeRightClicked"]
      208 GETUPVAL                         R3 12
      209 GETTABLEKS                       R3 R3 K29 ["new"]
      211 GETTABLEKS                       R4 R0 K52 ["selectionManager"]
      213 GETTABLEKS                       R5 R0 K57 ["onNodeRightClicked"]
      215 CALL                             R3 2 1
      216 SETTABLEKS                       R3 R0 K58 ["treemapContext"]
      218 NEWCLOSURE                       R3 P11
      219 CAPTURE                          VAL R0
      220 SETTABLEKS                       R3 R0 K59 ["onNodeClicked"]
      222 NEWCLOSURE                       R3 P12
      223 CAPTURE                          VAL R0
      224 SETTABLEKS                       R3 R0 K60 ["onListNodeRightClicked"]
      226 NEWCLOSURE                       R3 P13
      227 CAPTURE                          VAL R0
      228 SETTABLEKS                       R3 R0 K61 ["onAbsoluteSizeChange"]
      230 NEWCLOSURE                       R3 P14
      231 CAPTURE                          VAL R0
      232 SETTABLEKS                       R3 R0 K62 ["onCanvasPositionChange"]
      234 GETUPVAL                         R3 13
      235 GETTABLEKS                       R3 R3 K29 ["new"]
      237 CALL                             R3 0 1
      238 SETTABLEKS                       R3 R0 K63 ["DEPRECATED_stylizer"]
      240 GETUPVAL                         R3 14
      241 GETTABLEKS                       R3 R3 K64 ["Util"]
      243 GETTABLEKS                       R3 R3 K65 ["createFoundationDesignBinding"]
      245 CALL                             R3 0 2
      246 SETTABLEKS                       R4 R0 K66 ["onFoundationStyleSheetChange"]
      248 GETUPVAL                         R5 15
      249 GETTABLEKS                       R6 R1 K17 ["Plugin"]
      251 LOADNIL                          R7
      252 LOADNIL                          R8
      253 NEWTABLE                         R9 0 1
      255 MOVE                             R10 R3
      256 SETLIST                          R9 R10 1 [1]
      258 CALL                             R5 4 1
      259 SETTABLEKS                       R5 R0 K67 ["design"]
      261 NEWTABLE                         R5 0 6
      263 DUPTABLE                         R6 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      264 LOADK                            R7 K74 ["Unparented"]
      265 SETTABLEKS                       R7 R6 K68 ["id"]
      267 GETTABLEKS                       R7 R0 K35 ["localization"]
      269 LOADK                            R9 K75 ["Categories"]
      270 LOADK                            R10 K76 ["UnparentedInstances"]
      271 NAMECALL                         R7 R7 K77 ["getText"]
      273 CALL                             R7 3 1
      274 SETTABLEKS                       R7 R6 K69 ["text"]
      276 GETUPVAL                         R7 16
      277 SETTABLEKS                       R7 R6 K70 ["module"]
      279 LOADK                            R7 K78 ["instanceCount"]
      280 SETTABLEKS                       R7 R6 K71 ["valueFormat"]
      282 GETUPVAL                         R7 17
      283 GETTABLEKS                       R7 R7 K79 ["Default"]
      285 SETTABLEKS                       R7 R6 K72 ["colorRamp"]
      287 DUPTABLE                         R7 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      288 LOADK                            R8 K80 ["Script"]
      289 SETTABLEKS                       R8 R7 K68 ["id"]
      291 GETTABLEKS                       R8 R0 K35 ["localization"]
      293 LOADK                            R10 K75 ["Categories"]
      294 LOADK                            R11 K81 ["ScriptMemoryUsage"]
      295 NAMECALL                         R8 R8 K77 ["getText"]
      297 CALL                             R8 3 1
      298 SETTABLEKS                       R8 R7 K69 ["text"]
      300 GETUPVAL                         R8 18
      301 SETTABLEKS                       R8 R7 K70 ["module"]
      303 LOADK                            R8 K82 ["memory"]
      304 SETTABLEKS                       R8 R7 K71 ["valueFormat"]
      306 GETUPVAL                         R8 17
      307 GETTABLEKS                       R8 R8 K83 ["IceBlue"]
      309 SETTABLEKS                       R8 R7 K72 ["colorRamp"]
      311 DUPTABLE                         R8 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      312 LOADK                            R9 K84 ["Triangles"]
      313 SETTABLEKS                       R9 R8 K68 ["id"]
      315 GETTABLEKS                       R9 R0 K35 ["localization"]
      317 LOADK                            R11 K75 ["Categories"]
      318 LOADK                            R12 K85 ["SceneTriangles"]
      319 NAMECALL                         R9 R9 K77 ["getText"]
      321 CALL                             R9 3 1
      322 SETTABLEKS                       R9 R8 K69 ["text"]
      324 GETUPVAL                         R9 19
      325 SETTABLEKS                       R9 R8 K70 ["module"]
      327 LOADK                            R9 K86 ["count"]
      328 SETTABLEKS                       R9 R8 K71 ["valueFormat"]
      330 GETUPVAL                         R9 17
      331 GETTABLEKS                       R9 R9 K87 ["Forest"]
      333 SETTABLEKS                       R9 R8 K72 ["colorRamp"]
      335 DUPTABLE                         R9 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      336 LOADK                            R10 K88 ["InstanceComposition"]
      337 SETTABLEKS                       R10 R9 K68 ["id"]
      339 GETTABLEKS                       R10 R0 K35 ["localization"]
      341 LOADK                            R12 K75 ["Categories"]
      342 LOADK                            R13 K88 ["InstanceComposition"]
      343 NAMECALL                         R10 R10 K77 ["getText"]
      345 CALL                             R10 3 1
      346 SETTABLEKS                       R10 R9 K69 ["text"]
      348 GETUPVAL                         R10 20
      349 SETTABLEKS                       R10 R9 K70 ["module"]
      351 LOADK                            R10 K78 ["instanceCount"]
      352 SETTABLEKS                       R10 R9 K71 ["valueFormat"]
      354 GETUPVAL                         R10 17
      355 GETTABLEKS                       R10 R10 K79 ["Default"]
      357 SETTABLEKS                       R10 R9 K72 ["colorRamp"]
      359 DUPTABLE                         R10 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      360 LOADK                            R11 K89 ["Audio"]
      361 SETTABLEKS                       R11 R10 K68 ["id"]
      363 GETTABLEKS                       R11 R0 K35 ["localization"]
      365 LOADK                            R13 K75 ["Categories"]
      366 LOADK                            R14 K90 ["AudioMemory"]
      367 NAMECALL                         R11 R11 K77 ["getText"]
      369 CALL                             R11 3 1
      370 SETTABLEKS                       R11 R10 K69 ["text"]
      372 GETUPVAL                         R11 21
      373 SETTABLEKS                       R11 R10 K70 ["module"]
      375 LOADK                            R11 K82 ["memory"]
      376 SETTABLEKS                       R11 R10 K71 ["valueFormat"]
      378 GETUPVAL                         R11 17
      379 GETTABLEKS                       R11 R11 K83 ["IceBlue"]
      381 SETTABLEKS                       R11 R10 K72 ["colorRamp"]
      383 DUPTABLE                         R11 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      384 LOADK                            R12 K91 ["Animation"]
      385 SETTABLEKS                       R12 R11 K68 ["id"]
      387 GETTABLEKS                       R12 R0 K35 ["localization"]
      389 LOADK                            R14 K75 ["Categories"]
      390 LOADK                            R15 K92 ["AnimationMemory"]
      391 NAMECALL                         R12 R12 K77 ["getText"]
      393 CALL                             R12 3 1
      394 SETTABLEKS                       R12 R11 K69 ["text"]
      396 GETUPVAL                         R12 22
      397 SETTABLEKS                       R12 R11 K70 ["module"]
      399 LOADK                            R12 K82 ["memory"]
      400 SETTABLEKS                       R12 R11 K71 ["valueFormat"]
      402 GETUPVAL                         R12 17
      403 GETTABLEKS                       R12 R12 K83 ["IceBlue"]
      405 SETTABLEKS                       R12 R11 K72 ["colorRamp"]
      407 SETLIST                          R5 R6 6 [1]
      409 SETTABLEKS                       R5 R0 K93 ["categories"]
      411 GETUPVAL                         R5 23
      412 JUMPIFNOT                        R5 ; [+31]
      413 GETTABLEKS                       R6 R0 K93 ["categories"]
      415 LOADN                            R7 4
      416 DUPTABLE                         R8 K73 [{"id", "text", "module", "valueFormat", "colorRamp"}]
      417 LOADK                            R9 K94 ["SceneGeometry"]
      418 SETTABLEKS                       R9 R8 K68 ["id"]
      420 GETTABLEKS                       R9 R0 K35 ["localization"]
      422 LOADK                            R11 K75 ["Categories"]
      423 LOADK                            R12 K94 ["SceneGeometry"]
      424 NAMECALL                         R9 R9 K77 ["getText"]
      426 CALL                             R9 3 1
      427 SETTABLEKS                       R9 R8 K69 ["text"]
      429 GETUPVAL                         R9 24
      430 SETTABLEKS                       R9 R8 K70 ["module"]
      432 LOADK                            R9 K86 ["count"]
      433 SETTABLEKS                       R9 R8 K71 ["valueFormat"]
      435 GETUPVAL                         R9 17
      436 GETTABLEKS                       R9 R9 K79 ["Default"]
      438 SETTABLEKS                       R9 R8 K72 ["colorRamp"]
      440 FASTCALL                         TABLE_INSERT ; [+2]
      441 GETIMPORT                        R5 K97 [table.insert]
      443 CALL                             R5 3 0
      444 GETTABLEKS                       R6 R0 K93 ["categories"]
      446 GETTABLEN                        R5 R6 4
      447 GETTABLEKS                       R6 R0 K93 ["categories"]
      449 LOADNIL                          R7
      450 LOADNIL                          R8
      451 FORGPREP                         R6
      452 GETTABLEKS                       R11 R10 K68 ["id"]
      454 JUMPIFNOTEQKS                    R11 K88 ["InstanceComposition"] ; [+3]
      456 MOVE                             R5 R10
      457 JUMP                             ; [+2]
      458 FORGLOOP                         R6 2 ; [-7]
      460 DUPTABLE                         R8 K98 [{"selectedCategory"}]
      461 SETTABLEKS                       R5 R8 K11 ["selectedCategory"]
      463 NAMECALL                         R6 R0 K99 ["setState"]
      465 CALL                             R6 2 0
      466 GETTABLEKS                       R6 R0 K52 ["selectionManager"]
      468 GETTABLEKS                       R8 R5 K70 ["module"]
      470 NAMECALL                         R6 R6 K100 ["setQuery"]
      472 CALL                             R6 2 0
      473 RETURN                           R0 0

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
        1 JUMPIFNOT                        R0 ; [+93]
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
       41 JUMPIFNOT                        R3 ; [+38]
       42 GETUPVAL                         R3 2
       43 JUMPIFEQKS                       R3 K7 [""] ; [+36]
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
       64 JUMPIF                           R1 ; [+15]
       65 DUPTABLE                         R3 K15 [{"Id", "Name", "Size", "Children"}]
       66 LOADN                            R4 0
       67 SETTABLEKS                       R4 R3 K11 ["Id"]
       69 LOADK                            R4 K16 ["Root"]
       70 SETTABLEKS                       R4 R3 K12 ["Name"]
       72 LOADN                            R4 0
       73 SETTABLEKS                       R4 R3 K13 ["Size"]
       75 NEWTABLE                         R4 0 0
       77 SETTABLEKS                       R4 R3 K14 ["Children"]
       79 MOVE                             R1 R3
       80 GETUPVAL                         R3 3
       81 GETTABLEKS                       R3 R3 K17 ["selectionManager"]
       83 MOVE                             R5 R1
       84 NAMECALL                         R3 R3 K18 ["refreshMetaIds"]
       86 CALL                             R3 2 0
       87 MOVE                             R5 R1
       88 GETUPVAL                         R6 1
       89 GETTABLEKS                       R6 R6 K19 ["sizeKey"]
       91 NAMECALL                         R3 R2 K20 ["submitTreemapNodes"]
       93 CALL                             R3 3 0
       94 RETURN                           R0 0
       95 GETUPVAL                         R0 3
       96 GETTABLEKS                       R0 R0 K3 ["treemapRef"]
       98 JUMPIFNOTEQKNIL                  R0 ; [+2]
      100 RETURN                           R0 0
      101 GETUPVAL                         R0 3
      102 GETTABLEKS                       R0 R0 K3 ["treemapRef"]
      104 NAMECALL                         R0 R0 K4 ["getValue"]
      106 CALL                             R0 1 1
      107 JUMPIFNOTEQKNIL                  R0 ; [+2]
      109 RETURN                           R0 0
      110 GETUPVAL                         R1 3
      111 GETTABLEKS                       R1 R1 K5 ["state"]
      113 GETTABLEKS                       R1 R1 K6 ["selectedCategory"]
      115 GETUPVAL                         R2 1
      116 JUMPIFEQ                         R1 R2 ; [+2]
      118 RETURN                           R0 0
      119 GETIMPORT                        R1 K1 [pcall]
      121 NEWCLOSURE                       R2 P2
      122 CAPTURE                          UPVAL U1
      123 CAPTURE                          UPVAL U2
      124 CALL                             R1 1 2
      125 JUMPIF                           R1 ; [+1]
      126 RETURN                           R0 0
      127 GETUPVAL                         R3 2
      128 JUMPIFNOT                        R3 ; [+22]
      129 GETUPVAL                         R3 2
      130 JUMPIFEQKS                       R3 K7 [""] ; [+20]
      132 MOVE                             R3 R2
      133 GETUPVAL                         R4 2
      134 JUMPIFNOT                        R3 ; [+3]
      135 JUMPIFNOT                        R4 ; [+2]
      136 JUMPIFNOTEQKS                    R4 K7 [""] ; [+3]
      138 MOVE                             R2 R3
      139 JUMP                             ; [+11]
      140 GETIMPORT                        R5 K10 [string.lower]
      142 MOVE                             R6 R4
      143 CALL                             R5 1 1
      144 NEWCLOSURE                       R6 P1
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R6
      147 MOVE                             R7 R6
      148 MOVE                             R8 R3
      149 CALL                             R7 1 1
      150 MOVE                             R2 R7
      151 JUMPIF                           R2 ; [+15]
      152 DUPTABLE                         R3 K15 [{"Id", "Name", "Size", "Children"}]
      153 LOADN                            R4 0
      154 SETTABLEKS                       R4 R3 K11 ["Id"]
      156 LOADK                            R4 K16 ["Root"]
      157 SETTABLEKS                       R4 R3 K12 ["Name"]
      159 LOADN                            R4 0
      160 SETTABLEKS                       R4 R3 K13 ["Size"]
      162 NEWTABLE                         R4 0 0
      164 SETTABLEKS                       R4 R3 K14 ["Children"]
      166 MOVE                             R2 R3
      167 GETUPVAL                         R3 3
      168 GETTABLEKS                       R3 R3 K17 ["selectionManager"]
      170 MOVE                             R5 R2
      171 NAMECALL                         R3 R3 K18 ["refreshMetaIds"]
      173 CALL                             R3 2 0
      174 MOVE                             R5 R2
      175 GETUPVAL                         R6 1
      176 GETTABLEKS                       R6 R6 K19 ["sizeKey"]
      178 NAMECALL                         R3 R0 K20 ["submitTreemapNodes"]
      180 CALL                             R3 3 0
      181 RETURN                           R0 0

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
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        6 GETTABLEKS                       R1 R1 K2 ["mainButton"]
        8 GETTABLEKS                       R3 R0 K3 ["state"]
       10 GETTABLEKS                       R3 R3 K4 ["enabled"]
       12 NAMECALL                         R1 R1 K5 ["SetActive"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"searchTerm"}]
        2 SETTABLEKS                       R0 R3 K0 ["searchTerm"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 0
        8 LOADN                            R2 0
        9 SETTABLEKS                       R2 R1 K3 ["timeOfNextAutomaticUpdate"]
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["forceUpdateOnce"]
        4 GETUPVAL                         R0 0
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["timeOfNextAutomaticUpdate"]
        8 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["togglePause"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_37:
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

PROTO_38:
        0 DUPTABLE                         R1 K1 [{"filterMenuOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["filterMenuOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["filterMenuOpen"]
        6 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_38]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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
       80 JUMPIFNOT                        R3 ; [+114]
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
      135 DUPTABLE                         R6 K39 [{"name", "size"}]
      136 LOADK                            R7 K40 ["circle-i"]
      137 SETTABLEKS                       R7 R6 K37 ["name"]
      139 GETUPVAL                         R7 6
      140 GETTABLEKS                       R7 R7 K41 ["Enums"]
      142 GETTABLEKS                       R7 R7 K42 ["IconSize"]
      144 GETTABLEKS                       R7 R7 K43 ["Small"]
      146 SETTABLEKS                       R7 R6 K38 ["size"]
      148 CALL                             R4 2 1
      149 SETTABLEKS                       R4 R3 K14 ["InfoIcon"]
      151 GETUPVAL                         R4 4
      152 GETTABLEKS                       R4 R4 K17 ["createElement"]
      154 LOADK                            R5 K44 ["TextLabel"]
      155 NEWTABLE                         R6 8 0
      157 GETIMPORT                        R7 K46 [UDim2.new]
      159 LOADN                            R8 1
      160 LOADN                            R9 232
      161 LOADN                            R10 1
      162 LOADN                            R11 0
      163 CALL                             R7 4 1
      164 SETTABLEKS                       R7 R6 K47 ["Size"]
      166 LOADN                            R7 2
      167 SETTABLEKS                       R7 R6 K48 ["LayoutOrder"]
      169 LOADN                            R7 1
      170 SETTABLEKS                       R7 R6 K49 ["BackgroundTransparency"]
      172 SETTABLEKS                       R2 R6 K50 ["Text"]
      174 GETIMPORT                        R7 K52 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R7 R6 K51 ["TextXAlignment"]
      178 GETIMPORT                        R7 K54 [Enum.TextYAlignment.Center]
      180 SETTABLEKS                       R7 R6 K53 ["TextYAlignment"]
      182 GETIMPORT                        R7 K57 [Enum.TextTruncate.AtEnd]
      184 SETTABLEKS                       R7 R6 K55 ["TextTruncate"]
      186 GETUPVAL                         R7 4
      187 GETTABLEKS                       R7 R7 K58 ["Tag"]
      189 LOADK                            R8 K59 ["SceneAnalysis-StandardText"]
      190 SETTABLE                         R8 R6 R7
      191 CALL                             R4 2 1
      192 SETTABLEKS                       R4 R3 K15 ["WarningText"]
      194 RETURN                           R3 1
      195 DUPTABLE                         R3 K16 [{"UIPadding", "Layout", "InfoIcon", "WarningText"}]
      196 GETUPVAL                         R4 4
      197 GETTABLEKS                       R4 R4 K17 ["createElement"]
      199 LOADK                            R5 K12 ["UIPadding"]
      200 DUPTABLE                         R6 K60 [{"PaddingLeft"}]
      201 GETIMPORT                        R7 K23 [UDim.new]
      203 LOADN                            R8 0
      204 LOADN                            R9 8
      205 CALL                             R7 2 1
      206 SETTABLEKS                       R7 R6 K18 ["PaddingLeft"]
      208 CALL                             R4 2 1
      209 SETTABLEKS                       R4 R3 K12 ["UIPadding"]
      211 GETUPVAL                         R4 4
      212 GETTABLEKS                       R4 R4 K17 ["createElement"]
      214 LOADK                            R5 K24 ["UIListLayout"]
      215 DUPTABLE                         R6 K29 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      216 GETIMPORT                        R7 K32 [Enum.FillDirection.Horizontal]
      218 SETTABLEKS                       R7 R6 K25 ["FillDirection"]
      220 GETIMPORT                        R7 K61 [Enum.HorizontalAlignment.Center]
      222 SETTABLEKS                       R7 R6 K26 ["HorizontalAlignment"]
      224 GETIMPORT                        R7 K36 [Enum.VerticalAlignment.Center]
      226 SETTABLEKS                       R7 R6 K27 ["VerticalAlignment"]
      228 GETIMPORT                        R7 K23 [UDim.new]
      230 LOADN                            R8 0
      231 LOADN                            R9 4
      232 CALL                             R7 2 1
      233 SETTABLEKS                       R7 R6 K28 ["Padding"]
      235 CALL                             R4 2 1
      236 SETTABLEKS                       R4 R3 K13 ["Layout"]
      238 GETUPVAL                         R4 4
      239 GETTABLEKS                       R4 R4 K17 ["createElement"]
      241 GETUPVAL                         R5 5
      242 DUPTABLE                         R6 K39 [{"name", "size"}]
      243 LOADK                            R7 K40 ["circle-i"]
      244 SETTABLEKS                       R7 R6 K37 ["name"]
      246 GETUPVAL                         R7 6
      247 GETTABLEKS                       R7 R7 K41 ["Enums"]
      249 GETTABLEKS                       R7 R7 K42 ["IconSize"]
      251 GETTABLEKS                       R7 R7 K43 ["Small"]
      253 SETTABLEKS                       R7 R6 K38 ["size"]
      255 CALL                             R4 2 1
      256 SETTABLEKS                       R4 R3 K14 ["InfoIcon"]
      258 GETUPVAL                         R4 4
      259 GETTABLEKS                       R4 R4 K17 ["createElement"]
      261 LOADK                            R5 K44 ["TextLabel"]
      262 NEWTABLE                         R6 8 0
      264 GETIMPORT                        R7 K64 [Enum.AutomaticSize.X]
      266 SETTABLEKS                       R7 R6 K62 ["AutomaticSize"]
      268 GETIMPORT                        R7 K46 [UDim2.new]
      270 LOADN                            R8 0
      271 LOADN                            R9 0
      272 LOADN                            R10 1
      273 LOADN                            R11 0
      274 CALL                             R7 4 1
      275 SETTABLEKS                       R7 R6 K47 ["Size"]
      277 LOADN                            R7 2
      278 SETTABLEKS                       R7 R6 K48 ["LayoutOrder"]
      280 LOADN                            R7 1
      281 SETTABLEKS                       R7 R6 K49 ["BackgroundTransparency"]
      283 SETTABLEKS                       R2 R6 K50 ["Text"]
      285 GETIMPORT                        R7 K52 [Enum.TextXAlignment.Left]
      287 SETTABLEKS                       R7 R6 K51 ["TextXAlignment"]
      289 GETIMPORT                        R7 K54 [Enum.TextYAlignment.Center]
      291 SETTABLEKS                       R7 R6 K53 ["TextYAlignment"]
      293 GETUPVAL                         R7 4
      294 GETTABLEKS                       R7 R7 K58 ["Tag"]
      296 LOADK                            R8 K65 ["SceneAnalysis-SmallText"]
      297 SETTABLE                         R8 R6 R7
      298 CALL                             R4 2 1
      299 SETTABLEKS                       R4 R3 K15 ["WarningText"]
      301 RETURN                           R3 1

PROTO_43:
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
      513 DUPTABLE                         R38 K154 [{"Layout", "ManualRefreshButton", "AutoupdateToggle", "ClearBaselineButton", "FilterButton"}]
      514 GETUPVAL                         R39 4
      515 GETTABLEKS                       R39 R39 K17 ["createElement"]
      517 LOADK                            R40 K75 ["UIListLayout"]
      518 GETUPVAL                         R42 12
      519 JUMPIFNOT                        R42 ; [+18]
      520 DUPTABLE                         R41 K155 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
      521 GETIMPORT                        R42 K106 [Enum.FillDirection.Horizontal]
      523 SETTABLEKS                       R42 R41 K77 ["FillDirection"]
      525 GETIMPORT                        R42 K157 [Enum.HorizontalAlignment.Right]
      527 SETTABLEKS                       R42 R41 K78 ["HorizontalAlignment"]
      529 GETIMPORT                        R42 K108 [Enum.VerticalAlignment.Center]
      531 SETTABLEKS                       R42 R41 K79 ["VerticalAlignment"]
      533 GETIMPORT                        R42 K91 [Enum.SortOrder.LayoutOrder]
      535 SETTABLEKS                       R42 R41 K80 ["SortOrder"]
      537 JUMP                             ; [+13]
      538 DUPTABLE                         R41 K158 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
      539 GETIMPORT                        R42 K106 [Enum.FillDirection.Horizontal]
      541 SETTABLEKS                       R42 R41 K77 ["FillDirection"]
      543 GETIMPORT                        R42 K157 [Enum.HorizontalAlignment.Right]
      545 SETTABLEKS                       R42 R41 K78 ["HorizontalAlignment"]
      547 GETIMPORT                        R42 K108 [Enum.VerticalAlignment.Center]
      549 SETTABLEKS                       R42 R41 K79 ["VerticalAlignment"]
      551 CALL                             R39 2 1
      552 SETTABLEKS                       R39 R38 K70 ["Layout"]
      554 GETUPVAL                         R39 12
      555 JUMPIFNOT                        R39 ; [+34]
      556 GETTABLEKS                       R39 R2 K159 ["paused"]
      558 JUMPIFNOT                        R39 ; [+31]
      559 GETUPVAL                         R39 4
      560 GETTABLEKS                       R39 R39 K17 ["createElement"]
      562 GETUPVAL                         R40 13
      563 DUPTABLE                         R41 K162 [{"LayoutOrder", "icon", "size", "onActivated"}]
      564 LOADN                            R42 1
      565 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      567 GETUPVAL                         R42 10
      568 GETTABLEKS                       R42 R42 K121 ["Enums"]
      570 GETTABLEKS                       R42 R42 K141 ["IconName"]
      572 GETTABLEKS                       R42 R42 K163 ["ArrowSpinClockwise"]
      574 SETTABLEKS                       R42 R41 K160 ["icon"]
      576 GETUPVAL                         R42 10
      577 GETTABLEKS                       R42 R42 K121 ["Enums"]
      579 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      581 GETTABLEKS                       R42 R42 K164 ["Small"]
      583 SETTABLEKS                       R42 R41 K115 ["size"]
      585 NEWCLOSURE                       R42 P2
      586 CAPTURE                          VAL R0
      587 SETTABLEKS                       R42 R41 K161 ["onActivated"]
      589 CALL                             R39 2 1
      590 SETTABLEKS                       R39 R38 K150 ["ManualRefreshButton"]
      592 GETUPVAL                         R39 4
      593 GETTABLEKS                       R39 R39 K17 ["createElement"]
      595 GETUPVAL                         R40 14
      596 DUPTABLE                         R41 K166 [{"LayoutOrder", "isChecked", "label", "size", "onActivated"}]
      597 GETUPVAL                         R43 12
      598 JUMPIFNOT                        R43 ; [+2]
      599 LOADN                            R42 2
      600 JUMP                             ; [+1]
      601 LOADN                            R42 1
      602 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      604 GETTABLEKS                       R43 R2 K159 ["paused"]
      606 NOT                              R42 R43
      607 SETTABLEKS                       R42 R41 K165 ["isChecked"]
      609 GETTABLEKS                       R42 R0 K11 ["localization"]
      611 LOADK                            R44 K143 ["Controls"]
      612 LOADK                            R45 K151 ["AutoupdateToggle"]
      613 NAMECALL                         R42 R42 K22 ["getText"]
      615 CALL                             R42 3 1
      616 SETTABLEKS                       R42 R41 K113 ["label"]
      618 GETUPVAL                         R42 15
      619 GETTABLEKS                       R42 R42 K164 ["Small"]
      621 SETTABLEKS                       R42 R41 K115 ["size"]
      623 NEWCLOSURE                       R42 P3
      624 CAPTURE                          VAL R0
      625 SETTABLEKS                       R42 R41 K161 ["onActivated"]
      627 CALL                             R39 2 1
      628 SETTABLEKS                       R39 R38 K151 ["AutoupdateToggle"]
      630 MOVE                             R39 R7
      631 JUMPIFNOT                        R39 ; [+46]
      632 GETUPVAL                         R39 4
      633 GETTABLEKS                       R39 R39 K17 ["createElement"]
      635 GETUPVAL                         R40 13
      636 DUPTABLE                         R41 K162 [{"LayoutOrder", "icon", "size", "onActivated"}]
      637 GETUPVAL                         R43 12
      638 JUMPIFNOT                        R43 ; [+2]
      639 LOADN                            R42 3
      640 JUMP                             ; [+1]
      641 LOADN                            R42 2
      642 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      644 GETUPVAL                         R43 12
      645 JUMPIFNOT                        R43 ; [+8]
      646 GETUPVAL                         R42 10
      647 GETTABLEKS                       R42 R42 K121 ["Enums"]
      649 GETTABLEKS                       R42 R42 K141 ["IconName"]
      651 GETTABLEKS                       R42 R42 K167 ["Eraser"]
      653 JUMP                             ; [+7]
      654 GETUPVAL                         R42 10
      655 GETTABLEKS                       R42 R42 K121 ["Enums"]
      657 GETTABLEKS                       R42 R42 K141 ["IconName"]
      659 GETTABLEKS                       R42 R42 K168 ["ArrowRotateRight"]
      661 SETTABLEKS                       R42 R41 K160 ["icon"]
      663 GETUPVAL                         R42 10
      664 GETTABLEKS                       R42 R42 K121 ["Enums"]
      666 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      668 GETTABLEKS                       R42 R42 K164 ["Small"]
      670 SETTABLEKS                       R42 R41 K115 ["size"]
      672 NEWCLOSURE                       R42 P4
      673 CAPTURE                          VAL R5
      674 CAPTURE                          VAL R0
      675 SETTABLEKS                       R42 R41 K161 ["onActivated"]
      677 CALL                             R39 2 1
      678 SETTABLEKS                       R39 R38 K152 ["ClearBaselineButton"]
      680 MOVE                             R39 R6
      681 JUMPIFNOT                        R39 ; [+35]
      682 GETUPVAL                         R39 4
      683 GETTABLEKS                       R39 R39 K17 ["createElement"]
      685 GETUPVAL                         R40 13
      686 DUPTABLE                         R41 K162 [{"LayoutOrder", "icon", "size", "onActivated"}]
      687 GETUPVAL                         R43 12
      688 JUMPIFNOT                        R43 ; [+2]
      689 LOADN                            R42 4
      690 JUMP                             ; [+1]
      691 LOADN                            R42 3
      692 SETTABLEKS                       R42 R41 K90 ["LayoutOrder"]
      694 GETUPVAL                         R42 10
      695 GETTABLEKS                       R42 R42 K121 ["Enums"]
      697 GETTABLEKS                       R42 R42 K141 ["IconName"]
      699 GETTABLEKS                       R42 R42 K169 ["ThreeSlidersHorizontal"]
      701 SETTABLEKS                       R42 R41 K160 ["icon"]
      703 GETUPVAL                         R42 10
      704 GETTABLEKS                       R42 R42 K121 ["Enums"]
      706 GETTABLEKS                       R42 R42 K122 ["InputSize"]
      708 GETTABLEKS                       R42 R42 K164 ["Small"]
      710 SETTABLEKS                       R42 R41 K115 ["size"]
      712 NEWCLOSURE                       R42 P5
      713 CAPTURE                          VAL R0
      714 SETTABLEKS                       R42 R41 K161 ["onActivated"]
      716 CALL                             R39 2 1
      717 SETTABLEKS                       R39 R38 K153 ["FilterButton"]
      719 CALL                             R35 3 1
      720 SETTABLEKS                       R35 R34 K97 ["RightGroup"]
      722 CALL                             R31 3 1
      723 SETTABLEKS                       R31 R30 K71 ["DropdownFrame"]
      725 MOVE                             R31 R6
      726 JUMPIFNOT                        R31 ; [+32]
      727 GETTABLEKS                       R31 R2 K170 ["filterMenuOpen"]
      729 JUMPIFNOT                        R31 ; [+29]
      730 GETUPVAL                         R31 4
      731 GETTABLEKS                       R31 R31 K17 ["createElement"]
      733 LOADK                            R32 K61 ["Frame"]
      734 DUPTABLE                         R33 K171 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      735 GETIMPORT                        R34 K69 [UDim2.new]
      737 LOADN                            R35 1
      738 LOADN                            R36 0
      739 LOADN                            R37 0
      740 LOADN                            R38 30
      741 CALL                             R34 4 1
      742 SETTABLEKS                       R34 R33 K33 ["Size"]
      744 LOADN                            R34 2
      745 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      747 LOADN                            R34 1
      748 SETTABLEKS                       R34 R33 K66 ["BackgroundTransparency"]
      750 NEWCLOSURE                       R34 P6
      751 CAPTURE                          UPVAL U4
      752 CAPTURE                          VAL R2
      753 CAPTURE                          VAL R5
      754 CAPTURE                          UPVAL U14
      755 CAPTURE                          UPVAL U10
      756 CAPTURE                          VAL R0
      757 CALL                             R34 0 1
      758 CALL                             R31 3 1
      759 SETTABLEKS                       R31 R30 K72 ["FilterMenu"]
      761 GETUPVAL                         R31 4
      762 GETTABLEKS                       R31 R31 K17 ["createElement"]
      764 GETUPVAL                         R32 16
      765 DUPTABLE                         R33 K178 [{"Size", "LayoutOrder", "InitialSizes", "UseScale", "ClampSize", "HideBars", "MinSizes", "MaxSizes", "Layout"}]
      766 GETIMPORT                        R34 K69 [UDim2.new]
      768 LOADN                            R35 1
      769 LOADN                            R36 0
      770 LOADN                            R37 1
      771 LOADN                            R38 0
      772 CALL                             R34 4 1
      773 SETTABLEKS                       R34 R33 K33 ["Size"]
      775 LOADN                            R34 3
      776 SETTABLEKS                       R34 R33 K90 ["LayoutOrder"]
      778 NEWTABLE                         R34 0 2
      780 GETIMPORT                        R35 K83 [UDim.new]
      782 LOADK                            R36 K179 [0.5]
      783 LOADN                            R37 0
      784 CALL                             R35 2 1
      785 GETIMPORT                        R36 K83 [UDim.new]
      787 LOADK                            R37 K179 [0.5]
      788 LOADN                            R38 0
      789 CALL                             R36 2 -1
      790 SETLIST                          R34 R35 -1 [1]
      792 SETTABLEKS                       R34 R33 K172 ["InitialSizes"]
      794 LOADB                            R34 1
      795 SETTABLEKS                       R34 R33 K173 ["UseScale"]
      797 LOADB                            R34 1
      798 SETTABLEKS                       R34 R33 K174 ["ClampSize"]
      800 LOADB                            R34 0
      801 SETTABLEKS                       R34 R33 K175 ["HideBars"]
      803 NEWTABLE                         R34 0 2
      805 GETIMPORT                        R35 K83 [UDim.new]
      807 LOADK                            R36 K180 [0.1]
      808 LOADN                            R37 0
      809 CALL                             R35 2 1
      810 GETIMPORT                        R36 K83 [UDim.new]
      812 LOADK                            R37 K180 [0.1]
      813 LOADN                            R38 0
      814 CALL                             R36 2 -1
      815 SETLIST                          R34 R35 -1 [1]
      817 SETTABLEKS                       R34 R33 K176 ["MinSizes"]
      819 NEWTABLE                         R34 0 2
      821 LOADNIL                          R35
      822 LOADNIL                          R36
      823 SETLIST                          R34 R35 2 [1]
      825 SETTABLEKS                       R34 R33 K177 ["MaxSizes"]
      827 GETIMPORT                        R34 K85 [Enum.FillDirection.Vertical]
      829 SETTABLEKS                       R34 R33 K70 ["Layout"]
      831 NEWTABLE                         R34 0 2
      833 GETUPVAL                         R35 4
      834 GETTABLEKS                       R35 R35 K17 ["createElement"]
      836 LOADK                            R36 K61 ["Frame"]
      837 DUPTABLE                         R37 K182 [{"Size", "Position", "BackgroundTransparency"}]
      838 GETIMPORT                        R38 K69 [UDim2.new]
      840 LOADN                            R39 1
      841 LOADN                            R40 0
      842 LOADN                            R41 1
      843 LOADN                            R42 0
      844 CALL                             R38 4 1
      845 SETTABLEKS                       R38 R37 K33 ["Size"]
      847 GETIMPORT                        R38 K69 [UDim2.new]
      849 LOADN                            R39 0
      850 LOADN                            R40 0
      851 LOADN                            R41 0
      852 LOADN                            R42 0
      853 CALL                             R38 4 1
      854 SETTABLEKS                       R38 R37 K181 ["Position"]
      856 LOADN                            R38 1
      857 SETTABLEKS                       R38 R37 K66 ["BackgroundTransparency"]
      859 DUPTABLE                         R38 K184 [{"Treemap"}]
      860 GETUPVAL                         R39 4
      861 GETTABLEKS                       R39 R39 K17 ["createElement"]
      863 GETUPVAL                         R40 17
      864 DUPTABLE                         R41 K191 [{"ref", "Size", "Position", "NodeOutput", "treemapContext", "valueFormat", "colorRamp", "localization", "tooltipLabels"}]
      865 GETTABLEKS                       R42 R0 K192 ["treemapRef"]
      867 SETTABLEKS                       R42 R41 K185 ["ref"]
      869 GETIMPORT                        R42 K69 [UDim2.new]
      871 LOADN                            R43 1
      872 LOADN                            R44 248
      873 LOADN                            R45 1
      874 LOADN                            R46 248
      875 CALL                             R42 4 1
      876 SETTABLEKS                       R42 R41 K33 ["Size"]
      878 GETIMPORT                        R42 K69 [UDim2.new]
      880 LOADN                            R43 0
      881 LOADN                            R44 4
      882 LOADN                            R45 0
      883 LOADN                            R46 4
      884 CALL                             R42 4 1
      885 SETTABLEKS                       R42 R41 K181 ["Position"]
      887 GETUPVAL                         R42 18
      888 GETTABLEKS                       R42 R42 K193 ["mockData"]
      890 SETTABLEKS                       R42 R41 K186 ["NodeOutput"]
      892 GETTABLEKS                       R42 R0 K187 ["treemapContext"]
      894 SETTABLEKS                       R42 R41 K187 ["treemapContext"]
      896 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      898 JUMPIFNOT                        R43 ; [+5]
      899 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      901 GETTABLEKS                       R42 R42 K188 ["valueFormat"]
      903 JUMPIF                           R42 ; [+1]
      904 LOADK                            R42 K194 ["memory"]
      905 SETTABLEKS                       R42 R41 K188 ["valueFormat"]
      907 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      909 JUMPIFNOT                        R43 ; [+5]
      910 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      912 GETTABLEKS                       R42 R42 K189 ["colorRamp"]
      914 JUMPIF                           R42 ; [+3]
      915 GETUPVAL                         R42 19
      916 GETTABLEKS                       R42 R42 K195 ["Default"]
      918 SETTABLEKS                       R42 R41 K189 ["colorRamp"]
      920 GETTABLEKS                       R42 R0 K11 ["localization"]
      922 SETTABLEKS                       R42 R41 K11 ["localization"]
      924 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      926 JUMPIFNOT                        R43 ; [+12]
      927 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
      929 GETTABLEKS                       R43 R43 K5 ["module"]
      931 JUMPIFNOT                        R43 ; [+7]
      932 GETTABLEKS                       R42 R2 K4 ["selectedCategory"]
      934 GETTABLEKS                       R42 R42 K5 ["module"]
      936 GETTABLEKS                       R42 R42 K190 ["tooltipLabels"]
      938 JUMPIF                           R42 ; [+1]
      939 LOADNIL                          R42
      940 SETTABLEKS                       R42 R41 K190 ["tooltipLabels"]
      942 CALL                             R39 2 1
      943 SETTABLEKS                       R39 R38 K183 ["Treemap"]
      945 CALL                             R35 3 1
      946 GETUPVAL                         R36 4
      947 GETTABLEKS                       R36 R36 K17 ["createElement"]
      949 LOADK                            R37 K61 ["Frame"]
      950 DUPTABLE                         R38 K197 [{"Size", "BackgroundTransparency", "ClipsDescendants"}]
      951 GETIMPORT                        R39 K69 [UDim2.new]
      953 LOADN                            R40 1
      954 LOADN                            R41 0
      955 LOADN                            R42 1
      956 LOADN                            R43 224
      957 CALL                             R39 4 1
      958 SETTABLEKS                       R39 R38 K33 ["Size"]
      960 LOADN                            R39 1
      961 SETTABLEKS                       R39 R38 K66 ["BackgroundTransparency"]
      963 LOADB                            R39 1
      964 SETTABLEKS                       R39 R38 K196 ["ClipsDescendants"]
      966 DUPTABLE                         R39 K202 [{"ListPadding", "UIListLayout", "Summary", "ListWrapper", "WarningBar"}]
      967 GETUPVAL                         R40 4
      968 GETTABLEKS                       R40 R40 K17 ["createElement"]
      970 LOADK                            R41 K94 ["UIPadding"]
      971 DUPTABLE                         R42 K203 [{"PaddingLeft"}]
      972 GETIMPORT                        R43 K83 [UDim.new]
      974 LOADN                            R44 0
      975 LOADN                            R45 4
      976 CALL                             R43 2 1
      977 SETTABLEKS                       R43 R42 K99 ["PaddingLeft"]
      979 CALL                             R40 2 1
      980 SETTABLEKS                       R40 R39 K198 ["ListPadding"]
      982 GETUPVAL                         R40 4
      983 GETTABLEKS                       R40 R40 K17 ["createElement"]
      985 LOADK                            R41 K75 ["UIListLayout"]
      986 DUPTABLE                         R42 K204 [{"SortOrder", "FillDirection"}]
      987 GETIMPORT                        R43 K91 [Enum.SortOrder.LayoutOrder]
      989 SETTABLEKS                       R43 R42 K80 ["SortOrder"]
      991 GETIMPORT                        R43 K85 [Enum.FillDirection.Vertical]
      993 SETTABLEKS                       R43 R42 K77 ["FillDirection"]
      995 CALL                             R40 2 1
      996 SETTABLEKS                       R40 R39 K75 ["UIListLayout"]
      998 GETUPVAL                         R40 4
      999 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1001 GETUPVAL                         R41 20
     1002 DUPTABLE                         R42 K208 [{"LayoutOrder", "query", "queryInfo", "selectedIdsHash", "localization"}]
     1003 LOADN                            R43 1
     1004 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
     1006 GETTABLEKS                       R44 R2 K4 ["selectedCategory"]
     1008 JUMPIFNOT                        R44 ; [+5]
     1009 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
     1011 GETTABLEKS                       R43 R43 K5 ["module"]
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R43
     1015 SETTABLEKS                       R43 R42 K205 ["query"]
     1017 GETTABLEKS                       R43 R2 K4 ["selectedCategory"]
     1019 SETTABLEKS                       R43 R42 K206 ["queryInfo"]
     1021 GETTABLEKS                       R43 R2 K207 ["selectedIdsHash"]
     1023 SETTABLEKS                       R43 R42 K207 ["selectedIdsHash"]
     1025 GETTABLEKS                       R43 R0 K11 ["localization"]
     1027 SETTABLEKS                       R43 R42 K11 ["localization"]
     1029 CALL                             R40 2 1
     1030 SETTABLEKS                       R40 R39 K199 ["Summary"]
     1032 GETUPVAL                         R40 4
     1033 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1035 LOADK                            R41 K61 ["Frame"]
     1036 DUPTABLE                         R42 K209 [{"Size", "LayoutOrder", "BackgroundTransparency", "ClipsDescendants"}]
     1037 GETIMPORT                        R43 K69 [UDim2.new]
     1039 LOADN                            R44 1
     1040 LOADN                            R45 0
     1041 LOADN                            R46 1
     1042 LOADN                            R47 198
     1043 CALL                             R43 4 1
     1044 SETTABLEKS                       R43 R42 K33 ["Size"]
     1046 LOADN                            R43 2
     1047 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
     1049 LOADN                            R43 1
     1050 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
     1052 LOADB                            R43 1
     1053 SETTABLEKS                       R43 R42 K196 ["ClipsDescendants"]
     1055 DUPTABLE                         R43 K212 [{"UISizeConstraint", "List"}]
     1056 GETUPVAL                         R44 4
     1057 GETTABLEKS                       R44 R44 K17 ["createElement"]
     1059 LOADK                            R45 K210 ["UISizeConstraint"]
     1060 DUPTABLE                         R46 K213 [{"MinSize"}]
     1061 GETIMPORT                        R47 K32 [Vector2.new]
     1063 LOADN                            R48 0
     1064 LOADN                            R49 100
     1065 CALL                             R47 2 1
     1066 SETTABLEKS                       R47 R46 K34 ["MinSize"]
     1068 CALL                             R44 2 1
     1069 SETTABLEKS                       R44 R43 K210 ["UISizeConstraint"]
     1071 GETUPVAL                         R44 4
     1072 GETTABLEKS                       R44 R44 K17 ["createElement"]
     1074 GETUPVAL                         R45 21
     1075 DUPTABLE                         R46 K223 [{"ref", "windowHeight", "rootNodeObservable", "scrollHeightObservable", "scrollRef", "onAbsoluteSizeChange", "onCanvasPositionChange", "ZIndex", "onNodeClicked", "onNodeRightClicked", "query", "queryInfo"}]
     1076 GETTABLEKS                       R47 R0 K224 ["virtualizedListRef"]
     1078 SETTABLEKS                       R47 R46 K185 ["ref"]
     1080 GETTABLEKS                       R47 R2 K214 ["windowHeight"]
     1082 SETTABLEKS                       R47 R46 K214 ["windowHeight"]
     1084 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1086 JUMPIFNOT                        R48 ; [+8]
     1087 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1089 GETTABLEKS                       R47 R47 K5 ["module"]
     1091 GETTABLEKS                       R47 R47 K225 ["getNodesObservable"]
     1093 CALL                             R47 0 1
     1094 JUMP                             ; [+1]
     1095 LOADNIL                          R47
     1096 SETTABLEKS                       R47 R46 K215 ["rootNodeObservable"]
     1098 GETTABLEKS                       R47 R0 K216 ["scrollHeightObservable"]
     1100 SETTABLEKS                       R47 R46 K216 ["scrollHeightObservable"]
     1102 GETTABLEKS                       R47 R0 K217 ["scrollRef"]
     1104 SETTABLEKS                       R47 R46 K217 ["scrollRef"]
     1106 GETTABLEKS                       R47 R0 K218 ["onAbsoluteSizeChange"]
     1108 SETTABLEKS                       R47 R46 K218 ["onAbsoluteSizeChange"]
     1110 GETTABLEKS                       R47 R0 K219 ["onCanvasPositionChange"]
     1112 SETTABLEKS                       R47 R46 K219 ["onCanvasPositionChange"]
     1114 GETTABLEKS                       R47 R1 K220 ["ZIndex"]
     1116 SETTABLEKS                       R47 R46 K220 ["ZIndex"]
     1118 GETTABLEKS                       R47 R0 K221 ["onNodeClicked"]
     1120 SETTABLEKS                       R47 R46 K221 ["onNodeClicked"]
     1122 GETTABLEKS                       R47 R0 K226 ["onListNodeRightClicked"]
     1124 SETTABLEKS                       R47 R46 K222 ["onNodeRightClicked"]
     1126 GETTABLEKS                       R48 R2 K4 ["selectedCategory"]
     1128 JUMPIFNOT                        R48 ; [+5]
     1129 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1131 GETTABLEKS                       R47 R47 K5 ["module"]
     1133 JUMP                             ; [+1]
     1134 LOADNIL                          R47
     1135 SETTABLEKS                       R47 R46 K205 ["query"]
     1137 GETTABLEKS                       R47 R2 K4 ["selectedCategory"]
     1139 SETTABLEKS                       R47 R46 K206 ["queryInfo"]
     1141 CALL                             R44 2 1
     1142 SETTABLEKS                       R44 R43 K211 ["List"]
     1144 CALL                             R40 3 1
     1145 SETTABLEKS                       R40 R39 K200 ["ListWrapper"]
     1147 GETUPVAL                         R40 4
     1148 GETTABLEKS                       R40 R40 K17 ["createElement"]
     1150 LOADK                            R41 K61 ["Frame"]
     1151 DUPTABLE                         R42 K171 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
     1152 GETIMPORT                        R43 K69 [UDim2.new]
     1154 LOADN                            R44 1
     1155 LOADN                            R45 0
     1156 LOADN                            R46 0
     1157 LOADN                            R47 24
     1158 CALL                             R43 4 1
     1159 SETTABLEKS                       R43 R42 K33 ["Size"]
     1161 LOADN                            R43 3
     1162 SETTABLEKS                       R43 R42 K90 ["LayoutOrder"]
     1164 LOADN                            R43 1
     1165 SETTABLEKS                       R43 R42 K66 ["BackgroundTransparency"]
     1167 NEWCLOSURE                       R43 P7
     1168 CAPTURE                          UPVAL U12
     1169 CAPTURE                          VAL R5
     1170 CAPTURE                          VAL R0
     1171 CAPTURE                          VAL R2
     1172 CAPTURE                          UPVAL U4
     1173 CAPTURE                          UPVAL U22
     1174 CAPTURE                          UPVAL U10
     1175 CALL                             R43 0 1
     1176 CALL                             R40 3 1
     1177 SETTABLEKS                       R40 R39 K201 ["WarningBar"]
     1179 CALL                             R36 3 1
     1180 SETLIST                          R34 R35 2 [1]
     1182 CALL                             R31 3 1
     1183 SETTABLEKS                       R31 R30 K73 ["SplitPane"]
     1185 CALL                             R27 3 1
     1186 SETTABLEKS                       R27 R26 K64 ["ContentArea"]
     1188 CALL                             R23 3 1
     1189 SETTABLEKS                       R23 R22 K57 ["Wrapper"]
     1191 GETUPVAL                         R24 12
     1192 JUMPIFNOT                        R24 ; [+2]
     1193 LOADNIL                          R23
     1194 JUMP                             ; [+10]
     1195 GETUPVAL                         R23 4
     1196 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1198 LOADK                            R24 K58 ["StyleLink"]
     1199 DUPTABLE                         R25 K228 [{"StyleSheet"}]
     1200 GETTABLEKS                       R26 R0 K14 ["design"]
     1202 SETTABLEKS                       R26 R25 K227 ["StyleSheet"]
     1204 CALL                             R23 2 1
     1205 SETTABLEKS                       R23 R22 K58 ["StyleLink"]
     1207 GETUPVAL                         R23 4
     1208 GETTABLEKS                       R23 R23 K17 ["createElement"]
     1210 GETUPVAL                         R24 23
     1211 CALL                             R23 1 1
     1212 SETTABLEKS                       R23 R22 K59 ["WidgetRegister"]
     1214 CALL                             R19 3 1
     1215 SETTABLEKS                       R19 R18 K53 ["ContextStack"]
     1217 CALL                             R15 3 1
     1218 SETTABLEKS                       R15 R14 K48 ["Foundations"]
     1220 CALL                             R11 3 1
     1221 SETTABLEKS                       R11 R10 K15 ["MainWidget"]
     1223 CALL                             R8 2 -1
     1224 RETURN                           R8 -1

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
       58 GETTABLEKS                       R10 R7 K20 ["getFFlagSceneAnalysisBugfixesMay2026"]
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
      239 GETTABLEKS                       R45 R45 K64 ["Queries"]
      241 GETTABLEKS                       R45 R45 K65 ["UnparentedInstancesView"]
      243 GETTABLEKS                       R45 R45 K66 ["FetchUnparentedInstances"]
      245 CALL                             R44 1 1
      246 GETIMPORT                        R45 K5 [require]
      248 GETTABLEKS                       R46 R0 K40 ["Src"]
      250 GETTABLEKS                       R46 R46 K64 ["Queries"]
      252 GETTABLEKS                       R46 R46 K67 ["ScriptMemoryView"]
      254 GETTABLEKS                       R46 R46 K68 ["FetchAllScriptMemory"]
      256 CALL                             R45 1 1
      257 GETIMPORT                        R46 K5 [require]
      259 GETTABLEKS                       R47 R0 K40 ["Src"]
      261 GETTABLEKS                       R47 R47 K64 ["Queries"]
      263 GETTABLEKS                       R47 R47 K69 ["SceneTrianglesView"]
      265 GETTABLEKS                       R47 R47 K70 ["FetchSceneTriangles"]
      267 CALL                             R46 1 1
      268 GETIMPORT                        R47 K5 [require]
      270 GETTABLEKS                       R48 R0 K40 ["Src"]
      272 GETTABLEKS                       R48 R48 K64 ["Queries"]
      274 GETTABLEKS                       R48 R48 K71 ["SceneGeometryView"]
      276 GETTABLEKS                       R48 R48 K72 ["FetchSceneGeometry"]
      278 CALL                             R47 1 1
      279 GETIMPORT                        R48 K5 [require]
      281 GETTABLEKS                       R49 R0 K40 ["Src"]
      283 GETTABLEKS                       R49 R49 K64 ["Queries"]
      285 GETTABLEKS                       R49 R49 K73 ["InstanceCompositionView"]
      287 GETTABLEKS                       R49 R49 K74 ["FetchInstanceComposition"]
      289 CALL                             R48 1 1
      290 GETIMPORT                        R49 K5 [require]
      292 GETTABLEKS                       R50 R0 K40 ["Src"]
      294 GETTABLEKS                       R50 R50 K64 ["Queries"]
      296 GETTABLEKS                       R50 R50 K75 ["AnimationMemoryView"]
      298 GETTABLEKS                       R50 R50 K76 ["FetchAnimationMemory"]
      300 CALL                             R49 1 1
      301 GETIMPORT                        R50 K5 [require]
      303 GETTABLEKS                       R51 R0 K40 ["Src"]
      305 GETTABLEKS                       R51 R51 K64 ["Queries"]
      307 GETTABLEKS                       R51 R51 K77 ["AudioMemoryView"]
      309 GETTABLEKS                       R51 R51 K78 ["FetchAudioMemory"]
      311 CALL                             R50 1 1
      312 GETIMPORT                        R51 K5 [require]
      314 GETTABLEKS                       R52 R0 K40 ["Src"]
      316 GETTABLEKS                       R52 R52 K11 ["Components"]
      318 GETTABLEKS                       R52 R52 K45 ["Treemap"]
      320 GETTABLEKS                       R52 R52 K79 ["TreemapContext"]
      322 CALL                             R51 1 1
      323 DUPCLOSURE                       R52 K80 [PROTO_23]
      324 CAPTURE                          VAL R8
      325 CAPTURE                          VAL R41
      326 CAPTURE                          VAL R10
      327 CAPTURE                          VAL R19
      328 CAPTURE                          VAL R25
      329 CAPTURE                          VAL R26
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R32
      332 CAPTURE                          VAL R43
      333 CAPTURE                          VAL R36
      334 CAPTURE                          VAL R42
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R51
      337 CAPTURE                          VAL R23
      338 CAPTURE                          VAL R4
      339 CAPTURE                          VAL R24
      340 CAPTURE                          VAL R44
      341 CAPTURE                          VAL R35
      342 CAPTURE                          VAL R45
      343 CAPTURE                          VAL R46
      344 CAPTURE                          VAL R48
      345 CAPTURE                          VAL R50
      346 CAPTURE                          VAL R49
      347 CAPTURE                          VAL R9
      348 CAPTURE                          VAL R47
      349 SETTABLEKS                       R52 R40 K81 ["init"]
      351 DUPCLOSURE                       R52 K82 [PROTO_24]
      352 SETTABLEKS                       R52 R40 K83 ["unhookHeartbeat"]
      354 DUPCLOSURE                       R52 K84 [PROTO_30]
      355 CAPTURE                          VAL R10
      356 SETTABLEKS                       R52 R40 K85 ["hookHeartbeat"]
      358 DUPCLOSURE                       R52 K86 [PROTO_31]
      359 CAPTURE                          VAL R8
      360 SETTABLEKS                       R52 R40 K87 ["didUpdate"]
      362 DUPCLOSURE                       R52 K88 [PROTO_32]
      363 CAPTURE                          VAL R10
      364 SETTABLEKS                       R52 R40 K89 ["willUnmount"]
      366 DUPCLOSURE                       R52 K90 [PROTO_43]
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R20
      369 CAPTURE                          VAL R21
      370 CAPTURE                          VAL R22
      371 CAPTURE                          VAL R1
      372 CAPTURE                          VAL R18
      373 CAPTURE                          VAL R5
      374 CAPTURE                          VAL R2
      375 CAPTURE                          VAL R34
      376 CAPTURE                          VAL R12
      377 CAPTURE                          VAL R11
      378 CAPTURE                          VAL R14
      379 CAPTURE                          VAL R10
      380 CAPTURE                          VAL R16
      381 CAPTURE                          VAL R13
      382 CAPTURE                          VAL R17
      383 CAPTURE                          VAL R29
      384 CAPTURE                          VAL R28
      385 CAPTURE                          VAL R37
      386 CAPTURE                          VAL R35
      387 CAPTURE                          VAL R31
      388 CAPTURE                          VAL R30
      389 CAPTURE                          VAL R15
      390 CAPTURE                          VAL R33
      391 SETTABLEKS                       R52 R40 K91 ["render"]
      393 RETURN                           R40 1

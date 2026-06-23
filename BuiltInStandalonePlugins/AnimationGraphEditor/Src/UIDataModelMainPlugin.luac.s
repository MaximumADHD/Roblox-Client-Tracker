PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R0
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["PluginLoaderContext"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["PluginLoaderContext"]
        7 GETTABLEKS                       R0 R0 K1 ["mainDockWidget"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["PluginLoaderContext"]
       13 GETTABLEKS                       R0 R0 K1 ["mainDockWidget"]
       15 GETTABLEKS                       R0 R0 K2 ["Enabled"]
       17 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R0 R0 K2 ["mainButton"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["enabled"]
       13 NAMECALL                         R0 R0 K4 ["SetActive"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
        7 LOADK                            R1 K3 ["AnimationGraphEditor"]
        8 LOADK                            R2 K4 ["Toggle"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["enabled"]
        8 JUMPIFNOT                        R0 ; [+11]
        9 GETIMPORT                        R0 K4 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K5 ["enable"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["enabled"]
       10 JUMPIFEQ                         R1 R2 ; [+14]
       12 GETIMPORT                        R1 K5 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K6 ["set"]
       22 GETTABLEKS                       R2 R0 K1 ["Enabled"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R1 R1 K1 ["Connect"]
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETIMPORT                        R0 K3 [task.spawn]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R1 R1 K2 ["actionTriggeredSignals"]
       10 GETTABLEN                        R0 R1 1
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["toggle"]
       15 NAMECALL                         R2 R0 K4 ["Connect"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K1 ["PluginLoaderContext"]
       23 GETTABLEKS                       R0 R0 K5 ["mainButtonClickedSignal"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K3 ["toggle"]
       28 NAMECALL                         R0 R0 K4 ["Connect"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["enabled"]
        8 JUMPIFEQ                         R1 R0 ; [+12]
       10 GETIMPORT                        R1 K4 [task.spawn]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["enable"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useToggleState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["Plugin"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K3 ["useEffect"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R6 R1 K4 ["enabled"]
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       35 DUPCLOSURE                       R4 K5 [PROTO_6]
       36 CAPTURE                          UPVAL U3
       37 NEWTABLE                         R5 0 0
       39 CALL                             R3 2 1
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       43 NEWCLOSURE                       R5 P4
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 NEWTABLE                         R6 0 3
       50 MOVE                             R7 R2
       51 GETTABLEKS                       R8 R1 K7 ["enable"]
       53 GETTABLEKS                       R9 R1 K4 ["enabled"]
       55 SETLIST                          R6 R7 3 [1]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K6 ["useCallback"]
       61 NEWCLOSURE                       R6 P5
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R7 0 4
       68 MOVE                             R8 R2
       69 GETTABLEKS                       R9 R1 K7 ["enable"]
       71 GETTABLEKS                       R10 R1 K4 ["enabled"]
       73 MOVE                             R11 R3
       74 SETLIST                          R7 R8 4 [1]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 4
       78 CALL                             R6 0 1
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       82 NEWCLOSURE                       R8 P6
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R1
       88 NEWTABLE                         R9 0 4
       90 MOVE                             R10 R6
       91 MOVE                             R11 R2
       92 GETTABLEKS                       R12 R1 K8 ["set"]
       94 MOVE                             R13 R3
       95 SETLIST                          R9 R10 4 [1]
       97 CALL                             R7 2 0
       98 GETUPVAL                         R7 4
       99 CALL                             R7 0 1
      100 GETUPVAL                         R8 1
      101 GETTABLEKS                       R8 R8 K6 ["useCallback"]
      103 NEWCLOSURE                       R9 P7
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R1
      108 NEWTABLE                         R10 0 3
      110 MOVE                             R11 R7
      111 GETTABLEKS                       R12 R0 K9 ["PluginLoaderContext"]
      113 GETTABLEKS                       R13 R1 K10 ["toggle"]
      115 SETLIST                          R10 R11 3 [1]
      117 CALL                             R8 2 1
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R9 R9 K6 ["useCallback"]
      121 NEWCLOSURE                       R10 P8
      122 CAPTURE                          UPVAL U2
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R3
      126 NEWTABLE                         R11 0 4
      128 MOVE                             R12 R2
      129 GETTABLEKS                       R13 R1 K7 ["enable"]
      131 GETTABLEKS                       R14 R1 K4 ["enabled"]
      133 MOVE                             R15 R3
      134 SETLIST                          R11 R12 4 [1]
      136 CALL                             R9 2 1
      137 DUPTABLE                         R10 K16 [{"enabledState", "onClose", "onWidgetEnabledChanged", "onDockWidgetCreated", "onRestore"}]
      138 SETTABLEKS                       R1 R10 K11 ["enabledState"]
      140 SETTABLEKS                       R4 R10 K12 ["onClose"]
      142 SETTABLEKS                       R5 R10 K13 ["onWidgetEnabledChanged"]
      144 SETTABLEKS                       R8 R10 K14 ["onDockWidgetCreated"]
      146 SETTABLEKS                       R9 R10 K15 ["onRestore"]
      148 RETURN                           R10 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Style"]
        3 GETTABLEKS                       R0 R0 K1 ["Themes"]
        5 GETTABLEKS                       R0 R0 K2 ["StudioTheme"]
        7 GETTABLEKS                       R0 R0 K3 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Styling"]
        3 GETTABLEKS                       R0 R0 K1 ["registerPluginStyles"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["Plugin"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 NEWTABLE                         R4 0 1
       12 GETUPVAL                         R5 2
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R0 4 -1
       16 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K7 ["Src"]
       11 GETTABLEKS                       R2 R2 K8 ["Resources"]
       13 GETTABLEKS                       R2 R2 K1 ["Localization"]
       15 GETTABLEKS                       R2 R2 K9 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K7 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Resources"]
       24 GETTABLEKS                       R2 R2 K1 ["Localization"]
       26 GETTABLEKS                       R2 R2 K10 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 LOADK                            R2 K11 ["AnimationGraphEditor"]
       31 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K7 ["Src"]
       13 GETTABLEKS                       R2 R2 K8 ["Resources"]
       15 GETTABLEKS                       R2 R2 K1 ["Localization"]
       17 GETTABLEKS                       R2 R2 K9 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K7 ["Src"]
       24 GETTABLEKS                       R2 R2 K8 ["Resources"]
       26 GETTABLEKS                       R2 R2 K1 ["Localization"]
       28 GETTABLEKS                       R2 R2 K10 ["LocalizedStrings"]
       30 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       32 LOADK                            R2 K11 ["AnimationGraphEditor"]
       33 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["Opened_%*"]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K1 ["Plugin"]
        5 GETTABLEKS                       R5 R5 K2 ["Name"]
        7 NAMECALL                         R3 R3 K3 ["format"]
        9 CALL                             R3 2 1
       10 MOVE                             R2 R3
       11 NAMECALL                         R0 R0 K4 ["SetItem"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K1 ["Plugin"]
       17 LOADK                            R2 K5 ["Opened"]
       18 NAMECALL                         R0 R0 K6 ["Invoke"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 NAMECALL                         R0 R0 K1 ["GetMouse"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useFoundationStudioTheme"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       10 DUPCLOSURE                       R4 K2 [PROTO_18]
       11 CAPTURE                          UPVAL U3
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       18 DUPCLOSURE                       R5 K3 [PROTO_19]
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 2
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R8 0 2
       32 GETTABLEKS                       R9 R0 K4 ["Plugin"]
       34 MOVE                             R10 R4
       35 SETLIST                          R8 R9 2 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       41 DUPCLOSURE                       R8 K5 [PROTO_21]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R9 0 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       50 DUPCLOSURE                       R9 K6 [PROTO_22]
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R10 0 0
       55 CALL                             R8 2 1
       56 GETUPVAL                         R9 6
       57 JUMPIFNOT                        R9 ; [+13]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       61 NEWCLOSURE                       R10 P5
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R0
       64 NEWTABLE                         R11 0 1
       66 GETTABLEKS                       R12 R0 K4 ["Plugin"]
       68 SETLIST                          R11 R12 1 [1]
       70 CALL                             R9 2 0
       71 GETUPVAL                         R9 2
       72 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       74 NEWCLOSURE                       R10 P6
       75 CAPTURE                          VAL R7
       76 NEWTABLE                         R11 0 1
       78 MOVE                             R12 R7
       79 SETLIST                          R11 R12 1 [1]
       81 CALL                             R9 2 0
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       85 NEWCLOSURE                       R10 P7
       86 CAPTURE                          VAL R8
       87 NEWTABLE                         R11 0 1
       89 MOVE                             R12 R8
       90 SETLIST                          R11 R12 1 [1]
       92 CALL                             R9 2 0
       93 GETUPVAL                         R9 2
       94 GETTABLEKS                       R9 R9 K1 ["useMemo"]
       96 NEWCLOSURE                       R10 P8
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R11 0 1
      100 GETTABLEKS                       R12 R0 K4 ["Plugin"]
      102 SETLIST                          R11 R12 1 [1]
      104 CALL                             R9 2 1
      105 GETUPVAL                         R10 3
      106 GETTABLEKS                       R10 R10 K8 ["ContextServices"]
      108 GETTABLEKS                       R10 R10 K9 ["provide"]
      110 NEWTABLE                         R11 0 5
      112 GETUPVAL                         R12 3
      113 GETTABLEKS                       R12 R12 K8 ["ContextServices"]
      115 GETTABLEKS                       R12 R12 K4 ["Plugin"]
      117 GETTABLEKS                       R12 R12 K10 ["new"]
      119 GETTABLEKS                       R13 R0 K4 ["Plugin"]
      121 CALL                             R12 1 1
      122 GETUPVAL                         R13 3
      123 GETTABLEKS                       R13 R13 K8 ["ContextServices"]
      125 GETTABLEKS                       R13 R13 K11 ["Mouse"]
      127 GETTABLEKS                       R13 R13 K10 ["new"]
      129 MOVE                             R14 R9
      130 CALL                             R13 1 1
      131 GETUPVAL                         R14 3
      132 GETTABLEKS                       R14 R14 K8 ["ContextServices"]
      134 GETTABLEKS                       R14 R14 K12 ["Design"]
      136 GETTABLEKS                       R14 R14 K10 ["new"]
      138 MOVE                             R15 R6
      139 CALL                             R14 1 1
      140 MOVE                             R15 R3
      141 MOVE                             R16 R7
      142 SETLIST                          R11 R12 5 [1]
      144 DUPTABLE                         R12 K14 [{"MainWidget"}]
      145 GETUPVAL                         R13 2
      146 GETTABLEKS                       R13 R13 K15 ["createElement"]
      148 GETUPVAL                         R14 3
      149 GETTABLEKS                       R14 R14 K16 ["UI"]
      151 GETTABLEKS                       R14 R14 K17 ["DockWidget"]
      153 NEWTABLE                         R15 16 0
      155 LOADK                            R16 K18 ["AnimationGraphEditor"]
      156 SETTABLEKS                       R16 R15 K19 ["Id"]
      158 GETTABLEKS                       R16 R2 K20 ["enabledState"]
      160 GETTABLEKS                       R16 R16 K21 ["enabled"]
      162 SETTABLEKS                       R16 R15 K22 ["Enabled"]
      164 LOADK                            R18 K4 ["Plugin"]
      165 LOADK                            R19 K23 ["Name"]
      166 NAMECALL                         R16 R8 K24 ["getText"]
      168 CALL                             R16 3 1
      169 SETTABLEKS                       R16 R15 K25 ["Title"]
      171 GETIMPORT                        R16 K29 [Enum.ZIndexBehavior.Sibling]
      173 SETTABLEKS                       R16 R15 K27 ["ZIndexBehavior"]
      175 GETIMPORT                        R16 K32 [Enum.InitialDockState.Bottom]
      177 SETTABLEKS                       R16 R15 K30 ["InitialDockState"]
      179 GETIMPORT                        R16 K34 [Vector2.new]
      181 LOADN                            R17 128
      182 LOADN                            R18 224
      183 CALL                             R16 2 1
      184 SETTABLEKS                       R16 R15 K35 ["Size"]
      186 GETIMPORT                        R16 K34 [Vector2.new]
      188 LOADN                            R17 250
      189 LOADN                            R18 200
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K36 ["MinSize"]
      193 GETTABLEKS                       R16 R2 K37 ["onClose"]
      195 SETTABLEKS                       R16 R15 K38 ["OnClose"]
      197 LOADB                            R16 1
      198 SETTABLEKS                       R16 R15 K39 ["ShouldRestore"]
      200 GETTABLEKS                       R16 R2 K40 ["onRestore"]
      202 SETTABLEKS                       R16 R15 K41 ["OnWidgetRestored"]
      204 GETTABLEKS                       R16 R0 K42 ["PluginLoaderContext"]
      206 GETTABLEKS                       R16 R16 K43 ["mainDockWidget"]
      208 SETTABLEKS                       R16 R15 K44 ["Widget"]
      210 GETTABLEKS                       R16 R2 K45 ["onDockWidgetCreated"]
      212 SETTABLEKS                       R16 R15 K46 ["OnWidgetCreated"]
      214 SETTABLEKS                       R6 R15 K47 ["PluginDesign"]
      216 GETUPVAL                         R16 2
      217 GETTABLEKS                       R16 R16 K48 ["Change"]
      219 GETTABLEKS                       R16 R16 K22 ["Enabled"]
      221 GETTABLEKS                       R17 R2 K49 ["onWidgetEnabledChanged"]
      223 SETTABLE                         R17 R15 R16
      224 DUPTABLE                         R16 K51 [{"ContextStack"}]
      225 GETUPVAL                         R17 2
      226 GETTABLEKS                       R17 R17 K15 ["createElement"]
      228 GETUPVAL                         R18 8
      229 GETTABLEKS                       R18 R18 K50 ["ContextStack"]
      231 DUPTABLE                         R19 K53 [{"providers"}]
      232 NEWTABLE                         R20 0 28
      234 GETUPVAL                         R21 2
      235 GETTABLEKS                       R21 R21 K15 ["createElement"]
      237 GETUPVAL                         R22 4
      238 GETTABLEKS                       R22 R22 K54 ["Components"]
      240 GETTABLEKS                       R22 R22 K55 ["FoundationProviderAdapter"]
      242 DUPTABLE                         R23 K57 [{"onStyleSheetChange"}]
      243 SETTABLEKS                       R5 R23 K56 ["onStyleSheetChange"]
      245 CALL                             R21 2 1
      246 GETUPVAL                         R22 2
      247 GETTABLEKS                       R22 R22 K15 ["createElement"]
      249 GETUPVAL                         R23 4
      250 GETTABLEKS                       R23 R23 K58 ["Contexts"]
      252 GETTABLEKS                       R23 R23 K59 ["Localization"]
      254 GETTABLEKS                       R23 R23 K60 ["Provider"]
      256 DUPTABLE                         R24 K62 [{"localization"}]
      257 SETTABLEKS                       R8 R24 K61 ["localization"]
      259 CALL                             R22 2 1
      260 GETUPVAL                         R23 2
      261 GETTABLEKS                       R23 R23 K15 ["createElement"]
      263 GETUPVAL                         R24 9
      264 GETTABLEKS                       R24 R24 K63 ["Providers"]
      266 GETTABLEKS                       R24 R24 K64 ["StandaloneDataModel"]
      268 DUPTABLE                         R25 K68 [{"plugin", "pluginGui", "studioUri"}]
      269 GETTABLEKS                       R26 R0 K4 ["Plugin"]
      271 SETTABLEKS                       R26 R25 K65 ["plugin"]
      273 GETTABLEKS                       R26 R0 K42 ["PluginLoaderContext"]
      275 GETTABLEKS                       R26 R26 K43 ["mainDockWidget"]
      277 SETTABLEKS                       R26 R25 K66 ["pluginGui"]
      279 GETUPVAL                         R26 10
      280 SETTABLEKS                       R26 R25 K67 ["studioUri"]
      282 CALL                             R23 2 1
      283 GETUPVAL                         R24 2
      284 GETTABLEKS                       R24 R24 K15 ["createElement"]
      286 GETUPVAL                         R25 11
      287 GETTABLEKS                       R25 R25 K69 ["PropertyEntryProvider"]
      289 DUPTABLE                         R26 K71 [{"theme"}]
      290 SETTABLEKS                       R1 R26 K70 ["theme"]
      292 CALL                             R24 2 1
      293 GETUPVAL                         R25 2
      294 GETTABLEKS                       R25 R25 K15 ["createElement"]
      296 GETUPVAL                         R26 0
      297 GETTABLEKS                       R26 R26 K72 ["NetworkingContext"]
      299 GETTABLEKS                       R26 R26 K73 ["UIDataModelProvider"]
      301 CALL                             R25 1 1
      302 GETUPVAL                         R26 2
      303 GETTABLEKS                       R26 R26 K15 ["createElement"]
      305 GETUPVAL                         R27 0
      306 GETTABLEKS                       R27 R27 K74 ["VisibleContext"]
      308 GETTABLEKS                       R27 R27 K73 ["UIDataModelProvider"]
      310 DUPTABLE                         R28 K76 [{"isOpen"}]
      311 GETTABLEKS                       R29 R2 K20 ["enabledState"]
      313 GETTABLEKS                       R29 R29 K21 ["enabled"]
      315 SETTABLEKS                       R29 R28 K75 ["isOpen"]
      317 CALL                             R26 2 1
      318 GETUPVAL                         R27 2
      319 GETTABLEKS                       R27 R27 K15 ["createElement"]
      321 GETUPVAL                         R28 0
      322 GETTABLEKS                       R28 R28 K77 ["UIDataModelContexts"]
      324 DUPTABLE                         R29 K78 [{"plugin"}]
      325 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      327 SETTABLEKS                       R30 R29 K65 ["plugin"]
      329 CALL                             R27 2 1
      330 GETUPVAL                         R28 2
      331 GETTABLEKS                       R28 R28 K15 ["createElement"]
      333 GETUPVAL                         R29 0
      334 GETTABLEKS                       R29 R29 K79 ["AnimationParameterContext"]
      336 GETTABLEKS                       R29 R29 K73 ["UIDataModelProvider"]
      338 CALL                             R28 1 1
      339 GETUPVAL                         R29 2
      340 GETTABLEKS                       R29 R29 K15 ["createElement"]
      342 GETUPVAL                         R30 0
      343 GETTABLEKS                       R30 R30 K80 ["GraphingContexts"]
      345 CALL                             R29 1 1
      346 GETUPVAL                         R30 2
      347 GETTABLEKS                       R30 R30 K15 ["createElement"]
      349 GETUPVAL                         R31 0
      350 GETTABLEKS                       R31 R31 K81 ["AssetAccessContext"]
      352 GETTABLEKS                       R31 R31 K73 ["UIDataModelProvider"]
      354 CALL                             R30 1 1
      355 GETUPVAL                         R31 2
      356 GETTABLEKS                       R31 R31 K15 ["createElement"]
      358 GETUPVAL                         R32 0
      359 GETTABLEKS                       R32 R32 K82 ["GameContext"]
      361 GETTABLEKS                       R32 R32 K73 ["UIDataModelProvider"]
      363 CALL                             R31 1 1
      364 GETUPVAL                         R33 12
      365 CALL                             R33 0 1
      366 JUMPIFNOT                        R33 ; [+8]
      367 GETUPVAL                         R32 2
      368 GETTABLEKS                       R32 R32 K15 ["createElement"]
      370 GETUPVAL                         R33 2
      371 GETTABLEKS                       R33 R33 K83 ["Fragment"]
      373 CALL                             R32 1 1
      374 JUMP                             ; [+9]
      375 GETUPVAL                         R32 2
      376 GETTABLEKS                       R32 R32 K15 ["createElement"]
      378 GETUPVAL                         R33 0
      379 GETTABLEKS                       R33 R33 K84 ["GraphDebugDataContext"]
      381 GETTABLEKS                       R33 R33 K73 ["UIDataModelProvider"]
      383 CALL                             R32 1 1
      384 GETUPVAL                         R34 12
      385 CALL                             R34 0 1
      386 JUMPIFNOT                        R34 ; [+8]
      387 GETUPVAL                         R33 2
      388 GETTABLEKS                       R33 R33 K15 ["createElement"]
      390 GETUPVAL                         R34 2
      391 GETTABLEKS                       R34 R34 K83 ["Fragment"]
      393 CALL                             R33 1 1
      394 JUMP                             ; [+9]
      395 GETUPVAL                         R33 2
      396 GETTABLEKS                       R33 R33 K15 ["createElement"]
      398 GETUPVAL                         R34 0
      399 GETTABLEKS                       R34 R34 K85 ["GraphPlayedContext"]
      401 GETTABLEKS                       R34 R34 K73 ["UIDataModelProvider"]
      403 CALL                             R33 1 1
      404 GETUPVAL                         R34 2
      405 GETTABLEKS                       R34 R34 K15 ["createElement"]
      407 GETUPVAL                         R35 0
      408 GETTABLEKS                       R35 R35 K86 ["PopupContext"]
      410 GETTABLEKS                       R35 R35 K87 ["StudioProvider"]
      412 CALL                             R34 1 1
      413 GETUPVAL                         R35 2
      414 GETTABLEKS                       R35 R35 K15 ["createElement"]
      416 GETUPVAL                         R36 0
      417 GETTABLEKS                       R36 R36 K88 ["PlayStateContext"]
      419 GETTABLEKS                       R36 R36 K73 ["UIDataModelProvider"]
      421 DUPTABLE                         R37 K76 [{"isOpen"}]
      422 GETTABLEKS                       R38 R2 K20 ["enabledState"]
      424 GETTABLEKS                       R38 R38 K21 ["enabled"]
      426 SETTABLEKS                       R38 R37 K75 ["isOpen"]
      428 CALL                             R35 2 1
      429 GETUPVAL                         R36 2
      430 GETTABLEKS                       R36 R36 K15 ["createElement"]
      432 GETUPVAL                         R37 0
      433 GETTABLEKS                       R37 R37 K89 ["MaskEditorVisibilityContext"]
      435 GETTABLEKS                       R37 R37 K60 ["Provider"]
      437 CALL                             R36 1 1
      438 SETLIST                          R20 R21 16 [1]
      440 GETUPVAL                         R21 2
      441 GETTABLEKS                       R21 R21 K15 ["createElement"]
      443 GETUPVAL                         R22 0
      444 GETTABLEKS                       R22 R22 K90 ["MaskEditorContext"]
      446 GETTABLEKS                       R22 R22 K73 ["UIDataModelProvider"]
      448 CALL                             R21 1 1
      449 GETUPVAL                         R22 2
      450 GETTABLEKS                       R22 R22 K15 ["createElement"]
      452 GETUPVAL                         R23 0
      453 GETTABLEKS                       R23 R23 K91 ["NativeGraphContext"]
      455 GETTABLEKS                       R23 R23 K73 ["UIDataModelProvider"]
      457 CALL                             R22 1 1
      458 GETUPVAL                         R23 2
      459 GETTABLEKS                       R23 R23 K15 ["createElement"]
      461 GETUPVAL                         R24 0
      462 GETTABLEKS                       R24 R24 K80 ["GraphingContexts"]
      464 CALL                             R23 1 1
      465 GETUPVAL                         R25 12
      466 CALL                             R25 0 1
      467 JUMPIFNOT                        R25 ; [+10]
      468 GETUPVAL                         R24 2
      469 GETTABLEKS                       R24 R24 K15 ["createElement"]
      471 GETUPVAL                         R25 2
      472 GETTABLEKS                       R25 R25 K83 ["Fragment"]
      474 NEWTABLE                         R26 0 0
      476 CALL                             R24 2 1
      477 JUMP                             ; [+9]
      478 GETUPVAL                         R24 2
      479 GETTABLEKS                       R24 R24 K15 ["createElement"]
      481 GETUPVAL                         R25 0
      482 GETTABLEKS                       R25 R25 K92 ["RigListContext"]
      484 GETTABLEKS                       R25 R25 K73 ["UIDataModelProvider"]
      486 CALL                             R24 1 1
      487 GETUPVAL                         R26 12
      488 CALL                             R26 0 1
      489 JUMPIFNOT                        R26 ; [+8]
      490 GETUPVAL                         R25 2
      491 GETTABLEKS                       R25 R25 K15 ["createElement"]
      493 GETUPVAL                         R26 2
      494 GETTABLEKS                       R26 R26 K83 ["Fragment"]
      496 CALL                             R25 1 1
      497 JUMP                             ; [+9]
      498 GETUPVAL                         R25 2
      499 GETTABLEKS                       R25 R25 K15 ["createElement"]
      501 GETUPVAL                         R26 0
      502 GETTABLEKS                       R26 R26 K93 ["GraphTimestampContext"]
      504 GETTABLEKS                       R26 R26 K73 ["UIDataModelProvider"]
      506 CALL                             R25 1 1
      507 GETUPVAL                         R27 12
      508 CALL                             R27 0 1
      509 JUMPIFNOT                        R27 ; [+8]
      510 GETUPVAL                         R26 2
      511 GETTABLEKS                       R26 R26 K15 ["createElement"]
      513 GETUPVAL                         R27 2
      514 GETTABLEKS                       R27 R27 K83 ["Fragment"]
      516 CALL                             R26 1 1
      517 JUMP                             ; [+9]
      518 GETUPVAL                         R26 2
      519 GETTABLEKS                       R26 R26 K15 ["createElement"]
      521 GETUPVAL                         R27 0
      522 GETTABLEKS                       R27 R27 K94 ["CreateGraphContext"]
      524 GETTABLEKS                       R27 R27 K73 ["UIDataModelProvider"]
      526 CALL                             R26 1 1
      527 GETUPVAL                         R28 12
      528 CALL                             R28 0 1
      529 JUMPIFNOT                        R28 ; [+8]
      530 GETUPVAL                         R27 2
      531 GETTABLEKS                       R27 R27 K15 ["createElement"]
      533 GETUPVAL                         R28 2
      534 GETTABLEKS                       R28 R28 K83 ["Fragment"]
      536 CALL                             R27 1 1
      537 JUMP                             ; [+14]
      538 GETUPVAL                         R27 2
      539 GETTABLEKS                       R27 R27 K15 ["createElement"]
      541 GETUPVAL                         R28 0
      542 GETTABLEKS                       R28 R28 K95 ["CreateScriptContext"]
      544 GETTABLEKS                       R28 R28 K73 ["UIDataModelProvider"]
      546 DUPTABLE                         R29 K78 [{"plugin"}]
      547 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      549 SETTABLEKS                       R30 R29 K65 ["plugin"]
      551 CALL                             R27 2 1
      552 GETUPVAL                         R28 2
      553 GETTABLEKS                       R28 R28 K15 ["createElement"]
      555 GETUPVAL                         R29 0
      556 GETTABLEKS                       R29 R29 K96 ["GraphDropdownContext"]
      558 GETTABLEKS                       R29 R29 K73 ["UIDataModelProvider"]
      560 CALL                             R28 1 1
      561 GETUPVAL                         R29 2
      562 GETTABLEKS                       R29 R29 K15 ["createElement"]
      564 GETUPVAL                         R30 0
      565 GETTABLEKS                       R30 R30 K97 ["GraphDirtyStateContext"]
      567 GETTABLEKS                       R30 R30 K73 ["UIDataModelProvider"]
      569 CALL                             R29 1 1
      570 GETUPVAL                         R31 12
      571 CALL                             R31 0 1
      572 JUMPIFNOT                        R31 ; [+8]
      573 GETUPVAL                         R30 2
      574 GETTABLEKS                       R30 R30 K15 ["createElement"]
      576 GETUPVAL                         R31 2
      577 GETTABLEKS                       R31 R31 K83 ["Fragment"]
      579 CALL                             R30 1 1
      580 JUMP                             ; [+9]
      581 GETUPVAL                         R30 2
      582 GETTABLEKS                       R30 R30 K15 ["createElement"]
      584 GETUPVAL                         R31 0
      585 GETTABLEKS                       R31 R31 K98 ["MenuItemsContext"]
      587 GETTABLEKS                       R31 R31 K60 ["Provider"]
      589 CALL                             R30 1 1
      590 GETUPVAL                         R31 2
      591 GETTABLEKS                       R31 R31 K15 ["createElement"]
      593 GETUPVAL                         R32 11
      594 GETTABLEKS                       R32 R32 K99 ["AssetPickerProvider"]
      596 GETTABLEKS                       R32 R32 K87 ["StudioProvider"]
      598 DUPTABLE                         R33 K101 [{"plugin", "theme", "studioService"}]
      599 GETTABLEKS                       R34 R0 K4 ["Plugin"]
      601 SETTABLEKS                       R34 R33 K65 ["plugin"]
      603 SETTABLEKS                       R1 R33 K70 ["theme"]
      605 GETUPVAL                         R34 13
      606 SETTABLEKS                       R34 R33 K100 ["studioService"]
      608 CALL                             R31 2 1
      609 GETUPVAL                         R32 2
      610 GETTABLEKS                       R32 R32 K15 ["createElement"]
      612 GETUPVAL                         R33 0
      613 GETTABLEKS                       R33 R33 K102 ["InputSelectionContext"]
      615 GETTABLEKS                       R33 R33 K60 ["Provider"]
      617 CALL                             R32 1 -1
      618 SETLIST                          R20 R21 -1 [17]
      620 SETTABLEKS                       R20 R19 K52 ["providers"]
      622 DUPTABLE                         R20 K104 [{"MainView"}]
      623 GETUPVAL                         R21 2
      624 GETTABLEKS                       R21 R21 K15 ["createElement"]
      626 GETUPVAL                         R22 14
      627 DUPTABLE                         R23 K105 [{"pluginGui"}]
      628 GETTABLEKS                       R24 R0 K42 ["PluginLoaderContext"]
      630 GETTABLEKS                       R24 R24 K43 ["mainDockWidget"]
      632 SETTABLEKS                       R24 R23 K66 ["pluginGui"]
      634 CALL                             R21 2 1
      635 SETTABLEKS                       R21 R20 K103 ["MainView"]
      637 CALL                             R17 3 1
      638 SETTABLEKS                       R17 R16 K50 ["ContextStack"]
      640 CALL                             R13 3 1
      641 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      643 CALL                             R10 2 -1
      644 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StudioService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["AnimationEditor"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Components"]
       32 GETTABLEKS                       R5 R5 K15 ["AnimationGraphEditorMainView"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Packages"]
       39 GETTABLEKS                       R6 R6 K16 ["CrossEnvironment"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Packages"]
       46 GETTABLEKS                       R7 R7 K17 ["Framework"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Src"]
       53 GETTABLEKS                       R8 R8 K18 ["GuiUri"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Packages"]
       60 GETTABLEKS                       R9 R9 K19 ["Properties"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Packages"]
       67 GETTABLEKS                       R10 R10 K20 ["React"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R0 K11 ["Packages"]
       74 GETTABLEKS                       R11 R11 K21 ["ReactUtils"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R0 K11 ["Packages"]
       81 GETTABLEKS                       R12 R12 K22 ["StudioFoundation"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R13 R0 K23 ["Bin"]
       88 GETTABLEKS                       R13 R13 K24 ["Common"]
       90 GETTABLEKS                       R13 R13 K25 ["defineLuaFlags"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Src"]
       97 GETTABLEKS                       R14 R14 K26 ["Flags"]
       99 GETTABLEKS                       R14 R14 K27 ["getFFlagAnimGraphUI_RunTimeDebug"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [game]
      104 LOADK                            R16 K28 ["AnimGraphUI_PreInit2"]
      105 LOADB                            R17 0
      106 NAMECALL                         R14 R14 K29 ["DefineFastFlag"]
      108 CALL                             R14 3 1
      109 DUPCLOSURE                       R15 K30 [PROTO_2]
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R16 K31 [PROTO_17]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R15
      117 DUPCLOSURE                       R17 K32 [PROTO_29]
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 RETURN                           R17 1

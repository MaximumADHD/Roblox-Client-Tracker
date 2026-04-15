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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R0
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["PluginLoaderContext"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["PluginLoaderContext"]
        7 GETTABLEKS                       R0 R1 K1 ["mainDockWidget"]
        9 JUMPIFNOT                        R0 ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["PluginLoaderContext"]
       13 GETTABLEKS                       R1 R2 K1 ["mainDockWidget"]
       15 GETTABLEKS                       R0 R1 K2 ["Enabled"]
       17 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+11]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R0 R1 K2 ["mainButton"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K3 ["enabled"]
       13 NAMECALL                         R0 R0 K4 ["SetActive"]
       15 CALL                             R0 2 0
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Util"]
        3 GETTABLEKS                       R1 R2 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R1 K2 ["fromAction"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+11]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["enabled"]
        8 JUMPIFNOT                        R0 ; [+11]
        9 GETIMPORT                        R0 K4 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R0 R1 K5 ["enable"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["enabled"]
       10 JUMPIFEQ                         R1 R2 ; [+14]
       12 GETIMPORT                        R1 K5 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CALL                             R1 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K6 ["set"]
       22 GETTABLEKS                       R2 R0 K1 ["Enabled"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMigratePluginToggleToActions"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+15]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["PluginLoaderContext"]
        8 GETTABLEKS                       R1 R2 K2 ["actionTriggeredSignals"]
       10 GETTABLEN                        R0 R1 1
       11 GETUPVAL                         R1 2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["toggle"]
       15 NAMECALL                         R2 R0 K4 ["Connect"]
       17 CALL                             R2 2 -1
       18 CALL                             R1 -1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K1 ["PluginLoaderContext"]
       23 GETTABLEKS                       R0 R1 K5 ["mainButtonClickedSignal"]
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K3 ["toggle"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMigratePluginToggleToActions"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["enabled"]
        8 JUMPIFEQ                         R1 R0 ; [+12]
       10 GETIMPORT                        R1 K4 [task.spawn]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R1 R2 K5 ["enable"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R4 0 1
       13 GETTABLEKS                       R5 R0 K2 ["Plugin"]
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R6 R1 K4 ["enabled"]
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       35 DUPCLOSURE                       R4 K5 [PROTO_6]
       36 CAPTURE                          UPVAL U3
       37 NEWTABLE                         R5 0 0
       39 CALL                             R3 2 1
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K6 ["useCallback"]
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
       58 GETUPVAL                         R6 1
       59 GETTABLEKS                       R5 R6 K6 ["useCallback"]
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
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R7 R8 K3 ["useEffect"]
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
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R8 R9 K6 ["useCallback"]
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
      118 GETUPVAL                         R10 1
      119 GETTABLEKS                       R9 R10 K6 ["useCallback"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Style"]
        3 GETTABLEKS                       R2 R3 K1 ["Themes"]
        5 GETTABLEKS                       R1 R2 K2 ["StudioTheme"]
        7 GETTABLEKS                       R0 R1 K3 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Util"]
        3 GETTABLEKS                       R0 R1 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Styling"]
        3 GETTABLEKS                       R0 R1 K1 ["registerPluginStyles"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Plugin"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 NEWTABLE                         R4 0 1
       12 GETUPVAL                         R5 2
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R0 4 -1
       16 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 GETTABLEKS                       R0 R1 K2 ["new"]
        7 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K7 ["Src"]
       11 GETTABLEKS                       R4 R5 K8 ["Resources"]
       13 GETTABLEKS                       R3 R4 K1 ["Localization"]
       15 GETTABLEKS                       R2 R3 K9 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K7 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Resources"]
       24 GETTABLEKS                       R3 R4 K1 ["Localization"]
       26 GETTABLEKS                       R2 R3 K10 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 LOADK                            R2 K11 ["AnimationGraphEditor"]
       31 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       33 CALL                             R0 1 -1
       34 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Contexts"]
        3 GETTABLEKS                       R2 R3 K1 ["Localization"]
        5 GETTABLEKS                       R1 R2 K1 ["Localization"]
        7 GETTABLEKS                       R0 R1 K2 ["new"]
        9 DUPTABLE                         R1 K6 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K7 ["Src"]
       13 GETTABLEKS                       R4 R5 K8 ["Resources"]
       15 GETTABLEKS                       R3 R4 K1 ["Localization"]
       17 GETTABLEKS                       R2 R3 K9 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K7 ["Src"]
       24 GETTABLEKS                       R4 R5 K8 ["Resources"]
       26 GETTABLEKS                       R3 R4 K1 ["Localization"]
       28 GETTABLEKS                       R2 R3 K10 ["LocalizedStrings"]
       30 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       32 LOADK                            R2 K11 ["AnimationGraphEditor"]
       33 SETTABLEKS                       R2 R1 K5 ["pluginName"]
       35 CALL                             R0 1 -1
       36 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
        3 NAMECALL                         R0 R0 K1 ["GetMouse"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useFoundationStudioTheme"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       10 DUPCLOSURE                       R4 K2 [PROTO_18]
       11 CAPTURE                          UPVAL U3
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       18 DUPCLOSURE                       R5 K3 [PROTO_19]
       19 CAPTURE                          UPVAL U4
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 2
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R6 R7 K1 ["useMemo"]
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R4
       30 NEWTABLE                         R8 0 2
       32 GETTABLEKS                       R9 R0 K4 ["Plugin"]
       34 MOVE                             R10 R4
       35 SETLIST                          R8 R9 2 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K1 ["useMemo"]
       41 DUPCLOSURE                       R8 K5 [PROTO_21]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R9 0 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K1 ["useMemo"]
       50 DUPCLOSURE                       R9 K6 [PROTO_22]
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 NEWTABLE                         R10 0 0
       55 CALL                             R8 2 1
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R9 R10 K7 ["useEffect"]
       59 NEWCLOSURE                       R10 P5
       60 CAPTURE                          VAL R7
       61 NEWTABLE                         R11 0 1
       63 MOVE                             R12 R7
       64 SETLIST                          R11 R12 1 [1]
       66 CALL                             R9 2 0
       67 GETUPVAL                         R10 2
       68 GETTABLEKS                       R9 R10 K7 ["useEffect"]
       70 NEWCLOSURE                       R10 P6
       71 CAPTURE                          VAL R8
       72 NEWTABLE                         R11 0 1
       74 MOVE                             R12 R8
       75 SETLIST                          R11 R12 1 [1]
       77 CALL                             R9 2 0
       78 GETUPVAL                         R10 2
       79 GETTABLEKS                       R9 R10 K1 ["useMemo"]
       81 NEWCLOSURE                       R10 P7
       82 CAPTURE                          VAL R0
       83 NEWTABLE                         R11 0 1
       85 GETTABLEKS                       R12 R0 K4 ["Plugin"]
       87 SETLIST                          R11 R12 1 [1]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R11 R12 K8 ["ContextServices"]
       93 GETTABLEKS                       R10 R11 K9 ["provide"]
       95 NEWTABLE                         R11 0 5
       97 GETUPVAL                         R15 3
       98 GETTABLEKS                       R14 R15 K8 ["ContextServices"]
      100 GETTABLEKS                       R13 R14 K4 ["Plugin"]
      102 GETTABLEKS                       R12 R13 K10 ["new"]
      104 GETTABLEKS                       R13 R0 K4 ["Plugin"]
      106 CALL                             R12 1 1
      107 GETUPVAL                         R16 3
      108 GETTABLEKS                       R15 R16 K8 ["ContextServices"]
      110 GETTABLEKS                       R14 R15 K11 ["Mouse"]
      112 GETTABLEKS                       R13 R14 K10 ["new"]
      114 MOVE                             R14 R9
      115 CALL                             R13 1 1
      116 GETUPVAL                         R17 3
      117 GETTABLEKS                       R16 R17 K8 ["ContextServices"]
      119 GETTABLEKS                       R15 R16 K12 ["Design"]
      121 GETTABLEKS                       R14 R15 K10 ["new"]
      123 MOVE                             R15 R6
      124 CALL                             R14 1 1
      125 MOVE                             R15 R3
      126 MOVE                             R16 R7
      127 SETLIST                          R11 R12 5 [1]
      129 DUPTABLE                         R12 K14 [{"MainWidget"}]
      130 GETUPVAL                         R14 2
      131 GETTABLEKS                       R13 R14 K15 ["createElement"]
      133 GETUPVAL                         R16 3
      134 GETTABLEKS                       R15 R16 K16 ["UI"]
      136 GETTABLEKS                       R14 R15 K17 ["DockWidget"]
      138 NEWTABLE                         R15 16 0
      140 LOADK                            R16 K18 ["AnimationGraphEditor"]
      141 SETTABLEKS                       R16 R15 K19 ["Id"]
      143 GETTABLEKS                       R17 R2 K20 ["enabledState"]
      145 GETTABLEKS                       R16 R17 K21 ["enabled"]
      147 SETTABLEKS                       R16 R15 K22 ["Enabled"]
      149 LOADK                            R18 K4 ["Plugin"]
      150 LOADK                            R19 K23 ["Name"]
      151 NAMECALL                         R16 R8 K24 ["getText"]
      153 CALL                             R16 3 1
      154 SETTABLEKS                       R16 R15 K25 ["Title"]
      156 GETIMPORT                        R16 K29 [Enum.ZIndexBehavior.Sibling]
      158 SETTABLEKS                       R16 R15 K27 ["ZIndexBehavior"]
      160 GETIMPORT                        R16 K32 [Enum.InitialDockState.Bottom]
      162 SETTABLEKS                       R16 R15 K30 ["InitialDockState"]
      164 GETIMPORT                        R16 K34 [Vector2.new]
      166 LOADN                            R17 128
      167 LOADN                            R18 224
      168 CALL                             R16 2 1
      169 SETTABLEKS                       R16 R15 K35 ["Size"]
      171 GETIMPORT                        R16 K34 [Vector2.new]
      173 LOADN                            R17 250
      174 LOADN                            R18 200
      175 CALL                             R16 2 1
      176 SETTABLEKS                       R16 R15 K36 ["MinSize"]
      178 GETTABLEKS                       R16 R2 K37 ["onClose"]
      180 SETTABLEKS                       R16 R15 K38 ["OnClose"]
      182 LOADB                            R16 1
      183 SETTABLEKS                       R16 R15 K39 ["ShouldRestore"]
      185 GETTABLEKS                       R16 R2 K40 ["onRestore"]
      187 SETTABLEKS                       R16 R15 K41 ["OnWidgetRestored"]
      189 GETTABLEKS                       R17 R0 K42 ["PluginLoaderContext"]
      191 GETTABLEKS                       R16 R17 K43 ["mainDockWidget"]
      193 SETTABLEKS                       R16 R15 K44 ["Widget"]
      195 GETTABLEKS                       R16 R2 K45 ["onDockWidgetCreated"]
      197 SETTABLEKS                       R16 R15 K46 ["OnWidgetCreated"]
      199 SETTABLEKS                       R6 R15 K47 ["PluginDesign"]
      201 GETUPVAL                         R18 2
      202 GETTABLEKS                       R17 R18 K48 ["Change"]
      204 GETTABLEKS                       R16 R17 K22 ["Enabled"]
      206 GETTABLEKS                       R17 R2 K49 ["onWidgetEnabledChanged"]
      208 SETTABLE                         R17 R15 R16
      209 DUPTABLE                         R16 K51 [{"ContextStack"}]
      210 GETUPVAL                         R18 2
      211 GETTABLEKS                       R17 R18 K15 ["createElement"]
      213 GETUPVAL                         R19 6
      214 GETTABLEKS                       R18 R19 K50 ["ContextStack"]
      216 DUPTABLE                         R19 K53 [{"providers"}]
      217 NEWTABLE                         R20 0 27
      219 GETUPVAL                         R22 2
      220 GETTABLEKS                       R21 R22 K15 ["createElement"]
      222 GETUPVAL                         R24 4
      223 GETTABLEKS                       R23 R24 K54 ["Components"]
      225 GETTABLEKS                       R22 R23 K55 ["FoundationProviderAdapter"]
      227 DUPTABLE                         R23 K57 [{"onStyleSheetChange"}]
      228 SETTABLEKS                       R5 R23 K56 ["onStyleSheetChange"]
      230 CALL                             R21 2 1
      231 GETUPVAL                         R23 2
      232 GETTABLEKS                       R22 R23 K15 ["createElement"]
      234 GETUPVAL                         R26 4
      235 GETTABLEKS                       R25 R26 K58 ["Contexts"]
      237 GETTABLEKS                       R24 R25 K59 ["Localization"]
      239 GETTABLEKS                       R23 R24 K60 ["Provider"]
      241 DUPTABLE                         R24 K62 [{"localization"}]
      242 SETTABLEKS                       R8 R24 K61 ["localization"]
      244 CALL                             R22 2 1
      245 GETUPVAL                         R24 2
      246 GETTABLEKS                       R23 R24 K15 ["createElement"]
      248 GETUPVAL                         R26 7
      249 GETTABLEKS                       R25 R26 K63 ["Providers"]
      251 GETTABLEKS                       R24 R25 K64 ["StandaloneDataModel"]
      253 DUPTABLE                         R25 K68 [{"plugin", "pluginGui", "studioUri"}]
      254 GETTABLEKS                       R26 R0 K4 ["Plugin"]
      256 SETTABLEKS                       R26 R25 K65 ["plugin"]
      258 GETTABLEKS                       R27 R0 K42 ["PluginLoaderContext"]
      260 GETTABLEKS                       R26 R27 K43 ["mainDockWidget"]
      262 SETTABLEKS                       R26 R25 K66 ["pluginGui"]
      264 GETUPVAL                         R26 8
      265 SETTABLEKS                       R26 R25 K67 ["studioUri"]
      267 CALL                             R23 2 1
      268 GETUPVAL                         R25 2
      269 GETTABLEKS                       R24 R25 K15 ["createElement"]
      271 GETUPVAL                         R26 9
      272 GETTABLEKS                       R25 R26 K69 ["PropertyEntryProvider"]
      274 DUPTABLE                         R26 K71 [{"theme"}]
      275 SETTABLEKS                       R1 R26 K70 ["theme"]
      277 CALL                             R24 2 1
      278 GETUPVAL                         R26 2
      279 GETTABLEKS                       R25 R26 K15 ["createElement"]
      281 GETUPVAL                         R28 0
      282 GETTABLEKS                       R27 R28 K72 ["NetworkingContext"]
      284 GETTABLEKS                       R26 R27 K73 ["UIDataModelProvider"]
      286 CALL                             R25 1 1
      287 GETUPVAL                         R27 2
      288 GETTABLEKS                       R26 R27 K15 ["createElement"]
      290 GETUPVAL                         R29 0
      291 GETTABLEKS                       R28 R29 K74 ["VisibleContext"]
      293 GETTABLEKS                       R27 R28 K73 ["UIDataModelProvider"]
      295 DUPTABLE                         R28 K76 [{"isOpen"}]
      296 GETTABLEKS                       R30 R2 K20 ["enabledState"]
      298 GETTABLEKS                       R29 R30 K21 ["enabled"]
      300 SETTABLEKS                       R29 R28 K75 ["isOpen"]
      302 CALL                             R26 2 1
      303 GETUPVAL                         R28 2
      304 GETTABLEKS                       R27 R28 K15 ["createElement"]
      306 GETUPVAL                         R29 0
      307 GETTABLEKS                       R28 R29 K77 ["UIDataModelContexts"]
      309 CALL                             R27 1 1
      310 GETUPVAL                         R29 2
      311 GETTABLEKS                       R28 R29 K15 ["createElement"]
      313 GETUPVAL                         R31 0
      314 GETTABLEKS                       R30 R31 K78 ["AssetAccessContext"]
      316 GETTABLEKS                       R29 R30 K73 ["UIDataModelProvider"]
      318 CALL                             R28 1 1
      319 GETUPVAL                         R30 2
      320 GETTABLEKS                       R29 R30 K15 ["createElement"]
      322 GETUPVAL                         R32 0
      323 GETTABLEKS                       R31 R32 K79 ["GameContext"]
      325 GETTABLEKS                       R30 R31 K73 ["UIDataModelProvider"]
      327 CALL                             R29 1 1
      328 GETUPVAL                         R31 2
      329 GETTABLEKS                       R30 R31 K15 ["createElement"]
      331 GETUPVAL                         R33 0
      332 GETTABLEKS                       R32 R33 K80 ["GraphDebugDataContext"]
      334 GETTABLEKS                       R31 R32 K73 ["UIDataModelProvider"]
      336 CALL                             R30 1 1
      337 GETUPVAL                         R32 2
      338 GETTABLEKS                       R31 R32 K15 ["createElement"]
      340 GETUPVAL                         R34 0
      341 GETTABLEKS                       R33 R34 K81 ["GraphPlayedContext"]
      343 GETTABLEKS                       R32 R33 K73 ["UIDataModelProvider"]
      345 CALL                             R31 1 1
      346 GETUPVAL                         R33 2
      347 GETTABLEKS                       R32 R33 K15 ["createElement"]
      349 GETUPVAL                         R35 0
      350 GETTABLEKS                       R34 R35 K82 ["PopupContext"]
      352 GETTABLEKS                       R33 R34 K83 ["StudioProvider"]
      354 CALL                             R32 1 1
      355 GETUPVAL                         R34 2
      356 GETTABLEKS                       R33 R34 K15 ["createElement"]
      358 GETUPVAL                         R36 0
      359 GETTABLEKS                       R35 R36 K84 ["PlayStateContext"]
      361 GETTABLEKS                       R34 R35 K73 ["UIDataModelProvider"]
      363 DUPTABLE                         R35 K76 [{"isOpen"}]
      364 GETTABLEKS                       R37 R2 K20 ["enabledState"]
      366 GETTABLEKS                       R36 R37 K21 ["enabled"]
      368 SETTABLEKS                       R36 R35 K75 ["isOpen"]
      370 CALL                             R33 2 1
      371 GETUPVAL                         R35 2
      372 GETTABLEKS                       R34 R35 K15 ["createElement"]
      374 GETUPVAL                         R37 0
      375 GETTABLEKS                       R36 R37 K85 ["MaskEditorContext"]
      377 GETTABLEKS                       R35 R36 K73 ["UIDataModelProvider"]
      379 CALL                             R34 1 1
      380 GETUPVAL                         R36 2
      381 GETTABLEKS                       R35 R36 K15 ["createElement"]
      383 GETUPVAL                         R38 0
      384 GETTABLEKS                       R37 R38 K86 ["NativeGraphContext"]
      386 GETTABLEKS                       R36 R37 K73 ["UIDataModelProvider"]
      388 CALL                             R35 1 1
      389 GETUPVAL                         R37 2
      390 GETTABLEKS                       R36 R37 K15 ["createElement"]
      392 GETUPVAL                         R39 0
      393 GETTABLEKS                       R38 R39 K87 ["AnimationParameterContext"]
      395 GETTABLEKS                       R37 R38 K73 ["UIDataModelProvider"]
      397 CALL                             R36 1 1
      398 SETLIST                          R20 R21 16 [1]
      400 GETUPVAL                         R22 2
      401 GETTABLEKS                       R21 R22 K15 ["createElement"]
      403 GETUPVAL                         R24 0
      404 GETTABLEKS                       R23 R24 K88 ["ParameterOverrideContext"]
      406 GETTABLEKS                       R22 R23 K73 ["UIDataModelProvider"]
      408 CALL                             R21 1 1
      409 GETUPVAL                         R23 2
      410 GETTABLEKS                       R22 R23 K15 ["createElement"]
      412 GETUPVAL                         R25 0
      413 GETTABLEKS                       R24 R25 K89 ["RigListContext"]
      415 GETTABLEKS                       R23 R24 K73 ["UIDataModelProvider"]
      417 CALL                             R22 1 1
      418 GETUPVAL                         R24 2
      419 GETTABLEKS                       R23 R24 K15 ["createElement"]
      421 GETUPVAL                         R26 0
      422 GETTABLEKS                       R25 R26 K90 ["CreateGraphContext"]
      424 GETTABLEKS                       R24 R25 K73 ["UIDataModelProvider"]
      426 CALL                             R23 1 1
      427 GETUPVAL                         R25 2
      428 GETTABLEKS                       R24 R25 K15 ["createElement"]
      430 GETUPVAL                         R27 0
      431 GETTABLEKS                       R26 R27 K91 ["CreateScriptContext"]
      433 GETTABLEKS                       R25 R26 K73 ["UIDataModelProvider"]
      435 DUPTABLE                         R26 K92 [{"plugin"}]
      436 GETTABLEKS                       R27 R0 K4 ["Plugin"]
      438 SETTABLEKS                       R27 R26 K65 ["plugin"]
      440 CALL                             R24 2 1
      441 GETUPVAL                         R26 2
      442 GETTABLEKS                       R25 R26 K15 ["createElement"]
      444 GETUPVAL                         R28 0
      445 GETTABLEKS                       R27 R28 K93 ["GraphDropdownContext"]
      447 GETTABLEKS                       R26 R27 K73 ["UIDataModelProvider"]
      449 CALL                             R25 1 1
      450 GETUPVAL                         R27 2
      451 GETTABLEKS                       R26 R27 K15 ["createElement"]
      453 GETUPVAL                         R29 0
      454 GETTABLEKS                       R28 R29 K94 ["GraphDirtyStateContext"]
      456 GETTABLEKS                       R27 R28 K73 ["UIDataModelProvider"]
      458 CALL                             R26 1 1
      459 GETUPVAL                         R28 2
      460 GETTABLEKS                       R27 R28 K15 ["createElement"]
      462 GETUPVAL                         R30 0
      463 GETTABLEKS                       R29 R30 K95 ["ViewportRectContext"]
      465 GETTABLEKS                       R28 R29 K60 ["Provider"]
      467 CALL                             R27 1 1
      468 GETUPVAL                         R29 2
      469 GETTABLEKS                       R28 R29 K15 ["createElement"]
      471 GETUPVAL                         R31 0
      472 GETTABLEKS                       R30 R31 K96 ["MenuItemsContext"]
      474 GETTABLEKS                       R29 R30 K60 ["Provider"]
      476 CALL                             R28 1 1
      477 GETUPVAL                         R30 2
      478 GETTABLEKS                       R29 R30 K15 ["createElement"]
      480 GETUPVAL                         R32 0
      481 GETTABLEKS                       R31 R32 K97 ["InsertNodeContext"]
      483 GETTABLEKS                       R30 R31 K60 ["Provider"]
      485 CALL                             R29 1 1
      486 GETUPVAL                         R31 2
      487 GETTABLEKS                       R30 R31 K15 ["createElement"]
      489 GETUPVAL                         R33 0
      490 GETTABLEKS                       R32 R33 K98 ["CompositorConnectionContext"]
      492 GETTABLEKS                       R31 R32 K60 ["Provider"]
      494 CALL                             R30 1 1
      495 GETUPVAL                         R32 2
      496 GETTABLEKS                       R31 R32 K15 ["createElement"]
      498 GETUPVAL                         R34 9
      499 GETTABLEKS                       R33 R34 K99 ["AssetPickerProvider"]
      501 GETTABLEKS                       R32 R33 K83 ["StudioProvider"]
      503 DUPTABLE                         R33 K101 [{"plugin", "theme", "studioService"}]
      504 GETTABLEKS                       R34 R0 K4 ["Plugin"]
      506 SETTABLEKS                       R34 R33 K65 ["plugin"]
      508 SETTABLEKS                       R1 R33 K70 ["theme"]
      510 GETUPVAL                         R34 10
      511 SETTABLEKS                       R34 R33 K100 ["studioService"]
      513 CALL                             R31 2 -1
      514 SETLIST                          R20 R21 -1 [17]
      516 SETTABLEKS                       R20 R19 K52 ["providers"]
      518 DUPTABLE                         R20 K103 [{"MainView"}]
      519 GETUPVAL                         R22 2
      520 GETTABLEKS                       R21 R22 K15 ["createElement"]
      522 GETUPVAL                         R22 11
      523 CALL                             R21 1 1
      524 SETTABLEKS                       R21 R20 K102 ["MainView"]
      526 CALL                             R17 3 1
      527 SETTABLEKS                       R17 R16 K50 ["ContextStack"]
      529 CALL                             R13 3 1
      530 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      532 CALL                             R10 2 -1
      533 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["AnimationGraphEditorMainView"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["CrossEnvironment"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Framework"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R7 K13 ["GuiUri"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Packages"]
       48 GETTABLEKS                       R7 R8 K14 ["Properties"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K6 ["Packages"]
       55 GETTABLEKS                       R8 R9 K15 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R10 R0 K6 ["Packages"]
       62 GETTABLEKS                       R9 R10 K16 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R11 R0 K6 ["Packages"]
       69 GETTABLEKS                       R10 R11 K17 ["StudioFoundation"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R13 R0 K18 ["Bin"]
       76 GETTABLEKS                       R12 R13 K19 ["Common"]
       78 GETTABLEKS                       R11 R12 K20 ["defineLuaFlags"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K22 [game]
       83 LOADK                            R13 K23 ["StudioService"]
       84 NAMECALL                         R11 R11 K24 ["GetService"]
       86 CALL                             R11 2 1
       87 DUPCLOSURE                       R12 K25 [PROTO_2]
       88 CAPTURE                          VAL R7
       89 DUPCLOSURE                       R13 K26 [PROTO_17]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 DUPCLOSURE                       R14 K27 [PROTO_28]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R2
      108 RETURN                           R14 1

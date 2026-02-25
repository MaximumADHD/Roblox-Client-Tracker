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
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["Actions"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Util"]
        3 GETTABLEKS                       R1 R2 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R1 K2 ["fromAction"]
        7 LOADK                            R1 K3 ["AnimationGraphEditor"]
        8 LOADK                            R2 K4 ["Toggle"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["set"]
        3 GETTABLEKS                       R2 R0 K1 ["Checked"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["Plugin"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R1 K4 ["enabled"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       33 DUPCLOSURE                       R4 K5 [PROTO_5]
       34 CAPTURE                          UPVAL U3
       35 NEWTABLE                         R5 0 0
       37 CALL                             R3 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R4 R5 K6 ["useCallback"]
       41 NEWCLOSURE                       R5 P3
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R6 0 3
       48 MOVE                             R7 R2
       49 GETTABLEKS                       R8 R1 K7 ["enable"]
       51 GETTABLEKS                       R9 R1 K4 ["enabled"]
       53 SETLIST                          R6 R7 3 [1]
       55 CALL                             R4 2 1
       56 GETUPVAL                         R6 1
       57 GETTABLEKS                       R5 R6 K6 ["useCallback"]
       59 NEWCLOSURE                       R6 P4
       60 CAPTURE                          UPVAL U2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 NEWTABLE                         R7 0 4
       66 MOVE                             R8 R2
       67 GETTABLEKS                       R9 R1 K7 ["enable"]
       69 GETTABLEKS                       R10 R1 K4 ["enabled"]
       71 MOVE                             R11 R3
       72 SETLIST                          R7 R8 4 [1]
       74 CALL                             R5 2 1
       75 GETUPVAL                         R6 4
       76 CALL                             R6 0 1
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R7 R8 K3 ["useEffect"]
       80 NEWCLOSURE                       R8 P5
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R1
       86 NEWTABLE                         R9 0 4
       88 MOVE                             R10 R6
       89 MOVE                             R11 R2
       90 GETTABLEKS                       R12 R1 K8 ["set"]
       92 MOVE                             R13 R3
       93 SETLIST                          R9 R10 4 [1]
       95 CALL                             R7 2 0
       96 GETUPVAL                         R7 4
       97 CALL                             R7 0 1
       98 GETUPVAL                         R9 1
       99 GETTABLEKS                       R8 R9 K6 ["useCallback"]
      101 NEWCLOSURE                       R9 P6
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R1
      106 NEWTABLE                         R10 0 3
      108 MOVE                             R11 R7
      109 GETTABLEKS                       R12 R0 K9 ["PluginLoaderContext"]
      111 GETTABLEKS                       R13 R1 K10 ["toggle"]
      113 SETLIST                          R10 R11 3 [1]
      115 CALL                             R8 2 1
      116 GETUPVAL                         R10 1
      117 GETTABLEKS                       R9 R10 K6 ["useCallback"]
      119 NEWCLOSURE                       R10 P7
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R3
      124 NEWTABLE                         R11 0 4
      126 MOVE                             R12 R2
      127 GETTABLEKS                       R13 R1 K7 ["enable"]
      129 GETTABLEKS                       R14 R1 K4 ["enabled"]
      131 MOVE                             R15 R3
      132 SETLIST                          R11 R12 4 [1]
      134 CALL                             R9 2 1
      135 DUPTABLE                         R10 K16 [{"enabledState", "onClose", "onWidgetEnabledChanged", "onDockWidgetCreated", "onRestore"}]
      136 SETTABLEKS                       R1 R10 K11 ["enabledState"]
      138 SETTABLEKS                       R4 R10 K12 ["onClose"]
      140 SETTABLEKS                       R5 R10 K13 ["onWidgetEnabledChanged"]
      142 SETTABLEKS                       R8 R10 K14 ["onDockWidgetCreated"]
      144 SETTABLEKS                       R9 R10 K15 ["onRestore"]
      146 RETURN                           R10 1

PROTO_17:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Style"]
        3 GETTABLEKS                       R2 R3 K1 ["Themes"]
        5 GETTABLEKS                       R1 R2 K2 ["StudioTheme"]
        7 GETTABLEKS                       R0 R1 K3 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Util"]
        3 GETTABLEKS                       R0 R1 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Plugin"]
        3 NAMECALL                         R0 R0 K1 ["GetMouse"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useFoundationStudioTheme"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["useMemo"]
       10 DUPCLOSURE                       R4 K2 [PROTO_17]
       11 CAPTURE                          UPVAL U3
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       18 DUPCLOSURE                       R5 K3 [PROTO_18]
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
       41 DUPCLOSURE                       R8 K5 [PROTO_20]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R9 0 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K1 ["useMemo"]
       50 DUPCLOSURE                       R9 K6 [PROTO_21]
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
      217 NEWTABLE                         R20 0 20
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
      248 GETUPVAL                         R25 7
      249 GETTABLEKS                       R24 R25 K63 ["PropertyEntryProvider"]
      251 DUPTABLE                         R25 K65 [{"theme"}]
      252 SETTABLEKS                       R1 R25 K64 ["theme"]
      254 CALL                             R23 2 1
      255 GETUPVAL                         R25 2
      256 GETTABLEKS                       R24 R25 K15 ["createElement"]
      258 GETUPVAL                         R27 0
      259 GETTABLEKS                       R26 R27 K66 ["NetworkingContext"]
      261 GETTABLEKS                       R25 R26 K67 ["UIDataModelProvider"]
      263 CALL                             R24 1 1
      264 GETUPVAL                         R26 2
      265 GETTABLEKS                       R25 R26 K15 ["createElement"]
      267 GETUPVAL                         R28 0
      268 GETTABLEKS                       R27 R28 K68 ["GameContext"]
      270 GETTABLEKS                       R26 R27 K67 ["UIDataModelProvider"]
      272 CALL                             R25 1 1
      273 GETUPVAL                         R27 2
      274 GETTABLEKS                       R26 R27 K15 ["createElement"]
      276 GETUPVAL                         R29 0
      277 GETTABLEKS                       R28 R29 K69 ["GraphDebugDataContext"]
      279 GETTABLEKS                       R27 R28 K67 ["UIDataModelProvider"]
      281 CALL                             R26 1 1
      282 GETUPVAL                         R28 2
      283 GETTABLEKS                       R27 R28 K15 ["createElement"]
      285 GETUPVAL                         R30 0
      286 GETTABLEKS                       R29 R30 K70 ["PopupContext"]
      288 GETTABLEKS                       R28 R29 K71 ["StudioProvider"]
      290 CALL                             R27 1 1
      291 GETUPVAL                         R29 2
      292 GETTABLEKS                       R28 R29 K15 ["createElement"]
      294 GETUPVAL                         R31 0
      295 GETTABLEKS                       R30 R31 K72 ["PlayStateContext"]
      297 GETTABLEKS                       R29 R30 K67 ["UIDataModelProvider"]
      299 CALL                             R28 1 1
      300 GETUPVAL                         R30 2
      301 GETTABLEKS                       R29 R30 K15 ["createElement"]
      303 GETUPVAL                         R32 0
      304 GETTABLEKS                       R31 R32 K73 ["MaskEditorContext"]
      306 GETTABLEKS                       R30 R31 K67 ["UIDataModelProvider"]
      308 CALL                             R29 1 1
      309 GETUPVAL                         R31 2
      310 GETTABLEKS                       R30 R31 K15 ["createElement"]
      312 GETUPVAL                         R33 0
      313 GETTABLEKS                       R32 R33 K74 ["NativeGraphContext"]
      315 GETTABLEKS                       R31 R32 K67 ["UIDataModelProvider"]
      317 CALL                             R30 1 1
      318 GETUPVAL                         R32 2
      319 GETTABLEKS                       R31 R32 K15 ["createElement"]
      321 GETUPVAL                         R34 0
      322 GETTABLEKS                       R33 R34 K75 ["AnimationParameterContext"]
      324 GETTABLEKS                       R32 R33 K67 ["UIDataModelProvider"]
      326 CALL                             R31 1 1
      327 GETUPVAL                         R33 2
      328 GETTABLEKS                       R32 R33 K15 ["createElement"]
      330 GETUPVAL                         R35 0
      331 GETTABLEKS                       R34 R35 K76 ["ParameterOverrideContext"]
      333 GETTABLEKS                       R33 R34 K67 ["UIDataModelProvider"]
      335 CALL                             R32 1 1
      336 GETUPVAL                         R34 2
      337 GETTABLEKS                       R33 R34 K15 ["createElement"]
      339 GETUPVAL                         R36 0
      340 GETTABLEKS                       R35 R36 K77 ["CreateGraphContext"]
      342 GETTABLEKS                       R34 R35 K67 ["UIDataModelProvider"]
      344 CALL                             R33 1 1
      345 GETUPVAL                         R35 2
      346 GETTABLEKS                       R34 R35 K15 ["createElement"]
      348 GETUPVAL                         R37 0
      349 GETTABLEKS                       R36 R37 K78 ["GraphDropdownContext"]
      351 GETTABLEKS                       R35 R36 K67 ["UIDataModelProvider"]
      353 CALL                             R34 1 1
      354 GETUPVAL                         R36 2
      355 GETTABLEKS                       R35 R36 K15 ["createElement"]
      357 GETUPVAL                         R38 0
      358 GETTABLEKS                       R37 R38 K79 ["GraphDirtyStateContext"]
      360 GETTABLEKS                       R36 R37 K67 ["UIDataModelProvider"]
      362 CALL                             R35 1 1
      363 GETUPVAL                         R37 2
      364 GETTABLEKS                       R36 R37 K15 ["createElement"]
      366 GETUPVAL                         R39 0
      367 GETTABLEKS                       R38 R39 K80 ["ViewportRectContext"]
      369 GETTABLEKS                       R37 R38 K60 ["Provider"]
      371 CALL                             R36 1 1
      372 SETLIST                          R20 R21 16 [1]
      374 GETUPVAL                         R22 2
      375 GETTABLEKS                       R21 R22 K15 ["createElement"]
      377 GETUPVAL                         R24 0
      378 GETTABLEKS                       R23 R24 K81 ["NodeDefinitionsContext"]
      380 GETTABLEKS                       R22 R23 K60 ["Provider"]
      382 CALL                             R21 1 1
      383 GETUPVAL                         R23 2
      384 GETTABLEKS                       R22 R23 K15 ["createElement"]
      386 GETUPVAL                         R25 0
      387 GETTABLEKS                       R24 R25 K82 ["MenuItemsContext"]
      389 GETTABLEKS                       R23 R24 K60 ["Provider"]
      391 CALL                             R22 1 1
      392 GETUPVAL                         R24 2
      393 GETTABLEKS                       R23 R24 K15 ["createElement"]
      395 GETUPVAL                         R26 0
      396 GETTABLEKS                       R25 R26 K83 ["InsertNodeContext"]
      398 GETTABLEKS                       R24 R25 K60 ["Provider"]
      400 CALL                             R23 1 1
      401 GETUPVAL                         R25 2
      402 GETTABLEKS                       R24 R25 K15 ["createElement"]
      404 GETUPVAL                         R27 7
      405 GETTABLEKS                       R26 R27 K84 ["AssetPickerProvider"]
      407 GETTABLEKS                       R25 R26 K71 ["StudioProvider"]
      409 DUPTABLE                         R26 K87 [{"plugin", "theme", "studioService"}]
      410 GETTABLEKS                       R27 R0 K4 ["Plugin"]
      412 SETTABLEKS                       R27 R26 K85 ["plugin"]
      414 SETTABLEKS                       R1 R26 K64 ["theme"]
      416 GETUPVAL                         R27 8
      417 SETTABLEKS                       R27 R26 K86 ["studioService"]
      419 CALL                             R24 2 -1
      420 SETLIST                          R20 R21 -1 [17]
      422 SETTABLEKS                       R20 R19 K52 ["providers"]
      424 DUPTABLE                         R20 K89 [{"MainView"}]
      425 GETUPVAL                         R22 2
      426 GETTABLEKS                       R21 R22 K15 ["createElement"]
      428 GETUPVAL                         R22 9
      429 CALL                             R21 1 1
      430 SETTABLEKS                       R21 R20 K88 ["MainView"]
      432 CALL                             R17 3 1
      433 SETTABLEKS                       R17 R16 K50 ["ContextStack"]
      435 CALL                             R13 3 1
      436 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      438 CALL                             R10 2 -1
      439 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["StudioService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Components"]
       26 GETTABLEKS                       R4 R5 K14 ["AnimationGraphEditorMainView"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Packages"]
       33 GETTABLEKS                       R5 R6 K15 ["Framework"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R7 K16 ["Properties"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R8 K17 ["React"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K10 ["Packages"]
       54 GETTABLEKS                       R8 R9 K18 ["ReactUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Packages"]
       61 GETTABLEKS                       R9 R10 K19 ["StudioFoundation"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R12 R0 K20 ["Bin"]
       68 GETTABLEKS                       R11 R12 K21 ["Common"]
       70 GETTABLEKS                       R10 R11 K22 ["defineLuaFlags"]
       72 CALL                             R9 1 1
       73 DUPCLOSURE                       R10 K23 [PROTO_2]
       74 CAPTURE                          VAL R6
       75 DUPCLOSURE                       R11 K24 [PROTO_16]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 DUPCLOSURE                       R12 K25 [PROTO_27]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R3
       92 RETURN                           R12 1

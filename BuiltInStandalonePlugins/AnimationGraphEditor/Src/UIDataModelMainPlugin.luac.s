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
      217 NEWTABLE                         R20 0 25
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
      291 GETTABLEKS                       R28 R29 K74 ["AssetAccessContext"]
      293 GETTABLEKS                       R27 R28 K73 ["UIDataModelProvider"]
      295 CALL                             R26 1 1
      296 GETUPVAL                         R28 2
      297 GETTABLEKS                       R27 R28 K15 ["createElement"]
      299 GETUPVAL                         R30 0
      300 GETTABLEKS                       R29 R30 K75 ["GameContext"]
      302 GETTABLEKS                       R28 R29 K73 ["UIDataModelProvider"]
      304 CALL                             R27 1 1
      305 GETUPVAL                         R29 2
      306 GETTABLEKS                       R28 R29 K15 ["createElement"]
      308 GETUPVAL                         R31 0
      309 GETTABLEKS                       R30 R31 K76 ["GraphDebugDataContext"]
      311 GETTABLEKS                       R29 R30 K73 ["UIDataModelProvider"]
      313 CALL                             R28 1 1
      314 GETUPVAL                         R30 2
      315 GETTABLEKS                       R29 R30 K15 ["createElement"]
      317 GETUPVAL                         R32 0
      318 GETTABLEKS                       R31 R32 K77 ["GraphPlayedContext"]
      320 GETTABLEKS                       R30 R31 K73 ["UIDataModelProvider"]
      322 CALL                             R29 1 1
      323 GETUPVAL                         R31 2
      324 GETTABLEKS                       R30 R31 K15 ["createElement"]
      326 GETUPVAL                         R33 0
      327 GETTABLEKS                       R32 R33 K78 ["PopupContext"]
      329 GETTABLEKS                       R31 R32 K79 ["StudioProvider"]
      331 CALL                             R30 1 1
      332 GETUPVAL                         R32 2
      333 GETTABLEKS                       R31 R32 K15 ["createElement"]
      335 GETUPVAL                         R34 0
      336 GETTABLEKS                       R33 R34 K80 ["PlayStateContext"]
      338 GETTABLEKS                       R32 R33 K73 ["UIDataModelProvider"]
      340 DUPTABLE                         R33 K82 [{"isOpen"}]
      341 GETTABLEKS                       R35 R2 K20 ["enabledState"]
      343 GETTABLEKS                       R34 R35 K21 ["enabled"]
      345 SETTABLEKS                       R34 R33 K81 ["isOpen"]
      347 CALL                             R31 2 1
      348 GETUPVAL                         R33 2
      349 GETTABLEKS                       R32 R33 K15 ["createElement"]
      351 GETUPVAL                         R35 0
      352 GETTABLEKS                       R34 R35 K83 ["MaskEditorContext"]
      354 GETTABLEKS                       R33 R34 K73 ["UIDataModelProvider"]
      356 CALL                             R32 1 1
      357 GETUPVAL                         R34 2
      358 GETTABLEKS                       R33 R34 K15 ["createElement"]
      360 GETUPVAL                         R36 0
      361 GETTABLEKS                       R35 R36 K84 ["NativeGraphContext"]
      363 GETTABLEKS                       R34 R35 K73 ["UIDataModelProvider"]
      365 CALL                             R33 1 1
      366 GETUPVAL                         R35 2
      367 GETTABLEKS                       R34 R35 K15 ["createElement"]
      369 GETUPVAL                         R37 0
      370 GETTABLEKS                       R36 R37 K85 ["AnimationParameterContext"]
      372 GETTABLEKS                       R35 R36 K73 ["UIDataModelProvider"]
      374 CALL                             R34 1 1
      375 GETUPVAL                         R36 2
      376 GETTABLEKS                       R35 R36 K15 ["createElement"]
      378 GETUPVAL                         R38 0
      379 GETTABLEKS                       R37 R38 K86 ["ParameterOverrideContext"]
      381 GETTABLEKS                       R36 R37 K73 ["UIDataModelProvider"]
      383 CALL                             R35 1 1
      384 GETUPVAL                         R37 2
      385 GETTABLEKS                       R36 R37 K15 ["createElement"]
      387 GETUPVAL                         R39 0
      388 GETTABLEKS                       R38 R39 K87 ["RigListContext"]
      390 GETTABLEKS                       R37 R38 K73 ["UIDataModelProvider"]
      392 CALL                             R36 1 1
      393 SETLIST                          R20 R21 16 [1]
      395 GETUPVAL                         R22 2
      396 GETTABLEKS                       R21 R22 K15 ["createElement"]
      398 GETUPVAL                         R24 0
      399 GETTABLEKS                       R23 R24 K88 ["CreateGraphContext"]
      401 GETTABLEKS                       R22 R23 K73 ["UIDataModelProvider"]
      403 CALL                             R21 1 1
      404 GETUPVAL                         R23 2
      405 GETTABLEKS                       R22 R23 K15 ["createElement"]
      407 GETUPVAL                         R25 0
      408 GETTABLEKS                       R24 R25 K89 ["CreateScriptContext"]
      410 GETTABLEKS                       R23 R24 K73 ["UIDataModelProvider"]
      412 CALL                             R22 1 1
      413 GETUPVAL                         R24 2
      414 GETTABLEKS                       R23 R24 K15 ["createElement"]
      416 GETUPVAL                         R26 0
      417 GETTABLEKS                       R25 R26 K90 ["GraphDropdownContext"]
      419 GETTABLEKS                       R24 R25 K73 ["UIDataModelProvider"]
      421 CALL                             R23 1 1
      422 GETUPVAL                         R25 2
      423 GETTABLEKS                       R24 R25 K15 ["createElement"]
      425 GETUPVAL                         R27 0
      426 GETTABLEKS                       R26 R27 K91 ["GraphDirtyStateContext"]
      428 GETTABLEKS                       R25 R26 K73 ["UIDataModelProvider"]
      430 CALL                             R24 1 1
      431 GETUPVAL                         R26 2
      432 GETTABLEKS                       R25 R26 K15 ["createElement"]
      434 GETUPVAL                         R28 0
      435 GETTABLEKS                       R27 R28 K92 ["ViewportRectContext"]
      437 GETTABLEKS                       R26 R27 K60 ["Provider"]
      439 CALL                             R25 1 1
      440 GETUPVAL                         R27 2
      441 GETTABLEKS                       R26 R27 K15 ["createElement"]
      443 GETUPVAL                         R29 0
      444 GETTABLEKS                       R28 R29 K93 ["NodeDefinitionsContext"]
      446 GETTABLEKS                       R27 R28 K60 ["Provider"]
      448 CALL                             R26 1 1
      449 GETUPVAL                         R28 2
      450 GETTABLEKS                       R27 R28 K15 ["createElement"]
      452 GETUPVAL                         R30 0
      453 GETTABLEKS                       R29 R30 K94 ["MenuItemsContext"]
      455 GETTABLEKS                       R28 R29 K60 ["Provider"]
      457 CALL                             R27 1 1
      458 GETUPVAL                         R29 2
      459 GETTABLEKS                       R28 R29 K15 ["createElement"]
      461 GETUPVAL                         R31 0
      462 GETTABLEKS                       R30 R31 K95 ["InsertNodeContext"]
      464 GETTABLEKS                       R29 R30 K60 ["Provider"]
      466 CALL                             R28 1 1
      467 GETUPVAL                         R30 2
      468 GETTABLEKS                       R29 R30 K15 ["createElement"]
      470 GETUPVAL                         R32 9
      471 GETTABLEKS                       R31 R32 K96 ["AssetPickerProvider"]
      473 GETTABLEKS                       R30 R31 K79 ["StudioProvider"]
      475 DUPTABLE                         R31 K98 [{"plugin", "theme", "studioService"}]
      476 GETTABLEKS                       R32 R0 K4 ["Plugin"]
      478 SETTABLEKS                       R32 R31 K65 ["plugin"]
      480 SETTABLEKS                       R1 R31 K70 ["theme"]
      482 GETUPVAL                         R32 10
      483 SETTABLEKS                       R32 R31 K97 ["studioService"]
      485 CALL                             R29 2 -1
      486 SETLIST                          R20 R21 -1 [17]
      488 SETTABLEKS                       R20 R19 K52 ["providers"]
      490 DUPTABLE                         R20 K100 [{"MainView"}]
      491 GETUPVAL                         R22 2
      492 GETTABLEKS                       R21 R22 K15 ["createElement"]
      494 GETUPVAL                         R22 11
      495 CALL                             R21 1 1
      496 SETTABLEKS                       R21 R20 K99 ["MainView"]
      498 CALL                             R17 3 1
      499 SETTABLEKS                       R17 R16 K50 ["ContextStack"]
      501 CALL                             R13 3 1
      502 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      504 CALL                             R10 2 -1
      505 RETURN                           R10 -1

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
       89 DUPCLOSURE                       R13 K26 [PROTO_16]
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R12
       95 DUPCLOSURE                       R14 K27 [PROTO_27]
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

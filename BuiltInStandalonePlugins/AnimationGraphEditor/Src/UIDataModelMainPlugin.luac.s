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
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["StudioUri"]
        5 GETTABLEKS                       R0 R0 K2 ["fromAction"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["enabled"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.spawn]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["enabled"]
        5 JUMPIFEQ                         R1 R2 ; [+7]
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["set"]
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
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PluginLoaderContext"]
        3 GETTABLEKS                       R1 R1 K1 ["actionTriggeredSignals"]
        5 GETTABLEN                        R0 R1 1
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["toggle"]
       10 NAMECALL                         R2 R0 K3 ["Connect"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["enabled"]
        3 JUMPIFEQ                         R1 R0 ; [+7]
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_16:
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
       19 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       21 DUPCLOSURE                       R4 K3 [PROTO_5]
       22 CAPTURE                          UPVAL U2
       23 NEWTABLE                         R5 0 0
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       29 NEWCLOSURE                       R5 P3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R6 0 3
       35 MOVE                             R7 R2
       36 GETTABLEKS                       R8 R1 K5 ["enable"]
       38 GETTABLEKS                       R9 R1 K6 ["enabled"]
       40 SETLIST                          R6 R7 3 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 1
       44 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       46 NEWCLOSURE                       R6 P4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R7 0 4
       52 MOVE                             R8 R2
       53 GETTABLEKS                       R9 R1 K5 ["enable"]
       55 GETTABLEKS                       R10 R1 K6 ["enabled"]
       57 MOVE                             R11 R3
       58 SETLIST                          R7 R8 4 [1]
       60 CALL                             R5 2 1
       61 GETUPVAL                         R6 3
       62 CALL                             R6 0 1
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       66 NEWCLOSURE                       R8 P5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 NEWTABLE                         R9 0 4
       73 MOVE                             R10 R6
       74 MOVE                             R11 R2
       75 GETTABLEKS                       R12 R1 K8 ["set"]
       77 MOVE                             R13 R3
       78 SETLIST                          R9 R10 4 [1]
       80 CALL                             R7 2 0
       81 GETUPVAL                         R7 3
       82 CALL                             R7 0 1
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       86 NEWCLOSURE                       R9 P6
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R1
       90 NEWTABLE                         R10 0 3
       92 MOVE                             R11 R7
       93 GETTABLEKS                       R12 R0 K9 ["PluginLoaderContext"]
       95 GETTABLEKS                       R13 R1 K10 ["toggle"]
       97 SETLIST                          R10 R11 3 [1]
       99 CALL                             R8 2 1
      100 GETUPVAL                         R9 1
      101 GETTABLEKS                       R9 R9 K4 ["useCallback"]
      103 NEWCLOSURE                       R10 P7
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R3
      107 NEWTABLE                         R11 0 4
      109 MOVE                             R12 R2
      110 GETTABLEKS                       R13 R1 K5 ["enable"]
      112 GETTABLEKS                       R14 R1 K6 ["enabled"]
      114 MOVE                             R15 R3
      115 SETLIST                          R11 R12 4 [1]
      117 CALL                             R9 2 1
      118 DUPTABLE                         R10 K16 [{"enabledState", "onClose", "onWidgetEnabledChanged", "onDockWidgetCreated", "onRestore"}]
      119 SETTABLEKS                       R1 R10 K11 ["enabledState"]
      121 SETTABLEKS                       R4 R10 K12 ["onClose"]
      123 SETTABLEKS                       R5 R10 K13 ["onWidgetEnabledChanged"]
      125 SETTABLEKS                       R8 R10 K14 ["onDockWidgetCreated"]
      127 SETTABLEKS                       R9 R10 K15 ["onRestore"]
      129 RETURN                           R10 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Style"]
        3 GETTABLEKS                       R0 R0 K1 ["Themes"]
        5 GETTABLEKS                       R0 R0 K2 ["StudioTheme"]
        7 GETTABLEKS                       R0 R0 K3 ["new"]
        9 CALL                             R0 0 -1
       10 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Util"]
        3 GETTABLEKS                       R0 R0 K1 ["createFoundationDesignBinding"]
        5 CALL                             R0 0 -1
        6 RETURN                           R0 -1

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K2 ["new"]
        7 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimationGraphEditor"}]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K8 ["Src"]
       11 GETTABLEKS                       R2 R2 K9 ["Resources"]
       13 GETTABLEKS                       R2 R2 K1 ["Localization"]
       15 GETTABLEKS                       R2 R2 K10 ["SourceStrings"]
       17 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K8 ["Src"]
       22 GETTABLEKS                       R2 R2 K9 ["Resources"]
       24 GETTABLEKS                       R2 R2 K1 ["Localization"]
       26 GETTABLEKS                       R2 R2 K11 ["LocalizedStrings"]
       28 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       30 CALL                             R0 1 -1
       31 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Contexts"]
        3 GETTABLEKS                       R0 R0 K1 ["Localization"]
        5 GETTABLEKS                       R0 R0 K1 ["Localization"]
        7 GETTABLEKS                       R0 R0 K2 ["new"]
        9 DUPTABLE                         R1 K7 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AnimationGraphEditor"}]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K8 ["Src"]
       13 GETTABLEKS                       R2 R2 K9 ["Resources"]
       15 GETTABLEKS                       R2 R2 K1 ["Localization"]
       17 GETTABLEKS                       R2 R2 K10 ["SourceStrings"]
       19 SETTABLEKS                       R2 R1 K3 ["stringResourceTable"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K8 ["Src"]
       24 GETTABLEKS                       R2 R2 K9 ["Resources"]
       26 GETTABLEKS                       R2 R2 K1 ["Localization"]
       28 GETTABLEKS                       R2 R2 K11 ["LocalizedStrings"]
       30 SETTABLEKS                       R2 R1 K4 ["translationResourceTable"]
       32 CALL                             R0 1 -1
       33 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnimationGraphEditorLoaded"]
        2 NAMECALL                         R0 R0 K1 ["SetItem"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K2 ["Plugin"]
        8 LOADK                            R2 K3 ["Opened"]
        9 NAMECALL                         R0 R0 K4 ["Invoke"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 NAMECALL                         R0 R0 K1 ["GetMouse"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useFoundationStudioTheme"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       10 DUPCLOSURE                       R4 K2 [PROTO_17]
       11 CAPTURE                          UPVAL U3
       12 NEWTABLE                         R5 0 0
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       18 DUPCLOSURE                       R5 K3 [PROTO_18]
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
       41 DUPCLOSURE                       R8 K5 [PROTO_20]
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U5
       44 NEWTABLE                         R9 0 0
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       50 DUPCLOSURE                       R9 K6 [PROTO_21]
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
      175 GETTABLEKS                       R16 R2 K30 ["onClose"]
      177 SETTABLEKS                       R16 R15 K31 ["OnClose"]
      179 LOADB                            R16 1
      180 SETTABLEKS                       R16 R15 K32 ["ShouldRestore"]
      182 GETTABLEKS                       R16 R2 K33 ["onRestore"]
      184 SETTABLEKS                       R16 R15 K34 ["OnWidgetRestored"]
      186 GETTABLEKS                       R16 R0 K35 ["PluginLoaderContext"]
      188 GETTABLEKS                       R16 R16 K36 ["mainDockWidget"]
      190 SETTABLEKS                       R16 R15 K37 ["Widget"]
      192 GETTABLEKS                       R16 R2 K38 ["onDockWidgetCreated"]
      194 SETTABLEKS                       R16 R15 K39 ["OnWidgetCreated"]
      196 SETTABLEKS                       R6 R15 K40 ["PluginDesign"]
      198 GETUPVAL                         R16 2
      199 GETTABLEKS                       R16 R16 K41 ["Change"]
      201 GETTABLEKS                       R16 R16 K22 ["Enabled"]
      203 GETTABLEKS                       R17 R2 K42 ["onWidgetEnabledChanged"]
      205 SETTABLE                         R17 R15 R16
      206 DUPTABLE                         R16 K44 [{"ContextStack"}]
      207 GETUPVAL                         R17 2
      208 GETTABLEKS                       R17 R17 K15 ["createElement"]
      210 GETUPVAL                         R18 8
      211 GETTABLEKS                       R18 R18 K43 ["ContextStack"]
      213 DUPTABLE                         R19 K46 [{"providers"}]
      214 NEWTABLE                         R20 0 29
      216 GETUPVAL                         R21 2
      217 GETTABLEKS                       R21 R21 K15 ["createElement"]
      219 GETUPVAL                         R22 4
      220 GETTABLEKS                       R22 R22 K47 ["Components"]
      222 GETTABLEKS                       R22 R22 K48 ["FoundationProviderAdapter"]
      224 DUPTABLE                         R23 K50 [{"onStyleSheetChange"}]
      225 SETTABLEKS                       R5 R23 K49 ["onStyleSheetChange"]
      227 CALL                             R21 2 1
      228 GETUPVAL                         R22 2
      229 GETTABLEKS                       R22 R22 K15 ["createElement"]
      231 GETUPVAL                         R23 4
      232 GETTABLEKS                       R23 R23 K51 ["Contexts"]
      234 GETTABLEKS                       R23 R23 K52 ["Localization"]
      236 GETTABLEKS                       R23 R23 K53 ["Provider"]
      238 DUPTABLE                         R24 K55 [{"localization"}]
      239 SETTABLEKS                       R8 R24 K54 ["localization"]
      241 CALL                             R22 2 1
      242 GETUPVAL                         R23 2
      243 GETTABLEKS                       R23 R23 K15 ["createElement"]
      245 GETUPVAL                         R24 9
      246 GETTABLEKS                       R24 R24 K56 ["Providers"]
      248 GETTABLEKS                       R24 R24 K57 ["StandaloneDataModel"]
      250 DUPTABLE                         R25 K61 [{"plugin", "pluginGui", "studioUri"}]
      251 GETTABLEKS                       R26 R0 K4 ["Plugin"]
      253 SETTABLEKS                       R26 R25 K58 ["plugin"]
      255 GETTABLEKS                       R26 R0 K35 ["PluginLoaderContext"]
      257 GETTABLEKS                       R26 R26 K36 ["mainDockWidget"]
      259 SETTABLEKS                       R26 R25 K59 ["pluginGui"]
      261 GETUPVAL                         R26 10
      262 SETTABLEKS                       R26 R25 K60 ["studioUri"]
      264 CALL                             R23 2 1
      265 GETUPVAL                         R24 2
      266 GETTABLEKS                       R24 R24 K15 ["createElement"]
      268 GETUPVAL                         R25 11
      269 GETTABLEKS                       R25 R25 K62 ["PropertyEntryProvider"]
      271 DUPTABLE                         R26 K64 [{"theme"}]
      272 SETTABLEKS                       R1 R26 K63 ["theme"]
      274 CALL                             R24 2 1
      275 GETUPVAL                         R25 2
      276 GETTABLEKS                       R25 R25 K15 ["createElement"]
      278 GETUPVAL                         R26 0
      279 GETTABLEKS                       R26 R26 K65 ["NetworkingContext"]
      281 GETTABLEKS                       R26 R26 K66 ["UIDataModelProvider"]
      283 CALL                             R25 1 1
      284 GETUPVAL                         R26 2
      285 GETTABLEKS                       R26 R26 K15 ["createElement"]
      287 GETUPVAL                         R27 0
      288 GETTABLEKS                       R27 R27 K67 ["VisibleContext"]
      290 GETTABLEKS                       R27 R27 K66 ["UIDataModelProvider"]
      292 DUPTABLE                         R28 K69 [{"isOpen"}]
      293 GETTABLEKS                       R29 R2 K20 ["enabledState"]
      295 GETTABLEKS                       R29 R29 K21 ["enabled"]
      297 SETTABLEKS                       R29 R28 K68 ["isOpen"]
      299 CALL                             R26 2 1
      300 GETUPVAL                         R27 2
      301 GETTABLEKS                       R27 R27 K15 ["createElement"]
      303 GETUPVAL                         R28 0
      304 GETTABLEKS                       R28 R28 K70 ["UIDataModelContexts"]
      306 DUPTABLE                         R29 K71 [{"plugin"}]
      307 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      309 SETTABLEKS                       R30 R29 K58 ["plugin"]
      311 CALL                             R27 2 1
      312 GETUPVAL                         R28 2
      313 GETTABLEKS                       R28 R28 K15 ["createElement"]
      315 GETUPVAL                         R29 0
      316 GETTABLEKS                       R29 R29 K72 ["AnimationParameterContext"]
      318 GETTABLEKS                       R29 R29 K66 ["UIDataModelProvider"]
      320 CALL                             R28 1 1
      321 GETUPVAL                         R29 2
      322 GETTABLEKS                       R29 R29 K15 ["createElement"]
      324 GETUPVAL                         R30 0
      325 GETTABLEKS                       R30 R30 K73 ["GraphingContexts"]
      327 CALL                             R29 1 1
      328 GETUPVAL                         R30 2
      329 GETTABLEKS                       R30 R30 K15 ["createElement"]
      331 GETUPVAL                         R31 0
      332 GETTABLEKS                       R31 R31 K74 ["AssetAccessContext"]
      334 GETTABLEKS                       R31 R31 K66 ["UIDataModelProvider"]
      336 CALL                             R30 1 1
      337 GETUPVAL                         R31 2
      338 GETTABLEKS                       R31 R31 K15 ["createElement"]
      340 GETUPVAL                         R32 0
      341 GETTABLEKS                       R32 R32 K75 ["GameContext"]
      343 GETTABLEKS                       R32 R32 K66 ["UIDataModelProvider"]
      345 CALL                             R31 1 1
      346 GETUPVAL                         R33 12
      347 CALL                             R33 0 1
      348 JUMPIFNOT                        R33 ; [+8]
      349 GETUPVAL                         R32 2
      350 GETTABLEKS                       R32 R32 K15 ["createElement"]
      352 GETUPVAL                         R33 2
      353 GETTABLEKS                       R33 R33 K76 ["Fragment"]
      355 CALL                             R32 1 1
      356 JUMP                             ; [+9]
      357 GETUPVAL                         R32 2
      358 GETTABLEKS                       R32 R32 K15 ["createElement"]
      360 GETUPVAL                         R33 0
      361 GETTABLEKS                       R33 R33 K77 ["GraphDebugDataContext"]
      363 GETTABLEKS                       R33 R33 K66 ["UIDataModelProvider"]
      365 CALL                             R32 1 1
      366 GETUPVAL                         R34 12
      367 CALL                             R34 0 1
      368 JUMPIFNOT                        R34 ; [+8]
      369 GETUPVAL                         R33 2
      370 GETTABLEKS                       R33 R33 K15 ["createElement"]
      372 GETUPVAL                         R34 2
      373 GETTABLEKS                       R34 R34 K76 ["Fragment"]
      375 CALL                             R33 1 1
      376 JUMP                             ; [+9]
      377 GETUPVAL                         R33 2
      378 GETTABLEKS                       R33 R33 K15 ["createElement"]
      380 GETUPVAL                         R34 0
      381 GETTABLEKS                       R34 R34 K78 ["GraphPlayedContext"]
      383 GETTABLEKS                       R34 R34 K66 ["UIDataModelProvider"]
      385 CALL                             R33 1 1
      386 GETUPVAL                         R34 2
      387 GETTABLEKS                       R34 R34 K15 ["createElement"]
      389 GETUPVAL                         R35 0
      390 GETTABLEKS                       R35 R35 K79 ["PopupContext"]
      392 GETTABLEKS                       R35 R35 K80 ["StudioProvider"]
      394 CALL                             R34 1 1
      395 GETUPVAL                         R35 2
      396 GETTABLEKS                       R35 R35 K15 ["createElement"]
      398 GETUPVAL                         R36 0
      399 GETTABLEKS                       R36 R36 K81 ["PlayStateContext"]
      401 GETTABLEKS                       R36 R36 K66 ["UIDataModelProvider"]
      403 DUPTABLE                         R37 K83 [{"isOpen", "defaultPlayingState"}]
      404 GETTABLEKS                       R38 R2 K20 ["enabledState"]
      406 GETTABLEKS                       R38 R38 K21 ["enabled"]
      408 SETTABLEKS                       R38 R37 K68 ["isOpen"]
      410 GETUPVAL                         R39 12
      411 CALL                             R39 0 1
      412 JUMPIFNOT                        R39 ; [+2]
      413 LOADB                            R38 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R38
      416 SETTABLEKS                       R38 R37 K82 ["defaultPlayingState"]
      418 CALL                             R35 2 1
      419 GETUPVAL                         R36 2
      420 GETTABLEKS                       R36 R36 K15 ["createElement"]
      422 GETUPVAL                         R37 0
      423 GETTABLEKS                       R37 R37 K84 ["MaskEditorVisibilityContext"]
      425 GETTABLEKS                       R37 R37 K53 ["Provider"]
      427 CALL                             R36 1 1
      428 SETLIST                          R20 R21 16 [1]
      430 GETUPVAL                         R21 2
      431 GETTABLEKS                       R21 R21 K15 ["createElement"]
      433 GETUPVAL                         R22 0
      434 GETTABLEKS                       R22 R22 K85 ["MaskEditorContext"]
      436 GETTABLEKS                       R22 R22 K66 ["UIDataModelProvider"]
      438 CALL                             R21 1 1
      439 GETUPVAL                         R22 2
      440 GETTABLEKS                       R22 R22 K15 ["createElement"]
      442 GETUPVAL                         R23 0
      443 GETTABLEKS                       R23 R23 K86 ["StateMachineEditorContext"]
      445 GETTABLEKS                       R23 R23 K66 ["UIDataModelProvider"]
      447 CALL                             R22 1 1
      448 GETUPVAL                         R23 2
      449 GETTABLEKS                       R23 R23 K15 ["createElement"]
      451 GETUPVAL                         R24 0
      452 GETTABLEKS                       R24 R24 K87 ["NativeGraphContext"]
      454 GETTABLEKS                       R24 R24 K66 ["UIDataModelProvider"]
      456 CALL                             R23 1 1
      457 GETUPVAL                         R24 2
      458 GETTABLEKS                       R24 R24 K15 ["createElement"]
      460 GETUPVAL                         R25 0
      461 GETTABLEKS                       R25 R25 K73 ["GraphingContexts"]
      463 CALL                             R24 1 1
      464 GETUPVAL                         R26 12
      465 CALL                             R26 0 1
      466 JUMPIFNOT                        R26 ; [+10]
      467 GETUPVAL                         R25 2
      468 GETTABLEKS                       R25 R25 K15 ["createElement"]
      470 GETUPVAL                         R26 2
      471 GETTABLEKS                       R26 R26 K76 ["Fragment"]
      473 NEWTABLE                         R27 0 0
      475 CALL                             R25 2 1
      476 JUMP                             ; [+9]
      477 GETUPVAL                         R25 2
      478 GETTABLEKS                       R25 R25 K15 ["createElement"]
      480 GETUPVAL                         R26 0
      481 GETTABLEKS                       R26 R26 K88 ["RigListContext"]
      483 GETTABLEKS                       R26 R26 K66 ["UIDataModelProvider"]
      485 CALL                             R25 1 1
      486 GETUPVAL                         R27 12
      487 CALL                             R27 0 1
      488 JUMPIFNOT                        R27 ; [+8]
      489 GETUPVAL                         R26 2
      490 GETTABLEKS                       R26 R26 K15 ["createElement"]
      492 GETUPVAL                         R27 2
      493 GETTABLEKS                       R27 R27 K76 ["Fragment"]
      495 CALL                             R26 1 1
      496 JUMP                             ; [+9]
      497 GETUPVAL                         R26 2
      498 GETTABLEKS                       R26 R26 K15 ["createElement"]
      500 GETUPVAL                         R27 0
      501 GETTABLEKS                       R27 R27 K89 ["GraphTimestampContext"]
      503 GETTABLEKS                       R27 R27 K66 ["UIDataModelProvider"]
      505 CALL                             R26 1 1
      506 GETUPVAL                         R28 12
      507 CALL                             R28 0 1
      508 JUMPIFNOT                        R28 ; [+8]
      509 GETUPVAL                         R27 2
      510 GETTABLEKS                       R27 R27 K15 ["createElement"]
      512 GETUPVAL                         R28 2
      513 GETTABLEKS                       R28 R28 K76 ["Fragment"]
      515 CALL                             R27 1 1
      516 JUMP                             ; [+9]
      517 GETUPVAL                         R27 2
      518 GETTABLEKS                       R27 R27 K15 ["createElement"]
      520 GETUPVAL                         R28 0
      521 GETTABLEKS                       R28 R28 K90 ["CreateGraphContext"]
      523 GETTABLEKS                       R28 R28 K66 ["UIDataModelProvider"]
      525 CALL                             R27 1 1
      526 GETUPVAL                         R29 12
      527 CALL                             R29 0 1
      528 JUMPIFNOT                        R29 ; [+8]
      529 GETUPVAL                         R28 2
      530 GETTABLEKS                       R28 R28 K15 ["createElement"]
      532 GETUPVAL                         R29 2
      533 GETTABLEKS                       R29 R29 K76 ["Fragment"]
      535 CALL                             R28 1 1
      536 JUMP                             ; [+14]
      537 GETUPVAL                         R28 2
      538 GETTABLEKS                       R28 R28 K15 ["createElement"]
      540 GETUPVAL                         R29 0
      541 GETTABLEKS                       R29 R29 K91 ["CreateScriptContext"]
      543 GETTABLEKS                       R29 R29 K66 ["UIDataModelProvider"]
      545 DUPTABLE                         R30 K71 [{"plugin"}]
      546 GETTABLEKS                       R31 R0 K4 ["Plugin"]
      548 SETTABLEKS                       R31 R30 K58 ["plugin"]
      550 CALL                             R28 2 1
      551 GETUPVAL                         R29 2
      552 GETTABLEKS                       R29 R29 K15 ["createElement"]
      554 GETUPVAL                         R30 0
      555 GETTABLEKS                       R30 R30 K92 ["GraphDropdownContext"]
      557 GETTABLEKS                       R30 R30 K66 ["UIDataModelProvider"]
      559 CALL                             R29 1 1
      560 GETUPVAL                         R30 2
      561 GETTABLEKS                       R30 R30 K15 ["createElement"]
      563 GETUPVAL                         R31 0
      564 GETTABLEKS                       R31 R31 K93 ["GraphDirtyStateContext"]
      566 GETTABLEKS                       R31 R31 K66 ["UIDataModelProvider"]
      568 CALL                             R30 1 1
      569 GETUPVAL                         R32 12
      570 CALL                             R32 0 1
      571 JUMPIFNOT                        R32 ; [+8]
      572 GETUPVAL                         R31 2
      573 GETTABLEKS                       R31 R31 K15 ["createElement"]
      575 GETUPVAL                         R32 2
      576 GETTABLEKS                       R32 R32 K76 ["Fragment"]
      578 CALL                             R31 1 1
      579 JUMP                             ; [+9]
      580 GETUPVAL                         R31 2
      581 GETTABLEKS                       R31 R31 K15 ["createElement"]
      583 GETUPVAL                         R32 0
      584 GETTABLEKS                       R32 R32 K94 ["MenuItemsContext"]
      586 GETTABLEKS                       R32 R32 K53 ["Provider"]
      588 CALL                             R31 1 1
      589 GETUPVAL                         R32 2
      590 GETTABLEKS                       R32 R32 K15 ["createElement"]
      592 GETUPVAL                         R33 11
      593 GETTABLEKS                       R33 R33 K95 ["AssetPickerProvider"]
      595 GETTABLEKS                       R33 R33 K80 ["StudioProvider"]
      597 DUPTABLE                         R34 K97 [{"plugin", "theme", "studioService"}]
      598 GETTABLEKS                       R35 R0 K4 ["Plugin"]
      600 SETTABLEKS                       R35 R34 K58 ["plugin"]
      602 SETTABLEKS                       R1 R34 K63 ["theme"]
      604 GETUPVAL                         R35 13
      605 SETTABLEKS                       R35 R34 K96 ["studioService"]
      607 CALL                             R32 2 1
      608 GETUPVAL                         R33 2
      609 GETTABLEKS                       R33 R33 K15 ["createElement"]
      611 GETUPVAL                         R34 0
      612 GETTABLEKS                       R34 R34 K98 ["InputSelectionContext"]
      614 GETTABLEKS                       R34 R34 K53 ["Provider"]
      616 CALL                             R33 1 -1
      617 SETLIST                          R20 R21 -1 [17]
      619 SETTABLEKS                       R20 R19 K45 ["providers"]
      621 DUPTABLE                         R20 K100 [{"MainView"}]
      622 GETUPVAL                         R21 2
      623 GETTABLEKS                       R21 R21 K15 ["createElement"]
      625 GETUPVAL                         R22 14
      626 DUPTABLE                         R23 K101 [{"pluginGui"}]
      627 GETTABLEKS                       R24 R0 K35 ["PluginLoaderContext"]
      629 GETTABLEKS                       R24 R24 K36 ["mainDockWidget"]
      631 SETTABLEKS                       R24 R23 K59 ["pluginGui"]
      633 CALL                             R21 2 1
      634 SETTABLEKS                       R21 R20 K99 ["MainView"]
      636 CALL                             R17 3 1
      637 SETTABLEKS                       R17 R16 K43 ["ContextStack"]
      639 CALL                             R13 3 1
      640 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      642 CALL                             R10 2 -1
      643 RETURN                           R10 -1

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
       86 GETTABLEKS                       R13 R0 K13 ["Src"]
       88 GETTABLEKS                       R13 R13 K23 ["Flags"]
       90 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_RunTimeDebug"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K5 [game]
       95 LOADK                            R15 K25 ["AnimGraphUI_PreInit2"]
       96 LOADB                            R16 0
       97 NAMECALL                         R13 R13 K26 ["DefineFastFlag"]
       99 CALL                             R13 3 1
      100 DUPCLOSURE                       R14 K27 [PROTO_2]
      101 CAPTURE                          VAL R9
      102 DUPCLOSURE                       R15 K28 [PROTO_16]
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R14
      107 DUPCLOSURE                       R16 K29 [PROTO_28]
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R5
      118 CAPTURE                          VAL R7
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R2
      122 CAPTURE                          VAL R4
      123 RETURN                           R16 1

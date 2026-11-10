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
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       59 NEWCLOSURE                       R10 P5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R0
       62 NEWTABLE                         R11 0 1
       64 GETTABLEKS                       R12 R0 K4 ["Plugin"]
       66 SETLIST                          R11 R12 1 [1]
       68 CALL                             R9 2 0
       69 GETUPVAL                         R9 2
       70 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       72 NEWCLOSURE                       R10 P6
       73 CAPTURE                          VAL R7
       74 NEWTABLE                         R11 0 1
       76 MOVE                             R12 R7
       77 SETLIST                          R11 R12 1 [1]
       79 CALL                             R9 2 0
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       83 NEWCLOSURE                       R10 P7
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R11 0 1
       87 MOVE                             R12 R8
       88 SETLIST                          R11 R12 1 [1]
       90 CALL                             R9 2 0
       91 GETUPVAL                         R9 2
       92 GETTABLEKS                       R9 R9 K1 ["useMemo"]
       94 NEWCLOSURE                       R10 P8
       95 CAPTURE                          VAL R0
       96 NEWTABLE                         R11 0 1
       98 GETTABLEKS                       R12 R0 K4 ["Plugin"]
      100 SETLIST                          R11 R12 1 [1]
      102 CALL                             R9 2 1
      103 GETUPVAL                         R10 3
      104 GETTABLEKS                       R10 R10 K8 ["ContextServices"]
      106 GETTABLEKS                       R10 R10 K9 ["provide"]
      108 NEWTABLE                         R11 0 5
      110 GETUPVAL                         R12 3
      111 GETTABLEKS                       R12 R12 K8 ["ContextServices"]
      113 GETTABLEKS                       R12 R12 K4 ["Plugin"]
      115 GETTABLEKS                       R12 R12 K10 ["new"]
      117 GETTABLEKS                       R13 R0 K4 ["Plugin"]
      119 CALL                             R12 1 1
      120 GETUPVAL                         R13 3
      121 GETTABLEKS                       R13 R13 K8 ["ContextServices"]
      123 GETTABLEKS                       R13 R13 K11 ["Mouse"]
      125 GETTABLEKS                       R13 R13 K10 ["new"]
      127 MOVE                             R14 R9
      128 CALL                             R13 1 1
      129 GETUPVAL                         R14 3
      130 GETTABLEKS                       R14 R14 K8 ["ContextServices"]
      132 GETTABLEKS                       R14 R14 K12 ["Design"]
      134 GETTABLEKS                       R14 R14 K10 ["new"]
      136 MOVE                             R15 R6
      137 CALL                             R14 1 1
      138 MOVE                             R15 R3
      139 MOVE                             R16 R7
      140 SETLIST                          R11 R12 5 [1]
      142 DUPTABLE                         R12 K14 [{"MainWidget"}]
      143 GETUPVAL                         R13 2
      144 GETTABLEKS                       R13 R13 K15 ["createElement"]
      146 GETUPVAL                         R14 3
      147 GETTABLEKS                       R14 R14 K16 ["UI"]
      149 GETTABLEKS                       R14 R14 K17 ["DockWidget"]
      151 NEWTABLE                         R15 16 0
      153 LOADK                            R16 K18 ["AnimationGraphEditor"]
      154 SETTABLEKS                       R16 R15 K19 ["Id"]
      156 GETTABLEKS                       R16 R2 K20 ["enabledState"]
      158 GETTABLEKS                       R16 R16 K21 ["enabled"]
      160 SETTABLEKS                       R16 R15 K22 ["Enabled"]
      162 LOADK                            R18 K4 ["Plugin"]
      163 LOADK                            R19 K23 ["Name"]
      164 NAMECALL                         R16 R8 K24 ["getText"]
      166 CALL                             R16 3 1
      167 SETTABLEKS                       R16 R15 K25 ["Title"]
      169 GETIMPORT                        R16 K29 [Enum.ZIndexBehavior.Sibling]
      171 SETTABLEKS                       R16 R15 K27 ["ZIndexBehavior"]
      173 GETTABLEKS                       R16 R2 K30 ["onClose"]
      175 SETTABLEKS                       R16 R15 K31 ["OnClose"]
      177 LOADB                            R16 1
      178 SETTABLEKS                       R16 R15 K32 ["ShouldRestore"]
      180 GETTABLEKS                       R16 R2 K33 ["onRestore"]
      182 SETTABLEKS                       R16 R15 K34 ["OnWidgetRestored"]
      184 GETTABLEKS                       R16 R0 K35 ["PluginLoaderContext"]
      186 GETTABLEKS                       R16 R16 K36 ["mainDockWidget"]
      188 SETTABLEKS                       R16 R15 K37 ["Widget"]
      190 GETTABLEKS                       R16 R2 K38 ["onDockWidgetCreated"]
      192 SETTABLEKS                       R16 R15 K39 ["OnWidgetCreated"]
      194 SETTABLEKS                       R6 R15 K40 ["PluginDesign"]
      196 GETUPVAL                         R16 2
      197 GETTABLEKS                       R16 R16 K41 ["Change"]
      199 GETTABLEKS                       R16 R16 K22 ["Enabled"]
      201 GETTABLEKS                       R17 R2 K42 ["onWidgetEnabledChanged"]
      203 SETTABLE                         R17 R15 R16
      204 DUPTABLE                         R16 K44 [{"ContextStack"}]
      205 GETUPVAL                         R17 2
      206 GETTABLEKS                       R17 R17 K15 ["createElement"]
      208 GETUPVAL                         R18 7
      209 GETTABLEKS                       R18 R18 K43 ["ContextStack"]
      211 DUPTABLE                         R19 K46 [{"providers"}]
      212 NEWTABLE                         R20 0 23
      214 GETUPVAL                         R21 2
      215 GETTABLEKS                       R21 R21 K15 ["createElement"]
      217 GETUPVAL                         R22 4
      218 GETTABLEKS                       R22 R22 K47 ["Components"]
      220 GETTABLEKS                       R22 R22 K48 ["FoundationProviderAdapter"]
      222 DUPTABLE                         R23 K50 [{"onStyleSheetChange"}]
      223 SETTABLEKS                       R5 R23 K49 ["onStyleSheetChange"]
      225 CALL                             R21 2 1
      226 GETUPVAL                         R22 2
      227 GETTABLEKS                       R22 R22 K15 ["createElement"]
      229 GETUPVAL                         R23 4
      230 GETTABLEKS                       R23 R23 K51 ["Contexts"]
      232 GETTABLEKS                       R23 R23 K52 ["Localization"]
      234 GETTABLEKS                       R23 R23 K53 ["Provider"]
      236 DUPTABLE                         R24 K55 [{"localization"}]
      237 SETTABLEKS                       R8 R24 K54 ["localization"]
      239 CALL                             R22 2 1
      240 GETUPVAL                         R23 2
      241 GETTABLEKS                       R23 R23 K15 ["createElement"]
      243 GETUPVAL                         R24 8
      244 GETTABLEKS                       R24 R24 K56 ["Providers"]
      246 GETTABLEKS                       R24 R24 K57 ["StandaloneDataModel"]
      248 DUPTABLE                         R25 K61 [{"plugin", "pluginGui", "studioUri"}]
      249 GETTABLEKS                       R26 R0 K4 ["Plugin"]
      251 SETTABLEKS                       R26 R25 K58 ["plugin"]
      253 GETTABLEKS                       R26 R0 K35 ["PluginLoaderContext"]
      255 GETTABLEKS                       R26 R26 K36 ["mainDockWidget"]
      257 SETTABLEKS                       R26 R25 K59 ["pluginGui"]
      259 GETUPVAL                         R26 9
      260 SETTABLEKS                       R26 R25 K60 ["studioUri"]
      262 CALL                             R23 2 1
      263 GETUPVAL                         R24 2
      264 GETTABLEKS                       R24 R24 K15 ["createElement"]
      266 GETUPVAL                         R25 10
      267 GETTABLEKS                       R25 R25 K62 ["PropertyEntryProvider"]
      269 DUPTABLE                         R26 K64 [{"theme"}]
      270 SETTABLEKS                       R1 R26 K63 ["theme"]
      272 CALL                             R24 2 1
      273 GETUPVAL                         R25 2
      274 GETTABLEKS                       R25 R25 K15 ["createElement"]
      276 GETUPVAL                         R26 0
      277 GETTABLEKS                       R26 R26 K65 ["NetworkingContext"]
      279 GETTABLEKS                       R26 R26 K66 ["UIDataModelProvider"]
      281 CALL                             R25 1 1
      282 GETUPVAL                         R26 2
      283 GETTABLEKS                       R26 R26 K15 ["createElement"]
      285 GETUPVAL                         R27 0
      286 GETTABLEKS                       R27 R27 K67 ["VisibleContext"]
      288 GETTABLEKS                       R27 R27 K66 ["UIDataModelProvider"]
      290 DUPTABLE                         R28 K69 [{"isOpen"}]
      291 GETTABLEKS                       R29 R2 K20 ["enabledState"]
      293 GETTABLEKS                       R29 R29 K21 ["enabled"]
      295 SETTABLEKS                       R29 R28 K68 ["isOpen"]
      297 CALL                             R26 2 1
      298 GETUPVAL                         R27 2
      299 GETTABLEKS                       R27 R27 K15 ["createElement"]
      301 GETUPVAL                         R28 0
      302 GETTABLEKS                       R28 R28 K70 ["UIDataModelContexts"]
      304 DUPTABLE                         R29 K71 [{"plugin"}]
      305 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      307 SETTABLEKS                       R30 R29 K58 ["plugin"]
      309 CALL                             R27 2 1
      310 GETUPVAL                         R28 2
      311 GETTABLEKS                       R28 R28 K15 ["createElement"]
      313 GETUPVAL                         R29 0
      314 GETTABLEKS                       R29 R29 K72 ["AnimationParameterContext"]
      316 GETTABLEKS                       R29 R29 K66 ["UIDataModelProvider"]
      318 CALL                             R28 1 1
      319 GETUPVAL                         R30 11
      320 CALL                             R30 0 1
      321 JUMPIFNOT                        R30 ; [+10]
      322 GETUPVAL                         R29 2
      323 GETTABLEKS                       R29 R29 K15 ["createElement"]
      325 GETUPVAL                         R30 0
      326 GETTABLEKS                       R30 R30 K73 ["PublishedClipContext"]
      328 GETTABLEKS                       R30 R30 K66 ["UIDataModelProvider"]
      330 CALL                             R29 1 1
      331 JUMP                             ; [+7]
      332 GETUPVAL                         R29 2
      333 GETTABLEKS                       R29 R29 K15 ["createElement"]
      335 GETUPVAL                         R30 2
      336 GETTABLEKS                       R30 R30 K74 ["Fragment"]
      338 CALL                             R29 1 1
      339 GETUPVAL                         R30 2
      340 GETTABLEKS                       R30 R30 K15 ["createElement"]
      342 GETUPVAL                         R31 0
      343 GETTABLEKS                       R31 R31 K75 ["GraphingContexts"]
      345 CALL                             R30 1 1
      346 GETUPVAL                         R31 2
      347 GETTABLEKS                       R31 R31 K15 ["createElement"]
      349 GETUPVAL                         R32 0
      350 GETTABLEKS                       R32 R32 K76 ["AssetAccessContext"]
      352 GETTABLEKS                       R32 R32 K66 ["UIDataModelProvider"]
      354 CALL                             R31 1 1
      355 GETUPVAL                         R32 2
      356 GETTABLEKS                       R32 R32 K15 ["createElement"]
      358 GETUPVAL                         R33 0
      359 GETTABLEKS                       R33 R33 K77 ["GameContext"]
      361 GETTABLEKS                       R33 R33 K66 ["UIDataModelProvider"]
      363 CALL                             R32 1 1
      364 GETUPVAL                         R33 2
      365 GETTABLEKS                       R33 R33 K15 ["createElement"]
      367 GETUPVAL                         R34 0
      368 GETTABLEKS                       R34 R34 K78 ["PopupContext"]
      370 GETTABLEKS                       R34 R34 K79 ["StudioProvider"]
      372 CALL                             R33 1 1
      373 GETUPVAL                         R34 2
      374 GETTABLEKS                       R34 R34 K15 ["createElement"]
      376 GETUPVAL                         R35 0
      377 GETTABLEKS                       R35 R35 K80 ["PlayStateContext"]
      379 GETTABLEKS                       R35 R35 K66 ["UIDataModelProvider"]
      381 DUPTABLE                         R36 K83 [{["isOpen"], ["defaultPlayingState"] = True}]
      382 GETTABLEKS                       R37 R2 K20 ["enabledState"]
      384 GETTABLEKS                       R37 R37 K21 ["enabled"]
      386 SETTABLEKS                       R37 R36 K68 ["isOpen"]
      388 CALL                             R34 2 1
      389 GETUPVAL                         R35 2
      390 GETTABLEKS                       R35 R35 K15 ["createElement"]
      392 GETUPVAL                         R36 0
      393 GETTABLEKS                       R36 R36 K84 ["MaskEditorVisibilityContext"]
      395 GETTABLEKS                       R36 R36 K53 ["Provider"]
      397 CALL                             R35 1 1
      398 GETUPVAL                         R36 2
      399 GETTABLEKS                       R36 R36 K15 ["createElement"]
      401 GETUPVAL                         R37 0
      402 GETTABLEKS                       R37 R37 K85 ["MaskEditorContext"]
      404 GETTABLEKS                       R37 R37 K66 ["UIDataModelProvider"]
      406 CALL                             R36 1 1
      407 SETLIST                          R20 R21 16 [1]
      409 GETUPVAL                         R21 2
      410 GETTABLEKS                       R21 R21 K15 ["createElement"]
      412 GETUPVAL                         R22 0
      413 GETTABLEKS                       R22 R22 K86 ["StateMachineEditorContext"]
      415 GETTABLEKS                       R22 R22 K66 ["UIDataModelProvider"]
      417 CALL                             R21 1 1
      418 GETUPVAL                         R22 2
      419 GETTABLEKS                       R22 R22 K15 ["createElement"]
      421 GETUPVAL                         R23 0
      422 GETTABLEKS                       R23 R23 K87 ["NativeGraphContext"]
      424 GETTABLEKS                       R23 R23 K66 ["UIDataModelProvider"]
      426 CALL                             R22 1 1
      427 GETUPVAL                         R23 2
      428 GETTABLEKS                       R23 R23 K15 ["createElement"]
      430 GETUPVAL                         R24 0
      431 GETTABLEKS                       R24 R24 K75 ["GraphingContexts"]
      433 CALL                             R23 1 1
      434 GETUPVAL                         R24 2
      435 GETTABLEKS                       R24 R24 K15 ["createElement"]
      437 GETUPVAL                         R25 0
      438 GETTABLEKS                       R25 R25 K88 ["GraphDropdownContext"]
      440 GETTABLEKS                       R25 R25 K66 ["UIDataModelProvider"]
      442 CALL                             R24 1 1
      443 GETUPVAL                         R25 2
      444 GETTABLEKS                       R25 R25 K15 ["createElement"]
      446 GETUPVAL                         R26 0
      447 GETTABLEKS                       R26 R26 K89 ["GraphDirtyStateContext"]
      449 GETTABLEKS                       R26 R26 K66 ["UIDataModelProvider"]
      451 CALL                             R25 1 1
      452 GETUPVAL                         R26 2
      453 GETTABLEKS                       R26 R26 K15 ["createElement"]
      455 GETUPVAL                         R27 10
      456 GETTABLEKS                       R27 R27 K90 ["AssetPickerProvider"]
      458 GETTABLEKS                       R27 R27 K79 ["StudioProvider"]
      460 DUPTABLE                         R28 K92 [{"plugin", "theme", "studioService"}]
      461 GETTABLEKS                       R29 R0 K4 ["Plugin"]
      463 SETTABLEKS                       R29 R28 K58 ["plugin"]
      465 SETTABLEKS                       R1 R28 K63 ["theme"]
      467 GETUPVAL                         R29 12
      468 SETTABLEKS                       R29 R28 K91 ["studioService"]
      470 CALL                             R26 2 1
      471 GETUPVAL                         R27 2
      472 GETTABLEKS                       R27 R27 K15 ["createElement"]
      474 GETUPVAL                         R28 0
      475 GETTABLEKS                       R28 R28 K93 ["InputSelectionContext"]
      477 GETTABLEKS                       R28 R28 K53 ["Provider"]
      479 CALL                             R27 1 -1
      480 SETLIST                          R20 R21 -1 [17]
      482 SETTABLEKS                       R20 R19 K45 ["providers"]
      484 DUPTABLE                         R20 K95 [{"MainView"}]
      485 GETUPVAL                         R21 2
      486 GETTABLEKS                       R21 R21 K15 ["createElement"]
      488 GETUPVAL                         R22 13
      489 DUPTABLE                         R23 K96 [{"pluginGui"}]
      490 GETTABLEKS                       R24 R0 K35 ["PluginLoaderContext"]
      492 GETTABLEKS                       R24 R24 K36 ["mainDockWidget"]
      494 SETTABLEKS                       R24 R23 K59 ["pluginGui"]
      496 CALL                             R21 2 1
      497 SETTABLEKS                       R21 R20 K94 ["MainView"]
      499 CALL                             R17 3 1
      500 SETTABLEKS                       R17 R16 K43 ["ContextStack"]
      502 CALL                             R13 3 1
      503 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      505 CALL                             R10 2 -1
      506 RETURN                           R10 -1

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
       90 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_ReloadPublishedClips"]
       92 CALL                             R12 1 1
       93 DUPCLOSURE                       R13 K25 [PROTO_2]
       94 CAPTURE                          VAL R9
       95 DUPCLOSURE                       R14 K26 [PROTO_16]
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R13
      100 DUPCLOSURE                       R15 K27 [PROTO_28]
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R4
      115 RETURN                           R15 1

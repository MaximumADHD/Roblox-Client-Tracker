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
      175 GETUPVAL                         R17 8
      176 CALL                             R17 0 1
      177 JUMPIFNOT                        R17 ; [+2]
      178 LOADNIL                          R16
      179 JUMP                             ; [+2]
      180 GETIMPORT                        R16 K32 [Enum.InitialDockState.Bottom]
      182 SETTABLEKS                       R16 R15 K30 ["InitialDockState"]
      184 GETUPVAL                         R17 8
      185 CALL                             R17 0 1
      186 JUMPIFNOT                        R17 ; [+2]
      187 LOADNIL                          R16
      188 JUMP                             ; [+5]
      189 GETIMPORT                        R16 K34 [Vector2.new]
      191 LOADN                            R17 480
      192 LOADN                            R18 640
      193 CALL                             R16 2 1
      194 SETTABLEKS                       R16 R15 K35 ["Size"]
      196 GETUPVAL                         R17 8
      197 CALL                             R17 0 1
      198 JUMPIFNOT                        R17 ; [+2]
      199 LOADNIL                          R16
      200 JUMP                             ; [+5]
      201 GETIMPORT                        R16 K34 [Vector2.new]
      203 LOADN                            R17 250
      204 LOADN                            R18 200
      205 CALL                             R16 2 1
      206 SETTABLEKS                       R16 R15 K36 ["MinSize"]
      208 GETTABLEKS                       R16 R2 K37 ["onClose"]
      210 SETTABLEKS                       R16 R15 K38 ["OnClose"]
      212 LOADB                            R16 1
      213 SETTABLEKS                       R16 R15 K39 ["ShouldRestore"]
      215 GETTABLEKS                       R16 R2 K40 ["onRestore"]
      217 SETTABLEKS                       R16 R15 K41 ["OnWidgetRestored"]
      219 GETTABLEKS                       R16 R0 K42 ["PluginLoaderContext"]
      221 GETTABLEKS                       R16 R16 K43 ["mainDockWidget"]
      223 SETTABLEKS                       R16 R15 K44 ["Widget"]
      225 GETTABLEKS                       R16 R2 K45 ["onDockWidgetCreated"]
      227 SETTABLEKS                       R16 R15 K46 ["OnWidgetCreated"]
      229 SETTABLEKS                       R6 R15 K47 ["PluginDesign"]
      231 GETUPVAL                         R16 2
      232 GETTABLEKS                       R16 R16 K48 ["Change"]
      234 GETTABLEKS                       R16 R16 K22 ["Enabled"]
      236 GETTABLEKS                       R17 R2 K49 ["onWidgetEnabledChanged"]
      238 SETTABLE                         R17 R15 R16
      239 DUPTABLE                         R16 K51 [{"ContextStack"}]
      240 GETUPVAL                         R17 2
      241 GETTABLEKS                       R17 R17 K15 ["createElement"]
      243 GETUPVAL                         R18 9
      244 GETTABLEKS                       R18 R18 K50 ["ContextStack"]
      246 DUPTABLE                         R19 K53 [{"providers"}]
      247 NEWTABLE                         R20 0 28
      249 GETUPVAL                         R21 2
      250 GETTABLEKS                       R21 R21 K15 ["createElement"]
      252 GETUPVAL                         R22 4
      253 GETTABLEKS                       R22 R22 K54 ["Components"]
      255 GETTABLEKS                       R22 R22 K55 ["FoundationProviderAdapter"]
      257 DUPTABLE                         R23 K57 [{"onStyleSheetChange"}]
      258 SETTABLEKS                       R5 R23 K56 ["onStyleSheetChange"]
      260 CALL                             R21 2 1
      261 GETUPVAL                         R22 2
      262 GETTABLEKS                       R22 R22 K15 ["createElement"]
      264 GETUPVAL                         R23 4
      265 GETTABLEKS                       R23 R23 K58 ["Contexts"]
      267 GETTABLEKS                       R23 R23 K59 ["Localization"]
      269 GETTABLEKS                       R23 R23 K60 ["Provider"]
      271 DUPTABLE                         R24 K62 [{"localization"}]
      272 SETTABLEKS                       R8 R24 K61 ["localization"]
      274 CALL                             R22 2 1
      275 GETUPVAL                         R23 2
      276 GETTABLEKS                       R23 R23 K15 ["createElement"]
      278 GETUPVAL                         R24 10
      279 GETTABLEKS                       R24 R24 K63 ["Providers"]
      281 GETTABLEKS                       R24 R24 K64 ["StandaloneDataModel"]
      283 DUPTABLE                         R25 K68 [{"plugin", "pluginGui", "studioUri"}]
      284 GETTABLEKS                       R26 R0 K4 ["Plugin"]
      286 SETTABLEKS                       R26 R25 K65 ["plugin"]
      288 GETTABLEKS                       R26 R0 K42 ["PluginLoaderContext"]
      290 GETTABLEKS                       R26 R26 K43 ["mainDockWidget"]
      292 SETTABLEKS                       R26 R25 K66 ["pluginGui"]
      294 GETUPVAL                         R26 11
      295 SETTABLEKS                       R26 R25 K67 ["studioUri"]
      297 CALL                             R23 2 1
      298 GETUPVAL                         R24 2
      299 GETTABLEKS                       R24 R24 K15 ["createElement"]
      301 GETUPVAL                         R25 12
      302 GETTABLEKS                       R25 R25 K69 ["PropertyEntryProvider"]
      304 DUPTABLE                         R26 K71 [{"theme"}]
      305 SETTABLEKS                       R1 R26 K70 ["theme"]
      307 CALL                             R24 2 1
      308 GETUPVAL                         R25 2
      309 GETTABLEKS                       R25 R25 K15 ["createElement"]
      311 GETUPVAL                         R26 0
      312 GETTABLEKS                       R26 R26 K72 ["NetworkingContext"]
      314 GETTABLEKS                       R26 R26 K73 ["UIDataModelProvider"]
      316 CALL                             R25 1 1
      317 GETUPVAL                         R26 2
      318 GETTABLEKS                       R26 R26 K15 ["createElement"]
      320 GETUPVAL                         R27 0
      321 GETTABLEKS                       R27 R27 K74 ["VisibleContext"]
      323 GETTABLEKS                       R27 R27 K73 ["UIDataModelProvider"]
      325 DUPTABLE                         R28 K76 [{"isOpen"}]
      326 GETTABLEKS                       R29 R2 K20 ["enabledState"]
      328 GETTABLEKS                       R29 R29 K21 ["enabled"]
      330 SETTABLEKS                       R29 R28 K75 ["isOpen"]
      332 CALL                             R26 2 1
      333 GETUPVAL                         R27 2
      334 GETTABLEKS                       R27 R27 K15 ["createElement"]
      336 GETUPVAL                         R28 0
      337 GETTABLEKS                       R28 R28 K77 ["UIDataModelContexts"]
      339 DUPTABLE                         R29 K78 [{"plugin"}]
      340 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      342 SETTABLEKS                       R30 R29 K65 ["plugin"]
      344 CALL                             R27 2 1
      345 GETUPVAL                         R28 2
      346 GETTABLEKS                       R28 R28 K15 ["createElement"]
      348 GETUPVAL                         R29 0
      349 GETTABLEKS                       R29 R29 K79 ["AnimationParameterContext"]
      351 GETTABLEKS                       R29 R29 K73 ["UIDataModelProvider"]
      353 CALL                             R28 1 1
      354 GETUPVAL                         R29 2
      355 GETTABLEKS                       R29 R29 K15 ["createElement"]
      357 GETUPVAL                         R30 0
      358 GETTABLEKS                       R30 R30 K80 ["GraphingContexts"]
      360 CALL                             R29 1 1
      361 GETUPVAL                         R30 2
      362 GETTABLEKS                       R30 R30 K15 ["createElement"]
      364 GETUPVAL                         R31 0
      365 GETTABLEKS                       R31 R31 K81 ["AssetAccessContext"]
      367 GETTABLEKS                       R31 R31 K73 ["UIDataModelProvider"]
      369 CALL                             R30 1 1
      370 GETUPVAL                         R31 2
      371 GETTABLEKS                       R31 R31 K15 ["createElement"]
      373 GETUPVAL                         R32 0
      374 GETTABLEKS                       R32 R32 K82 ["GameContext"]
      376 GETTABLEKS                       R32 R32 K73 ["UIDataModelProvider"]
      378 CALL                             R31 1 1
      379 GETUPVAL                         R33 13
      380 CALL                             R33 0 1
      381 JUMPIFNOT                        R33 ; [+8]
      382 GETUPVAL                         R32 2
      383 GETTABLEKS                       R32 R32 K15 ["createElement"]
      385 GETUPVAL                         R33 2
      386 GETTABLEKS                       R33 R33 K83 ["Fragment"]
      388 CALL                             R32 1 1
      389 JUMP                             ; [+9]
      390 GETUPVAL                         R32 2
      391 GETTABLEKS                       R32 R32 K15 ["createElement"]
      393 GETUPVAL                         R33 0
      394 GETTABLEKS                       R33 R33 K84 ["GraphDebugDataContext"]
      396 GETTABLEKS                       R33 R33 K73 ["UIDataModelProvider"]
      398 CALL                             R32 1 1
      399 GETUPVAL                         R34 13
      400 CALL                             R34 0 1
      401 JUMPIFNOT                        R34 ; [+8]
      402 GETUPVAL                         R33 2
      403 GETTABLEKS                       R33 R33 K15 ["createElement"]
      405 GETUPVAL                         R34 2
      406 GETTABLEKS                       R34 R34 K83 ["Fragment"]
      408 CALL                             R33 1 1
      409 JUMP                             ; [+9]
      410 GETUPVAL                         R33 2
      411 GETTABLEKS                       R33 R33 K15 ["createElement"]
      413 GETUPVAL                         R34 0
      414 GETTABLEKS                       R34 R34 K85 ["GraphPlayedContext"]
      416 GETTABLEKS                       R34 R34 K73 ["UIDataModelProvider"]
      418 CALL                             R33 1 1
      419 GETUPVAL                         R34 2
      420 GETTABLEKS                       R34 R34 K15 ["createElement"]
      422 GETUPVAL                         R35 0
      423 GETTABLEKS                       R35 R35 K86 ["PopupContext"]
      425 GETTABLEKS                       R35 R35 K87 ["StudioProvider"]
      427 CALL                             R34 1 1
      428 GETUPVAL                         R35 2
      429 GETTABLEKS                       R35 R35 K15 ["createElement"]
      431 GETUPVAL                         R36 0
      432 GETTABLEKS                       R36 R36 K88 ["PlayStateContext"]
      434 GETTABLEKS                       R36 R36 K73 ["UIDataModelProvider"]
      436 DUPTABLE                         R37 K90 [{"isOpen", "defaultPlayingState"}]
      437 GETTABLEKS                       R38 R2 K20 ["enabledState"]
      439 GETTABLEKS                       R38 R38 K21 ["enabled"]
      441 SETTABLEKS                       R38 R37 K75 ["isOpen"]
      443 GETUPVAL                         R39 13
      444 CALL                             R39 0 1
      445 JUMPIFNOT                        R39 ; [+2]
      446 LOADB                            R38 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R38
      449 SETTABLEKS                       R38 R37 K89 ["defaultPlayingState"]
      451 CALL                             R35 2 1
      452 GETUPVAL                         R36 2
      453 GETTABLEKS                       R36 R36 K15 ["createElement"]
      455 GETUPVAL                         R37 0
      456 GETTABLEKS                       R37 R37 K91 ["MaskEditorVisibilityContext"]
      458 GETTABLEKS                       R37 R37 K60 ["Provider"]
      460 CALL                             R36 1 1
      461 SETLIST                          R20 R21 16 [1]
      463 GETUPVAL                         R21 2
      464 GETTABLEKS                       R21 R21 K15 ["createElement"]
      466 GETUPVAL                         R22 0
      467 GETTABLEKS                       R22 R22 K92 ["MaskEditorContext"]
      469 GETTABLEKS                       R22 R22 K73 ["UIDataModelProvider"]
      471 CALL                             R21 1 1
      472 GETUPVAL                         R22 2
      473 GETTABLEKS                       R22 R22 K15 ["createElement"]
      475 GETUPVAL                         R23 0
      476 GETTABLEKS                       R23 R23 K93 ["NativeGraphContext"]
      478 GETTABLEKS                       R23 R23 K73 ["UIDataModelProvider"]
      480 CALL                             R22 1 1
      481 GETUPVAL                         R23 2
      482 GETTABLEKS                       R23 R23 K15 ["createElement"]
      484 GETUPVAL                         R24 0
      485 GETTABLEKS                       R24 R24 K80 ["GraphingContexts"]
      487 CALL                             R23 1 1
      488 GETUPVAL                         R25 13
      489 CALL                             R25 0 1
      490 JUMPIFNOT                        R25 ; [+10]
      491 GETUPVAL                         R24 2
      492 GETTABLEKS                       R24 R24 K15 ["createElement"]
      494 GETUPVAL                         R25 2
      495 GETTABLEKS                       R25 R25 K83 ["Fragment"]
      497 NEWTABLE                         R26 0 0
      499 CALL                             R24 2 1
      500 JUMP                             ; [+9]
      501 GETUPVAL                         R24 2
      502 GETTABLEKS                       R24 R24 K15 ["createElement"]
      504 GETUPVAL                         R25 0
      505 GETTABLEKS                       R25 R25 K94 ["RigListContext"]
      507 GETTABLEKS                       R25 R25 K73 ["UIDataModelProvider"]
      509 CALL                             R24 1 1
      510 GETUPVAL                         R26 13
      511 CALL                             R26 0 1
      512 JUMPIFNOT                        R26 ; [+8]
      513 GETUPVAL                         R25 2
      514 GETTABLEKS                       R25 R25 K15 ["createElement"]
      516 GETUPVAL                         R26 2
      517 GETTABLEKS                       R26 R26 K83 ["Fragment"]
      519 CALL                             R25 1 1
      520 JUMP                             ; [+9]
      521 GETUPVAL                         R25 2
      522 GETTABLEKS                       R25 R25 K15 ["createElement"]
      524 GETUPVAL                         R26 0
      525 GETTABLEKS                       R26 R26 K95 ["GraphTimestampContext"]
      527 GETTABLEKS                       R26 R26 K73 ["UIDataModelProvider"]
      529 CALL                             R25 1 1
      530 GETUPVAL                         R27 13
      531 CALL                             R27 0 1
      532 JUMPIFNOT                        R27 ; [+8]
      533 GETUPVAL                         R26 2
      534 GETTABLEKS                       R26 R26 K15 ["createElement"]
      536 GETUPVAL                         R27 2
      537 GETTABLEKS                       R27 R27 K83 ["Fragment"]
      539 CALL                             R26 1 1
      540 JUMP                             ; [+9]
      541 GETUPVAL                         R26 2
      542 GETTABLEKS                       R26 R26 K15 ["createElement"]
      544 GETUPVAL                         R27 0
      545 GETTABLEKS                       R27 R27 K96 ["CreateGraphContext"]
      547 GETTABLEKS                       R27 R27 K73 ["UIDataModelProvider"]
      549 CALL                             R26 1 1
      550 GETUPVAL                         R28 13
      551 CALL                             R28 0 1
      552 JUMPIFNOT                        R28 ; [+8]
      553 GETUPVAL                         R27 2
      554 GETTABLEKS                       R27 R27 K15 ["createElement"]
      556 GETUPVAL                         R28 2
      557 GETTABLEKS                       R28 R28 K83 ["Fragment"]
      559 CALL                             R27 1 1
      560 JUMP                             ; [+14]
      561 GETUPVAL                         R27 2
      562 GETTABLEKS                       R27 R27 K15 ["createElement"]
      564 GETUPVAL                         R28 0
      565 GETTABLEKS                       R28 R28 K97 ["CreateScriptContext"]
      567 GETTABLEKS                       R28 R28 K73 ["UIDataModelProvider"]
      569 DUPTABLE                         R29 K78 [{"plugin"}]
      570 GETTABLEKS                       R30 R0 K4 ["Plugin"]
      572 SETTABLEKS                       R30 R29 K65 ["plugin"]
      574 CALL                             R27 2 1
      575 GETUPVAL                         R28 2
      576 GETTABLEKS                       R28 R28 K15 ["createElement"]
      578 GETUPVAL                         R29 0
      579 GETTABLEKS                       R29 R29 K98 ["GraphDropdownContext"]
      581 GETTABLEKS                       R29 R29 K73 ["UIDataModelProvider"]
      583 CALL                             R28 1 1
      584 GETUPVAL                         R29 2
      585 GETTABLEKS                       R29 R29 K15 ["createElement"]
      587 GETUPVAL                         R30 0
      588 GETTABLEKS                       R30 R30 K99 ["GraphDirtyStateContext"]
      590 GETTABLEKS                       R30 R30 K73 ["UIDataModelProvider"]
      592 CALL                             R29 1 1
      593 GETUPVAL                         R31 13
      594 CALL                             R31 0 1
      595 JUMPIFNOT                        R31 ; [+8]
      596 GETUPVAL                         R30 2
      597 GETTABLEKS                       R30 R30 K15 ["createElement"]
      599 GETUPVAL                         R31 2
      600 GETTABLEKS                       R31 R31 K83 ["Fragment"]
      602 CALL                             R30 1 1
      603 JUMP                             ; [+9]
      604 GETUPVAL                         R30 2
      605 GETTABLEKS                       R30 R30 K15 ["createElement"]
      607 GETUPVAL                         R31 0
      608 GETTABLEKS                       R31 R31 K100 ["MenuItemsContext"]
      610 GETTABLEKS                       R31 R31 K60 ["Provider"]
      612 CALL                             R30 1 1
      613 GETUPVAL                         R31 2
      614 GETTABLEKS                       R31 R31 K15 ["createElement"]
      616 GETUPVAL                         R32 12
      617 GETTABLEKS                       R32 R32 K101 ["AssetPickerProvider"]
      619 GETTABLEKS                       R32 R32 K87 ["StudioProvider"]
      621 DUPTABLE                         R33 K103 [{"plugin", "theme", "studioService"}]
      622 GETTABLEKS                       R34 R0 K4 ["Plugin"]
      624 SETTABLEKS                       R34 R33 K65 ["plugin"]
      626 SETTABLEKS                       R1 R33 K70 ["theme"]
      628 GETUPVAL                         R34 14
      629 SETTABLEKS                       R34 R33 K102 ["studioService"]
      631 CALL                             R31 2 1
      632 GETUPVAL                         R32 2
      633 GETTABLEKS                       R32 R32 K15 ["createElement"]
      635 GETUPVAL                         R33 0
      636 GETTABLEKS                       R33 R33 K104 ["InputSelectionContext"]
      638 GETTABLEKS                       R33 R33 K60 ["Provider"]
      640 CALL                             R32 1 -1
      641 SETLIST                          R20 R21 -1 [17]
      643 SETTABLEKS                       R20 R19 K52 ["providers"]
      645 DUPTABLE                         R20 K106 [{"MainView"}]
      646 GETUPVAL                         R21 2
      647 GETTABLEKS                       R21 R21 K15 ["createElement"]
      649 GETUPVAL                         R22 15
      650 DUPTABLE                         R23 K107 [{"pluginGui"}]
      651 GETTABLEKS                       R24 R0 K42 ["PluginLoaderContext"]
      653 GETTABLEKS                       R24 R24 K43 ["mainDockWidget"]
      655 SETTABLEKS                       R24 R23 K66 ["pluginGui"]
      657 CALL                             R21 2 1
      658 SETTABLEKS                       R21 R20 K105 ["MainView"]
      660 CALL                             R17 3 1
      661 SETTABLEKS                       R17 R16 K50 ["ContextStack"]
      663 CALL                             R13 3 1
      664 SETTABLEKS                       R13 R12 K13 ["MainWidget"]
      666 CALL                             R10 2 -1
      667 RETURN                           R10 -1

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
       90 GETTABLEKS                       R13 R13 K24 ["getFFlagAnimGraphUI_LeftDockWidget"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Src"]
       97 GETTABLEKS                       R14 R14 K23 ["Flags"]
       99 GETTABLEKS                       R14 R14 K25 ["getFFlagAnimGraphUI_RunTimeDebug"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [game]
      104 LOADK                            R16 K26 ["AnimGraphUI_PreInit2"]
      105 LOADB                            R17 0
      106 NAMECALL                         R14 R14 K27 ["DefineFastFlag"]
      108 CALL                             R14 3 1
      109 DUPCLOSURE                       R15 K28 [PROTO_2]
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R16 K29 [PROTO_16]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R15
      116 DUPCLOSURE                       R17 K30 [PROTO_28]
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R1
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R4
      133 RETURN                           R17 1

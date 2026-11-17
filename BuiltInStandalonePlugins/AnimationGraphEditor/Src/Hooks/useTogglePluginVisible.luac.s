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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["enabled"]
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQ                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["current"]
        9 GETIMPORT                        R1 K3 [task.spawn]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 0
        5 CALL                             R0 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K0 ["enabled"]
       10 JUMPIFNOT                        R0 ; [+6]
       11 GETIMPORT                        R0 K3 [task.spawn]
       13 NEWCLOSURE                       R1 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 GETTABLEKS                       R1 R0 K0 ["Enabled"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["enabled"]
       13 JUMPIFEQ                         R1 R2 ; [+7]
       15 GETIMPORT                        R1 K4 [task.spawn]
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["Checked"]
        6 SETTABLEKS                       R2 R1 K1 ["current"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["set"]
       11 GETTABLEKS                       R2 R0 K0 ["Checked"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R1 R1 K0 ["BindToChangedAsync"]
        5 CALL                             R1 2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NAMECALL                         R1 R1 K1 ["Connect"]
       12 CALL                             R1 2 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K0 ["enabled"]
       10 JUMPIFEQ                         R1 R0 ; [+7]
       12 GETIMPORT                        R1 K3 [task.spawn]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_19:
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
       27 GETTABLEKS                       R4 R4 K4 ["useRef"]
       29 GETTABLEKS                       R5 R1 K5 ["enabled"]
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K6 ["useEffect"]
       35 NEWCLOSURE                       R6 P3
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R1 K5 ["enabled"]
       43 SETLIST                          R7 R8 1 [1]
       45 CALL                             R5 2 0
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       49 NEWCLOSURE                       R6 P4
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R7 0 2
       55 MOVE                             R8 R2
       56 MOVE                             R9 R3
       57 SETLIST                          R7 R8 2 [1]
       59 CALL                             R5 2 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       63 NEWCLOSURE                       R7 P5
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R8 0 4
       71 MOVE                             R9 R2
       72 GETTABLEKS                       R10 R1 K8 ["enable"]
       74 GETTABLEKS                       R11 R1 K5 ["enabled"]
       76 MOVE                             R12 R5
       77 SETLIST                          R8 R9 4 [1]
       79 CALL                             R6 2 1
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       83 NEWCLOSURE                       R8 P6
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R9 0 5
       91 MOVE                             R10 R2
       92 GETTABLEKS                       R11 R1 K8 ["enable"]
       94 GETTABLEKS                       R12 R1 K5 ["enabled"]
       96 MOVE                             R13 R3
       97 MOVE                             R14 R5
       98 SETLIST                          R9 R10 5 [1]
      100 CALL                             R7 2 1
      101 GETUPVAL                         R8 4
      102 CALL                             R8 0 1
      103 GETUPVAL                         R9 1
      104 GETTABLEKS                       R9 R9 K6 ["useEffect"]
      106 NEWCLOSURE                       R10 P7
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R3
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R1
      113 NEWTABLE                         R11 0 4
      115 MOVE                             R12 R8
      116 MOVE                             R13 R2
      117 GETTABLEKS                       R14 R1 K9 ["set"]
      119 MOVE                             R15 R3
      120 SETLIST                          R11 R12 4 [1]
      122 CALL                             R9 2 0
      123 GETUPVAL                         R9 4
      124 CALL                             R9 0 1
      125 GETUPVAL                         R10 1
      126 GETTABLEKS                       R10 R10 K7 ["useCallback"]
      128 NEWCLOSURE                       R11 P8
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R1
      132 NEWTABLE                         R12 0 3
      134 MOVE                             R13 R9
      135 GETTABLEKS                       R14 R0 K10 ["PluginLoaderContext"]
      137 GETTABLEKS                       R15 R1 K11 ["toggle"]
      139 SETLIST                          R12 R13 3 [1]
      141 CALL                             R10 2 1
      142 GETUPVAL                         R11 1
      143 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      145 NEWCLOSURE                       R12 P9
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R13 0 5
      153 MOVE                             R14 R2
      154 GETTABLEKS                       R15 R1 K8 ["enable"]
      156 GETTABLEKS                       R16 R1 K5 ["enabled"]
      158 MOVE                             R17 R3
      159 MOVE                             R18 R5
      160 SETLIST                          R13 R14 5 [1]
      162 CALL                             R11 2 1
      163 DUPTABLE                         R12 K17 [{"enabledState", "onClose", "onWidgetEnabledChanged", "onDockWidgetCreated", "onRestore"}]
      164 SETTABLEKS                       R1 R12 K12 ["enabledState"]
      166 SETTABLEKS                       R6 R12 K13 ["onClose"]
      168 SETTABLEKS                       R7 R12 K14 ["onWidgetEnabledChanged"]
      170 SETTABLEKS                       R10 R12 K15 ["onDockWidgetCreated"]
      172 SETTABLEKS                       R11 R12 K16 ["onRestore"]
      174 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
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
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagAnimGraphUI_FixCloseReopens"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K13 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R6 K14 [PROTO_19]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1

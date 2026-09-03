PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Release"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["shouldFocusProperties"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["dockWidget"]
       10 NAMECALL                         R0 R0 K2 ["RequestRaise"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K3 ["onActionActivated"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 NAMECALL                         R0 R0 K2 ["Connect"]
       13 CALL                             R0 2 1
       14 SETUPVAL                         R0 0
       15 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        6 GETIMPORT                        R3 K3 [Enum.UserInputType.Keyboard]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETTABLEKS                       R7 R0 K4 ["KeyCode"]
       17 JUMPIFNOTEQ                      R7 R6 ; [+6]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K5 ["onActionActivated"]
       22 CALL                             R7 0 0
       23 RETURN                           R0 0
       24 FORGLOOP                         R2 2 ; [-10]
       26 RETURN                           R0 0

PROTO_9:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R3 R2 K0 ["kind"]
        4 JUMPIFNOTEQKS                    R3 K1 ["studioActionOverride"] ; [+66]
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIF                           R3 ; [+12]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["ActionContext.bindToAction override requires FFlagStudioActionOverrideAPI2, returning dummy"]
       12 CALL                             R3 1 0
       13 DUPTABLE                         R3 K7 [{"setEnabled", "disconnect"}]
       14 DUPCLOSURE                       R4 K8 [PROTO_0]
       15 SETTABLEKS                       R4 R3 K5 ["setEnabled"]
       17 DUPCLOSURE                       R4 K9 [PROTO_1]
       18 SETTABLEKS                       R4 R3 K6 ["disconnect"]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R1 K10 ["scope"]
       23 JUMPIFNOTEQKNIL                  R3 ; [+10]
       25 GETIMPORT                        R4 K12 [error]
       27 LOADK                            R6 K13 ["no scope provided for studio action override \"%*\""]
       28 MOVE                             R8 R0
       29 NAMECALL                         R6 R6 K14 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 CALL                             R4 1 0
       34 LOADK                            R6 K15 ["PluginGui"]
       35 NAMECALL                         R4 R3 K16 ["FindFirstAncestorWhichIsA"]
       37 CALL                             R4 2 1
       38 JUMPIFNOTEQKNIL                  R4 ; [+5]
       40 GETIMPORT                        R5 K12 [error]
       42 LOADK                            R6 K17 ["no plugin gui ancestor found for scope"]
       43 CALL                             R5 1 0
       44 GETTABLEKS                       R7 R2 K18 ["studioAction"]
       46 NAMECALL                         R5 R4 K19 ["OverrideStudioAction"]
       48 CALL                             R5 2 1
       49 GETTABLEKS                       R6 R1 K20 ["isEnabled"]
       51 SETTABLEKS                       R6 R5 K21 ["Enabled"]
       53 GETTABLEKS                       R6 R5 K22 ["Triggered"]
       55 GETTABLEKS                       R8 R1 K23 ["onActionActivated"]
       57 NAMECALL                         R6 R6 K24 ["Connect"]
       59 CALL                             R6 2 1
       60 DUPTABLE                         R7 K7 [{"setEnabled", "disconnect"}]
       61 NEWCLOSURE                       R8 P2
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R8 R7 K5 ["setEnabled"]
       65 NEWCLOSURE                       R8 P3
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R8 R7 K6 ["disconnect"]
       70 RETURN                           R7 1
       71 GETTABLEKS                       R3 R2 K0 ["kind"]
       73 JUMPIFNOTEQKS                    R3 K18 ["studioAction"] ; [+27]
       75 GETTABLEKS                       R3 R1 K20 ["isEnabled"]
       77 LOADNIL                          R4
       78 GETIMPORT                        R5 K27 [task.spawn]
       80 NEWCLOSURE                       R6 P4
       81 CAPTURE                          REF R4
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R2
       84 CAPTURE                          REF R3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          UPVAL U3
       87 CALL                             R5 1 1
       88 DUPTABLE                         R6 K7 [{"setEnabled", "disconnect"}]
       89 NEWCLOSURE                       R7 P5
       90 CAPTURE                          REF R3
       91 SETTABLEKS                       R7 R6 K5 ["setEnabled"]
       93 NEWCLOSURE                       R7 P6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          REF R4
       96 SETTABLEKS                       R7 R6 K6 ["disconnect"]
       98 CLOSEUPVALS                      R3
       99 RETURN                           R6 1
      100 CLOSEUPVALS                      R3
      101 GETTABLEKS                       R3 R2 K0 ["kind"]
      103 JUMPIFNOTEQKS                    R3 K28 ["pluginKeyboardShortcut"] ; [+49]
      105 GETTABLEKS                       R3 R1 K10 ["scope"]
      107 JUMPIFNOTEQKNIL                  R3 ; [+10]
      109 GETIMPORT                        R4 K12 [error]
      111 LOADK                            R6 K29 ["no scope provided for keyboard shortcut \"%*\""]
      112 MOVE                             R8 R0
      113 NAMECALL                         R6 R6 K14 ["format"]
      115 CALL                             R6 2 1
      116 MOVE                             R5 R6
      117 CALL                             R4 1 0
      118 LOADK                            R6 K15 ["PluginGui"]
      119 NAMECALL                         R4 R3 K16 ["FindFirstAncestorWhichIsA"]
      121 CALL                             R4 2 1
      122 JUMPIFNOTEQKNIL                  R4 ; [+5]
      124 GETIMPORT                        R5 K12 [error]
      126 LOADK                            R6 K17 ["no plugin gui ancestor found for scope"]
      127 CALL                             R5 1 0
      128 GETTABLEKS                       R5 R1 K20 ["isEnabled"]
      130 GETTABLEKS                       R6 R2 K30 ["keyCodes"]
      132 GETTABLEKS                       R7 R4 K31 ["InputBegan"]
      134 NEWCLOSURE                       R9 P7
      135 CAPTURE                          REF R5
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R1
      138 NAMECALL                         R7 R7 K24 ["Connect"]
      140 CALL                             R7 2 1
      141 DUPTABLE                         R8 K7 [{"setEnabled", "disconnect"}]
      142 NEWCLOSURE                       R9 P8
      143 CAPTURE                          REF R5
      144 SETTABLEKS                       R9 R8 K5 ["setEnabled"]
      146 NEWCLOSURE                       R9 P9
      147 CAPTURE                          VAL R7
      148 SETTABLEKS                       R9 R8 K6 ["disconnect"]
      150 CLOSEUPVALS                      R5
      151 RETURN                           R8 1
      152 CLOSEUPVALS                      R5
      153 GETIMPORT                        R3 K12 [error]
      155 LOADK                            R5 K32 ["Unrecognized ActionDescriptor.kind: %*"]
      156 GETTABLEKS                       R7 R2 K0 ["kind"]
      158 NAMECALL                         R5 R5 K14 ["format"]
      160 CALL                             R5 2 1
      161 MOVE                             R4 R5
      162 CALL                             R3 1 0
      163 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["Actions"]
        3 NAMECALL                         R1 R1 K2 ["GetPluginComponent"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 0 3
       16 GETTABLEKS                       R5 R0 K0 ["plugin"]
       18 GETTABLEKS                       R6 R0 K4 ["dockWidget"]
       20 MOVE                             R7 R1
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R4 R4 K5 ["Components"]
       28 GETTABLEKS                       R4 R4 K6 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K7 ["ActionContextProvider"]
       32 DUPTABLE                         R5 K9 [{"bindToAction"}]
       33 SETTABLEKS                       R2 R5 K8 ["bindToAction"]
       35 GETTABLEKS                       R6 R0 K10 ["children"]
       37 CALL                             R3 3 -1
       38 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagStudioActionOverrideAPI2"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       41 GETTABLEKS                       R6 R2 K15 ["createElement"]
       43 DUPTABLE                         R7 K20 [{"Copy", "Paste", "Delete", "ClearSelection"}]
       44 DUPTABLE                         R8 K24 [{["kind"] = "studioActionOverride", ["studioAction"]}]
       45 GETIMPORT                        R9 K27 [Enum.StudioAction.Copy]
       47 SETTABLEKS                       R9 R8 K23 ["studioAction"]
       49 SETTABLEKS                       R8 R7 K16 ["Copy"]
       51 DUPTABLE                         R8 K24 [{["kind"] = "studioActionOverride", ["studioAction"]}]
       52 GETIMPORT                        R9 K28 [Enum.StudioAction.Paste]
       54 SETTABLEKS                       R9 R8 K23 ["studioAction"]
       56 SETTABLEKS                       R8 R7 K17 ["Paste"]
       58 DUPTABLE                         R8 K31 [{["kind"] = "pluginKeyboardShortcut", ["keyCodes"]}]
       59 NEWTABLE                         R9 0 2
       61 GETIMPORT                        R10 K33 [Enum.KeyCode.Delete]
       63 GETIMPORT                        R11 K35 [Enum.KeyCode.Backspace]
       65 SETLIST                          R9 R10 2 [1]
       67 SETTABLEKS                       R9 R8 K30 ["keyCodes"]
       69 SETTABLEKS                       R8 R7 K18 ["Delete"]
       71 DUPTABLE                         R8 K37 [{["kind"] = "studioAction", ["uri"]}]
       72 GETTABLEKS                       R9 R5 K38 ["fromAction"]
       74 LOADK                            R10 K39 ["BuilderTools"]
       75 LOADK                            R11 K19 ["ClearSelection"]
       76 CALL                             R9 2 1
       77 SETTABLEKS                       R9 R8 K36 ["uri"]
       79 SETTABLEKS                       R8 R7 K19 ["ClearSelection"]
       81 DUPCLOSURE                       R8 K40 [PROTO_12]
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R1
       87 RETURN                           R8 1

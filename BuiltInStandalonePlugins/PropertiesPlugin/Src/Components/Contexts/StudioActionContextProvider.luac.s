PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Release"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K3 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEKS                       R3 R2 K0 ["kind"]
        4 JUMPIFNOTEQKS                    R3 K1 ["studioActionOverride"] ; [+50]
        6 GETTABLEKS                       R3 R1 K2 ["scope"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+9]
       10 GETIMPORT                        R4 K4 [error]
       12 LOADK                            R5 K5 ["no scope provided for studio action override \"%*\""]
       13 MOVE                             R7 R0
       14 NAMECALL                         R5 R5 K6 ["format"]
       16 CALL                             R5 2 1
       17 CALL                             R4 1 0
       18 LOADK                            R6 K7 ["PluginGui"]
       19 NAMECALL                         R4 R3 K8 ["FindFirstAncestorWhichIsA"]
       21 CALL                             R4 2 1
       22 JUMPIFNOTEQKNIL                  R4 ; [+5]
       24 GETIMPORT                        R5 K4 [error]
       26 LOADK                            R6 K9 ["no plugin gui ancestor found for scope"]
       27 CALL                             R5 1 0
       28 GETTABLEKS                       R7 R2 K10 ["studioAction"]
       30 NAMECALL                         R5 R4 K11 ["OverrideStudioAction"]
       32 CALL                             R5 2 1
       33 GETTABLEKS                       R6 R1 K12 ["isEnabled"]
       35 SETTABLEKS                       R6 R5 K13 ["Enabled"]
       37 GETTABLEKS                       R6 R5 K14 ["Triggered"]
       39 GETTABLEKS                       R8 R1 K15 ["onActionActivated"]
       41 NAMECALL                         R6 R6 K16 ["Connect"]
       43 CALL                             R6 2 1
       44 DUPTABLE                         R7 K19 [{"setEnabled", "disconnect"}]
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R8 R7 K17 ["setEnabled"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R8 R7 K18 ["disconnect"]
       54 RETURN                           R7 1
       55 GETTABLEKS                       R3 R2 K0 ["kind"]
       57 JUMPIFNOTEQKS                    R3 K10 ["studioAction"] ; [+26]
       59 GETTABLEKS                       R3 R1 K12 ["isEnabled"]
       61 LOADNIL                          R4
       62 GETIMPORT                        R5 K22 [task.spawn]
       64 NEWCLOSURE                       R6 P2
       65 CAPTURE                          REF R4
       66 CAPTURE                          UPVAL U1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          REF R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          UPVAL U2
       71 CALL                             R5 1 1
       72 DUPTABLE                         R6 K19 [{"setEnabled", "disconnect"}]
       73 NEWCLOSURE                       R7 P3
       74 CAPTURE                          REF R3
       75 SETTABLEKS                       R7 R6 K17 ["setEnabled"]
       77 NEWCLOSURE                       R7 P4
       78 CAPTURE                          VAL R5
       79 CAPTURE                          REF R4
       80 SETTABLEKS                       R7 R6 K18 ["disconnect"]
       82 CLOSEUPVALS                      R3
       83 RETURN                           R6 1
       84 GETTABLEKS                       R3 R2 K0 ["kind"]
       86 JUMPIFNOTEQKS                    R3 K23 ["pluginKeyboardShortcut"] ; [+47]
       88 GETTABLEKS                       R3 R1 K2 ["scope"]
       90 JUMPIFNOTEQKNIL                  R3 ; [+9]
       92 GETIMPORT                        R4 K4 [error]
       94 LOADK                            R5 K24 ["no scope provided for keyboard shortcut \"%*\""]
       95 MOVE                             R7 R0
       96 NAMECALL                         R5 R5 K6 ["format"]
       98 CALL                             R5 2 1
       99 CALL                             R4 1 0
      100 LOADK                            R6 K7 ["PluginGui"]
      101 NAMECALL                         R4 R3 K8 ["FindFirstAncestorWhichIsA"]
      103 CALL                             R4 2 1
      104 JUMPIFNOTEQKNIL                  R4 ; [+5]
      106 GETIMPORT                        R5 K4 [error]
      108 LOADK                            R6 K9 ["no plugin gui ancestor found for scope"]
      109 CALL                             R5 1 0
      110 GETTABLEKS                       R5 R1 K12 ["isEnabled"]
      112 GETTABLEKS                       R6 R2 K25 ["keyCodes"]
      114 GETTABLEKS                       R7 R4 K26 ["InputBegan"]
      116 NEWCLOSURE                       R9 P5
      117 CAPTURE                          REF R5
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R1
      120 NAMECALL                         R7 R7 K16 ["Connect"]
      122 CALL                             R7 2 1
      123 DUPTABLE                         R8 K19 [{"setEnabled", "disconnect"}]
      124 NEWCLOSURE                       R9 P6
      125 CAPTURE                          REF R5
      126 SETTABLEKS                       R9 R8 K17 ["setEnabled"]
      128 NEWCLOSURE                       R9 P7
      129 CAPTURE                          VAL R7
      130 SETTABLEKS                       R9 R8 K18 ["disconnect"]
      132 CLOSEUPVALS                      R5
      133 RETURN                           R8 1
      134 GETIMPORT                        R3 K4 [error]
      136 LOADK                            R4 K27 ["Unrecognized ActionDescriptor.kind: %*"]
      137 GETTABLEKS                       R6 R2 K0 ["kind"]
      139 NAMECALL                         R4 R4 K6 ["format"]
      141 CALL                             R4 2 1
      142 CALL                             R3 1 0
      143 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["Actions"]
        3 NAMECALL                         R1 R1 K2 ["GetPluginComponent"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["useCallback"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K0 ["plugin"]
       17 GETTABLEKS                       R6 R0 K4 ["dockWidget"]
       19 MOVE                             R7 R1
       20 SETLIST                          R4 R5 3 [1]
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 2
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K5 ["Components"]
       27 GETTABLEKS                       R4 R4 K6 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K7 ["ActionContextProvider"]
       31 DUPTABLE                         R5 K9 [{"bindToAction"}]
       32 SETTABLEKS                       R2 R5 K8 ["bindToAction"]
       34 GETTABLEKS                       R6 R0 K10 ["children"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

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
       28 GETTABLEKS                       R4 R3 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       32 GETTABLEKS                       R5 R2 K12 ["createElement"]
       34 DUPTABLE                         R6 K17 [{"Copy", "Paste", "Delete", "ClearSelection"}]
       35 DUPTABLE                         R7 K21 [{["kind"] = "studioActionOverride", ["studioAction"]}]
       36 GETIMPORT                        R8 K24 [Enum.StudioAction.Copy]
       38 SETTABLEKS                       R8 R7 K20 ["studioAction"]
       40 SETTABLEKS                       R7 R6 K13 ["Copy"]
       42 DUPTABLE                         R7 K21 [{["kind"] = "studioActionOverride", ["studioAction"]}]
       43 GETIMPORT                        R8 K25 [Enum.StudioAction.Paste]
       45 SETTABLEKS                       R8 R7 K20 ["studioAction"]
       47 SETTABLEKS                       R7 R6 K14 ["Paste"]
       49 DUPTABLE                         R7 K28 [{["kind"] = "pluginKeyboardShortcut", ["keyCodes"]}]
       50 NEWTABLE                         R8 0 2
       52 GETIMPORT                        R9 K30 [Enum.KeyCode.Delete]
       54 GETIMPORT                        R10 K32 [Enum.KeyCode.Backspace]
       56 SETLIST                          R8 R9 2 [1]
       58 SETTABLEKS                       R8 R7 K27 ["keyCodes"]
       60 SETTABLEKS                       R7 R6 K15 ["Delete"]
       62 DUPTABLE                         R7 K34 [{["kind"] = "studioAction", ["uri"]}]
       63 GETTABLEKS                       R8 R4 K35 ["fromAction"]
       65 LOADK                            R9 K36 ["BuilderTools"]
       66 LOADK                            R10 K16 ["ClearSelection"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K33 ["uri"]
       70 SETTABLEKS                       R7 R6 K16 ["ClearSelection"]
       72 DUPCLOSURE                       R7 K37 [PROTO_10]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R1
       77 RETURN                           R7 1

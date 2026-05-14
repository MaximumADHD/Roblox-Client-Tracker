PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 JUMPIFNOT                        R1 ; [+50]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 NEWTABLE                         R3 0 5
        9 LOADK                            R6 K2 ["DeleteEvents"]
       10 NAMECALL                         R4 R1 K3 ["get"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["MENU_SEPARATOR"]
       16 LOADK                            R8 K5 ["CutEvents"]
       17 NAMECALL                         R6 R1 K3 ["get"]
       19 CALL                             R6 2 1
       20 LOADK                            R9 K6 ["CopyEvents"]
       21 NAMECALL                         R7 R1 K3 ["get"]
       23 CALL                             R7 2 1
       24 LOADK                            R10 K7 ["PasteEvents"]
       25 NAMECALL                         R8 R1 K3 ["get"]
       27 CALL                             R8 2 -1
       28 SETLIST                          R3 R4 -1 [1]
       30 GETTABLEKS                       R4 R2 K8 ["OnEvent"]
       32 JUMPIFNOT                        R4 ; [+11]
       33 MOVE                             R5 R3
       34 LOADN                            R6 1
       35 LOADK                            R9 K9 ["EditEvents"]
       36 NAMECALL                         R7 R1 K3 ["get"]
       38 CALL                             R7 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R4 K12 [table.insert]
       42 CALL                             R4 -1 0
       43 RETURN                           R3 1
       44 MOVE                             R5 R3
       45 LOADN                            R6 1
       46 LOADK                            R9 K13 ["AddEvent"]
       47 NAMECALL                         R7 R1 K3 ["get"]
       49 CALL                             R7 2 -1
       50 FASTCALL                         TABLE_INSERT ; [+2]
       51 GETIMPORT                        R4 K12 [table.insert]
       53 CALL                             R4 -1 0
       54 RETURN                           R3 1
       55 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 JUMPIFNOT                        R1 ; [+35]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 NEWTABLE                         R3 0 6
        9 GETTABLEKS                       R7 R2 K2 ["OnEvent"]
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADK                            R6 K3 ["EditEvents"]
       13 JUMP                             ; [+1]
       14 LOADK                            R6 K4 ["AddEvent"]
       15 NAMECALL                         R4 R1 K5 ["get"]
       17 CALL                             R4 2 1
       18 LOADK                            R7 K6 ["DeleteEvents"]
       19 NAMECALL                         R5 R1 K5 ["get"]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K7 ["MENU_SEPARATOR"]
       25 LOADK                            R9 K8 ["CutEvents"]
       26 NAMECALL                         R7 R1 K5 ["get"]
       28 CALL                             R7 2 1
       29 LOADK                            R10 K9 ["CopyEvents"]
       30 NAMECALL                         R8 R1 K5 ["get"]
       32 CALL                             R8 2 1
       33 LOADK                            R11 K10 ["PasteEvents"]
       34 NAMECALL                         R9 R1 K5 ["get"]
       36 CALL                             R9 2 -1
       37 SETLIST                          R3 R4 -1 [1]
       39 RETURN                           R3 1
       40 LOADNIL                          R2
       41 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+23]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R1 K0 ["Enabled"]
        4 GETTABLEKS                       R4 R0 K1 ["Actions"]
        6 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 2 0
       12 GETTABLEKS                       R4 R0 K5 ["Connections"]
       14 GETTABLEKS                       R5 R1 K6 ["Triggered"]
       16 MOVE                             R7 R2
       17 NAMECALL                         R5 R5 K7 ["Connect"]
       19 CALL                             R5 2 -1
       20 FASTCALL                         TABLE_INSERT ; [+2]
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tick"]
        5 GETTABLEKS                       R2 R0 K2 ["OnEditEvents"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Tick"]
        5 JUMPIF                           R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K2 ["Playhead"]
        8 GETTABLEKS                       R2 R0 K3 ["PasteEvents"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CopySelectedEvents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["EventFilters"]
       10 CALL                             R1 1 0
       11 GETTABLEKS                       R1 R0 K3 ["DeleteSelectedEvents"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["props"]
       16 GETTABLEKS                       R2 R2 K2 ["EventFilters"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["CopySelectedEvents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["EventFilters"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["DeleteSelectedEvents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["EventFilters"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["PluginActions"]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K2 ["Connections"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R0 K3 ["Actions"]
       12 LOADK                            R6 K4 ["EditEvents"]
       13 NAMECALL                         R4 R1 K5 ["get"]
       15 CALL                             R4 2 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R2 R0 K6 ["addAction"]
       20 CALL                             R2 3 0
       21 LOADK                            R6 K7 ["PasteEvents"]
       22 NAMECALL                         R4 R1 K5 ["get"]
       24 CALL                             R4 2 1
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R2 R0 K6 ["addAction"]
       29 CALL                             R2 3 0
       30 LOADK                            R6 K8 ["CutEvents"]
       31 NAMECALL                         R4 R1 K5 ["get"]
       33 CALL                             R4 2 1
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R2 R0 K6 ["addAction"]
       38 CALL                             R2 3 0
       39 LOADK                            R6 K9 ["CopyEvents"]
       40 NAMECALL                         R4 R1 K5 ["get"]
       42 CALL                             R4 2 1
       43 NEWCLOSURE                       R5 P3
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R2 R0 K6 ["addAction"]
       47 CALL                             R2 3 0
       48 LOADK                            R6 K10 ["DeleteEvents"]
       49 NAMECALL                         R4 R1 K5 ["get"]
       51 CALL                             R4 2 1
       52 NEWCLOSURE                       R5 P4
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R2 R0 K6 ["addAction"]
       56 CALL                             R2 3 0
       57 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["ShowMenu"]
        4 GETTABLEKS                       R3 R1 K2 ["Clipboard"]
        6 GETTABLEKS                       R4 R1 K3 ["ClipboardType"]
        8 GETTABLEKS                       R5 R1 K4 ["SelectedEvents"]
       10 GETTABLEKS                       R6 R1 K5 ["OnMenuOpened"]
       12 GETTABLEKS                       R7 R0 K6 ["Actions"]
       14 GETTABLEKS                       R8 R0 K0 ["props"]
       16 GETTABLEKS                       R8 R8 K7 ["PluginActions"]
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R8
       20 CALL                             R9 1 1
       21 JUMPIF                           R9 ; [+67]
       22 JUMPIFEQKNIL                     R7 ; [+66]
       24 GETIMPORT                        R9 K9 [ipairs]
       26 MOVE                             R10 R7
       27 CALL                             R9 1 3
       28 FORGPREP_INEXT                   R9
       29 LOADB                            R14 0
       30 SETTABLEKS                       R14 R13 K10 ["Enabled"]
       32 FORGLOOP                         R9 2 [inext] ; [-4]
       34 JUMPIFNOT                        R3 ; [+18]
       35 GETUPVAL                         R9 0
       36 MOVE                             R10 R3
       37 CALL                             R9 1 1
       38 JUMPIF                           R9 ; [+14]
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K11 ["CLIPBOARD_TYPE"]
       42 GETTABLEKS                       R9 R9 K12 ["Events"]
       44 JUMPIFNOTEQ                      R4 R9 ; [+8]
       46 LOADK                            R11 K13 ["PasteEvents"]
       47 NAMECALL                         R9 R8 K14 ["get"]
       49 CALL                             R9 2 1
       50 LOADB                            R10 1
       51 SETTABLEKS                       R10 R9 K10 ["Enabled"]
       53 JUMPIFNOT                        R5 ; [+25]
       54 GETUPVAL                         R9 0
       55 MOVE                             R10 R5
       56 CALL                             R9 1 1
       57 JUMPIF                           R9 ; [+21]
       58 LOADK                            R11 K15 ["CutEvents"]
       59 NAMECALL                         R9 R8 K14 ["get"]
       61 CALL                             R9 2 1
       62 LOADB                            R10 1
       63 SETTABLEKS                       R10 R9 K10 ["Enabled"]
       65 LOADK                            R11 K16 ["CopyEvents"]
       66 NAMECALL                         R9 R8 K14 ["get"]
       68 CALL                             R9 2 1
       69 LOADB                            R10 1
       70 SETTABLEKS                       R10 R9 K10 ["Enabled"]
       72 LOADK                            R11 K17 ["DeleteEvents"]
       73 NAMECALL                         R9 R8 K14 ["get"]
       75 CALL                             R9 2 1
       76 LOADB                            R10 1
       77 SETTABLEKS                       R10 R9 K10 ["Enabled"]
       79 GETTABLEKS                       R9 R1 K18 ["OnEvent"]
       81 JUMPIFNOT                        R9 ; [+7]
       82 LOADK                            R11 K19 ["EditEvents"]
       83 NAMECALL                         R9 R8 K14 ["get"]
       85 CALL                             R9 2 1
       86 LOADB                            R10 1
       87 SETTABLEKS                       R10 R9 K10 ["Enabled"]
       89 NAMECALL                         R9 R0 K20 ["makeMenuActions"]
       91 CALL                             R9 1 1
       92 JUMPIFNOT                        R2 ; [+15]
       93 JUMPIFNOT                        R9 ; [+14]
       94 GETUPVAL                         R10 2
       95 GETTABLEKS                       R10 R10 K21 ["createElement"]
       97 GETUPVAL                         R11 3
       98 DUPTABLE                         R12 K22 [{"Actions", "OnMenuOpened"}]
       99 NAMECALL                         R13 R0 K20 ["makeMenuActions"]
      101 CALL                             R13 1 1
      102 SETTABLEKS                       R13 R12 K6 ["Actions"]
      104 SETTABLEKS                       R6 R12 K5 ["OnMenuOpened"]
      106 CALL                             R10 2 1
      107 RETURN                           R10 1
      108 LOADNIL                          R10
      109 RETURN                           R10 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Connections"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K0 ["Connections"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K3 ["Disconnect"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K0 ["Connections"]
       18 GETTABLEKS                       R1 R0 K4 ["Actions"]
       20 JUMPIFNOT                        R1 ; [+11]
       21 GETIMPORT                        R1 K2 [ipairs]
       23 GETTABLEKS                       R2 R0 K4 ["Actions"]
       25 CALL                             R1 1 3
       26 FORGPREP_INEXT                   R1
       27 LOADB                            R6 0
       28 SETTABLEKS                       R6 R5 K5 ["Enabled"]
       30 FORGLOOP                         R1 2 [inext] ; [-4]
       32 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["Status"]
        2 DUPTABLE                         R3 K7 [{"Clipboard", "ClipboardType", "SelectedEvents", "Playhead", "OnEvent", "Tick"}]
        3 GETTABLEKS                       R4 R2 K1 ["Clipboard"]
        5 SETTABLEKS                       R4 R3 K1 ["Clipboard"]
        7 GETTABLEKS                       R4 R2 K2 ["ClipboardType"]
        9 SETTABLEKS                       R4 R3 K2 ["ClipboardType"]
       11 GETTABLEKS                       R4 R2 K3 ["SelectedEvents"]
       13 SETTABLEKS                       R4 R3 K3 ["SelectedEvents"]
       15 GETTABLEKS                       R4 R2 K4 ["Playhead"]
       17 SETTABLEKS                       R4 R3 K4 ["Playhead"]
       19 GETTABLEKS                       R4 R2 K8 ["RightClickContextInfo"]
       21 GETTABLEKS                       R4 R4 K5 ["OnEvent"]
       23 SETTABLEKS                       R4 R3 K5 ["OnEvent"]
       25 GETTABLEKS                       R4 R2 K8 ["RightClickContextInfo"]
       27 GETTABLEKS                       R4 R4 K6 ["Tick"]
       29 SETTABLEKS                       R4 R3 K6 ["Tick"]
       31 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R2 2
        7 NEWTABLE                         R3 0 0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 NEWTABLE                         R3 0 0
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 0
       15 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K3 [{"DeleteSelectedEvents", "CopySelectedEvents", "PasteEvents"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 SETTABLEKS                       R2 R1 K0 ["DeleteSelectedEvents"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U2
       12 SETTABLEKS                       R2 R1 K1 ["CopySelectedEvents"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U2
       19 SETTABLEKS                       R2 R1 K2 ["PasteEvents"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["isEmpty"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["Framework"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R5 K14 ["ContextServices"]
       48 GETTABLEKS                       R7 R6 K15 ["withContext"]
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R9 R9 K16 ["Components"]
       56 GETTABLEKS                       R9 R9 K17 ["ContextMenu"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K9 ["Src"]
       63 GETTABLEKS                       R10 R10 K18 ["Thunks"]
       65 GETTABLEKS                       R10 R10 K19 ["History"]
       67 GETTABLEKS                       R10 R10 K20 ["AddWaypoint"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K9 ["Src"]
       74 GETTABLEKS                       R11 R11 K18 ["Thunks"]
       76 GETTABLEKS                       R11 R11 K21 ["Events"]
       78 GETTABLEKS                       R11 R11 K22 ["PasteEvents"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R12 R0 K9 ["Src"]
       85 GETTABLEKS                       R12 R12 K18 ["Thunks"]
       87 GETTABLEKS                       R12 R12 K21 ["Events"]
       89 GETTABLEKS                       R12 R12 K23 ["CopySelectedEvents"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K9 ["Src"]
       96 GETTABLEKS                       R13 R13 K18 ["Thunks"]
       98 GETTABLEKS                       R13 R13 K21 ["Events"]
      100 GETTABLEKS                       R13 R13 K24 ["DeleteSelectedEvents"]
      102 CALL                             R12 1 1
      103 GETIMPORT                        R13 K5 [require]
      105 GETTABLEKS                       R14 R0 K9 ["Src"]
      107 GETTABLEKS                       R14 R14 K25 ["Actions"]
      109 GETTABLEKS                       R14 R14 K26 ["SetRightClickContextInfo"]
      111 CALL                             R13 1 1
      112 GETTABLEKS                       R14 R1 K27 ["PureComponent"]
      114 LOADK                            R16 K28 ["EventActions"]
      115 NAMECALL                         R14 R14 K29 ["extend"]
      117 CALL                             R14 2 1
      118 DUPCLOSURE                       R15 K30 [PROTO_0]
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R15 R14 K31 ["makeMenuActionsDeprecated"]
      122 DUPCLOSURE                       R15 K32 [PROTO_1]
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R15 R14 K33 ["makeMenuActions"]
      126 DUPCLOSURE                       R15 K34 [PROTO_2]
      127 SETTABLEKS                       R15 R14 K35 ["addAction"]
      129 DUPCLOSURE                       R15 K36 [PROTO_8]
      130 SETTABLEKS                       R15 R14 K37 ["didMount"]
      132 DUPCLOSURE                       R15 K38 [PROTO_9]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R8
      137 SETTABLEKS                       R15 R14 K39 ["render"]
      139 DUPCLOSURE                       R15 K40 [PROTO_10]
      140 SETTABLEKS                       R15 R14 K41 ["willUnmount"]
      142 MOVE                             R15 R7
      143 DUPTABLE                         R16 K44 [{"Analytics", "PluginActions"}]
      144 GETTABLEKS                       R17 R6 K42 ["Analytics"]
      146 SETTABLEKS                       R17 R16 K42 ["Analytics"]
      148 GETTABLEKS                       R17 R6 K43 ["PluginActions"]
      150 SETTABLEKS                       R17 R16 K43 ["PluginActions"]
      152 CALL                             R15 1 1
      153 MOVE                             R16 R14
      154 CALL                             R15 1 1
      155 MOVE                             R14 R15
      156 DUPCLOSURE                       R15 K45 [PROTO_11]
      157 DUPCLOSURE                       R16 K46 [PROTO_15]
      158 CAPTURE                          VAL R9
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R10
      163 GETTABLEKS                       R17 R2 K47 ["connect"]
      165 MOVE                             R18 R15
      166 MOVE                             R19 R16
      167 CALL                             R17 2 1
      168 MOVE                             R18 R14
      169 CALL                             R17 1 -1
      170 RETURN                           R17 -1

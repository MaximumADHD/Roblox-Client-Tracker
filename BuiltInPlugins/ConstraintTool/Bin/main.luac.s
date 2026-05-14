PROTO_0:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["mainButton"]
        5 LOADB                            R2 0
        6 NAMECALL                         R0 R0 K1 ["SetActive"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K2 ["unmount"]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 2
       18 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 1
        7 FASTCALL3                        TABLE_INSERT R2 R3 R0
        9 MOVE                             R4 R0
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 3 0
       13 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [table.remove]
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 LOADN                            R3 1
        7 FASTCALL3                        TABLE_INSERT R2 R3 R0
        9 MOVE                             R4 R0
       10 GETIMPORT                        R1 K4 [table.insert]
       12 CALL                             R1 3 0
       13 RETURN                           R0 1

PROTO_3:
        0 SETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"undo"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["undo"]
        5 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+74]
        3 GETIMPORT                        R2 K2 [table.remove]
        5 GETUPVAL                         R3 1
        6 LOADN                            R4 1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 LOADN                            R5 1
       10 FASTCALL3                        TABLE_INSERT R4 R5 R2
       12 MOVE                             R6 R2
       13 GETIMPORT                        R3 K4 [table.insert]
       15 CALL                             R3 3 0
       16 MOVE                             R1 R2
       17 GETUPVAL                         R2 3
       18 NAMECALL                         R2 R2 K5 ["_getConstraintData"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 4
       22 JUMPIF                           R3 ; [+10]
       23 GETTABLEKS                       R3 R2 K6 ["Attachments"]
       25 JUMPIFEQKN                       R3 K7 [1] ; [+7]
       27 GETUPVAL                         R3 5
       28 JUMPIFEQKS                       R3 K8 ["WeldConstraint"] ; [+4]
       30 GETUPVAL                         R3 5
       31 JUMPIFNOTEQKS                    R3 K9 ["NoCollisionConstraint"] ; [+7]
       33 GETUPVAL                         R3 3
       34 MOVE                             R5 R1
       35 NAMECALL                         R3 R3 K10 ["_onUndo"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 1
       40 GETTABLEN                        R3 R4 1
       41 JUMPIFNOT                        R3 ; [+34]
       42 GETUPVAL                         R4 1
       43 GETTABLEN                        R3 R4 1
       44 GETTABLEKS                       R3 R3 K11 ["type"]
       46 JUMPIFNOTEQKS                    R3 K12 ["initial"] ; [+29]
       48 GETUPVAL                         R3 6
       49 NAMECALL                         R3 R3 K13 ["GetCanUndo"]
       51 CALL                             R3 1 1
       52 JUMPIFNOT                        R3 ; [+23]
       53 GETUPVAL                         R3 7
       54 NAMECALL                         R3 R3 K14 ["Disconnect"]
       56 CALL                             R3 1 0
       57 GETUPVAL                         R3 6
       58 NAMECALL                         R3 R3 K15 ["Undo"]
       60 CALL                             R3 1 0
       61 GETIMPORT                        R3 K2 [table.remove]
       63 GETUPVAL                         R4 1
       64 LOADN                            R5 1
       65 CALL                             R3 2 1
       66 GETUPVAL                         R5 2
       67 LOADN                            R6 1
       68 FASTCALL3                        TABLE_INSERT R5 R6 R3
       70 MOVE                             R7 R3
       71 GETIMPORT                        R4 K4 [table.insert]
       73 CALL                             R4 3 0
       74 GETUPVAL                         R3 8
       75 CALL                             R3 0 0
       76 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["OnUndo"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U7
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 CLOSEUPVALS                      R0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+70]
        3 GETIMPORT                        R2 K2 [table.remove]
        5 GETUPVAL                         R3 1
        6 LOADN                            R4 1
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 2
        9 LOADN                            R5 1
       10 FASTCALL3                        TABLE_INSERT R4 R5 R2
       12 MOVE                             R6 R2
       13 GETIMPORT                        R3 K4 [table.insert]
       15 CALL                             R3 3 0
       16 MOVE                             R1 R2
       17 GETUPVAL                         R2 3
       18 NAMECALL                         R2 R2 K5 ["_getConstraintData"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 4
       22 JUMPIF                           R3 ; [+10]
       23 GETTABLEKS                       R3 R2 K6 ["Attachments"]
       25 JUMPIFEQKN                       R3 K7 [1] ; [+7]
       27 GETUPVAL                         R3 5
       28 JUMPIFEQKS                       R3 K8 ["WeldConstraint"] ; [+4]
       30 GETUPVAL                         R3 5
       31 JUMPIFNOTEQKS                    R3 K9 ["NoCollisionConstraint"] ; [+7]
       33 GETUPVAL                         R3 3
       34 MOVE                             R5 R1
       35 NAMECALL                         R3 R3 K10 ["_onRedo"]
       37 CALL                             R3 2 0
       38 RETURN                           R0 0
       39 JUMPIFNOT                        R1 ; [+32]
       40 GETTABLEKS                       R3 R1 K11 ["type"]
       42 JUMPIFNOTEQKS                    R3 K12 ["initial"] ; [+29]
       44 GETUPVAL                         R3 6
       45 NAMECALL                         R3 R3 K13 ["GetCanRedo"]
       47 CALL                             R3 1 1
       48 JUMPIFNOT                        R3 ; [+23]
       49 GETUPVAL                         R3 7
       50 NAMECALL                         R3 R3 K14 ["Disconnect"]
       52 CALL                             R3 1 0
       53 GETUPVAL                         R3 6
       54 NAMECALL                         R3 R3 K15 ["Redo"]
       56 CALL                             R3 1 0
       57 GETIMPORT                        R3 K2 [table.remove]
       59 GETUPVAL                         R4 1
       60 LOADN                            R5 1
       61 CALL                             R3 2 1
       62 GETUPVAL                         R5 2
       63 LOADN                            R6 1
       64 FASTCALL3                        TABLE_INSERT R5 R6 R3
       66 MOVE                             R7 R3
       67 GETIMPORT                        R4 K4 [table.insert]
       69 CALL                             R4 3 0
       70 GETUPVAL                         R3 8
       71 CALL                             R3 0 0
       72 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["OnRedo"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U7
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 CLOSEUPVALS                      R0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 ["WeldConstraint"] ; [+4]
        6 GETUPVAL                         R0 1
        7 JUMPIFNOTEQKS                    R0 K1 ["NoCollisionConstraint"] ; [+44]
        9 GETUPVAL                         R0 2
       10 LOADK                            R2 K2 ["WeldTool"]
       11 NAMECALL                         R0 R0 K3 ["TryBeginRecording"]
       13 CALL                             R0 2 1
       14 JUMPIFNOTEQKNIL                  R0 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 3
       18 GETUPVAL                         R2 1
       19 CALL                             R1 1 2
       20 GETUPVAL                         R3 4
       21 JUMPIFNOT                        R3 ; [+8]
       22 GETUPVAL                         R3 2
       23 MOVE                             R5 R0
       24 GETIMPORT                        R6 K7 [Enum.FinishRecordingOperation.Commit]
       26 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       28 CALL                             R3 3 0
       29 JUMP                             ; [+16]
       30 JUMPIFNOT                        R2 ; [+8]
       31 GETUPVAL                         R3 2
       32 MOVE                             R5 R0
       33 GETIMPORT                        R6 K7 [Enum.FinishRecordingOperation.Commit]
       35 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       37 CALL                             R3 3 0
       38 JUMP                             ; [+7]
       39 GETUPVAL                         R3 2
       40 MOVE                             R5 R0
       41 GETIMPORT                        R6 K10 [Enum.FinishRecordingOperation.Cancel]
       43 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       45 CALL                             R3 3 0
       46 JUMPIFNOT                        R1 ; [+5]
       47 GETUPVAL                         R3 5
       48 GETTABLEKS                       R3 R3 K11 ["closeCallback"]
       50 CALL                             R3 0 0
       51 RETURN                           R0 0
       52 LOADB                            R0 1
       53 SETUPVAL                         R0 6
       54 GETUPVAL                         R0 7
       55 GETTABLEKS                       R0 R0 K12 ["mainButton"]
       57 LOADB                            R2 1
       58 NAMECALL                         R0 R0 K13 ["SetActive"]
       60 CALL                             R0 2 0
       61 GETUPVAL                         R0 8
       62 GETTABLEKS                       R0 R0 K14 ["mount"]
       64 GETUPVAL                         R1 8
       65 GETTABLEKS                       R1 R1 K15 ["createElement"]
       67 GETUPVAL                         R2 9
       68 DUPTABLE                         R3 K27 [{"plugin", "Mouse", "ClosePluginCallback", "SetConstraintToolModelReference", "DraggerContext", "DraggerSchema", "DraggerSettings", "constraintType", "undoAttachmentStack", "redoAttachmentStack", "recordingName"}]
       69 GETUPVAL                         R4 10
       70 SETTABLEKS                       R4 R3 K16 ["plugin"]
       72 GETUPVAL                         R4 10
       73 NAMECALL                         R4 R4 K28 ["GetMouse"]
       75 CALL                             R4 1 1
       76 SETTABLEKS                       R4 R3 K17 ["Mouse"]
       78 GETUPVAL                         R4 5
       79 GETTABLEKS                       R4 R4 K11 ["closeCallback"]
       81 SETTABLEKS                       R4 R3 K18 ["ClosePluginCallback"]
       83 GETUPVAL                         R4 11
       84 SETTABLEKS                       R4 R3 K19 ["SetConstraintToolModelReference"]
       86 GETUPVAL                         R4 12
       87 SETTABLEKS                       R4 R3 K20 ["DraggerContext"]
       89 GETUPVAL                         R4 13
       90 SETTABLEKS                       R4 R3 K21 ["DraggerSchema"]
       92 DUPTABLE                         R4 K33 [{"AnalyticsName", "AllowDragSelect", "ShowLocalSpaceIndicator", "ShowPivotIndicator"}]
       93 LOADK                            R5 K34 ["ConstraintTool"]
       94 SETTABLEKS                       R5 R4 K29 ["AnalyticsName"]
       96 LOADB                            R5 1
       97 SETTABLEKS                       R5 R4 K30 ["AllowDragSelect"]
       99 LOADB                            R5 1
      100 SETTABLEKS                       R5 R4 K31 ["ShowLocalSpaceIndicator"]
      102 LOADB                            R5 1
      103 SETTABLEKS                       R5 R4 K32 ["ShowPivotIndicator"]
      105 SETTABLEKS                       R4 R3 K22 ["DraggerSettings"]
      107 GETUPVAL                         R4 1
      108 SETTABLEKS                       R4 R3 K23 ["constraintType"]
      110 GETUPVAL                         R4 14
      111 SETTABLEKS                       R4 R3 K24 ["undoAttachmentStack"]
      113 GETUPVAL                         R4 15
      114 SETTABLEKS                       R4 R3 K25 ["redoAttachmentStack"]
      116 GETUPVAL                         R4 16
      117 SETTABLEKS                       R4 R3 K26 ["recordingName"]
      119 CALL                             R1 2 -1
      120 CALL                             R0 -1 1
      121 SETUPVAL                         R0 0
      122 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["OnUndo"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          REF R0
       13 CAPTURE                          UPVAL U7
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 1
       17 MOVE                             R0 R1
       18 CLOSEUPVALS                      R0
       19 LOADNIL                          R0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K2 ["OnRedo"]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R0
       32 CAPTURE                          UPVAL U8
       33 NAMECALL                         R1 R1 K1 ["Connect"]
       35 CALL                             R1 2 1
       36 MOVE                             R0 R1
       37 CLOSEUPVALS                      R0
       38 GETUPVAL                         R0 10
       39 GETTABLEKS                       R0 R0 K3 ["new"]
       41 GETUPVAL                         R1 11
       42 GETIMPORT                        R2 K5 [game]
       44 GETIMPORT                        R3 K7 [settings]
       46 CALL                             R3 0 1
       47 GETUPVAL                         R4 12
       48 GETTABLEKS                       R4 R4 K8 ["Selection"]
       50 GETTABLEKS                       R4 R4 K3 ["new"]
       52 CALL                             R4 0 -1
       53 CALL                             R0 -1 1
       54 SETUPVAL                         R0 9
       55 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R4 K1 [require]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K2 ["Packages"]
        5 GETTABLEKS                       R5 R5 K3 ["Roact"]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["Packages"]
       11 GETTABLEKS                       R5 R5 K4 ["DraggerFramework"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K2 ["Packages"]
       16 GETTABLEKS                       R6 R6 K5 ["DraggerSchemaCore"]
       18 GETIMPORT                        R7 K1 [require]
       20 GETTABLEKS                       R8 R6 K6 ["DraggerSchema"]
       22 CALL                             R7 1 1
       23 GETIMPORT                        R8 K1 [require]
       25 GETTABLEKS                       R9 R5 K7 ["Implementation"]
       27 GETTABLEKS                       R9 R9 K8 ["DraggerContext_PluginImpl"]
       29 CALL                             R8 1 1
       30 GETIMPORT                        R9 K1 [require]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K9 ["Src"]
       35 GETTABLEKS                       R10 R10 K10 ["Components"]
       37 GETTABLEKS                       R10 R10 K11 ["ConstraintToolComponent"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K1 [require]
       42 GETUPVAL                         R11 0
       43 GETTABLEKS                       R11 R11 K9 ["Src"]
       45 GETTABLEKS                       R11 R11 K12 ["Util"]
       47 GETTABLEKS                       R11 R11 K13 ["WeldInitiator"]
       49 CALL                             R10 1 1
       50 LOADNIL                          R11
       51 LOADK                            R13 K14 ["ConstraintToolDragging_"]
       52 MOVE                             R14 R3
       53 CONCAT                           R12 R13 R14
       54 LOADB                            R13 0
       55 LOADNIL                          R14
       56 LOADNIL                          R15
       57 NEWTABLE                         R16 0 0
       59 NEWTABLE                         R17 0 0
       61 NEWCLOSURE                       R18 P0
       62 CAPTURE                          REF R13
       63 CAPTURE                          VAL R1
       64 CAPTURE                          REF R14
       65 CAPTURE                          VAL R4
       66 NEWCLOSURE                       R19 P1
       67 CAPTURE                          VAL R16
       68 CAPTURE                          VAL R17
       69 NEWCLOSURE                       R20 P2
       70 CAPTURE                          VAL R17
       71 CAPTURE                          VAL R16
       72 NEWCLOSURE                       R21 P3
       73 CAPTURE                          REF R15
       74 CAPTURE                          VAL R19
       75 NEWCLOSURE                       R22 P4
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R17
       80 CAPTURE                          REF R15
       81 CAPTURE                          REF R13
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R22
       84 NEWCLOSURE                       R23 P5
       85 CAPTURE                          UPVAL U1
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R16
       89 CAPTURE                          REF R15
       90 CAPTURE                          REF R13
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R23
       93 NEWCLOSURE                       R24 P6
       94 CAPTURE                          REF R14
       95 CAPTURE                          VAL R3
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R10
       98 CAPTURE                          UPVAL U2
       99 CAPTURE                          VAL R2
      100 CAPTURE                          REF R13
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R21
      106 CAPTURE                          REF R11
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R17
      110 CAPTURE                          VAL R12
      111 NEWCLOSURE                       R25 P7
      112 CAPTURE                          UPVAL U1
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R17
      116 CAPTURE                          REF R15
      117 CAPTURE                          REF R13
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R22
      120 CAPTURE                          VAL R23
      121 CAPTURE                          REF R11
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R7
      125 LOADNIL                          R26
      126 GETUPVAL                         R27 1
      127 GETTABLEKS                       R27 R27 K15 ["OnUndo"]
      129 NEWCLOSURE                       R29 P8
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R17
      133 CAPTURE                          REF R15
      134 CAPTURE                          REF R13
      135 CAPTURE                          VAL R3
      136 CAPTURE                          UPVAL U1
      137 CAPTURE                          REF R26
      138 CAPTURE                          VAL R22
      139 NAMECALL                         R27 R27 K16 ["Connect"]
      141 CALL                             R27 2 1
      142 MOVE                             R26 R27
      143 CLOSEUPVALS                      R26
      144 LOADNIL                          R26
      145 GETUPVAL                         R27 1
      146 GETTABLEKS                       R27 R27 K17 ["OnRedo"]
      148 NEWCLOSURE                       R29 P9
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R16
      152 CAPTURE                          REF R15
      153 CAPTURE                          REF R13
      154 CAPTURE                          VAL R3
      155 CAPTURE                          UPVAL U1
      156 CAPTURE                          REF R26
      157 CAPTURE                          VAL R23
      158 NAMECALL                         R27 R27 K16 ["Connect"]
      160 CALL                             R27 2 1
      161 MOVE                             R26 R27
      162 CLOSEUPVALS                      R26
      163 GETTABLEKS                       R26 R8 K18 ["new"]
      165 MOVE                             R27 R0
      166 GETIMPORT                        R28 K20 [game]
      168 GETIMPORT                        R29 K22 [settings]
      170 CALL                             R29 0 1
      171 GETTABLEKS                       R30 R7 K23 ["Selection"]
      173 GETTABLEKS                       R30 R30 K18 ["new"]
      175 CALL                             R30 0 -1
      176 CALL                             R26 -1 1
      177 MOVE                             R11 R26
      178 DUPTABLE                         R26 K26 [{"close", "open"}]
      179 SETTABLEKS                       R18 R26 K24 ["close"]
      181 SETTABLEKS                       R24 R26 K25 ["open"]
      183 CLOSEUPVALS                      R11
      184 RETURN                           R26 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConstraintTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["FixConstraintToolWeldUndoBug"]
       16 NAMECALL                         R2 R2 K9 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 DUPCLOSURE                       R3 K10 [PROTO_10]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1

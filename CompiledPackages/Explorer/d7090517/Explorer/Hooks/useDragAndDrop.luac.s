PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerAutoExpandHoverThresholdMs"]
        3 LOADN                            R3 244
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerInBetweenThresholdPixels"]
        3 LOADN                            R3 4
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["selectedIdsObservable"]
        2 GETTABLEKS                       R2 R3 K1 ["get"]
        4 CALL                             R2 0 1
        5 MOVE                             R3 R1
        6 JUMPIFEQKNIL                     R3 ; [+12]
        8 GETTABLEKS                       R6 R3 K2 ["datum"]
       10 GETTABLEKS                       R5 R6 K3 ["id"]
       12 GETTABLE                         R4 R2 R5
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADB                            R4 1
       15 RETURN                           R4 1
       16 GETTABLEKS                       R3 R3 K4 ["parent"]
       18 JUMPBACK                         ; [-13]
       19 LOADB                            R4 0
       20 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["expandAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["targetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getExpandState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["targetId"]
        6 CALL                             R0 1 1
        7 JUMPIFEQKS                       R0 K2 ["Collapsed"] ; [+2]
        9 RETURN                           R0 0
       10 GETIMPORT                        R0 K5 [task.spawn]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["type"]
        4 JUMPIFEQKS                       R1 K1 ["onTop"] ; [+3]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K2 ["getExpandState"]
       11 GETTABLEKS                       R2 R0 K3 ["targetId"]
       13 CALL                             R1 1 1
       14 JUMPIFEQKS                       R1 K4 ["Collapsed"] ; [+3]
       16 LOADNIL                          R1
       17 RETURN                           R1 1
       18 GETIMPORT                        R1 K7 [task.delay]
       20 GETIMPORT                        R3 K10 [game]
       22 LOADK                            R5 K11 ["ExplorerAutoExpandHoverThresholdMs"]
       23 LOADN                            R6 244
       24 NAMECALL                         R3 R3 K12 ["DefineFastInt"]
       26 CALL                             R3 3 1
       27 DIVK                             R2 R3 K8 [1000]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          VAL R0
       31 CALL                             R1 2 1
       32 NEWCLOSURE                       R2 P1
       33 CAPTURE                          VAL R1
       34 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useEffect"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R5 0 0
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["focusedRootObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R1 R2 K2 ["current"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K3 ["getMousePosition"]
       16 CALL                             R2 0 1
       17 GETTABLEKS                       R4 R1 K4 ["CanvasPosition"]
       19 GETTABLEKS                       R6 R1 K5 ["AbsolutePosition"]
       21 SUB                              R5 R2 R6
       22 ADD                              R3 R4 R5
       23 LOADN                            R5 1
       24 GETTABLEKS                       R7 R3 K6 ["Y"]
       26 GETUPVAL                         R9 3
       27 GETTABLEKS                       R8 R9 K7 ["explorerRowHeight"]
       29 IDIV                             R6 R7 R8
       30 ADD                              R4 R5 R6
       31 GETTABLEKS                       R6 R3 K6 ["Y"]
       33 GETUPVAL                         R8 3
       34 GETTABLEKS                       R7 R8 K7 ["explorerRowHeight"]
       36 MOD                              R5 R6 R7
       37 LOADB                            R6 0
       38 GETIMPORT                        R7 K9 [game]
       40 LOADK                            R9 K10 ["ExplorerInBetweenThresholdPixels"]
       41 LOADN                            R10 4
       42 NAMECALL                         R7 R7 K11 ["DefineFastInt"]
       44 CALL                             R7 3 1
       45 JUMPIFNOTLE                      R5 R7 ; [+4]
       47 LOADB                            R6 1
       48 SUBK                             R4 R4 K12 [1]
       49 JUMP                             ; [+7]
       50 GETUPVAL                         R10 3
       51 GETTABLEKS                       R9 R10 K7 ["explorerRowHeight"]
       53 SUB                              R8 R9 R7
       54 JUMPIFNOTLE                      R8 R5 ; [+2]
       56 LOADB                            R6 1
       57 LOADN                            R9 0
       58 JUMPIFNOTLE                      R4 R9 ; [+3]
       60 LOADNIL                          R8
       61 JUMP                             ; [+7]
       62 GETUPVAL                         R9 4
       63 GETTABLEKS                       R8 R9 K13 ["getNthDescendant"]
       65 GETTABLEKS                       R9 R0 K14 ["children"]
       67 MOVE                             R10 R4
       68 CALL                             R8 2 1
       69 JUMPIFNOTEQKNIL                  R8 ; [+3]
       71 LOADNIL                          R9
       72 RETURN                           R9 1
       73 MOVE                             R9 R8
       74 JUMPIFNOT                        R6 ; [+77]
       75 GETUPVAL                         R11 4
       76 GETTABLEKS                       R10 R11 K13 ["getNthDescendant"]
       78 GETTABLEKS                       R11 R0 K14 ["children"]
       80 ADDK                             R12 R4 K12 [1]
       81 CALL                             R10 2 1
       82 GETUPVAL                         R11 5
       83 MOVE                             R12 R8
       84 CALL                             R11 1 1
       85 GETTABLEKS                       R14 R8 K15 ["parent"]
       87 JUMPIFNOTEQKNIL                  R14 ; [+2]
       89 LOADB                            R13 0 +1
       90 LOADB                            R13 1
       91 FASTCALL2K                       ASSERT R13 K16 ; [+4]
       93 LOADK                            R14 K16 ["No parent for in-between row"]
       94 GETIMPORT                        R12 K18 [assert]
       96 CALL                             R12 2 0
       97 JUMPIFEQKNIL                     R10 ; [+35]
       99 GETUPVAL                         R12 5
      100 MOVE                             R13 R10
      101 CALL                             R12 1 1
      102 JUMPIFNOTLT                      R12 R11 ; [+30]
      104 GETTABLEKS                       R12 R3 K19 ["X"]
      106 GETUPVAL                         R15 3
      107 GETTABLEKS                       R14 R15 K20 ["indentWidth"]
      109 MUL                              R13 R14 R11
      110 JUMPIFNOTLT                      R12 R13 ; [+22]
      112 GETTABLEKS                       R13 R8 K15 ["parent"]
      114 GETTABLEKS                       R12 R13 K15 ["parent"]
      116 JUMPIFEQKNIL                     R12 ; [+16]
      118 GETTABLEKS                       R15 R8 K15 ["parent"]
      120 GETTABLEKS                       R14 R15 K15 ["parent"]
      122 GETTABLEKS                       R13 R14 K21 ["datum"]
      124 GETTABLEKS                       R12 R13 K22 ["className"]
      126 JUMPIFEQKS                       R12 K23 ["DataModel"] ; [+6]
      128 GETTABLEKS                       R12 R8 K15 ["parent"]
      130 GETTABLEKS                       R9 R12 K15 ["parent"]
      132 JUMP                             ; [+19]
      133 GETTABLEKS                       R13 R8 K21 ["datum"]
      135 GETTABLEKS                       R12 R13 K24 ["hasChildren"]
      137 JUMPIFNOT                        R12 ; [+4]
      138 GETUPVAL                         R12 6
      139 MOVE                             R13 R8
      140 CALL                             R12 1 1
      141 JUMPIF                           R12 ; [+10]
      142 GETTABLEKS                       R14 R8 K15 ["parent"]
      144 GETTABLEKS                       R13 R14 K21 ["datum"]
      146 GETTABLEKS                       R12 R13 K22 ["className"]
      148 JUMPIFEQKS                       R12 K23 ["DataModel"] ; [+3]
      150 GETTABLEKS                       R9 R8 K15 ["parent"]
      152 JUMPIFNOTEQKNIL                  R9 ; [+3]
      154 LOADNIL                          R10
      155 RETURN                           R10 1
      156 GETUPVAL                         R10 7
      157 CALL                             R10 0 1
      158 JUMPIFNOT                        R10 ; [+7]
      159 GETTABLEKS                       R11 R9 K21 ["datum"]
      161 GETTABLEKS                       R10 R11 K25 ["isGhost"]
      163 JUMPIFNOT                        R10 ; [+2]
      164 LOADNIL                          R10
      165 RETURN                           R10 1
      166 GETUPVAL                         R11 0
      167 MOVE                             R12 R9
      168 GETTABLEKS                       R14 R11 K26 ["selectedIdsObservable"]
      170 GETTABLEKS                       R13 R14 K1 ["get"]
      172 CALL                             R13 0 1
      173 MOVE                             R14 R12
      174 JUMPIFEQKNIL                     R14 ; [+12]
      176 GETTABLEKS                       R17 R14 K21 ["datum"]
      178 GETTABLEKS                       R16 R17 K27 ["id"]
      180 GETTABLE                         R15 R13 R16
      181 JUMPIFNOT                        R15 ; [+2]
      182 LOADB                            R10 1
      183 JUMP                             ; [+4]
      184 GETTABLEKS                       R14 R14 K15 ["parent"]
      186 JUMPBACK                         ; [-13]
      187 LOADB                            R10 0
      188 JUMPIFNOT                        R10 ; [+2]
      189 LOADNIL                          R10
      190 RETURN                           R10 1
      191 LOADNIL                          R10
      192 JUMPIFNOT                        R6 ; [+23]
      193 DUPTABLE                         R11 K32 [{"type", "belowId", "targetId", "targetDepth"}]
      194 LOADK                            R12 K33 ["below"]
      195 SETTABLEKS                       R12 R11 K28 ["type"]
      197 GETTABLEKS                       R13 R8 K21 ["datum"]
      199 GETTABLEKS                       R12 R13 K27 ["id"]
      201 SETTABLEKS                       R12 R11 K29 ["belowId"]
      203 GETTABLEKS                       R13 R9 K21 ["datum"]
      205 GETTABLEKS                       R12 R13 K27 ["id"]
      207 SETTABLEKS                       R12 R11 K30 ["targetId"]
      209 GETUPVAL                         R12 5
      210 MOVE                             R13 R9
      211 CALL                             R12 1 1
      212 SETTABLEKS                       R12 R11 K31 ["targetDepth"]
      214 MOVE                             R10 R11
      215 JUMP                             ; [+11]
      216 DUPTABLE                         R11 K34 [{"type", "targetId"}]
      217 LOADK                            R12 K35 ["onTop"]
      218 SETTABLEKS                       R12 R11 K28 ["type"]
      220 GETTABLEKS                       R13 R8 K21 ["datum"]
      222 GETTABLEKS                       R12 R13 K27 ["id"]
      224 SETTABLEKS                       R12 R11 K30 ["targetId"]
      226 MOVE                             R10 R11
      227 GETIMPORT                        R11 K38 [table.freeze]
      229 MOVE                             R12 R10
      230 CALL                             R11 1 -1
      231 RETURN                           R11 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["get"]
        7 CALL                             R3 0 -1
        8 CALL                             R1 -1 1
        9 JUMPIF                           R1 ; [+3]
       10 GETUPVAL                         R1 3
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOTEQKNIL                  R0 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["dropSelectionOntoAsync"]
        8 GETTABLEKS                       R2 R0 K1 ["targetId"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["getExpandHierarchy"]
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R1 R2 K3 ["expandAsync"]
       19 GETTABLEKS                       R2 R0 K1 ["targetId"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectionDragInProgress"]
        3 JUMPIF                           R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K1 ["mouseMoved"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R0 R0 K2 ["Connect"]
       16 CALL                             R0 2 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K3 ["focusedRootObservable"]
       20 GETTABLEKS                       R1 R2 K4 ["changedSignal"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          UPVAL U3
       24 NAMECALL                         R1 R1 K2 ["Connect"]
       26 CALL                             R1 2 1
       27 GETUPVAL                         R2 3
       28 CALL                             R2 0 0
       29 NEWCLOSURE                       R2 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["useContext"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K0 ["useContext"]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K1 ["Context"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R6 4
       22 GETTABLEKS                       R5 R6 K2 ["useState"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 2
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K3 ["useCallback"]
       29 NEWCLOSURE                       R8 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          UPVAL U8
       37 CAPTURE                          UPVAL U9
       38 NEWTABLE                         R9 0 3
       40 GETTABLEKS                       R10 R0 K4 ["focusedRootObservable"]
       42 MOVE                             R11 R1
       43 GETTABLEKS                       R12 R3 K5 ["getMousePosition"]
       45 SETLIST                          R9 R10 3 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R8 R9 K3 ["useCallback"]
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          VAL R7
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 NEWTABLE                         R10 0 2
       58 MOVE                             R11 R5
       59 MOVE                             R12 R7
       60 SETLIST                          R10 R11 2 [1]
       62 CALL                             R8 2 1
       63 GETUPVAL                         R9 11
       64 GETTABLEKS                       R10 R2 K6 ["selectionDragDropped"]
       66 NEWCLOSURE                       R11 P2
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R12 0 4
       72 GETTABLEKS                       R13 R0 K7 ["dropSelectionOntoAsync"]
       74 MOVE                             R14 R7
       75 GETTABLEKS                       R15 R4 K8 ["getExpandHierarchy"]
       77 GETTABLEKS                       R16 R0 K9 ["expandAsync"]
       79 SETLIST                          R12 R13 4 [1]
       81 CALL                             R9 3 0
       82 GETUPVAL                         R10 0
       83 GETTABLEKS                       R9 R10 K10 ["useEffect"]
       85 NEWCLOSURE                       R10 P3
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R0
       91 NEWTABLE                         R11 0 4
       93 GETTABLEKS                       R12 R2 K11 ["selectionDragInProgress"]
       95 MOVE                             R13 R8
       96 GETTABLEKS                       R14 R0 K4 ["focusedRootObservable"]
       98 GETTABLEKS                       R15 R3 K12 ["mouseMoved"]
      100 SETLIST                          R11 R12 4 [1]
      102 CALL                             R9 2 0
      103 GETUPVAL                         R10 4
      104 GETTABLEKS                       R9 R10 K10 ["useEffect"]
      106 MOVE                             R10 R5
      107 NEWCLOSURE                       R11 P4
      108 CAPTURE                          VAL R0
      109 NEWTABLE                         R12 0 0
      111 CALL                             R9 3 0
      112 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["DragDropContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["ExplorerNodeChildrenMutable"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R7 K9 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K12 ["MouseContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K6 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["Observable"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K14 ["Parent"]
       50 GETTABLEKS                       R7 R8 K15 ["React"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["RpcTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R11 R0 K8 ["Components"]
       62 GETTABLEKS                       R10 R11 K9 ["Contexts"]
       64 GETTABLEKS                       R9 R10 K17 ["SettingsContext"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R11 R0 K6 ["Util"]
       71 GETTABLEKS                       R10 R11 K18 ["getExplorerNodeDepth"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R12 R0 K19 ["Flags"]
       78 GETTABLEKS                       R11 R12 K20 ["getFFlagExplorerStreaming"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETTABLEKS                       R13 R0 K6 ["Util"]
       85 GETTABLEKS                       R12 R13 K21 ["isExpanded"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R14 R0 K6 ["Util"]
       92 GETTABLEKS                       R13 R14 K22 ["shallowEqual"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R15 R0 K23 ["Hooks"]
       99 GETTABLEKS                       R14 R15 K24 ["useEventConnection"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K25 [PROTO_0]
      103 DUPCLOSURE                       R15 K26 [PROTO_1]
      104 DUPCLOSURE                       R16 K27 [PROTO_2]
      105 DUPCLOSURE                       R17 K28 [PROTO_7]
      106 CAPTURE                          VAL R5
      107 DUPCLOSURE                       R18 K29 [PROTO_15]
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R13
      120 RETURN                           R18 1

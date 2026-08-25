PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getSortedKeypointsWithOriginalIndices"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["unorderedKeypoints"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K2 ["originalIndex"]
       12 SETTABLE                         R4 R0 R6
       13 FORGLOOP                         R1 2 ; [-4]
       15 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["unorderedKeypoints"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTLT                      R2 R0 ; [+14]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["called with out of bounds index %* on unorderedKeypoints of length %*"]
        9 MOVE                             R6 R0
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K0 ["unorderedKeypoints"]
       13 LENGTH                           R7 R8
       14 NAMECALL                         R4 R4 K4 ["format"]
       16 CALL                             R4 3 1
       17 MOVE                             R3 R4
       18 CALL                             R2 1 0
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["unorderedKeypoints"]
       22 GETTABLE                         R2 R3 R0
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K5 ["updateKeypoint"]
       26 MOVE                             R4 R0
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 CALL                             R5 1 -1
       30 CALL                             R3 -1 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLE                         R1 R2 R3
        3 JUMPIFEQKN                       R1 K0 [1] ; [+7]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["unorderedKeypoints"]
        8 LENGTH                           R2 R3
        9 JUMPIFNOTEQ                      R1 R2 ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R2 K4 [NumberSequenceKeypoint.new]
       14 GETUPVAL                         R4 3
       15 LOADN                            R5 0
       16 LOADN                            R6 1
       17 FASTCALL                         MATH_CLAMP ; [+2]
       18 GETIMPORT                        R3 K7 [math.clamp]
       20 CALL                             R3 3 1
       21 GETTABLEKS                       R4 R0 K8 ["Value"]
       23 GETTABLEKS                       R5 R0 K9 ["Envelope"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["MinY"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["MaxY"]
        7 FASTCALL                         MATH_CLAMP ; [+2]
        8 GETIMPORT                        R1 K4 [math.clamp]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R2 2
       12 JUMPIF                           R2 ; [+2]
       13 GETTABLEKS                       R2 R0 K5 ["Envelope"]
       15 GETUPVAL                         R3 2
       16 JUMPIFNOTEQKNIL                  R3 ; [+5]
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R4 R0 K5 ["Envelope"]
       21 CALL                             R3 1 0
       22 GETIMPORT                        R3 K8 [NumberSequenceKeypoint.new]
       24 GETTABLEKS                       R4 R0 K9 ["Time"]
       26 MOVE                             R5 R1
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K10 ["calculateBoundedEnvelope"]
       30 GETIMPORT                        R7 K12 [Vector2.new]
       32 GETTABLEKS                       R8 R0 K9 ["Time"]
       34 MOVE                             R9 R1
       35 CALL                             R7 2 1
       36 MOVE                             R8 R2
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K0 ["MinY"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K1 ["MaxY"]
       43 CALL                             R6 4 -1
       44 CALL                             R3 -1 -1
       45 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFNOTLE                      R1 R2 ; [+10]
        4 GETIMPORT                        R1 K2 [NumberSequenceKeypoint.new]
        6 GETTABLEKS                       R2 R0 K3 ["Time"]
        8 GETTABLEKS                       R3 R0 K4 ["Value"]
       10 LOADN                            R4 0
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K2 [NumberSequenceKeypoint.new]
       15 GETTABLEKS                       R2 R0 K3 ["Time"]
       17 GETTABLEKS                       R3 R0 K4 ["Value"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["calculateBoundedEnvelope"]
       22 GETIMPORT                        R5 K7 [Vector2.new]
       24 GETTABLEKS                       R6 R0 K3 ["Time"]
       26 GETTABLEKS                       R7 R0 K4 ["Value"]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K8 ["MinY"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K9 ["MaxY"]
       36 CALL                             R4 4 -1
       37 CALL                             R1 -1 -1
       38 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R2 R0
        2 JUMPIFNOTLT                      R2 R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R0 R2
        8 DUPTABLE                         R2 K3 [{[1], ["multiple"] = False}]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K0 ["value"]
       14 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Bindings"]
        3 GETTABLEKS                       R2 R2 K1 ["map"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["unorderedKeypointsBinding"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R1
       12 CALL                             R2 2 1
       13 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Time"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Value"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Envelope"]
        2 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 GETUPVAL                         R1 0
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 NEWTABLE                         R4 0 3
        8 DUPTABLE                         R5 K8 [{[1] = "Number", ["name"] = "Time", ["part"], ["onChange"], ["step"] = 0.01}]
        9 GETUPVAL                         R6 1
       10 MOVE                             R7 R3
       11 DUPCLOSURE                       R8 K9 [PROTO_10]
       12 CALL                             R6 2 1
       13 SETTABLEKS                       R6 R5 K4 ["part"]
       15 NEWCLOSURE                       R6 P1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R3
       18 SETTABLEKS                       R6 R5 K5 ["onChange"]
       20 DUPTABLE                         R6 K11 [{[1] = "Number", ["name"] = "Value", ["part"], ["onChange"]}]
       21 GETUPVAL                         R7 1
       22 MOVE                             R8 R3
       23 DUPCLOSURE                       R9 K12 [PROTO_12]
       24 CALL                             R7 2 1
       25 SETTABLEKS                       R7 R6 K4 ["part"]
       27 NEWCLOSURE                       R7 P3
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R7 R6 K5 ["onChange"]
       32 DUPTABLE                         R7 K14 [{[1] = "Number", ["name"] = "Envelope", ["part"], ["onChange"]}]
       33 GETUPVAL                         R8 1
       34 MOVE                             R9 R3
       35 DUPCLOSURE                       R10 K15 [PROTO_14]
       36 CALL                             R8 2 1
       37 SETTABLEKS                       R8 R7 K4 ["part"]
       39 NEWCLOSURE                       R8 P5
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R8 R7 K5 ["onChange"]
       44 SETLIST                          R4 R5 3 [1]
       46 SETTABLE                         R4 R0 R3
       47 FORNLOOP                         R1
       48 RETURN                           R0 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteKeypoint"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["SetSelectedUnorderedKeypoint"]
        8 LOADN                            R2 -1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["unorderedKeypoints"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["addKeypoint"]
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["calculateGhostKeypoint"]
       14 MOVE                             R5 R1
       15 MOVE                             R6 R0
       16 CALL                             R4 2 -1
       17 CALL                             R2 -1 0
       18 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["controller"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETTABLEKS                       R5 R4 K2 ["NumberSequence"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R8 0 1
       19 GETTABLEKS                       R9 R0 K4 ["unorderedKeypoints"]
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K5 ["useEventCallback"]
       27 NEWCLOSURE                       R8 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 3
       32 GETTABLEKS                       R8 R8 K5 ["useEventCallback"]
       34 NEWCLOSURE                       R9 P2
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R0
       38 CALL                             R8 1 1
       39 GETUPVAL                         R9 3
       40 GETTABLEKS                       R9 R9 K5 ["useEventCallback"]
       42 NEWCLOSURE                       R10 P3
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U2
       48 CALL                             R9 1 1
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K5 ["useEventCallback"]
       52 NEWCLOSURE                       R11 P4
       53 CAPTURE                          VAL R7
       54 CAPTURE                          UPVAL U2
       55 CAPTURE                          VAL R0
       56 CALL                             R10 1 1
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R11 R11 K6 ["useCallback"]
       60 NEWCLOSURE                       R12 P5
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U4
       64 NEWTABLE                         R13 0 1
       66 GETTABLEKS                       R14 R0 K7 ["unorderedKeypointsBinding"]
       68 SETLIST                          R13 R14 1 [1]
       70 CALL                             R11 2 1
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K3 ["useMemo"]
       74 NEWCLOSURE                       R13 P6
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 NEWTABLE                         R14 0 4
       82 MOVE                             R15 R11
       83 MOVE                             R16 R8
       84 MOVE                             R17 R9
       85 MOVE                             R18 R10
       86 SETLIST                          R14 R15 4 [1]
       88 CALL                             R12 2 1
       89 GETUPVAL                         R13 6
       90 GETUPVAL                         R14 7
       91 DUPTABLE                         R15 K19 [{"rowSlots", "rowsCount", "layoutOrders", "maxRowsBeforeScroll", "autoScrollToSelected", "selectedRow", "setSelectedRow", "onEditStart", "onEditFinish", "onDelete", "onAdd"}]
       92 SETTABLEKS                       R12 R15 K8 ["rowSlots"]
       94 GETTABLEKS                       R17 R0 K4 ["unorderedKeypoints"]
       96 LENGTH                           R16 R17
       97 SETTABLEKS                       R16 R15 K9 ["rowsCount"]
       99 SETTABLEKS                       R6 R15 K10 ["layoutOrders"]
      101 GETTABLEKS                       R16 R5 K20 ["MaxRows"]
      103 SETTABLEKS                       R16 R15 K11 ["maxRowsBeforeScroll"]
      105 GETTABLEKS                       R16 R0 K12 ["autoScrollToSelected"]
      107 SETTABLEKS                       R16 R15 K12 ["autoScrollToSelected"]
      109 GETTABLEKS                       R16 R0 K21 ["selectedUnorderedKeypoint"]
      111 SETTABLEKS                       R16 R15 K13 ["selectedRow"]
      113 GETTABLEKS                       R16 R0 K22 ["SetSelectedUnorderedKeypoint"]
      115 SETTABLEKS                       R16 R15 K14 ["setSelectedRow"]
      117 NEWCLOSURE                       R16 P7
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R3
      120 SETTABLEKS                       R16 R15 K15 ["onEditStart"]
      122 GETTABLEKS                       R16 R1 K23 ["finishEditing"]
      124 SETTABLEKS                       R16 R15 K16 ["onEditFinish"]
      126 NEWCLOSURE                       R16 P8
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R16 R15 K17 ["onDelete"]
      131 NEWCLOSURE                       R16 P9
      132 CAPTURE                          UPVAL U2
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R1
      135 SETTABLEKS                       R16 R15 K18 ["onAdd"]
      137 CALL                             R13 2 -1
      138 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R3 K1 [script]
       13 GETTABLEKS                       R3 R3 K4 ["Parent"]
       15 GETTABLEKS                       R3 R3 K7 ["Constants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETIMPORT                        R4 K1 [script]
       22 GETTABLEKS                       R4 R4 K4 ["Parent"]
       24 GETTABLEKS                       R4 R4 K8 ["NumberSequenceUtil"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K9 ["PropertyTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K10 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K11 ["ReactUtils"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Components"]
       46 GETTABLEKS                       R8 R8 K13 ["Util"]
       48 GETTABLEKS                       R8 R8 K14 ["RowStops"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K15 ["PropertyInteraction"]
       55 GETTABLEKS                       R9 R9 K16 ["genericMultiplePart"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R10 R10 K4 ["Parent"]
       64 GETTABLEKS                       R10 R10 K17 ["useNumberSequence"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       71 GETTABLEKS                       R11 R11 K19 ["useVisualValues"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R5 K20 ["createElement"]
       76 GETTABLEKS                       R12 R2 K21 ["MAX_POINTS"]
       78 DUPCLOSURE                       R13 K22 [PROTO_21]
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R7
       87 RETURN                           R13 1

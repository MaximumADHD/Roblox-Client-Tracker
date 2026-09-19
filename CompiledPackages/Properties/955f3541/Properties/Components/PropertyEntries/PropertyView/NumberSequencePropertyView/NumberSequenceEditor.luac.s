PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromUnorderedKeypoints"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["selectedIndex"]
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ghostIndex"]
        3 JUMPIFEQKN                       R1 K1 [-1] ; [+4]
        5 GETUPVAL                         R1 1
        6 LOADN                            R2 -1
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["selectedIndex"]
       11 JUMPIFEQKN                       R1 K1 [-1] ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["selectedIndex"]
       16 GETTABLEKS                       R3 R0 K3 ["previousUnorderedKeypoints"]
       18 LENGTH                           R2 R3
       19 JUMPIFNOTLT                      R2 R1 ; [+2]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K4 ["findKeypoint"]
       25 GETTABLEKS                       R2 R0 K5 ["newSortedKeypoints"]
       27 GETTABLEKS                       R4 R0 K3 ["previousUnorderedKeypoints"]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K2 ["selectedIndex"]
       32 GETTABLE                         R3 R4 R5
       33 CALL                             R1 2 1
       34 GETUPVAL                         R2 3
       35 ORK                              R3 R1 K1 [-1]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["guestUpdateSignal"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setLocalNumberSequence"]
        3 GETIMPORT                        R1 K3 [NumberSequence.new]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["fromUnorderedKeypoints"]
        8 GETUPVAL                         R3 2
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isOpen"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+15]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["calculateInitialYRange"]
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K2 ["getValue"]
       12 CALL                             R2 1 1
       13 LOADN                            R3 10
       14 CALL                             R1 2 2
       15 GETUPVAL                         R3 3
       16 MOVE                             R4 R1
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 4
       19 MOVE                             R4 R2
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setMinSize"]
        3 GETIMPORT                        R1 K3 [Vector2.new]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["EditorMinWidth"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K5 ["EditorMinHeight"]
       11 GETUPVAL                         R5 2
       12 ADD                              R3 R4 R5
       13 CALL                             R1 2 -1
       14 CALL                             R0 -1 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K6 ["setSize"]
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K7 ["current"]
       21 GETIMPORT                        R3 K3 [Vector2.new]
       23 LOADN                            R4 0
       24 GETUPVAL                         R5 2
       25 CALL                             R3 2 1
       26 ADD                              R1 R2 R3
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["hoveredIndex"]
        7 GETUPVAL                         R2 1
        8 JUMPIF                           R2 ; [+2]
        9 GETTABLEKS                       R2 R0 K4 ["ghostIndex"]
       11 SETTABLEKS                       R2 R1 K4 ["ghostIndex"]
       13 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        2 MOVE                             R2 R0
        3 JUMP                             ; [+1]
        4 LOADN                            R2 -1
        5 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        7 LOADN                            R3 -1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R3
       10 GETUPVAL                         R4 0
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K6 [{"selectedIndex", "draggedIndex", "hoveredIndex", "ghostIndex", "draggedFromGhost", "envelopeHovered"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedIndex"]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["draggedIndex"]
        8 SETTABLEKS                       R2 R1 K1 ["draggedIndex"]
       10 GETUPVAL                         R2 2
       11 JUMPIF                           R2 ; [+2]
       12 GETTABLEKS                       R2 R0 K2 ["hoveredIndex"]
       14 SETTABLEKS                       R2 R1 K2 ["hoveredIndex"]
       16 GETTABLEKS                       R2 R0 K3 ["ghostIndex"]
       18 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
       20 GETUPVAL                         R3 3
       21 JUMPIFEQKNIL                     R3 ; [+3]
       23 GETUPVAL                         R2 3
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R2 R0 K4 ["draggedFromGhost"]
       27 SETTABLEKS                       R2 R1 K4 ["draggedFromGhost"]
       29 GETTABLEKS                       R2 R0 K5 ["envelopeHovered"]
       31 SETTABLEKS                       R2 R1 K5 ["envelopeHovered"]
       33 RETURN                           R1 1

PROTO_16:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+8]
        5 GETIMPORT                        R5 K3 [task.spawn]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R5 1 0
       10 MOVE                             R3 R0
       11 JUMP                             ; [+6]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["finishEditing"]
       15 CALL                             R5 0 0
       16 LOADN                            R2 -1
       17 LOADB                            R4 0
       18 GETUPVAL                         R5 1
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          REF R2
       22 CAPTURE                          REF R3
       23 CAPTURE                          REF R4
       24 CALL                             R5 1 0
       25 CLOSEUPVALS                      R2
       26 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 -1
        5 SETTABLEKS                       R2 R1 K3 ["selectedIndex"]
        7 LOADN                            R2 -1
        8 SETTABLEKS                       R2 R1 K4 ["hoveredIndex"]
       10 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteKeypoint"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K1 [PROTO_17]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["beginEditingAsync"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["selectedIndex"]
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["updateKeypoint"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["selectedIndex"]
       15 GETIMPORT                        R4 K5 [NumberSequenceKeypoint.new]
       17 GETTABLEKS                       R5 R1 K6 ["Time"]
       19 GETTABLEKS                       R6 R0 K7 ["Value"]
       21 GETTABLEKS                       R7 R0 K8 ["Envelope"]
       23 CALL                             R4 3 -1
       24 CALL                             R2 -1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K9 ["finishEditing"]
       28 CALL                             R2 0 0
       29 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selectedIndex"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 -1
        5 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K4 ["envelopeHovered"]
       10 RETURN                           R1 1

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K3 ["envelopeHovered"]
        7 RETURN                           R1 1

PROTO_23:
        0 JUMPIFNOTEQKS                    R0 K0 ["Start"] ; [+5]
        2 GETUPVAL                         R1 0
        3 DUPCLOSURE                       R2 K1 [PROTO_21]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K2 ["Stop"] ; [+5]
        8 GETUPVAL                         R1 0
        9 DUPCLOSURE                       R2 K3 [PROTO_22]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K5 [error]
       14 LOADK                            R2 K6 ["Unrecognized state %*"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K7 ["format"]
       18 CALL                             R2 2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOTEQKS                    R0 K0 ["Start"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["beginEditingAsync"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["Stop"] ; [+6]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["finishEditing"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETIMPORT                        R1 K5 [error]
       16 LOADK                            R2 K6 ["Unrecognized state %*"]
       17 MOVE                             R4 R0
       18 NAMECALL                         R2 R2 K7 ["format"]
       20 CALL                             R2 2 1
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_25:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+22]
        2 GETUPVAL                         R2 0
        3 DUPTABLE                         R3 K10 [{["selectedIndex"], ["hoveredIndex"], ["draggedIndex"], ["ghostIndex"] = -1, ["draggedFromGhost"] = True, ["envelopeHovered"] = False}]
        4 SETTABLEKS                       R0 R3 K1 ["selectedIndex"]
        6 SETTABLEKS                       R0 R3 K2 ["hoveredIndex"]
        8 SETTABLEKS                       R0 R3 K3 ["draggedIndex"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K11 ["addKeypoint"]
       14 MOVE                             R3 R0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K12 ["calculateGhostKeypoint"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R0
       20 CALL                             R4 2 1
       21 LOADB                            R5 0
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateKeypoint"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["selectedIndex"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 DUPTABLE                         R6 K1 [{"Position"}]
        7 GETIMPORT                        R7 K4 [Vector2.new]
        9 GETTABLEKS                       R8 R5 K5 ["Time"]
       11 GETTABLEKS                       R9 R5 K6 ["Value"]
       13 CALL                             R7 2 1
       14 SETTABLEKS                       R7 R6 K0 ["Position"]
       16 SETTABLE                         R6 R0 R4
       17 FORGLOOP                         R1 2 ; [-12]
       19 RETURN                           R0 1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 SUB                              R2 R3 R0
        2 FASTCALL1                        MATH_ABS R2 ; [+2]
        3 GETIMPORT                        R1 K2 [math.abs]
        5 CALL                             R1 1 1
        6 LOADK                            R2 K3 [0.001]
        7 JUMPIFLT                         R1 R2 ; [+10]
        9 GETUPVAL                         R3 1
       10 SUB                              R2 R3 R0
       11 FASTCALL1                        MATH_ABS R2 ; [+2]
       12 GETIMPORT                        R1 K2 [math.abs]
       14 CALL                             R1 1 1
       15 LOADK                            R2 K3 [0.001]
       16 JUMPIFNOTLT                      R1 R2 ; [+3]
       18 LOADK                            R1 K4 [""]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K7 [string.format]
       22 LOADK                            R2 K8 ["%.2f"]
       23 MOVE                             R3 R0
       24 CALL                             R1 2 1
       25 LOADK                            R3 K9 ["%.?0+$"]
       26 LOADK                            R4 K4 [""]
       27 NAMECALL                         R1 R1 K10 ["gsub"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

PROTO_29:
        0 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 LOADN                            R4 0
        5 GETUPVAL                         R6 0
        6 GETUPVAL                         R7 1
        7 ADD                              R5 R6 R7
        8 CALL                             R3 2 1
        9 SUB                              R1 R2 R3
       10 GETTABLEKS                       R2 R1 K4 ["Y"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K5 ["EditorMinHeight"]
       15 JUMPIFNOTLE                      R3 R2 ; [+9]
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K6 ["current"]
       20 JUMPIFEQ                         R1 R2 ; [+4]
       22 GETUPVAL                         R2 4
       23 MOVE                             R3 R1
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_30:
        0 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K4 [{"NumberSequence", "beginEditingAsync", "setPart", "finishEditing"}]
        2 GETTABLEKS                       R4 R0 K0 ["NumberSequence"]
        4 SETTABLEKS                       R4 R2 K0 ["NumberSequence"]
        6 GETTABLEKS                       R4 R0 K1 ["beginEditingAsync"]
        8 SETTABLEKS                       R4 R2 K1 ["beginEditingAsync"]
       10 GETTABLEKS                       R4 R0 K2 ["setPart"]
       12 SETTABLEKS                       R4 R2 K2 ["setPart"]
       14 GETTABLEKS                       R4 R0 K3 ["finishEditing"]
       16 SETTABLEKS                       R4 R2 K3 ["finishEditing"]
       18 CALL                             R1 1 3
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["useMemo"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R6 0 1
       27 MOVE                             R7 R1
       28 SETLIST                          R6 R7 1 [1]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K6 ["useState"]
       34 DUPTABLE                         R6 K15 [{["selectedIndex"] = -1, ["hoveredIndex"] = -1, ["draggedIndex"] = -1, ["ghostIndex"] = -1, ["draggedFromGhost"] = False, ["envelopeHovered"] = False}]
       35 CALL                             R5 1 2
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R7 R7 K16 ["useCallback"]
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R9 0 0
       43 CALL                             R7 2 1
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R8 R8 K16 ["useCallback"]
       47 NEWCLOSURE                       R9 P2
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R10 0 0
       51 CALL                             R8 2 1
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K17 ["useSignalState"]
       55 GETTABLEKS                       R10 R0 K18 ["isActive"]
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 4
       59 CALL                             R10 0 1
       60 GETTABLEKS                       R11 R10 K0 ["NumberSequence"]
       62 GETTABLEKS                       R12 R11 K19 ["Scale"]
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R13 R13 K6 ["useState"]
       67 GETTABLEKS                       R14 R12 K20 ["InitialMinY"]
       69 CALL                             R13 1 2
       70 GETUPVAL                         R15 1
       71 GETTABLEKS                       R15 R15 K6 ["useState"]
       73 GETTABLEKS                       R16 R12 K21 ["InitialMaxY"]
       75 CALL                             R15 1 2
       76 GETUPVAL                         R17 5
       77 GETTABLEKS                       R17 R17 K22 ["useEventCallback"]
       79 NEWCLOSURE                       R18 P3
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R8
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R7
       84 CALL                             R17 1 1
       85 GETUPVAL                         R18 1
       86 GETTABLEKS                       R18 R18 K23 ["useEffect"]
       88 NEWCLOSURE                       R19 P4
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R17
       92 NEWTABLE                         R20 0 2
       94 GETTABLEKS                       R21 R3 K24 ["guestUpdateSignal"]
       96 MOVE                             R22 R17
       97 SETLIST                          R20 R21 2 [1]
       99 CALL                             R18 2 0
      100 GETUPVAL                         R18 1
      101 GETTABLEKS                       R18 R18 K23 ["useEffect"]
      103 NEWCLOSURE                       R19 P5
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R1
      107 NEWTABLE                         R20 0 2
      109 MOVE                             R21 R1
      110 GETTABLEKS                       R22 R0 K25 ["setLocalNumberSequence"]
      112 SETLIST                          R20 R21 2 [1]
      114 CALL                             R18 2 0
      115 GETUPVAL                         R18 1
      116 GETTABLEKS                       R18 R18 K23 ["useEffect"]
      118 NEWCLOSURE                       R19 P6
      119 CAPTURE                          UPVAL U6
      120 CAPTURE                          VAL R0
      121 CAPTURE                          UPVAL U2
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R16
      125 NEWTABLE                         R20 0 2
      127 GETTABLEKS                       R21 R0 K26 ["isOpen"]
      129 MOVE                             R22 R2
      130 SETLIST                          R20 R21 2 [1]
      132 CALL                             R18 2 0
      133 GETTABLEKS                       R20 R11 K28 ["EditorYPadding"]
      135 MULK                             R19 R20 K27 [2]
      136 GETTABLEKS                       R20 R11 K29 ["EditorFillPadding"]
      138 ADD                              R18 R19 R20
      139 GETUPVAL                         R19 7
      140 MOVE                             R20 R10
      141 LENGTH                           R21 R1
      142 GETTABLEKS                       R22 R11 K30 ["MaxRows"]
      144 CALL                             R19 3 1
      145 ADD                              R20 R18 R19
      146 GETUPVAL                         R21 1
      147 GETTABLEKS                       R21 R21 K6 ["useState"]
      149 GETTABLEKS                       R22 R11 K31 ["EditorInitialSize"]
      151 CALL                             R21 1 2
      152 GETUPVAL                         R23 5
      153 GETTABLEKS                       R23 R23 K32 ["useRefToState"]
      155 MOVE                             R24 R21
      156 CALL                             R23 1 1
      157 GETUPVAL                         R24 1
      158 GETTABLEKS                       R24 R24 K23 ["useEffect"]
      160 NEWCLOSURE                       R25 P7
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R20
      164 CAPTURE                          VAL R23
      165 NEWTABLE                         R26 0 4
      167 MOVE                             R27 R11
      168 MOVE                             R28 R20
      169 GETTABLEKS                       R29 R0 K33 ["setMinSize"]
      171 GETTABLEKS                       R30 R0 K34 ["setSize"]
      173 SETLIST                          R26 R27 4 [1]
      175 CALL                             R24 2 0
      176 GETUPVAL                         R24 5
      177 GETTABLEKS                       R24 R24 K22 ["useEventCallback"]
      179 NEWCLOSURE                       R25 P8
      180 CAPTURE                          VAL R6
      181 CALL                             R24 1 1
      182 GETUPVAL                         R25 5
      183 GETTABLEKS                       R25 R25 K22 ["useEventCallback"]
      185 NEWCLOSURE                       R26 P9
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R6
      188 CALL                             R25 1 1
      189 GETUPVAL                         R26 5
      190 GETTABLEKS                       R26 R26 K22 ["useEventCallback"]
      192 NEWCLOSURE                       R27 P10
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R6
      195 CALL                             R26 1 1
      196 GETUPVAL                         R27 1
      197 GETTABLEKS                       R27 R27 K35 ["useRef"]
      199 LOADNIL                          R28
      200 CALL                             R27 1 1
      201 GETUPVAL                         R28 5
      202 GETTABLEKS                       R28 R28 K32 ["useRefToState"]
      204 GETTABLEKS                       R30 R5 K7 ["selectedIndex"]
      206 JUMPIFEQKN                       R30 K8 [-1] ; [+5]
      208 GETTABLEKS                       R30 R5 K7 ["selectedIndex"]
      210 GETTABLE                         R29 R1 R30
      211 JUMP                             ; [+1]
      212 LOADNIL                          R29
      213 CALL                             R28 1 1
      214 GETUPVAL                         R29 8
      215 MOVE                             R30 R27
      216 DUPTABLE                         R31 K40 [{"selection", "onPaste", "onDelete", "canDelete"}]
      217 SETTABLEKS                       R28 R31 K36 ["selection"]
      219 NEWCLOSURE                       R32 P11
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R5
      223 SETTABLEKS                       R32 R31 K37 ["onPaste"]
      225 NEWCLOSURE                       R32 P12
      226 CAPTURE                          VAL R26
      227 CAPTURE                          VAL R5
      228 SETTABLEKS                       R32 R31 K38 ["onDelete"]
      230 LENGTH                           R33 R1
      231 LOADN                            R34 2
      232 JUMPIFLT                         R34 R33 ; [+2]
      234 LOADB                            R32 0 +1
      235 LOADB                            R32 1
      236 SETTABLEKS                       R32 R31 K39 ["canDelete"]
      238 CALL                             R29 2 0
      239 GETUPVAL                         R29 5
      240 GETTABLEKS                       R29 R29 K22 ["useEventCallback"]
      242 NEWCLOSURE                       R30 P13
      243 CAPTURE                          VAL R6
      244 CALL                             R29 1 1
      245 GETUPVAL                         R30 5
      246 GETTABLEKS                       R30 R30 K22 ["useEventCallback"]
      248 NEWCLOSURE                       R31 P14
      249 CAPTURE                          VAL R3
      250 CALL                             R30 1 1
      251 GETUPVAL                         R31 5
      252 GETTABLEKS                       R31 R31 K22 ["useEventCallback"]
      254 NEWCLOSURE                       R32 P15
      255 CAPTURE                          VAL R6
      256 CAPTURE                          VAL R3
      257 CAPTURE                          UPVAL U2
      258 CAPTURE                          VAL R4
      259 CALL                             R31 1 1
      260 GETTABLEKS                       R32 R11 K41 ["ZIndex"]
      262 NEWTABLE                         R33 0 0
      264 MOVE                             R34 R1
      265 LOADNIL                          R35
      266 LOADNIL                          R36
      267 FORGPREP                         R34
      268 GETTABLEKS                       R40 R5 K10 ["draggedIndex"]
      270 JUMPIFNOTEQ                      R37 R40 ; [+6]
      272 GETTABLEKS                       R40 R5 K12 ["draggedFromGhost"]
      274 JUMPIFNOT                        R40 ; [+2]
      275 LOADK                            R39 K42 ["Ghost"]
      276 JUMP                             ; [+5]
      277 LOADK                            R39 K43 ["%*"]
      278 MOVE                             R41 R37
      279 NAMECALL                         R39 R39 K44 ["format"]
      281 CALL                             R39 2 1
      282 GETTABLEKS                       R41 R5 K7 ["selectedIndex"]
      284 JUMPIFEQ                         R37 R41 ; [+2]
      286 LOADB                            R40 0 +1
      287 LOADB                            R40 1
      288 LOADK                            R41 K45 ["Keypoint%*"]
      289 MOVE                             R43 R39
      290 NAMECALL                         R41 R41 K44 ["format"]
      292 CALL                             R41 2 1
      293 GETUPVAL                         R42 9
      294 GETUPVAL                         R43 10
      295 DUPTABLE                         R44 K56 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "MinY", "MaxY", "XLocked", "OnKeypointChanged", "OnKeypointDeleted", "SetDragged", "SetHovered"}]
      296 JUMPIFNOT                        R40 ; [+5]
      297 GETTABLEKS                       R45 R11 K57 ["Point"]
      299 GETTABLEKS                       R45 R45 K58 ["SelectedStyle"]
      301 JUMP                             ; [+4]
      302 GETTABLEKS                       R45 R11 K57 ["Point"]
      304 GETTABLEKS                       R45 R45 K59 ["UnselectedStyle"]
      306 SETTABLEKS                       R45 R44 K46 ["style"]
      308 JUMPIFNOT                        R40 ; [+3]
      309 GETTABLEKS                       R45 R32 K60 ["SelectedKeypoint"]
      311 JUMP                             ; [+2]
      312 GETTABLEKS                       R45 R32 K47 ["Keypoint"]
      314 SETTABLEKS                       R45 R44 K41 ["ZIndex"]
      316 SETTABLEKS                       R38 R44 K47 ["Keypoint"]
      318 SETTABLEKS                       R37 R44 K48 ["KeypointIndex"]
      320 SETTABLEKS                       R13 R44 K49 ["MinY"]
      322 SETTABLEKS                       R15 R44 K50 ["MaxY"]
      324 LOADB                            R45 1
      325 JUMPIFEQKN                       R37 K61 [1] ; [+6]
      327 LENGTH                           R46 R1
      328 JUMPIFEQ                         R37 R46 ; [+2]
      330 LOADB                            R45 0 +1
      331 LOADB                            R45 1
      332 SETTABLEKS                       R45 R44 K51 ["XLocked"]
      334 GETTABLEKS                       R45 R3 K62 ["updateKeypoint"]
      336 SETTABLEKS                       R45 R44 K52 ["OnKeypointChanged"]
      338 SETTABLEKS                       R26 R44 K53 ["OnKeypointDeleted"]
      340 SETTABLEKS                       R25 R44 K54 ["SetDragged"]
      342 SETTABLEKS                       R24 R44 K55 ["SetHovered"]
      344 CALL                             R42 2 1
      345 SETTABLE                         R42 R33 R41
      346 FORGLOOP                         R34 2 ; [-79]
      348 GETTABLEKS                       R34 R5 K11 ["ghostIndex"]
      350 JUMPIFEQKN                       R34 K8 [-1] ; [+32]
      352 LENGTH                           R35 R4
      353 JUMPIFNOTLE                      R34 R35 ; [+29]
      355 GETUPVAL                         R35 2
      356 GETTABLEKS                       R35 R35 K63 ["calculateGhostKeypoint"]
      358 MOVE                             R36 R4
      359 MOVE                             R37 R34
      360 CALL                             R35 2 1
      361 GETUPVAL                         R36 9
      362 GETUPVAL                         R37 10
      363 DUPTABLE                         R38 K64 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "SetDragged"}]
      364 GETTABLEKS                       R39 R11 K57 ["Point"]
      366 GETTABLEKS                       R39 R39 K65 ["GhostStyle"]
      368 SETTABLEKS                       R39 R38 K46 ["style"]
      370 GETTABLEKS                       R39 R32 K66 ["GhostKeypoint"]
      372 SETTABLEKS                       R39 R38 K41 ["ZIndex"]
      374 SETTABLEKS                       R35 R38 K47 ["Keypoint"]
      376 SETTABLEKS                       R34 R38 K48 ["KeypointIndex"]
      378 SETTABLEKS                       R31 R38 K54 ["SetDragged"]
      380 CALL                             R36 2 1
      381 SETTABLEKS                       R36 R33 K67 ["KeypointGhost"]
      383 LOADNIL                          R35
      384 GETTABLEKS                       R36 R5 K7 ["selectedIndex"]
      386 JUMPIFEQKN                       R36 K8 [-1] ; [+54]
      388 GETTABLEKS                       R37 R5 K7 ["selectedIndex"]
      390 GETTABLE                         R36 R1 R37
      391 GETUPVAL                         R37 2
      392 GETTABLEKS                       R37 R37 K68 ["findKeypoint"]
      394 MOVE                             R38 R4
      395 MOVE                             R39 R36
      396 CALL                             R37 2 1
      397 JUMPIFNOT                        R37 ; [+6]
      398 LOADN                            R39 1
      399 JUMPIFNOTLT                      R39 R37 ; [+4]
      401 SUBK                             R39 R37 K61 [1]
      402 GETTABLE                         R38 R4 R39
      403 JUMP                             ; [+1]
      404 LOADNIL                          R38
      405 JUMPIFNOT                        R37 ; [+6]
      406 LENGTH                           R40 R4
      407 JUMPIFNOTLT                      R37 R40 ; [+4]
      409 ADDK                             R40 R37 K61 [1]
      410 GETTABLE                         R39 R4 R40
      411 JUMP                             ; [+1]
      412 LOADNIL                          R39
      413 GETUPVAL                         R40 9
      414 GETUPVAL                         R41 11
      415 DUPTABLE                         R42 K71 [{"ZIndex", "Keypoint", "PrevKeypoint", "NextKeypoint", "MinY", "MaxY", "OnKeypointChanged", "SetDragged", "SetHovered"}]
      416 GETTABLEKS                       R43 R32 K72 ["EnvelopeCurve"]
      418 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      420 SETTABLEKS                       R36 R42 K47 ["Keypoint"]
      422 SETTABLEKS                       R38 R42 K69 ["PrevKeypoint"]
      424 SETTABLEKS                       R39 R42 K70 ["NextKeypoint"]
      426 SETTABLEKS                       R13 R42 K49 ["MinY"]
      428 SETTABLEKS                       R15 R42 K50 ["MaxY"]
      430 NEWCLOSURE                       R43 P16
      431 CAPTURE                          VAL R3
      432 CAPTURE                          VAL R5
      433 SETTABLEKS                       R43 R42 K52 ["OnKeypointChanged"]
      435 SETTABLEKS                       R30 R42 K54 ["SetDragged"]
      437 SETTABLEKS                       R29 R42 K55 ["SetHovered"]
      439 CALL                             R40 2 1
      440 MOVE                             R35 R40
      441 GETUPVAL                         R36 1
      442 GETTABLEKS                       R36 R36 K5 ["useMemo"]
      444 NEWCLOSURE                       R37 P17
      445 CAPTURE                          VAL R4
      446 NEWTABLE                         R38 0 1
      448 MOVE                             R39 R4
      449 SETLIST                          R38 R39 1 [1]
      451 CALL                             R36 2 1
      452 GETUPVAL                         R37 1
      453 GETTABLEKS                       R37 R37 K16 ["useCallback"]
      455 NEWCLOSURE                       R38 P18
      456 CAPTURE                          VAL R15
      457 CAPTURE                          VAL R13
      458 NEWTABLE                         R39 0 2
      460 MOVE                             R40 R15
      461 MOVE                             R41 R13
      462 SETLIST                          R39 R40 2 [1]
      464 CALL                             R37 2 1
      465 GETUPVAL                         R38 12
      466 CALL                             R38 0 1
      467 DUPTABLE                         R39 K80 [{"Grid", "Curve", "GhostKeypointTracker", "XScale", "YScale", "EnvelopeHandles", "ScaleInputs"}]
      468 GETUPVAL                         R40 9
      469 GETUPVAL                         R41 13
      470 DUPTABLE                         R42 K83 [{"XAxis", "YAxis", "ZIndex"}]
      471 DUPTABLE                         R43 K87 [{["Type"] = "Uniform", ["Unit"]}]
      472 GETTABLEKS                       R45 R11 K19 ["Scale"]
      474 GETTABLEKS                       R45 R45 K89 ["MaxX"]
      476 DIVK                             R44 R45 K88 [4]
      477 SETTABLEKS                       R44 R43 K86 ["Unit"]
      479 SETTABLEKS                       R43 R42 K81 ["XAxis"]
      481 DUPTABLE                         R43 K91 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      482 SUB                              R45 R15 R13
      483 DIVK                             R44 R45 K88 [4]
      484 SETTABLEKS                       R44 R43 K86 ["Unit"]
      486 SETTABLEKS                       R13 R43 K90 ["Offset"]
      488 SETTABLEKS                       R43 R42 K82 ["YAxis"]
      490 MOVE                             R43 R38
      491 CALL                             R43 0 1
      492 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      494 CALL                             R40 2 1
      495 SETTABLEKS                       R40 R39 K73 ["Grid"]
      497 GETUPVAL                         R40 9
      498 GETUPVAL                         R41 14
      499 DUPTABLE                         R42 K95 [{["Points"], ["Color3"], ["Thickness"] = 2, ["ZIndex"]}]
      500 SETTABLEKS                       R36 R42 K92 ["Points"]
      502 GETTABLEKS                       R43 R11 K96 ["CurveColor"]
      504 SETTABLEKS                       R43 R42 K93 ["Color3"]
      506 MOVE                             R43 R38
      507 CALL                             R43 0 1
      508 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      510 CALL                             R40 2 1
      511 SETTABLEKS                       R40 R39 K74 ["Curve"]
      513 GETUPVAL                         R40 9
      514 GETUPVAL                         R41 15
      515 DUPTABLE                         R42 K100 [{"Enabled", "Keypoints", "SetGhostKeypoint", "ZIndex"}]
      516 LOADB                            R43 0
      517 LENGTH                           R44 R4
      518 GETUPVAL                         R45 16
      519 JUMPIFNOTLT                      R44 R45 ; [+16]
      521 LOADB                            R43 0
      522 GETTABLEKS                       R44 R5 K10 ["draggedIndex"]
      524 JUMPIFNOTEQKN                    R44 K8 [-1] ; [+11]
      526 LOADB                            R43 0
      527 GETTABLEKS                       R44 R5 K9 ["hoveredIndex"]
      529 JUMPIFNOTEQKN                    R44 K8 [-1] ; [+6]
      531 GETTABLEKS                       R44 R5 K14 ["envelopeHovered"]
      533 NOT                              R43 R44
      534 JUMPIFNOT                        R43 ; [+1]
      535 MOVE                             R43 R9
      536 SETTABLEKS                       R43 R42 K97 ["Enabled"]
      538 SETTABLEKS                       R4 R42 K98 ["Keypoints"]
      540 SETTABLEKS                       R8 R42 K99 ["SetGhostKeypoint"]
      542 MOVE                             R43 R38
      543 CALL                             R43 0 1
      544 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      546 CALL                             R40 2 1
      547 SETTABLEKS                       R40 R39 K75 ["GhostKeypointTracker"]
      549 GETUPVAL                         R40 9
      550 GETUPVAL                         R41 17
      551 DUPTABLE                         R42 K111 [{["Side"] = "Bottom", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      552 DUPTABLE                         R43 K87 [{["Type"] = "Uniform", ["Unit"]}]
      553 GETTABLEKS                       R45 R11 K19 ["Scale"]
      555 GETTABLEKS                       R45 R45 K89 ["MaxX"]
      557 DIVK                             R44 R45 K88 [4]
      558 SETTABLEKS                       R44 R43 K86 ["Unit"]
      560 SETTABLEKS                       R43 R42 K103 ["Schema"]
      562 GETTABLEKS                       R43 R11 K112 ["ScaleTextSize"]
      564 SETTABLEKS                       R43 R42 K108 ["TickTextSize"]
      566 GETTABLEKS                       R43 R11 K113 ["ScaleTextColor"]
      568 SETTABLEKS                       R43 R42 K109 ["TickColor"]
      570 MOVE                             R43 R38
      571 CALL                             R43 0 1
      572 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      574 CALL                             R40 2 1
      575 SETTABLEKS                       R40 R39 K76 ["XScale"]
      577 GETUPVAL                         R40 9
      578 GETUPVAL                         R41 17
      579 DUPTABLE                         R42 K117 [{["Side"] = "Left", ["Formatter"], ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
      580 SETTABLEKS                       R37 R42 K115 ["Formatter"]
      582 DUPTABLE                         R43 K91 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      583 SUB                              R45 R15 R13
      584 DIVK                             R44 R45 K88 [4]
      585 SETTABLEKS                       R44 R43 K86 ["Unit"]
      587 SETTABLEKS                       R13 R43 K90 ["Offset"]
      589 SETTABLEKS                       R43 R42 K103 ["Schema"]
      591 GETTABLEKS                       R43 R11 K112 ["ScaleTextSize"]
      593 SETTABLEKS                       R43 R42 K108 ["TickTextSize"]
      595 GETTABLEKS                       R43 R11 K113 ["ScaleTextColor"]
      597 SETTABLEKS                       R43 R42 K109 ["TickColor"]
      599 GETIMPORT                        R43 K120 [UDim.new]
      601 LOADN                            R44 0
      602 LOADN                            R45 30
      603 CALL                             R43 2 1
      604 SETTABLEKS                       R43 R42 K116 ["Size"]
      606 MOVE                             R43 R38
      607 CALL                             R43 0 1
      608 SETTABLEKS                       R43 R42 K41 ["ZIndex"]
      610 CALL                             R40 2 1
      611 SETTABLEKS                       R40 R39 K77 ["YScale"]
      613 SETTABLEKS                       R35 R39 K78 ["EnvelopeHandles"]
      615 GETUPVAL                         R40 9
      616 GETUPVAL                         R41 18
      617 DUPTABLE                         R42 K127 [{"unorderedKeypoints", "controller", "minY", "maxY", "setMinY", "setMaxY"}]
      618 SETTABLEKS                       R1 R42 K121 ["unorderedKeypoints"]
      620 SETTABLEKS                       R3 R42 K122 ["controller"]
      622 SETTABLEKS                       R13 R42 K123 ["minY"]
      624 SETTABLEKS                       R15 R42 K124 ["maxY"]
      626 SETTABLEKS                       R14 R42 K125 ["setMinY"]
      628 SETTABLEKS                       R16 R42 K126 ["setMaxY"]
      630 CALL                             R40 2 1
      631 SETTABLEKS                       R40 R39 K79 ["ScaleInputs"]
      633 MOVE                             R40 R33
      634 LOADNIL                          R41
      635 LOADNIL                          R42
      636 FORGPREP                         R40
      637 SETTABLE                         R44 R39 R43
      638 FORGLOOP                         R40 2 ; [-2]
      640 GETUPVAL                         R40 19
      641 CALL                             R40 0 1
      642 GETUPVAL                         R41 12
      643 CALL                             R41 0 1
      644 GETTABLEKS                       R42 R11 K28 ["EditorYPadding"]
      646 GETTABLEKS                       R43 R11 K29 ["EditorFillPadding"]
      648 GETUPVAL                         R44 9
      649 GETUPVAL                         R45 20
      650 DUPTABLE                         R46 K132 [{["tag"] = "size-full", ["ref"], ["onAbsoluteSizeChanged"]}]
      651 SETTABLEKS                       R27 R46 K130 ["ref"]
      653 NEWCLOSURE                       R47 P19
      654 CAPTURE                          VAL R18
      655 CAPTURE                          VAL R19
      656 CAPTURE                          VAL R11
      657 CAPTURE                          VAL R23
      658 CAPTURE                          VAL R22
      659 SETTABLEKS                       R47 R46 K131 ["onAbsoluteSizeChanged"]
      661 DUPTABLE                         R47 K135 [{"Overlay", "Content"}]
      662 GETUPVAL                         R48 9
      663 GETUPVAL                         R49 20
      664 DUPTABLE                         R50 K140 [{["tag"] = "size-full", ["ZIndex"], ["backgroundStyle"], ["Visible"], ["onActivated"], ["stateLayer"]}]
      665 GETTABLEKS                       R51 R32 K133 ["Overlay"]
      667 SETTABLEKS                       R51 R50 K41 ["ZIndex"]
      669 DUPTABLE                         R51 K141 [{"Color3"}]
      670 GETTABLEKS                       R52 R40 K142 ["Color"]
      672 GETTABLEKS                       R52 R52 K143 ["Surface"]
      674 GETTABLEKS                       R52 R52 K144 ["Surface_300"]
      676 GETTABLEKS                       R52 R52 K93 ["Color3"]
      678 SETTABLEKS                       R52 R51 K93 ["Color3"]
      680 SETTABLEKS                       R51 R50 K136 ["backgroundStyle"]
      682 NOT                              R51 R9
      683 SETTABLEKS                       R51 R50 K137 ["Visible"]
      685 DUPCLOSURE                       R51 K145 [PROTO_30]
      686 SETTABLEKS                       R51 R50 K138 ["onActivated"]
      688 DUPTABLE                         R51 K148 [{["affordance"] = "None"}]
      689 SETTABLEKS                       R51 R50 K139 ["stateLayer"]
      691 DUPTABLE                         R51 K151 [{"UIGradient", "TextMessage"}]
      692 GETUPVAL                         R52 9
      693 LOADK                            R53 K149 ["UIGradient"]
      694 DUPTABLE                         R54 K155 [{["Rotation"] = 90, ["Transparency"]}]
      695 GETIMPORT                        R55 K156 [NumberSequence.new]
      697 NEWTABLE                         R56 0 4
      699 GETIMPORT                        R57 K158 [NumberSequenceKeypoint.new]
      701 LOADN                            R58 0
      702 LOADK                            R59 K159 [0.9]
      703 CALL                             R57 2 1
      704 GETIMPORT                        R58 K158 [NumberSequenceKeypoint.new]
      706 LOADK                            R59 K160 [0.1]
      707 LOADK                            R60 K161 [0.8]
      708 CALL                             R58 2 1
      709 GETIMPORT                        R59 K158 [NumberSequenceKeypoint.new]
      711 LOADK                            R60 K162 [0.2]
      712 LOADK                            R61 K163 [0.6]
      713 CALL                             R59 2 1
      714 GETIMPORT                        R60 K158 [NumberSequenceKeypoint.new]
      716 LOADN                            R61 1
      717 LOADN                            R62 0
      718 CALL                             R60 2 -1
      719 SETLIST                          R56 R57 -1 [1]
      721 CALL                             R55 1 1
      722 SETTABLEKS                       R55 R54 K154 ["Transparency"]
      724 CALL                             R52 2 1
      725 SETTABLEKS                       R52 R51 K149 ["UIGradient"]
      727 GETUPVAL                         R52 9
      728 GETUPVAL                         R53 21
      729 DUPTABLE                         R54 K168 [{["Position"], ["Text"] = "Not available for selected instance(s)", ["tag"] = "anchor-center-center size-full padding-small"}]
      730 GETIMPORT                        R55 K170 [UDim2.new]
      732 LOADK                            R56 K171 [0.5]
      733 LOADN                            R57 0
      734 LOADK                            R58 K171 [0.5]
      735 LOADN                            R59 -15
      736 CALL                             R55 4 1
      737 SETTABLEKS                       R55 R54 K164 ["Position"]
      739 CALL                             R52 2 1
      740 SETTABLEKS                       R52 R51 K150 ["TextMessage"]
      742 CALL                             R48 3 1
      743 SETTABLEKS                       R48 R47 K133 ["Overlay"]
      745 GETUPVAL                         R48 9
      746 GETUPVAL                         R49 20
      747 DUPTABLE                         R50 K175 [{["tag"] = "flex-none size-full-0 auto-y bg-surface-200", ["layout"], ["padding"]}]
      748 DUPTABLE                         R51 K178 [{"FillDirection", "Padding"}]
      749 GETIMPORT                        R52 K181 [Enum.FillDirection.Vertical]
      751 SETTABLEKS                       R52 R51 K176 ["FillDirection"]
      753 GETIMPORT                        R52 K120 [UDim.new]
      755 LOADN                            R53 0
      756 MOVE                             R54 R43
      757 CALL                             R52 2 1
      758 SETTABLEKS                       R52 R51 K177 ["Padding"]
      760 SETTABLEKS                       R51 R50 K173 ["layout"]
      762 DUPTABLE                         R51 K184 [{"top", "bottom"}]
      763 GETIMPORT                        R52 K120 [UDim.new]
      765 LOADN                            R53 0
      766 MOVE                             R54 R42
      767 CALL                             R52 2 1
      768 SETTABLEKS                       R52 R51 K182 ["top"]
      770 GETIMPORT                        R52 K120 [UDim.new]
      772 LOADN                            R53 0
      773 MOVE                             R54 R42
      774 CALL                             R52 2 1
      775 SETTABLEKS                       R52 R51 K183 ["bottom"]
      777 SETTABLEKS                       R51 R50 K174 ["padding"]
      779 DUPTABLE                         R51 K187 [{"Editor", "RowStopsContainer"}]
      780 GETUPVAL                         R52 9
      781 GETUPVAL                         R53 20
      782 DUPTABLE                         R54 K190 [{["tag"] = "flex-none size-full-0 bg-surface-200", ["Size"], ["padding"], ["LayoutOrder"]}]
      783 GETIMPORT                        R55 K170 [UDim2.new]
      785 LOADN                            R56 1
      786 LOADN                            R57 0
      787 LOADN                            R58 0
      788 GETTABLEKS                       R59 R21 K191 ["Y"]
      790 CALL                             R55 4 1
      791 SETTABLEKS                       R55 R54 K116 ["Size"]
      793 DUPTABLE                         R55 K194 [{"left", "right", "bottom"}]
      794 GETIMPORT                        R56 K120 [UDim.new]
      796 LOADN                            R57 0
      797 GETTABLEKS                       R59 R40 K177 ["Padding"]
      799 GETTABLEKS                       R59 R59 K195 ["Medium"]
      801 MULK                             R58 R59 K88 [4]
      802 CALL                             R56 2 1
      803 SETTABLEKS                       R56 R55 K192 ["left"]
      805 GETIMPORT                        R56 K120 [UDim.new]
      807 LOADN                            R57 0
      808 GETTABLEKS                       R58 R40 K177 ["Padding"]
      810 GETTABLEKS                       R58 R58 K195 ["Medium"]
      812 CALL                             R56 2 1
      813 SETTABLEKS                       R56 R55 K193 ["right"]
      815 GETIMPORT                        R56 K120 [UDim.new]
      817 LOADN                            R57 0
      818 GETTABLEKS                       R59 R40 K177 ["Padding"]
      820 GETTABLEKS                       R59 R59 K195 ["Medium"]
      822 MULK                             R58 R59 K196 [3]
      823 CALL                             R56 2 1
      824 SETTABLEKS                       R56 R55 K183 ["bottom"]
      826 SETTABLEKS                       R55 R54 K174 ["padding"]
      828 MOVE                             R55 R41
      829 CALL                             R55 0 1
      830 SETTABLEKS                       R55 R54 K189 ["LayoutOrder"]
      832 DUPTABLE                         R55 K198 [{"Canvas"}]
      833 GETUPVAL                         R56 9
      834 GETUPVAL                         R57 22
      835 DUPTABLE                         R58 K208 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      836 GETIMPORT                        R59 K210 [Rect.new]
      838 LOADN                            R60 0
      839 MOVE                             R61 R13
      840 GETTABLEKS                       R62 R11 K19 ["Scale"]
      842 GETTABLEKS                       R62 R62 K89 ["MaxX"]
      844 MOVE                             R63 R15
      845 CALL                             R59 4 1
      846 SETTABLEKS                       R59 R58 K199 ["GraphRect"]
      848 GETTABLEKS                       R59 R40 K142 ["Color"]
      850 GETTABLEKS                       R59 R59 K143 ["Surface"]
      852 GETTABLEKS                       R59 R59 K144 ["Surface_300"]
      854 GETTABLEKS                       R59 R59 K93 ["Color3"]
      856 SETTABLEKS                       R59 R58 K200 ["CanvasBackgroundColor3"]
      858 GETUPVAL                         R59 23
      859 SETTABLEKS                       R59 R58 K203 ["ViewportPaddingLeft"]
      861 GETUPVAL                         R59 23
      862 SETTABLEKS                       R59 R58 K204 ["ViewportPaddingRight"]
      864 GETUPVAL                         R59 23
      865 SETTABLEKS                       R59 R58 K205 ["ViewportPaddingTop"]
      867 GETUPVAL                         R59 23
      868 SETTABLEKS                       R59 R58 K206 ["ViewportPaddingBottom"]
      870 SETTABLEKS                       R39 R58 K207 ["childrenUnclipped"]
      872 DUPTABLE                         R59 K212 [{"Envelope"}]
      873 GETUPVAL                         R60 9
      874 GETUPVAL                         R61 24
      875 DUPTABLE                         R62 K215 [{["Color3"], ["Transparency"], ["Keypoints"], ["ScanLines"] = 300, ["ZIndex"] = -1}]
      876 GETTABLEKS                       R63 R11 K216 ["EnvelopeColor"]
      878 SETTABLEKS                       R63 R62 K93 ["Color3"]
      880 GETTABLEKS                       R63 R11 K217 ["EnvelopeTransparency"]
      882 SETTABLEKS                       R63 R62 K154 ["Transparency"]
      884 SETTABLEKS                       R4 R62 K98 ["Keypoints"]
      886 CALL                             R60 2 1
      887 SETTABLEKS                       R60 R59 K211 ["Envelope"]
      889 CALL                             R56 3 1
      890 SETTABLEKS                       R56 R55 K197 ["Canvas"]
      892 CALL                             R52 3 1
      893 SETTABLEKS                       R52 R51 K185 ["Editor"]
      895 GETUPVAL                         R52 9
      896 GETUPVAL                         R53 20
      897 DUPTABLE                         R54 K219 [{["tag"] = "size-full-0 auto-y bg-surface-200", ["LayoutOrder"]}]
      898 MOVE                             R55 R41
      899 CALL                             R55 0 1
      900 SETTABLEKS                       R55 R54 K189 ["LayoutOrder"]
      902 DUPTABLE                         R55 K221 [{"RowStops"}]
      903 GETUPVAL                         R56 9
      904 GETUPVAL                         R57 25
      905 DUPTABLE                         R58 K226 [{"unorderedKeypoints", "unorderedKeypointsBinding", "selectedUnorderedKeypoint", "autoScrollToSelected", "SetSelectedUnorderedKeypoint", "controller", "MinY", "MaxY"}]
      906 SETTABLEKS                       R1 R58 K121 ["unorderedKeypoints"]
      908 SETTABLEKS                       R2 R58 K222 ["unorderedKeypointsBinding"]
      910 GETTABLEKS                       R59 R5 K7 ["selectedIndex"]
      912 SETTABLEKS                       R59 R58 K223 ["selectedUnorderedKeypoint"]
      914 GETTABLEKS                       R60 R5 K10 ["draggedIndex"]
      916 JUMPIFNOTEQKN                    R60 K8 [-1] ; [+2]
      918 LOADB                            R59 0 +1
      919 LOADB                            R59 1
      920 SETTABLEKS                       R59 R58 K224 ["autoScrollToSelected"]
      922 SETTABLEKS                       R7 R58 K225 ["SetSelectedUnorderedKeypoint"]
      924 SETTABLEKS                       R3 R58 K122 ["controller"]
      926 SETTABLEKS                       R13 R58 K49 ["MinY"]
      928 SETTABLEKS                       R15 R58 K50 ["MaxY"]
      930 CALL                             R56 2 1
      931 SETTABLEKS                       R56 R55 K220 ["RowStops"]
      933 CALL                             R52 3 1
      934 SETTABLEKS                       R52 R51 K186 ["RowStopsContainer"]
      936 CALL                             R48 3 1
      937 SETTABLEKS                       R48 R47 K134 ["Content"]
      939 CALL                             R44 3 -1
      940 RETURN                           R44 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R0 K7 ["Components"]
       26 GETTABLEKS                       R4 R4 K8 ["PropertyEntries"]
       28 GETTABLEKS                       R4 R4 K9 ["PropertyView"]
       30 GETTABLEKS                       R4 R4 K10 ["NumberSequencePropertyView"]
       32 GETTABLEKS                       R4 R4 K12 ["EnvelopeHandles"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K6 [require]
       37 GETTABLEKS                       R5 R1 K13 ["Foundation"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K6 [require]
       42 GETTABLEKS                       R6 R0 K7 ["Components"]
       44 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       46 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
       48 GETTABLEKS                       R6 R6 K10 ["NumberSequencePropertyView"]
       50 GETTABLEKS                       R6 R6 K14 ["GhostKeypointTracker"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K6 [require]
       55 GETTABLEKS                       R7 R1 K15 ["Graphing"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K6 [require]
       60 GETTABLEKS                       R8 R0 K7 ["Components"]
       62 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       64 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       66 GETTABLEKS                       R8 R8 K10 ["NumberSequencePropertyView"]
       68 GETTABLEKS                       R8 R8 K16 ["NumberSequenceEnvelope"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K6 [require]
       73 GETTABLEKS                       R9 R0 K7 ["Components"]
       75 GETTABLEKS                       R9 R9 K8 ["PropertyEntries"]
       77 GETTABLEKS                       R9 R9 K9 ["PropertyView"]
       79 GETTABLEKS                       R9 R9 K10 ["NumberSequencePropertyView"]
       81 GETTABLEKS                       R9 R9 K17 ["NumberSequencePoint"]
       83 CALL                             R8 1 1
       84 GETIMPORT                        R9 K6 [require]
       86 GETTABLEKS                       R10 R0 K7 ["Components"]
       88 GETTABLEKS                       R10 R10 K8 ["PropertyEntries"]
       90 GETTABLEKS                       R10 R10 K9 ["PropertyView"]
       92 GETTABLEKS                       R10 R10 K10 ["NumberSequencePropertyView"]
       94 GETTABLEKS                       R10 R10 K18 ["NumberSequenceRowStops"]
       96 CALL                             R9 1 1
       97 GETIMPORT                        R10 K6 [require]
       99 GETTABLEKS                       R11 R0 K7 ["Components"]
      101 GETTABLEKS                       R11 R11 K8 ["PropertyEntries"]
      103 GETTABLEKS                       R11 R11 K9 ["PropertyView"]
      105 GETTABLEKS                       R11 R11 K10 ["NumberSequencePropertyView"]
      107 GETTABLEKS                       R11 R11 K19 ["Types"]
      109 CALL                             R10 1 1
      110 GETIMPORT                        R11 K6 [require]
      112 GETTABLEKS                       R12 R0 K7 ["Components"]
      114 GETTABLEKS                       R12 R12 K8 ["PropertyEntries"]
      116 GETTABLEKS                       R12 R12 K9 ["PropertyView"]
      118 GETTABLEKS                       R12 R12 K10 ["NumberSequencePropertyView"]
      120 GETTABLEKS                       R12 R12 K20 ["NumberSequenceUtil"]
      122 CALL                             R11 1 1
      123 GETIMPORT                        R12 K6 [require]
      125 GETTABLEKS                       R13 R1 K21 ["React"]
      127 CALL                             R12 1 1
      128 GETIMPORT                        R13 K6 [require]
      130 GETTABLEKS                       R14 R1 K22 ["ReactUtils"]
      132 CALL                             R13 1 1
      133 GETIMPORT                        R14 K6 [require]
      135 GETTABLEKS                       R15 R0 K7 ["Components"]
      137 GETTABLEKS                       R15 R15 K8 ["PropertyEntries"]
      139 GETTABLEKS                       R15 R15 K9 ["PropertyView"]
      141 GETTABLEKS                       R15 R15 K10 ["NumberSequencePropertyView"]
      143 GETTABLEKS                       R15 R15 K23 ["ScaleInputs"]
      145 CALL                             R14 1 1
      146 GETIMPORT                        R15 K6 [require]
      148 GETTABLEKS                       R16 R1 K24 ["Signals"]
      150 CALL                             R15 1 1
      151 GETIMPORT                        R16 K6 [require]
      153 GETTABLEKS                       R17 R1 K25 ["SignalsReact"]
      155 CALL                             R16 1 1
      156 GETIMPORT                        R17 K6 [require]
      158 GETTABLEKS                       R18 R0 K7 ["Components"]
      160 GETTABLEKS                       R18 R18 K26 ["Util"]
      162 GETTABLEKS                       R18 R18 K27 ["RowStops"]
      164 GETTABLEKS                       R18 R18 K28 ["calculateRowStopsHeight"]
      166 CALL                             R17 1 1
      167 GETIMPORT                        R18 K6 [require]
      169 GETTABLEKS                       R19 R0 K29 ["Hooks"]
      171 GETTABLEKS                       R19 R19 K30 ["useLocalEditing"]
      173 CALL                             R18 1 1
      174 GETIMPORT                        R19 K6 [require]
      176 GETTABLEKS                       R20 R0 K7 ["Components"]
      178 GETTABLEKS                       R20 R20 K8 ["PropertyEntries"]
      180 GETTABLEKS                       R20 R20 K9 ["PropertyView"]
      182 GETTABLEKS                       R20 R20 K10 ["NumberSequencePropertyView"]
      184 GETTABLEKS                       R20 R20 K31 ["useNumberSequence"]
      186 CALL                             R19 1 1
      187 GETIMPORT                        R20 K6 [require]
      189 GETTABLEKS                       R21 R0 K29 ["Hooks"]
      191 GETTABLEKS                       R21 R21 K32 ["useVisualValues"]
      193 CALL                             R20 1 1
      194 GETTABLEKS                       R21 R6 K33 ["Canvas"]
      196 GETTABLEKS                       R22 R6 K34 ["Curve"]
      198 GETTABLEKS                       R23 R6 K35 ["Grid"]
      200 GETTABLEKS                       R24 R6 K36 ["Scale"]
      202 GETTABLEKS                       R25 R4 K37 ["View"]
      204 GETTABLEKS                       R26 R4 K38 ["Text"]
      206 GETTABLEKS                       R27 R13 K39 ["createNextOrder"]
      208 GETTABLEKS                       R28 R12 K40 ["createElement"]
      210 GETTABLEKS                       R29 R4 K29 ["Hooks"]
      212 GETTABLEKS                       R29 R29 K41 ["useTokens"]
      214 GETTABLEKS                       R30 R2 K42 ["MAX_POINTS"]
      216 GETIMPORT                        R31 K45 [UDim.new]
      218 LOADN                            R32 0
      219 LOADN                            R33 0
      220 CALL                             R31 2 1
      221 DUPCLOSURE                       R32 K46 [PROTO_31]
      222 CAPTURE                          VAL R19
      223 CAPTURE                          VAL R12
      224 CAPTURE                          VAL R11
      225 CAPTURE                          VAL R16
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R13
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R18
      231 CAPTURE                          VAL R28
      232 CAPTURE                          VAL R8
      233 CAPTURE                          VAL R3
      234 CAPTURE                          VAL R27
      235 CAPTURE                          VAL R23
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R5
      238 CAPTURE                          VAL R30
      239 CAPTURE                          VAL R24
      240 CAPTURE                          VAL R14
      241 CAPTURE                          VAL R29
      242 CAPTURE                          VAL R25
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R31
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R9
      248 RETURN                           R32 1

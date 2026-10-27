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
        5 JUMPIFEQKN                       R2 K3 [-1] ; [+22]
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+19]
        9 GETTABLEKS                       R2 R0 K4 ["suppressGhostAtPosition"]
       11 JUMPIFNOT                        R2 ; [+16]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K4 ["suppressGhostAtPosition"]
       15 SUB                              R2 R3 R4
       16 GETTABLEKS                       R2 R2 K5 ["Magnitude"]
       18 LOADK                            R3 K6 [0.001]
       19 JUMPIFNOTLT                      R2 R3 ; [+5]
       21 LOADN                            R2 -1
       22 SETTABLEKS                       R2 R1 K7 ["ghostIndex"]
       24 RETURN                           R1 1
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K4 ["suppressGhostAtPosition"]
       28 GETUPVAL                         R2 0
       29 SETTABLEKS                       R2 R1 K7 ["ghostIndex"]
       31 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

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
        8 JUMPIFNOTEQKS                    R2 K4 ["Start"] ; [+4]
       10 LOADN                            R2 -1
       11 SETTABLEKS                       R2 R1 K5 ["ghostIndex"]
       13 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+3]
        2 MOVE                             R2 R0
        3 JUMP                             ; [+1]
        4 LOADN                            R2 -1
        5 GETUPVAL                         R3 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K7 [{"selectedIndex", "draggedIndex", "hoveredIndex", "ghostIndex", "draggedFromGhost", "suppressGhostAtPosition", "envelopeHovered"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedIndex"]
        4 GETUPVAL                         R2 1
        5 JUMPIF                           R2 ; [+2]
        6 GETTABLEKS                       R2 R0 K1 ["draggedIndex"]
        8 SETTABLEKS                       R2 R1 K1 ["draggedIndex"]
       10 GETUPVAL                         R3 2
       11 JUMPIFEQKNIL                     R3 ; [+3]
       13 GETUPVAL                         R2 2
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R2 R0 K2 ["hoveredIndex"]
       17 SETTABLEKS                       R2 R1 K2 ["hoveredIndex"]
       19 GETTABLEKS                       R2 R0 K3 ["ghostIndex"]
       21 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
       23 GETUPVAL                         R3 3
       24 JUMPIFEQKNIL                     R3 ; [+3]
       26 GETUPVAL                         R2 3
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R2 R0 K4 ["draggedFromGhost"]
       30 SETTABLEKS                       R2 R1 K4 ["draggedFromGhost"]
       32 GETUPVAL                         R2 4
       33 JUMPIF                           R2 ; [+2]
       34 GETTABLEKS                       R2 R0 K5 ["suppressGhostAtPosition"]
       36 SETTABLEKS                       R2 R1 K5 ["suppressGhostAtPosition"]
       38 GETTABLEKS                       R2 R0 K6 ["envelopeHovered"]
       40 SETTABLEKS                       R2 R1 K6 ["envelopeHovered"]
       42 RETURN                           R1 1

PROTO_15:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+8]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K1 ["editNumberSequence"]
        9 DUPTABLE                         R8 K4 [{["type"] = "Capture"}]
       10 CALL                             R7 1 0
       11 MOVE                             R4 R0
       12 JUMP                             ; [+9]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["editNumberSequence"]
       16 DUPTABLE                         R8 K6 [{["type"] = "Commit"}]
       17 CALL                             R7 1 0
       18 LOADN                            R3 -1
       19 LOADN                            R4 -1
       20 LOADB                            R5 0
       21 MOVE                             R6 R2
       22 GETUPVAL                         R7 1
       23 NEWCLOSURE                       R8 P0
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R3
       26 CAPTURE                          REF R4
       27 CAPTURE                          REF R5
       28 CAPTURE                          REF R6
       29 CALL                             R7 1 0
       30 CLOSEUPVALS                      R3
       31 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 -1
        5 SETTABLEKS                       R2 R1 K3 ["selectedIndex"]
        7 LOADN                            R2 -1
        8 SETTABLEKS                       R2 R1 K4 ["hoveredIndex"]
       10 LOADN                            R2 -1
       11 SETTABLEKS                       R2 R1 K5 ["ghostIndex"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K6 ["envelopeHovered"]
       16 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteKeypoint"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 DUPCLOSURE                       R2 K1 [PROTO_16]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["selectedIndex"]
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["updateKeypoint"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["selectedIndex"]
       11 DUPTABLE                         R4 K5 [{["type"] = "Edit", ["value"]}]
       12 GETIMPORT                        R5 K8 [NumberSequenceKeypoint.new]
       14 GETTABLEKS                       R6 R1 K9 ["Time"]
       16 GETTABLEKS                       R7 R0 K10 ["Value"]
       18 GETTABLEKS                       R8 R0 K11 ["Envelope"]
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K4 ["value"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selectedIndex"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R2 -1
        5 SETTABLEKS                       R2 R1 K3 ["ghostIndex"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K4 ["envelopeHovered"]
       10 RETURN                           R1 1

PROTO_21:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K3 ["envelopeHovered"]
        7 RETURN                           R1 1

PROTO_22:
        0 JUMPIFNOTEQKS                    R0 K0 ["Start"] ; [+5]
        2 GETUPVAL                         R1 0
        3 DUPCLOSURE                       R2 K1 [PROTO_20]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 JUMPIFNOTEQKS                    R0 K2 ["Stop"] ; [+5]
        8 GETUPVAL                         R1 0
        9 DUPCLOSURE                       R2 K3 [PROTO_21]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R1 K5 [error]
       14 LOADK                            R2 K6 ["Unrecognized state %*"]
       15 MOVE                             R4 R0
       16 NAMECALL                         R2 R2 K7 ["format"]
       18 CALL                             R2 2 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_23:
        0 JUMPIFNOTEQKS                    R0 K0 ["Start"] ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["editNumberSequence"]
        5 DUPTABLE                         R2 K4 [{["type"] = "Capture"}]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKS                    R0 K5 ["Stop"] ; [+7]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["editNumberSequence"]
       13 DUPTABLE                         R2 K7 [{["type"] = "Commit"}]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0
       16 GETIMPORT                        R1 K9 [error]
       18 LOADK                            R2 K10 ["Unrecognized state %*"]
       19 MOVE                             R4 R0
       20 NAMECALL                         R2 R2 K11 ["format"]
       22 CALL                             R2 2 1
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K9 [{[1], ["draggedIndex"] = -1, ["hoveredIndex"] = -1, ["ghostIndex"] = -1, ["draggedFromGhost"] = False, ["suppressGhostAtPosition"], ["envelopeHovered"]}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["selectedIndex"]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K7 ["suppressGhostAtPosition"]
        7 GETTABLEKS                       R2 R0 K8 ["envelopeHovered"]
        9 SETTABLEKS                       R2 R1 K8 ["envelopeHovered"]
       11 RETURN                           R1 1

PROTO_25:
        0 JUMPIFNOTEQKS                    R1 K0 ["Start"] ; [+39]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K12 [{["selectedIndex"], ["hoveredIndex"], ["draggedIndex"], ["ghostIndex"] = -1, ["draggedFromGhost"] = True, ["suppressGhostAtPosition"] = , ["envelopeHovered"] = False}]
        4 SETTABLEKS                       R0 R4 K1 ["selectedIndex"]
        6 SETTABLEKS                       R0 R4 K2 ["hoveredIndex"]
        8 SETTABLEKS                       R0 R4 K3 ["draggedIndex"]
       10 CALL                             R3 1 0
       11 GETIMPORT                        R3 K15 [table.clone]
       13 GETUPVAL                         R4 1
       14 CALL                             R3 1 1
       15 MOVE                             R5 R3
       16 MOVE                             R6 R0
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K16 ["calculateGhostKeypoint"]
       20 GETUPVAL                         R8 3
       21 MOVE                             R9 R0
       22 CALL                             R7 2 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R4 K18 [table.insert]
       26 CALL                             R4 -1 0
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K19 ["editNumberSequence"]
       30 DUPTABLE                         R5 K22 [{["type"] = "Capture"}]
       31 CALL                             R4 1 0
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R4 R4 K23 ["updateKeypoints"]
       35 DUPTABLE                         R5 K26 [{["type"] = "Stage", ["value"]}]
       36 SETTABLEKS                       R3 R5 K25 ["value"]
       38 CALL                             R4 1 0
       39 RETURN                           R0 0
       40 JUMPIFNOTEQKS                    R1 K27 ["Stop"] ; [+11]
       42 GETUPVAL                         R3 4
       43 GETTABLEKS                       R3 R3 K19 ["editNumberSequence"]
       45 DUPTABLE                         R4 K29 [{["type"] = "Commit"}]
       46 CALL                             R3 1 0
       47 GETUPVAL                         R3 0
       48 NEWCLOSURE                       R4 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R2
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["updateKeypoint"]
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K4 [{["type"] = "Stage", ["value"]}]
        5 SETTABLEKS                       R1 R4 K3 ["value"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateKeypoint"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["selectedIndex"]
        6 DUPTABLE                         R3 K5 [{["type"] = "Stage", ["value"]}]
        7 SETTABLEKS                       R0 R3 K4 ["value"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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

PROTO_31:
        0 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"observeNumberSequence", "editNumberSequence"}]
        2 GETTABLEKS                       R4 R0 K0 ["observeNumberSequence"]
        4 SETTABLEKS                       R4 R2 K0 ["observeNumberSequence"]
        6 GETTABLEKS                       R4 R0 K1 ["editNumberSequence"]
        8 SETTABLEKS                       R4 R2 K1 ["editNumberSequence"]
       10 CALL                             R1 1 3
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R6 0 1
       19 MOVE                             R7 R1
       20 SETLIST                          R6 R7 1 [1]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K4 ["useState"]
       26 DUPTABLE                         R6 K15 [{["selectedIndex"] = -1, ["hoveredIndex"] = -1, ["draggedIndex"] = -1, ["ghostIndex"] = -1, ["draggedFromGhost"] = False, ["suppressGhostAtPosition"] = , ["envelopeHovered"] = False}]
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K16 ["useCallback"]
       31 NEWCLOSURE                       R8 P1
       32 CAPTURE                          VAL R6
       33 NEWTABLE                         R9 0 0
       35 CALL                             R7 2 1
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K16 ["useCallback"]
       39 NEWCLOSURE                       R9 P2
       40 CAPTURE                          VAL R6
       41 NEWTABLE                         R10 0 0
       43 CALL                             R8 2 1
       44 GETUPVAL                         R9 3
       45 GETTABLEKS                       R9 R9 K17 ["useSignalState"]
       47 GETTABLEKS                       R10 R0 K18 ["isActive"]
       49 CALL                             R9 1 1
       50 GETUPVAL                         R10 4
       51 CALL                             R10 0 1
       52 GETTABLEKS                       R11 R10 K19 ["NumberSequence"]
       54 GETTABLEKS                       R12 R11 K20 ["Scale"]
       56 GETUPVAL                         R13 1
       57 GETTABLEKS                       R13 R13 K4 ["useState"]
       59 GETTABLEKS                       R14 R12 K21 ["InitialMinY"]
       61 CALL                             R13 1 2
       62 GETUPVAL                         R15 1
       63 GETTABLEKS                       R15 R15 K4 ["useState"]
       65 GETTABLEKS                       R16 R12 K22 ["InitialMaxY"]
       67 CALL                             R15 1 2
       68 GETUPVAL                         R17 5
       69 GETTABLEKS                       R17 R17 K23 ["useEventCallback"]
       71 NEWCLOSURE                       R18 P3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R8
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R7
       76 CALL                             R17 1 1
       77 GETUPVAL                         R18 1
       78 GETTABLEKS                       R18 R18 K24 ["useEffect"]
       80 NEWCLOSURE                       R19 P4
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R17
       84 NEWTABLE                         R20 0 2
       86 GETTABLEKS                       R21 R3 K25 ["guestUpdateSignal"]
       88 MOVE                             R22 R17
       89 SETLIST                          R20 R21 2 [1]
       91 CALL                             R18 2 0
       92 GETUPVAL                         R18 1
       93 GETTABLEKS                       R18 R18 K24 ["useEffect"]
       95 NEWCLOSURE                       R19 P5
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          VAL R1
       99 NEWTABLE                         R20 0 2
      101 MOVE                             R21 R1
      102 GETTABLEKS                       R22 R0 K26 ["setLocalNumberSequence"]
      104 SETLIST                          R20 R21 2 [1]
      106 CALL                             R18 2 0
      107 GETUPVAL                         R18 1
      108 GETTABLEKS                       R18 R18 K24 ["useEffect"]
      110 NEWCLOSURE                       R19 P6
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R16
      117 NEWTABLE                         R20 0 2
      119 GETTABLEKS                       R21 R0 K27 ["isOpen"]
      121 MOVE                             R22 R2
      122 SETLIST                          R20 R21 2 [1]
      124 CALL                             R18 2 0
      125 GETTABLEKS                       R20 R11 K29 ["EditorYPadding"]
      127 MULK                             R19 R20 K28 [2]
      128 GETTABLEKS                       R20 R11 K30 ["EditorFillPadding"]
      130 ADD                              R18 R19 R20
      131 GETUPVAL                         R19 7
      132 MOVE                             R20 R10
      133 LENGTH                           R21 R1
      134 GETTABLEKS                       R22 R11 K31 ["MaxRows"]
      136 CALL                             R19 3 1
      137 ADD                              R20 R18 R19
      138 GETUPVAL                         R21 1
      139 GETTABLEKS                       R21 R21 K4 ["useState"]
      141 GETTABLEKS                       R22 R11 K32 ["EditorInitialSize"]
      143 CALL                             R21 1 2
      144 GETUPVAL                         R23 5
      145 GETTABLEKS                       R23 R23 K33 ["useRefToState"]
      147 MOVE                             R24 R21
      148 CALL                             R23 1 1
      149 GETUPVAL                         R24 1
      150 GETTABLEKS                       R24 R24 K24 ["useEffect"]
      152 NEWCLOSURE                       R25 P7
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R23
      157 NEWTABLE                         R26 0 4
      159 MOVE                             R27 R11
      160 MOVE                             R28 R20
      161 GETTABLEKS                       R29 R0 K34 ["setMinSize"]
      163 GETTABLEKS                       R30 R0 K35 ["setSize"]
      165 SETLIST                          R26 R27 4 [1]
      167 CALL                             R24 2 0
      168 GETUPVAL                         R24 5
      169 GETTABLEKS                       R24 R24 K23 ["useEventCallback"]
      171 NEWCLOSURE                       R25 P8
      172 CAPTURE                          VAL R6
      173 CALL                             R24 1 1
      174 GETUPVAL                         R25 5
      175 GETTABLEKS                       R25 R25 K23 ["useEventCallback"]
      177 NEWCLOSURE                       R26 P9
      178 CAPTURE                          VAL R3
      179 CAPTURE                          VAL R6
      180 CALL                             R25 1 1
      181 GETUPVAL                         R26 5
      182 GETTABLEKS                       R26 R26 K23 ["useEventCallback"]
      184 NEWCLOSURE                       R27 P10
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R6
      187 CALL                             R26 1 1
      188 GETUPVAL                         R27 1
      189 GETTABLEKS                       R27 R27 K36 ["useRef"]
      191 LOADNIL                          R28
      192 CALL                             R27 1 1
      193 GETUPVAL                         R28 5
      194 GETTABLEKS                       R28 R28 K33 ["useRefToState"]
      196 GETTABLEKS                       R30 R5 K5 ["selectedIndex"]
      198 JUMPIFEQKN                       R30 K6 [-1] ; [+5]
      200 GETTABLEKS                       R30 R5 K5 ["selectedIndex"]
      202 GETTABLE                         R29 R1 R30
      203 JUMP                             ; [+1]
      204 LOADNIL                          R29
      205 CALL                             R28 1 1
      206 GETUPVAL                         R29 8
      207 MOVE                             R30 R27
      208 DUPTABLE                         R31 K41 [{"selection", "onPaste", "onDelete", "canDelete"}]
      209 SETTABLEKS                       R28 R31 K37 ["selection"]
      211 NEWCLOSURE                       R32 P11
      212 CAPTURE                          VAL R1
      213 CAPTURE                          VAL R5
      214 CAPTURE                          VAL R3
      215 SETTABLEKS                       R32 R31 K38 ["onPaste"]
      217 NEWCLOSURE                       R32 P12
      218 CAPTURE                          VAL R26
      219 CAPTURE                          VAL R5
      220 SETTABLEKS                       R32 R31 K39 ["onDelete"]
      222 LENGTH                           R33 R1
      223 LOADN                            R34 2
      224 JUMPIFLT                         R34 R33 ; [+2]
      226 LOADB                            R32 0 +1
      227 LOADB                            R32 1
      228 SETTABLEKS                       R32 R31 K40 ["canDelete"]
      230 CALL                             R29 2 0
      231 GETUPVAL                         R29 5
      232 GETTABLEKS                       R29 R29 K23 ["useEventCallback"]
      234 NEWCLOSURE                       R30 P13
      235 CAPTURE                          VAL R6
      236 CALL                             R29 1 1
      237 GETUPVAL                         R30 5
      238 GETTABLEKS                       R30 R30 K23 ["useEventCallback"]
      240 NEWCLOSURE                       R31 P14
      241 CAPTURE                          VAL R3
      242 CALL                             R30 1 1
      243 GETUPVAL                         R31 5
      244 GETTABLEKS                       R31 R31 K23 ["useEventCallback"]
      246 NEWCLOSURE                       R32 P15
      247 CAPTURE                          VAL R6
      248 CAPTURE                          VAL R1
      249 CAPTURE                          UPVAL U2
      250 CAPTURE                          VAL R4
      251 CAPTURE                          VAL R3
      252 CALL                             R31 1 1
      253 GETTABLEKS                       R32 R11 K42 ["ZIndex"]
      255 NEWTABLE                         R33 0 0
      257 MOVE                             R34 R1
      258 LOADNIL                          R35
      259 LOADNIL                          R36
      260 FORGPREP                         R34
      261 GETTABLEKS                       R40 R5 K8 ["draggedIndex"]
      263 JUMPIFNOTEQ                      R37 R40 ; [+6]
      265 GETTABLEKS                       R40 R5 K10 ["draggedFromGhost"]
      267 JUMPIFNOT                        R40 ; [+2]
      268 LOADK                            R39 K43 ["Ghost"]
      269 JUMP                             ; [+5]
      270 LOADK                            R39 K44 ["%*"]
      271 MOVE                             R41 R37
      272 NAMECALL                         R39 R39 K45 ["format"]
      274 CALL                             R39 2 1
      275 GETTABLEKS                       R41 R5 K5 ["selectedIndex"]
      277 JUMPIFEQ                         R37 R41 ; [+2]
      279 LOADB                            R40 0 +1
      280 LOADB                            R40 1
      281 LOADK                            R41 K46 ["Keypoint%*"]
      282 MOVE                             R43 R39
      283 NAMECALL                         R41 R41 K45 ["format"]
      285 CALL                             R41 2 1
      286 GETUPVAL                         R42 9
      287 GETUPVAL                         R43 10
      288 DUPTABLE                         R44 K57 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "MinY", "MaxY", "XLocked", "OnKeypointChanged", "OnKeypointDeleted", "SetDragged", "SetHovered"}]
      289 JUMPIFNOT                        R40 ; [+5]
      290 GETTABLEKS                       R45 R11 K58 ["Point"]
      292 GETTABLEKS                       R45 R45 K59 ["SelectedStyle"]
      294 JUMP                             ; [+4]
      295 GETTABLEKS                       R45 R11 K58 ["Point"]
      297 GETTABLEKS                       R45 R45 K60 ["UnselectedStyle"]
      299 SETTABLEKS                       R45 R44 K47 ["style"]
      301 JUMPIFNOT                        R40 ; [+3]
      302 GETTABLEKS                       R45 R32 K61 ["SelectedKeypoint"]
      304 JUMP                             ; [+2]
      305 GETTABLEKS                       R45 R32 K48 ["Keypoint"]
      307 SETTABLEKS                       R45 R44 K42 ["ZIndex"]
      309 SETTABLEKS                       R38 R44 K48 ["Keypoint"]
      311 SETTABLEKS                       R37 R44 K49 ["KeypointIndex"]
      313 SETTABLEKS                       R13 R44 K50 ["MinY"]
      315 SETTABLEKS                       R15 R44 K51 ["MaxY"]
      317 LOADB                            R45 1
      318 JUMPIFEQKN                       R37 K62 [1] ; [+6]
      320 LENGTH                           R46 R1
      321 JUMPIFEQ                         R37 R46 ; [+2]
      323 LOADB                            R45 0 +1
      324 LOADB                            R45 1
      325 SETTABLEKS                       R45 R44 K52 ["XLocked"]
      327 NEWCLOSURE                       R45 P16
      328 CAPTURE                          VAL R3
      329 SETTABLEKS                       R45 R44 K53 ["OnKeypointChanged"]
      331 SETTABLEKS                       R26 R44 K54 ["OnKeypointDeleted"]
      333 SETTABLEKS                       R25 R44 K55 ["SetDragged"]
      335 SETTABLEKS                       R24 R44 K56 ["SetHovered"]
      337 CALL                             R42 2 1
      338 SETTABLE                         R42 R33 R41
      339 FORGLOOP                         R34 2 ; [-79]
      341 GETTABLEKS                       R34 R5 K9 ["ghostIndex"]
      343 JUMPIFEQKN                       R34 K6 [-1] ; [+32]
      345 LENGTH                           R35 R4
      346 JUMPIFNOTLE                      R34 R35 ; [+29]
      348 GETUPVAL                         R35 2
      349 GETTABLEKS                       R35 R35 K63 ["calculateGhostKeypoint"]
      351 MOVE                             R36 R4
      352 MOVE                             R37 R34
      353 CALL                             R35 2 1
      354 GETUPVAL                         R36 9
      355 GETUPVAL                         R37 10
      356 DUPTABLE                         R38 K64 [{"style", "ZIndex", "Keypoint", "KeypointIndex", "SetDragged"}]
      357 GETTABLEKS                       R39 R11 K58 ["Point"]
      359 GETTABLEKS                       R39 R39 K65 ["GhostStyle"]
      361 SETTABLEKS                       R39 R38 K47 ["style"]
      363 GETTABLEKS                       R39 R32 K66 ["GhostKeypoint"]
      365 SETTABLEKS                       R39 R38 K42 ["ZIndex"]
      367 SETTABLEKS                       R35 R38 K48 ["Keypoint"]
      369 SETTABLEKS                       R34 R38 K49 ["KeypointIndex"]
      371 SETTABLEKS                       R31 R38 K55 ["SetDragged"]
      373 CALL                             R36 2 1
      374 SETTABLEKS                       R36 R33 K67 ["KeypointGhost"]
      376 LOADNIL                          R35
      377 GETTABLEKS                       R36 R5 K5 ["selectedIndex"]
      379 JUMPIFEQKN                       R36 K6 [-1] ; [+54]
      381 GETTABLEKS                       R37 R5 K5 ["selectedIndex"]
      383 GETTABLE                         R36 R1 R37
      384 GETUPVAL                         R37 2
      385 GETTABLEKS                       R37 R37 K68 ["findKeypoint"]
      387 MOVE                             R38 R4
      388 MOVE                             R39 R36
      389 CALL                             R37 2 1
      390 JUMPIFNOT                        R37 ; [+6]
      391 LOADN                            R39 1
      392 JUMPIFNOTLT                      R39 R37 ; [+4]
      394 SUBK                             R39 R37 K62 [1]
      395 GETTABLE                         R38 R4 R39
      396 JUMP                             ; [+1]
      397 LOADNIL                          R38
      398 JUMPIFNOT                        R37 ; [+6]
      399 LENGTH                           R40 R4
      400 JUMPIFNOTLT                      R37 R40 ; [+4]
      402 ADDK                             R40 R37 K62 [1]
      403 GETTABLE                         R39 R4 R40
      404 JUMP                             ; [+1]
      405 LOADNIL                          R39
      406 GETUPVAL                         R40 9
      407 GETUPVAL                         R41 11
      408 DUPTABLE                         R42 K71 [{"ZIndex", "Keypoint", "PrevKeypoint", "NextKeypoint", "MinY", "MaxY", "OnKeypointChanged", "SetDragged", "SetHovered"}]
      409 GETTABLEKS                       R43 R32 K72 ["EnvelopeCurve"]
      411 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      413 SETTABLEKS                       R36 R42 K48 ["Keypoint"]
      415 SETTABLEKS                       R38 R42 K69 ["PrevKeypoint"]
      417 SETTABLEKS                       R39 R42 K70 ["NextKeypoint"]
      419 SETTABLEKS                       R13 R42 K50 ["MinY"]
      421 SETTABLEKS                       R15 R42 K51 ["MaxY"]
      423 NEWCLOSURE                       R43 P17
      424 CAPTURE                          VAL R3
      425 CAPTURE                          VAL R5
      426 SETTABLEKS                       R43 R42 K53 ["OnKeypointChanged"]
      428 SETTABLEKS                       R30 R42 K55 ["SetDragged"]
      430 SETTABLEKS                       R29 R42 K56 ["SetHovered"]
      432 CALL                             R40 2 1
      433 MOVE                             R35 R40
      434 GETUPVAL                         R36 1
      435 GETTABLEKS                       R36 R36 K3 ["useMemo"]
      437 NEWCLOSURE                       R37 P18
      438 CAPTURE                          VAL R4
      439 NEWTABLE                         R38 0 1
      441 MOVE                             R39 R4
      442 SETLIST                          R38 R39 1 [1]
      444 CALL                             R36 2 1
      445 GETUPVAL                         R37 1
      446 GETTABLEKS                       R37 R37 K16 ["useCallback"]
      448 NEWCLOSURE                       R38 P19
      449 CAPTURE                          VAL R15
      450 CAPTURE                          VAL R13
      451 NEWTABLE                         R39 0 2
      453 MOVE                             R40 R15
      454 MOVE                             R41 R13
      455 SETLIST                          R39 R40 2 [1]
      457 CALL                             R37 2 1
      458 GETUPVAL                         R38 12
      459 CALL                             R38 0 1
      460 DUPTABLE                         R39 K80 [{"Grid", "Curve", "GhostKeypointTracker", "XScale", "YScale", "EnvelopeHandles", "ScaleInputs"}]
      461 GETUPVAL                         R40 9
      462 GETUPVAL                         R41 13
      463 DUPTABLE                         R42 K83 [{"XAxis", "YAxis", "ZIndex"}]
      464 DUPTABLE                         R43 K87 [{["Type"] = "Uniform", ["Unit"]}]
      465 GETTABLEKS                       R45 R11 K20 ["Scale"]
      467 GETTABLEKS                       R45 R45 K89 ["MaxX"]
      469 DIVK                             R44 R45 K88 [4]
      470 SETTABLEKS                       R44 R43 K86 ["Unit"]
      472 SETTABLEKS                       R43 R42 K81 ["XAxis"]
      474 DUPTABLE                         R43 K91 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      475 SUB                              R45 R15 R13
      476 DIVK                             R44 R45 K88 [4]
      477 SETTABLEKS                       R44 R43 K86 ["Unit"]
      479 SETTABLEKS                       R13 R43 K90 ["Offset"]
      481 SETTABLEKS                       R43 R42 K82 ["YAxis"]
      483 MOVE                             R43 R38
      484 CALL                             R43 0 1
      485 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      487 CALL                             R40 2 1
      488 SETTABLEKS                       R40 R39 K73 ["Grid"]
      490 GETUPVAL                         R40 9
      491 GETUPVAL                         R41 14
      492 DUPTABLE                         R42 K95 [{["Points"], ["Color3"], ["Thickness"] = 2, ["ZIndex"]}]
      493 SETTABLEKS                       R36 R42 K92 ["Points"]
      495 GETTABLEKS                       R43 R11 K96 ["CurveColor"]
      497 SETTABLEKS                       R43 R42 K93 ["Color3"]
      499 MOVE                             R43 R38
      500 CALL                             R43 0 1
      501 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      503 CALL                             R40 2 1
      504 SETTABLEKS                       R40 R39 K74 ["Curve"]
      506 GETUPVAL                         R40 9
      507 GETUPVAL                         R41 15
      508 DUPTABLE                         R42 K100 [{"Enabled", "Keypoints", "SetGhostKeypoint", "ZIndex"}]
      509 LOADB                            R43 0
      510 LENGTH                           R44 R4
      511 GETUPVAL                         R45 16
      512 JUMPIFNOTLT                      R44 R45 ; [+16]
      514 LOADB                            R43 0
      515 GETTABLEKS                       R44 R5 K8 ["draggedIndex"]
      517 JUMPIFNOTEQKN                    R44 K6 [-1] ; [+11]
      519 LOADB                            R43 0
      520 GETTABLEKS                       R44 R5 K7 ["hoveredIndex"]
      522 JUMPIFNOTEQKN                    R44 K6 [-1] ; [+6]
      524 GETTABLEKS                       R44 R5 K14 ["envelopeHovered"]
      526 NOT                              R43 R44
      527 JUMPIFNOT                        R43 ; [+1]
      528 MOVE                             R43 R9
      529 SETTABLEKS                       R43 R42 K97 ["Enabled"]
      531 SETTABLEKS                       R4 R42 K98 ["Keypoints"]
      533 SETTABLEKS                       R8 R42 K99 ["SetGhostKeypoint"]
      535 MOVE                             R43 R38
      536 CALL                             R43 0 1
      537 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      539 CALL                             R40 2 1
      540 SETTABLEKS                       R40 R39 K75 ["GhostKeypointTracker"]
      542 GETUPVAL                         R40 9
      543 GETUPVAL                         R41 17
      544 DUPTABLE                         R42 K111 [{["Side"] = "Bottom", ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["ZIndex"]}]
      545 DUPTABLE                         R43 K87 [{["Type"] = "Uniform", ["Unit"]}]
      546 GETTABLEKS                       R45 R11 K20 ["Scale"]
      548 GETTABLEKS                       R45 R45 K89 ["MaxX"]
      550 DIVK                             R44 R45 K88 [4]
      551 SETTABLEKS                       R44 R43 K86 ["Unit"]
      553 SETTABLEKS                       R43 R42 K103 ["Schema"]
      555 GETTABLEKS                       R43 R11 K112 ["ScaleTextSize"]
      557 SETTABLEKS                       R43 R42 K108 ["TickTextSize"]
      559 GETTABLEKS                       R43 R11 K113 ["ScaleTextColor"]
      561 SETTABLEKS                       R43 R42 K109 ["TickColor"]
      563 MOVE                             R43 R38
      564 CALL                             R43 0 1
      565 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      567 CALL                             R40 2 1
      568 SETTABLEKS                       R40 R39 K76 ["XScale"]
      570 GETUPVAL                         R40 9
      571 GETUPVAL                         R41 17
      572 DUPTABLE                         R42 K117 [{["Side"] = "Left", ["Formatter"], ["Schema"], ["TickTextPadding"] = 8, ["TickLength"] = 0, ["TickTextSize"], ["TickColor"], ["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"]}]
      573 SETTABLEKS                       R37 R42 K115 ["Formatter"]
      575 DUPTABLE                         R43 K91 [{["Type"] = "Uniform", ["Unit"], ["Offset"]}]
      576 SUB                              R45 R15 R13
      577 DIVK                             R44 R45 K88 [4]
      578 SETTABLEKS                       R44 R43 K86 ["Unit"]
      580 SETTABLEKS                       R13 R43 K90 ["Offset"]
      582 SETTABLEKS                       R43 R42 K103 ["Schema"]
      584 GETTABLEKS                       R43 R11 K112 ["ScaleTextSize"]
      586 SETTABLEKS                       R43 R42 K108 ["TickTextSize"]
      588 GETTABLEKS                       R43 R11 K113 ["ScaleTextColor"]
      590 SETTABLEKS                       R43 R42 K109 ["TickColor"]
      592 GETIMPORT                        R43 K120 [UDim.new]
      594 LOADN                            R44 0
      595 LOADN                            R45 30
      596 CALL                             R43 2 1
      597 SETTABLEKS                       R43 R42 K116 ["Size"]
      599 MOVE                             R43 R38
      600 CALL                             R43 0 1
      601 SETTABLEKS                       R43 R42 K42 ["ZIndex"]
      603 CALL                             R40 2 1
      604 SETTABLEKS                       R40 R39 K77 ["YScale"]
      606 SETTABLEKS                       R35 R39 K78 ["EnvelopeHandles"]
      608 GETUPVAL                         R40 9
      609 GETUPVAL                         R41 18
      610 DUPTABLE                         R42 K127 [{"unorderedKeypoints", "controller", "minY", "maxY", "setMinY", "setMaxY"}]
      611 SETTABLEKS                       R1 R42 K121 ["unorderedKeypoints"]
      613 SETTABLEKS                       R3 R42 K122 ["controller"]
      615 SETTABLEKS                       R13 R42 K123 ["minY"]
      617 SETTABLEKS                       R15 R42 K124 ["maxY"]
      619 SETTABLEKS                       R14 R42 K125 ["setMinY"]
      621 SETTABLEKS                       R16 R42 K126 ["setMaxY"]
      623 CALL                             R40 2 1
      624 SETTABLEKS                       R40 R39 K79 ["ScaleInputs"]
      626 MOVE                             R40 R33
      627 LOADNIL                          R41
      628 LOADNIL                          R42
      629 FORGPREP                         R40
      630 SETTABLE                         R44 R39 R43
      631 FORGLOOP                         R40 2 ; [-2]
      633 GETUPVAL                         R40 19
      634 CALL                             R40 0 1
      635 GETUPVAL                         R41 12
      636 CALL                             R41 0 1
      637 GETTABLEKS                       R42 R11 K29 ["EditorYPadding"]
      639 GETTABLEKS                       R43 R11 K30 ["EditorFillPadding"]
      641 GETUPVAL                         R44 9
      642 GETUPVAL                         R45 20
      643 DUPTABLE                         R46 K132 [{["tag"] = "size-full", ["ref"], ["onAbsoluteSizeChanged"]}]
      644 SETTABLEKS                       R27 R46 K130 ["ref"]
      646 NEWCLOSURE                       R47 P20
      647 CAPTURE                          VAL R18
      648 CAPTURE                          VAL R19
      649 CAPTURE                          VAL R11
      650 CAPTURE                          VAL R23
      651 CAPTURE                          VAL R22
      652 SETTABLEKS                       R47 R46 K131 ["onAbsoluteSizeChanged"]
      654 DUPTABLE                         R47 K135 [{"Overlay", "Content"}]
      655 GETUPVAL                         R48 9
      656 GETUPVAL                         R49 20
      657 DUPTABLE                         R50 K140 [{["tag"] = "size-full", ["ZIndex"], ["backgroundStyle"], ["Visible"], ["onActivated"], ["stateLayer"]}]
      658 GETTABLEKS                       R51 R32 K133 ["Overlay"]
      660 SETTABLEKS                       R51 R50 K42 ["ZIndex"]
      662 DUPTABLE                         R51 K141 [{"Color3"}]
      663 GETTABLEKS                       R52 R40 K142 ["Color"]
      665 GETTABLEKS                       R52 R52 K143 ["Surface"]
      667 GETTABLEKS                       R52 R52 K144 ["Surface_300"]
      669 GETTABLEKS                       R52 R52 K93 ["Color3"]
      671 SETTABLEKS                       R52 R51 K93 ["Color3"]
      673 SETTABLEKS                       R51 R50 K136 ["backgroundStyle"]
      675 NOT                              R51 R9
      676 SETTABLEKS                       R51 R50 K137 ["Visible"]
      678 DUPCLOSURE                       R51 K145 [PROTO_31]
      679 SETTABLEKS                       R51 R50 K138 ["onActivated"]
      681 DUPTABLE                         R51 K148 [{["affordance"] = "None"}]
      682 SETTABLEKS                       R51 R50 K139 ["stateLayer"]
      684 DUPTABLE                         R51 K151 [{"UIGradient", "TextMessage"}]
      685 GETUPVAL                         R52 9
      686 LOADK                            R53 K149 ["UIGradient"]
      687 DUPTABLE                         R54 K155 [{["Rotation"] = 90, ["Transparency"]}]
      688 GETIMPORT                        R55 K156 [NumberSequence.new]
      690 NEWTABLE                         R56 0 4
      692 GETIMPORT                        R57 K158 [NumberSequenceKeypoint.new]
      694 LOADN                            R58 0
      695 LOADK                            R59 K159 [0.9]
      696 CALL                             R57 2 1
      697 GETIMPORT                        R58 K158 [NumberSequenceKeypoint.new]
      699 LOADK                            R59 K160 [0.1]
      700 LOADK                            R60 K161 [0.8]
      701 CALL                             R58 2 1
      702 GETIMPORT                        R59 K158 [NumberSequenceKeypoint.new]
      704 LOADK                            R60 K162 [0.2]
      705 LOADK                            R61 K163 [0.6]
      706 CALL                             R59 2 1
      707 GETIMPORT                        R60 K158 [NumberSequenceKeypoint.new]
      709 LOADN                            R61 1
      710 LOADN                            R62 0
      711 CALL                             R60 2 -1
      712 SETLIST                          R56 R57 -1 [1]
      714 CALL                             R55 1 1
      715 SETTABLEKS                       R55 R54 K154 ["Transparency"]
      717 CALL                             R52 2 1
      718 SETTABLEKS                       R52 R51 K149 ["UIGradient"]
      720 GETUPVAL                         R52 9
      721 GETUPVAL                         R53 21
      722 DUPTABLE                         R54 K168 [{["Position"], ["Text"] = "Not available for selected instance(s)", ["tag"] = "anchor-center-center size-full padding-small"}]
      723 GETIMPORT                        R55 K170 [UDim2.new]
      725 LOADK                            R56 K171 [0.5]
      726 LOADN                            R57 0
      727 LOADK                            R58 K171 [0.5]
      728 LOADN                            R59 -15
      729 CALL                             R55 4 1
      730 SETTABLEKS                       R55 R54 K164 ["Position"]
      732 CALL                             R52 2 1
      733 SETTABLEKS                       R52 R51 K150 ["TextMessage"]
      735 CALL                             R48 3 1
      736 SETTABLEKS                       R48 R47 K133 ["Overlay"]
      738 GETUPVAL                         R48 9
      739 GETUPVAL                         R49 20
      740 DUPTABLE                         R50 K175 [{["tag"] = "flex-none size-full-0 auto-y bg-surface-200", ["layout"], ["padding"]}]
      741 DUPTABLE                         R51 K178 [{"FillDirection", "Padding"}]
      742 GETIMPORT                        R52 K181 [Enum.FillDirection.Vertical]
      744 SETTABLEKS                       R52 R51 K176 ["FillDirection"]
      746 GETIMPORT                        R52 K120 [UDim.new]
      748 LOADN                            R53 0
      749 MOVE                             R54 R43
      750 CALL                             R52 2 1
      751 SETTABLEKS                       R52 R51 K177 ["Padding"]
      753 SETTABLEKS                       R51 R50 K173 ["layout"]
      755 DUPTABLE                         R51 K184 [{"top", "bottom"}]
      756 GETIMPORT                        R52 K120 [UDim.new]
      758 LOADN                            R53 0
      759 MOVE                             R54 R42
      760 CALL                             R52 2 1
      761 SETTABLEKS                       R52 R51 K182 ["top"]
      763 GETIMPORT                        R52 K120 [UDim.new]
      765 LOADN                            R53 0
      766 MOVE                             R54 R42
      767 CALL                             R52 2 1
      768 SETTABLEKS                       R52 R51 K183 ["bottom"]
      770 SETTABLEKS                       R51 R50 K174 ["padding"]
      772 DUPTABLE                         R51 K187 [{"Editor", "RowStopsContainer"}]
      773 GETUPVAL                         R52 9
      774 GETUPVAL                         R53 20
      775 DUPTABLE                         R54 K190 [{["tag"] = "flex-none size-full-0 bg-surface-200", ["Size"], ["padding"], ["LayoutOrder"]}]
      776 GETIMPORT                        R55 K170 [UDim2.new]
      778 LOADN                            R56 1
      779 LOADN                            R57 0
      780 LOADN                            R58 0
      781 GETTABLEKS                       R59 R21 K191 ["Y"]
      783 CALL                             R55 4 1
      784 SETTABLEKS                       R55 R54 K116 ["Size"]
      786 DUPTABLE                         R55 K194 [{"left", "right", "bottom"}]
      787 GETIMPORT                        R56 K120 [UDim.new]
      789 LOADN                            R57 0
      790 GETTABLEKS                       R59 R40 K177 ["Padding"]
      792 GETTABLEKS                       R59 R59 K195 ["Medium"]
      794 MULK                             R58 R59 K88 [4]
      795 CALL                             R56 2 1
      796 SETTABLEKS                       R56 R55 K192 ["left"]
      798 GETIMPORT                        R56 K120 [UDim.new]
      800 LOADN                            R57 0
      801 GETTABLEKS                       R58 R40 K177 ["Padding"]
      803 GETTABLEKS                       R58 R58 K195 ["Medium"]
      805 CALL                             R56 2 1
      806 SETTABLEKS                       R56 R55 K193 ["right"]
      808 GETIMPORT                        R56 K120 [UDim.new]
      810 LOADN                            R57 0
      811 GETTABLEKS                       R59 R40 K177 ["Padding"]
      813 GETTABLEKS                       R59 R59 K195 ["Medium"]
      815 MULK                             R58 R59 K196 [3]
      816 CALL                             R56 2 1
      817 SETTABLEKS                       R56 R55 K183 ["bottom"]
      819 SETTABLEKS                       R55 R54 K174 ["padding"]
      821 MOVE                             R55 R41
      822 CALL                             R55 0 1
      823 SETTABLEKS                       R55 R54 K189 ["LayoutOrder"]
      825 DUPTABLE                         R55 K198 [{"Canvas"}]
      826 GETUPVAL                         R56 9
      827 GETUPVAL                         R57 22
      828 DUPTABLE                         R58 K208 [{["GraphRect"], ["CanvasBackgroundColor3"], ["CanvasBackgroundTransparency"] = 0, ["ViewportBackgroundTransparency"] = 1, ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingTop"], ["ViewportPaddingBottom"], ["childrenUnclipped"]}]
      829 GETIMPORT                        R59 K210 [Rect.new]
      831 LOADN                            R60 0
      832 MOVE                             R61 R13
      833 GETTABLEKS                       R62 R11 K20 ["Scale"]
      835 GETTABLEKS                       R62 R62 K89 ["MaxX"]
      837 MOVE                             R63 R15
      838 CALL                             R59 4 1
      839 SETTABLEKS                       R59 R58 K199 ["GraphRect"]
      841 GETTABLEKS                       R59 R40 K142 ["Color"]
      843 GETTABLEKS                       R59 R59 K143 ["Surface"]
      845 GETTABLEKS                       R59 R59 K144 ["Surface_300"]
      847 GETTABLEKS                       R59 R59 K93 ["Color3"]
      849 SETTABLEKS                       R59 R58 K200 ["CanvasBackgroundColor3"]
      851 GETUPVAL                         R59 23
      852 SETTABLEKS                       R59 R58 K203 ["ViewportPaddingLeft"]
      854 GETUPVAL                         R59 23
      855 SETTABLEKS                       R59 R58 K204 ["ViewportPaddingRight"]
      857 GETUPVAL                         R59 23
      858 SETTABLEKS                       R59 R58 K205 ["ViewportPaddingTop"]
      860 GETUPVAL                         R59 23
      861 SETTABLEKS                       R59 R58 K206 ["ViewportPaddingBottom"]
      863 SETTABLEKS                       R39 R58 K207 ["childrenUnclipped"]
      865 DUPTABLE                         R59 K212 [{"Envelope"}]
      866 GETUPVAL                         R60 9
      867 GETUPVAL                         R61 24
      868 DUPTABLE                         R62 K215 [{["Color3"], ["Transparency"], ["Keypoints"], ["ScanLines"] = 300, ["ZIndex"] = -1}]
      869 GETTABLEKS                       R63 R11 K216 ["EnvelopeColor"]
      871 SETTABLEKS                       R63 R62 K93 ["Color3"]
      873 GETTABLEKS                       R63 R11 K217 ["EnvelopeTransparency"]
      875 SETTABLEKS                       R63 R62 K154 ["Transparency"]
      877 SETTABLEKS                       R4 R62 K98 ["Keypoints"]
      879 CALL                             R60 2 1
      880 SETTABLEKS                       R60 R59 K211 ["Envelope"]
      882 CALL                             R56 3 1
      883 SETTABLEKS                       R56 R55 K197 ["Canvas"]
      885 CALL                             R52 3 1
      886 SETTABLEKS                       R52 R51 K185 ["Editor"]
      888 GETUPVAL                         R52 9
      889 GETUPVAL                         R53 20
      890 DUPTABLE                         R54 K219 [{["tag"] = "size-full-0 auto-y bg-surface-200", ["LayoutOrder"]}]
      891 MOVE                             R55 R41
      892 CALL                             R55 0 1
      893 SETTABLEKS                       R55 R54 K189 ["LayoutOrder"]
      895 DUPTABLE                         R55 K221 [{"RowStops"}]
      896 GETUPVAL                         R56 9
      897 GETUPVAL                         R57 25
      898 DUPTABLE                         R58 K226 [{"unorderedKeypoints", "unorderedKeypointsBinding", "selectedUnorderedKeypoint", "autoScrollToSelected", "SetSelectedUnorderedKeypoint", "controller", "MinY", "MaxY"}]
      899 SETTABLEKS                       R1 R58 K121 ["unorderedKeypoints"]
      901 SETTABLEKS                       R2 R58 K222 ["unorderedKeypointsBinding"]
      903 GETTABLEKS                       R59 R5 K5 ["selectedIndex"]
      905 SETTABLEKS                       R59 R58 K223 ["selectedUnorderedKeypoint"]
      907 GETTABLEKS                       R60 R5 K8 ["draggedIndex"]
      909 JUMPIFNOTEQKN                    R60 K6 [-1] ; [+2]
      911 LOADB                            R59 0 +1
      912 LOADB                            R59 1
      913 SETTABLEKS                       R59 R58 K224 ["autoScrollToSelected"]
      915 SETTABLEKS                       R7 R58 K225 ["SetSelectedUnorderedKeypoint"]
      917 SETTABLEKS                       R3 R58 K122 ["controller"]
      919 SETTABLEKS                       R13 R58 K50 ["MinY"]
      921 SETTABLEKS                       R15 R58 K51 ["MaxY"]
      923 CALL                             R56 2 1
      924 SETTABLEKS                       R56 R55 K220 ["RowStops"]
      926 CALL                             R52 3 1
      927 SETTABLEKS                       R52 R51 K186 ["RowStopsContainer"]
      929 CALL                             R48 3 1
      930 SETTABLEKS                       R48 R47 K134 ["Content"]
      932 CALL                             R44 3 -1
      933 RETURN                           R44 -1

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
      135 GETTABLEKS                       R15 R0 K23 ["RpcTypes"]
      137 CALL                             R14 1 1
      138 GETIMPORT                        R15 K6 [require]
      140 GETTABLEKS                       R16 R0 K7 ["Components"]
      142 GETTABLEKS                       R16 R16 K8 ["PropertyEntries"]
      144 GETTABLEKS                       R16 R16 K9 ["PropertyView"]
      146 GETTABLEKS                       R16 R16 K10 ["NumberSequencePropertyView"]
      148 GETTABLEKS                       R16 R16 K24 ["ScaleInputs"]
      150 CALL                             R15 1 1
      151 GETIMPORT                        R16 K6 [require]
      153 GETTABLEKS                       R17 R1 K25 ["Signals"]
      155 CALL                             R16 1 1
      156 GETIMPORT                        R17 K6 [require]
      158 GETTABLEKS                       R18 R1 K26 ["SignalsReact"]
      160 CALL                             R17 1 1
      161 GETIMPORT                        R18 K6 [require]
      163 GETTABLEKS                       R19 R0 K7 ["Components"]
      165 GETTABLEKS                       R19 R19 K27 ["Util"]
      167 GETTABLEKS                       R19 R19 K28 ["RowStops"]
      169 GETTABLEKS                       R19 R19 K29 ["calculateRowStopsHeight"]
      171 CALL                             R18 1 1
      172 GETIMPORT                        R19 K6 [require]
      174 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      176 GETTABLEKS                       R20 R20 K31 ["useLocalEditing"]
      178 CALL                             R19 1 1
      179 GETIMPORT                        R20 K6 [require]
      181 GETTABLEKS                       R21 R0 K7 ["Components"]
      183 GETTABLEKS                       R21 R21 K8 ["PropertyEntries"]
      185 GETTABLEKS                       R21 R21 K9 ["PropertyView"]
      187 GETTABLEKS                       R21 R21 K10 ["NumberSequencePropertyView"]
      189 GETTABLEKS                       R21 R21 K32 ["useNumberSequence"]
      191 CALL                             R20 1 1
      192 GETIMPORT                        R21 K6 [require]
      194 GETTABLEKS                       R22 R0 K30 ["Hooks"]
      196 GETTABLEKS                       R22 R22 K33 ["useVisualValues"]
      198 CALL                             R21 1 1
      199 GETTABLEKS                       R22 R6 K34 ["Canvas"]
      201 GETTABLEKS                       R23 R6 K35 ["Curve"]
      203 GETTABLEKS                       R24 R6 K36 ["Grid"]
      205 GETTABLEKS                       R25 R6 K37 ["Scale"]
      207 GETTABLEKS                       R26 R4 K38 ["View"]
      209 GETTABLEKS                       R27 R4 K39 ["Text"]
      211 GETTABLEKS                       R28 R13 K40 ["createNextOrder"]
      213 GETTABLEKS                       R29 R12 K41 ["createElement"]
      215 GETTABLEKS                       R30 R4 K30 ["Hooks"]
      217 GETTABLEKS                       R30 R30 K42 ["useTokens"]
      219 GETTABLEKS                       R31 R2 K43 ["MAX_POINTS"]
      221 GETIMPORT                        R32 K46 [UDim.new]
      223 LOADN                            R33 0
      224 LOADN                            R34 0
      225 CALL                             R32 2 1
      226 DUPCLOSURE                       R33 K47 [PROTO_32]
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R11
      230 CAPTURE                          VAL R17
      231 CAPTURE                          VAL R21
      232 CAPTURE                          VAL R13
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R19
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R24
      241 CAPTURE                          VAL R23
      242 CAPTURE                          VAL R5
      243 CAPTURE                          VAL R31
      244 CAPTURE                          VAL R25
      245 CAPTURE                          VAL R15
      246 CAPTURE                          VAL R30
      247 CAPTURE                          VAL R26
      248 CAPTURE                          VAL R27
      249 CAPTURE                          VAL R22
      250 CAPTURE                          VAL R32
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R9
      253 RETURN                           R33 1

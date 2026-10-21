PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 DUPTABLE                         R1 K3 [{"previousUnorderedKeypoints", "newSortedKeypoints"}]
        4 GETIMPORT                        R2 K6 [NumberSequence.new]
        6 LOADN                            R3 0
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R2 R2 K7 ["Keypoints"]
       10 SETTABLEKS                       R2 R1 K1 ["previousUnorderedKeypoints"]
       12 GETIMPORT                        R2 K6 [NumberSequence.new]
       14 LOADN                            R3 0
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R2 R2 K7 ["Keypoints"]
       18 SETTABLEKS                       R2 R1 K2 ["newSortedKeypoints"]
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNumberSequence"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["Keypoints"]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K4 [{"previousUnorderedKeypoints", "newSortedKeypoints"}]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K5 ["current"]
       15 SETTABLEKS                       R4 R3 K2 ["previousUnorderedKeypoints"]
       17 SETTABLEKS                       R1 R3 K3 ["newSortedKeypoints"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 LENGTH                           R2 R1
        5 LOADN                            R3 2
        6 JUMPIFNOTLE                      R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETIMPORT                        R2 K4 [table.remove]
       11 MOVE                             R3 R1
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 JUMPIFNOTEQKNIL                  R2 ; [+9]
       16 GETIMPORT                        R3 K6 [error]
       18 LOADK                            R4 K7 ["No keypoint exists at index %*"]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K8 ["format"]
       22 CALL                             R4 2 1
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K9 ["fromUnorderedKeypoints"]
       27 MOVE                             R4 R1
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R4 R2 K10 ["Time"]
       31 JUMPIFNOTEQKN                    R4 K11 [0] ; [+12]
       33 GETTABLEN                        R4 R3 1
       34 GETIMPORT                        R5 K14 [NumberSequenceKeypoint.new]
       36 LOADN                            R6 0
       37 GETTABLEKS                       R7 R4 K15 ["Value"]
       39 GETTABLEKS                       R8 R4 K16 ["Envelope"]
       41 CALL                             R5 3 1
       42 SETTABLEN                        R5 R3 1
       43 JUMP                             ; [+15]
       44 GETTABLEKS                       R4 R2 K10 ["Time"]
       46 JUMPIFNOTEQKN                    R4 K17 [1] ; [+12]
       48 LENGTH                           R4 R3
       49 GETTABLE                         R5 R3 R4
       50 GETIMPORT                        R6 K14 [NumberSequenceKeypoint.new]
       52 LOADN                            R7 1
       53 GETTABLEKS                       R8 R5 K15 ["Value"]
       55 GETTABLEKS                       R9 R5 K16 ["Envelope"]
       57 CALL                             R6 3 1
       58 SETTABLE                         R6 R3 R4
       59 GETUPVAL                         R4 2
       60 MOVE                             R5 R3
       61 CALL                             R4 1 0
       62 GETUPVAL                         R4 3
       63 GETTABLEKS                       R4 R4 K18 ["editNumberSequence"]
       65 DUPTABLE                         R5 K22 [{["type"] = "Edit", ["value"]}]
       66 GETIMPORT                        R6 K24 [NumberSequence.new]
       68 MOVE                             R7 R3
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K21 ["value"]
       72 CALL                             R4 1 0
       73 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [NumberSequence.new]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K3 ["fromUnorderedKeypoints"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 -1
       11 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editNumberSequence"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 SETTABLE                         R0 R1 R2
        6 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 FASTCALL3                        TABLE_INSERT R2 R0 R1
        6 MOVE                             R4 R2
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 GETIMPORT                        R3 K4 [table.insert]
       11 CALL                             R3 3 0
       12 GETUPVAL                         R3 1
       13 DUPTABLE                         R4 K8 [{["type"] = "Edit", ["value"]}]
       14 SETTABLEKS                       R2 R4 K7 ["value"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K6 [{"editNumberSequence", "addKeypoint", "deleteKeypoint", "updateKeypoint", "updateKeypoints", "guestUpdateSignal"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["editNumberSequence"]
        4 SETTABLEKS                       R1 R0 K0 ["editNumberSequence"]
        6 GETUPVAL                         R1 1
        7 SETTABLEKS                       R1 R0 K1 ["addKeypoint"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["deleteKeypoint"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["updateKeypoint"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K4 ["updateKeypoints"]
       18 GETUPVAL                         R1 5
       19 SETTABLEKS                       R1 R0 K5 ["guestUpdateSignal"]
       21 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["observeNumberSequence"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R2 R2 K2 ["Keypoints"]
        8 CALL                             R1 1 2
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       18 DUPCLOSURE                       R6 K4 [PROTO_0]
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R7 0 0
       22 CALL                             R5 2 2
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       26 NEWCLOSURE                       R8 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R9 0 1
       34 GETTABLEKS                       R10 R0 K1 ["observeNumberSequence"]
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 0
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K6 ["useEventCallback"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R0
       47 CALL                             R7 1 1
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K6 ["useEventCallback"]
       51 NEWCLOSURE                       R9 P3
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R2
       55 CAPTURE                          UPVAL U5
       56 CALL                             R8 1 1
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
       60 NEWCLOSURE                       R10 P4
       61 CAPTURE                          VAL R8
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R1
       64 CALL                             R9 1 1
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       68 NEWCLOSURE                       R11 P5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CALL                             R10 1 1
       72 MOVE                             R11 R1
       73 MOVE                             R12 R3
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K3 ["useMemo"]
       77 NEWCLOSURE                       R14 P6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 NEWTABLE                         R15 0 6
       86 GETTABLEKS                       R16 R0 K7 ["editNumberSequence"]
       88 MOVE                             R17 R10
       89 MOVE                             R18 R7
       90 MOVE                             R19 R9
       91 MOVE                             R20 R8
       92 MOVE                             R21 R5
       93 SETLIST                          R15 R16 6 [1]
       95 CALL                             R13 2 -1
       96 RETURN                           R11 -1

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
       19 GETTABLEKS                       R3 R3 K11 ["NumberSequenceUtil"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R4 R1 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K13 ["ReactUtils"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K15 ["Signals"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K7 ["Components"]
       46 GETTABLEKS                       R8 R8 K16 ["Util"]
       48 GETTABLEKS                       R8 R8 K17 ["EditingOperation"]
       50 GETTABLEKS                       R8 R8 K18 ["mapValueEditingOperationValue"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R0 K16 ["Util"]
       57 GETTABLEKS                       R9 R9 K19 ["useBindingToState"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R4 K20 ["useRefToState"]
       62 DUPCLOSURE                       R10 K21 [PROTO_10]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 RETURN                           R10 1

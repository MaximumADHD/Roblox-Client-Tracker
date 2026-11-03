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
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeNumberSequence"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R1 R1 K1 ["Keypoints"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["current"]
       10 JUMPIFEQKNIL                     R2 ; [+28]
       12 LENGTH                           R3 R2
       13 LENGTH                           R4 R1
       14 JUMPIFNOTEQ                      R3 R4 ; [+24]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["fromUnorderedKeypoints"]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 1
       21 LOADB                            R4 1
       22 MOVE                             R5 R1
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETUPVAL                         R10 2
       27 GETTABLEKS                       R10 R10 K4 ["isKeypointEqual"]
       29 MOVE                             R11 R9
       30 GETTABLE                         R12 R3 R8
       31 CALL                             R10 2 1
       32 JUMPIF                           R10 ; [+2]
       33 LOADB                            R4 0
       34 JUMP                             ; [+2]
       35 FORGLOOP                         R5 2 ; [-10]
       37 JUMPIFNOT                        R4 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R3 1
       40 LOADNIL                          R4
       41 SETTABLEKS                       R4 R3 K2 ["current"]
       43 GETUPVAL                         R3 3
       44 MOVE                             R4 R1
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 4
       47 DUPTABLE                         R4 K7 [{"previousUnorderedKeypoints", "newSortedKeypoints"}]
       48 GETUPVAL                         R5 5
       49 GETTABLEKS                       R5 R5 K2 ["current"]
       51 SETTABLEKS                       R5 R4 K5 ["previousUnorderedKeypoints"]
       53 SETTABLEKS                       R1 R4 K6 ["newSortedKeypoints"]
       55 CALL                             R3 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createEffect"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 SETTABLE                         R0 R1 R2
        6 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R1
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R0
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       24 GETTABLEKS                       R7 R7 K5 ["useRef"]
       26 LOADNIL                          R8
       27 CALL                             R7 1 1
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K6 ["useEventCallback"]
       31 NEWCLOSURE                       R9 P1
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R2
       34 CALL                             R8 1 1
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["useEffect"]
       38 NEWCLOSURE                       R10 P2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R7
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R11 0 1
       48 GETTABLEKS                       R12 R0 K1 ["observeNumberSequence"]
       50 SETLIST                          R11 R12 1 [1]
       52 CALL                             R9 2 0
       53 GETUPVAL                         R9 4
       54 GETTABLEKS                       R9 R9 K6 ["useEventCallback"]
       56 NEWCLOSURE                       R10 P3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R0
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R10 R10 K6 ["useEventCallback"]
       65 NEWCLOSURE                       R11 P4
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U5
       70 CALL                             R10 1 1
       71 GETUPVAL                         R11 4
       72 GETTABLEKS                       R11 R11 K6 ["useEventCallback"]
       74 NEWCLOSURE                       R12 P5
       75 CAPTURE                          VAL R10
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          VAL R1
       78 CALL                             R11 1 1
       79 GETUPVAL                         R12 4
       80 GETTABLEKS                       R12 R12 K6 ["useEventCallback"]
       82 NEWCLOSURE                       R13 P6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R10
       85 CALL                             R12 1 1
       86 MOVE                             R13 R1
       87 MOVE                             R14 R3
       88 GETUPVAL                         R15 0
       89 GETTABLEKS                       R15 R15 K3 ["useMemo"]
       91 NEWCLOSURE                       R16 P7
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R5
       98 NEWTABLE                         R17 0 6
      100 GETTABLEKS                       R18 R0 K8 ["editNumberSequence"]
      102 MOVE                             R19 R12
      103 MOVE                             R20 R9
      104 MOVE                             R21 R11
      105 MOVE                             R22 R10
      106 MOVE                             R23 R5
      107 SETLIST                          R17 R18 6 [1]
      109 CALL                             R15 2 -1
      110 RETURN                           R13 -1

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
       62 DUPCLOSURE                       R10 K21 [PROTO_11]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R7
       70 RETURN                           R10 1

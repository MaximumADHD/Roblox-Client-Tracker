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
        1 GETTABLEKS                       R1 R1 K0 ["NumberSequence"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["setPart"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 JUMPIFEQKNIL                     R0 ; [+4]
       12 GETUPVAL                         R0 2
       13 JUMPIFNOTEQKB                    R0 TRUE ; [+5]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K2 ["finishEditing"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 1
        4 FASTCALL3                        TABLE_INSERT R3 R0 R1
        6 MOVE                             R5 R3
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 GETIMPORT                        R4 K4 [table.insert]
       11 CALL                             R4 3 0
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R3
       14 CALL                             R4 1 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K5 ["fromUnorderedKeypoints"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETIMPORT                        R5 K8 [NumberSequence.new]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K11 [task.spawn]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 CALL                             R6 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["beginEditingAsync"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["setPart"]
        7 GETIMPORT                        R1 K4 [NumberSequence.new]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K5 ["finishEditing"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

PROTO_6:
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
       14 JUMPIFNOTEQKNIL                  R2 ; [+10]
       16 GETIMPORT                        R3 K6 [error]
       18 LOADK                            R5 K7 ["No keypoint exists at index %*"]
       19 MOVE                             R7 R0
       20 NAMECALL                         R5 R5 K8 ["format"]
       22 CALL                             R5 2 1
       23 MOVE                             R4 R5
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K9 ["fromUnorderedKeypoints"]
       28 MOVE                             R4 R1
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K10 ["Time"]
       32 JUMPIFNOTEQKN                    R4 K11 [0] ; [+12]
       34 GETTABLEN                        R4 R3 1
       35 GETIMPORT                        R5 K14 [NumberSequenceKeypoint.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R7 R4 K15 ["Value"]
       40 GETTABLEKS                       R8 R4 K16 ["Envelope"]
       42 CALL                             R5 3 1
       43 SETTABLEN                        R5 R3 1
       44 JUMP                             ; [+15]
       45 GETTABLEKS                       R4 R2 K10 ["Time"]
       47 JUMPIFNOTEQKN                    R4 K17 [1] ; [+12]
       49 LENGTH                           R4 R3
       50 GETTABLE                         R5 R3 R4
       51 GETIMPORT                        R6 K14 [NumberSequenceKeypoint.new]
       53 LOADN                            R7 1
       54 GETTABLEKS                       R8 R5 K15 ["Value"]
       56 GETTABLEKS                       R9 R5 K16 ["Envelope"]
       58 CALL                             R6 3 1
       59 SETTABLE                         R6 R3 R4
       60 GETUPVAL                         R4 2
       61 MOVE                             R5 R3
       62 CALL                             R4 1 0
       63 GETIMPORT                        R4 K20 [task.spawn]
       65 NEWCLOSURE                       R5 P0
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R3
       68 CALL                             R4 1 0
       69 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["fromUnorderedKeypoints"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K1 ["setPart"]
       11 GETIMPORT                        R3 K4 [NumberSequence.new]
       13 MOVE                             R4 R1
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["NumberSequence"]
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
       34 GETTABLEKS                       R10 R0 K1 ["NumberSequence"]
       36 SETLIST                          R9 R10 1 [1]
       38 CALL                             R7 2 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R9 0 4
       49 MOVE                             R10 R1
       50 GETTABLEKS                       R11 R0 K7 ["beginEditingAsync"]
       52 GETTABLEKS                       R12 R0 K8 ["setPart"]
       54 GETTABLEKS                       R13 R0 K9 ["finishEditing"]
       56 SETLIST                          R9 R10 4 [1]
       58 CALL                             R7 2 1
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K6 ["useCallback"]
       62 NEWCLOSURE                       R9 P3
       63 CAPTURE                          VAL R1
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R10 0 4
       69 MOVE                             R11 R1
       70 GETTABLEKS                       R12 R0 K7 ["beginEditingAsync"]
       72 GETTABLEKS                       R13 R0 K8 ["setPart"]
       74 GETTABLEKS                       R14 R0 K9 ["finishEditing"]
       76 SETLIST                          R10 R11 4 [1]
       78 CALL                             R8 2 1
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K6 ["useCallback"]
       82 NEWCLOSURE                       R10 P4
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          VAL R0
       86 NEWTABLE                         R11 0 1
       88 GETTABLEKS                       R12 R0 K8 ["setPart"]
       90 SETLIST                          R11 R12 1 [1]
       92 CALL                             R9 2 1
       93 GETUPVAL                         R10 0
       94 GETTABLEKS                       R10 R10 K6 ["useCallback"]
       96 NEWCLOSURE                       R11 P5
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R9
       99 NEWTABLE                         R12 0 3
      101 MOVE                             R13 R1
      102 MOVE                             R14 R9
      103 GETTABLEKS                       R15 R0 K8 ["setPart"]
      105 SETLIST                          R12 R13 3 [1]
      107 CALL                             R10 2 1
      108 MOVE                             R11 R1
      109 MOVE                             R12 R3
      110 DUPTABLE                         R13 K15 [{"beginEditingAsync", "finishEditing", "addKeypoint", "deleteKeypoint", "updateKeypoint", "updateKeypoints", "guestUpdateSignal"}]
      111 GETTABLEKS                       R14 R0 K7 ["beginEditingAsync"]
      113 SETTABLEKS                       R14 R13 K7 ["beginEditingAsync"]
      115 GETTABLEKS                       R14 R0 K9 ["finishEditing"]
      117 SETTABLEKS                       R14 R13 K9 ["finishEditing"]
      119 SETTABLEKS                       R7 R13 K10 ["addKeypoint"]
      121 SETTABLEKS                       R8 R13 K11 ["deleteKeypoint"]
      123 SETTABLEKS                       R10 R13 K12 ["updateKeypoint"]
      125 SETTABLEKS                       R9 R13 K13 ["updateKeypoints"]
      127 SETTABLEKS                       R5 R13 K14 ["guestUpdateSignal"]
      129 RETURN                           R11 3

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
       34 GETTABLEKS                       R6 R1 K14 ["Signals"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["useBindingToState"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R4 K17 ["useRefToState"]
       46 DUPCLOSURE                       R8 K18 [PROTO_9]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 RETURN                           R8 1

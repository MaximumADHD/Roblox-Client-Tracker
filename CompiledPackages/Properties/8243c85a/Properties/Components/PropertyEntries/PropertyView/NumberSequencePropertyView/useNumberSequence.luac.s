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
       13 MOVE                             R4 R2
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K5 ["fromUnorderedKeypoints"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K8 [NumberSequence.new]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K9 ["beginEditingAsync"]
       27 CALL                             R5 0 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K10 ["setPart"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 0
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K11 ["finishEditing"]
       36 CALL                             R5 0 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 SETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R2
        7 CALL                             R3 1 0
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K3 ["fromUnorderedKeypoints"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["setPart"]
       16 GETIMPORT                        R5 K7 [NumberSequence.new]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 -1
       20 CALL                             R4 -1 0
       21 RETURN                           R0 0

PROTO_5:
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
       64 CAPTURE                          VAL R2
       65 CAPTURE                          UPVAL U4
       66 CAPTURE                          VAL R0
       67 NEWTABLE                         R10 0 2
       69 MOVE                             R11 R1
       70 GETTABLEKS                       R12 R0 K8 ["setPart"]
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 MOVE                             R9 R1
       76 MOVE                             R10 R3
       77 DUPTABLE                         R11 K13 [{"beginEditingAsync", "finishEditing", "addKeypointAsync", "updateKeypoint", "guestUpdateSignal"}]
       78 GETTABLEKS                       R12 R0 K7 ["beginEditingAsync"]
       80 SETTABLEKS                       R12 R11 K7 ["beginEditingAsync"]
       82 GETTABLEKS                       R12 R0 K9 ["finishEditing"]
       84 SETTABLEKS                       R12 R11 K9 ["finishEditing"]
       86 SETTABLEKS                       R7 R11 K10 ["addKeypointAsync"]
       88 SETTABLEKS                       R8 R11 K11 ["updateKeypoint"]
       90 SETTABLEKS                       R5 R11 K12 ["guestUpdateSignal"]
       92 RETURN                           R9 3

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
       46 DUPCLOSURE                       R8 K18 [PROTO_5]
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R2
       52 RETURN                           R8 1

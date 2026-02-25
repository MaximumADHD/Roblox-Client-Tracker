PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R2 ; [+8]
        6 GETTABLEKS                       R3 R2 K2 ["Metadata"]
        8 JUMPIFNOT                        R3 ; [+5]
        9 GETTABLEKS                       R4 R2 K2 ["Metadata"]
       11 GETTABLEKS                       R3 R4 K3 ["IsChannelAnimation"]
       13 JUMPIFNOT                        R3 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R4 R1 K4 ["Status"]
       17 GETTABLEKS                       R3 R4 K5 ["DefaultRotationType"]
       19 GETTABLEKS                       R5 R1 K4 ["Status"]
       21 GETTABLEKS                       R4 R5 K6 ["DefaultEulerAnglesOrder"]
       23 GETUPVAL                         R7 0
       24 NEWTABLE                         R8 0 0
       26 CALL                             R7 1 -1
       27 NAMECALL                         R5 R0 K7 ["dispatch"]
       29 CALL                             R5 -1 0
       30 GETUPVAL                         R7 1
       31 NEWTABLE                         R8 0 0
       33 CALL                             R7 1 -1
       34 NAMECALL                         R5 R0 K7 ["dispatch"]
       36 CALL                             R5 -1 0
       37 GETUPVAL                         R7 2
       38 NEWTABLE                         R8 0 0
       40 CALL                             R7 1 -1
       41 NAMECALL                         R5 R0 K7 ["dispatch"]
       43 CALL                             R5 -1 0
       44 GETUPVAL                         R5 3
       45 MOVE                             R6 R2
       46 CALL                             R5 1 1
       47 GETUPVAL                         R7 4
       48 GETTABLEKS                       R6 R7 K8 ["promoteToChannels"]
       50 MOVE                             R7 R5
       51 MOVE                             R8 R3
       52 MOVE                             R9 R4
       53 CALL                             R6 3 2
       54 GETTABLEKS                       R9 R1 K4 ["Status"]
       56 GETTABLEKS                       R8 R9 K9 ["Tracks"]
       58 GETIMPORT                        R9 K11 [ipairs]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 3
       62 FORGPREP_INEXT                   R9
       63 GETUPVAL                         R15 5
       64 GETTABLEKS                       R14 R15 K12 ["createTrackListEntryComponents"]
       66 MOVE                             R15 R13
       67 GETTABLEKS                       R16 R13 K13 ["Instance"]
       69 MOVE                             R17 R3
       70 MOVE                             R18 R4
       71 CALL                             R14 4 0
       72 LOADNIL                          R14
       73 SETTABLEKS                       R14 R13 K14 ["EulerAnglesOrder"]
       75 FORGLOOP                         R9 2 [inext] ; [-13]
       77 GETUPVAL                         R11 6
       78 MOVE                             R12 R8
       79 CALL                             R11 1 -1
       80 NAMECALL                         R9 R0 K7 ["dispatch"]
       82 CALL                             R9 -1 0
       83 GETUPVAL                         R11 7
       84 MOVE                             R12 R5
       85 CALL                             R11 1 -1
       86 NAMECALL                         R9 R0 K7 ["dispatch"]
       88 CALL                             R9 -1 0
       89 GETUPVAL                         R9 8
       90 LOADK                            R11 K15 ["onPromoteAnimation"]
       91 GETTABLEKS                       R13 R2 K2 ["Metadata"]
       93 GETTABLEKS                       R12 R13 K16 ["Name"]
       95 MOVE                             R13 R6
       96 MOVE                             R14 R7
       97 GETTABLEKS                       R16 R2 K2 ["Metadata"]
       99 JUMPIFNOT                        R16 ; [+5]
      100 GETTABLEKS                       R16 R2 K2 ["Metadata"]
      102 GETTABLEKS                       R15 R16 K17 ["Guid"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R15
      106 NAMECALL                         R9 R9 K18 ["report"]
      108 CALL                             R9 6 0
      109 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          VAL R0
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AnimationData"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["deepCopy"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["TrackUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K11 ["Actions"]
       40 GETTABLEKS                       R5 R6 K12 ["SetFuture"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K11 ["Actions"]
       49 GETTABLEKS                       R6 R7 K13 ["SetPast"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R9 K11 ["Actions"]
       58 GETTABLEKS                       R7 R8 K14 ["SetSelectedKeyframes"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R10 R0 K6 ["Src"]
       65 GETTABLEKS                       R9 R10 K15 ["Thunks"]
       67 GETTABLEKS                       R8 R9 K16 ["SortAndSetTracks"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R11 R0 K6 ["Src"]
       74 GETTABLEKS                       R10 R11 K15 ["Thunks"]
       76 GETTABLEKS                       R9 R10 K17 ["UpdateAnimationData"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R11 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R11 K18 ["Types"]
       85 CALL                             R9 1 1
       86 DUPCLOSURE                       R10 K19 [PROTO_1]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 RETURN                           R10 1

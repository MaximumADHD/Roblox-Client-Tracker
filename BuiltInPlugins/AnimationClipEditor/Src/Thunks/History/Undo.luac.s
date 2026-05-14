PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MaxWaypointSize"]
        3 JUMPIFLE                         R1 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["Tracks"]
        9 GETTABLEKS                       R4 R1 K2 ["Status"]
       11 GETTABLEKS                       R4 R4 K4 ["SelectedTracks"]
       13 GETTABLEKS                       R5 R1 K5 ["History"]
       15 GETTABLEKS                       R6 R5 K6 ["Past"]
       17 GETTABLEKS                       R7 R5 K7 ["Future"]
       19 LENGTH                           R8 R6
       20 LOADN                            R9 0
       21 JUMPIFNOTLT                      R9 R8 ; [+120]
       23 GETUPVAL                         R8 0
       24 CALL                             R8 0 1
       25 JUMPIFNOT                        R8 ; [+6]
       26 GETUPVAL                         R10 1
       27 LOADB                            R11 0
       28 CALL                             R10 1 -1
       29 NAMECALL                         R8 R0 K8 ["dispatch"]
       31 CALL                             R8 -1 0
       32 GETUPVAL                         R8 2
       33 GETTABLEKS                       R8 R8 K9 ["List"]
       35 GETTABLEKS                       R8 R8 K10 ["join"]
       37 NEWTABLE                         R9 0 1
       39 DUPTABLE                         R10 K11 [{"AnimationData", "Tracks"}]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K12 ["Dictionary"]
       43 GETTABLEKS                       R11 R11 K10 ["join"]
       45 MOVE                             R12 R2
       46 CALL                             R11 1 1
       47 SETTABLEKS                       R11 R10 K1 ["AnimationData"]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K9 ["List"]
       52 GETTABLEKS                       R11 R11 K10 ["join"]
       54 MOVE                             R12 R3
       55 CALL                             R11 1 1
       56 SETTABLEKS                       R11 R10 K3 ["Tracks"]
       58 SETLIST                          R9 R10 1 [1]
       60 MOVE                             R10 R7
       61 CALL                             R8 2 1
       62 MOVE                             R7 R8
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K9 ["List"]
       66 GETTABLEKS                       R8 R8 K13 ["filter"]
       68 MOVE                             R9 R7
       69 NEWCLOSURE                       R10 P0
       70 CAPTURE                          VAL R5
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 GETUPVAL                         R10 3
       74 MOVE                             R11 R7
       75 CALL                             R10 1 -1
       76 NAMECALL                         R8 R0 K8 ["dispatch"]
       78 CALL                             R8 -1 0
       79 GETTABLEN                        R8 R6 1
       80 GETUPVAL                         R11 4
       81 GETTABLEKS                       R12 R8 K1 ["AnimationData"]
       83 CALL                             R11 1 -1
       84 NAMECALL                         R9 R0 K8 ["dispatch"]
       86 CALL                             R9 -1 0
       87 GETUPVAL                         R11 5
       88 GETTABLEKS                       R12 R8 K3 ["Tracks"]
       90 CALL                             R11 1 -1
       91 NAMECALL                         R9 R0 K8 ["dispatch"]
       93 CALL                             R9 -1 0
       94 GETUPVAL                         R11 6
       95 NEWTABLE                         R12 0 0
       97 CALL                             R11 1 -1
       98 NAMECALL                         R9 R0 K8 ["dispatch"]
      100 CALL                             R9 -1 0
      101 GETUPVAL                         R9 7
      102 GETTABLEKS                       R9 R9 K14 ["PruneSelectedTracks"]
      104 GETTABLEKS                       R10 R8 K1 ["AnimationData"]
      106 MOVE                             R11 R4
      107 CALL                             R9 2 2
      108 JUMPIFNOT                        R10 ; [+6]
      109 GETUPVAL                         R13 8
      110 MOVE                             R14 R9
      111 CALL                             R13 1 -1
      112 NAMECALL                         R11 R0 K8 ["dispatch"]
      114 CALL                             R11 -1 0
      115 GETUPVAL                         R13 9
      116 GETUPVAL                         R14 2
      117 GETTABLEKS                       R14 R14 K9 ["List"]
      119 GETTABLEKS                       R14 R14 K15 ["removeIndex"]
      121 MOVE                             R15 R6
      122 LOADN                            R16 1
      123 CALL                             R14 2 -1
      124 CALL                             R13 -1 -1
      125 NAMECALL                         R11 R0 K8 ["dispatch"]
      127 CALL                             R11 -1 0
      128 GETUPVAL                         R11 10
      129 JUMPIFNOT                        R11 ; [+12]
      130 GETUPVAL                         R11 10
      131 GETUPVAL                         R13 11
      132 GETTABLEKS                       R13 R13 K16 ["SIGNAL_KEYS"]
      134 GETTABLEKS                       R13 R13 K17 ["SelectionChanged"]
      136 NAMECALL                         R11 R11 K18 ["get"]
      138 CALL                             R11 2 1
      139 NAMECALL                         R12 R11 K19 ["Fire"]
      141 CALL                             R12 1 0
      142 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          UPVAL U9
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U10
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K6 ["Src"]
       25 GETTABLEKS                       R3 R3 K11 ["Actions"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["SetFuture"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R3 K13 ["SetInReviewState"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R3 K14 ["SetPast"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R3 K15 ["SetSelectedKeyframes"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["Thunks"]
       51 GETIMPORT                        R9 K5 [require]
       53 GETTABLEKS                       R10 R8 K17 ["SetSelectedTracks"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R8 K18 ["SortAndSetTracks"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R12 R8 K19 ["UpdateAnimationData"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R0 K6 ["Src"]
       68 GETTABLEKS                       R12 R12 K7 ["Util"]
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R12 K20 ["TrackSelectionUtils"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R0 K21 ["LuaFlags"]
       79 GETTABLEKS                       R15 R15 K22 ["GetFFlagFacialAnimationRecordingInStudio"]
       81 CALL                             R14 1 1
       82 DUPCLOSURE                       R15 K23 [PROTO_2]
       83 CAPTURE                          VAL R14
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R1
       94 RETURN                           R15 1

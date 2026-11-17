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
       19 LENGTH                           R8 R7
       20 LOADN                            R9 0
       21 JUMPIFNOTLT                      R9 R8 ; [+97]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K8 ["List"]
       26 GETTABLEKS                       R8 R8 K9 ["join"]
       28 NEWTABLE                         R9 0 1
       30 DUPTABLE                         R10 K10 [{"AnimationData", "Tracks"}]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K11 ["Dictionary"]
       34 GETTABLEKS                       R11 R11 K9 ["join"]
       36 MOVE                             R12 R2
       37 CALL                             R11 1 1
       38 SETTABLEKS                       R11 R10 K1 ["AnimationData"]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K8 ["List"]
       43 GETTABLEKS                       R11 R11 K9 ["join"]
       45 MOVE                             R12 R3
       46 CALL                             R11 1 1
       47 SETTABLEKS                       R11 R10 K3 ["Tracks"]
       49 SETLIST                          R9 R10 1 [1]
       51 MOVE                             R10 R6
       52 CALL                             R8 2 1
       53 MOVE                             R6 R8
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K8 ["List"]
       57 GETTABLEKS                       R8 R8 K12 ["filter"]
       59 MOVE                             R9 R6
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R5
       62 CALL                             R8 2 1
       63 MOVE                             R6 R8
       64 GETUPVAL                         R10 1
       65 MOVE                             R11 R6
       66 CALL                             R10 1 -1
       67 NAMECALL                         R8 R0 K13 ["dispatch"]
       69 CALL                             R8 -1 0
       70 GETTABLEN                        R8 R7 1
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R12 R8 K1 ["AnimationData"]
       74 CALL                             R11 1 -1
       75 NAMECALL                         R9 R0 K13 ["dispatch"]
       77 CALL                             R9 -1 0
       78 GETUPVAL                         R11 3
       79 GETTABLEKS                       R12 R8 K3 ["Tracks"]
       81 CALL                             R11 1 -1
       82 NAMECALL                         R9 R0 K13 ["dispatch"]
       84 CALL                             R9 -1 0
       85 GETUPVAL                         R11 4
       86 NEWTABLE                         R12 0 0
       88 CALL                             R11 1 -1
       89 NAMECALL                         R9 R0 K13 ["dispatch"]
       91 CALL                             R9 -1 0
       92 GETUPVAL                         R9 5
       93 GETTABLEKS                       R9 R9 K14 ["PruneSelectedTracks"]
       95 GETTABLEKS                       R10 R8 K1 ["AnimationData"]
       97 MOVE                             R11 R4
       98 CALL                             R9 2 2
       99 JUMPIFNOT                        R10 ; [+6]
      100 GETUPVAL                         R13 6
      101 MOVE                             R14 R9
      102 CALL                             R13 1 -1
      103 NAMECALL                         R11 R0 K13 ["dispatch"]
      105 CALL                             R11 -1 0
      106 GETUPVAL                         R13 7
      107 GETUPVAL                         R14 0
      108 GETTABLEKS                       R14 R14 K8 ["List"]
      110 GETTABLEKS                       R14 R14 K15 ["removeIndex"]
      112 MOVE                             R15 R7
      113 LOADN                            R16 1
      114 CALL                             R14 2 -1
      115 CALL                             R13 -1 -1
      116 NAMECALL                         R11 R0 K13 ["dispatch"]
      118 CALL                             R11 -1 0
      119 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetFuture"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K11 ["SetPast"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R2 K12 ["SetSelectedKeyframes"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R6 R0 K8 ["Src"]
       35 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R6 K14 ["SetSelectedTracks"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R6 K15 ["SortAndSetTracks"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R6 K16 ["UpdateAnimationData"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R10 R0 K8 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Util"]
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R12 R10 K18 ["TrackSelectionUtils"]
       60 CALL                             R11 1 1
       61 DUPCLOSURE                       R12 K19 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R3
       70 RETURN                           R12 1

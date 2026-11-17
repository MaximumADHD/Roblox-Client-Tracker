PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K2 ["EditorMode"]
       10 GETTABLEKS                       R4 R2 K3 ["Tracks"]
       12 GETUPVAL                         R5 0
       13 JUMPIF                           R5 ; [+2]
       14 GETTABLEKS                       R5 R2 K4 ["DefaultRotationType"]
       16 SETUPVAL                         R5 0
       17 GETIMPORT                        R5 K6 [ipairs]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 3
       21 FORGPREP_INEXT                   R5
       22 GETTABLEKS                       R10 R9 K7 ["Name"]
       24 GETUPVAL                         R11 1
       25 JUMPIFNOTEQ                      R10 R11 ; [+2]
       27 RETURN                           R0 0
       28 FORGLOOP                         R5 2 [inext] ; [-7]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K8 ["trackListEntry"]
       33 GETUPVAL                         R6 3
       34 JUMPIF                           R6 ; [+5]
       35 GETUPVAL                         R6 4
       36 GETTABLEKS                       R6 R6 K9 ["TRACK_TYPES"]
       38 GETTABLEKS                       R6 R6 K10 ["CFrame"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 1
       42 SETTABLEKS                       R6 R5 K7 ["Name"]
       44 GETUPVAL                         R6 5
       45 SETTABLEKS                       R6 R5 K11 ["Instance"]
       47 GETUPVAL                         R6 6
       48 SETTABLEKS                       R6 R5 K12 ["EulerAnglesOrder"]
       50 GETTABLEKS                       R6 R1 K13 ["AnimationData"]
       52 GETUPVAL                         R7 7
       53 GETTABLEKS                       R7 R7 K14 ["isChannelAnimation"]
       55 MOVE                             R8 R6
       56 CALL                             R7 1 1
       57 JUMPIFNOT                        R7 ; [+8]
       58 GETUPVAL                         R7 8
       59 GETTABLEKS                       R7 R7 K15 ["createTrackListEntryComponents"]
       61 MOVE                             R8 R5
       62 GETUPVAL                         R9 5
       63 GETUPVAL                         R10 0
       64 GETUPVAL                         R11 6
       65 CALL                             R7 4 0
       66 GETUPVAL                         R7 9
       67 GETTABLEKS                       R7 R7 K16 ["List"]
       69 GETTABLEKS                       R7 R7 K17 ["join"]
       71 MOVE                             R8 R4
       72 NEWTABLE                         R9 0 1
       74 MOVE                             R10 R5
       75 SETLIST                          R9 R10 1 [1]
       77 CALL                             R7 2 1
       78 GETUPVAL                         R10 10
       79 MOVE                             R11 R7
       80 CALL                             R10 1 -1
       81 NAMECALL                         R8 R0 K18 ["dispatch"]
       83 CALL                             R8 -1 0
       84 GETUPVAL                         R8 11
       85 JUMPIFNOT                        R8 ; [+17]
       86 GETUPVAL                         R8 11
       87 LOADK                            R10 K19 ["onTrackAdded"]
       88 GETUPVAL                         R11 1
       89 MOVE                             R12 R3
       90 JUMPIFNOT                        R6 ; [+8]
       91 GETTABLEKS                       R14 R6 K20 ["Metadata"]
       93 JUMPIFNOT                        R14 ; [+5]
       94 GETTABLEKS                       R13 R6 K20 ["Metadata"]
       96 GETTABLEKS                       R13 R13 K21 ["Guid"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R13
      100 NAMECALL                         R8 R8 K22 ["report"]
      102 CALL                             R8 5 0
      103 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R6 P0
        1 CAPTURE                          REF R3
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          VAL R5
       13 CLOSEUPVALS                      R3
       14 RETURN                           R6 1

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
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Templates"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["TrackUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["AnimationData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Thunks"]
       56 GETTABLEKS                       R7 R7 K15 ["SortAndSetTracks"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_1]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 RETURN                           R7 1

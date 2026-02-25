PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["trackListEntry"]
        3 GETTABLEKS                       R3 R1 K1 ["Type"]
        5 JUMPIF                           R3 ; [+5]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K2 ["TRACK_TYPES"]
        9 GETTABLEKS                       R3 R4 K3 ["CFrame"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R0 R2 K4 ["Name"]
       14 GETUPVAL                         R3 2
       15 SETTABLEKS                       R3 R2 K5 ["Instance"]
       17 GETIMPORT                        R3 K7 [pairs]
       19 GETTABLEKS                       R4 R1 K8 ["Components"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 GETTABLEKS                       R8 R2 K8 ["Components"]
       28 JUMPIFNOTEQKNIL                  R8 ; [+5]
       30 NEWTABLE                         R8 0 0
       32 SETTABLEKS                       R8 R2 K8 ["Components"]
       34 GETTABLEKS                       R8 R7 K1 ["Type"]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R10 R11 K2 ["TRACK_TYPES"]
       39 GETTABLEKS                       R9 R10 K9 ["IkData"]
       41 JUMPIFNOTEQ                      R8 R9 ; [+9]
       43 GETTABLEKS                       R8 R2 K8 ["Components"]
       45 GETUPVAL                         R9 3
       46 MOVE                             R10 R6
       47 MOVE                             R11 R7
       48 CALL                             R9 2 1
       49 SETTABLE                         R9 R8 R6
       50 JUMP                             ; [+33]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R8 R9 K0 ["trackListEntry"]
       54 GETTABLEKS                       R9 R7 K1 ["Type"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R6 R8 K4 ["Name"]
       59 GETUPVAL                         R9 2
       60 SETTABLEKS                       R9 R8 K5 ["Instance"]
       62 GETUPVAL                         R10 4
       63 GETTABLEKS                       R9 R10 K10 ["getRotationType"]
       65 GETUPVAL                         R10 5
       66 CALL                             R9 1 1
       67 GETUPVAL                         R11 4
       68 GETTABLEKS                       R10 R11 K11 ["getEulerAnglesOrder"]
       70 GETUPVAL                         R11 5
       71 CALL                             R10 1 1
       72 GETUPVAL                         R12 4
       73 GETTABLEKS                       R11 R12 K12 ["createTrackListEntryComponents"]
       75 MOVE                             R12 R8
       76 GETTABLEKS                       R13 R8 K5 ["Instance"]
       78 MOVE                             R14 R9
       79 MOVE                             R15 R10
       80 CALL                             R11 4 0
       81 GETTABLEKS                       R11 R2 K8 ["Components"]
       83 SETTABLE                         R8 R11 R6
       84 FORGLOOP                         R3 2 ; [-59]
       86 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R2 K2 ["EditorMode"]
       10 GETTABLEKS                       R4 R2 K3 ["Tracks"]
       12 GETIMPORT                        R5 K5 [ipairs]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 3
       16 FORGPREP_INEXT                   R5
       17 GETTABLEKS                       R10 R9 K6 ["Name"]
       19 GETUPVAL                         R11 0
       20 JUMPIFNOTEQ                      R10 R11 ; [+2]
       22 RETURN                           R0 0
       23 FORGLOOP                         R5 2 [inext] ; [-7]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 MOVE                             R6 R5
       33 GETUPVAL                         R7 0
       34 GETUPVAL                         R8 5
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R7 R1 K7 ["AnimationData"]
       38 GETUPVAL                         R10 6
       39 GETTABLEKS                       R9 R10 K8 ["List"]
       41 GETTABLEKS                       R8 R9 K9 ["join"]
       43 MOVE                             R9 R4
       44 NEWTABLE                         R10 0 1
       46 MOVE                             R11 R6
       47 SETLIST                          R10 R11 1 [1]
       49 CALL                             R8 2 1
       50 GETUPVAL                         R11 7
       51 MOVE                             R12 R8
       52 CALL                             R11 1 -1
       53 NAMECALL                         R9 R0 K10 ["dispatch"]
       55 CALL                             R9 -1 0
       56 GETUPVAL                         R9 8
       57 JUMPIFNOT                        R9 ; [+17]
       58 GETUPVAL                         R9 8
       59 LOADK                            R11 K11 ["onTrackAdded"]
       60 GETUPVAL                         R12 0
       61 MOVE                             R13 R3
       62 JUMPIFNOT                        R7 ; [+8]
       63 GETTABLEKS                       R15 R7 K12 ["Metadata"]
       65 JUMPIFNOT                        R15 ; [+5]
       66 GETTABLEKS                       R15 R7 K12 ["Metadata"]
       68 GETTABLEKS                       R14 R15 K13 ["Guid"]
       70 JUMP                             ; [+1]
       71 LOADNIL                          R14
       72 NAMECALL                         R9 R9 K14 ["report"]
       74 CALL                             R9 5 0
       75 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R3
       10 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Templates"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["TrackUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R7 K14 ["SortAndSetTracks"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R8 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R8 K15 ["Types"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K16 [PROTO_2]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R5
       63 RETURN                           R7 1

PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETTABLEKS                       R1 R0 K0 ["Components"]
        4 JUMPIF                           R1 ; [+9]
        5 GETTABLEKS                       R1 R0 K1 ["Type"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["TRACK_TYPES"]
       10 GETTABLEKS                       R2 R3 K3 ["CFrame"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+20]
       14 GETUPVAL                         R1 2
       15 SETTABLEKS                       R1 R0 K4 ["Expanded"]
       17 GETUPVAL                         R1 3
       18 JUMPIFNOT                        R1 ; [+14]
       19 GETTABLEKS                       R1 R0 K0 ["Components"]
       21 JUMPIFNOT                        R1 ; [+11]
       22 GETIMPORT                        R1 K6 [pairs]
       24 GETTABLEKS                       R2 R0 K0 ["Components"]
       26 CALL                             R1 1 3
       27 FORGPREP_NEXT                    R1
       28 GETUPVAL                         R6 4
       29 MOVE                             R7 R5
       30 CALL                             R6 1 0
       31 FORGLOOP                         R1 2 ; [-4]
       33 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R4 R1 K1 ["Status"]
        6 GETTABLEKS                       R3 R4 K2 ["Tracks"]
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["isChannelAnimation"]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 GETIMPORT                        R5 K6 [ipairs]
       18 GETUPVAL                         R6 2
       19 JUMPIF                           R6 ; [+2]
       20 NEWTABLE                         R6 0 0
       22 CALL                             R5 1 3
       23 FORGPREP_INEXT                   R5
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          VAL R10
       30 GETUPVAL                         R12 6
       31 GETTABLEKS                       R11 R12 K7 ["findTrackEntry"]
       33 MOVE                             R12 R2
       34 MOVE                             R13 R9
       35 CALL                             R11 2 1
       36 MOVE                             R12 R10
       37 MOVE                             R13 R11
       38 CALL                             R12 1 0
       39 FORGLOOP                         R5 2 [inext] ; [-16]
       41 GETUPVAL                         R7 7
       42 MOVE                             R8 R2
       43 CALL                             R7 1 -1
       44 NAMECALL                         R5 R0 K8 ["dispatch"]
       46 CALL                             R5 -1 0
       47 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["deepCopy"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["TrackUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K7 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["AnimationData"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K12 ["Actions"]
       49 GETTABLEKS                       R6 R7 K13 ["SetTracks"]
       51 CALL                             R5 1 1
       52 DUPCLOSURE                       R6 K14 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 RETURN                           R6 1

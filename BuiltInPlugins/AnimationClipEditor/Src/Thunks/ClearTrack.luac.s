PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["Keyframes"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["Data"]
        8 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R4 R2 K2 ["Instances"]
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R3 R4 R5
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["Dictionary"]
       15 GETTABLEKS                       R3 R3 K4 ["join"]
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R2
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       24 GETTABLEKS                       R4 R4 K4 ["join"]
       26 NEWTABLE                         R5 0 0
       28 GETTABLEKS                       R6 R3 K2 ["Instances"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K2 ["Instances"]
       33 GETTABLEKS                       R4 R3 K2 ["Instances"]
       35 GETUPVAL                         R5 0
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K3 ["Dictionary"]
       39 GETTABLEKS                       R6 R6 K4 ["join"]
       41 NEWTABLE                         R7 0 0
       43 GETTABLEKS                       R9 R3 K2 ["Instances"]
       45 GETUPVAL                         R10 0
       46 GETTABLE                         R8 R9 R10
       47 CALL                             R6 2 1
       48 SETTABLE                         R6 R4 R5
       49 GETTABLEKS                       R5 R3 K2 ["Instances"]
       51 GETUPVAL                         R6 0
       52 GETTABLE                         R4 R5 R6
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       56 GETTABLEKS                       R5 R5 K4 ["join"]
       58 NEWTABLE                         R6 0 0
       60 GETTABLEKS                       R8 R3 K2 ["Instances"]
       62 GETUPVAL                         R9 0
       63 GETTABLE                         R7 R8 R9
       64 GETTABLEKS                       R7 R7 K5 ["Tracks"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K5 ["Tracks"]
       69 GETTABLEKS                       R5 R3 K2 ["Instances"]
       71 GETUPVAL                         R6 0
       72 GETTABLE                         R4 R5 R6
       73 GETTABLEKS                       R4 R4 K5 ["Tracks"]
       75 GETUPVAL                         R6 2
       76 GETTABLEN                        R5 R6 1
       77 GETUPVAL                         R6 3
       78 GETTABLEKS                       R9 R3 K2 ["Instances"]
       80 GETUPVAL                         R10 0
       81 GETTABLE                         R8 R9 R10
       82 GETTABLEKS                       R8 R8 K5 ["Tracks"]
       84 GETUPVAL                         R10 2
       85 GETTABLEN                        R9 R10 1
       86 GETTABLE                         R7 R8 R9
       87 CALL                             R6 1 1
       88 SETTABLE                         R6 R4 R5
       89 GETUPVAL                         R4 4
       90 GETTABLEKS                       R4 R4 K6 ["getTrack"]
       92 MOVE                             R5 R3
       93 GETUPVAL                         R6 0
       94 GETUPVAL                         R7 2
       95 CALL                             R4 3 1
       96 JUMPIFEQKNIL                     R4 ; [+14]
       98 GETUPVAL                         R5 5
       99 GETTABLEKS                       R5 R5 K7 ["traverseTracks"]
      101 LOADNIL                          R6
      102 MOVE                             R7 R4
      103 DUPCLOSURE                       R8 K8 [PROTO_0]
      104 CALL                             R5 3 0
      105 GETUPVAL                         R7 6
      106 MOVE                             R8 R3
      107 CALL                             R7 1 -1
      108 NAMECALL                         R5 R0 K9 ["dispatch"]
      110 CALL                             R5 -1 0
      111 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepCopy"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["TrackUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 RETURN                           R6 1

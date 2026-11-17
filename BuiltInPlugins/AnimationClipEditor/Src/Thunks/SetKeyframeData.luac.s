PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETTABLEKS                       R3 R1 K2 ["Instances"]
        8 GETUPVAL                         R4 0
        9 GETTABLE                         R2 R3 R4
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       15 GETTABLEKS                       R2 R2 K4 ["join"]
       17 NEWTABLE                         R3 0 0
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["Dictionary"]
       24 GETTABLEKS                       R3 R3 K4 ["join"]
       26 NEWTABLE                         R4 0 0
       28 GETTABLEKS                       R5 R2 K2 ["Instances"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K2 ["Instances"]
       33 GETTABLEKS                       R3 R2 K2 ["Instances"]
       35 GETUPVAL                         R4 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K3 ["Dictionary"]
       39 GETTABLEKS                       R5 R5 K4 ["join"]
       41 NEWTABLE                         R6 0 0
       43 GETTABLEKS                       R8 R2 K2 ["Instances"]
       45 GETUPVAL                         R9 0
       46 GETTABLE                         R7 R8 R9
       47 CALL                             R5 2 1
       48 SETTABLE                         R5 R3 R4
       49 GETTABLEKS                       R4 R2 K2 ["Instances"]
       51 GETUPVAL                         R5 0
       52 GETTABLE                         R3 R4 R5
       53 GETUPVAL                         R4 1
       54 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       56 GETTABLEKS                       R4 R4 K4 ["join"]
       58 NEWTABLE                         R5 0 0
       60 GETTABLEKS                       R7 R2 K2 ["Instances"]
       62 GETUPVAL                         R8 0
       63 GETTABLE                         R6 R7 R8
       64 GETTABLEKS                       R6 R6 K5 ["Tracks"]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R3 K5 ["Tracks"]
       69 GETTABLEKS                       R4 R2 K2 ["Instances"]
       71 GETUPVAL                         R5 0
       72 GETTABLE                         R3 R4 R5
       73 GETTABLEKS                       R3 R3 K5 ["Tracks"]
       75 GETUPVAL                         R5 2
       76 GETTABLEN                        R4 R5 1
       77 GETUPVAL                         R5 3
       78 GETTABLEKS                       R8 R2 K2 ["Instances"]
       80 GETUPVAL                         R9 0
       81 GETTABLE                         R7 R8 R9
       82 GETTABLEKS                       R7 R7 K5 ["Tracks"]
       84 GETUPVAL                         R9 2
       85 GETTABLEN                        R8 R9 1
       86 GETTABLE                         R6 R7 R8
       87 CALL                             R5 1 1
       88 SETTABLE                         R5 R3 R4
       89 GETUPVAL                         R3 4
       90 GETTABLEKS                       R3 R3 K6 ["getTrack"]
       92 MOVE                             R4 R2
       93 GETUPVAL                         R5 0
       94 GETUPVAL                         R6 2
       95 CALL                             R3 3 1
       96 JUMPIFNOT                        R3 ; [+21]
       97 GETTABLEKS                       R4 R3 K7 ["Data"]
       99 JUMPIFNOT                        R4 ; [+18]
      100 GETTABLEKS                       R5 R3 K7 ["Data"]
      102 GETUPVAL                         R6 5
      103 GETTABLE                         R4 R5 R6
      104 JUMPIFNOT                        R4 ; [+13]
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R4 R4 K8 ["setKeyframeData"]
      108 MOVE                             R5 R3
      109 GETUPVAL                         R6 5
      110 GETUPVAL                         R7 6
      111 CALL                             R4 3 0
      112 GETUPVAL                         R6 7
      113 MOVE                             R7 R2
      114 CALL                             R6 1 -1
      115 NAMECALL                         R4 R0 K9 ["dispatch"]
      117 CALL                             R4 -1 0
      118 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U3
        9 RETURN                           R4 1

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
       20 GETTABLEKS                       R3 R3 K10 ["deepCopy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       38 GETTABLEKS                       R5 R5 K13 ["UpdateAnimationData"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R5 1

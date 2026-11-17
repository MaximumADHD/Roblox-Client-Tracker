PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["Data"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K3 [pairs]
        9 GETTABLEKS                       R3 R0 K0 ["Selection"]
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 GETTABLEKS                       R8 R1 K1 ["Data"]
       15 GETTABLE                         R7 R8 R5
       16 JUMPIFNOT                        R7 ; [+7]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K4 ["setKeyframeData"]
       20 MOVE                             R8 R1
       21 MOVE                             R9 R5
       22 GETUPVAL                         R10 1
       23 CALL                             R7 3 0
       24 FORGLOOP                         R2 2 ; [-12]
       26 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["SelectedKeyframes"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 JUMPIFNOT                        R3 ; [+1]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Dictionary"]
       15 GETTABLEKS                       R4 R4 K5 ["join"]
       17 NEWTABLE                         R5 0 0
       19 MOVE                             R6 R3
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K4 ["Dictionary"]
       24 GETTABLEKS                       R5 R5 K5 ["join"]
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R4 K6 ["Instances"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K6 ["Instances"]
       33 GETIMPORT                        R5 K8 [pairs]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 3
       37 FORGPREP_NEXT                    R5
       38 GETTABLEKS                       R10 R4 K6 ["Instances"]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K4 ["Dictionary"]
       43 GETTABLEKS                       R11 R11 K5 ["join"]
       45 NEWTABLE                         R12 0 0
       47 GETTABLEKS                       R14 R4 K6 ["Instances"]
       49 GETTABLE                         R13 R14 R8
       50 CALL                             R11 2 1
       51 SETTABLE                         R11 R10 R8
       52 GETTABLEKS                       R11 R4 K6 ["Instances"]
       54 GETTABLE                         R10 R11 R8
       55 GETUPVAL                         R11 0
       56 GETTABLEKS                       R11 R11 K4 ["Dictionary"]
       58 GETTABLEKS                       R11 R11 K5 ["join"]
       60 NEWTABLE                         R12 0 0
       62 GETTABLEKS                       R14 R4 K6 ["Instances"]
       64 GETTABLE                         R13 R14 R8
       65 GETTABLEKS                       R13 R13 K9 ["Tracks"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K9 ["Tracks"]
       70 GETTABLEKS                       R11 R4 K6 ["Instances"]
       72 GETTABLE                         R10 R11 R8
       73 GETIMPORT                        R11 K8 [pairs]
       75 MOVE                             R12 R9
       76 CALL                             R11 1 3
       77 FORGPREP_NEXT                    R11
       78 GETUPVAL                         R16 1
       79 GETTABLE                         R17 R10 R14
       80 CALL                             R16 1 1
       81 SETTABLE                         R16 R10 R14
       82 GETTABLEKS                       R17 R10 K9 ["Tracks"]
       84 GETTABLE                         R16 R17 R14
       85 GETUPVAL                         R17 2
       86 GETTABLEKS                       R17 R17 K10 ["traverse"]
       88 MOVE                             R18 R15
       89 MOVE                             R19 R16
       90 NEWCLOSURE                       R20 P0
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          UPVAL U4
       93 CALL                             R17 3 0
       94 FORGLOOP                         R11 2 ; [-17]
       96 FORGLOOP                         R5 2 ; [-59]
       98 GETUPVAL                         R7 5
       99 MOVE                             R8 R4
      100 CALL                             R7 1 -1
      101 NAMECALL                         R5 R0 K11 ["dispatch"]
      103 CALL                             R5 -1 0
      104 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

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
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["SelectionUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 RETURN                           R6 1

PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["Data"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["getDefaultValue"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [pairs]
       14 GETTABLEKS                       R4 R0 K0 ["Selection"]
       16 CALL                             R3 1 3
       17 FORGPREP_NEXT                    R3
       18 GETTABLEKS                       R9 R1 K1 ["Data"]
       20 GETTABLE                         R8 R9 R6
       21 JUMPIFNOT                        R8 ; [+9]
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K5 ["setKeyframeData"]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R6
       27 DUPTABLE                         R11 K7 [{"Value"}]
       28 SETTABLEKS                       R2 R11 K6 ["Value"]
       30 CALL                             R8 3 0
       31 FORGLOOP                         R3 2 ; [-14]
       33 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["SelectedKeyframes"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 JUMPIFNOT                        R3 ; [+1]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       15 GETTABLEKS                       R4 R5 K5 ["join"]
       17 NEWTABLE                         R5 0 0
       19 MOVE                             R6 R3
       20 CALL                             R4 2 1
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K4 ["Dictionary"]
       24 GETTABLEKS                       R5 R6 K5 ["join"]
       26 NEWTABLE                         R6 0 0
       28 GETTABLEKS                       R7 R4 K6 ["Instances"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K6 ["Instances"]
       33 GETIMPORT                        R5 K8 [pairs]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 3
       37 FORGPREP_NEXT                    R5
       38 GETTABLEKS                       R10 R4 K6 ["Instances"]
       40 GETUPVAL                         R13 0
       41 GETTABLEKS                       R12 R13 K4 ["Dictionary"]
       43 GETTABLEKS                       R11 R12 K5 ["join"]
       45 NEWTABLE                         R12 0 0
       47 GETTABLEKS                       R14 R4 K6 ["Instances"]
       49 GETTABLE                         R13 R14 R8
       50 CALL                             R11 2 1
       51 SETTABLE                         R11 R10 R8
       52 GETTABLEKS                       R11 R4 K6 ["Instances"]
       54 GETTABLE                         R10 R11 R8
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K4 ["Dictionary"]
       58 GETTABLEKS                       R11 R12 K5 ["join"]
       60 NEWTABLE                         R12 0 0
       62 GETTABLEKS                       R15 R4 K6 ["Instances"]
       64 GETTABLE                         R14 R15 R8
       65 GETTABLEKS                       R13 R14 K9 ["Tracks"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K9 ["Tracks"]
       70 GETTABLEKS                       R11 R4 K6 ["Instances"]
       72 GETTABLE                         R10 R11 R8
       73 GETIMPORT                        R11 K8 [pairs]
       75 MOVE                             R12 R9
       76 CALL                             R11 1 3
       77 FORGPREP_NEXT                    R11
       78 GETTABLEKS                       R16 R10 K9 ["Tracks"]
       80 GETUPVAL                         R17 1
       81 GETTABLEKS                       R19 R10 K9 ["Tracks"]
       83 GETTABLE                         R18 R19 R14
       84 CALL                             R17 1 1
       85 SETTABLE                         R17 R16 R14
       86 GETTABLEKS                       R17 R10 K9 ["Tracks"]
       88 GETTABLE                         R16 R17 R14
       89 GETUPVAL                         R18 2
       90 GETTABLEKS                       R17 R18 K10 ["traverse"]
       92 MOVE                             R18 R15
       93 MOVE                             R19 R16
       94 DUPCLOSURE                       R20 K11 [PROTO_0]
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          UPVAL U4
       97 CALL                             R17 3 0
       98 FORGLOOP                         R11 2 ; [-21]
      100 FORGLOOP                         R5 2 ; [-63]
      102 GETUPVAL                         R7 5
      103 MOVE                             R8 R4
      104 CALL                             R7 1 -1
      105 NAMECALL                         R5 R0 K12 ["dispatch"]
      107 CALL                             R5 -1 0
      108 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 RETURN                           R0 1

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
       20 GETTABLEKS                       R3 R4 K10 ["deepCopy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["TrackUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K9 ["Util"]
       47 GETTABLEKS                       R6 R7 K13 ["SelectionUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K14 ["Thunks"]
       56 GETTABLEKS                       R7 R8 K15 ["UpdateAnimationData"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_2]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R6
       66 RETURN                           R7 1

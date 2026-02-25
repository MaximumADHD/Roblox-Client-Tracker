PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R2 1
        5 SETUPVAL                         R2 0
        6 GETIMPORT                        R2 K2 [pairs]
        8 GETTABLEKS                       R3 R0 K0 ["Selection"]
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 GETTABLEKS                       R7 R1 K3 ["Data"]
       14 JUMPIFNOT                        R7 ; [+28]
       15 GETTABLEKS                       R8 R1 K3 ["Data"]
       17 GETTABLE                         R7 R8 R5
       18 JUMPIFNOT                        R7 ; [+24]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K4 ["deleteKeyframe"]
       22 MOVE                             R8 R1
       23 MOVE                             R9 R5
       24 CALL                             R7 2 0
       25 GETUPVAL                         R7 2
       26 LOADK                            R9 K5 ["onDeleteKeyframe"]
       27 GETUPVAL                         R10 3
       28 GETUPVAL                         R11 4
       29 GETUPVAL                         R14 5
       30 GETTABLEKS                       R13 R14 K6 ["Metadata"]
       32 JUMPIFNOT                        R13 ; [+6]
       33 GETUPVAL                         R14 5
       34 GETTABLEKS                       R13 R14 K6 ["Metadata"]
       36 GETTABLEKS                       R12 R13 K7 ["Guid"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R12
       40 NAMECALL                         R7 R7 K8 ["report"]
       42 CALL                             R7 5 0
       43 FORGLOOP                         R2 2 ; [-32]
       45 GETTABLEKS                       R2 R1 K3 ["Data"]
       47 JUMPIFNOT                        R2 ; [+7]
       48 GETUPVAL                         R2 6
       49 GETTABLEKS                       R3 R1 K3 ["Data"]
       51 CALL                             R2 1 1
       52 JUMPIF                           R2 ; [+2]
       53 LOADB                            R2 1
       54 SETUPVAL                         R2 7
       55 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R3 K2 ["SelectedKeyframes"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 GETTABLEKS                       R5 R1 K1 ["Status"]
       11 GETTABLEKS                       R4 R5 K4 ["EditorMode"]
       13 JUMPIFNOT                        R3 ; [+1]
       14 JUMPIF                           R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K5 ["Dictionary"]
       19 GETTABLEKS                       R5 R6 K6 ["join"]
       21 NEWTABLE                         R6 0 0
       23 MOVE                             R7 R3
       24 CALL                             R5 2 1
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R7 R8 K5 ["Dictionary"]
       28 GETTABLEKS                       R6 R7 K6 ["join"]
       30 NEWTABLE                         R7 0 0
       32 GETTABLEKS                       R8 R5 K7 ["Instances"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K7 ["Instances"]
       37 GETIMPORT                        R6 K9 [pairs]
       39 MOVE                             R7 R2
       40 CALL                             R6 1 3
       41 FORGPREP_NEXT                    R6
       42 GETTABLEKS                       R11 R5 K7 ["Instances"]
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R13 R14 K5 ["Dictionary"]
       47 GETTABLEKS                       R12 R13 K6 ["join"]
       49 NEWTABLE                         R13 0 0
       51 GETTABLEKS                       R15 R5 K7 ["Instances"]
       53 GETTABLE                         R14 R15 R9
       54 CALL                             R12 2 1
       55 SETTABLE                         R12 R11 R9
       56 GETTABLEKS                       R12 R5 K7 ["Instances"]
       58 GETTABLE                         R11 R12 R9
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R13 R14 K5 ["Dictionary"]
       62 GETTABLEKS                       R12 R13 K6 ["join"]
       64 NEWTABLE                         R13 0 0
       66 GETTABLEKS                       R16 R5 K7 ["Instances"]
       68 GETTABLE                         R15 R16 R9
       69 GETTABLEKS                       R14 R15 K10 ["Tracks"]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K10 ["Tracks"]
       74 GETTABLEKS                       R12 R5 K7 ["Instances"]
       76 GETTABLE                         R11 R12 R9
       77 GETIMPORT                        R12 K9 [pairs]
       79 MOVE                             R13 R10
       80 CALL                             R12 1 3
       81 FORGPREP_NEXT                    R12
       82 GETTABLEKS                       R17 R11 K10 ["Tracks"]
       84 GETUPVAL                         R18 1
       85 GETTABLEKS                       R20 R11 K10 ["Tracks"]
       87 GETTABLE                         R19 R20 R15
       88 CALL                             R18 1 1
       89 SETTABLE                         R18 R17 R15
       90 GETTABLEKS                       R18 R11 K10 ["Tracks"]
       92 GETTABLE                         R17 R18 R15
       93 LOADB                            R18 0
       94 LOADB                            R19 0
       95 GETUPVAL                         R21 2
       96 GETTABLEKS                       R20 R21 K11 ["traverse"]
       98 MOVE                             R21 R16
       99 MOVE                             R22 R17
      100 NEWCLOSURE                       R23 P0
      101 CAPTURE                          REF R18
      102 CAPTURE                          UPVAL U3
      103 CAPTURE                          UPVAL U4
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 CAPTURE                          UPVAL U5
      108 CAPTURE                          REF R19
      109 CALL                             R20 3 0
      110 JUMPIFNOT                        R18 ; [+5]
      111 JUMPIF                           R19 ; [+4]
      112 GETTABLEKS                       R20 R11 K10 ["Tracks"]
      114 LOADNIL                          R21
      115 SETTABLE                         R21 R20 R15
      116 CLOSEUPVALS                      R18
      117 FORGLOOP                         R12 2 ; [-36]
      119 FORGLOOP                         R6 2 ; [-78]
      121 GETUPVAL                         R8 6
      122 MOVE                             R9 R5
      123 CALL                             R8 1 -1
      124 NAMECALL                         R6 R0 K12 ["dispatch"]
      126 CALL                             R6 -1 0
      127 GETUPVAL                         R8 7
      128 NEWTABLE                         R9 0 0
      130 CALL                             R8 1 -1
      131 NAMECALL                         R6 R0 K12 ["dispatch"]
      133 CALL                             R6 -1 0
      134 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

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
       29 GETTABLEKS                       R4 R5 K11 ["isEmpty"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["AnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Actions"]
       47 GETTABLEKS                       R6 R7 K14 ["SetSelectedKeyframes"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K15 ["Thunks"]
       56 GETTABLEKS                       R7 R8 K16 ["UpdateAnimationData"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K9 ["Util"]
       65 GETTABLEKS                       R8 R9 K17 ["SelectionUtils"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K18 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R5
       76 RETURN                           R8 1

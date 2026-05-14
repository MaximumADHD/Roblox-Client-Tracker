PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+25]
        4 LOADK                            R5 K0 ["Motor6D"]
        5 NAMECALL                         R3 R1 K1 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+18]
        9 LOADK                            R5 K2 ["Bone"]
       10 NAMECALL                         R3 R1 K1 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+13]
       14 LOADK                            R5 K3 ["Attachment"]
       15 NAMECALL                         R3 R1 K1 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+8]
       19 GETUPVAL                         R3 1
       20 CALL                             R3 0 1
       21 JUMPIFNOT                        R3 ; [+7]
       22 LOADK                            R5 K4 ["AnimationConstraint"]
       23 NAMECALL                         R3 R1 K1 ["IsA"]
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+2]
       27 MOVE                             R2 R1
       28 RETURN                           R2 1
       29 LOADNIL                          R2
       30 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["TypedInstanceSignals"]
        5 GETTABLEKS                       R0 R0 K1 ["properties"]
        7 GETTABLEKS                       R0 R0 K2 ["observeInstance"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K3 ["createComputed"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 GETUPVAL                         R0 5
       21 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["TypedInstanceSignals"]
        5 GETTABLEKS                       R0 R0 K1 ["properties"]
        7 GETTABLEKS                       R0 R0 K2 ["observeCFrame"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R3 0
       11 LOADK                            R4 K3 ["TposeAdjustment"]
       12 CONCAT                           R2 R3 R4
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1
       15 GETUPVAL                         R0 3
       16 RETURN                           R0 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["Name"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NEWTABLE                         R5 0 2
       17 MOVE                             R6 R0
       18 MOVE                             R7 R2
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U4
       30 NEWTABLE                         R6 0 2
       32 MOVE                             R7 R0
       33 MOVE                             R8 R2
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 5
       38 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       40 MOVE                             R6 R3
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R6 R6 K2 ["useSignalState"]
       45 MOVE                             R7 R4
       46 CALL                             R6 1 1
       47 DUPTABLE                         R7 K6 [{"mappedInstance", "adjustmentValue", "isMapped"}]
       48 JUMPIFNOT                        R2 ; [+2]
       49 MOVE                             R8 R5
       50 JUMP                             ; [+1]
       51 LOADNIL                          R8
       52 SETTABLEKS                       R8 R7 K3 ["mappedInstance"]
       54 JUMPIFNOT                        R2 ; [+2]
       55 MOVE                             R8 R6
       56 JUMP                             ; [+1]
       57 LOADNIL                          R8
       58 SETTABLEKS                       R8 R7 K4 ["adjustmentValue"]
       60 LOADB                            R8 0
       61 JUMPIFEQKNIL                     R2 ; [+5]
       63 JUMPIFNOTEQKNIL                  R5 ; [+2]
       65 LOADB                            R8 0 +1
       66 LOADB                            R8 1
       67 SETTABLEKS                       R8 R7 K5 ["isMapped"]
       69 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["AnimationEditor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagAdaptiveAnimationConstraints"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K15 [PROTO_0]
       52 DUPCLOSURE                       R8 K16 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R4
       59 RETURN                           R8 1

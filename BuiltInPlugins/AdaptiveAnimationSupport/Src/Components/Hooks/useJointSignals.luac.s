PROTO_0:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+17]
        4 LOADK                            R5 K0 ["Motor6D"]
        5 NAMECALL                         R3 R1 K1 ["IsA"]
        7 CALL                             R3 2 1
        8 JUMPIF                           R3 ; [+10]
        9 LOADK                            R5 K2 ["Bone"]
       10 NAMECALL                         R3 R1 K1 ["IsA"]
       12 CALL                             R3 2 1
       13 JUMPIF                           R3 ; [+5]
       14 LOADK                            R5 K3 ["Attachment"]
       15 NAMECALL                         R3 R1 K1 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R1
       20 RETURN                           R2 1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+17]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        5 GETTABLEKS                       R1 R2 K1 ["properties"]
        7 GETTABLEKS                       R0 R1 K2 ["observeInstance"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 0
       11 CALL                             R0 2 1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R1 R2 K3 ["createComputed"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1
       19 GETUPVAL                         R0 4
       20 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+13]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["TypedInstanceSignals"]
        5 GETTABLEKS                       R1 R2 K1 ["properties"]
        7 GETTABLEKS                       R0 R1 K2 ["observeCFrame"]
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
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useMemo"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R0
       17 MOVE                             R7 R2
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U3
       29 NEWTABLE                         R6 0 2
       31 MOVE                             R7 R0
       32 MOVE                             R8 R2
       33 SETLIST                          R6 R7 2 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R6 4
       37 GETTABLEKS                       R5 R6 K2 ["useSignalState"]
       39 MOVE                             R6 R3
       40 CALL                             R5 1 1
       41 GETUPVAL                         R7 4
       42 GETTABLEKS                       R6 R7 K2 ["useSignalState"]
       44 MOVE                             R7 R4
       45 CALL                             R6 1 1
       46 DUPTABLE                         R7 K6 [{"mappedInstance", "adjustmentValue", "isMapped"}]
       47 JUMPIFNOT                        R2 ; [+2]
       48 MOVE                             R8 R5
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 SETTABLEKS                       R8 R7 K3 ["mappedInstance"]
       53 JUMPIFNOT                        R2 ; [+2]
       54 MOVE                             R8 R6
       55 JUMP                             ; [+1]
       56 LOADNIL                          R8
       57 SETTABLEKS                       R8 R7 K4 ["adjustmentValue"]
       59 LOADB                            R8 0
       60 JUMPIFEQKNIL                     R2 ; [+5]
       62 JUMPIFNOTEQKNIL                  R5 ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 SETTABLEKS                       R8 R7 K5 ["isMapped"]
       68 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["AnimationEditor"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["SignalsReact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R7 K12 ["Types"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 DUPCLOSURE                       R7 K14 [PROTO_4]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1

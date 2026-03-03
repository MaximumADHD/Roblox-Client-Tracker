PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 LOADK                            R9 K1 ["HumanoidRigDescription"]
        8 NAMECALL                         R7 R6 K2 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+3]
       12 MOVE                             R0 R6
       13 LOADK                            R1 K3 ["body"]
       14 JUMP                             ; [+18]
       15 GETUPVAL                         R7 1
       16 CALL                             R7 0 1
       17 JUMPIFNOT                        R7 ; [+13]
       18 LOADK                            R9 K4 ["DigitsRigDescription"]
       19 NAMECALL                         R7 R6 K2 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+8]
       23 MOVE                             R0 R6
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R7 R8 K5 ["getDescriptionKind"]
       27 MOVE                             R8 R6
       28 CALL                             R7 1 1
       29 MOVE                             R1 R7
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R2 2 ; [-25]
       33 GETUPVAL                         R2 3
       34 MOVE                             R3 R0
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 4
       37 MOVE                             R3 R1
       38 CALL                             R2 1 0
       39 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["SelectionChanged"]
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K1 ["Connect"]
       12 CALL                             R1 2 1
       13 MOVE                             R2 R0
       14 CALL                             R2 0 0
       15 LOADNIL                          R2
       16 GETUPVAL                         R3 5
       17 JUMPIFNOT                        R3 ; [+10]
       18 GETUPVAL                         R4 5
       19 GETTABLEKS                       R3 R4 K2 ["Destroying"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 NAMECALL                         R3 R3 K1 ["Connect"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 NEWCLOSURE                       R3 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          REF R2
       31 CLOSEUPVALS                      R2
       32 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R0
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 0
       26 MOVE                             R4 R0
       27 MOVE                             R5 R2
       28 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AdaptiveAnimationSupport"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R5 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R1 K12 ["Src"]
       31 GETTABLEKS                       R6 R7 K14 ["Utils"]
       33 GETTABLEKS                       R5 R6 K15 ["DigitsRigUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R8 K16 ["Flags"]
       42 GETTABLEKS                       R6 R7 K17 ["getFFlagAdaptiveAnimationHandRig"]
       44 CALL                             R5 1 1
       45 DUPCLOSURE                       R6 K18 [PROTO_4]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R4
       50 RETURN                           R6 1

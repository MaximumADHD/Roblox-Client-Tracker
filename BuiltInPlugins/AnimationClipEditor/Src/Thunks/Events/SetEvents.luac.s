PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R3 R3 K3 ["EditorMode"]
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 0
       12 MOVE                             R5 R2
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 1
       15 SETTABLEKS                       R5 R4 K4 ["Events"]
       17 GETUPVAL                         R7 2
       18 MOVE                             R8 R4
       19 CALL                             R7 1 -1
       20 NAMECALL                         R5 R0 K5 ["dispatch"]
       22 CALL                             R5 -1 0
       23 GETTABLEKS                       R5 R2 K4 ["Events"]
       25 GETTABLEKS                       R5 R5 K6 ["Data"]
       27 GETIMPORT                        R6 K8 [pairs]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K6 ["Data"]
       32 CALL                             R6 1 3
       33 FORGPREP_NEXT                    R6
       34 GETIMPORT                        R11 K8 [pairs]
       36 MOVE                             R12 R10
       37 CALL                             R11 1 3
       38 FORGPREP_NEXT                    R11
       39 GETTABLE                         R16 R5 R9
       40 JUMPIFEQKNIL                     R16 ; [+5]
       42 GETTABLE                         R17 R5 R9
       43 GETTABLE                         R16 R17 R14
       44 JUMPIFNOTEQKNIL                  R16 ; [+18]
       46 GETUPVAL                         R16 3
       47 LOADK                            R18 K9 ["onAddEvent"]
       48 MOVE                             R19 R14
       49 MOVE                             R20 R15
       50 MOVE                             R21 R3
       51 GETTABLEKS                       R23 R4 K10 ["Metadata"]
       53 JUMPIFNOT                        R23 ; [+5]
       54 GETTABLEKS                       R22 R4 K10 ["Metadata"]
       56 GETTABLEKS                       R22 R22 K11 ["Guid"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R22
       60 NAMECALL                         R16 R16 K12 ["report"]
       62 CALL                             R16 6 0
       63 FORGLOOP                         R11 2 ; [-25]
       65 FORGLOOP                         R6 2 ; [-32]
       67 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

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
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Thunks"]
       22 GETTABLEKS                       R3 R3 K10 ["UpdateAnimationData"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

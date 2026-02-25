PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 NAMECALL                         R4 R0 K0 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Status"]
       10 GETTABLEKS                       R2 R3 K3 ["SelectedEvents"]
       12 JUMPIF                           R1 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R1
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K4 ["Events"]
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 RETURN                           R0 0
       22 GETIMPORT                        R5 K6 [pairs]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 3
       26 FORGPREP_NEXT                    R5
       27 GETUPVAL                         R10 1
       28 JUMPIFNOT                        R10 ; [+19]
       29 GETIMPORT                        R10 K8 [next]
       31 GETUPVAL                         R11 1
       32 CALL                             R10 1 1
       33 JUMPIFNOT                        R10 ; [+14]
       34 GETUPVAL                         R10 1
       35 LOADNIL                          R11
       36 LOADNIL                          R12
       37 FORGPREP                         R10
       38 GETUPVAL                         R16 2
       39 GETTABLEKS                       R15 R16 K9 ["removeEvent"]
       41 MOVE                             R16 R4
       42 MOVE                             R17 R8
       43 MOVE                             R18 R13
       44 CALL                             R15 3 0
       45 FORGLOOP                         R10 1 ; [-8]
       47 JUMP                             ; [+6]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K10 ["deleteEvents"]
       51 MOVE                             R11 R4
       52 MOVE                             R12 R8
       53 CALL                             R10 2 0
       54 FORGLOOP                         R5 2 ; [-28]
       56 GETUPVAL                         R7 3
       57 NEWTABLE                         R8 0 0
       59 CALL                             R7 1 -1
       60 NAMECALL                         R5 R0 K11 ["dispatch"]
       62 CALL                             R5 -1 0
       63 GETUPVAL                         R7 4
       64 MOVE                             R8 R3
       65 CALL                             R7 1 -1
       66 NAMECALL                         R5 R0 K11 ["dispatch"]
       68 CALL                             R5 -1 0
       69 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

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
       22 GETTABLEKS                       R3 R4 K9 ["AnimationData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K10 ["Actions"]
       31 GETTABLEKS                       R4 R5 K11 ["SetSelectedEvents"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K12 ["Thunks"]
       40 GETTABLEKS                       R5 R6 K13 ["UpdateAnimationData"]
       42 CALL                             R4 1 1
       43 DUPCLOSURE                       R5 K14 [PROTO_1]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 RETURN                           R5 1

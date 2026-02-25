PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 NAMECALL                         R4 R0 K0 ["getState"]
        7 CALL                             R4 1 1
        8 GETTABLEKS                       R3 R4 K2 ["Status"]
       10 GETTABLEKS                       R2 R3 K3 ["Clipboard"]
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R1
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K4 ["Events"]
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K5 ["Dictionary"]
       26 GETTABLEKS                       R5 R6 K6 ["keys"]
       28 MOVE                             R6 R2
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K9 [table.sort]
       32 MOVE                             R7 R5
       33 CALL                             R6 1 0
       34 GETTABLEN                        R6 R5 1
       35 GETUPVAL                         R7 2
       36 MOVE                             R8 R2
       37 CALL                             R7 1 1
       38 JUMPIF                           R7 ; [+37]
       39 GETIMPORT                        R7 K11 [pairs]
       41 MOVE                             R8 R2
       42 CALL                             R7 1 3
       43 FORGPREP_NEXT                    R7
       44 GETUPVAL                         R13 3
       45 SUB                              R14 R10 R6
       46 ADD                              R12 R13 R14
       47 GETUPVAL                         R14 4
       48 GETTABLEKS                       R13 R14 K12 ["deleteEvents"]
       50 MOVE                             R14 R4
       51 MOVE                             R15 R12
       52 CALL                             R13 2 0
       53 GETIMPORT                        R13 K11 [pairs]
       55 MOVE                             R14 R11
       56 CALL                             R13 1 3
       57 FORGPREP_NEXT                    R13
       58 GETUPVAL                         R19 4
       59 GETTABLEKS                       R18 R19 K13 ["addEvent"]
       61 MOVE                             R19 R4
       62 MOVE                             R20 R12
       63 MOVE                             R21 R16
       64 MOVE                             R22 R17
       65 CALL                             R18 4 0
       66 FORGLOOP                         R13 2 ; [-9]
       68 FORGLOOP                         R7 2 ; [-25]
       70 GETUPVAL                         R9 5
       71 MOVE                             R10 R3
       72 CALL                             R9 1 -1
       73 NAMECALL                         R7 R0 K14 ["dispatch"]
       75 CALL                             R7 -1 0
       76 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R4 K10 ["isEmpty"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["deepCopy"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["AnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R7 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_1]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 RETURN                           R6 1

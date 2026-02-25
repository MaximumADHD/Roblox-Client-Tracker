PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["animation"]
        3 NAMECALL                         R2 R2 K1 ["GetTags"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R5 R1 K0 ["animation"]
        9 NAMECALL                         R3 R3 K1 ["GetTags"]
       11 CALL                             R3 2 1
       12 GETTABLEN                        R4 R2 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETTABLEN                        R5 R2 1
       15 FASTCALL1                        TONUMBER R5 ; [+2]
       16 GETIMPORT                        R4 K3 [tonumber]
       18 CALL                             R4 1 1
       19 GETTABLEN                        R5 R3 1
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEN                        R6 R3 1
       22 FASTCALL1                        TONUMBER R6 ; [+2]
       23 GETIMPORT                        R5 K3 [tonumber]
       25 CALL                             R5 1 1
       26 JUMPIF                           R4 ; [+14]
       27 JUMPIF                           R5 ; [+13]
       28 GETTABLEKS                       R8 R0 K0 ["animation"]
       30 GETTABLEKS                       R7 R8 K4 ["Name"]
       32 GETTABLEKS                       R9 R1 K0 ["animation"]
       34 GETTABLEKS                       R8 R9 K4 ["Name"]
       36 JUMPIFLT                         R7 R8 ; [+2]
       38 LOADB                            R6 0 +1
       39 LOADB                            R6 1
       40 RETURN                           R6 1
       41 JUMPIFNOT                        R4 ; [+3]
       42 JUMPIF                           R5 ; [+2]
       43 LOADB                            R6 1
       44 RETURN                           R6 1
       45 JUMPIFNOT                        R5 ; [+3]
       46 JUMPIF                           R4 ; [+2]
       47 LOADB                            R6 0
       48 RETURN                           R6 1
       49 JUMPIFLT                         R5 R4 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getAnimSaves"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+22]
        9 GETIMPORT                        R2 K3 [table.sort]
       11 MOVE                             R3 R1
       12 DUPCLOSURE                       R4 K4 [PROTO_0]
       13 CAPTURE                          UPVAL U2
       14 CALL                             R2 2 0
       15 GETUPVAL                         R4 3
       16 GETTABLEN                        R7 R1 1
       17 GETTABLEKS                       R6 R7 K5 ["animation"]
       19 GETTABLEKS                       R5 R6 K6 ["Name"]
       21 GETTABLEN                        R7 R1 1
       22 GETTABLEKS                       R6 R7 K7 ["isLegacyAnimSaves"]
       24 GETUPVAL                         R7 4
       25 CALL                             R4 3 -1
       26 NAMECALL                         R2 R0 K8 ["dispatch"]
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 5
       31 GETUPVAL                         R5 6
       32 LOADK                            R7 K9 ["Title"]
       33 LOADK                            R8 K10 ["DefaultAnimationName"]
       34 NAMECALL                         R5 R5 K11 ["getText"]
       36 CALL                             R5 3 1
       37 GETUPVAL                         R6 4
       38 CALL                             R4 2 -1
       39 NAMECALL                         R2 R0 K8 ["dispatch"]
       41 CALL                             R2 -1 0
       42 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R2
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R3 R1 K8 ["Src"]
       15 GETTABLEKS                       R2 R3 K9 ["Thunks"]
       17 GETIMPORT                        R3 K11 [require]
       19 GETTABLEKS                       R4 R2 K12 ["CreateNewAnimation"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K11 [require]
       24 GETTABLEKS                       R6 R2 K13 ["Exporting"]
       26 GETTABLEKS                       R5 R6 K14 ["LoadAnimation"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R6 R1 K8 ["Src"]
       31 GETTABLEKS                       R5 R6 K15 ["Util"]
       33 GETIMPORT                        R6 K11 [require]
       35 GETTABLEKS                       R7 R5 K16 ["RigUtils"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K17 [PROTO_2]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1

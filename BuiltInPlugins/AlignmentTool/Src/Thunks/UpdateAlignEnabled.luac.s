PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["X"]
        2 JUMPIF                           R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K1 ["Y"]
        5 JUMPIF                           R1 ; [+2]
        6 GETTABLEKS                       R1 R0 K2 ["Z"]
        8 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R1 0
        6 JUMPIFEQ                         R0 R1 ; [+3]
        8 LOADB                            R1 1
        9 RETURN                           R1 1
       10 LOADK                            R3 K2 ["Model"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 LOADB                            R1 0
       18 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["alignableObjects"]
        5 GETTABLEKS                       R3 R1 K2 ["enabledAxes"]
        7 LOADB                            R4 0
        8 LENGTH                           R5 R2
        9 LOADN                            R6 1
       10 JUMPIFNOTLT                      R6 R5 ; [+9]
       12 GETTABLEKS                       R4 R3 K3 ["X"]
       14 JUMPIF                           R4 ; [+5]
       15 GETTABLEKS                       R4 R3 K4 ["Y"]
       17 JUMPIF                           R4 ; [+2]
       18 GETTABLEKS                       R4 R3 K5 ["Z"]
       20 LOADNIL                          R5
       21 JUMPIFNOT                        R4 ; [+44]
       22 GETTABLEKS                       R6 R1 K6 ["relativeTo"]
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K7 ["Active"]
       27 JUMPIFNOTEQ                      R6 R7 ; [+38]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K8 ["ActiveInstance"]
       32 LOADK                            R10 K9 ["BasePart"]
       33 NAMECALL                         R8 R6 K10 ["IsA"]
       35 CALL                             R8 2 1
       36 JUMPIFNOT                        R8 ; [+5]
       37 GETUPVAL                         R8 2
       38 JUMPIFEQ                         R6 R8 ; [+3]
       40 LOADB                            R7 1
       41 JUMP                             ; [+8]
       42 LOADK                            R10 K11 ["Model"]
       43 NAMECALL                         R8 R6 K10 ["IsA"]
       45 CALL                             R8 2 1
       46 JUMPIFNOT                        R8 ; [+2]
       47 LOADB                            R7 1
       48 JUMP                             ; [+1]
       49 LOADB                            R7 0
       50 JUMPIF                           R7 ; [+15]
       51 LOADB                            R4 0
       52 DUPTABLE                         R7 K14 [{"errorCode", "formatParameters"}]
       53 GETUPVAL                         R8 3
       54 GETTABLEKS                       R8 R8 K15 ["InvalidActiveObject"]
       56 SETTABLEKS                       R8 R7 K12 ["errorCode"]
       58 DUPTABLE                         R8 K17 [{"name"}]
       59 GETTABLEKS                       R9 R6 K18 ["Name"]
       61 SETTABLEKS                       R9 R8 K16 ["name"]
       63 SETTABLEKS                       R8 R7 K13 ["formatParameters"]
       65 MOVE                             R5 R7
       66 GETUPVAL                         R8 4
       67 MOVE                             R9 R4
       68 MOVE                             R10 R5
       69 CALL                             R8 2 -1
       70 NAMECALL                         R6 R0 K19 ["dispatch"]
       72 CALL                             R6 -1 0
       73 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Terrain"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETTABLEKS                       R2 R2 K7 ["Parent"]
       19 GETTABLEKS                       R2 R2 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R4 R2 K10 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Actions"]
       27 GETTABLEKS                       R4 R4 K12 ["SetAlignEnabled"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K9 [require]
       32 GETTABLEKS                       R5 R2 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K13 ["Utility"]
       36 GETTABLEKS                       R5 R5 K14 ["AlignToolError"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K9 [require]
       41 GETTABLEKS                       R6 R2 K10 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Utility"]
       45 GETTABLEKS                       R6 R6 K15 ["RelativeTo"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_0]
       49 DUPCLOSURE                       R7 K17 [PROTO_3]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 RETURN                           R7 1

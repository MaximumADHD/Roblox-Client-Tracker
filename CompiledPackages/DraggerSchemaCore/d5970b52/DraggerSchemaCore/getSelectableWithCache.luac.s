PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R3
        2 RETURN                           R3 1
        3 LOADK                            R5 K0 ["Attachment"]
        4 NAMECALL                         R3 R0 K1 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+15]
        8 LOADK                            R5 K2 ["Constraint"]
        9 NAMECALL                         R3 R0 K1 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+10]
       13 LOADK                            R5 K3 ["WeldConstraint"]
       14 NAMECALL                         R3 R0 K1 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIF                           R3 ; [+5]
       18 LOADK                            R5 K4 ["NoCollisionConstraint"]
       19 NAMECALL                         R3 R0 K1 ["IsA"]
       21 CALL                             R3 2 1
       22 JUMPIFNOT                        R3 ; [+1]
       23 RETURN                           R0 1
       24 GETTABLEKS                       R3 R0 K5 ["Parent"]
       26 GETTABLE                         R4 R2 R3
       27 JUMPIFNOT                        R4 ; [+1]
       28 RETURN                           R4 1
       29 LOADK                            R7 K6 ["BasePart"]
       30 NAMECALL                         R5 R0 K1 ["IsA"]
       32 CALL                             R5 2 1
       33 JUMPIFNOT                        R5 ; [+6]
       34 GETTABLEKS                       R5 R0 K7 ["Locked"]
       36 JUMPIFNOT                        R5 ; [+15]
       37 LOADNIL                          R5
       38 RETURN                           R5 1
       39 JUMP                             ; [+12]
       40 LOADK                            R7 K8 ["Model"]
       41 NAMECALL                         R5 R0 K1 ["IsA"]
       43 CALL                             R5 2 1
       44 JUMPIF                           R5 ; [+7]
       45 LOADK                            R7 K9 ["Tool"]
       46 NAMECALL                         R5 R0 K1 ["IsA"]
       48 CALL                             R5 2 1
       49 JUMPIF                           R5 ; [+2]
       50 LOADNIL                          R5
       51 RETURN                           R5 1
       52 JUMPIFNOT                        R1 ; [+1]
       53 RETURN                           R0 1
       54 MOVE                             R5 R0
       55 MOVE                             R6 R3
       56 JUMPIFNOT                        R6 ; [+17]
       57 LOADK                            R9 K8 ["Model"]
       58 NAMECALL                         R7 R6 K1 ["IsA"]
       60 CALL                             R7 2 1
       61 JUMPIF                           R7 ; [+5]
       62 LOADK                            R9 K9 ["Tool"]
       63 NAMECALL                         R7 R6 K1 ["IsA"]
       65 CALL                             R7 2 1
       66 JUMPIFNOT                        R7 ; [+4]
       67 GETUPVAL                         R7 0
       68 JUMPIFEQ                         R6 R7 ; [+2]
       70 MOVE                             R5 R6
       71 GETTABLEKS                       R6 R6 K5 ["Parent"]
       73 JUMPBACK                         ; [-18]
       74 JUMPIFEQ                         R5 R0 ; [+2]
       76 SETTABLE                         R5 R2 R3
       77 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1

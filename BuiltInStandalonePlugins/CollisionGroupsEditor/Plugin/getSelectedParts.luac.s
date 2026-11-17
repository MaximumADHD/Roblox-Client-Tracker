PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETIMPORT                        R2 K3 [game]
        6 LOADK                            R4 K4 ["Selection"]
        7 NAMECALL                         R2 R2 K5 ["GetService"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K6 ["Get"]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 3
       14 FORGPREP_NEXT                    R1
       15 GETUPVAL                         R7 0
       16 MOVE                             R8 R5
       17 FASTPCALL                        pcall 2 ; [+2]
       18 GETIMPORT                        R6 K8 [pcall]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+33]
       22 LOADK                            R8 K9 ["BasePart"]
       23 NAMECALL                         R6 R5 K10 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIFNOT                        R6 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       29 MOVE                             R7 R0
       30 MOVE                             R8 R5
       31 GETIMPORT                        R6 K13 [table.insert]
       33 CALL                             R6 2 0
       34 GETIMPORT                        R6 K1 [pairs]
       36 NAMECALL                         R7 R5 K14 ["GetDescendants"]
       38 CALL                             R7 1 -1
       39 CALL                             R6 -1 3
       40 FORGPREP_NEXT                    R6
       41 LOADK                            R13 K9 ["BasePart"]
       42 NAMECALL                         R11 R10 K10 ["IsA"]
       44 CALL                             R11 2 1
       45 JUMPIFNOT                        R11 ; [+7]
       46 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       48 MOVE                             R12 R0
       49 MOVE                             R13 R10
       50 GETIMPORT                        R11 K13 [table.insert]
       52 CALL                             R11 2 0
       53 FORGLOOP                         R6 2 ; [-13]
       55 FORGLOOP                         R1 2 ; [-41]
       57 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

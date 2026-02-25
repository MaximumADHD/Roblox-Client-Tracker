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
       15 GETIMPORT                        R6 K8 [pcall]
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R5
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+33]
       21 LOADK                            R8 K9 ["BasePart"]
       22 NAMECALL                         R6 R5 K10 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+7]
       26 FASTCALL2                        TABLE_INSERT R0 R5 ; [+5]
       28 MOVE                             R7 R0
       29 MOVE                             R8 R5
       30 GETIMPORT                        R6 K13 [table.insert]
       32 CALL                             R6 2 0
       33 GETIMPORT                        R6 K1 [pairs]
       35 NAMECALL                         R7 R5 K14 ["GetDescendants"]
       37 CALL                             R7 1 -1
       38 CALL                             R6 -1 3
       39 FORGPREP_NEXT                    R6
       40 LOADK                            R13 K9 ["BasePart"]
       41 NAMECALL                         R11 R10 K10 ["IsA"]
       43 CALL                             R11 2 1
       44 JUMPIFNOT                        R11 ; [+7]
       45 FASTCALL2                        TABLE_INSERT R0 R10 ; [+5]
       47 MOVE                             R12 R0
       48 MOVE                             R13 R10
       49 GETIMPORT                        R11 K13 [table.insert]
       51 CALL                             R11 2 0
       52 FORGLOOP                         R6 2 ; [-13]
       54 FORGLOOP                         R1 2 ; [-40]
       56 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1

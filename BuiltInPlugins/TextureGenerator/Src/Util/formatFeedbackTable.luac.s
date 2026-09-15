PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K2 ["\"%*\": \"%*\""]
        8 MOVE                             R11 R5
        9 FASTCALL1                        TOSTRING R6 ; [+3]
       10 MOVE                             R13 R6
       11 GETIMPORT                        R12 K4 [tostring]
       13 CALL                             R12 1 1
       14 NAMECALL                         R9 R9 K5 ["format"]
       16 CALL                             R9 3 1
       17 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       19 MOVE                             R8 R1
       20 GETIMPORT                        R7 K8 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-17]
       25 LOADK                            R2 K9 ["{"]
       26 GETIMPORT                        R5 K11 [table.concat]
       28 MOVE                             R6 R1
       29 LOADK                            R7 K12 [","]
       30 CALL                             R5 2 1
       31 MOVE                             R3 R5
       32 LOADK                            R4 K13 ["}"]
       33 CONCAT                           R1 R2 R4
       34 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1

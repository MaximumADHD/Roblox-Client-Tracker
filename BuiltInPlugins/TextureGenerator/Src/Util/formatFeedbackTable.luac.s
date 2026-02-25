PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R10 K2 ["\"%*\": \"%*\""]
        8 MOVE                             R12 R5
        9 FASTCALL1                        TOSTRING R6 ; [+3]
       10 MOVE                             R14 R6
       11 GETIMPORT                        R13 K4 [tostring]
       13 CALL                             R13 1 1
       14 NAMECALL                         R10 R10 K5 ["format"]
       16 CALL                             R10 3 1
       17 MOVE                             R9 R10
       18 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K8 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-18]
       26 LOADK                            R2 K9 ["{"]
       27 GETIMPORT                        R5 K11 [table.concat]
       29 MOVE                             R6 R1
       30 LOADK                            R7 K12 [","]
       31 CALL                             R5 2 1
       32 MOVE                             R3 R5
       33 LOADK                            R4 K13 ["}"]
       34 CONCAT                           R1 R2 R4
       35 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1

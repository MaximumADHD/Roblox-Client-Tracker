PROTO_0:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETIMPORT                        R3 K4 [Instance.new]
        4 MOVE                             R4 R1
        5 CALL                             R2 2 2
        6 LOADK                            R7 K5 ["%* does not exist. Did you make a typo?"]
        7 MOVE                             R9 R1
        8 NAMECALL                         R7 R7 K6 ["format"]
       10 CALL                             R7 2 1
       11 MOVE                             R6 R7
       12 FASTCALL2                        ASSERT R2 R6 ; [+4]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R4 K8 [assert]
       17 CALL                             R4 2 0
       18 NAMECALL                         R4 R0 K9 ["GetDescendants"]
       20 CALL                             R4 1 1
       21 FASTCALL2                        TABLE_INSERT R4 R0 ; [+5]
       23 MOVE                             R6 R4
       24 MOVE                             R7 R0
       25 GETIMPORT                        R5 K12 [table.insert]
       27 CALL                             R5 2 0
       28 NEWTABLE                         R5 0 0
       30 MOVE                             R6 R4
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 MOVE                             R13 R1
       35 NAMECALL                         R11 R10 K13 ["IsA"]
       37 CALL                             R11 2 1
       38 JUMPIFNOT                        R11 ; [+7]
       39 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       41 MOVE                             R12 R5
       42 MOVE                             R13 R10
       43 GETIMPORT                        R11 K12 [table.insert]
       45 CALL                             R11 2 0
       46 FORGLOOP                         R6 2 ; [-13]
       48 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1

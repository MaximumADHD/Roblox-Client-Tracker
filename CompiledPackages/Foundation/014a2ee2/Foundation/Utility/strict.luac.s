PROTO_0:
        0 LOADK                            R2 K0 ["%q (%s) is not a valid member of %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K4 [typeof]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 0
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K7 [error]
       17 MOVE                             R4 R2
       18 LOADN                            R5 2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["%q (%s) is not a valid member of %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R6 R1
        8 GETIMPORT                        R5 K4 [typeof]
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 0
       12 NAMECALL                         R2 R2 K5 ["format"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K7 [error]
       17 MOVE                             R4 R2
       18 LOADN                            R5 2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+5]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [tostring]
        6 CALL                             R2 1 1
        7 DUPTABLE                         R5 K4 [{"__index", "__newindex"}]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R2
       10 SETTABLEKS                       R6 R5 K2 ["__index"]
       12 NEWCLOSURE                       R6 P1
       13 CAPTURE                          VAL R2
       14 SETTABLEKS                       R6 R5 K3 ["__newindex"]
       16 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K6 [setmetatable]
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1

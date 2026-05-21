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
        0 LOADK                            R3 K0 ["%q (%s) is not a valid member of %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R6 R1
        3 GETIMPORT                        R5 K2 [tostring]
        5 CALL                             R5 1 1
        6 FASTCALL1                        TYPEOF R1 ; [+3]
        7 MOVE                             R7 R1
        8 GETIMPORT                        R6 K4 [typeof]
       10 CALL                             R6 1 1
       11 GETUPVAL                         R7 0
       12 NAMECALL                         R3 R3 K5 ["format"]
       14 CALL                             R3 4 1
       15 GETIMPORT                        R4 K7 [error]
       17 MOVE                             R5 R3
       18 LOADN                            R6 2
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+5]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [tostring]
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 DUPTABLE                         R4 K4 [{"__index", "__newindex"}]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          REF R1
       11 SETTABLEKS                       R5 R4 K2 ["__index"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          REF R1
       15 SETTABLEKS                       R5 R4 K3 ["__newindex"]
       17 FASTCALL2                        SETMETATABLE R0 R4 ; [+4]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R2 K6 [setmetatable]
       22 CALL                             R2 2 1
       23 CLOSEUPVALS                      R1
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_2]
        2 RETURN                           R0 1

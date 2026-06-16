PROTO_0:
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

PROTO_1:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 DUPTABLE                         R4 K4 [{"__newindex", "__metatable"}]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R5 R4 K2 ["__newindex"]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K3 ["__metatable"]
       13 FASTCALL2                        SETMETATABLE R0 R4 ; [+4]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K6 [setmetatable]
       18 CALL                             R2 2 1
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_1]
       13 RETURN                           R2 1

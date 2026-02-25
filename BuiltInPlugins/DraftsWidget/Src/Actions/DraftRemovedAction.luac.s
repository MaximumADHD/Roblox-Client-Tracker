PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R5 K3 ["Expected draft to be Instance. Got '"]
       10 MOVE                             R6 R1
       11 LOADK                            R7 K4 ["'"]
       12 CONCAT                           R4 R5 R7
       13 FASTCALL2                        ASSERT R3 R4 ; [+3]
       15 GETIMPORT                        R2 K6 [assert]
       17 CALL                             R2 2 0
       18 LOADK                            R5 K7 ["LuaSourceContainer"]
       19 NAMECALL                         R3 R0 K8 ["IsA"]
       21 CALL                             R3 2 1
       22 LOADK                            R5 K9 ["Expected draft to be a LuaSourceContainer. Got '"]
       23 GETTABLEKS                       R6 R0 K10 ["ClassName"]
       25 LOADK                            R7 K4 ["'"]
       26 CONCAT                           R4 R5 R7
       27 FASTCALL2                        ASSERT R3 R4 ; [+3]
       29 GETIMPORT                        R2 K6 [assert]
       31 CALL                             R2 2 0
       32 DUPTABLE                         R2 K12 [{"Draft"}]
       33 SETTABLEKS                       R0 R2 K11 ["Draft"]
       35 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R2 R3 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

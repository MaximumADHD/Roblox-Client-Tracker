PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["No showDialog function was provided."]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K7 [{"showDialog"}]
       16 SETTABLEKS                       R0 R1 K6 ["showDialog"]
       18 GETUPVAL                         R4 0
       19 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       21 MOVE                             R3 R1
       22 GETIMPORT                        R2 K9 [setmetatable]
       24 CALL                             R2 2 0
       25 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       20 LOADK                            R5 K9 ["DialogProvider"]
       21 NAMECALL                         R3 R2 K10 ["extend"]
       23 CALL                             R3 2 1
       24 DUPCLOSURE                       R4 K11 [PROTO_0]
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K12 ["new"]
       28 RETURN                           R3 1

PROTO_0:
        0 JUMPIFNOT                        R0 ; [+15]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       12 LOADK                            R3 K3 ["Expected a table of props to pass to a RobloxAPI instance"]
       13 GETIMPORT                        R1 K5 [assert]
       15 CALL                             R1 2 0
       16 DUPTABLE                         R1 K7 [{"api"}]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K8 ["new"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K6 ["api"]
       24 GETUPVAL                         R4 1
       25 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K10 [setmetatable]
       30 CALL                             R2 2 0
       31 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["api"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K9 ["RobloxAPI"]
       22 CALL                             R2 1 1
       23 LOADK                            R5 K10 ["API"]
       24 NAMECALL                         R3 R1 K11 ["extend"]
       26 CALL                             R3 2 1
       27 DUPCLOSURE                       R4 K12 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R4 R3 K13 ["new"]
       32 DUPCLOSURE                       R4 K14 [PROTO_1]
       33 SETTABLEKS                       R4 R3 K15 ["get"]
       35 RETURN                           R3 1

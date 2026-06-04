PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+10]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["%* is not supported in the PropertyInfo.fromType, please use the custom info function"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 DUPTABLE                         R2 K6 [{"type", "readonly"}]
       14 SETTABLEKS                       R0 R2 K4 ["type"]
       16 SETTABLEKS                       R1 R2 K5 ["readonly"]
       18 RETURN                           R2 1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_1]
       13 RETURN                           R2 1

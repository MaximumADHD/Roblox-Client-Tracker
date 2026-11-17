PROTO_0:
        0 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K2 [{"fromResponse", "toRequest"}]
        1 DUPCLOSURE                       R1 K3 [PROTO_0]
        2 SETTABLEKS                       R1 R0 K0 ["fromResponse"]
        4 DUPCLOSURE                       R1 K4 [PROTO_1]
        5 SETTABLEKS                       R1 R0 K1 ["toRequest"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.freeze]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 LOADK                            R1 K2 ["@self/Models"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K1 [require]
        7 LOADK                            R2 K3 ["@self/Multipart"]
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K1 [require]
       11 LOADK                            R3 K4 ["@self/RequestBuilder"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K1 [require]
       15 LOADK                            R4 K5 ["@self/Types"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K1 [require]
       19 LOADK                            R5 K6 ["@self/deepClone"]
       20 CALL                             R4 1 1
       21 DUPCLOSURE                       R5 K7 [PROTO_2]
       22 DUPCLOSURE                       R6 K8 [PROTO_3]
       23 GETIMPORT                        R7 K11 [table.freeze]
       25 DUPTABLE                         R8 K20 [{"HTTP_METHOD", "ERROR_KIND", "buildRequest", "Models", "formFile", "deepClone", "makeIdentity", "definePathMetadata"}]
       26 GETTABLEKS                       R9 R3 K12 ["HTTP_METHOD"]
       28 SETTABLEKS                       R9 R8 K12 ["HTTP_METHOD"]
       30 GETTABLEKS                       R9 R3 K13 ["ERROR_KIND"]
       32 SETTABLEKS                       R9 R8 K13 ["ERROR_KIND"]
       34 GETTABLEKS                       R9 R2 K21 ["new"]
       36 SETTABLEKS                       R9 R8 K14 ["buildRequest"]
       38 SETTABLEKS                       R0 R8 K15 ["Models"]
       40 GETTABLEKS                       R9 R1 K16 ["formFile"]
       42 SETTABLEKS                       R9 R8 K16 ["formFile"]
       44 SETTABLEKS                       R4 R8 K17 ["deepClone"]
       46 SETTABLEKS                       R5 R8 K18 ["makeIdentity"]
       48 SETTABLEKS                       R6 R8 K19 ["definePathMetadata"]
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1

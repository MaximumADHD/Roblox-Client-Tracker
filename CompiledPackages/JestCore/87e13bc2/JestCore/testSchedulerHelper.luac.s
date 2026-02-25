PROTO_0:
        0 LOADB                            R3 1
        1 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 1 0
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["JestTestResult"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R0 K7 ["JestTypes"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K8 [PROTO_0]
       25 SETTABLEKS                       R5 R2 K9 ["shouldRunInBand"]
       27 RETURN                           R2 1

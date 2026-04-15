PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["JestGlobals"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["afterEach"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K7 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K8 ["Object"]
       19 GETIMPORT                        R6 K1 [script]
       21 GETTABLEKS                       R5 R6 K9 ["jsHelpers"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R5 K10 ["isCallable"]
       27 CALL                             R6 1 1
       28 NEWTABLE                         R7 0 0
       30 GETIMPORT                        R9 K4 [require]
       32 GETIMPORT                        R11 K1 [script]
       34 GETTABLEKS                       R10 R11 K11 ["pure"]
       36 CALL                             R9 1 1
       37 GETTABLEKS                       R8 R9 K12 ["cleanup"]
       39 GETIMPORT                        R10 K14 [_G]
       41 GETTABLEKS                       R9 R10 K15 ["RTL_SKIP_AUTO_CLEANUP"]
       43 JUMPIF                           R9 ; [+8]
       44 MOVE                             R9 R6
       45 MOVE                             R10 R2
       46 CALL                             R9 1 1
       47 JUMPIFNOT                        R9 ; [+4]
       48 MOVE                             R9 R2
       49 DUPCLOSURE                       R10 K16 [PROTO_0]
       50 CAPTURE                          VAL R8
       51 CALL                             R9 1 0
       52 GETTABLEKS                       R9 R4 K17 ["assign"]
       54 MOVE                             R10 R7
       55 GETIMPORT                        R11 K4 [require]
       57 GETIMPORT                        R13 K1 [script]
       59 GETTABLEKS                       R12 R13 K11 ["pure"]
       61 CALL                             R11 1 -1
       62 CALL                             R9 -1 0
       63 GETIMPORT                        R9 K4 [require]
       65 GETIMPORT                        R11 K1 [script]
       67 GETTABLEKS                       R10 R11 K18 ["types"]
       69 CALL                             R9 1 1
       70 RETURN                           R7 1

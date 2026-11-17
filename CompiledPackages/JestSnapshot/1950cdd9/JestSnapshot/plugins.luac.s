PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADN                            R3 1
        2 FASTCALL3                        TABLE_INSERT R2 R3 R0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R1 K2 [table.insert]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["mockSerializer"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["PrettyFormat"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R1 K6 ["PrettyFormat"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R4 R4 K7 ["plugins"]
       24 NEWTABLE                         R5 0 5
       26 MOVE                             R6 R2
       27 GETTABLEKS                       R7 R4 K8 ["AsymmetricMatcher"]
       29 GETTABLEKS                       R8 R4 K9 ["ReactElement"]
       31 GETTABLEKS                       R9 R4 K10 ["ReactTestComponent"]
       33 GETTABLEKS                       R10 R4 K11 ["RobloxInstance"]
       35 SETLIST                          R5 R6 5 [1]
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 DUPCLOSURE                       R7 K13 [PROTO_1]
       40 CAPTURE                          VAL R5
       41 DUPTABLE                         R8 K16 [{"addSerializer", "getSerializers"}]
       42 SETTABLEKS                       R6 R8 K14 ["addSerializer"]
       44 SETTABLEKS                       R7 R8 K15 ["getSerializers"]
       46 RETURN                           R8 1

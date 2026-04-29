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

PROTO_2:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["from"]
        3 GETUPVAL                         R1 2
        4 CALL                             R0 1 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["mockSerializer"]
       18 CALL                             R4 1 1
       19 GETIMPORT                        R6 K4 [require]
       21 GETTABLEKS                       R7 R1 K8 ["PrettyFormat"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R5 R6 K9 ["plugins"]
       26 NEWTABLE                         R6 0 5
       28 MOVE                             R7 R4
       29 GETTABLEKS                       R8 R5 K10 ["AsymmetricMatcher"]
       31 GETTABLEKS                       R9 R5 K11 ["ReactElement"]
       33 GETTABLEKS                       R10 R5 K12 ["ReactTestComponent"]
       35 GETTABLEKS                       R11 R5 K13 ["RobloxInstance"]
       37 SETLIST                          R6 R7 5 [1]
       39 GETTABLEKS                       R7 R3 K14 ["from"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 NEWCLOSURE                       R8 P0
       44 CAPTURE                          REF R6
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          REF R6
       47 NEWCLOSURE                       R10 P2
       48 CAPTURE                          REF R6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R7
       51 DUPTABLE                         R11 K18 [{"addSerializer", "getSerializers", "resetSerializers"}]
       52 SETTABLEKS                       R8 R11 K15 ["addSerializer"]
       54 SETTABLEKS                       R9 R11 K16 ["getSerializers"]
       56 SETTABLEKS                       R10 R11 K17 ["resetSerializers"]
       58 CLOSEUPVALS                      R6
       59 RETURN                           R11 1

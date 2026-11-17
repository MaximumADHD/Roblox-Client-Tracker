PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["context"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["assign"]
       15 GETTABLEKS                       R3 R1 K2 ["context"]
       17 GETTABLEKS                       R4 R0 K4 ["testEnvironmentOptions"]
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K5 ["global"]
       22 SETTABLEKS                       R2 R2 K5 ["global"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K6 ["new"]
       27 CALL                             R3 0 1
       28 SETTABLEKS                       R3 R1 K7 ["fakeTimers"]
       30 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["context"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fakeTimers"]
        3 JUMPIFEQKNIL                     R0 ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["fakeTimers"]
        8 NAMECALL                         R0 R0 K1 ["dispose"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K2 ["context"]
       16 GETUPVAL                         R0 0
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K0 ["fakeTimers"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K1 ["andThen"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Object"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Promise"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K8 ["JestEnvironment"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["JestFakeTimers"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K4 [require]
       29 GETTABLEKS                       R7 R0 K10 ["JestTypes"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K4 [require]
       34 GETTABLEKS                       R8 R0 K9 ["JestFakeTimers"]
       36 CALL                             R7 1 1
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K11 ["JestMock"]
       41 CALL                             R8 1 1
       42 NEWTABLE                         R9 0 0
       44 SETTABLEKS                       R9 R9 K12 ["__index"]
       46 DUPCLOSURE                       R10 K13 [PROTO_0]
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R10 R9 K14 ["new"]
       52 DUPCLOSURE                       R10 K15 [PROTO_1]
       53 SETTABLEKS                       R10 R9 K16 ["getVmContext"]
       55 DUPCLOSURE                       R10 K17 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R10 R9 K18 ["setup"]
       59 DUPCLOSURE                       R10 K19 [PROTO_4]
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R10 R9 K20 ["teardown"]
       63 RETURN                           R9 1

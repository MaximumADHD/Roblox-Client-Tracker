PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K2 ["context"]
       12 GETTABLEKS                       R2 R0 K3 ["testEnvironmentOptions"]
       14 JUMPIFNOT                        R2 ; [+10]
       15 GETTABLEKS                       R2 R0 K3 ["testEnvironmentOptions"]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 FORGPREP                         R2
       20 GETTABLEKS                       R7 R1 K2 ["context"]
       22 SETTABLE                         R6 R7 R5
       23 FORGLOOP                         R2 2 ; [-4]
       25 GETTABLEKS                       R2 R1 K2 ["context"]
       27 SETTABLEKS                       R2 R1 K4 ["global"]
       29 SETTABLEKS                       R2 R2 K4 ["global"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K5 ["new"]
       34 CALL                             R3 0 1
       35 SETTABLEKS                       R3 R1 K6 ["fakeTimers"]
       37 RETURN                           R1 1

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
        7 GETTABLEKS                       R2 R0 K5 ["Promise"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["JestFakeTimers"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["JestTypes"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["JestMock"]
       24 CALL                             R4 1 1
       25 NEWTABLE                         R5 0 0
       27 SETTABLEKS                       R5 R5 K9 ["__index"]
       29 DUPCLOSURE                       R6 K10 [PROTO_0]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R6 R5 K11 ["new"]
       34 DUPCLOSURE                       R6 K12 [PROTO_1]
       35 SETTABLEKS                       R6 R5 K13 ["getVmContext"]
       37 DUPCLOSURE                       R6 K14 [PROTO_2]
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R6 R5 K15 ["setup"]
       41 DUPCLOSURE                       R6 K16 [PROTO_4]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R6 R5 K17 ["teardown"]
       45 RETURN                           R5 1

PROTO_0:
        0 DUPTABLE                         R5 K3 [{"target", "ctx", "evt"}]
        1 SETTABLEKS                       R1 R5 K0 ["target"]
        3 SETTABLEKS                       R2 R5 K1 ["ctx"]
        5 SETTABLEKS                       R3 R5 K2 ["evt"]
        7 FASTCALL1                        TYPE R4 ; [+3]
        8 MOVE                             R9 R4
        9 GETIMPORT                        R8 K5 [type]
       11 CALL                             R8 1 1
       12 JUMPIFEQKS                       R8 K6 ["table"] ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 LOADK                            R9 K7 ["expected table, argsTable was "]
       17 FASTCALL1                        TYPE R4 ; [+3]
       18 MOVE                             R11 R4
       19 GETIMPORT                        R10 K5 [type]
       21 CALL                             R10 1 1
       22 CONCAT                           R8 R9 R10
       23 FASTCALL2                        ASSERT R7 R8 ; [+3]
       25 GETIMPORT                        R6 K9 [assert]
       27 CALL                             R6 2 0
       28 GETIMPORT                        R6 K11 [pairs]
       30 MOVE                             R7 R4
       31 CALL                             R6 1 3
       32 FORGPREP_NEXT                    R6
       33 GETTABLE                         R11 R5 R9
       34 JUMPIFEQKNIL                     R11 ; [+8]
       36 GETIMPORT                        R11 K13 [warn]
       38 LOADK                            R13 K14 ["overriding base keyword "]
       39 MOVE                             R14 R9
       40 LOADK                            R15 K15 ["in via argsTable in SendEventDeferred()."]
       41 CONCAT                           R12 R13 R15
       42 CALL                             R11 1 0
       43 SETTABLE                         R10 R5 R9
       44 FORGLOOP                         R6 2 ; [-12]
       46 SETTABLEKS                       R5 R0 K16 ["lastEvent"]
       48 GETTABLEKS                       R7 R0 K18 ["eventCount"]
       50 ADDK                             R6 R7 K17 [1]
       51 SETTABLEKS                       R6 R0 K18 ["eventCount"]
       53 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["eventCount"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K3 ["lastEvent"]
       15 DUPCLOSURE                       R1 K4 [PROTO_0]
       16 SETTABLEKS                       R1 R0 K5 ["SendEventDeferred"]
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_1]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 RETURN                           R0 1

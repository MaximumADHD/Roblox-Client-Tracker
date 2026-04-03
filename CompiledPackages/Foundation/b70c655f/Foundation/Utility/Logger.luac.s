PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["level"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["Levels"]
        5 GETTABLEKS                       R4 R5 K2 ["Error"]
        7 JUMPIFEQ                         R3 R4 ; [+10]
        9 GETTABLEKS                       R3 R2 K0 ["level"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K1 ["Levels"]
       14 GETTABLEKS                       R4 R5 K3 ["Warning"]
       16 JUMPIFNOTEQ                      R3 R4 ; [+6]
       18 GETIMPORT                        R3 K5 [warn]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K7 [print]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Logger"]
        3 GETTABLEKS                       R1 R2 K1 ["new"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 DUPTABLE                         R4 K3 [{"prefix"}]
        9 LOADK                            R5 K4 ["[{loggerName} - {level}] - "]
       10 SETTABLEKS                       R5 R4 K2 ["prefix"]
       12 NAMECALL                         R2 R1 K5 ["setContext"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R2 R1 K6 ["addSink"]
       18 CALL                             R2 2 0
       19 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["foundationSink"]
        2 SETTABLEKS                       R1 R2 K1 ["maxLevel"]
        4 GETTABLEKS                       R4 R0 K0 ["foundationSink"]
        6 NAMECALL                         R2 R0 K2 ["addSink"]
        8 CALL                             R2 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Levels"]
        3 GETTABLEKS                       R3 R4 K1 ["Trace"]
        5 NAMECALL                         R1 R0 K2 ["setLogLevel"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Lumberyak"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["Logger"]
       16 GETTABLEKS                       R5 R3 K9 ["Levels"]
       18 GETTABLEKS                       R4 R5 K10 ["Info"]
       20 DUPTABLE                         R5 K13 [{"maxLevel", "log"}]
       21 SETTABLEKS                       R4 R5 K11 ["maxLevel"]
       23 DUPCLOSURE                       R6 K14 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R6 R5 K12 ["log"]
       27 DUPCLOSURE                       R6 K15 [PROTO_1]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 GETTABLEKS                       R9 R2 K8 ["Logger"]
       32 GETTABLEKS                       R8 R9 K16 ["new"]
       34 LOADNIL                          R9
       35 LOADK                            R10 K2 ["Foundation"]
       36 CALL                             R8 2 1
       37 DUPTABLE                         R11 K18 [{"prefix"}]
       38 LOADK                            R12 K19 ["[{loggerName} - {level}] - "]
       39 SETTABLEKS                       R12 R11 K17 ["prefix"]
       41 NAMECALL                         R9 R8 K20 ["setContext"]
       43 CALL                             R9 2 0
       44 MOVE                             R11 R5
       45 NAMECALL                         R9 R8 K21 ["addSink"]
       47 CALL                             R9 2 0
       48 MOVE                             R7 R8
       49 DUPTABLE                         R8 K25 [{"foundationSink", "setLogLevel", "enableTraceLog"}]
       50 SETTABLEKS                       R5 R8 K22 ["foundationSink"]
       52 DUPCLOSURE                       R9 K26 [PROTO_2]
       53 SETTABLEKS                       R9 R8 K23 ["setLogLevel"]
       55 DUPCLOSURE                       R9 K27 [PROTO_3]
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R9 R8 K24 ["enableTraceLog"]
       59 DUPTABLE                         R11 K29 [{"__index"}]
       60 SETTABLEKS                       R7 R11 K28 ["__index"]
       62 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
       64 MOVE                             R10 R8
       65 GETIMPORT                        R9 K31 [setmetatable]
       67 CALL                             R9 2 0
       68 RETURN                           R8 1

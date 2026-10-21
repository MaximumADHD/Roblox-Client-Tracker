PROTO_0:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["_globalConfig"]
       10 SETTABLEKS                       R1 R3 K3 ["_options"]
       12 SETTABLEKS                       R2 R3 K4 ["_ctxt"]
       14 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_options"]
        2 GETTABLEKS                       R3 R3 K1 ["suiteName"]
        4 LOADK                            R4 K2 ["/"]
        5 CONCAT                           R2 R3 R4
        6 LOADNIL                          R3
        7 LOADN                            R4 1
        8 GETIMPORT                        R5 K5 [string.find]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 MOVE                             R8 R4
       13 LOADB                            R9 1
       14 CALL                             R5 4 2
       15 JUMPIFEQKNIL                     R6 ; [+4]
       17 ADDK                             R3 R6 K6 [1]
       18 MOVE                             R4 R3
       19 JUMPBACK                         ; [-12]
       20 JUMPIFNOT                        R3 ; [+8]
       21 FASTCALL2                        STRING_SUB R1 R3 ; [+5]
       23 MOVE                             R6 R1
       24 MOVE                             R7 R3
       25 GETIMPORT                        R5 K8 [string.sub]
       27 CALL                             R5 2 1
       28 JUMP                             ; [+1]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R6 K10 [string.gsub]
       32 MOVE                             R7 R5
       33 LOADK                            R8 K2 ["/"]
       34 LOADK                            R9 K11 ["."]
       35 CALL                             R6 3 1
       36 RETURN                           R6 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K1 [print]
        2 GETIMPORT                        R3 K4 [string.format]
        4 LOADK                            R4 K5 ["Entering test case \"%s\""]
        5 GETTABLEKS                       R7 R1 K6 ["path"]
        7 NAMECALL                         R5 R0 K7 ["_caseName"]
        9 CALL                             R5 2 -1
       10 CALL                             R3 -1 -1
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R2 K0 ["numFailingTests"]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+5]
        4 GETTABLEKS                       R3 R2 K2 ["testExecError"]
        6 JUMPIFEQKNIL                     R3 ; [+5]
        8 GETIMPORT                        R3 K4 [print]
       10 LOADK                            R4 K5 ["Jest 3 test run failed"]
       11 CALL                             R3 1 0
       12 GETIMPORT                        R3 K4 [print]
       14 GETIMPORT                        R4 K8 [string.format]
       16 LOADK                            R5 K9 ["Leaving test case \"%s\""]
       17 GETTABLEKS                       R8 R1 K10 ["path"]
       19 NAMECALL                         R6 R0 K11 ["_caseName"]
       21 CALL                             R6 2 -1
       22 CALL                             R4 -1 -1
       23 CALL                             R3 -1 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_1]
       10 SETTABLEKS                       R1 R0 K4 ["_caseName"]
       12 DUPCLOSURE                       R1 K5 [PROTO_2]
       13 SETTABLEKS                       R1 R0 K6 ["onRunStart"]
       15 DUPCLOSURE                       R1 K7 [PROTO_3]
       16 SETTABLEKS                       R1 R0 K8 ["onRunComplete"]
       18 DUPCLOSURE                       R1 K9 [PROTO_4]
       19 SETTABLEKS                       R1 R0 K10 ["onTestFileStart"]
       21 DUPCLOSURE                       R1 K11 [PROTO_5]
       22 SETTABLEKS                       R1 R0 K12 ["onTestFileResult"]
       24 RETURN                           R0 1

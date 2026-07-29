PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [""]
        3 LOADN                            R3 1
        4 NAMECALL                         R4 R0 K1 ["len"]
        6 CALL                             R4 1 1
        7 JUMPIFNOTLE                      R3 R4 ; [+65]
        9 LOADK                            R6 K2 ["\r"]
       10 MOVE                             R7 R3
       11 NAMECALL                         R4 R0 K3 ["find"]
       13 CALL                             R4 3 1
       14 LOADK                            R7 K4 ["\n"]
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R0 K3 ["find"]
       18 CALL                             R5 3 1
       19 LOADNIL                          R6
       20 JUMPIFNOT                        R4 ; [+10]
       21 JUMPIFNOT                        R5 ; [+9]
       22 FASTCALL2                        MATH_MIN R4 R5 ; [+5]
       24 MOVE                             R8 R4
       25 MOVE                             R9 R5
       26 GETIMPORT                        R7 K7 [math.min]
       28 CALL                             R7 2 1
       29 MOVE                             R6 R7
       30 JUMP                             ; [+5]
       31 JUMPIFNOT                        R4 ; [+2]
       32 MOVE                             R6 R4
       33 JUMP                             ; [+2]
       34 JUMPIFNOT                        R5 ; [+1]
       35 MOVE                             R6 R5
       36 JUMPIFNOTEQKNIL                  R6 ; [+7]
       38 MOVE                             R9 R3
       39 NAMECALL                         R7 R0 K8 ["sub"]
       41 CALL                             R7 2 1
       42 MOVE                             R2 R7
       43 RETURN                           R1 2
       44 MOVE                             R9 R3
       45 SUBK                             R10 R6 K9 [1]
       46 NAMECALL                         R7 R0 K8 ["sub"]
       48 CALL                             R7 3 1
       49 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       51 MOVE                             R9 R1
       52 MOVE                             R10 R7
       53 GETIMPORT                        R8 K12 [table.insert]
       55 CALL                             R8 2 0
       56 ADDK                             R3 R6 K9 [1]
       57 MOVE                             R10 R6
       58 MOVE                             R11 R6
       59 NAMECALL                         R8 R0 K8 ["sub"]
       61 CALL                             R8 3 1
       62 JUMPIFNOTEQKS                    R8 K2 ["\r"] ; [+9]
       64 MOVE                             R10 R3
       65 MOVE                             R11 R3
       66 NAMECALL                         R8 R0 K8 ["sub"]
       68 CALL                             R8 3 1
       69 JUMPIFNOTEQKS                    R8 K4 ["\n"] ; [+2]
       71 ADDK                             R3 R3 K9 [1]
       72 JUMPBACK                         ; [-69]
       73 RETURN                           R1 2

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 LENGTH                           R0 R1
        7 LOADN                            R1 0
        8 JUMPIFNOTLT                      R1 R0 ; [+12]
       10 GETIMPORT                        R0 K2 [table.remove]
       12 GETUPVAL                         R1 1
       13 LOADN                            R2 1
       14 CALL                             R0 2 1
       15 GETIMPORT                        R1 K4 [pcall]
       17 GETUPVAL                         R2 2
       18 MOVE                             R3 R0
       19 CALL                             R1 2 0
       20 JUMPBACK                         ; [-16]
       21 LOADB                            R0 0
       22 SETUPVAL                         R0 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["len"]
        3 CALL                             R1 1 1
        4 LOADN                            R2 0
        5 JUMPIFLT                         R2 R1 ; [+2]
        7 LOADB                            R0 0 +1
        8 LOADB                            R0 1
        9 JUMPIFNOT                        R0 ; [+43]
       10 GETUPVAL                         R1 0
       11 LOADN                            R5 -1
       12 NAMECALL                         R3 R1 K1 ["sub"]
       14 CALL                             R3 2 1
       15 JUMPIFEQKS                       R3 K2 ["\n"] ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 JUMPIFNOT                        R2 ; [+6]
       20 LOADN                            R5 1
       21 LOADN                            R6 -2
       22 NAMECALL                         R3 R1 K1 ["sub"]
       24 CALL                             R3 3 1
       25 MOVE                             R1 R3
       26 DUPTABLE                         R3 K6 [{"id", "event", "data"}]
       27 GETUPVAL                         R4 1
       28 SETTABLEKS                       R4 R3 K3 ["id"]
       30 GETUPVAL                         R5 2
       31 JUMPIFEQKS                       R5 K7 [""] ; [+3]
       33 GETUPVAL                         R4 2
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 SETTABLEKS                       R4 R3 K4 ["event"]
       38 SETTABLEKS                       R1 R3 K5 ["data"]
       40 GETUPVAL                         R5 3
       41 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       43 MOVE                             R6 R3
       44 GETIMPORT                        R4 K10 [table.insert]
       46 CALL                             R4 2 0
       47 GETUPVAL                         R4 4
       48 JUMPIF                           R4 ; [+4]
       49 GETIMPORT                        R4 K13 [task.spawn]
       51 GETUPVAL                         R5 5
       52 CALL                             R4 1 0
       53 LOADNIL                          R1
       54 SETUPVAL                         R1 1
       55 LOADK                            R1 K7 [""]
       56 SETUPVAL                         R1 0
       57 LOADK                            R1 K7 [""]
       58 SETUPVAL                         R1 2
       59 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKS                    R0 K0 ["event"] ; [+3]
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["data"] ; [+11]
        6 GETUPVAL                         R4 1
        7 LOADK                            R6 K2 ["%*\n"]
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R6 K3 ["format"]
       11 CALL                             R6 2 1
       12 MOVE                             R5 R6
       13 CONCAT                           R3 R4 R5
       14 SETUPVAL                         R3 1
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R0 K4 ["id"] ; [+8]
       18 LOADK                            R5 K5 ["\0"]
       19 NAMECALL                         R3 R1 K6 ["find"]
       21 CALL                             R3 2 1
       22 JUMPIF                           R3 ; [+64]
       23 SETUPVAL                         R1 2
       24 RETURN                           R0 0
       25 JUMPIFNOTEQKS                    R0 K7 ["retry"] ; [+27]
       27 FASTCALL1                        TONUMBER R1 ; [+3]
       28 MOVE                             R4 R1
       29 GETIMPORT                        R3 K9 [tonumber]
       31 CALL                             R3 1 1
       32 JUMPIFNOT                        R3 ; [+4]
       33 GETUPVAL                         R4 3
       34 MOVE                             R5 R3
       35 CALL                             R4 1 0
       36 RETURN                           R0 0
       37 GETUPVAL                         R4 4
       38 DUPTABLE                         R5 K15 [{["message"], ["type"] = "invalid-retry", ["value"], ["line"]}]
       39 LOADK                            R7 K16 ["Invalid \"retry\" value: \"%*\""]
       40 MOVE                             R9 R1
       41 NAMECALL                         R7 R7 K3 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 SETTABLEKS                       R6 R5 K10 ["message"]
       47 SETTABLEKS                       R1 R5 K13 ["value"]
       49 SETTABLEKS                       R2 R5 K14 ["line"]
       51 CALL                             R4 1 0
       52 RETURN                           R0 0
       53 MOVE                             R3 R0
       54 NAMECALL                         R4 R0 K17 ["len"]
       56 CALL                             R4 1 1
       57 LOADN                            R5 20
       58 JUMPIFNOTLT                      R5 R4 ; [+11]
       60 LOADK                            R4 K18 ["%*..."]
       61 LOADN                            R8 1
       62 LOADN                            R9 20
       63 NAMECALL                         R6 R0 K19 ["sub"]
       65 CALL                             R6 3 1
       66 NAMECALL                         R4 R4 K3 ["format"]
       68 CALL                             R4 2 1
       69 MOVE                             R3 R4
       70 GETUPVAL                         R4 4
       71 DUPTABLE                         R5 K22 [{["message"], ["type"] = "unknown-field", ["field"], ["value"], ["line"]}]
       72 LOADK                            R7 K23 ["Unknown field \"%*\""]
       73 MOVE                             R9 R3
       74 NAMECALL                         R7 R7 K3 ["format"]
       76 CALL                             R7 2 1
       77 MOVE                             R6 R7
       78 SETTABLEKS                       R6 R5 K10 ["message"]
       80 SETTABLEKS                       R0 R5 K21 ["field"]
       82 SETTABLEKS                       R1 R5 K13 ["value"]
       84 SETTABLEKS                       R2 R5 K14 ["line"]
       86 CALL                             R4 1 0
       87 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+4]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0
        5 LOADN                            R3 1
        6 LOADN                            R4 1
        7 NAMECALL                         R1 R0 K1 ["sub"]
        9 CALL                             R1 3 1
       10 JUMPIFNOTEQKS                    R1 K2 [":"] ; [+18]
       12 LOADN                            R6 1
       13 LOADN                            R7 2
       14 NAMECALL                         R4 R0 K1 ["sub"]
       16 CALL                             R4 3 1
       17 JUMPIFNOTEQKS                    R4 K3 [": "] ; [+3]
       19 LOADN                            R3 3
       20 JUMP                             ; [+1]
       21 LOADN                            R3 2
       22 NAMECALL                         R1 R0 K1 ["sub"]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 1
       26 MOVE                             R3 R1
       27 CALL                             R2 1 0
       28 RETURN                           R0 0
       29 LOADK                            R3 K2 [":"]
       30 NAMECALL                         R1 R0 K4 ["find"]
       32 CALL                             R1 2 1
       33 JUMPIFNOT                        R1 ; [+27]
       34 LOADN                            R4 1
       35 SUBK                             R5 R1 K5 [1]
       36 NAMECALL                         R2 R0 K1 ["sub"]
       38 CALL                             R2 3 1
       39 ADDK                             R3 R1 K5 [1]
       40 MOVE                             R7 R3
       41 MOVE                             R8 R3
       42 NAMECALL                         R5 R0 K1 ["sub"]
       44 CALL                             R5 3 1
       45 JUMPIFEQKS                       R5 K6 [" "] ; [+2]
       47 LOADB                            R4 0 +1
       48 LOADB                            R4 1
       49 JUMPIFNOT                        R4 ; [+1]
       50 ADDK                             R3 R3 K5 [1]
       51 MOVE                             R7 R3
       52 NAMECALL                         R5 R0 K1 ["sub"]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 2
       56 MOVE                             R7 R2
       57 MOVE                             R8 R5
       58 MOVE                             R9 R0
       59 CALL                             R6 3 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R2 2
       62 MOVE                             R3 R0
       63 LOADK                            R4 K0 [""]
       64 MOVE                             R5 R0
       65 CALL                             R2 3 0
       66 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+12]
        3 LOADN                            R4 1
        4 LOADN                            R5 3
        5 NAMECALL                         R2 R1 K0 ["sub"]
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQKS                    R2 K1 ["﻿"] ; [+6]
       10 LOADN                            R4 4
       11 NAMECALL                         R2 R1 K0 ["sub"]
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R1
       18 CONCAT                           R3 R4 R5
       19 CALL                             R2 1 2
       20 MOVE                             R4 R2
       21 LOADNIL                          R5
       22 LOADNIL                          R6
       23 FORGPREP                         R4
       24 GETUPVAL                         R9 3
       25 MOVE                             R10 R8
       26 CALL                             R9 1 0
       27 FORGLOOP                         R4 2 ; [-4]
       29 SETUPVAL                         R3 2
       30 LOADB                            R4 0
       31 SETUPVAL                         R4 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["onEvent"]
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["onError"]
        6 JUMPIF                           R2 ; [+1]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K2 ["onRetry"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R0 K3 ["onComment"]
       14 JUMPIF                           R4 ; [+1]
       15 GETUPVAL                         R4 0
       16 LOADK                            R5 K4 [""]
       17 LOADB                            R6 1
       18 LOADNIL                          R7
       19 LOADK                            R8 K4 [""]
       20 LOADK                            R9 K4 [""]
       21 NEWTABLE                         R10 0 0
       23 LOADB                            R11 0
       24 NEWCLOSURE                       R12 P0
       25 CAPTURE                          REF R11
       26 CAPTURE                          VAL R10
       27 CAPTURE                          VAL R1
       28 NEWCLOSURE                       R13 P1
       29 CAPTURE                          REF R8
       30 CAPTURE                          REF R7
       31 CAPTURE                          REF R9
       32 CAPTURE                          VAL R10
       33 CAPTURE                          REF R11
       34 CAPTURE                          VAL R12
       35 NEWCLOSURE                       R14 P2
       36 CAPTURE                          REF R9
       37 CAPTURE                          REF R8
       38 CAPTURE                          REF R7
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 NEWCLOSURE                       R15 P3
       42 CAPTURE                          VAL R13
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R14
       45 NEWCLOSURE                       R16 P4
       46 CAPTURE                          REF R6
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          REF R5
       49 CAPTURE                          VAL R15
       50 DUPTABLE                         R17 K6 [{"parseNextChunk"}]
       51 SETTABLEKS                       R16 R17 K5 ["parseNextChunk"]
       53 CLOSEUPVALS                      R5
       54 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPTABLE                         R1 K8 [{[1] = "event", ["Data"] = "data", ["Id"] = "id", ["Retry"] = "retry"}]
        4 DUPCLOSURE                       R2 K9 [PROTO_0]
        5 DUPCLOSURE                       R3 K10 [PROTO_1]
        6 DUPCLOSURE                       R4 K11 [PROTO_7]
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R2
        9 SETTABLEKS                       R4 R0 K12 ["createParser"]
       11 RETURN                           R0 1

PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_array"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["indexOf"]
        3 GETTABLEKS                       R4 R0 K1 ["_array"]
        5 LOADNIL                          R5
        6 CALL                             R3 2 1
        7 DUPTABLE                         R4 K4 [{"config", "testPath"}]
        8 SETTABLEKS                       R2 R4 K2 ["config"]
       10 SETTABLEKS                       R1 R4 K3 ["testPath"]
       12 JUMPIFEQKN                       R3 K5 [-1] ; [+5]
       14 GETTABLEKS                       R5 R0 K1 ["_array"]
       16 SETTABLE                         R4 R5 R3
       17 RETURN                           R0 0
       18 GETTABLEKS                       R6 R0 K1 ["_array"]
       20 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       22 MOVE                             R7 R4
       23 GETIMPORT                        R5 K8 [table.insert]
       25 CALL                             R5 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+8]
        3 GETTABLEKS                       R2 R0 K0 ["testPath"]
        5 GETUPVAL                         R3 0
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["find"]
        3 GETTABLEKS                       R3 R0 K1 ["_array"]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R0 K1 ["_array"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["indexOf"]
       13 GETTABLEKS                       R5 R0 K1 ["_array"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K3 ["toJSBoolean"]
       18 MOVE                             R8 R2
       19 CALL                             R7 1 1
       20 JUMPIFNOT                        R7 ; [+2]
       21 MOVE                             R6 R2
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 CALL                             R4 2 1
       25 LOADNIL                          R5
       26 SETTABLE                         R5 R3 R4
       27 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_array"]
        2 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["_cache"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["new"]
       14 CALL                             R1 0 1
       15 SETTABLEKS                       R1 R0 K4 ["_currentTests"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K5 ["_currentTestCases"]
       21 LOADB                            R1 0
       22 SETTABLEKS                       R1 R0 K6 ["_done"]
       24 LOADB                            R1 0
       25 SETTABLEKS                       R1 R0 K7 ["_emitScheduled"]
       27 LOADN                            R1 0
       28 SETTABLEKS                       R1 R0 K8 ["_estimatedTime"]
       30 LOADB                            R1 0
       31 SETTABLEKS                       R1 R0 K9 ["_showStatus"]
       33 RETURN                           R0 1

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["_callback"]
        2 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_tick"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        3 MOVE                             R5 R2
        4 CALL                             R4 1 1
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
        9 GETTABLEKS                       R5 R2 K1 ["estimatedTime"]
       11 CALL                             R4 1 1
       12 JUMPIFNOT                        R4 ; [+3]
       13 GETTABLEKS                       R3 R2 K1 ["estimatedTime"]
       15 JUMP                             ; [+1]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R0 K2 ["_estimatedTime"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R3 R2 K3 ["showStatus"]
       27 JUMP                             ; [+1]
       28 MOVE                             R3 R2
       29 SETTABLEKS                       R3 R0 K4 ["_showStatus"]
       31 GETUPVAL                         R3 1
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 LOADN                            R5 232
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R0 K5 ["_interval"]
       38 SETTABLEKS                       R1 R0 K6 ["_aggregatedResults"]
       40 NAMECALL                         R3 R0 K7 ["_debouncedEmit"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_9:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_done"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["toJSBoolean"]
        6 GETTABLEKS                       R2 R0 K2 ["_interval"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R0 K2 ["_interval"]
       13 CALL                             R1 1 0
       14 NAMECALL                         R1 R0 K3 ["_emit"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["_currentTestCases"]
        2 DUPTABLE                         R5 K3 [{"test", "testCaseResult"}]
        3 SETTABLEKS                       R1 R5 K1 ["test"]
        5 SETTABLEKS                       R2 R5 K2 ["testCaseResult"]
        7 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
        9 GETIMPORT                        R3 K6 [table.insert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K7 ["toJSBoolean"]
       15 GETTABLEKS                       R4 R0 K8 ["_showStatus"]
       17 CALL                             R3 1 1
       18 JUMPIF                           R3 ; [+4]
       19 NAMECALL                         R3 R0 K9 ["_emit"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 NAMECALL                         R3 R0 K10 ["_debouncedEmit"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_currentTests"]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K1 ["add"]
        6 CALL                             R3 3 0
        7 GETTABLEKS                       R3 R0 K2 ["_showStatus"]
        9 JUMPIF                           R3 ; [+4]
       10 NAMECALL                         R3 R0 K3 ["_emit"]
       12 CALL                             R3 1 0
       13 RETURN                           R0 0
       14 NAMECALL                         R3 R0 K4 ["_debouncedEmit"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["test"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["context"]
        5 GETTABLEKS                       R3 R3 K2 ["config"]
        7 JUMPIFEQ                         R2 R3 ; [+3]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R1 K3 ["path"]
       13 GETUPVAL                         R4 1
       14 JUMPIFNOTEQ                      R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R4 R2 K0 ["testFilePath"]
        2 SETTABLEKS                       R3 R0 K1 ["_aggregatedResults"]
        4 GETTABLEKS                       R5 R0 K2 ["_currentTests"]
        6 MOVE                             R7 R4
        7 NAMECALL                         R5 R5 K3 ["delete"]
        9 CALL                             R5 2 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["filter"]
       13 GETTABLEKS                       R6 R0 K5 ["_currentTestCases"]
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R4
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R0 K5 ["_currentTestCases"]
       21 NAMECALL                         R5 R0 K6 ["_debouncedEmit"]
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+54]
        6 GETTABLEKS                       R1 R0 K1 ["config"]
        8 GETTABLEKS                       R2 R0 K2 ["testPath"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       13 GETTABLEKS                       R5 R1 K3 ["displayName"]
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+12]
       17 LOADK                            R3 K4 ["%s "]
       18 GETUPVAL                         R6 1
       19 MOVE                             R7 R1
       20 CALL                             R6 1 -1
       21 FASTCALL                         TOSTRING ; [+2]
       22 GETIMPORT                        R5 K6 [tostring]
       24 CALL                             R5 -1 1
       25 NAMECALL                         R3 R3 K7 ["format"]
       27 CALL                             R3 2 1
       28 JUMP                             ; [+1]
       29 LOADK                            R3 K8 [""]
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CONCAT                           R4 R5 R6
       33 GETUPVAL                         R5 3
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 JUMPIFNOTEQKNIL                  R5 ; [+2]
       38 LOADB                            R7 0 +1
       39 LOADB                            R7 1
       40 FASTCALL1                        ASSERT R7 ; [+2]
       41 GETIMPORT                        R6 K10 [assert]
       43 CALL                             R6 1 0
       44 GETUPVAL                         R7 4
       45 GETUPVAL                         R10 5
       46 MOVE                             R12 R4
       47 GETUPVAL                         R13 6
       48 MOVE                             R14 R5
       49 MOVE                             R15 R1
       50 MOVE                             R16 R2
       51 LOADN                            R17 0
       52 CALL                             R13 4 1
       53 CONCAT                           R11 R12 R13
       54 LOADN                            R12 0
       55 CALL                             R10 2 1
       56 MOVE                             R8 R10
       57 LOADK                            R9 K11 ["\n"]
       58 CONCAT                           R6 R7 R9
       59 SETUPVAL                         R6 4
       60 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["_cache"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["_cache"]
        9 RETURN                           R1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
       13 GETTABLEKS                       R2 R0 K2 ["_done"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+8]
       17 DUPTABLE                         R1 K5 [{"clear", "content"}]
       18 LOADK                            R2 K6 [""]
       19 SETTABLEKS                       R2 R1 K3 ["clear"]
       21 LOADK                            R2 K6 [""]
       22 SETTABLEKS                       R2 R1 K4 ["content"]
       24 RETURN                           R1 1
       25 LOADK                            R1 K7 ["\n"]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K8 ["forEach"]
       29 GETTABLEKS                       R3 R0 K9 ["_currentTests"]
       31 NAMECALL                         R3 R3 K10 ["get"]
       33 CALL                             R3 1 1
       34 NEWCLOSURE                       R4 P0
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          REF R1
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          UPVAL U6
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R2 R0 K11 ["_showStatus"]
       45 JUMPIFNOT                        R2 ; [+33]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       49 GETTABLEKS                       R3 R0 K12 ["_aggregatedResults"]
       51 CALL                             R2 1 1
       52 JUMPIFNOT                        R2 ; [+26]
       53 MOVE                             R2 R1
       54 LOADK                            R3 K7 ["\n"]
       55 GETUPVAL                         R5 7
       56 GETTABLEKS                       R6 R0 K12 ["_aggregatedResults"]
       58 DUPTABLE                         R7 K17 [{"currentTestCases", "estimatedTime", "roundTime", "width"}]
       59 GETTABLEKS                       R8 R0 K18 ["_currentTestCases"]
       61 SETTABLEKS                       R8 R7 K13 ["currentTestCases"]
       63 GETTABLEKS                       R8 R0 K19 ["_estimatedTime"]
       65 SETTABLEKS                       R8 R7 K14 ["estimatedTime"]
       67 LOADB                            R8 1
       68 SETTABLEKS                       R8 R7 K15 ["roundTime"]
       70 LOADN                            R8 0
       71 SETTABLEKS                       R8 R7 K16 ["width"]
       73 CALL                             R5 2 -1
       74 FASTCALL                         TOSTRING ; [+2]
       75 GETIMPORT                        R4 K21 [tostring]
       77 CALL                             R4 -1 1
       78 CONCAT                           R1 R2 R4
       79 LOADN                            R2 0
       80 LOADN                            R3 0
       81 GETIMPORT                        R4 K24 [utf8.len]
       83 MOVE                             R5 R1
       84 CALL                             R4 1 1
       85 JUMPIFNOTEQKNIL                  R4 ; [+2]
       87 LOADB                            R6 0 +1
       88 LOADB                            R6 1
       89 FASTCALL1                        ASSERT R6 ; [+2]
       90 GETIMPORT                        R5 K26 [assert]
       92 CALL                             R5 1 0
       93 JUMPIFNOTLT                      R3 R4 ; [+12]
       95 GETUPVAL                         R5 8
       96 GETTABLEKS                       R5 R5 K27 ["charCodeAt"]
       98 MOVE                             R6 R1
       99 MOVE                             R7 R3
      100 CALL                             R5 2 1
      101 JUMPIFNOTEQKS                    R5 K7 ["\n"] ; [+2]
      103 ADDK                             R2 R2 K28 [1]
      104 ADDK                             R3 R3 K28 [1]
      105 JUMPBACK                         ; [-13]
      106 LOADK                            R5 K7 ["\n"]
      107 MOVE                             R7 R2
      108 NAMECALL                         R5 R5 K29 ["rep"]
      110 CALL                             R5 2 1
      111 DUPTABLE                         R6 K5 [{"clear", "content"}]
      112 SETTABLEKS                       R5 R6 K3 ["clear"]
      114 SETTABLEKS                       R1 R6 K4 ["content"]
      116 SETTABLEKS                       R6 R0 K1 ["_cache"]
      118 GETTABLEKS                       R6 R0 K1 ["_cache"]
      120 CLOSEUPVALS                      R1
      121 RETURN                           R6 1

PROTO_16:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_cache"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["toJSBoolean"]
        6 GETTABLEKS                       R2 R0 K2 ["_callback"]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R1 R0 K2 ["_callback"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_emit"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["_emitScheduled"]
        8 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toJSBoolean"]
        3 GETTABLEKS                       R2 R0 K1 ["_emitScheduled"]
        5 CALL                             R1 1 1
        6 JUMPIF                           R1 ; [+8]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K1 ["_emitScheduled"]
       10 GETUPVAL                         R1 1
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 LOADN                            R3 100
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_19:
        0 NAMECALL                         R1 R0 K0 ["_debouncedEmit"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["String"]
       18 GETTABLEKS                       R6 R2 K9 ["setTimeout"]
       20 GETTABLEKS                       R7 R2 K10 ["setInterval"]
       22 GETTABLEKS                       R8 R2 K11 ["clearInterval"]
       24 NEWTABLE                         R9 1 0
       26 GETIMPORT                        R10 K4 [require]
       28 GETTABLEKS                       R11 R1 K12 ["ChalkLua"]
       30 CALL                             R10 1 1
       31 GETIMPORT                        R11 K15 [utf8.len]
       33 GETIMPORT                        R12 K4 [require]
       35 GETTABLEKS                       R13 R1 K16 ["JestTestResult"]
       37 CALL                             R12 1 1
       38 GETIMPORT                        R13 K4 [require]
       40 GETTABLEKS                       R14 R1 K17 ["JestTypes"]
       42 CALL                             R13 1 1
       43 GETIMPORT                        R14 K4 [require]
       45 GETTABLEKS                       R15 R0 K18 ["types"]
       47 CALL                             R14 1 1
       48 GETIMPORT                        R15 K4 [require]
       50 GETTABLEKS                       R16 R0 K19 ["utils"]
       52 CALL                             R15 1 1
       53 GETTABLEKS                       R16 R15 K20 ["getSummary"]
       55 GETTABLEKS                       R17 R15 K21 ["printDisplayName"]
       57 GETTABLEKS                       R18 R15 K22 ["trimAndFormatPath"]
       59 GETTABLEKS                       R19 R15 K23 ["wrapAnsiString"]
       61 GETTABLEKS                       R23 R10 K24 ["reset"]
       63 GETTABLEKS                       R24 R10 K25 ["inverse"]
       65 GETTABLEKS                       R25 R10 K26 ["yellow"]
       67 GETTABLEKS                       R26 R10 K27 ["bold"]
       69 LOADK                            R27 K28 [" RUNS "]
       70 CALL                             R26 1 -1
       71 CALL                             R25 -1 -1
       72 CALL                             R24 -1 -1
       73 CALL                             R23 -1 1
       74 MOVE                             R21 R23
       75 LOADK                            R22 K29 [" "]
       76 CONCAT                           R20 R21 R22
       77 NEWTABLE                         R21 0 0
       79 SETTABLEKS                       R21 R21 K30 ["__index"]
       81 DUPCLOSURE                       R22 K31 [PROTO_0]
       82 CAPTURE                          VAL R21
       83 SETTABLEKS                       R22 R21 K32 ["new"]
       85 DUPCLOSURE                       R22 K33 [PROTO_1]
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R22 R21 K34 ["add"]
       89 DUPCLOSURE                       R22 K35 [PROTO_3]
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R22 R21 K36 ["delete"]
       94 DUPCLOSURE                       R22 K37 [PROTO_4]
       95 SETTABLEKS                       R22 R21 K38 ["get"]
       97 NEWTABLE                         R22 16 0
       99 SETTABLEKS                       R22 R22 K30 ["__index"]
      101 DUPCLOSURE                       R23 K39 [PROTO_5]
      102 CAPTURE                          VAL R22
      103 CAPTURE                          VAL R21
      104 SETTABLEKS                       R23 R22 K32 ["new"]
      106 DUPCLOSURE                       R23 K40 [PROTO_6]
      107 SETTABLEKS                       R23 R22 K41 ["onChange"]
      109 DUPCLOSURE                       R23 K42 [PROTO_8]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R7
      112 SETTABLEKS                       R23 R22 K43 ["runStarted"]
      114 DUPCLOSURE                       R23 K44 [PROTO_9]
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R8
      117 SETTABLEKS                       R23 R22 K45 ["runFinished"]
      119 DUPCLOSURE                       R23 K46 [PROTO_10]
      120 CAPTURE                          VAL R4
      121 SETTABLEKS                       R23 R22 K47 ["addTestCaseResult"]
      123 DUPCLOSURE                       R23 K48 [PROTO_11]
      124 SETTABLEKS                       R23 R22 K49 ["testStarted"]
      126 DUPCLOSURE                       R23 K50 [PROTO_13]
      127 CAPTURE                          VAL R3
      128 SETTABLEKS                       R23 R22 K51 ["testFinished"]
      130 DUPCLOSURE                       R23 K52 [PROTO_15]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R20
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R18
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R5
      140 SETTABLEKS                       R23 R22 K38 ["get"]
      142 DUPCLOSURE                       R23 K53 [PROTO_16]
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R23 R22 K54 ["_emit"]
      146 DUPCLOSURE                       R23 K55 [PROTO_18]
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R6
      149 SETTABLEKS                       R23 R22 K56 ["_debouncedEmit"]
      151 DUPCLOSURE                       R23 K57 [PROTO_19]
      152 SETTABLEKS                       R23 R22 K58 ["_tick"]
      154 SETTABLEKS                       R22 R9 K59 ["default"]
      156 RETURN                           R9 1

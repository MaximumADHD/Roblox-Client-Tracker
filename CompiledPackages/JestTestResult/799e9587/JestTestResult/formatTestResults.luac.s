PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLEKS                       R4 R0 K1 ["testResults"]
        5 GETUPVAL                         R5 1
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R0 K2 ["testExecError"]
        9 JUMPIFEQKNIL                     R4 ; [+35]
       11 GETIMPORT                        R4 K5 [DateTime.now]
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R4 R4 K6 ["UnixTimestampMillis"]
       16 DUPTABLE                         R5 K17 [{["assertionResults"], ["coverage"], ["endTime"], ["message"], ["name"], ["startTime"], ["status"] = "failed", ["summary"] = ""}]
       17 SETTABLEKS                       R3 R5 K7 ["assertionResults"]
       19 NEWTABLE                         R6 0 0
       21 SETTABLEKS                       R6 R5 K8 ["coverage"]
       23 SETTABLEKS                       R4 R5 K9 ["endTime"]
       25 GETTABLEKS                       R7 R0 K18 ["failureMessage"]
       27 JUMPIFEQKNIL                     R7 ; [+4]
       29 GETTABLEKS                       R6 R0 K18 ["failureMessage"]
       31 JUMP                             ; [+4]
       32 GETTABLEKS                       R6 R0 K2 ["testExecError"]
       34 GETTABLEKS                       R6 R6 K10 ["message"]
       36 SETTABLEKS                       R6 R5 K10 ["message"]
       38 GETTABLEKS                       R6 R0 K19 ["testFilePath"]
       40 SETTABLEKS                       R6 R5 K11 ["name"]
       42 SETTABLEKS                       R4 R5 K12 ["startTime"]
       44 RETURN                           R5 1
       45 GETTABLEKS                       R5 R0 K20 ["numFailingTests"]
       47 JUMPIFEQKN                       R5 K21 [0] ; [+2]
       49 LOADB                            R4 0 +1
       50 LOADB                            R4 1
       51 DUPTABLE                         R5 K22 [{["assertionResults"], ["coverage"], ["endTime"], ["message"], ["name"], ["startTime"], ["status"], ["summary"] = ""}]
       52 SETTABLEKS                       R3 R5 K7 ["assertionResults"]
       54 JUMPIFEQKNIL                     R1 ; [+7]
       56 MOVE                             R6 R1
       57 GETTABLEKS                       R7 R0 K8 ["coverage"]
       59 MOVE                             R8 R2
       60 CALL                             R6 2 1
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R6 R0 K8 ["coverage"]
       64 SETTABLEKS                       R6 R5 K8 ["coverage"]
       66 GETTABLEKS                       R6 R0 K23 ["perfStats"]
       68 GETTABLEKS                       R6 R6 K24 ["end_"]
       70 SETTABLEKS                       R6 R5 K9 ["endTime"]
       72 GETTABLEKS                       R7 R0 K18 ["failureMessage"]
       74 JUMPIFEQKNIL                     R7 ; [+4]
       76 GETTABLEKS                       R6 R0 K18 ["failureMessage"]
       78 JUMP                             ; [+1]
       79 LOADK                            R6 K16 [""]
       80 SETTABLEKS                       R6 R5 K10 ["message"]
       82 GETTABLEKS                       R6 R0 K19 ["testFilePath"]
       84 SETTABLEKS                       R6 R5 K11 ["name"]
       86 GETTABLEKS                       R6 R0 K23 ["perfStats"]
       88 GETTABLEKS                       R6 R6 K25 ["start"]
       90 SETTABLEKS                       R6 R5 K12 ["startTime"]
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R7 R7 K26 ["toJSBoolean"]
       95 MOVE                             R8 R4
       96 CALL                             R7 1 1
       97 JUMPIFNOT                        R7 ; [+2]
       98 LOADK                            R6 K27 ["passed"]
       99 JUMP                             ; [+1]
      100 LOADK                            R6 K14 ["failed"]
      101 SETTABLEKS                       R6 R5 K13 ["status"]
      103 RETURN                           R5 1

PROTO_1:
        0 DUPTABLE                         R1 K7 [{[1], ["failureMessages"] = , ["fullName"], ["location"], ["status"], ["title"]}]
        1 GETTABLEKS                       R2 R0 K0 ["ancestorTitles"]
        3 SETTABLEKS                       R2 R1 K0 ["ancestorTitles"]
        5 GETTABLEKS                       R2 R0 K3 ["fullName"]
        7 SETTABLEKS                       R2 R1 K3 ["fullName"]
        9 GETTABLEKS                       R2 R0 K4 ["location"]
       11 SETTABLEKS                       R2 R1 K4 ["location"]
       13 GETTABLEKS                       R2 R0 K5 ["status"]
       15 SETTABLEKS                       R2 R1 K5 ["status"]
       17 GETTABLEKS                       R2 R0 K6 ["title"]
       19 SETTABLEKS                       R2 R1 K6 ["title"]
       21 GETTABLEKS                       R2 R0 K1 ["failureMessages"]
       23 JUMPIFNOT                        R2 ; [+4]
       24 GETTABLEKS                       R2 R0 K1 ["failureMessages"]
       26 SETTABLEKS                       R2 R1 K1 ["failureMessages"]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 1
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLEKS                       R4 R0 K1 ["testResults"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["assign"]
       13 NEWTABLE                         R5 0 0
       15 MOVE                             R6 R0
       16 DUPTABLE                         R7 K3 [{"testResults"}]
       17 SETTABLEKS                       R3 R7 K1 ["testResults"]
       19 CALL                             R4 3 -1
       20 RETURN                           R4 -1

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
       16 GETTABLEKS                       R5 R2 K8 ["Object"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R0 K9 ["types"]
       22 CALL                             R6 1 1
       23 LOADNIL                          R7
       24 NEWCLOSURE                       R8 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          REF R7
       27 CAPTURE                          VAL R4
       28 DUPCLOSURE                       R7 K10 [PROTO_1]
       29 DUPCLOSURE                       R9 K11 [PROTO_3]
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R8
       32 CAPTURE                          VAL R5
       33 DUPTABLE                         R10 K13 [{"default"}]
       34 SETTABLEKS                       R9 R10 K12 ["default"]
       36 CLOSEUPVALS                      R7
       37 RETURN                           R10 1

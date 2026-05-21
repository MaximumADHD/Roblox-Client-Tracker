PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["map"]
        3 GETTABLEKS                       R4 R0 K1 ["testResults"]
        5 GETUPVAL                         R5 1
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R0 K2 ["testExecError"]
        9 JUMPIFEQKNIL                     R4 ; [+41]
       11 GETIMPORT                        R4 K5 [DateTime.now]
       13 CALL                             R4 0 1
       14 GETTABLEKS                       R4 R4 K6 ["UnixTimestampMillis"]
       16 DUPTABLE                         R5 K15 [{"assertionResults", "coverage", "endTime", "message", "name", "startTime", "status", "summary"}]
       17 SETTABLEKS                       R3 R5 K7 ["assertionResults"]
       19 NEWTABLE                         R6 0 0
       21 SETTABLEKS                       R6 R5 K8 ["coverage"]
       23 SETTABLEKS                       R4 R5 K9 ["endTime"]
       25 GETTABLEKS                       R7 R0 K16 ["failureMessage"]
       27 JUMPIFEQKNIL                     R7 ; [+4]
       29 GETTABLEKS                       R6 R0 K16 ["failureMessage"]
       31 JUMP                             ; [+4]
       32 GETTABLEKS                       R6 R0 K2 ["testExecError"]
       34 GETTABLEKS                       R6 R6 K10 ["message"]
       36 SETTABLEKS                       R6 R5 K10 ["message"]
       38 GETTABLEKS                       R6 R0 K17 ["testFilePath"]
       40 SETTABLEKS                       R6 R5 K11 ["name"]
       42 SETTABLEKS                       R4 R5 K12 ["startTime"]
       44 LOADK                            R6 K18 ["failed"]
       45 SETTABLEKS                       R6 R5 K13 ["status"]
       47 LOADK                            R6 K19 [""]
       48 SETTABLEKS                       R6 R5 K14 ["summary"]
       50 RETURN                           R5 1
       51 GETTABLEKS                       R5 R0 K20 ["numFailingTests"]
       53 JUMPIFEQKN                       R5 K21 [0] ; [+2]
       55 LOADB                            R4 0 +1
       56 LOADB                            R4 1
       57 DUPTABLE                         R5 K15 [{"assertionResults", "coverage", "endTime", "message", "name", "startTime", "status", "summary"}]
       58 SETTABLEKS                       R3 R5 K7 ["assertionResults"]
       60 JUMPIFEQKNIL                     R1 ; [+7]
       62 MOVE                             R6 R1
       63 GETTABLEKS                       R7 R0 K8 ["coverage"]
       65 MOVE                             R8 R2
       66 CALL                             R6 2 1
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R6 R0 K8 ["coverage"]
       70 SETTABLEKS                       R6 R5 K8 ["coverage"]
       72 GETTABLEKS                       R6 R0 K22 ["perfStats"]
       74 GETTABLEKS                       R6 R6 K23 ["end_"]
       76 SETTABLEKS                       R6 R5 K9 ["endTime"]
       78 GETTABLEKS                       R7 R0 K16 ["failureMessage"]
       80 JUMPIFEQKNIL                     R7 ; [+4]
       82 GETTABLEKS                       R6 R0 K16 ["failureMessage"]
       84 JUMP                             ; [+1]
       85 LOADK                            R6 K19 [""]
       86 SETTABLEKS                       R6 R5 K10 ["message"]
       88 GETTABLEKS                       R6 R0 K17 ["testFilePath"]
       90 SETTABLEKS                       R6 R5 K11 ["name"]
       92 GETTABLEKS                       R6 R0 K22 ["perfStats"]
       94 GETTABLEKS                       R6 R6 K24 ["start"]
       96 SETTABLEKS                       R6 R5 K12 ["startTime"]
       98 GETUPVAL                         R7 2
       99 GETTABLEKS                       R7 R7 K25 ["toJSBoolean"]
      101 MOVE                             R8 R4
      102 CALL                             R7 1 1
      103 JUMPIFNOT                        R7 ; [+2]
      104 LOADK                            R6 K26 ["passed"]
      105 JUMP                             ; [+1]
      106 LOADK                            R6 K18 ["failed"]
      107 SETTABLEKS                       R6 R5 K13 ["status"]
      109 LOADK                            R6 K19 [""]
      110 SETTABLEKS                       R6 R5 K14 ["summary"]
      112 RETURN                           R5 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{"ancestorTitles", "failureMessages", "fullName", "location", "status", "title"}]
        1 GETTABLEKS                       R2 R0 K0 ["ancestorTitles"]
        3 SETTABLEKS                       R2 R1 K0 ["ancestorTitles"]
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["failureMessages"]
        8 GETTABLEKS                       R2 R0 K2 ["fullName"]
       10 SETTABLEKS                       R2 R1 K2 ["fullName"]
       12 GETTABLEKS                       R2 R0 K3 ["location"]
       14 SETTABLEKS                       R2 R1 K3 ["location"]
       16 GETTABLEKS                       R2 R0 K4 ["status"]
       18 SETTABLEKS                       R2 R1 K4 ["status"]
       20 GETTABLEKS                       R2 R0 K5 ["title"]
       22 SETTABLEKS                       R2 R1 K5 ["title"]
       24 GETTABLEKS                       R2 R0 K1 ["failureMessages"]
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETTABLEKS                       R2 R0 K1 ["failureMessages"]
       29 SETTABLEKS                       R2 R1 K1 ["failureMessages"]
       31 RETURN                           R1 1

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

PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["testResults"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R10 R3
        8 GETUPVAL                         R11 0
        9 MOVE                             R12 R8
       10 CALL                             R11 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R9 K3 [table.insert]
       14 CALL                             R9 -1 0
       15 FORGLOOP                         R4 2 ; [-9]
       17 GETTABLEKS                       R4 R0 K4 ["testExecError"]
       19 JUMPIFEQKNIL                     R4 ; [+35]
       21 GETIMPORT                        R4 K7 [DateTime.now]
       23 CALL                             R4 0 1
       24 GETTABLEKS                       R4 R4 K8 ["UnixTimestampMillis"]
       26 DUPTABLE                         R5 K19 [{["assertionResults"], ["coverage"], ["endTime"], ["message"], ["name"], ["startTime"], ["status"] = "failed", ["summary"] = ""}]
       27 SETTABLEKS                       R3 R5 K9 ["assertionResults"]
       29 NEWTABLE                         R6 0 0
       31 SETTABLEKS                       R6 R5 K10 ["coverage"]
       33 SETTABLEKS                       R4 R5 K11 ["endTime"]
       35 GETTABLEKS                       R7 R0 K20 ["failureMessage"]
       37 JUMPIFEQKNIL                     R7 ; [+4]
       39 GETTABLEKS                       R6 R0 K20 ["failureMessage"]
       41 JUMP                             ; [+4]
       42 GETTABLEKS                       R6 R0 K4 ["testExecError"]
       44 GETTABLEKS                       R6 R6 K12 ["message"]
       46 SETTABLEKS                       R6 R5 K12 ["message"]
       48 GETTABLEKS                       R6 R0 K21 ["testFilePath"]
       50 SETTABLEKS                       R6 R5 K13 ["name"]
       52 SETTABLEKS                       R4 R5 K14 ["startTime"]
       54 RETURN                           R5 1
       55 GETTABLEKS                       R5 R0 K22 ["numFailingTests"]
       57 JUMPIFEQKN                       R5 K23 [0] ; [+2]
       59 LOADB                            R4 0 +1
       60 LOADB                            R4 1
       61 DUPTABLE                         R5 K24 [{["assertionResults"], ["coverage"], ["endTime"], ["message"], ["name"], ["startTime"], ["status"], ["summary"] = ""}]
       62 SETTABLEKS                       R3 R5 K9 ["assertionResults"]
       64 JUMPIFEQKNIL                     R1 ; [+7]
       66 MOVE                             R6 R1
       67 GETTABLEKS                       R7 R0 K10 ["coverage"]
       69 MOVE                             R8 R2
       70 CALL                             R6 2 1
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R6 R0 K10 ["coverage"]
       74 SETTABLEKS                       R6 R5 K10 ["coverage"]
       76 GETTABLEKS                       R7 R0 K26 ["perfStats"]
       78 GETTABLEKS                       R6 R7 K25 ["end"]
       80 SETTABLEKS                       R6 R5 K11 ["endTime"]
       82 GETTABLEKS                       R7 R0 K20 ["failureMessage"]
       84 JUMPIFEQKNIL                     R7 ; [+4]
       86 GETTABLEKS                       R6 R0 K20 ["failureMessage"]
       88 JUMP                             ; [+1]
       89 LOADK                            R6 K18 [""]
       90 SETTABLEKS                       R6 R5 K12 ["message"]
       92 GETTABLEKS                       R6 R0 K21 ["testFilePath"]
       94 SETTABLEKS                       R6 R5 K13 ["name"]
       96 GETTABLEKS                       R6 R0 K26 ["perfStats"]
       98 GETTABLEKS                       R6 R6 K27 ["start"]
      100 SETTABLEKS                       R6 R5 K14 ["startTime"]
      102 JUMPIFNOT                        R4 ; [+2]
      103 LOADK                            R6 K28 ["passed"]
      104 JUMP                             ; [+1]
      105 LOADK                            R6 K16 ["failed"]
      106 SETTABLEKS                       R6 R5 K15 ["status"]
      108 RETURN                           R5 1

PROTO_1:
        0 DUPTABLE                         R1 K8 [{[1], ["duration"], ["failureMessages"] = , ["fullName"], ["location"], ["status"], ["title"]}]
        1 GETTABLEKS                       R2 R0 K0 ["ancestorTitles"]
        3 SETTABLEKS                       R2 R1 K0 ["ancestorTitles"]
        5 GETTABLEKS                       R2 R0 K1 ["duration"]
        7 SETTABLEKS                       R2 R1 K1 ["duration"]
        9 GETTABLEKS                       R2 R0 K4 ["fullName"]
       11 SETTABLEKS                       R2 R1 K4 ["fullName"]
       13 GETTABLEKS                       R2 R0 K5 ["location"]
       15 SETTABLEKS                       R2 R1 K5 ["location"]
       17 GETTABLEKS                       R2 R0 K6 ["status"]
       19 SETTABLEKS                       R2 R1 K6 ["status"]
       21 GETTABLEKS                       R2 R0 K7 ["title"]
       23 SETTABLEKS                       R2 R1 K7 ["title"]
       25 GETTABLEKS                       R2 R0 K2 ["failureMessages"]
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETTABLEKS                       R2 R0 K2 ["failureMessages"]
       30 SETTABLEKS                       R2 R1 K2 ["failureMessages"]
       32 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETTABLEKS                       R4 R0 K0 ["testResults"]
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 GETUPVAL                         R11 0
        8 MOVE                             R12 R8
        9 MOVE                             R13 R1
       10 MOVE                             R14 R2
       11 CALL                             R11 3 1
       12 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K3 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 2 ; [-12]
       20 GETIMPORT                        R4 K5 [table.clone]
       22 MOVE                             R5 R0
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R3 R4 K0 ["testResults"]
       26 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["types"]
        9 CALL                             R1 1 1
       10 LOADNIL                          R2
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          REF R2
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 DUPCLOSURE                       R4 K7 [PROTO_2]
       15 CAPTURE                          VAL R3
       16 CLOSEUPVALS                      R2
       17 RETURN                           R4 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R3 1 1
        4 DUPCLOSURE                       R6 K0 [PROTO_1]
        5 NAMECALL                         R4 R3 K1 ["catch"]
        7 CALL                             R4 2 0
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K2 ["test"]
       11 MOVE                             R5 R0
       12 NEWCLOSURE                       R6 P2
       13 CAPTURE                          VAL R3
       14 MOVE                             R7 R2
       15 CALL                             R4 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K0 ["only"]
        7 MOVE                             R5 R0
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R3
       10 MOVE                             R7 R2
       11 CALL                             R4 3 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 MOVE                             R7 R3
        4 CALL                             R4 3 -1
        5 RETURN                           R4 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R3 0 0
        5 DUPTABLE                         R4 K1 [{"__call"}]
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R5 R4 K0 ["__call"]
       10 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       12 GETIMPORT                        R2 K3 [setmetatable]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R3 P2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R5 0 0
       20 DUPTABLE                         R6 K1 [{"__call"}]
       21 NEWCLOSURE                       R7 P3
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R7 R6 K0 ["__call"]
       25 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       27 GETIMPORT                        R4 K3 [setmetatable]
       29 CALL                             R4 2 1
       30 SETTABLEKS                       R4 R2 K4 ["only"]
       32 GETTABLEKS                       R5 R0 K5 ["skip"]
       34 SETTABLEKS                       R5 R2 K5 ["skip"]
       36 GETUPVAL                         R5 2
       37 MOVE                             R6 R0
       38 LOADB                            R7 0
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R2 K6 ["each"]
       42 GETTABLEKS                       R5 R2 K5 ["skip"]
       44 GETUPVAL                         R6 2
       45 GETTABLEKS                       R7 R0 K5 ["skip"]
       47 LOADB                            R8 0
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K6 ["each"]
       51 GETUPVAL                         R5 2
       52 GETTABLEKS                       R6 R0 K4 ["only"]
       54 LOADB                            R7 0
       55 CALL                             R5 2 1
       56 SETTABLEKS                       R5 R4 K6 ["each"]
       58 RETURN                           R2 1

PROTO_10:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testTimeout"]
        3 JUMPIFEQKNIL                     R0 ; [+14]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["testTimeout"]
        8 LOADN                            R1 0
        9 JUMPIFNOTLT                      R1 R0 ; [+8]
       11 GETUPVAL                         R0 1
       12 CALL                             R0 0 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["testTimeout"]
       16 SETTABLEKS                       R1 R0 K0 ["testTimeout"]
       18 GETUPVAL                         R0 2
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K1 ["maxConcurrency"]
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 3
       24 GETTABLEKS                       R1 R1 K2 ["assign"]
       26 NEWTABLE                         R2 0 0
       28 GETUPVAL                         R3 4
       29 DUPTABLE                         R4 K8 [{"fdescribe", "fit", "xdescribe", "xit", "xtest"}]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K9 ["describe"]
       33 GETTABLEKS                       R5 R5 K10 ["only"]
       35 SETTABLEKS                       R5 R4 K3 ["fdescribe"]
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R5 R5 K11 ["it"]
       40 GETTABLEKS                       R5 R5 K10 ["only"]
       42 SETTABLEKS                       R5 R4 K4 ["fit"]
       44 GETUPVAL                         R5 4
       45 GETTABLEKS                       R5 R5 K9 ["describe"]
       47 GETTABLEKS                       R5 R5 K12 ["skip"]
       49 SETTABLEKS                       R5 R4 K5 ["xdescribe"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R5 R5 K11 ["it"]
       54 GETTABLEKS                       R5 R5 K12 ["skip"]
       56 SETTABLEKS                       R5 R4 K6 ["xit"]
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K11 ["it"]
       61 GETTABLEKS                       R5 R5 K12 ["skip"]
       63 SETTABLEKS                       R5 R4 K7 ["xtest"]
       65 CALL                             R1 3 1
       66 GETTABLEKS                       R2 R1 K13 ["test"]
       68 NEWCLOSURE                       R3 P0
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 CAPTURE                          UPVAL U5
       72 GETTABLEKS                       R4 R1 K13 ["test"]
       74 CALL                             R3 1 1
       75 SETTABLEKS                       R3 R2 K14 ["concurrent"]
       77 GETUPVAL                         R2 6
       78 GETUPVAL                         R3 7
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 8
       81 GETTABLEKS                       R2 R2 K15 ["handleTestEvent"]
       83 JUMPIFEQKNIL                     R2 ; [+9]
       85 GETUPVAL                         R2 8
       86 GETTABLEKS                       R2 R2 K15 ["handleTestEvent"]
       88 GETUPVAL                         R3 6
       89 NEWCLOSURE                       R4 P1
       90 CAPTURE                          VAL R2
       91 CAPTURE                          UPVAL U8
       92 CALL                             R3 1 0
       93 GETUPVAL                         R2 3
       94 GETTABLEKS                       R2 R2 K2 ["assign"]
       96 NEWTABLE                         R3 0 0
       98 MOVE                             R4 R1
       99 DUPTABLE                         R5 K17 [{"expect"}]
      100 GETUPVAL                         R6 9
      101 GETUPVAL                         R7 0
      102 CALL                             R6 1 1
      103 SETTABLEKS                       R6 R5 K16 ["expect"]
      105 CALL                             R2 3 1
      106 GETTABLEKS                       R3 R2 K16 ["expect"]
      108 SETTABLEKS                       R3 R2 K18 ["expectExtended"]
      110 GETUPVAL                         R3 10
      111 MOVE                             R4 R2
      112 CALL                             R3 1 0
      113 GETUPVAL                         R3 11
      114 GETTABLEKS                       R3 R3 K19 ["injectGlobals"]
      116 JUMPIFNOT                        R3 ; [+8]
      117 GETUPVAL                         R3 3
      118 GETTABLEKS                       R3 R3 K2 ["assign"]
      120 GETUPVAL                         R4 8
      121 GETTABLEKS                       R4 R4 K20 ["global"]
      123 MOVE                             R5 R2
      124 CALL                             R3 2 0
      125 GETUPVAL                         R3 12
      126 DUPTABLE                         R4 K25 [{["name"] = "setup", ["runtimeGlobals"], ["testNamePattern"]}]
      127 SETTABLEKS                       R2 R4 K23 ["runtimeGlobals"]
      129 GETUPVAL                         R5 0
      130 GETTABLEKS                       R5 R5 K24 ["testNamePattern"]
      132 SETTABLEKS                       R5 R4 K24 ["testNamePattern"]
      134 CALL                             R3 1 1
      135 NAMECALL                         R3 R3 K16 ["expect"]
      137 CALL                             R3 1 0
      138 GETUPVAL                         R3 11
      139 GETTABLEKS                       R3 R3 K26 ["testLocationInResults"]
      141 JUMPIFNOT                        R3 ; [+6]
      142 GETUPVAL                         R3 12
      143 DUPTABLE                         R4 K28 [{["name"] = "include_test_location_in_result"}]
      144 CALL                             R3 1 1
      145 NAMECALL                         R3 R3 K16 ["expect"]
      147 CALL                             R3 1 0
      148 GETUPVAL                         R3 13
      149 GETTABLEKS                       R3 R3 K29 ["forEach"]
      151 GETUPVAL                         R4 13
      152 GETTABLEKS                       R4 R4 K30 ["reverse"]
      154 GETUPVAL                         R5 13
      155 GETTABLEKS                       R5 R5 K31 ["concat"]
      157 GETUPVAL                         R6 11
      158 GETTABLEKS                       R6 R6 K32 ["snapshotSerializers"]
      160 CALL                             R5 1 -1
      161 CALL                             R4 -1 1
      162 NEWCLOSURE                       R5 P2
      163 CAPTURE                          UPVAL U14
      164 CAPTURE                          UPVAL U15
      165 CALL                             R3 2 0
      166 GETUPVAL                         R3 0
      167 GETTABLEKS                       R3 R3 K33 ["expand"]
      169 GETUPVAL                         R4 0
      170 GETTABLEKS                       R4 R4 K34 ["updateSnapshot"]
      172 GETUPVAL                         R5 16
      173 GETUPVAL                         R6 11
      174 GETUPVAL                         R7 15
      175 CALL                             R5 2 1
      176 NAMECALL                         R5 R5 K16 ["expect"]
      178 CALL                             R5 1 1
      179 GETUPVAL                         R8 17
      180 NAMECALL                         R6 R5 K35 ["resolveSnapshotPath"]
      182 CALL                             R6 2 1
      183 GETUPVAL                         R7 18
      184 GETTABLEKS                       R7 R7 K36 ["new"]
      186 MOVE                             R8 R6
      187 DUPTABLE                         R9 K38 [{"expand", "snapshotFormat", "updateSnapshot"}]
      188 SETTABLEKS                       R3 R9 K33 ["expand"]
      190 GETUPVAL                         R10 11
      191 GETTABLEKS                       R10 R10 K37 ["snapshotFormat"]
      193 SETTABLEKS                       R10 R9 K37 ["snapshotFormat"]
      195 SETTABLEKS                       R4 R9 K34 ["updateSnapshot"]
      197 CALL                             R7 2 1
      198 GETUPVAL                         R8 19
      199 DUPTABLE                         R9 K41 [{"snapshotState", "testPath"}]
      200 SETTABLEKS                       R7 R9 K39 ["snapshotState"]
      202 GETUPVAL                         R10 17
      203 SETTABLEKS                       R10 R9 K40 ["testPath"]
      205 CALL                             R8 1 0
      206 GETUPVAL                         R8 6
      207 GETUPVAL                         R9 20
      208 MOVE                             R10 R7
      209 CALL                             R9 1 -1
      210 CALL                             R8 -1 0
      211 DUPTABLE                         R8 K43 [{"globals", "snapshotState"}]
      212 SETTABLEKS                       R1 R8 K42 ["globals"]
      214 SETTABLEKS                       R7 R8 K39 ["snapshotState"]
      216 RETURN                           R8 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["config"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["globalConfig"]
        6 GETTABLEKS                       R4 R0 K3 ["localRequire"]
        8 GETTABLEKS                       R5 R0 K4 ["setGlobalsForRuntime"]
       10 GETTABLEKS                       R6 R0 K5 ["testPath"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["resolve"]
       15 CALL                             R7 0 1
       16 NEWCLOSURE                       R9 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U8
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          UPVAL U10
       31 CAPTURE                          UPVAL U11
       32 CAPTURE                          VAL R4
       33 CAPTURE                          UPVAL U12
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U13
       36 CAPTURE                          UPVAL U14
       37 CAPTURE                          UPVAL U15
       38 NAMECALL                         R7 R7 K7 ["andThen"]
       40 CALL                             R7 2 -1
       41 RETURN                           R7 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_15:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R2 K1 ["skip"] ; [+6]
        5 LOADK                            R1 K2 ["pending"]
        6 GETUPVAL                         R2 0
        7 ADDK                             R2 R2 K3 [1]
        8 SETUPVAL                         R2 0
        9 JUMP                             ; [+23]
       10 GETTABLEKS                       R2 R0 K0 ["status"]
       12 JUMPIFNOTEQKS                    R2 K4 ["todo"] ; [+6]
       14 LOADK                            R1 K4 ["todo"]
       15 GETUPVAL                         R2 1
       16 ADDK                             R2 R2 K3 [1]
       17 SETUPVAL                         R2 1
       18 JUMP                             ; [+14]
       19 GETTABLEKS                       R3 R0 K5 ["errors"]
       21 LENGTH                           R2 R3
       22 JUMPIFEQKN                       R2 K6 [0] ; [+6]
       24 LOADK                            R1 K7 ["failed"]
       25 GETUPVAL                         R2 2
       26 ADDK                             R2 R2 K3 [1]
       27 SETUPVAL                         R2 2
       28 JUMP                             ; [+4]
       29 LOADK                            R1 K8 ["passed"]
       30 GETUPVAL                         R2 3
       31 ADDK                             R2 R2 K3 [1]
       32 SETUPVAL                         R2 3
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K9 ["filter"]
       36 GETTABLEKS                       R3 R0 K10 ["testPath"]
       38 DUPCLOSURE                       R4 K11 [PROTO_14]
       39 CAPTURE                          UPVAL U5
       40 CALL                             R2 2 1
       41 GETIMPORT                        R3 K14 [table.remove]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 1
       45 DUPTABLE                         R4 K25 [{["ancestorTitles"], ["duration"], ["failureDetails"], ["failureMessages"], ["fullName"], ["invocations"], ["location"], ["numPassingAsserts"] = 0, ["retryReasons"], [10], ["title"]}]
       46 SETTABLEKS                       R2 R4 K15 ["ancestorTitles"]
       48 GETTABLEKS                       R5 R0 K16 ["duration"]
       50 SETTABLEKS                       R5 R4 K16 ["duration"]
       52 GETTABLEKS                       R5 R0 K26 ["errorsDetailed"]
       54 SETTABLEKS                       R5 R4 K17 ["failureDetails"]
       56 GETTABLEKS                       R5 R0 K5 ["errors"]
       58 SETTABLEKS                       R5 R4 K18 ["failureMessages"]
       60 GETUPVAL                         R6 6
       61 GETTABLEKS                       R6 R6 K27 ["toJSBoolean"]
       63 MOVE                             R7 R3
       64 CALL                             R6 1 1
       65 JUMPIFNOT                        R6 ; [+12]
       66 GETUPVAL                         R5 4
       67 GETTABLEKS                       R5 R5 K28 ["join"]
       69 GETUPVAL                         R6 4
       70 GETTABLEKS                       R6 R6 K29 ["concat"]
       72 MOVE                             R7 R2
       73 MOVE                             R8 R3
       74 CALL                             R6 2 1
       75 LOADK                            R7 K30 [" "]
       76 CALL                             R5 2 1
       77 JUMP                             ; [+6]
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R5 R5 K28 ["join"]
       81 MOVE                             R6 R2
       82 LOADK                            R7 K30 [" "]
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K19 ["fullName"]
       86 GETTABLEKS                       R5 R0 K20 ["invocations"]
       88 SETTABLEKS                       R5 R4 K20 ["invocations"]
       90 GETTABLEKS                       R5 R0 K21 ["location"]
       92 SETTABLEKS                       R5 R4 K21 ["location"]
       94 GETTABLEKS                       R5 R0 K23 ["retryReasons"]
       96 SETTABLEKS                       R5 R4 K23 ["retryReasons"]
       98 SETTABLEKS                       R1 R4 K0 ["status"]
      100 GETTABLEKS                       R6 R0 K10 ["testPath"]
      102 GETTABLEKS                       R8 R0 K10 ["testPath"]
      104 LENGTH                           R7 R8
      105 GETTABLE                         R5 R6 R7
      106 SETTABLEKS                       R5 R4 K24 ["title"]
      108 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 1
        6 NAMECALL                         R0 R0 K1 ["expect"]
        8 CALL                             R0 1 1
        9 LOADN                            R1 0
       10 LOADN                            R2 0
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K2 ["map"]
       16 GETTABLEKS                       R6 R0 K3 ["testResults"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          REF R4
       21 CAPTURE                          REF R1
       22 CAPTURE                          REF R2
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 5
       28 MOVE                             R7 R5
       29 GETUPVAL                         R8 6
       30 GETUPVAL                         R9 7
       31 GETUPVAL                         R10 8
       32 CALL                             R6 4 1
       33 LOADNIL                          R7
       34 GETTABLEKS                       R9 R0 K4 ["unhandledErrors"]
       36 LENGTH                           R8 R9
       37 JUMPIFEQKN                       R8 K5 [0] ; [+38]
       39 DUPTABLE                         R8 K9 [{["message"] = "", ["stack"]}]
       40 GETUPVAL                         R9 2
       41 GETTABLEKS                       R9 R9 K10 ["join"]
       43 GETTABLEKS                       R10 R0 K4 ["unhandledErrors"]
       45 LOADK                            R11 K11 ["\n"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K8 ["stack"]
       49 MOVE                             R7 R8
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R11 R11 K12 ["toJSBoolean"]
       53 MOVE                             R12 R6
       54 CALL                             R11 1 1
       55 JUMPIFNOT                        R11 ; [+2]
       56 MOVE                             R8 R6
       57 JUMPIF                           R8 ; [+1]
       58 LOADK                            R8 K7 [""]
       59 LOADK                            R9 K13 ["\n\n"]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K10 ["join"]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K2 ["map"]
       66 GETTABLEKS                       R12 R0 K4 ["unhandledErrors"]
       68 NEWCLOSURE                       R13 P1
       69 CAPTURE                          UPVAL U9
       70 CAPTURE                          UPVAL U6
       71 CAPTURE                          UPVAL U7
       72 CALL                             R11 2 1
       73 LOADK                            R12 K11 ["\n"]
       74 CALL                             R10 2 1
       75 CONCAT                           R6 R8 R10
       76 GETUPVAL                         R8 10
       77 DUPTABLE                         R9 K16 [{["name"] = "teardown"}]
       78 CALL                             R8 1 1
       79 NAMECALL                         R8 R8 K1 ["expect"]
       81 CALL                             R8 1 0
       82 GETUPVAL                         R8 11
       83 GETTABLEKS                       R8 R8 K17 ["assign"]
       85 NEWTABLE                         R9 0 0
       87 GETUPVAL                         R10 12
       88 CALL                             R10 0 1
       89 DUPTABLE                         R11 K27 [{"console", "displayName", "failureMessage", "numFailingTests", "numPassingTests", "numPendingTests", "numTodoTests", "testExecError", "testFilePath", "testResults"}]
       90 GETUPVAL                         R12 11
       91 GETTABLEKS                       R12 R12 K28 ["None"]
       93 SETTABLEKS                       R12 R11 K18 ["console"]
       95 GETUPVAL                         R12 6
       96 GETTABLEKS                       R12 R12 K19 ["displayName"]
       98 SETTABLEKS                       R12 R11 K19 ["displayName"]
      100 SETTABLEKS                       R6 R11 K20 ["failureMessage"]
      102 SETTABLEKS                       R1 R11 K21 ["numFailingTests"]
      104 SETTABLEKS                       R2 R11 K22 ["numPassingTests"]
      106 SETTABLEKS                       R3 R11 K23 ["numPendingTests"]
      108 SETTABLEKS                       R4 R11 K24 ["numTodoTests"]
      110 SETTABLEKS                       R7 R11 K25 ["testExecError"]
      112 GETUPVAL                         R12 8
      113 SETTABLEKS                       R12 R11 K26 ["testFilePath"]
      115 SETTABLEKS                       R5 R11 K3 ["testResults"]
      117 CALL                             R8 3 -1
      118 CLOSEUPVALS                      R1
      119 RETURN                           R8 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["config"]
        2 GETTABLEKS                       R2 R0 K1 ["globalConfig"]
        4 GETTABLEKS                       R3 R0 K2 ["testPath"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["resolve"]
        9 CALL                             R4 0 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          UPVAL U7
       22 CAPTURE                          UPVAL U8
       23 CAPTURE                          UPVAL U9
       24 NAMECALL                         R4 R4 K4 ["andThen"]
       26 CALL                             R4 2 -1
       27 RETURN                           R4 -1

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["name"]
        2 JUMPIFNOTEQKS                    R2 K1 ["test_retry"] ; [+5]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R2 R2 K2 ["clear"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["name"]
        3 JUMPIFNOTEQKS                    R0 K1 ["test_start"] ; [+12]
        5 GETUPVAL                         R0 1
        6 DUPTABLE                         R1 K3 [{"currentTestName"}]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K4 ["test"]
       11 CALL                             R2 1 1
       12 SETTABLEKS                       R2 R1 K2 ["currentTestName"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["name"]
       19 JUMPIFNOTEQKS                    R0 K5 ["test_done"] ; [+12]
       21 GETUPVAL                         R0 3
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K4 ["test"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 4
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K4 ["test"]
       30 CALL                             R0 1 0
       31 RETURN                           R0 0
       32 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 NAMECALL                         R2 R2 K1 ["andThen"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["error"]
        2 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["map"]
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K1 [PROTO_23]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["concat"]
       11 GETTABLEKS                       R4 R0 K3 ["errors"]
       13 MOVE                             R5 R2
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R0 K3 ["errors"]
       17 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R1 R1 K0 ["suppressedErrors"]
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K1 [{"suppressedErrors"}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K0 ["suppressedErrors"]
       10 CALL                             R2 1 0
       11 LENGTH                           R2 R1
       12 JUMPIFEQKN                       R2 K2 [0] ; [+10]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K3 ["concat"]
       17 GETTABLEKS                       R3 R0 K4 ["errors"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R0 K4 ["errors"]
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Array"]
       18 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       20 GETTABLEKS                       R4 R1 K8 ["Object"]
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Promise"]
       26 CALL                             R5 1 1
       27 NEWTABLE                         R6 2 0
       29 GETIMPORT                        R7 K4 [require]
       31 GETTABLEKS                       R8 R0 K10 ["Throat"]
       33 CALL                             R7 1 1
       34 GETIMPORT                        R8 K4 [require]
       36 GETTABLEKS                       R9 R0 K11 ["JestEnvironment"]
       38 CALL                             R8 1 1
       39 GETIMPORT                        R9 K4 [require]
       41 GETTABLEKS                       R10 R0 K12 ["JestTestResult"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R9 K13 ["createEmptyTestResult"]
       46 GETIMPORT                        R11 K4 [require]
       48 GETTABLEKS                       R12 R0 K14 ["JestTypes"]
       50 CALL                             R11 1 1
       51 GETIMPORT                        R12 K4 [require]
       53 GETTABLEKS                       R13 R0 K15 ["Expect"]
       55 CALL                             R12 1 1
       56 GETTABLEKS                       R13 R12 K16 ["extractExpectedAssertionsErrors"]
       58 GETTABLEKS                       R14 R12 K17 ["getState"]
       60 GETTABLEKS                       R15 R12 K18 ["setState"]
       62 GETIMPORT                        R16 K4 [require]
       64 GETTABLEKS                       R17 R0 K19 ["JestEach"]
       66 CALL                             R16 1 1
       67 GETTABLEKS                       R16 R16 K20 ["bind"]
       69 GETIMPORT                        R17 K4 [require]
       71 GETTABLEKS                       R18 R0 K21 ["JestMessageUtil"]
       73 CALL                             R17 1 1
       74 GETTABLEKS                       R18 R17 K22 ["formatExecError"]
       76 GETTABLEKS                       R19 R17 K23 ["formatResultsErrors"]
       78 GETIMPORT                        R20 K4 [require]
       80 GETTABLEKS                       R21 R0 K24 ["JestSnapshot"]
       82 CALL                             R20 1 1
       83 GETTABLEKS                       R21 R20 K25 ["SnapshotState"]
       85 GETTABLEKS                       R22 R20 K26 ["addSerializer"]
       87 GETTABLEKS                       R23 R20 K27 ["buildSnapshotResolver"]
       89 GETIMPORT                        R24 K4 [require]
       91 GETIMPORT                        R25 K1 [script]
       93 GETTABLEKS                       R25 R25 K2 ["Parent"]
       95 GETTABLEKS                       R25 R25 K2 ["Parent"]
       97 CALL                             R24 1 1
       98 GETTABLEKS                       R24 R24 K28 ["default"]
      100 GETIMPORT                        R25 K4 [require]
      102 GETIMPORT                        R26 K1 [script]
      104 GETTABLEKS                       R26 R26 K2 ["Parent"]
      106 GETTABLEKS                       R26 R26 K2 ["Parent"]
      108 GETTABLEKS                       R26 R26 K29 ["run"]
      110 CALL                             R25 1 1
      111 GETTABLEKS                       R25 R25 K28 ["default"]
      113 GETIMPORT                        R26 K4 [require]
      115 GETIMPORT                        R27 K1 [script]
      117 GETTABLEKS                       R27 R27 K2 ["Parent"]
      119 GETTABLEKS                       R27 R27 K2 ["Parent"]
      121 GETTABLEKS                       R27 R27 K30 ["state"]
      123 CALL                             R26 1 1
      124 GETTABLEKS                       R27 R26 K31 ["ROOT_DESCRIBE_BLOCK_NAME"]
      126 GETTABLEKS                       R28 R26 K32 ["addEventHandler"]
      128 GETTABLEKS                       R29 R26 K33 ["dispatch"]
      130 GETTABLEKS                       R30 R26 K17 ["getState"]
      132 GETIMPORT                        R31 K4 [require]
      134 GETIMPORT                        R32 K1 [script]
      136 GETTABLEKS                       R32 R32 K2 ["Parent"]
      138 GETTABLEKS                       R32 R32 K2 ["Parent"]
      140 GETTABLEKS                       R32 R32 K34 ["utils"]
      142 CALL                             R31 1 1
      143 GETTABLEKS                       R31 R31 K35 ["getTestID"]
      145 GETIMPORT                        R32 K4 [require]
      147 GETIMPORT                        R33 K1 [script]
      149 GETTABLEKS                       R33 R33 K2 ["Parent"]
      151 GETTABLEKS                       R33 R33 K36 ["jestExpect"]
      153 CALL                             R32 1 1
      154 GETTABLEKS                       R33 R32 K28 ["default"]
      156 LOADNIL                          R34
      157 LOADNIL                          R35
      158 LOADNIL                          R36
      159 LOADNIL                          R37
      160 NEWCLOSURE                       R38 P0
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R30
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R24
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R28
      168 CAPTURE                          REF R35
      169 CAPTURE                          VAL R33
      170 CAPTURE                          VAL R29
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R21
      175 CAPTURE                          VAL R15
      176 CAPTURE                          REF R34
      177 SETTABLEKS                       R38 R6 K37 ["initialize"]
      179 DUPCLOSURE                       R39 K38 [PROTO_18]
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R27
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R19
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R29
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R10
      190 SETTABLEKS                       R39 R6 K39 ["runAndTransformResultsToJestFormat"]
      192 DUPCLOSURE                       R34 K40 [PROTO_20]
      193 NEWCLOSURE                       R35 P3
      194 CAPTURE                          VAL R5
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R31
      197 CAPTURE                          REF R37
      198 CAPTURE                          REF R36
      199 DUPCLOSURE                       R36 K41 [PROTO_24]
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R2
      202 DUPCLOSURE                       R37 K42 [PROTO_25]
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R2
      206 CLOSEUPVALS                      R34
      207 RETURN                           R6 1

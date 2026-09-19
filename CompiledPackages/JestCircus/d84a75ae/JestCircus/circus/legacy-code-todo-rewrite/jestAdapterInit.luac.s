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
      126 DUPTABLE                         R4 K26 [{["name"] = "setup", ["parentProcess"], ["runtimeGlobals"], ["testNamePattern"]}]
      127 GETUPVAL                         R5 13
      128 SETTABLEKS                       R5 R4 K23 ["parentProcess"]
      130 SETTABLEKS                       R2 R4 K24 ["runtimeGlobals"]
      132 GETUPVAL                         R5 0
      133 GETTABLEKS                       R5 R5 K25 ["testNamePattern"]
      135 SETTABLEKS                       R5 R4 K25 ["testNamePattern"]
      137 CALL                             R3 1 1
      138 NAMECALL                         R3 R3 K16 ["expect"]
      140 CALL                             R3 1 0
      141 GETUPVAL                         R3 11
      142 GETTABLEKS                       R3 R3 K27 ["testLocationInResults"]
      144 JUMPIFNOT                        R3 ; [+6]
      145 GETUPVAL                         R3 12
      146 DUPTABLE                         R4 K29 [{["name"] = "include_test_location_in_result"}]
      147 CALL                             R3 1 1
      148 NAMECALL                         R3 R3 K16 ["expect"]
      150 CALL                             R3 1 0
      151 GETUPVAL                         R3 14
      152 GETTABLEKS                       R3 R3 K30 ["forEach"]
      154 GETUPVAL                         R4 14
      155 GETTABLEKS                       R4 R4 K31 ["reverse"]
      157 GETUPVAL                         R5 14
      158 GETTABLEKS                       R5 R5 K32 ["concat"]
      160 GETUPVAL                         R6 11
      161 GETTABLEKS                       R6 R6 K33 ["snapshotSerializers"]
      163 CALL                             R5 1 -1
      164 CALL                             R4 -1 1
      165 NEWCLOSURE                       R5 P2
      166 CAPTURE                          UPVAL U15
      167 CAPTURE                          UPVAL U16
      168 CALL                             R3 2 0
      169 GETUPVAL                         R3 0
      170 GETTABLEKS                       R3 R3 K34 ["expand"]
      172 GETUPVAL                         R4 0
      173 GETTABLEKS                       R4 R4 K35 ["updateSnapshot"]
      175 GETUPVAL                         R5 17
      176 GETUPVAL                         R6 11
      177 GETUPVAL                         R7 16
      178 CALL                             R5 2 1
      179 NAMECALL                         R5 R5 K16 ["expect"]
      181 CALL                             R5 1 1
      182 GETUPVAL                         R8 18
      183 NAMECALL                         R6 R5 K36 ["resolveSnapshotPath"]
      185 CALL                             R6 2 1
      186 GETUPVAL                         R7 19
      187 GETTABLEKS                       R7 R7 K37 ["new"]
      189 MOVE                             R8 R6
      190 DUPTABLE                         R9 K39 [{"expand", "snapshotFormat", "updateSnapshot"}]
      191 SETTABLEKS                       R3 R9 K34 ["expand"]
      193 GETUPVAL                         R10 11
      194 GETTABLEKS                       R10 R10 K38 ["snapshotFormat"]
      196 SETTABLEKS                       R10 R9 K38 ["snapshotFormat"]
      198 SETTABLEKS                       R4 R9 K35 ["updateSnapshot"]
      200 CALL                             R7 2 1
      201 GETUPVAL                         R8 20
      202 DUPTABLE                         R9 K42 [{"snapshotState", "testPath"}]
      203 SETTABLEKS                       R7 R9 K40 ["snapshotState"]
      205 GETUPVAL                         R10 18
      206 SETTABLEKS                       R10 R9 K41 ["testPath"]
      208 CALL                             R8 1 0
      209 GETUPVAL                         R8 6
      210 GETUPVAL                         R9 21
      211 MOVE                             R10 R7
      212 CALL                             R9 1 -1
      213 CALL                             R8 -1 0
      214 GETUPVAL                         R8 22
      215 JUMPIFEQKNIL                     R8 ; [+9]
      217 GETUPVAL                         R8 6
      218 GETUPVAL                         R9 23
      219 GETUPVAL                         R10 24
      220 GETUPVAL                         R11 18
      221 CALL                             R10 1 1
      222 GETUPVAL                         R11 22
      223 CALL                             R9 2 -1
      224 CALL                             R8 -1 0
      225 DUPTABLE                         R8 K44 [{"globals", "snapshotState"}]
      226 SETTABLEKS                       R1 R8 K43 ["globals"]
      228 SETTABLEKS                       R7 R8 K40 ["snapshotState"]
      230 RETURN                           R8 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["config"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETTABLEKS                       R3 R0 K2 ["globalConfig"]
        6 GETTABLEKS                       R4 R0 K3 ["localRequire"]
        8 GETTABLEKS                       R5 R0 K4 ["parentProcess"]
       10 GETTABLEKS                       R6 R0 K5 ["sendMessageToJest"]
       12 GETTABLEKS                       R7 R0 K6 ["setGlobalsForRuntime"]
       14 GETTABLEKS                       R8 R0 K7 ["testPath"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K8 ["resolve"]
       19 CALL                             R9 0 1
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          VAL R7
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U9
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U10
       36 CAPTURE                          UPVAL U11
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U12
       39 CAPTURE                          VAL R8
       40 CAPTURE                          UPVAL U13
       41 CAPTURE                          UPVAL U14
       42 CAPTURE                          UPVAL U15
       43 CAPTURE                          VAL R6
       44 CAPTURE                          UPVAL U16
       45 CAPTURE                          UPVAL U17
       46 NAMECALL                         R9 R9 K9 ["andThen"]
       48 CALL                             R9 2 -1
       49 RETURN                           R9 -1

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
       34 GETTABLEKS                       R8 R7 K11 ["default"]
       36 GETIMPORT                        R9 K4 [require]
       38 GETTABLEKS                       R10 R0 K12 ["JestEnvironment"]
       40 CALL                             R9 1 1
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R0 K13 ["JestTestResult"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R11 R10 K14 ["createEmptyTestResult"]
       48 GETIMPORT                        R12 K4 [require]
       50 GETTABLEKS                       R13 R0 K15 ["JestTypes"]
       52 CALL                             R12 1 1
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R0 K16 ["Expect"]
       57 CALL                             R13 1 1
       58 GETTABLEKS                       R14 R13 K17 ["extractExpectedAssertionsErrors"]
       60 GETTABLEKS                       R15 R13 K18 ["getState"]
       62 GETTABLEKS                       R16 R13 K19 ["setState"]
       64 GETIMPORT                        R17 K4 [require]
       66 GETTABLEKS                       R18 R0 K20 ["JestEach"]
       68 CALL                             R17 1 1
       69 GETTABLEKS                       R17 R17 K21 ["bind"]
       71 GETIMPORT                        R18 K4 [require]
       73 GETTABLEKS                       R19 R0 K22 ["JestMessageUtil"]
       75 CALL                             R18 1 1
       76 GETTABLEKS                       R19 R18 K23 ["formatExecError"]
       78 GETTABLEKS                       R20 R18 K24 ["formatResultsErrors"]
       80 GETIMPORT                        R21 K4 [require]
       82 GETTABLEKS                       R22 R0 K25 ["JestSnapshot"]
       84 CALL                             R21 1 1
       85 GETTABLEKS                       R22 R21 K26 ["SnapshotState"]
       87 GETTABLEKS                       R23 R21 K27 ["addSerializer"]
       89 GETTABLEKS                       R24 R21 K28 ["buildSnapshotResolver"]
       91 GETIMPORT                        R25 K4 [require]
       93 GETIMPORT                        R26 K1 [script]
       95 GETTABLEKS                       R26 R26 K2 ["Parent"]
       97 GETTABLEKS                       R26 R26 K2 ["Parent"]
       99 CALL                             R25 1 1
      100 GETTABLEKS                       R25 R25 K11 ["default"]
      102 GETIMPORT                        R26 K4 [require]
      104 GETIMPORT                        R27 K1 [script]
      106 GETTABLEKS                       R27 R27 K2 ["Parent"]
      108 GETTABLEKS                       R27 R27 K2 ["Parent"]
      110 GETTABLEKS                       R27 R27 K29 ["run"]
      112 CALL                             R26 1 1
      113 GETTABLEKS                       R26 R26 K11 ["default"]
      115 GETIMPORT                        R27 K4 [require]
      117 GETIMPORT                        R28 K1 [script]
      119 GETTABLEKS                       R28 R28 K2 ["Parent"]
      121 GETTABLEKS                       R28 R28 K2 ["Parent"]
      123 GETTABLEKS                       R28 R28 K30 ["state"]
      125 CALL                             R27 1 1
      126 GETTABLEKS                       R28 R27 K31 ["ROOT_DESCRIBE_BLOCK_NAME"]
      128 GETTABLEKS                       R29 R27 K32 ["addEventHandler"]
      130 GETTABLEKS                       R30 R27 K33 ["dispatch"]
      132 GETTABLEKS                       R31 R27 K18 ["getState"]
      134 GETIMPORT                        R32 K4 [require]
      136 GETIMPORT                        R33 K1 [script]
      138 GETTABLEKS                       R33 R33 K2 ["Parent"]
      140 GETTABLEKS                       R33 R33 K2 ["Parent"]
      142 GETTABLEKS                       R33 R33 K34 ["testCaseReportHandler"]
      144 CALL                             R32 1 1
      145 GETTABLEKS                       R32 R32 K11 ["default"]
      147 GETIMPORT                        R33 K4 [require]
      149 GETIMPORT                        R34 K1 [script]
      151 GETTABLEKS                       R34 R34 K2 ["Parent"]
      153 GETTABLEKS                       R34 R34 K2 ["Parent"]
      155 GETTABLEKS                       R34 R34 K35 ["utils"]
      157 CALL                             R33 1 1
      158 GETTABLEKS                       R33 R33 K36 ["getTestID"]
      160 GETIMPORT                        R34 K4 [require]
      162 GETIMPORT                        R35 K1 [script]
      164 GETTABLEKS                       R35 R35 K2 ["Parent"]
      166 GETTABLEKS                       R35 R35 K37 ["jestExpect"]
      168 CALL                             R34 1 1
      169 GETTABLEKS                       R35 R34 K11 ["default"]
      171 GETIMPORT                        R36 K4 [require]
      173 GETTABLEKS                       R37 R0 K38 ["RobloxShared"]
      175 CALL                             R36 1 1
      176 GETTABLEKS                       R37 R36 K39 ["getRelativePath"]
      178 LOADNIL                          R38
      179 LOADNIL                          R39
      180 LOADNIL                          R40
      181 LOADNIL                          R41
      182 NEWCLOSURE                       R42 P0
      183 CAPTURE                          VAL R5
      184 CAPTURE                          VAL R31
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R25
      188 CAPTURE                          VAL R17
      189 CAPTURE                          VAL R29
      190 CAPTURE                          REF R39
      191 CAPTURE                          VAL R35
      192 CAPTURE                          VAL R30
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R23
      195 CAPTURE                          VAL R24
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R16
      198 CAPTURE                          REF R38
      199 CAPTURE                          VAL R32
      200 CAPTURE                          VAL R37
      201 SETTABLEKS                       R42 R6 K40 ["initialize"]
      203 DUPCLOSURE                       R43 K41 [PROTO_18]
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R26
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R28
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R19
      211 CAPTURE                          VAL R30
      212 CAPTURE                          VAL R4
      213 CAPTURE                          VAL R11
      214 SETTABLEKS                       R43 R6 K42 ["runAndTransformResultsToJestFormat"]
      216 DUPCLOSURE                       R38 K43 [PROTO_20]
      217 NEWCLOSURE                       R39 P3
      218 CAPTURE                          VAL R5
      219 CAPTURE                          VAL R16
      220 CAPTURE                          VAL R33
      221 CAPTURE                          REF R41
      222 CAPTURE                          REF R40
      223 DUPCLOSURE                       R40 K44 [PROTO_24]
      224 CAPTURE                          VAL R14
      225 CAPTURE                          VAL R2
      226 DUPCLOSURE                       R41 K45 [PROTO_25]
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R16
      229 CAPTURE                          VAL R2
      230 CLOSEUPVALS                      R38
      231 RETURN                           R6 1

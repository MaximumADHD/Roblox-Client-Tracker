PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["reset"]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["bold"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["bgRed"]
       10 GETVARARGS                       R3 -1
       11 CALL                             R2 -1 -1
       12 CALL                             R1 -1 -1
       13 CALL                             R0 -1 -1
       14 RETURN                           R0 -1

PROTO_1:
        0 DIVK                             R3 R0 K0 [1024]
        1 DIVK                             R2 R3 K0 [1024]
        2 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        3 GETIMPORT                        R1 K3 [math.floor]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["testFilePath"]
        2 GETUPVAL                         R4 0
        3 OR                               R5 R2 R1
        4 MOVE                             R6 R3
        5 CALL                             R4 2 1
        6 GETTABLEKS                       R5 R0 K1 ["numFailingTests"]
        8 JUMPIFNOTEQKNIL                  R5 ; [+4]
       10 LOADN                            R5 0
       11 SETTABLEKS                       R5 R0 K1 ["numFailingTests"]
       13 GETTABLEKS                       R6 R0 K1 ["numFailingTests"]
       15 LOADN                            R7 0
       16 JUMPIFLT                         R7 R6 ; [+5]
       18 GETTABLEKS                       R6 R0 K2 ["testExecError"]
       20 JUMPIFEQKNIL                     R6 ; [+3]
       22 GETUPVAL                         R5 1
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R5 2
       25 NEWTABLE                         R6 0 0
       27 GETTABLEKS                       R7 R0 K3 ["perfStats"]
       29 JUMPIFEQKNIL                     R7 ; [+26]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R7 R7 K4 ["toJSBoolean"]
       34 GETTABLEKS                       R8 R0 K3 ["perfStats"]
       36 GETTABLEKS                       R8 R8 K5 ["slow"]
       38 CALL                             R7 1 1
       39 JUMPIFNOT                        R7 ; [+16]
       40 GETTABLEKS                       R8 R0 K3 ["perfStats"]
       42 GETTABLEKS                       R8 R8 K7 ["runtime"]
       44 DIVK                             R7 R8 K6 [1000]
       45 MOVE                             R9 R6
       46 GETUPVAL                         R10 4
       47 GETUPVAL                         R11 5
       48 MOVE                             R12 R7
       49 LOADN                            R13 0
       50 CALL                             R11 2 -1
       51 CALL                             R10 -1 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R8 K10 [table.insert]
       55 CALL                             R8 -1 0
       56 GETTABLEKS                       R7 R0 K11 ["memoryUsage"]
       58 JUMPIFEQKNIL                     R7 ; [+24]
       60 DUPCLOSURE                       R7 K12 [PROTO_1]
       61 MOVE                             R9 R6
       62 LOADK                            R10 K13 [" %sMB heap size"]
       63 GETTABLEKS                       R14 R0 K11 ["memoryUsage"]
       65 DIVK                             R17 R14 K14 [1024]
       66 DIVK                             R16 R17 K14 [1024]
       67 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       68 GETIMPORT                        R15 K17 [math.floor]
       70 CALL                             R15 1 1
       71 MOVE                             R13 R15
       72 FASTCALL1                        TOSTRING R13 ; [+2]
       73 GETIMPORT                        R12 K19 [tostring]
       75 CALL                             R12 1 1
       76 NAMECALL                         R10 R10 K20 ["format"]
       78 CALL                             R10 2 -1
       79 FASTCALL                         TABLE_INSERT ; [+2]
       80 GETIMPORT                        R8 K10 [table.insert]
       82 CALL                             R8 -1 0
       83 JUMPIFEQKNIL                     R2 ; [+15]
       85 GETUPVAL                         R8 3
       86 GETTABLEKS                       R8 R8 K4 ["toJSBoolean"]
       88 GETTABLEKS                       R9 R2 K21 ["displayName"]
       90 CALL                             R8 1 1
       91 JUMPIFNOT                        R8 ; [+7]
       92 GETUPVAL                         R10 6
       93 MOVE                             R11 R2
       94 CALL                             R10 1 1
       95 MOVE                             R8 R10
       96 LOADK                            R9 K22 [" "]
       97 CONCAT                           R7 R8 R9
       98 JUMP                             ; [+1]
       99 LOADK                            R7 K23 [""]
      100 GETIMPORT                        R8 K25 [string.format]
      102 LOADK                            R9 K26 ["%s %s%s %s"]
      103 MOVE                             R10 R5
      104 MOVE                             R11 R7
      105 MOVE                             R12 R4
      106 GETIMPORT                        R13 K28 [table.concat]
      108 MOVE                             R14 R6
      109 LOADK                            R15 K22 [" "]
      110 CALL                             R13 2 -1
      111 CALL                             R8 -1 -1
      112 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       14 NEWTABLE                         R4 1 0
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R1 K7 ["ChalkLua"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R1 K8 ["JestTestResult"]
       25 CALL                             R6 1 1
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R1 K9 ["JestTypes"]
       30 CALL                             R7 1 1
       31 GETIMPORT                        R8 K4 [require]
       33 GETTABLEKS                       R9 R1 K10 ["JestUtil"]
       35 CALL                             R8 1 1
       36 GETTABLEKS                       R8 R8 K11 ["formatTime"]
       38 GETIMPORT                        R9 K4 [require]
       40 GETTABLEKS                       R10 R0 K12 ["utils"]
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R10 R9 K13 ["formatTestPath"]
       45 GETTABLEKS                       R11 R9 K14 ["printDisplayName"]
       47 DUPCLOSURE                       R12 K15 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 GETTABLEKS                       R14 R5 K16 ["supportsColor"]
       51 JUMPIFEQKNIL                     R14 ; [+5]
       53 GETTABLEKS                       R14 R5 K16 ["supportsColor"]
       55 JUMPIFNOTEQKB                    R14 TRUE ; [+19]
       57 GETTABLEKS                       R13 R5 K17 ["reset"]
       59 GETTABLEKS                       R14 R5 K18 ["inverse"]
       61 GETTABLEKS                       R15 R5 K19 ["bold"]
       63 GETTABLEKS                       R16 R5 K20 ["red"]
       65 GETIMPORT                        R17 K23 [string.format]
       67 LOADK                            R18 K24 [" %s "]
       68 LOADK                            R19 K25 ["FAIL"]
       69 CALL                             R17 2 -1
       70 CALL                             R16 -1 -1
       71 CALL                             R15 -1 -1
       72 CALL                             R14 -1 -1
       73 CALL                             R13 -1 1
       74 JUMP                             ; [+1]
       75 LOADK                            R13 K25 ["FAIL"]
       76 GETTABLEKS                       R15 R5 K16 ["supportsColor"]
       78 JUMPIFEQKNIL                     R15 ; [+5]
       80 GETTABLEKS                       R15 R5 K16 ["supportsColor"]
       82 JUMPIFNOTEQKB                    R15 TRUE ; [+19]
       84 GETTABLEKS                       R14 R5 K17 ["reset"]
       86 GETTABLEKS                       R15 R5 K18 ["inverse"]
       88 GETTABLEKS                       R16 R5 K19 ["bold"]
       90 GETTABLEKS                       R17 R5 K26 ["green"]
       92 GETIMPORT                        R18 K23 [string.format]
       94 LOADK                            R19 K24 [" %s "]
       95 LOADK                            R20 K27 ["PASS"]
       96 CALL                             R18 2 -1
       97 CALL                             R17 -1 -1
       98 CALL                             R16 -1 -1
       99 CALL                             R15 -1 -1
      100 CALL                             R14 -1 1
      101 JUMP                             ; [+1]
      102 LOADK                            R14 K27 ["PASS"]
      103 DUPCLOSURE                       R15 K28 [PROTO_2]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R11
      111 SETTABLEKS                       R15 R4 K29 ["default"]
      113 RETURN                           R4 1

PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["resolve"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["getTestPaths"]
        6 CALL                             R0 4 1
        7 NAMECALL                         R0 R0 K1 ["expect"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R1 R2 K2 ["all"]
       13 GETUPVAL                         R3 5
       14 GETTABLEKS                       R2 R3 K3 ["map"]
       16 GETTABLEKS                       R3 R0 K4 ["tests"]
       18 DUPCLOSURE                       R4 K5 [PROTO_0]
       19 CAPTURE                          UPVAL U4
       20 CALL                             R2 2 -1
       21 CALL                             R1 -1 1
       22 NAMECALL                         R1 R1 K1 ["expect"]
       24 CALL                             R1 1 1
       25 GETUPVAL                         R3 5
       26 GETTABLEKS                       R2 R3 K6 ["filter"]
       28 GETTABLEKS                       R3 R0 K4 ["tests"]
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          VAL R1
       32 CALL                             R2 2 1
       33 GETUPVAL                         R4 6
       34 GETTABLEKS                       R3 R4 K7 ["assign"]
       36 NEWTABLE                         R4 0 0
       38 MOVE                             R5 R0
       39 DUPTABLE                         R6 K9 [{"allTests", "tests"}]
       40 LENGTH                           R7 R2
       41 SETTABLEKS                       R7 R6 K8 ["allTests"]
       43 SETTABLEKS                       R2 R6 K4 ["tests"]
       45 CALL                             R3 3 -1
       46 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R6 R7 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R3
        8 CAPTURE                          VAL R5
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NAMECALL                         R6 R6 K1 ["andThen"]
       14 CALL                             R6 2 -1
       15 RETURN                           R6 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["outputFile"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R1 R3 K1 ["json"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["onComplete"]
        9 GETUPVAL                         R3 1
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K3 ["openHandles"]
       14 JUMPIFNOT                        R1 ; [+53]
       15 JUMPIFNOT                        R0 ; [+39]
       16 GETUPVAL                         R3 2
       17 JUMPIFNOT                        R3 ; [+37]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K4 ["toJSBoolean"]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+31]
       24 GETUPVAL                         R3 4
       25 MOVE                             R4 R0
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 2
       28 MOVE                             R5 R0
       29 GETUPVAL                         R7 5
       30 GETTABLEKS                       R6 R7 K5 ["stringify"]
       32 GETUPVAL                         R7 6
       33 GETUPVAL                         R8 1
       34 CALL                             R7 1 -1
       35 CALL                             R6 -1 -1
       36 NAMECALL                         R3 R3 K6 ["WriteFile"]
       38 CALL                             R3 -1 0
       39 GETUPVAL                         R4 7
       40 GETTABLEKS                       R3 R4 K7 ["stdout"]
       42 LOADK                            R5 K8 ["Test results written to: %s\n"]
       43 FASTCALL1                        TOSTRING R0 ; [+3]
       44 MOVE                             R8 R0
       45 GETIMPORT                        R7 K10 [tostring]
       47 CALL                             R7 1 1
       48 NAMECALL                         R5 R5 K11 ["format"]
       50 CALL                             R5 2 -1
       51 NAMECALL                         R3 R3 K12 ["write"]
       53 CALL                             R3 -1 0
       54 JUMP                             ; [+13]
       55 GETUPVAL                         R4 7
       56 GETTABLEKS                       R3 R4 K7 ["stdout"]
       58 GETUPVAL                         R6 5
       59 GETTABLEKS                       R5 R6 K5 ["stringify"]
       61 GETUPVAL                         R6 6
       62 GETUPVAL                         R7 1
       63 CALL                             R6 1 -1
       64 CALL                             R5 -1 -1
       65 NAMECALL                         R3 R3 K12 ["write"]
       67 CALL                             R3 -1 0
       68 JUMPIFEQKNIL                     R2 ; [+4]
       70 MOVE                             R3 R2
       71 GETUPVAL                         R4 1
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 NAMECALL                         R2 R2 K1 ["andThen"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 3
        5 GETUPVAL                         R4 4
        6 GETUPVAL                         R6 5
        7 GETTABLEKS                       R5 R6 K0 ["resolve"]
        9 CALL                             R5 0 1
       10 LOADNIL                          R8
       11 NEWCLOSURE                       R7 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R8
       15 CAPTURE                          VAL R4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 NAMECALL                         R5 R5 K1 ["andThen"]
       21 CALL                             R5 2 1
       22 MOVE                             R1 R5
       23 NAMECALL                         R1 R1 K2 ["expect"]
       25 CALL                             R1 1 1
       26 GETUPVAL                         R3 6
       27 GETTABLEKS                       R2 R3 K3 ["concat"]
       29 GETUPVAL                         R3 8
       30 GETTABLEKS                       R4 R1 K4 ["tests"]
       32 CALL                             R2 2 1
       33 SETUPVAL                         R2 8
       34 DUPTABLE                         R2 K7 [{"context", "matches"}]
       35 GETUPVAL                         R3 9
       36 SETTABLEKS                       R3 R2 K5 ["context"]
       38 SETTABLEKS                       R1 R2 K6 ["matches"]
       40 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R2 K1 ["andThen"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R3 R0 K0 ["script"]
        5 NAMECALL                         R1 R1 K1 ["GetScriptFilePath"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETTABLEKS                       R1 R0 K2 ["path"]
       11 RETURN                           R1 1

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["map"]
        5 GETUPVAL                         R2 1
        6 DUPCLOSURE                       R3 K1 [PROTO_6]
        7 CAPTURE                          UPVAL U2
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R2 R3 K2 ["all"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["map"]
       15 GETUPVAL                         R4 1
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          REF R0
       25 CALL                             R3 2 -1
       26 CALL                             R2 -1 1
       27 NAMECALL                         R2 R2 K3 ["expect"]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R3 R4 K4 ["listTests"]
       33 JUMPIFNOT                        R3 ; [+48]
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K5 ["from"]
       37 GETUPVAL                         R5 8
       38 GETTABLEKS                       R4 R5 K6 ["new"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K0 ["map"]
       43 MOVE                             R6 R0
       44 DUPCLOSURE                       R7 K7 [PROTO_9]
       45 CAPTURE                          UPVAL U9
       46 CALL                             R5 2 -1
       47 CALL                             R4 -1 -1
       48 CALL                             R3 -1 1
       49 GETUPVAL                         R5 4
       50 GETTABLEKS                       R4 R5 K8 ["json"]
       52 JUMPIFNOT                        R4 ; [+10]
       53 GETUPVAL                         R5 10
       54 GETTABLEKS                       R4 R5 K9 ["log"]
       56 GETUPVAL                         R6 11
       57 GETTABLEKS                       R5 R6 K10 ["stringify"]
       59 MOVE                             R6 R3
       60 CALL                             R5 1 -1
       61 CALL                             R4 -1 0
       62 JUMP                             ; [+10]
       63 GETUPVAL                         R5 10
       64 GETTABLEKS                       R4 R5 K9 ["log"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R5 R6 K11 ["join"]
       69 MOVE                             R6 R3
       70 LOADK                            R7 K12 ["\n"]
       71 CALL                             R5 2 -1
       72 CALL                             R4 -1 0
       73 GETUPVAL                         R4 12
       74 JUMPIFEQKNIL                     R4 ; [+5]
       76 GETUPVAL                         R4 12
       77 GETUPVAL                         R5 13
       78 CALL                             R5 0 -1
       79 CALL                             R4 -1 0
       80 CLOSEUPVALS                      R0
       81 RETURN                           R0 0
       82 LENGTH                           R4 R0
       83 LOADN                            R5 0
       84 JUMPIFLT                         R5 R4 ; [+2]
       86 LOADB                            R3 0 +1
       87 LOADB                            R3 1
       88 JUMPIF                           R3 ; [+33]
       89 GETUPVAL                         R4 14
       90 MOVE                             R5 R2
       91 GETUPVAL                         R6 4
       92 CALL                             R4 2 1
       93 GETUPVAL                         R6 4
       94 GETTABLEKS                       R5 R6 K13 ["passWithNoTests"]
       96 JUMPIFNOT                        R5 ; [+11]
       97 GETUPVAL                         R6 15
       98 GETTABLEKS                       R5 R6 K6 ["new"]
      100 GETUPVAL                         R6 5
      101 GETUPVAL                         R7 5
      102 CALL                             R5 2 1
      103 MOVE                             R7 R4
      104 NAMECALL                         R5 R5 K9 ["log"]
      106 CALL                             R5 2 0
      107 JUMP                             ; [+44]
      108 GETUPVAL                         R6 15
      109 GETTABLEKS                       R5 R6 K6 ["new"]
      111 GETUPVAL                         R6 5
      112 GETUPVAL                         R7 5
      113 CALL                             R5 2 1
      114 MOVE                             R7 R4
      115 NAMECALL                         R5 R5 K14 ["error"]
      117 CALL                             R5 2 0
      118 GETUPVAL                         R5 16
      119 LOADN                            R6 1
      120 CALL                             R5 1 0
      121 JUMP                             ; [+30]
      122 LENGTH                           R4 R0
      123 JUMPIFNOTEQKN                    R4 K15 [1] ; [+28]
      125 GETUPVAL                         R5 4
      126 GETTABLEKS                       R4 R5 K16 ["silent"]
      128 JUMPIFEQKB                       R4 TRUE ; [+23]
      130 GETUPVAL                         R5 4
      131 GETTABLEKS                       R4 R5 K17 ["verbose"]
      133 JUMPIFEQKB                       R4 FALSE ; [+18]
      135 GETUPVAL                         R5 7
      136 GETTABLEKS                       R4 R5 K18 ["assign"]
      138 NEWTABLE                         R5 0 0
      140 GETUPVAL                         R6 4
      141 DUPTABLE                         R7 K19 [{"verbose"}]
      142 LOADB                            R8 1
      143 SETTABLEKS                       R8 R7 K17 ["verbose"]
      145 CALL                             R4 3 1
      146 GETUPVAL                         R6 7
      147 GETTABLEKS                       R5 R6 K20 ["freeze"]
      149 MOVE                             R6 R4
      150 CALL                             R5 1 1
      151 SETUPVAL                         R5 4
      152 GETUPVAL                         R4 17
      153 GETUPVAL                         R5 4
      154 GETUPVAL                         R7 7
      155 GETTABLEKS                       R6 R7 K18 ["assign"]
      157 NEWTABLE                         R7 0 0
      159 DUPTABLE                         R8 K22 [{"startRun"}]
      160 GETUPVAL                         R9 18
      161 SETTABLEKS                       R9 R8 K21 ["startRun"]
      163 GETUPVAL                         R9 19
      164 CALL                             R6 3 -1
      165 CALL                             R4 -1 1
      166 NAMECALL                         R4 R4 K3 ["expect"]
      168 CALL                             R4 1 1
      169 MOVE                             R7 R0
      170 GETUPVAL                         R8 20
      171 NAMECALL                         R5 R4 K23 ["scheduleTests"]
      173 CALL                             R5 3 1
      174 NAMECALL                         R5 R5 K3 ["expect"]
      176 CALL                             R5 1 1
      177 DUPTABLE                         R7 K28 [{"collectHandles", "json", "onComplete", "outputFile", "outputStream"}]
      178 LOADNIL                          R8
      179 SETTABLEKS                       R8 R7 K24 ["collectHandles"]
      181 GETUPVAL                         R9 4
      182 GETTABLEKS                       R8 R9 K8 ["json"]
      184 SETTABLEKS                       R8 R7 K8 ["json"]
      186 GETUPVAL                         R8 12
      187 SETTABLEKS                       R8 R7 K25 ["onComplete"]
      189 GETUPVAL                         R9 4
      190 GETTABLEKS                       R8 R9 K26 ["outputFile"]
      192 SETTABLEKS                       R8 R7 K26 ["outputFile"]
      194 GETUPVAL                         R8 5
      195 SETTABLEKS                       R8 R7 K27 ["outputStream"]
      197 GETUPVAL                         R9 3
      198 GETTABLEKS                       R8 R9 K29 ["resolve"]
      200 CALL                             R8 0 1
      201 NEWCLOSURE                       R10 P3
      202 CAPTURE                          VAL R7
      203 CAPTURE                          VAL R5
      204 CAPTURE                          UPVAL U21
      205 CAPTURE                          UPVAL U22
      206 CAPTURE                          UPVAL U23
      207 CAPTURE                          UPVAL U11
      208 CAPTURE                          UPVAL U24
      209 CAPTURE                          UPVAL U25
      210 NAMECALL                         R8 R8 K30 ["andThen"]
      212 CALL                             R8 2 1
      213 MOVE                             R6 R8
      214 NAMECALL                         R6 R6 K3 ["expect"]
      216 CALL                             R6 1 0
      217 CLOSEUPVALS                      R0
      218 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["contexts"]
        2 GETTABLEKS                       R2 R0 K1 ["globalConfig"]
        4 GETTABLEKS                       R3 R0 K2 ["outputStream"]
        6 GETTABLEKS                       R4 R0 K3 ["testWatcher"]
        8 LOADNIL                          R5
        9 GETTABLEKS                       R6 R0 K4 ["startRun"]
       11 GETTABLEKS                       R7 R0 K5 ["changedFilesPromise"]
       13 GETTABLEKS                       R8 R0 K6 ["onComplete"]
       15 GETTABLEKS                       R9 R0 K7 ["failedTestsCache"]
       17 GETTABLEKS                       R10 R0 K8 ["filter"]
       19 GETUPVAL                         R12 0
       20 GETTABLEKS                       R11 R12 K9 ["resolve"]
       22 CALL                             R11 0 1
       23 NEWCLOSURE                       R13 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R10
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R8
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          UPVAL U10
       40 CAPTURE                          UPVAL U11
       41 CAPTURE                          UPVAL U12
       42 CAPTURE                          VAL R6
       43 CAPTURE                          UPVAL U13
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U14
       46 CAPTURE                          UPVAL U15
       47 CAPTURE                          UPVAL U16
       48 CAPTURE                          UPVAL U17
       49 CAPTURE                          UPVAL U18
       50 NAMECALL                         R11 R11 K10 ["andThen"]
       52 CALL                             R11 2 -1
       53 CLOSEUPVALS                      R2
       54 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETTABLEKS                       R4 R1 K8 ["Set"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETTABLEKS                       R6 R1 K10 ["Boolean"]
       22 GETIMPORT                        R7 K4 [require]
       24 GETTABLEKS                       R8 R0 K11 ["Promise"]
       26 CALL                             R7 1 1
       27 NEWTABLE                         R8 1 0
       29 GETIMPORT                        R10 K4 [require]
       31 GETTABLEKS                       R11 R0 K12 ["JestConsole"]
       33 CALL                             R10 1 1
       34 GETTABLEKS                       R9 R10 K13 ["CustomConsole"]
       36 GETIMPORT                        R10 K4 [require]
       38 GETTABLEKS                       R11 R0 K14 ["JestTestResult"]
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R11 R10 K15 ["formatTestResults"]
       43 GETTABLEKS                       R12 R10 K16 ["makeEmptyAggregatedTestResult"]
       45 GETIMPORT                        R13 K4 [require]
       47 GETTABLEKS                       R14 R0 K17 ["JestTypes"]
       49 CALL                             R13 1 1
       50 GETIMPORT                        R14 K4 [require]
       52 GETTABLEKS                       R15 R0 K18 ["JestRuntime"]
       54 CALL                             R14 1 1
       55 GETIMPORT                        R15 K4 [require]
       57 GETIMPORT                        R18 K1 [script]
       59 GETTABLEKS                       R17 R18 K2 ["Parent"]
       61 GETTABLEKS                       R16 R17 K19 ["SearchSource"]
       63 CALL                             R15 1 1
       64 GETTABLEKS                       R16 R15 K20 ["default"]
       66 GETIMPORT                        R17 K4 [require]
       68 GETIMPORT                        R20 K1 [script]
       70 GETTABLEKS                       R19 R20 K2 ["Parent"]
       72 GETTABLEKS                       R18 R19 K21 ["TestScheduler"]
       74 CALL                             R17 1 1
       75 GETTABLEKS                       R18 R17 K22 ["createTestScheduler"]
       77 GETIMPORT                        R19 K4 [require]
       79 GETIMPORT                        R22 K1 [script]
       81 GETTABLEKS                       R21 R22 K2 ["Parent"]
       83 GETTABLEKS                       R20 R21 K23 ["TestWatcher"]
       85 CALL                             R19 1 1
       86 GETIMPORT                        R21 K4 [require]
       88 GETIMPORT                        R24 K1 [script]
       90 GETTABLEKS                       R23 R24 K2 ["Parent"]
       92 GETTABLEKS                       R22 R23 K24 ["getNoTestsFoundMessage"]
       94 CALL                             R21 1 1
       95 GETTABLEKS                       R20 R21 K20 ["default"]
       97 GETIMPORT                        R21 K4 [require]
       99 GETIMPORT                        R24 K1 [script]
      101 GETTABLEKS                       R23 R24 K2 ["Parent"]
      103 GETTABLEKS                       R22 R23 K25 ["types"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K4 [require]
      108 GETTABLEKS                       R23 R0 K26 ["RobloxShared"]
      110 CALL                             R22 1 1
      111 GETTABLEKS                       R23 R22 K27 ["nodeUtils"]
      113 GETTABLEKS                       R24 R23 K28 ["process"]
      115 GETTABLEKS                       R25 R23 K29 ["exit"]
      117 GETTABLEKS                       R26 R23 K30 ["JSON"]
      119 GETTABLEKS                       R27 R22 K31 ["ensureDirectoryExists"]
      121 GETTABLEKS                       R28 R22 K32 ["getDataModelService"]
      123 MOVE                             R29 R28
      124 LOADK                            R30 K33 ["FileSystemService"]
      125 CALL                             R29 1 1
      126 MOVE                             R30 R28
      127 LOADK                            R31 K34 ["CoreScriptSyncService"]
      128 CALL                             R30 1 1
      129 DUPCLOSURE                       R31 K35 [PROTO_3]
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R3
      133 DUPCLOSURE                       R32 K36 [PROTO_5]
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R29
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R27
      138 CAPTURE                          VAL R26
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R24
      141 DUPTABLE                         R33 K39 [{"firstRun", "previousSuccess"}]
      142 LOADB                            R34 1
      143 SETTABLEKS                       R34 R33 K37 ["firstRun"]
      145 LOADB                            R34 1
      146 SETTABLEKS                       R34 R33 K38 ["previousSuccess"]
      148 DUPCLOSURE                       R34 K40 [PROTO_11]
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R4
      154 CAPTURE                          VAL R30
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R26
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R33
      163 CAPTURE                          VAL R29
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R27
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R24
      168 SETTABLEKS                       R34 R8 K20 ["default"]
      170 RETURN                           R8 1

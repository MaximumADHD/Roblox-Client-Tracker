PROTO_0:
        0 GETIMPORT                        R3 K1 [warn]
        2 LOADK                            R4 K2 ["%s\nAttempted to log \"%s\"."]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K3 ["red"]
        6 LOADK                            R7 K4 ["%s Did you forget to wait for something async in your test?"]
        7 GETUPVAL                         R9 0
        8 GETTABLEKS                       R9 R9 K5 ["bold"]
       10 LOADK                            R10 K6 ["Cannot log after tests are done."]
       11 CALL                             R9 1 -1
       12 NAMECALL                         R7 R7 K7 ["format"]
       14 CALL                             R7 -1 -1
       15 CALL                             R6 -1 1
       16 MOVE                             R7 R2
       17 NAMECALL                         R4 R4 K7 ["format"]
       19 CALL                             R4 3 -1
       20 CALL                             R3 -1 0
       21 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 SETTABLEKS                       R2 R0 K1 ["_log"]
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["write"]
        4 NEWTABLE                         R4 0 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 LOADN                            R7 4
        9 CALL                             R3 4 1
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETUPVAL                         R2 3
        3 GETUPVAL                         R3 4
        4 GETUPVAL                         R4 5
        5 GETUPVAL                         R5 6
        6 CALL                             R0 5 1
        7 NAMECALL                         R0 R0 K0 ["expect"]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [task.delay]
        2 LOADN                            R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setup"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 GETIMPORT                        R1 K3 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          REF R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CALL                             R1 1 2
       19 JUMPIF                           R1 ; [+4]
       20 GETIMPORT                        R3 K5 [error]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 6
       25 GETUPVAL                         R4 3
       26 DUPCLOSURE                       R5 K6 [PROTO_0]
       27 CAPTURE                          UPVAL U7
       28 SETTABLEKS                       R5 R3 K7 ["_log"]
       30 GETTABLEKS                       R6 R0 K8 ["numPassingTests"]
       32 GETTABLEKS                       R7 R0 K9 ["numFailingTests"]
       34 ADD                              R5 R6 R7
       35 GETTABLEKS                       R6 R0 K10 ["numPendingTests"]
       37 ADD                              R4 R5 R6
       38 GETTABLEKS                       R5 R0 K11 ["numTodoTests"]
       40 ADD                              R3 R4 R5
       41 GETIMPORT                        R4 K14 [DateTime.now]
       43 CALL                             R4 0 1
       44 GETTABLEKS                       R4 R4 K15 ["UnixTimestampMillis"]
       46 GETUPVAL                         R6 8
       47 SUB                              R5 R4 R6
       48 NEWTABLE                         R6 4 0
       50 SETTABLEKS                       R4 R6 K16 ["end"]
       52 SETTABLEKS                       R5 R6 K17 ["runtime"]
       54 DIVK                             R8 R5 K18 [1000]
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K19 ["slowTestThreshold"]
       58 JUMPIFLT                         R9 R8 ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 SETTABLEKS                       R7 R6 K20 ["slow"]
       64 GETUPVAL                         R7 8
       65 SETTABLEKS                       R7 R6 K21 ["start"]
       67 SETTABLEKS                       R6 R0 K22 ["perfStats"]
       69 GETUPVAL                         R6 9
       70 JUMPIFNOT                        R6 ; [+8]
       71 GETUPVAL                         R6 9
       72 GETUPVAL                         R8 5
       73 NAMECALL                         R6 R6 K23 ["GetScriptFilePath"]
       75 CALL                             R6 2 1
       76 SETTABLEKS                       R6 R0 K24 ["testFilePath"]
       78 JUMP                             ; [+8]
       79 GETUPVAL                         R6 10
       80 GETUPVAL                         R7 5
       81 GETUPVAL                         R8 3
       82 GETTABLEKS                       R8 R8 K25 ["rootDir"]
       84 CALL                             R6 2 1
       85 SETTABLEKS                       R6 R0 K24 ["testFilePath"]
       87 GETUPVAL                         R6 6
       88 NAMECALL                         R6 R6 K26 ["getBuffer"]
       90 CALL                             R6 1 1
       91 SETTABLEKS                       R6 R0 K27 ["console"]
       93 GETTABLEKS                       R7 R0 K10 ["numPendingTests"]
       95 JUMPIFEQ                         R3 R7 ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 SETTABLEKS                       R6 R0 K28 ["skipped"]
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K29 ["displayName"]
      104 SETTABLEKS                       R6 R0 K29 ["displayName"]
      106 GETUPVAL                         R6 11
      107 GETTABLEKS                       R6 R6 K30 ["new"]
      109 NEWCLOSURE                       R7 P2
      110 CAPTURE                          REF R0
      111 CALL                             R6 1 -1
      112 CLOSEUPVALS                      R0
      113 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["testEnvironment"]
        3 GETIMPORT                        R1 K2 [require]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K2 [require]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["JestCircus"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K4 ["runner"]
       15 GETIMPORT                        R3 K2 [require]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["JestRuntime"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K6 ["new"]
       24 CALL                             R4 0 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U5
       30 LOADNIL                          R6
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K7 ["silent"]
       34 JUMPIFNOT                        R7 ; [+9]
       35 GETUPVAL                         R7 6
       36 GETTABLEKS                       R7 R7 K6 ["new"]
       38 MOVE                             R8 R4
       39 MOVE                             R9 R4
       40 MOVE                             R10 R5
       41 CALL                             R7 3 1
       42 MOVE                             R6 R7
       43 JUMP                             ; [+18]
       44 GETUPVAL                         R7 5
       45 GETTABLEKS                       R7 R7 K8 ["verbose"]
       47 JUMPIFNOT                        R7 ; [+9]
       48 GETUPVAL                         R7 7
       49 GETTABLEKS                       R7 R7 K6 ["new"]
       51 MOVE                             R8 R4
       52 MOVE                             R9 R4
       53 MOVE                             R10 R5
       54 CALL                             R7 3 1
       55 MOVE                             R6 R7
       56 JUMP                             ; [+5]
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R7 R7 K6 ["new"]
       60 CALL                             R7 0 1
       61 MOVE                             R6 R7
       62 GETTABLEKS                       R7 R1 K6 ["new"]
       64 GETUPVAL                         R8 0
       65 DUPTABLE                         R9 K11 [{"console", "testPath"}]
       66 SETTABLEKS                       R6 R9 K9 ["console"]
       68 GETUPVAL                         R10 8
       69 SETTABLEKS                       R10 R9 K10 ["testPath"]
       71 CALL                             R7 2 1
       72 GETTABLEKS                       R9 R7 K12 ["getVmContext"]
       74 FASTCALL1                        TYPEOF R9 ; [+2]
       75 GETIMPORT                        R8 K14 [typeof]
       77 CALL                             R8 1 1
       78 JUMPIFEQKS                       R8 K15 ["function"] ; [+17]
       80 GETIMPORT                        R8 K17 [warn]
       82 LOADK                            R9 K18 ["Test environment found at \"%s\" does not export a \"getVmContext\" method, which is mandatory from Jest 27. This method is a replacement for \"runScript\"."]
       83 FASTCALL1                        TOSTRING R0 ; [+3]
       84 MOVE                             R12 R0
       85 GETIMPORT                        R11 K20 [tostring]
       87 CALL                             R11 1 1
       88 NAMECALL                         R9 R9 K21 ["format"]
       90 CALL                             R9 2 -1
       91 CALL                             R8 -1 0
       92 GETIMPORT                        R8 K23 [error]
       94 LOADN                            R9 1
       95 CALL                             R8 1 0
       96 GETUPVAL                         R8 9
       97 GETTABLEKS                       R9 R7 K24 ["global"]
       99 LOADK                            R10 K9 ["console"]
      100 MOVE                             R11 R6
      101 CALL                             R8 3 0
      102 GETTABLEKS                       R8 R3 K6 ["new"]
      104 GETUPVAL                         R9 0
      105 GETUPVAL                         R10 10
      106 CALL                             R8 2 1
      107 GETIMPORT                        R9 K27 [DateTime.now]
      109 CALL                             R9 0 1
      110 GETTABLEKS                       R9 R9 K28 ["UnixTimestampMillis"]
      112 GETUPVAL                         R10 0
      113 GETTABLEKS                       R10 R10 K29 ["setupFiles"]
      115 LOADNIL                          R11
      116 LOADNIL                          R12
      117 FORGPREP                         R10
      118 MOVE                             R17 R14
      119 NAMECALL                         R15 R8 K30 ["requireModule"]
      121 CALL                             R15 2 0
      122 FORGLOOP                         R10 2 ; [-5]
      124 GETIMPORT                        R10 K32 [pcall]
      126 NEWCLOSURE                       R11 P1
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R2
      129 CAPTURE                          UPVAL U5
      130 CAPTURE                          UPVAL U0
      131 CAPTURE                          VAL R8
      132 CAPTURE                          UPVAL U8
      133 CAPTURE                          REF R6
      134 CAPTURE                          UPVAL U11
      135 CAPTURE                          VAL R9
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          UPVAL U13
      138 CAPTURE                          UPVAL U14
      139 CALL                             R10 1 2
      140 NAMECALL                         R12 R8 K33 ["teardown"]
      142 CALL                             R12 1 0
      143 NAMECALL                         R12 R7 K33 ["teardown"]
      145 CALL                             R12 1 1
      146 NAMECALL                         R12 R12 K34 ["expect"]
      148 CALL                             R12 1 0
      149 JUMPIF                           R10 ; [+4]
      150 GETIMPORT                        R12 K23 [error]
      152 MOVE                             R13 R11
      153 CALL                             R12 1 0
      154 CLOSEUPVALS                      R6
      155 RETURN                           R11 1

PROTO_8:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          VAL R5
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U0
       20 NAMECALL                         R6 R6 K1 ["andThen"]
       22 CALL                             R6 2 -1
       23 RETURN                           R6 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETUPVAL                         R7 6
        7 GETTABLEKS                       R7 R7 K0 ["resolve"]
        9 CALL                             R7 0 1
       10 NEWCLOSURE                       R9 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U11
       18 CAPTURE                          UPVAL U12
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U13
       21 CAPTURE                          VAL R6
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U6
       26 NAMECALL                         R7 R7 K1 ["andThen"]
       28 CALL                             R7 2 1
       29 MOVE                             R0 R7
       30 NAMECALL                         R0 R0 K2 ["expect"]
       32 CALL                             R0 1 1
       33 LOADB                            R1 0
       34 SETTABLEKS                       R1 R0 K3 ["leaks"]
       36 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 NAMECALL                         R6 R6 K1 ["andThen"]
       24 CALL                             R6 2 -1
       25 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Promise"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["RobloxShared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["getRelativePath"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["RobloxShared"]
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R3 R3 K8 ["getDataModelService"]
       26 MOVE                             R4 R3
       27 LOADK                            R5 K9 ["CoreScriptSyncService"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["ChalkLua"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K4 [require]
       36 GETTABLEKS                       R7 R0 K11 ["JestConsole"]
       38 CALL                             R6 1 1
       39 GETTABLEKS                       R7 R6 K12 ["BufferedConsole"]
       41 GETTABLEKS                       R8 R6 K13 ["CustomConsole"]
       43 GETTABLEKS                       R9 R6 K14 ["NullConsole"]
       45 GETTABLEKS                       R10 R6 K15 ["getConsoleOutput"]
       47 GETIMPORT                        R11 K4 [require]
       49 GETTABLEKS                       R12 R0 K16 ["JestEnvironment"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K4 [require]
       54 GETTABLEKS                       R13 R0 K17 ["JestTestResult"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K4 [require]
       59 GETTABLEKS                       R14 R0 K18 ["JestTypes"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K4 [require]
       64 GETTABLEKS                       R15 R0 K19 ["JestUtil"]
       66 CALL                             R14 1 1
       67 GETTABLEKS                       R15 R14 K20 ["setGlobal"]
       69 GETIMPORT                        R16 K4 [require]
       71 GETIMPORT                        R17 K1 [script]
       73 GETTABLEKS                       R17 R17 K2 ["Parent"]
       75 GETTABLEKS                       R17 R17 K21 ["types"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K4 [require]
       80 GETTABLEKS                       R18 R0 K6 ["RobloxShared"]
       82 CALL                             R17 1 1
       83 GETTABLEKS                       R17 R17 K22 ["Writeable"]
       85 DUPCLOSURE                       R18 K23 [PROTO_1]
       86 CAPTURE                          VAL R5
       87 DUPCLOSURE                       R19 K24 [PROTO_8]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R17
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R2
       99 DUPCLOSURE                       R20 K25 [PROTO_10]
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R0
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R2
      111 RETURN                           R20 1

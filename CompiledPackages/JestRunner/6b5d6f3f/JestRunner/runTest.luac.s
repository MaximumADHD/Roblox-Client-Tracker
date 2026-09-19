PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 LOADK                            R4 K1 ["%s\nAttempted to log \"%s\"."]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K2 ["red"]
        7 LOADK                            R7 K3 ["%s Did you forget to wait for something async in your test?"]
        8 GETUPVAL                         R9 1
        9 GETTABLEKS                       R9 R9 K4 ["bold"]
       11 LOADK                            R10 K5 ["Cannot log after tests are done."]
       12 CALL                             R9 1 -1
       13 NAMECALL                         R7 R7 K6 ["format"]
       15 CALL                             R7 -1 -1
       16 CALL                             R6 -1 1
       17 MOVE                             R7 R2
       18 NAMECALL                         R4 R4 K6 ["format"]
       20 CALL                             R4 3 1
       21 GETUPVAL                         R5 2
       22 CALL                             R3 2 1
       23 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 SETTABLEKS                       R2 R0 K1 ["_log"]
        6 RETURN                           R0 0

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
        6 GETUPVAL                         R6 7
        7 CALL                             R0 6 1
        8 NAMECALL                         R0 R0 K0 ["expect"]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = , ["result"]}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K2 ["result"]
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
       18 CAPTURE                          UPVAL U6
       19 CALL                             R1 1 2
       20 JUMPIF                           R1 ; [+2]
       21 GETTABLEKS                       R3 R2 K4 ["stack"]
       23 JUMPIF                           R1 ; [+4]
       24 GETIMPORT                        R3 K6 [error]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 7
       29 GETUPVAL                         R4 3
       30 DUPCLOSURE                       R5 K7 [PROTO_0]
       31 CAPTURE                          UPVAL U8
       32 CAPTURE                          UPVAL U9
       33 CAPTURE                          VAL R5
       34 SETTABLEKS                       R5 R3 K8 ["_log"]
       36 GETTABLEKS                       R6 R0 K9 ["numPassingTests"]
       38 GETTABLEKS                       R7 R0 K10 ["numFailingTests"]
       40 ADD                              R5 R6 R7
       41 GETTABLEKS                       R6 R0 K11 ["numPendingTests"]
       43 ADD                              R4 R5 R6
       44 GETTABLEKS                       R5 R0 K12 ["numTodoTests"]
       46 ADD                              R3 R4 R5
       47 GETIMPORT                        R4 K15 [DateTime.now]
       49 CALL                             R4 0 1
       50 GETTABLEKS                       R4 R4 K16 ["UnixTimestampMillis"]
       52 GETUPVAL                         R6 10
       53 SUB                              R5 R4 R6
       54 NEWTABLE                         R6 4 0
       56 SETTABLEKS                       R4 R6 K17 ["end"]
       58 SETTABLEKS                       R5 R6 K18 ["runtime"]
       60 DIVK                             R8 R5 K19 [1000]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K20 ["slowTestThreshold"]
       64 JUMPIFLT                         R9 R8 ; [+2]
       66 LOADB                            R7 0 +1
       67 LOADB                            R7 1
       68 SETTABLEKS                       R7 R6 K21 ["slow"]
       70 GETUPVAL                         R7 10
       71 SETTABLEKS                       R7 R6 K22 ["start"]
       73 SETTABLEKS                       R6 R0 K23 ["perfStats"]
       75 GETUPVAL                         R6 11
       76 JUMPIFNOT                        R6 ; [+8]
       77 GETUPVAL                         R6 11
       78 GETUPVAL                         R8 5
       79 NAMECALL                         R6 R6 K24 ["GetScriptFilePath"]
       81 CALL                             R6 2 1
       82 SETTABLEKS                       R6 R0 K25 ["testFilePath"]
       84 JUMP                             ; [+8]
       85 GETUPVAL                         R6 12
       86 GETUPVAL                         R7 5
       87 GETUPVAL                         R8 3
       88 GETTABLEKS                       R8 R8 K26 ["rootDir"]
       90 CALL                             R6 2 1
       91 SETTABLEKS                       R6 R0 K25 ["testFilePath"]
       93 GETUPVAL                         R6 7
       94 NAMECALL                         R6 R6 K27 ["getBuffer"]
       96 CALL                             R6 1 1
       97 SETTABLEKS                       R6 R0 K28 ["console"]
       99 GETTABLEKS                       R7 R0 K11 ["numPendingTests"]
      101 JUMPIFEQ                         R3 R7 ; [+2]
      103 LOADB                            R6 0 +1
      104 LOADB                            R6 1
      105 SETTABLEKS                       R6 R0 K29 ["skipped"]
      107 GETUPVAL                         R6 3
      108 GETTABLEKS                       R6 R6 K30 ["displayName"]
      110 SETTABLEKS                       R6 R0 K30 ["displayName"]
      112 GETUPVAL                         R6 13
      113 GETTABLEKS                       R6 R6 K31 ["new"]
      115 NEWCLOSURE                       R7 P2
      116 CAPTURE                          UPVAL U14
      117 CAPTURE                          REF R0
      118 CALL                             R6 1 -1
      119 CLOSEUPVALS                      R0
      120 RETURN                           R6 -1

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
       78 JUMPIFEQKS                       R8 K15 ["function"] ; [+18]
       80 GETUPVAL                         R8 9
       81 GETTABLEKS                       R8 R8 K16 ["error"]
       83 LOADK                            R9 K17 ["Test environment found at \"%s\" does not export a \"getVmContext\" method, which is mandatory from Jest 27. This method is a replacement for \"runScript\"."]
       84 FASTCALL1                        TOSTRING R0 ; [+3]
       85 MOVE                             R12 R0
       86 GETIMPORT                        R11 K19 [tostring]
       88 CALL                             R11 1 1
       89 NAMECALL                         R9 R9 K20 ["format"]
       91 CALL                             R9 2 -1
       92 CALL                             R8 -1 0
       93 GETIMPORT                        R8 K21 [error]
       95 LOADN                            R9 1
       96 CALL                             R8 1 0
       97 GETUPVAL                         R8 10
       98 GETTABLEKS                       R9 R7 K22 ["global"]
      100 LOADK                            R10 K9 ["console"]
      101 MOVE                             R11 R6
      102 CALL                             R8 3 0
      103 GETTABLEKS                       R8 R3 K6 ["new"]
      105 GETUPVAL                         R9 0
      106 GETUPVAL                         R10 11
      107 CALL                             R8 2 1
      108 GETIMPORT                        R9 K25 [DateTime.now]
      110 CALL                             R9 0 1
      111 GETTABLEKS                       R9 R9 K26 ["UnixTimestampMillis"]
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R10 R10 K27 ["setupFiles"]
      116 LOADNIL                          R11
      117 LOADNIL                          R12
      118 FORGPREP                         R10
      119 MOVE                             R17 R14
      120 NAMECALL                         R15 R8 K28 ["requireModule"]
      122 CALL                             R15 2 0
      123 FORGLOOP                         R10 2 ; [-5]
      125 GETIMPORT                        R10 K30 [pcall]
      127 NEWCLOSURE                       R11 P1
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          UPVAL U0
      132 CAPTURE                          VAL R8
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          UPVAL U12
      135 CAPTURE                          REF R6
      136 CAPTURE                          UPVAL U13
      137 CAPTURE                          UPVAL U14
      138 CAPTURE                          VAL R9
      139 CAPTURE                          UPVAL U15
      140 CAPTURE                          UPVAL U16
      141 CAPTURE                          UPVAL U17
      142 CAPTURE                          UPVAL U18
      143 CALL                             R10 1 2
      144 NAMECALL                         R12 R8 K31 ["teardown"]
      146 CALL                             R12 1 0
      147 NAMECALL                         R12 R7 K31 ["teardown"]
      149 CALL                             R12 1 1
      150 NAMECALL                         R12 R12 K32 ["expect"]
      152 CALL                             R12 1 0
      153 JUMPIF                           R10 ; [+4]
      154 GETIMPORT                        R12 K21 [error]
      156 MOVE                             R13 R11
      157 CALL                             R12 1 0
      158 CLOSEUPVALS                      R6
      159 RETURN                           R11 1

PROTO_8:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["resolve"]
        3 CALL                             R7 0 1
        4 NEWCLOSURE                       R9 P0
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
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          VAL R6
       17 CAPTURE                          VAL R5
       18 CAPTURE                          UPVAL U9
       19 CAPTURE                          UPVAL U10
       20 CAPTURE                          UPVAL U11
       21 CAPTURE                          UPVAL U12
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U13
       24 NAMECALL                         R7 R7 K1 ["andThen"]
       26 CALL                             R7 2 -1
       27 RETURN                           R7 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADN                            R3 100
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 GETUPVAL                         R5 4
        5 GETUPVAL                         R6 5
        6 GETUPVAL                         R7 6
        7 GETUPVAL                         R8 7
        8 GETTABLEKS                       R8 R8 K0 ["resolve"]
       10 CALL                             R8 0 1
       11 NEWCLOSURE                       R10 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U12
       19 CAPTURE                          UPVAL U13
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U14
       22 CAPTURE                          UPVAL U15
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R6
       25 CAPTURE                          UPVAL U16
       26 CAPTURE                          UPVAL U17
       27 CAPTURE                          UPVAL U18
       28 CAPTURE                          UPVAL U19
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U20
       31 NAMECALL                         R8 R8 K1 ["andThen"]
       33 CALL                             R8 2 1
       34 MOVE                             R0 R8
       35 NAMECALL                         R0 R0 K2 ["expect"]
       37 CALL                             R0 1 1
       38 GETTABLEKS                       R1 R0 K3 ["leakDetector"]
       40 GETTABLEKS                       R2 R0 K4 ["result"]
       42 JUMPIFEQKNIL                     R1 ; [+19]
       44 GETUPVAL                         R3 7
       45 GETTABLEKS                       R3 R3 K5 ["new"]
       47 DUPCLOSURE                       R4 K6 [PROTO_9]
       48 CAPTURE                          UPVAL U21
       49 CALL                             R3 1 1
       50 NAMECALL                         R3 R3 K2 ["expect"]
       52 CALL                             R3 1 0
       53 NAMECALL                         R3 R1 K7 ["isLeaking"]
       55 CALL                             R3 1 1
       56 NAMECALL                         R3 R3 K2 ["expect"]
       58 CALL                             R3 1 1
       59 SETTABLEKS                       R3 R2 K8 ["leaks"]
       61 RETURN                           R2 1
       62 LOADB                            R3 0
       63 SETTABLEKS                       R3 R2 K8 ["leaks"]
       65 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R7 0
        1 GETTABLEKS                       R7 R7 K0 ["resolve"]
        3 CALL                             R7 0 1
        4 NEWCLOSURE                       R9 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R5
       11 CAPTURE                          VAL R6
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U10
       23 CAPTURE                          UPVAL U11
       24 CAPTURE                          UPVAL U12
       25 CAPTURE                          UPVAL U13
       26 CAPTURE                          UPVAL U14
       27 NAMECALL                         R7 R7 K1 ["andThen"]
       29 CALL                             R7 2 -1
       30 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["console"]
       14 GETTABLEKS                       R3 R1 K7 ["setTimeout"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Promise"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K9 ["RobloxShared"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R5 R5 K10 ["getRelativePath"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K9 ["RobloxShared"]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R6 R6 K11 ["getDataModelService"]
       35 MOVE                             R7 R6
       36 LOADK                            R8 K12 ["CoreScriptSyncService"]
       37 CALL                             R7 1 1
       38 NEWTABLE                         R8 1 0
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K13 ["ChalkLua"]
       44 CALL                             R9 1 1
       45 GETIMPORT                        R10 K4 [require]
       47 GETTABLEKS                       R11 R0 K14 ["JestConsole"]
       49 CALL                             R10 1 1
       50 GETTABLEKS                       R11 R10 K15 ["BufferedConsole"]
       52 GETTABLEKS                       R12 R10 K16 ["CustomConsole"]
       54 GETTABLEKS                       R13 R10 K17 ["NullConsole"]
       56 GETTABLEKS                       R14 R10 K18 ["getConsoleOutput"]
       58 GETIMPORT                        R15 K4 [require]
       60 GETTABLEKS                       R16 R0 K19 ["JestEnvironment"]
       62 CALL                             R15 1 1
       63 GETIMPORT                        R16 K4 [require]
       65 GETTABLEKS                       R17 R0 K20 ["JestTestResult"]
       67 CALL                             R16 1 1
       68 GETIMPORT                        R17 K4 [require]
       70 GETTABLEKS                       R18 R0 K21 ["JestTypes"]
       72 CALL                             R17 1 1
       73 GETIMPORT                        R18 K4 [require]
       75 GETTABLEKS                       R19 R0 K22 ["JestUtil"]
       77 CALL                             R18 1 1
       78 GETTABLEKS                       R19 R18 K23 ["ErrorWithStack"]
       80 GETTABLEKS                       R20 R18 K24 ["setGlobal"]
       82 GETIMPORT                        R21 K4 [require]
       84 GETIMPORT                        R22 K1 [script]
       86 GETTABLEKS                       R22 R22 K2 ["Parent"]
       88 GETTABLEKS                       R22 R22 K25 ["types"]
       90 CALL                             R21 1 1
       91 GETIMPORT                        R22 K4 [require]
       93 GETTABLEKS                       R23 R0 K9 ["RobloxShared"]
       95 CALL                             R22 1 1
       96 GETTABLEKS                       R22 R22 K26 ["Writeable"]
       98 DUPCLOSURE                       R23 K27 [PROTO_1]
       99 CAPTURE                          VAL R19
      100 CAPTURE                          VAL R9
      101 DUPCLOSURE                       R24 K28 [PROTO_8]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R22
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R5
      115 CAPTURE                          VAL R3
      116 DUPCLOSURE                       R25 K29 [PROTO_11]
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R0
      119 CAPTURE                          VAL R22
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R20
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R3
      132 SETTABLEKS                       R25 R8 K30 ["default"]
      134 RETURN                           R8 1

PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["json"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+8]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["useStderr"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+4]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["stderr"]
       20 JUMP                             ; [+3]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K4 ["stdout"]
       24 GETUPVAL                         R2 3
       25 GETUPVAL                         R3 4
       26 GETUPVAL                         R4 1
       27 GETUPVAL                         R5 5
       28 CALL                             R2 3 1
       29 NAMECALL                         R2 R2 K5 ["expect"]
       31 CALL                             R2 1 1
       32 GETTABLEKS                       R3 R2 K6 ["globalConfig"]
       34 GETTABLEKS                       R4 R2 K7 ["configs"]
       36 GETTABLEKS                       R5 R2 K8 ["hasDeprecationWarnings"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K9 ["debug"]
       41 JUMPIFNOT                        R6 ; [+5]
       42 GETUPVAL                         R6 6
       43 MOVE                             R7 R3
       44 MOVE                             R8 R4
       45 MOVE                             R9 R1
       46 CALL                             R6 3 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K10 ["showConfig"]
       50 JUMPIFNOT                        R6 ; [+10]
       51 GETUPVAL                         R6 6
       52 MOVE                             R7 R3
       53 MOVE                             R8 R4
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K4 ["stdout"]
       57 CALL                             R6 3 0
       58 GETUPVAL                         R6 7
       59 LOADN                            R7 0
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K0 ["toJSBoolean"]
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K11 ["selectProjects"]
       67 CALL                             R6 1 1
       68 JUMPIFNOT                        R6 ; [+42]
       69 GETUPVAL                         R6 8
       70 MOVE                             R7 R4
       71 DUPTABLE                         R8 K13 [{"ignoreProjects", "selectProjects"}]
       72 GETUPVAL                         R9 1
       73 GETTABLEKS                       R9 R9 K12 ["ignoreProjects"]
       75 SETTABLEKS                       R9 R8 K12 ["ignoreProjects"]
       77 GETUPVAL                         R9 1
       78 GETTABLEKS                       R9 R9 K11 ["selectProjects"]
       80 SETTABLEKS                       R9 R8 K11 ["selectProjects"]
       82 CALL                             R6 2 1
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K0 ["toJSBoolean"]
       86 MOVE                             R8 R6
       87 CALL                             R7 1 1
       88 JUMPIFNOT                        R7 ; [+5]
       89 JUMPIFNOT                        R6 ; [+4]
       90 MOVE                             R9 R6
       91 NAMECALL                         R7 R1 K14 ["write"]
       93 CALL                             R7 2 0
       94 GETUPVAL                         R9 9
       95 MOVE                             R10 R4
       96 DUPTABLE                         R11 K13 [{"ignoreProjects", "selectProjects"}]
       97 GETUPVAL                         R12 1
       98 GETTABLEKS                       R12 R12 K12 ["ignoreProjects"]
      100 SETTABLEKS                       R12 R11 K12 ["ignoreProjects"]
      102 GETUPVAL                         R12 1
      103 GETTABLEKS                       R12 R12 K11 ["selectProjects"]
      105 SETTABLEKS                       R12 R11 K11 ["selectProjects"]
      107 CALL                             R9 2 -1
      108 NAMECALL                         R7 R1 K14 ["write"]
      110 CALL                             R7 -1 0
      111 GETUPVAL                         R6 10
      112 MOVE                             R7 R3
      113 MOVE                             R8 R4
      114 MOVE                             R9 R5
      115 MOVE                             R10 R1
      116 NEWCLOSURE                       R11 P0
      117 CAPTURE                          REF R0
      118 CALL                             R6 5 1
      119 NAMECALL                         R6 R6 K5 ["expect"]
      121 CALL                             R6 1 0
      122 GETUPVAL                         R6 1
      123 GETTABLEKS                       R6 R6 K15 ["watch"]
      125 JUMPIF                           R6 ; [+4]
      126 GETUPVAL                         R6 1
      127 GETTABLEKS                       R6 R6 K16 ["watchAll"]
      129 JUMPIFNOT                        R6 ; [+7]
      130 GETUPVAL                         R6 11
      131 GETTABLEKS                       R6 R6 K17 ["new"]
      133 DUPCLOSURE                       R7 K18 [PROTO_1]
      134 CALL                             R6 1 -1
      135 CLOSEUPVALS                      R0
      136 RETURN                           R6 -1
      137 GETUPVAL                         R6 0
      138 GETTABLEKS                       R6 R6 K0 ["toJSBoolean"]
      140 MOVE                             R7 R0
      141 CALL                             R6 1 1
      142 JUMPIF                           R6 ; [+8]
      143 GETIMPORT                        R6 K20 [error]
      145 GETUPVAL                         R7 12
      146 GETTABLEKS                       R7 R7 K17 ["new"]
      148 LOADK                            R8 K21 ["AggregatedResult must be present after test run is complete"]
      149 CALL                             R7 1 -1
      150 CALL                             R6 -1 0
      151 GETTABLEKS                       R6 R0 K22 ["openHandles"]
      153 JUMPIFEQKNIL                     R6 ; [+36]
      155 LENGTH                           R7 R6
      156 LOADN                            R8 0
      157 JUMPIFNOTLT                      R8 R7 ; [+32]
      159 GETUPVAL                         R7 13
      160 MOVE                             R8 R6
      161 GETTABLEN                        R9 R4 1
      162 CALL                             R7 2 1
      163 GETUPVAL                         R8 14
      164 LOADK                            R9 K23 ["open handle"]
      165 LENGTH                           R10 R7
      166 LOADK                            R11 K24 ["s"]
      167 CALL                             R8 3 1
      168 GETUPVAL                         R12 15
      169 GETTABLEKS                       R12 R12 K25 ["red"]
      171 LOADK                            R13 K26 ["\nJest has detected the following %s potentially keeping Jest from exiting:\n\n"]
      172 MOVE                             R15 R8
      173 NAMECALL                         R13 R13 K27 ["format"]
      175 CALL                             R13 2 -1
      176 CALL                             R12 -1 1
      177 MOVE                             R10 R12
      178 GETUPVAL                         R11 16
      179 GETTABLEKS                       R11 R11 K28 ["join"]
      181 MOVE                             R12 R7
      182 LOADK                            R13 K29 ["\n\n"]
      183 CALL                             R11 2 1
      184 CONCAT                           R9 R10 R11
      185 GETUPVAL                         R10 17
      186 GETTABLEKS                       R10 R10 K19 ["error"]
      188 MOVE                             R11 R9
      189 CALL                             R10 1 0
      190 DUPTABLE                         R7 K31 [{"globalConfig", "results"}]
      191 SETTABLEKS                       R3 R7 K6 ["globalConfig"]
      193 SETTABLEKS                       R0 R7 K30 ["results"]
      195 CLOSEUPVALS                      R0
      196 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CAPTURE                          UPVAL U6
       14 CAPTURE                          UPVAL U7
       15 CAPTURE                          UPVAL U8
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 NAMECALL                         R3 R3 K1 ["andThen"]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R2 R2 K1 ["andThen"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["all"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["map"]
        6 GETUPVAL                         R2 2
        7 DUPCLOSURE                       R3 K2 [PROTO_5]
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U3
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 NAMECALL                         R0 R0 K3 ["expect"]
       14 CALL                             R0 1 1
       15 DUPTABLE                         R1 K5 [{"contexts"}]
       16 SETTABLEKS                       R0 R1 K4 ["contexts"]
       18 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["resolve"]
        3 CALL                             R3 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R3 R3 K1 ["andThen"]
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["setup"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["expect"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R1 1
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R0 R0 K1 ["andThen"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+15]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["expect"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["toJSBoolean"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETIMPORT                        R1 K3 [error]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R0 2
       18 GETUPVAL                         R1 3
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R1 R1 K1 ["andThen"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["filter"]
       11 CALL                             R2 1 1
       12 JUMPIFNOT                        R2 ; [+33]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["skipFilter"]
       16 JUMPIF                           R2 ; [+29]
       17 GETIMPORT                        R2 K4 [require]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K1 ["filter"]
       22 CALL                             R2 1 1
       23 LOADNIL                          R3
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       27 GETTABLEKS                       R5 R2 K5 ["setup"]
       29 CALL                             R4 1 1
       30 JUMPIFNOT                        R4 ; [+9]
       31 GETUPVAL                         R3 4
       32 GETTABLEKS                       R3 R3 K6 ["resolve"]
       34 CALL                             R3 0 1
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          VAL R2
       37 NAMECALL                         R3 R3 K7 ["andThen"]
       39 CALL                             R3 2 1
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          REF R3
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R2
       45 CLOSEUPVALS                      R3
       46 GETUPVAL                         R3 2
       47 GETUPVAL                         R4 1
       48 GETUPVAL                         R5 5
       49 GETUPVAL                         R6 4
       50 GETTABLEKS                       R6 R6 K6 ["resolve"]
       52 CALL                             R6 0 1
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          UPVAL U7
       58 NAMECALL                         R6 R6 K7 ["andThen"]
       60 CALL                             R6 2 1
       61 MOVE                             R2 R6
       62 NAMECALL                         R2 R2 K8 ["expect"]
       64 CALL                             R2 1 1
       65 GETTABLEKS                       R3 R2 K9 ["contexts"]
       67 GETUPVAL                         R4 8
       68 GETUPVAL                         R5 1
       69 MOVE                             R6 R3
       70 GETUPVAL                         R7 5
       71 GETUPVAL                         R8 9
       72 MOVE                             R9 R0
       73 MOVE                             R10 R1
       74 CALL                             R4 6 1
       75 NAMECALL                         R4 R4 K8 ["expect"]
       77 CALL                             R4 1 0
       78 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["resolve"]
        3 CALL                             R5 0 1
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R3
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R4
       15 NAMECALL                         R5 R5 K1 ["andThen"]
       17 CALL                             R5 2 -1
       18 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["listTests"]
        3 JUMPIF                           R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 DUPTABLE                         R1 K10 [{"changedFilesPromise", "contexts", "failedTestsCache", "filter", "globalConfig", "onComplete", "outputStream", "startRun", "testWatcher"}]
        9 GETUPVAL                         R2 4
       10 SETTABLEKS                       R2 R1 K1 ["changedFilesPromise"]
       12 GETUPVAL                         R2 5
       13 SETTABLEKS                       R2 R1 K2 ["contexts"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K3 ["failedTestsCache"]
       18 GETUPVAL                         R2 6
       19 SETTABLEKS                       R2 R1 K4 ["filter"]
       21 GETUPVAL                         R2 0
       22 SETTABLEKS                       R2 R1 K5 ["globalConfig"]
       24 GETUPVAL                         R2 7
       25 SETTABLEKS                       R2 R1 K6 ["onComplete"]
       27 GETUPVAL                         R2 2
       28 SETTABLEKS                       R2 R1 K7 ["outputStream"]
       30 GETUPVAL                         R2 8
       31 SETTABLEKS                       R2 R1 K8 ["startRun"]
       33 GETUPVAL                         R2 9
       34 GETTABLEKS                       R2 R2 K11 ["new"]
       36 DUPTABLE                         R3 K13 [{"isWatchMode"}]
       37 LOADB                            R4 0
       38 SETTABLEKS                       R4 R3 K12 ["isWatchMode"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R1 K9 ["testWatcher"]
       43 CALL                             R0 1 -1
       44 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 NAMECALL                         R0 R0 K1 ["andThen"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_17:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          UPVAL U7
        9 CAPTURE                          UPVAL U8
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U9
       12 MOVE                             R1 R0
       13 CALL                             R1 0 -1
       14 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["resolve"]
        3 CALL                             R6 0 1
        4 NEWCLOSURE                       R8 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          VAL R4
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R5
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R6 R6 K1 ["andThen"]
       17 CALL                             R6 2 -1
       18 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       16 GETTABLEKS                       R4 R1 K8 ["Error"]
       18 GETTABLEKS                       R5 R1 K9 ["console"]
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K10 ["Promise"]
       24 CALL                             R6 1 1
       25 NEWTABLE                         R7 1 0
       27 GETIMPORT                        R8 K4 [require]
       29 GETTABLEKS                       R9 R0 K11 ["ChalkLua"]
       31 CALL                             R8 1 1
       32 GETIMPORT                        R9 K4 [require]
       34 GETTABLEKS                       R10 R0 K12 ["JestTestResult"]
       36 CALL                             R9 1 1
       37 GETIMPORT                        R10 K4 [require]
       39 GETTABLEKS                       R11 R0 K13 ["JestTypes"]
       41 CALL                             R10 1 1
       42 GETIMPORT                        R11 K4 [require]
       44 GETTABLEKS                       R12 R0 K14 ["JestConfig"]
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R11 R11 K15 ["readConfigs"]
       49 GETIMPORT                        R12 K4 [require]
       51 GETTABLEKS                       R13 R0 K16 ["JestRuntime"]
       53 CALL                             R12 1 1
       54 GETIMPORT                        R13 K4 [require]
       56 GETTABLEKS                       R14 R0 K17 ["JestUtil"]
       58 CALL                             R13 1 1
       59 GETTABLEKS                       R14 R13 K18 ["preRunMessage"]
       61 GETIMPORT                        R15 K4 [require]
       63 GETIMPORT                        R16 K1 [script]
       65 GETTABLEKS                       R16 R16 K2 ["Parent"]
       67 GETTABLEKS                       R16 R16 K19 ["TestWatcher"]
       69 CALL                             R15 1 1
       70 GETTABLEKS                       R15 R15 K20 ["default"]
       72 GETIMPORT                        R16 K4 [require]
       74 GETIMPORT                        R17 K1 [script]
       76 GETTABLEKS                       R17 R17 K2 ["Parent"]
       78 GETTABLEKS                       R17 R17 K21 ["collectHandles"]
       80 CALL                             R16 1 1
       81 GETTABLEKS                       R16 R16 K22 ["formatHandleErrors"]
       83 GETIMPORT                        R17 K4 [require]
       85 GETIMPORT                        R18 K1 [script]
       87 GETTABLEKS                       R18 R18 K2 ["Parent"]
       89 GETTABLEKS                       R18 R18 K23 ["getChangedFilesPromise"]
       91 CALL                             R17 1 1
       92 GETTABLEKS                       R17 R17 K20 ["default"]
       94 GETIMPORT                        R18 K4 [require]
       96 GETIMPORT                        R19 K1 [script]
       98 GETTABLEKS                       R19 R19 K2 ["Parent"]
      100 GETTABLEKS                       R19 R19 K24 ["getProjectNamesMissingWarning"]
      102 CALL                             R18 1 1
      103 GETTABLEKS                       R18 R18 K20 ["default"]
      105 GETIMPORT                        R19 K4 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R20 R20 K2 ["Parent"]
      111 GETTABLEKS                       R20 R20 K25 ["getSelectProjectsMessage"]
      113 CALL                             R19 1 1
      114 GETTABLEKS                       R19 R19 K20 ["default"]
      116 GETIMPORT                        R20 K4 [require]
      118 GETIMPORT                        R21 K1 [script]
      120 GETTABLEKS                       R21 R21 K2 ["Parent"]
      122 GETTABLEKS                       R21 R21 K26 ["lib"]
      124 GETTABLEKS                       R21 R21 K27 ["createContext"]
      126 CALL                             R20 1 1
      127 GETTABLEKS                       R20 R20 K20 ["default"]
      129 GETIMPORT                        R21 K4 [require]
      131 GETIMPORT                        R22 K1 [script]
      133 GETTABLEKS                       R22 R22 K2 ["Parent"]
      135 GETTABLEKS                       R22 R22 K26 ["lib"]
      137 GETTABLEKS                       R22 R22 K28 ["logDebugMessages"]
      139 CALL                             R21 1 1
      140 GETTABLEKS                       R21 R21 K20 ["default"]
      142 GETIMPORT                        R22 K4 [require]
      144 GETIMPORT                        R23 K1 [script]
      146 GETTABLEKS                       R23 R23 K2 ["Parent"]
      148 GETTABLEKS                       R23 R23 K29 ["pluralize"]
      150 CALL                             R22 1 1
      151 GETTABLEKS                       R22 R22 K20 ["default"]
      153 GETIMPORT                        R23 K4 [require]
      155 GETIMPORT                        R24 K1 [script]
      157 GETTABLEKS                       R24 R24 K2 ["Parent"]
      159 GETTABLEKS                       R24 R24 K30 ["runJest"]
      161 CALL                             R23 1 1
      162 GETTABLEKS                       R23 R23 K20 ["default"]
      164 GETIMPORT                        R24 K4 [require]
      166 GETIMPORT                        R25 K1 [script]
      168 GETTABLEKS                       R25 R25 K2 ["Parent"]
      170 GETTABLEKS                       R25 R25 K31 ["types"]
      172 CALL                             R24 1 1
      173 GETTABLEKS                       R25 R14 K32 ["print"]
      175 GETIMPORT                        R26 K4 [require]
      177 GETTABLEKS                       R27 R0 K33 ["RobloxShared"]
      179 CALL                             R26 1 1
      180 GETTABLEKS                       R27 R26 K34 ["nodeUtils"]
      182 GETTABLEKS                       R28 R27 K35 ["process"]
      184 GETTABLEKS                       R29 R27 K36 ["exit"]
      186 LOADNIL                          R30
      187 LOADNIL                          R31
      188 NEWCLOSURE                       R32 P0
      189 CAPTURE                          VAL R6
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R28
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R29
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R19
      197 CAPTURE                          REF R30
      198 CAPTURE                          VAL R4
      199 CAPTURE                          VAL R16
      200 CAPTURE                          VAL R22
      201 CAPTURE                          VAL R8
      202 CAPTURE                          VAL R2
      203 CAPTURE                          VAL R5
      204 SETTABLEKS                       R32 R7 K37 ["runCLI"]
      206 DUPCLOSURE                       R33 K38 [PROTO_7]
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R20
      210 NEWCLOSURE                       R30 P2
      211 CAPTURE                          VAL R6
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R3
      214 CAPTURE                          VAL R2
      215 CAPTURE                          VAL R20
      216 CAPTURE                          REF R31
      217 DUPCLOSURE                       R31 K39 [PROTO_18]
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R25
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R15
      222 CLOSEUPVALS                      R30
      223 RETURN                           R7 1

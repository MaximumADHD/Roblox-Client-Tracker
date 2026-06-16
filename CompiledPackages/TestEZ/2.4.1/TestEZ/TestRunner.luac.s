PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["extend"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R3 -1
        3 NAMECALL                         R1 R1 K0 ["startExpectationChain"]
        5 CALL                             R1 -1 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"extend"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R3 R2 K0 ["extend"]
        5 DUPTABLE                         R3 K3 [{"__call"}]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R4 R3 K2 ["__call"]
       10 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [setmetatable]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["modifier"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["NodeModifier"]
        5 GETTABLEKS                       R3 R3 K2 ["Focus"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["new"]
        8 CALL                             R2 0 1
        9 DUPCLOSURE                       R5 K1 [PROTO_3]
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R3 R0 K2 ["findNodes"]
       13 CALL                             R3 2 1
       14 LENGTH                           R5 R3
       15 LOADN                            R6 0
       16 JUMPIFLT                         R6 R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R1 K3 ["hasFocusNodes"]
       22 GETIMPORT                        R4 K5 [_G]
       24 DUPTABLE                         R5 K9 [{"blocks", "instance", "snapshotState"}]
       25 NEWTABLE                         R6 0 0
       27 SETTABLEKS                       R6 R5 K6 ["blocks"]
       29 LOADNIL                          R6
       30 SETTABLEKS                       R6 R5 K7 ["instance"]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K8 ["snapshotState"]
       35 SETTABLEKS                       R5 R4 K10 ["__JEST_TEST_CONTEXT__"]
       37 GETIMPORT                        R4 K12 [getfenv]
       39 CALL                             R4 0 1
       40 GETTABLEKS                       R5 R4 K13 ["DateTime"]
       42 JUMPIFNOT                        R5 ; [+11]
       43 GETTABLEKS                       R5 R1 K14 ["results"]
       45 GETTABLEKS                       R6 R4 K13 ["DateTime"]
       47 GETTABLEKS                       R6 R6 K15 ["now"]
       49 CALL                             R6 0 1
       50 GETTABLEKS                       R6 R6 K16 ["UnixTimestampMillis"]
       52 SETTABLEKS                       R6 R5 K17 ["startTime"]
       54 GETUPVAL                         R5 3
       55 GETTABLEKS                       R5 R5 K18 ["runPlanNode"]
       57 MOVE                             R6 R1
       58 MOVE                             R7 R0
       59 MOVE                             R8 R2
       60 CALL                             R5 3 0
       61 GETIMPORT                        R5 K5 [_G]
       63 LOADNIL                          R6
       64 SETTABLEKS                       R6 R5 K10 ["__JEST_TEST_CONTEXT__"]
       66 NAMECALL                         R5 R1 K19 ["finalize"]
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADK                            R0 K0 ["fail() was called."]
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 GETIMPORT                        R3 K3 [debug.traceback]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R5 R0
       10 GETIMPORT                        R4 K5 [tostring]
       12 CALL                             R4 1 1
       13 LOADN                            R5 2
       14 CALL                             R3 2 1
       15 CONCAT                           R1 R2 R3
       16 SETUPVAL                         R1 1
       17 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R3 K0 ["\n"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 MOVE                             R0 R1
        5 NEWTABLE                         R1 0 0
        7 GETIMPORT                        R2 K3 [pairs]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 3
       11 FORGPREP_NEXT                    R2
       12 LOADK                            R9 K4 ["TestEZ%.TestEZ%."]
       13 NAMECALL                         R7 R6 K5 ["match"]
       15 CALL                             R7 2 1
       16 JUMPIF                           R7 ; [+9]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K8 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-13]
       26 GETIMPORT                        R2 K10 [table.concat]
       28 MOVE                             R3 R1
       29 LOADK                            R4 K0 ["\n"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+25]
        7 GETTABLEKS                       R1 R0 K3 ["stack"]
        9 JUMPIFNOT                        R1 ; [+21]
       10 GETTABLEKS                       R1 R0 K4 ["name"]
       12 JUMPIFNOT                        R1 ; [+18]
       13 GETTABLEKS                       R1 R0 K5 ["message"]
       15 JUMPIFNOT                        R1 ; [+15]
       16 GETUPVAL                         R2 0
       17 GETUPVAL                         R3 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R9 R0
       20 GETIMPORT                        R8 K7 [tostring]
       22 CALL                             R8 1 1
       23 MOVE                             R5 R8
       24 LOADK                            R6 K8 ["\n"]
       25 GETTABLEKS                       R7 R0 K3 ["stack"]
       27 CONCAT                           R4 R5 R7
       28 CALL                             R3 1 1
       29 CONCAT                           R1 R2 R3
       30 RETURN                           R1 1
       31 GETUPVAL                         R2 0
       32 GETIMPORT                        R3 K11 [debug.traceback]
       34 FASTCALL1                        TOSTRING R0 ; [+3]
       35 MOVE                             R5 R0
       36 GETIMPORT                        R4 K7 [tostring]
       38 CALL                             R4 1 1
       39 LOADN                            R5 2
       40 CALL                             R3 2 1
       41 CONCAT                           R1 R2 R3
       42 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R2 1
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [_G]
        4 LOADB                            R5 1
        5 SETTABLEKS                       R5 R4 K2 ["__TESTEZ_RUNNING_TEST__"]
        7 ORK                              R1 R1 K3 [""]
        8 GETIMPORT                        R4 K5 [getfenv]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 1
       12 GETIMPORT                        R5 K7 [pairs]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K8 ["environment"]
       17 CALL                             R5 1 3
       18 FORGPREP_NEXT                    R5
       19 SETTABLE                         R9 R4 R8
       20 FORGLOOP                         R5 2 ; [-2]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R2
       24 CAPTURE                          REF R3
       25 CAPTURE                          REF R1
       26 SETTABLEKS                       R5 R4 K9 ["fail"]
       28 GETUPVAL                         R5 1
       29 GETUPVAL                         R6 2
       30 NAMECALL                         R6 R6 K10 ["getExpectationContext"]
       32 CALL                             R6 1 -1
       33 CALL                             R5 -1 1
       34 SETTABLEKS                       R5 R4 K11 ["expect"]
       36 GETUPVAL                         R5 2
       37 NAMECALL                         R5 R5 K12 ["getContext"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K13 [PROTO_6]
       41 GETIMPORT                        R7 K15 [xpcall]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R5
       46 NEWCLOSURE                       R9 P3
       47 CAPTURE                          REF R1
       48 CAPTURE                          VAL R6
       49 CALL                             R7 2 2
       50 JUMPIF                           R7 ; [+2]
       51 LOADB                            R2 0
       52 MOVE                             R3 R8
       53 GETIMPORT                        R9 K1 [_G]
       55 LOADNIL                          R10
       56 SETTABLEKS                       R10 R9 K2 ["__TESTEZ_RUNNING_TEST__"]
       58 CLOSEUPVALS                      R1
       59 RETURN                           R2 2

PROTO_10:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K2 ["getBeforeEachHooks"]
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 3
        7 FORGPREP_INEXT                   R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 LOADK                            R8 K3 ["beforeEach hook: "]
       11 CALL                             R6 2 2
       12 JUMPIF                           R6 ; [+3]
       13 LOADB                            R8 0
       14 MOVE                             R9 R7
       15 RETURN                           R8 2
       16 FORGLOOP                         R1 2 [inext] ; [-9]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R2 R0 K4 ["callback"]
       21 CALL                             R1 1 2
       22 GETIMPORT                        R3 K1 [ipairs]
       24 GETUPVAL                         R4 0
       25 NAMECALL                         R4 R4 K5 ["getAfterEachHooks"]
       27 CALL                             R4 1 -1
       28 CALL                             R3 -1 3
       29 FORGPREP_INEXT                   R3
       30 GETUPVAL                         R8 1
       31 MOVE                             R9 R7
       32 LOADK                            R10 K6 ["afterEach hook: "]
       33 CALL                             R8 2 2
       34 JUMPIF                           R8 ; [+10]
       35 JUMPIF                           R1 ; [+6]
       36 LOADB                            R10 0
       37 MOVE                             R12 R2
       38 LOADK                            R13 K7 ["\nWhile cleaning up the failed test another error was found:\n"]
       39 MOVE                             R14 R9
       40 CONCAT                           R11 R12 R14
       41 RETURN                           R10 2
       42 LOADB                            R10 0
       43 MOVE                             R11 R9
       44 RETURN                           R10 2
       45 FORGLOOP                         R3 2 [inext] ; [-16]
       47 JUMPIF                           R1 ; [+3]
       48 LOADB                            R3 0
       49 MOVE                             R4 R2
       50 RETURN                           R3 2
       51 LOADB                            R3 1
       52 LOADNIL                          R4
       53 RETURN                           R3 2

PROTO_11:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 MOVE                             R7 R1
        8 NAMECALL                         R5 R2 K0 ["pushHooksFrom"]
       10 CALL                             R5 2 0
       11 LOADB                            R5 0
       12 GETIMPORT                        R6 K2 [ipairs]
       14 NAMECALL                         R7 R2 K3 ["getBeforeAllHooks"]
       16 CALL                             R7 1 -1
       17 CALL                             R6 -1 3
       18 FORGPREP_INEXT                   R6
       19 MOVE                             R11 R3
       20 MOVE                             R12 R10
       21 LOADK                            R13 K4 ["beforeAll hook: "]
       22 CALL                             R11 2 2
       23 JUMPIF                           R11 ; [+6]
       24 LOADK                            R15 K5 ["beforeAll"]
       25 MOVE                             R16 R12
       26 NAMECALL                         R13 R0 K6 ["addDummyError"]
       28 CALL                             R13 3 0
       29 LOADB                            R5 1
       30 FORGLOOP                         R6 2 [inext] ; [-12]
       32 GETTABLEKS                       R6 R1 K7 ["isRoot"]
       34 JUMPIFNOT                        R6 ; [+23]
       35 GETIMPORT                        R7 K10 [_G]
       37 GETTABLEKS                       R6 R7 K8 ["__JEST_TEST_CONTEXT__"]
       39 GETTABLEKS                       R7 R1 K11 ["instance"]
       41 SETTABLEKS                       R7 R6 K11 ["instance"]
       43 GETIMPORT                        R7 K10 [_G]
       45 GETTABLEKS                       R6 R7 K8 ["__JEST_TEST_CONTEXT__"]
       47 NEWTABLE                         R7 0 0
       49 SETTABLEKS                       R7 R6 K12 ["blocks"]
       51 GETIMPORT                        R7 K10 [_G]
       53 GETTABLEKS                       R6 R7 K8 ["__JEST_TEST_CONTEXT__"]
       55 LOADNIL                          R7
       56 SETTABLEKS                       R7 R6 K13 ["snapshotState"]
       58 JUMPIF                           R5 ; [+105]
       59 GETIMPORT                        R6 K2 [ipairs]
       61 GETTABLEKS                       R7 R1 K14 ["children"]
       63 CALL                             R6 1 3
       64 FORGPREP_INEXT                   R6
       65 GETIMPORT                        R13 K10 [_G]
       67 GETTABLEKS                       R12 R13 K8 ["__JEST_TEST_CONTEXT__"]
       69 GETTABLEKS                       R12 R12 K12 ["blocks"]
       71 GETTABLEKS                       R13 R10 K15 ["phrase"]
       73 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       75 GETIMPORT                        R11 K18 [table.insert]
       77 CALL                             R11 2 0
       78 GETTABLEKS                       R11 R10 K19 ["type"]
       80 GETUPVAL                         R12 2
       81 GETTABLEKS                       R12 R12 K20 ["NodeType"]
       83 GETTABLEKS                       R12 R12 K21 ["It"]
       85 JUMPIFNOTEQ                      R11 R12 ; [+29]
       87 MOVE                             R13 R10
       88 NAMECALL                         R11 R0 K22 ["pushNode"]
       90 CALL                             R11 2 0
       91 NAMECALL                         R11 R0 K23 ["shouldSkip"]
       93 CALL                             R11 1 1
       94 JUMPIFNOT                        R11 ; [+4]
       95 NAMECALL                         R11 R0 K24 ["setSkipped"]
       97 CALL                             R11 1 0
       98 JUMP                             ; [+12]
       99 MOVE                             R11 R4
      100 MOVE                             R12 R10
      101 CALL                             R11 1 2
      102 JUMPIFNOT                        R11 ; [+4]
      103 NAMECALL                         R13 R0 K25 ["setSuccess"]
      105 CALL                             R13 1 0
      106 JUMP                             ; [+4]
      107 MOVE                             R15 R12
      108 NAMECALL                         R13 R0 K26 ["setError"]
      110 CALL                             R13 2 0
      111 NAMECALL                         R11 R0 K27 ["popNode"]
      113 CALL                             R11 1 0
      114 JUMP                             ; [+38]
      115 GETTABLEKS                       R11 R10 K19 ["type"]
      117 GETUPVAL                         R12 2
      118 GETTABLEKS                       R12 R12 K20 ["NodeType"]
      120 GETTABLEKS                       R12 R12 K28 ["Describe"]
      122 JUMPIFNOTEQ                      R11 R12 ; [+30]
      124 MOVE                             R13 R10
      125 NAMECALL                         R11 R0 K22 ["pushNode"]
      127 CALL                             R11 2 0
      128 GETUPVAL                         R11 0
      129 GETTABLEKS                       R11 R11 K29 ["runPlanNode"]
      131 MOVE                             R12 R0
      132 MOVE                             R13 R10
      133 MOVE                             R14 R2
      134 CALL                             R11 3 0
      135 GETTABLEKS                       R11 R10 K30 ["loadError"]
      137 JUMPIFNOT                        R11 ; [+9]
      138 LOADK                            R12 K31 ["Error during planning: "]
      139 GETTABLEKS                       R13 R10 K30 ["loadError"]
      141 CONCAT                           R11 R12 R13
      142 MOVE                             R14 R11
      143 NAMECALL                         R12 R0 K26 ["setError"]
      145 CALL                             R12 2 0
      146 JUMP                             ; [+3]
      147 NAMECALL                         R11 R0 K32 ["setStatusFromChildren"]
      149 CALL                             R11 1 0
      150 NAMECALL                         R11 R0 K27 ["popNode"]
      152 CALL                             R11 1 0
      153 GETIMPORT                        R11 K34 [table.remove]
      155 GETIMPORT                        R13 K10 [_G]
      157 GETTABLEKS                       R12 R13 K8 ["__JEST_TEST_CONTEXT__"]
      159 GETTABLEKS                       R12 R12 K12 ["blocks"]
      161 CALL                             R11 1 0
      162 FORGLOOP                         R6 2 [inext] ; [-98]
      164 GETIMPORT                        R7 K10 [_G]
      166 GETTABLEKS                       R6 R7 K8 ["__JEST_TEST_CONTEXT__"]
      168 GETTABLEKS                       R6 R6 K13 ["snapshotState"]
      170 GETTABLEKS                       R7 R1 K7 ["isRoot"]
      172 JUMPIFNOT                        R7 ; [+17]
      173 JUMPIFNOT                        R6 ; [+16]
      174 GETTABLEKS                       R7 R6 K35 ["_updateSnapshot"]
      176 JUMPIFEQKS                       R7 K36 ["none"] ; [+13]
      178 NAMECALL                         R7 R6 K37 ["getUncheckedCount"]
      180 CALL                             R7 1 1
      181 LOADN                            R8 0
      182 JUMPIFNOTLT                      R8 R7 ; [+4]
      184 NAMECALL                         R8 R6 K38 ["removeUncheckedKeys"]
      186 CALL                             R8 1 0
      187 NAMECALL                         R8 R6 K39 ["save"]
      189 CALL                             R8 1 0
      190 GETIMPORT                        R7 K2 [ipairs]
      192 NAMECALL                         R8 R2 K40 ["getAfterAllHooks"]
      194 CALL                             R8 1 -1
      195 CALL                             R7 -1 3
      196 FORGPREP_INEXT                   R7
      197 MOVE                             R12 R3
      198 MOVE                             R13 R11
      199 LOADK                            R14 K41 ["afterAll hook: "]
      200 CALL                             R12 2 2
      201 JUMPIF                           R12 ; [+5]
      202 LOADK                            R16 K42 ["afterAll"]
      203 MOVE                             R17 R13
      204 NAMECALL                         R14 R0 K6 ["addDummyError"]
      206 CALL                             R14 3 0
      207 FORGLOOP                         R7 2 [inext] ; [-11]
      209 NAMECALL                         R7 R2 K43 ["popHooks"]
      211 CALL                             R7 1 0
      212 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["TestSession"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["LifecycleHooks"]
       27 CALL                             R2 1 1
       28 DUPTABLE                         R3 K9 [{"environment"}]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K8 ["environment"]
       33 DUPCLOSURE                       R4 K10 [PROTO_2]
       34 DUPCLOSURE                       R5 K11 [PROTO_4]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R5 R3 K12 ["runPlan"]
       41 DUPCLOSURE                       R5 K13 [PROTO_11]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R5 R3 K14 ["runPlanNode"]
       47 RETURN                           R3 1

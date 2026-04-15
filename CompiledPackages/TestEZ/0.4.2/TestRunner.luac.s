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
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["NodeModifier"]
        5 GETTABLEKS                       R3 R4 K2 ["Focus"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K0 ["new"]
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
       22 GETUPVAL                         R5 3
       23 GETTABLEKS                       R4 R5 K4 ["runPlanNode"]
       25 MOVE                             R5 R1
       26 MOVE                             R6 R0
       27 MOVE                             R7 R2
       28 CALL                             R4 3 0
       29 NAMECALL                         R4 R1 K5 ["finalize"]
       31 CALL                             R4 1 -1
       32 RETURN                           R4 -1

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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETIMPORT                        R3 K2 [debug.traceback]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 LOADN                            R5 2
        9 CALL                             R3 2 1
       10 CONCAT                           R1 R2 R3
       11 RETURN                           R1 1

PROTO_8:
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
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R6 R8 K8 ["environment"]
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
       40 GETIMPORT                        R6 K14 [xpcall]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R5
       45 NEWCLOSURE                       R8 P2
       46 CAPTURE                          REF R1
       47 CALL                             R6 2 2
       48 JUMPIF                           R6 ; [+2]
       49 LOADB                            R2 0
       50 MOVE                             R3 R7
       51 GETIMPORT                        R8 K1 [_G]
       53 LOADNIL                          R9
       54 SETTABLEKS                       R9 R8 K2 ["__TESTEZ_RUNNING_TEST__"]
       56 CLOSEUPVALS                      R1
       57 RETURN                           R2 2

PROTO_9:
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

PROTO_10:
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
       32 JUMPIF                           R5 ; [+83]
       33 GETIMPORT                        R6 K2 [ipairs]
       35 GETTABLEKS                       R7 R1 K7 ["children"]
       37 CALL                             R6 1 3
       38 FORGPREP_INEXT                   R6
       39 GETTABLEKS                       R11 R10 K8 ["type"]
       41 GETUPVAL                         R14 2
       42 GETTABLEKS                       R13 R14 K9 ["NodeType"]
       44 GETTABLEKS                       R12 R13 K10 ["It"]
       46 JUMPIFNOTEQ                      R11 R12 ; [+29]
       48 MOVE                             R13 R10
       49 NAMECALL                         R11 R0 K11 ["pushNode"]
       51 CALL                             R11 2 0
       52 NAMECALL                         R11 R0 K12 ["shouldSkip"]
       54 CALL                             R11 1 1
       55 JUMPIFNOT                        R11 ; [+4]
       56 NAMECALL                         R11 R0 K13 ["setSkipped"]
       58 CALL                             R11 1 0
       59 JUMP                             ; [+12]
       60 MOVE                             R11 R4
       61 MOVE                             R12 R10
       62 CALL                             R11 1 2
       63 JUMPIFNOT                        R11 ; [+4]
       64 NAMECALL                         R13 R0 K14 ["setSuccess"]
       66 CALL                             R13 1 0
       67 JUMP                             ; [+4]
       68 MOVE                             R15 R12
       69 NAMECALL                         R13 R0 K15 ["setError"]
       71 CALL                             R13 2 0
       72 NAMECALL                         R11 R0 K16 ["popNode"]
       74 CALL                             R11 1 0
       75 JUMP                             ; [+38]
       76 GETTABLEKS                       R11 R10 K8 ["type"]
       78 GETUPVAL                         R14 2
       79 GETTABLEKS                       R13 R14 K9 ["NodeType"]
       81 GETTABLEKS                       R12 R13 K17 ["Describe"]
       83 JUMPIFNOTEQ                      R11 R12 ; [+30]
       85 MOVE                             R13 R10
       86 NAMECALL                         R11 R0 K11 ["pushNode"]
       88 CALL                             R11 2 0
       89 GETUPVAL                         R12 0
       90 GETTABLEKS                       R11 R12 K18 ["runPlanNode"]
       92 MOVE                             R12 R0
       93 MOVE                             R13 R10
       94 MOVE                             R14 R2
       95 CALL                             R11 3 0
       96 GETTABLEKS                       R11 R10 K19 ["loadError"]
       98 JUMPIFNOT                        R11 ; [+9]
       99 LOADK                            R12 K20 ["Error during planning: "]
      100 GETTABLEKS                       R13 R10 K19 ["loadError"]
      102 CONCAT                           R11 R12 R13
      103 MOVE                             R14 R11
      104 NAMECALL                         R12 R0 K15 ["setError"]
      106 CALL                             R12 2 0
      107 JUMP                             ; [+3]
      108 NAMECALL                         R11 R0 K21 ["setStatusFromChildren"]
      110 CALL                             R11 1 0
      111 NAMECALL                         R11 R0 K16 ["popNode"]
      113 CALL                             R11 1 0
      114 FORGLOOP                         R6 2 [inext] ; [-76]
      116 GETIMPORT                        R6 K2 [ipairs]
      118 NAMECALL                         R7 R2 K22 ["getAfterAllHooks"]
      120 CALL                             R7 1 -1
      121 CALL                             R6 -1 3
      122 FORGPREP_INEXT                   R6
      123 MOVE                             R11 R3
      124 MOVE                             R12 R10
      125 LOADK                            R13 K23 ["afterAll hook: "]
      126 CALL                             R11 2 2
      127 JUMPIF                           R11 ; [+5]
      128 LOADK                            R15 K24 ["afterAll"]
      129 MOVE                             R16 R12
      130 NAMECALL                         R13 R0 K6 ["addDummyError"]
      132 CALL                             R13 3 0
      133 FORGLOOP                         R6 2 [inext] ; [-11]
      135 NAMECALL                         R6 R2 K25 ["popHooks"]
      137 CALL                             R6 1 0
      138 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["TestSession"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["LifecycleHooks"]
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
       41 DUPCLOSURE                       R5 K13 [PROTO_10]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R5 R3 K14 ["runPlanNode"]
       47 RETURN                           R3 1

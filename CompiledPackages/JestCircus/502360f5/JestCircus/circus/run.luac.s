PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K0 ["rootDescribeBlock"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K2 [{"name"}]
        7 LOADK                            R3 K3 ["run_start"]
        8 SETTABLEKS                       R3 R2 K1 ["name"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K4 ["expect"]
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 2
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 NAMECALL                         R1 R1 K4 ["expect"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 DUPTABLE                         R2 K2 [{"name"}]
       22 LOADK                            R3 K5 ["run_finish"]
       23 SETTABLEKS                       R3 R2 K1 ["name"]
       25 CALL                             R1 1 1
       26 NAMECALL                         R1 R1 K4 ["expect"]
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 3
       30 GETUPVAL                         R2 0
       31 CALL                             R2 0 1
       32 GETTABLEKS                       R2 R2 K0 ["rootDescribeBlock"]
       34 GETUPVAL                         R3 0
       35 CALL                             R3 0 1
       36 GETTABLEKS                       R3 R3 K6 ["unhandledErrors"]
       38 CALL                             R1 2 -1
       39 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 CALL                             R0 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NAMECALL                         R0 R0 K1 ["andThen"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"describeBlock", "name"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["describeBlock"]
        5 LOADK                            R2 K3 ["run_describe_start"]
        6 SETTABLEKS                       R2 R1 K1 ["name"]
        8 CALL                             R0 1 1
        9 NAMECALL                         R0 R0 K4 ["expect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 GETUPVAL                         R1 1
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R1 R0 K5 ["beforeAll"]
       17 GETTABLEKS                       R2 R0 K6 ["afterAll"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K7 ["mode"]
       22 JUMPIFEQKS                       R4 K8 ["skip"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 JUMPIF                           R3 ; [+18]
       27 GETIMPORT                        R4 K10 [ipairs]
       29 MOVE                             R5 R1
       30 CALL                             R4 1 3
       31 FORGPREP_INEXT                   R4
       32 GETUPVAL                         R9 3
       33 DUPTABLE                         R10 K12 [{"describeBlock", "hook"}]
       34 GETUPVAL                         R11 1
       35 SETTABLEKS                       R11 R10 K0 ["describeBlock"]
       37 SETTABLEKS                       R8 R10 K11 ["hook"]
       39 CALL                             R9 1 1
       40 NAMECALL                         R9 R9 K4 ["expect"]
       42 CALL                             R9 1 0
       43 FORGLOOP                         R4 2 [inext] ; [-12]
       45 GETIMPORT                        R6 K14 [_G]
       47 GETUPVAL                         R7 4
       48 GETTABLE                         R5 R6 R7
       49 FASTCALL2K                       TONUMBER R5 K15 ; [+4]
       51 LOADK                            R6 K15 [10]
       52 GETIMPORT                        R4 K17 [tonumber]
       54 CALL                             R4 2 1
       55 JUMPIFEQKNIL                     R4 ; [+3]
       57 MOVE                             R5 R4
       58 JUMP                             ; [+1]
       59 LOADN                            R5 0
       60 NEWTABLE                         R6 0 0
       62 GETIMPORT                        R7 K10 [ipairs]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K18 ["children"]
       67 CALL                             R7 1 3
       68 FORGPREP_INEXT                   R7
       69 GETTABLEKS                       R12 R11 K19 ["type"]
       71 JUMPIFNOTEQKS                    R12 K0 ["describeBlock"] ; [+8]
       73 GETUPVAL                         R12 5
       74 MOVE                             R13 R11
       75 CALL                             R12 1 1
       76 NAMECALL                         R12 R12 K4 ["expect"]
       78 CALL                             R12 1 0
       79 JUMP                             ; [+37]
       80 GETTABLEKS                       R12 R11 K19 ["type"]
       82 JUMPIFNOTEQKS                    R12 K20 ["test"] ; [+34]
       84 GETTABLEKS                       R14 R11 K21 ["errors"]
       86 LENGTH                           R13 R14
       87 LOADN                            R14 0
       88 JUMPIFLT                         R14 R13 ; [+2]
       90 LOADB                            R12 0 +1
       91 LOADB                            R12 1
       92 GETUPVAL                         R13 6
       93 MOVE                             R14 R11
       94 MOVE                             R15 R3
       95 CALL                             R13 2 1
       96 NAMECALL                         R13 R13 K4 ["expect"]
       98 CALL                             R13 1 0
       99 JUMPIFNOTEQKB                    R12 FALSE ; [+17]
      101 LOADN                            R13 0
      102 JUMPIFNOTLT                      R13 R5 ; [+14]
      104 GETTABLEKS                       R14 R11 K21 ["errors"]
      106 LENGTH                           R13 R14
      107 LOADN                            R14 0
      108 JUMPIFNOTLT                      R14 R13 ; [+8]
      110 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      112 MOVE                             R14 R6
      113 MOVE                             R15 R11
      114 GETIMPORT                        R13 K24 [table.insert]
      116 CALL                             R13 2 0
      117 FORGLOOP                         R7 2 [inext] ; [-49]
      119 GETIMPORT                        R7 K10 [ipairs]
      121 MOVE                             R8 R6
      122 CALL                             R7 1 3
      123 FORGPREP_INEXT                   R7
      124 MOVE                             R12 R5
      125 LOADN                            R13 0
      126 JUMPIFNOTLT                      R13 R12 ; [+27]
      128 GETTABLEKS                       R14 R11 K21 ["errors"]
      130 LENGTH                           R13 R14
      131 LOADN                            R14 0
      132 JUMPIFNOTLT                      R14 R13 ; [+21]
      134 GETUPVAL                         R13 0
      135 DUPTABLE                         R14 K25 [{"name", "test"}]
      136 LOADK                            R15 K26 ["test_retry"]
      137 SETTABLEKS                       R15 R14 K1 ["name"]
      139 SETTABLEKS                       R11 R14 K20 ["test"]
      141 CALL                             R13 1 1
      142 NAMECALL                         R13 R13 K4 ["expect"]
      144 CALL                             R13 1 0
      145 GETUPVAL                         R13 6
      146 MOVE                             R14 R11
      147 MOVE                             R15 R3
      148 CALL                             R13 2 1
      149 NAMECALL                         R13 R13 K4 ["expect"]
      151 CALL                             R13 1 0
      152 SUBK                             R12 R12 K27 [1]
      153 JUMPBACK                         ; [-29]
      154 FORGLOOP                         R7 2 [inext] ; [-31]
      156 JUMPIF                           R3 ; [+18]
      157 GETIMPORT                        R7 K10 [ipairs]
      159 MOVE                             R8 R2
      160 CALL                             R7 1 3
      161 FORGPREP_INEXT                   R7
      162 GETUPVAL                         R12 3
      163 DUPTABLE                         R13 K12 [{"describeBlock", "hook"}]
      164 GETUPVAL                         R14 1
      165 SETTABLEKS                       R14 R13 K0 ["describeBlock"]
      167 SETTABLEKS                       R11 R13 K11 ["hook"]
      169 CALL                             R12 1 1
      170 NAMECALL                         R12 R12 K4 ["expect"]
      172 CALL                             R12 1 0
      173 FORGLOOP                         R7 2 [inext] ; [-12]
      175 GETUPVAL                         R7 0
      176 DUPTABLE                         R8 K2 [{"describeBlock", "name"}]
      177 GETUPVAL                         R9 1
      178 SETTABLEKS                       R9 R8 K0 ["describeBlock"]
      180 LOADK                            R9 K28 ["run_describe_finish"]
      181 SETTABLEKS                       R9 R8 K1 ["name"]
      183 CALL                             R7 1 1
      184 NAMECALL                         R7 R7 K4 ["expect"]
      186 CALL                             R7 1 0
      187 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["resolve"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 NAMECALL                         R1 R1 K1 ["andThen"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"name", "test"}]
        2 LOADK                            R2 K3 ["test_start"]
        3 SETTABLEKS                       R2 R1 K0 ["name"]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K1 ["test"]
        8 CALL                             R0 1 1
        9 NAMECALL                         R0 R0 K4 ["expect"]
       11 CALL                             R0 1 0
       12 NEWTABLE                         R0 0 0
       14 GETUPVAL                         R1 2
       15 CALL                             R1 0 1
       16 GETTABLEKS                       R2 R1 K5 ["hasFocusedTests"]
       18 GETTABLEKS                       R3 R1 K6 ["testNamePattern"]
       20 GETUPVAL                         R4 3
       21 JUMPIF                           R4 ; [+22]
       22 LOADB                            R4 1
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K7 ["mode"]
       26 JUMPIFEQKS                       R5 K8 ["skip"] ; [+17]
       28 JUMPIFNOT                        R2 ; [+6]
       29 LOADB                            R4 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K7 ["mode"]
       33 JUMPIFNOTEQKS                    R5 K9 ["only"] ; [+10]
       35 MOVE                             R4 R3
       36 JUMPIFNOT                        R4 ; [+7]
       37 GETUPVAL                         R7 4
       38 GETUPVAL                         R8 1
       39 CALL                             R7 1 -1
       40 NAMECALL                         R5 R3 K1 ["test"]
       42 CALL                             R5 -1 1
       43 NOT                              R4 R5
       44 JUMPIFNOT                        R4 ; [+13]
       45 GETUPVAL                         R5 0
       46 DUPTABLE                         R6 K2 [{"name", "test"}]
       47 LOADK                            R7 K10 ["test_skip"]
       48 SETTABLEKS                       R7 R6 K0 ["name"]
       50 GETUPVAL                         R7 1
       51 SETTABLEKS                       R7 R6 K1 ["test"]
       53 CALL                             R5 1 1
       54 NAMECALL                         R5 R5 K4 ["expect"]
       56 CALL                             R5 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R5 1
       59 GETTABLEKS                       R5 R5 K7 ["mode"]
       61 JUMPIFNOTEQKS                    R5 K11 ["todo"] ; [+14]
       63 GETUPVAL                         R5 0
       64 DUPTABLE                         R6 K2 [{"name", "test"}]
       65 LOADK                            R7 K12 ["test_todo"]
       66 SETTABLEKS                       R7 R6 K0 ["name"]
       68 GETUPVAL                         R7 1
       69 SETTABLEKS                       R7 R6 K1 ["test"]
       71 CALL                             R5 1 1
       72 NAMECALL                         R5 R5 K4 ["expect"]
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 GETUPVAL                         R5 5
       77 GETUPVAL                         R6 1
       78 CALL                             R5 1 1
       79 GETTABLEKS                       R6 R5 K13 ["afterEach"]
       81 GETTABLEKS                       R7 R5 K14 ["beforeEach"]
       83 GETIMPORT                        R8 K16 [ipairs]
       85 MOVE                             R9 R7
       86 CALL                             R8 1 3
       87 FORGPREP_INEXT                   R8
       88 GETUPVAL                         R14 1
       89 GETTABLEKS                       R14 R14 K17 ["errors"]
       91 LENGTH                           R13 R14
       92 LOADN                            R14 0
       93 JUMPIFLT                         R14 R13 ; [+16]
       95 GETUPVAL                         R13 6
       96 DUPTABLE                         R14 K20 [{"hook", "test", "testContext"}]
       97 SETTABLEKS                       R12 R14 K18 ["hook"]
       99 GETUPVAL                         R15 1
      100 SETTABLEKS                       R15 R14 K1 ["test"]
      102 SETTABLEKS                       R0 R14 K19 ["testContext"]
      104 CALL                             R13 1 1
      105 NAMECALL                         R13 R13 K4 ["expect"]
      107 CALL                             R13 1 0
      108 FORGLOOP                         R8 2 [inext] ; [-21]
      110 GETUPVAL                         R8 7
      111 GETUPVAL                         R9 1
      112 MOVE                             R10 R0
      113 CALL                             R8 2 1
      114 NAMECALL                         R8 R8 K4 ["expect"]
      116 CALL                             R8 1 0
      117 GETIMPORT                        R8 K16 [ipairs]
      119 MOVE                             R9 R6
      120 CALL                             R8 1 3
      121 FORGPREP_INEXT                   R8
      122 GETUPVAL                         R13 6
      123 DUPTABLE                         R14 K20 [{"hook", "test", "testContext"}]
      124 SETTABLEKS                       R12 R14 K18 ["hook"]
      126 GETUPVAL                         R15 1
      127 SETTABLEKS                       R15 R14 K1 ["test"]
      129 SETTABLEKS                       R0 R14 K19 ["testContext"]
      131 CALL                             R13 1 1
      132 NAMECALL                         R13 R13 K4 ["expect"]
      134 CALL                             R13 1 0
      135 FORGLOOP                         R8 2 [inext] ; [-14]
      137 GETUPVAL                         R8 0
      138 DUPTABLE                         R9 K2 [{"name", "test"}]
      139 LOADK                            R10 K21 ["test_done"]
      140 SETTABLEKS                       R10 R9 K0 ["name"]
      142 GETUPVAL                         R10 1
      143 SETTABLEKS                       R10 R9 K1 ["test"]
      145 CALL                             R8 1 1
      146 NAMECALL                         R8 R8 K4 ["expect"]
      148 CALL                             R8 1 0
      149 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 NAMECALL                         R2 R2 K1 ["andThen"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K2 [{"isHook", "timeout"}]
        4 LOADB                            R4 1
        5 SETTABLEKS                       R4 R3 K0 ["isHook"]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["timeout"]
       10 CALL                             R0 3 1
       11 NAMECALL                         R0 R0 K3 ["expect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 4
       15 DUPTABLE                         R1 K8 [{"describeBlock", "hook", "name", "test"}]
       16 GETUPVAL                         R2 5
       17 SETTABLEKS                       R2 R1 K4 ["describeBlock"]
       19 GETUPVAL                         R2 1
       20 SETTABLEKS                       R2 R1 K5 ["hook"]
       22 LOADK                            R2 K9 ["hook_success"]
       23 SETTABLEKS                       R2 R1 K6 ["name"]
       25 GETUPVAL                         R2 6
       26 SETTABLEKS                       R2 R1 K7 ["test"]
       28 CALL                             R0 1 1
       29 NAMECALL                         R0 R0 K3 ["expect"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"hook", "name"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["hook"]
        5 LOADK                            R2 K3 ["hook_start"]
        6 SETTABLEKS                       R2 R1 K1 ["name"]
        8 CALL                             R0 1 1
        9 NAMECALL                         R0 R0 K4 ["expect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K5 ["toJSBoolean"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["timeout"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+9]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K6 ["timeout"]
       23 JUMPIFEQKNIL                     R1 ; [+5]
       25 GETUPVAL                         R0 1
       26 GETTABLEKS                       R0 R0 K6 ["timeout"]
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R0 3
       30 CALL                             R0 0 1
       31 GETTABLEKS                       R0 R0 K7 ["testTimeout"]
       33 GETIMPORT                        R1 K9 [pcall]
       35 NEWCLOSURE                       R2 P0
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U6
       42 CAPTURE                          UPVAL U7
       43 CALL                             R1 1 2
       44 JUMPIF                           R1 ; [+20]
       45 GETUPVAL                         R3 0
       46 DUPTABLE                         R4 K13 [{"describeBlock", "error", "hook", "name", "test"}]
       47 GETUPVAL                         R5 6
       48 SETTABLEKS                       R5 R4 K10 ["describeBlock"]
       50 SETTABLEKS                       R2 R4 K11 ["error"]
       52 GETUPVAL                         R5 1
       53 SETTABLEKS                       R5 R4 K0 ["hook"]
       55 LOADK                            R5 K14 ["hook_failure"]
       56 SETTABLEKS                       R5 R4 K1 ["name"]
       58 GETUPVAL                         R5 7
       59 SETTABLEKS                       R5 R4 K12 ["test"]
       61 CALL                             R3 1 1
       62 NAMECALL                         R3 R3 K4 ["expect"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["hook"]
        2 GETTABLEKS                       R2 R0 K1 ["test"]
        4 GETTABLEKS                       R3 R0 K2 ["describeBlock"]
        6 GETTABLEKS                       R4 R0 K3 ["testContext"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["resolve"]
       11 CALL                             R5 0 1
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R2
       21 NAMECALL                         R5 R5 K5 ["andThen"]
       23 CALL                             R5 2 -1
       24 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K2 [{"isHook", "timeout"}]
        4 LOADB                            R4 0
        5 SETTABLEKS                       R4 R3 K0 ["isHook"]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K1 ["timeout"]
       10 CALL                             R0 3 1
       11 NAMECALL                         R0 R0 K3 ["expect"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K4 ["failing"]
       17 JUMPIFNOT                        R0 ; [+21]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K5 ["asyncError"]
       21 LOADK                            R1 K6 ["Failing test passed even though it was supposed to fail. Remove `.failing` to remove error."]
       22 SETTABLEKS                       R1 R0 K7 ["message"]
       24 GETUPVAL                         R0 4
       25 DUPTABLE                         R1 K11 [{"error", "name", "test"}]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K5 ["asyncError"]
       29 SETTABLEKS                       R2 R1 K8 ["error"]
       31 LOADK                            R2 K12 ["test_fn_failure"]
       32 SETTABLEKS                       R2 R1 K9 ["name"]
       34 GETUPVAL                         R2 1
       35 SETTABLEKS                       R2 R1 K10 ["test"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R0 4
       40 DUPTABLE                         R1 K13 [{"name", "test"}]
       41 LOADK                            R2 K14 ["test_fn_success"]
       42 SETTABLEKS                       R2 R1 K9 ["name"]
       44 GETUPVAL                         R2 1
       45 SETTABLEKS                       R2 R1 K10 ["test"]
       47 CALL                             R0 1 1
       48 NAMECALL                         R0 R0 K3 ["expect"]
       50 CALL                             R0 1 0
       51 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"name", "test"}]
        2 LOADK                            R2 K3 ["test_fn_start"]
        3 SETTABLEKS                       R2 R1 K0 ["name"]
        5 GETUPVAL                         R2 1
        6 SETTABLEKS                       R2 R1 K1 ["test"]
        8 CALL                             R0 1 1
        9 NAMECALL                         R0 R0 K4 ["expect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K5 ["toJSBoolean"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["timeout"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+4]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K6 ["timeout"]
       23 JUMPIF                           R0 ; [+4]
       24 GETUPVAL                         R0 3
       25 CALL                             R0 0 1
       26 GETTABLEKS                       R0 R0 K7 ["testTimeout"]
       28 GETUPVAL                         R1 4
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K8 ["fn"]
       32 LOADK                            R3 K9 ["Tests with no 'fn' should have 'mode' set to 'skipped'"]
       33 CALL                             R1 2 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K10 ["errors"]
       37 LENGTH                           R1 R2
       38 LOADN                            R2 0
       39 JUMPIFNOTLT                      R2 R1 ; [+2]
       41 RETURN                           R0 0
       42 GETIMPORT                        R1 K12 [pcall]
       44 NEWCLOSURE                       R2 P0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U0
       50 CALL                             R1 1 2
       51 JUMPIF                           R1 ; [+28]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K13 ["failing"]
       55 JUMPIFNOT                        R3 ; [+10]
       56 GETUPVAL                         R3 0
       57 DUPTABLE                         R4 K2 [{"name", "test"}]
       58 LOADK                            R5 K14 ["test_fn_success"]
       59 SETTABLEKS                       R5 R4 K0 ["name"]
       61 GETUPVAL                         R5 1
       62 SETTABLEKS                       R5 R4 K1 ["test"]
       64 CALL                             R3 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R3 0
       67 DUPTABLE                         R4 K16 [{"error", "name", "test"}]
       68 SETTABLEKS                       R2 R4 K15 ["error"]
       70 LOADK                            R5 K17 ["test_fn_failure"]
       71 SETTABLEKS                       R5 R4 K0 ["name"]
       73 GETUPVAL                         R5 1
       74 SETTABLEKS                       R5 R4 K1 ["test"]
       76 CALL                             R3 1 1
       77 NAMECALL                         R3 R3 K4 ["expect"]
       79 CALL                             R3 1 0
       80 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["resolve"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R1
       12 NAMECALL                         R2 R2 K1 ["andThen"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R1 K7 ["Promise"]
       20 CALL                             R4 1 1
       21 NEWTABLE                         R5 1 0
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R1 K8 ["JestTypes"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R8 R8 K2 ["Parent"]
       34 GETTABLEKS                       R8 R8 K9 ["state"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R7 K10 ["dispatch"]
       39 GETTABLEKS                       R9 R7 K11 ["getState"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETIMPORT                        R11 K1 [script]
       45 GETTABLEKS                       R11 R11 K2 ["Parent"]
       47 GETTABLEKS                       R11 R11 K12 ["types"]
       49 CALL                             R10 1 1
       50 GETTABLEKS                       R10 R10 K13 ["RETRY_TIMES"]
       52 GETIMPORT                        R11 K4 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R12 R12 K2 ["Parent"]
       58 GETTABLEKS                       R12 R12 K14 ["utils"]
       60 CALL                             R11 1 1
       61 GETTABLEKS                       R12 R11 K15 ["callAsyncCircusFn"]
       63 GETTABLEKS                       R13 R11 K16 ["getAllHooksForDescribe"]
       65 GETTABLEKS                       R14 R11 K17 ["getEachHooksForTest"]
       67 GETTABLEKS                       R15 R11 K18 ["getTestID"]
       69 GETTABLEKS                       R16 R11 K19 ["invariant"]
       71 GETTABLEKS                       R17 R11 K20 ["makeRunResult"]
       73 LOADNIL                          R18
       74 LOADNIL                          R19
       75 LOADNIL                          R20
       76 LOADNIL                          R21
       77 NEWCLOSURE                       R22 P0
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          REF R18
       82 CAPTURE                          VAL R17
       83 NEWCLOSURE                       R18 P1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R13
       87 CAPTURE                          REF R20
       88 CAPTURE                          VAL R10
       89 CAPTURE                          REF R18
       90 CAPTURE                          REF R19
       91 NEWCLOSURE                       R19 P2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R14
       97 CAPTURE                          REF R20
       98 CAPTURE                          REF R21
       99 DUPCLOSURE                       R20 K21 [PROTO_8]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R12
      105 DUPCLOSURE                       R21 K22 [PROTO_11]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R22 R5 K23 ["default"]
      114 CLOSEUPVALS                      R18
      115 RETURN                           R5 1

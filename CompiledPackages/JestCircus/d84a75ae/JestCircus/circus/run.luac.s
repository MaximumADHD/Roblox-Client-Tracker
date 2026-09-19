PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R0 R1 K0 ["rootDescribeBlock"]
        5 GETUPVAL                         R1 1
        6 DUPTABLE                         R2 K3 [{["name"] = "run_start"}]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K4 ["expect"]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 2
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 NAMECALL                         R1 R1 K4 ["expect"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 1
       18 DUPTABLE                         R2 K6 [{["name"] = "run_finish"}]
       19 CALL                             R1 1 1
       20 NAMECALL                         R1 R1 K4 ["expect"]
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 3
       24 GETUPVAL                         R2 0
       25 CALL                             R2 0 1
       26 GETTABLEKS                       R2 R2 K0 ["rootDescribeBlock"]
       28 GETUPVAL                         R3 0
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R3 R3 K7 ["unhandledErrors"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

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
        1 DUPTABLE                         R1 K3 [{[1], ["name"] = "run_describe_start"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["describeBlock"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R0 R0 K4 ["expect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 1
       12 GETTABLEKS                       R1 R0 K5 ["beforeAll"]
       14 GETTABLEKS                       R2 R0 K6 ["afterAll"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K7 ["mode"]
       19 JUMPIFEQKS                       R4 K8 ["skip"] ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 JUMPIF                           R3 ; [+18]
       24 GETIMPORT                        R4 K10 [ipairs]
       26 MOVE                             R5 R1
       27 CALL                             R4 1 3
       28 FORGPREP_INEXT                   R4
       29 GETUPVAL                         R9 3
       30 DUPTABLE                         R10 K12 [{"describeBlock", "hook"}]
       31 GETUPVAL                         R11 1
       32 SETTABLEKS                       R11 R10 K0 ["describeBlock"]
       34 SETTABLEKS                       R8 R10 K11 ["hook"]
       36 CALL                             R9 1 1
       37 NAMECALL                         R9 R9 K4 ["expect"]
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 [inext] ; [-12]
       42 GETIMPORT                        R6 K14 [_G]
       44 GETUPVAL                         R7 4
       45 GETTABLE                         R5 R6 R7
       46 FASTCALL2K                       TONUMBER R5 K15 ; [+4]
       48 LOADK                            R6 K15 [10]
       49 GETIMPORT                        R4 K17 [tonumber]
       51 CALL                             R4 2 1
       52 JUMPIFEQKNIL                     R4 ; [+3]
       54 MOVE                             R5 R4
       55 JUMP                             ; [+1]
       56 LOADN                            R5 0
       57 NEWTABLE                         R6 0 0
       59 GETIMPORT                        R7 K10 [ipairs]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K18 ["children"]
       64 CALL                             R7 1 3
       65 FORGPREP_INEXT                   R7
       66 GETTABLEKS                       R12 R11 K19 ["type"]
       68 JUMPIFNOTEQKS                    R12 K0 ["describeBlock"] ; [+8]
       70 GETUPVAL                         R12 5
       71 MOVE                             R13 R11
       72 CALL                             R12 1 1
       73 NAMECALL                         R12 R12 K4 ["expect"]
       75 CALL                             R12 1 0
       76 JUMP                             ; [+37]
       77 GETTABLEKS                       R12 R11 K19 ["type"]
       79 JUMPIFNOTEQKS                    R12 K20 ["test"] ; [+34]
       81 GETTABLEKS                       R14 R11 K21 ["errors"]
       83 LENGTH                           R13 R14
       84 LOADN                            R14 0
       85 JUMPIFLT                         R14 R13 ; [+2]
       87 LOADB                            R12 0 +1
       88 LOADB                            R12 1
       89 GETUPVAL                         R13 6
       90 MOVE                             R14 R11
       91 MOVE                             R15 R3
       92 CALL                             R13 2 1
       93 NAMECALL                         R13 R13 K4 ["expect"]
       95 CALL                             R13 1 0
       96 JUMPIFNOTEQKB                    R12 FALSE ; [+17]
       98 LOADN                            R13 0
       99 JUMPIFNOTLT                      R13 R5 ; [+14]
      101 GETTABLEKS                       R14 R11 K21 ["errors"]
      103 LENGTH                           R13 R14
      104 LOADN                            R14 0
      105 JUMPIFNOTLT                      R14 R13 ; [+8]
      107 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      109 MOVE                             R14 R6
      110 MOVE                             R15 R11
      111 GETIMPORT                        R13 K24 [table.insert]
      113 CALL                             R13 2 0
      114 FORGLOOP                         R7 2 [inext] ; [-49]
      116 GETIMPORT                        R7 K10 [ipairs]
      118 MOVE                             R8 R6
      119 CALL                             R7 1 3
      120 FORGPREP_INEXT                   R7
      121 MOVE                             R12 R5
      122 LOADN                            R13 0
      123 JUMPIFNOTLT                      R13 R12 ; [+24]
      125 GETTABLEKS                       R14 R11 K21 ["errors"]
      127 LENGTH                           R13 R14
      128 LOADN                            R14 0
      129 JUMPIFNOTLT                      R14 R13 ; [+18]
      131 GETUPVAL                         R13 0
      132 DUPTABLE                         R14 K26 [{["name"] = "test_retry", ["test"]}]
      133 SETTABLEKS                       R11 R14 K20 ["test"]
      135 CALL                             R13 1 1
      136 NAMECALL                         R13 R13 K4 ["expect"]
      138 CALL                             R13 1 0
      139 GETUPVAL                         R13 6
      140 MOVE                             R14 R11
      141 MOVE                             R15 R3
      142 CALL                             R13 2 1
      143 NAMECALL                         R13 R13 K4 ["expect"]
      145 CALL                             R13 1 0
      146 SUBK                             R12 R12 K27 [1]
      147 JUMPBACK                         ; [-26]
      148 FORGLOOP                         R7 2 [inext] ; [-28]
      150 JUMPIF                           R3 ; [+18]
      151 GETIMPORT                        R7 K10 [ipairs]
      153 MOVE                             R8 R2
      154 CALL                             R7 1 3
      155 FORGPREP_INEXT                   R7
      156 GETUPVAL                         R12 3
      157 DUPTABLE                         R13 K12 [{"describeBlock", "hook"}]
      158 GETUPVAL                         R14 1
      159 SETTABLEKS                       R14 R13 K0 ["describeBlock"]
      161 SETTABLEKS                       R11 R13 K11 ["hook"]
      163 CALL                             R12 1 1
      164 NAMECALL                         R12 R12 K4 ["expect"]
      166 CALL                             R12 1 0
      167 FORGLOOP                         R7 2 [inext] ; [-12]
      169 GETUPVAL                         R7 0
      170 DUPTABLE                         R8 K29 [{[1], ["name"] = "run_describe_finish"}]
      171 GETUPVAL                         R9 1
      172 SETTABLEKS                       R9 R8 K0 ["describeBlock"]
      174 CALL                             R7 1 1
      175 NAMECALL                         R7 R7 K4 ["expect"]
      177 CALL                             R7 1 0
      178 RETURN                           R0 0

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
        1 DUPTABLE                         R1 K3 [{[1] = "test_start", ["test"]}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K2 ["test"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R0 R0 K4 ["expect"]
        8 CALL                             R0 1 0
        9 NEWTABLE                         R0 0 0
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 GETTABLEKS                       R2 R1 K5 ["hasFocusedTests"]
       15 GETTABLEKS                       R3 R1 K6 ["testNamePattern"]
       17 GETUPVAL                         R4 3
       18 JUMPIF                           R4 ; [+22]
       19 LOADB                            R4 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["mode"]
       23 JUMPIFEQKS                       R5 K8 ["skip"] ; [+17]
       25 JUMPIFNOT                        R2 ; [+6]
       26 LOADB                            R4 1
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K7 ["mode"]
       30 JUMPIFNOTEQKS                    R5 K9 ["only"] ; [+10]
       32 MOVE                             R4 R3
       33 JUMPIFNOT                        R4 ; [+7]
       34 GETUPVAL                         R7 4
       35 GETUPVAL                         R8 1
       36 CALL                             R7 1 -1
       37 NAMECALL                         R5 R3 K2 ["test"]
       39 CALL                             R5 -1 1
       40 NOT                              R4 R5
       41 JUMPIFNOT                        R4 ; [+10]
       42 GETUPVAL                         R5 0
       43 DUPTABLE                         R6 K11 [{[1] = "test_skip", ["test"]}]
       44 GETUPVAL                         R7 1
       45 SETTABLEKS                       R7 R6 K2 ["test"]
       47 CALL                             R5 1 1
       48 NAMECALL                         R5 R5 K4 ["expect"]
       50 CALL                             R5 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R5 1
       53 GETTABLEKS                       R5 R5 K7 ["mode"]
       55 JUMPIFNOTEQKS                    R5 K12 ["todo"] ; [+11]
       57 GETUPVAL                         R5 0
       58 DUPTABLE                         R6 K14 [{[1] = "test_todo", ["test"]}]
       59 GETUPVAL                         R7 1
       60 SETTABLEKS                       R7 R6 K2 ["test"]
       62 CALL                             R5 1 1
       63 NAMECALL                         R5 R5 K4 ["expect"]
       65 CALL                             R5 1 0
       66 RETURN                           R0 0
       67 GETUPVAL                         R5 5
       68 GETUPVAL                         R6 1
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R6 R5 K15 ["afterEach"]
       72 GETTABLEKS                       R7 R5 K16 ["beforeEach"]
       74 GETIMPORT                        R8 K18 [ipairs]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 3
       78 FORGPREP_INEXT                   R8
       79 GETUPVAL                         R14 1
       80 GETTABLEKS                       R14 R14 K19 ["errors"]
       82 LENGTH                           R13 R14
       83 LOADN                            R14 0
       84 JUMPIFLT                         R14 R13 ; [+16]
       86 GETUPVAL                         R13 6
       87 DUPTABLE                         R14 K22 [{"hook", "test", "testContext"}]
       88 SETTABLEKS                       R12 R14 K20 ["hook"]
       90 GETUPVAL                         R15 1
       91 SETTABLEKS                       R15 R14 K2 ["test"]
       93 SETTABLEKS                       R0 R14 K21 ["testContext"]
       95 CALL                             R13 1 1
       96 NAMECALL                         R13 R13 K4 ["expect"]
       98 CALL                             R13 1 0
       99 FORGLOOP                         R8 2 [inext] ; [-21]
      101 GETUPVAL                         R8 7
      102 GETUPVAL                         R9 1
      103 MOVE                             R10 R0
      104 CALL                             R8 2 1
      105 NAMECALL                         R8 R8 K4 ["expect"]
      107 CALL                             R8 1 0
      108 GETIMPORT                        R8 K18 [ipairs]
      110 MOVE                             R9 R6
      111 CALL                             R8 1 3
      112 FORGPREP_INEXT                   R8
      113 GETUPVAL                         R13 6
      114 DUPTABLE                         R14 K22 [{"hook", "test", "testContext"}]
      115 SETTABLEKS                       R12 R14 K20 ["hook"]
      117 GETUPVAL                         R15 1
      118 SETTABLEKS                       R15 R14 K2 ["test"]
      120 SETTABLEKS                       R0 R14 K21 ["testContext"]
      122 CALL                             R13 1 1
      123 NAMECALL                         R13 R13 K4 ["expect"]
      125 CALL                             R13 1 0
      126 FORGLOOP                         R8 2 [inext] ; [-14]
      128 GETUPVAL                         R8 0
      129 DUPTABLE                         R9 K24 [{[1] = "test_done", ["test"]}]
      130 GETUPVAL                         R10 1
      131 SETTABLEKS                       R10 R9 K2 ["test"]
      133 CALL                             R8 1 1
      134 NAMECALL                         R8 R8 K4 ["expect"]
      136 CALL                             R8 1 0
      137 RETURN                           R0 0

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
        3 DUPTABLE                         R3 K3 [{[1] = True, ["timeout"]}]
        4 GETUPVAL                         R4 3
        5 SETTABLEKS                       R4 R3 K2 ["timeout"]
        7 CALL                             R0 3 1
        8 NAMECALL                         R0 R0 K4 ["expect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 4
       12 DUPTABLE                         R1 K10 [{["describeBlock"], ["hook"], ["name"] = "hook_success", ["test"]}]
       13 GETUPVAL                         R2 5
       14 SETTABLEKS                       R2 R1 K5 ["describeBlock"]
       16 GETUPVAL                         R2 1
       17 SETTABLEKS                       R2 R1 K6 ["hook"]
       19 GETUPVAL                         R2 6
       20 SETTABLEKS                       R2 R1 K9 ["test"]
       22 CALL                             R0 1 1
       23 NAMECALL                         R0 R0 K4 ["expect"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1], ["name"] = "hook_start"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["hook"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R0 R0 K4 ["expect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K5 ["toJSBoolean"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["timeout"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K6 ["timeout"]
       20 JUMPIFEQKNIL                     R1 ; [+5]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K6 ["timeout"]
       25 JUMP                             ; [+4]
       26 GETUPVAL                         R0 3
       27 CALL                             R0 0 1
       28 GETTABLEKS                       R0 R0 K7 ["testTimeout"]
       30 GETIMPORT                        R1 K9 [pcall]
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CALL                             R1 1 2
       41 JUMPIF                           R1 ; [+17]
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R4 K14 [{["describeBlock"], ["error"], [3], ["name"] = "hook_failure", ["test"]}]
       44 GETUPVAL                         R5 6
       45 SETTABLEKS                       R5 R4 K10 ["describeBlock"]
       47 SETTABLEKS                       R2 R4 K11 ["error"]
       49 GETUPVAL                         R5 1
       50 SETTABLEKS                       R5 R4 K0 ["hook"]
       52 GETUPVAL                         R5 7
       53 SETTABLEKS                       R5 R4 K13 ["test"]
       55 CALL                             R3 1 1
       56 NAMECALL                         R3 R3 K4 ["expect"]
       58 CALL                             R3 1 0
       59 RETURN                           R0 0

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
        3 DUPTABLE                         R3 K3 [{[1] = False, ["timeout"]}]
        4 GETUPVAL                         R4 3
        5 SETTABLEKS                       R4 R3 K2 ["timeout"]
        7 CALL                             R0 3 1
        8 NAMECALL                         R0 R0 K4 ["expect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K5 ["failing"]
       14 JUMPIFNOT                        R0 ; [+18]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K6 ["asyncError"]
       18 LOADK                            R1 K7 ["Failing test passed even though it was supposed to fail. Remove `.failing` to remove error."]
       19 SETTABLEKS                       R1 R0 K8 ["message"]
       21 GETUPVAL                         R0 4
       22 DUPTABLE                         R1 K13 [{["error"], ["name"] = "test_fn_failure", ["test"]}]
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K6 ["asyncError"]
       26 SETTABLEKS                       R2 R1 K9 ["error"]
       28 GETUPVAL                         R2 1
       29 SETTABLEKS                       R2 R1 K12 ["test"]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0
       33 GETUPVAL                         R0 4
       34 DUPTABLE                         R1 K15 [{["name"] = "test_fn_success", ["test"]}]
       35 GETUPVAL                         R2 1
       36 SETTABLEKS                       R2 R1 K12 ["test"]
       38 CALL                             R0 1 1
       39 NAMECALL                         R0 R0 K4 ["expect"]
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = "test_fn_start", ["test"]}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K2 ["test"]
        5 CALL                             R0 1 1
        6 NAMECALL                         R0 R0 K4 ["expect"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K5 ["toJSBoolean"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["timeout"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+4]
       17 GETUPVAL                         R0 1
       18 GETTABLEKS                       R0 R0 K6 ["timeout"]
       20 JUMPIF                           R0 ; [+4]
       21 GETUPVAL                         R0 3
       22 CALL                             R0 0 1
       23 GETTABLEKS                       R0 R0 K7 ["testTimeout"]
       25 GETUPVAL                         R1 4
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K8 ["fn"]
       29 LOADK                            R3 K9 ["Tests with no 'fn' should have 'mode' set to 'skipped'"]
       30 CALL                             R1 2 0
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K10 ["errors"]
       34 LENGTH                           R1 R2
       35 LOADN                            R2 0
       36 JUMPIFNOTLT                      R2 R1 ; [+2]
       38 RETURN                           R0 0
       39 GETIMPORT                        R1 K12 [pcall]
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U0
       47 CALL                             R1 1 2
       48 JUMPIF                           R1 ; [+22]
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K13 ["failing"]
       52 JUMPIFNOT                        R3 ; [+7]
       53 GETUPVAL                         R3 0
       54 DUPTABLE                         R4 K15 [{[1] = "test_fn_success", ["test"]}]
       55 GETUPVAL                         R5 1
       56 SETTABLEKS                       R5 R4 K2 ["test"]
       58 CALL                             R3 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R3 0
       61 DUPTABLE                         R4 K18 [{["error"], [2] = "test_fn_failure", ["test"]}]
       62 SETTABLEKS                       R2 R4 K16 ["error"]
       64 GETUPVAL                         R5 1
       65 SETTABLEKS                       R5 R4 K2 ["test"]
       67 CALL                             R3 1 1
       68 NAMECALL                         R3 R3 K4 ["expect"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

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

PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["write"]
        3 GETTABLEKS                       R3 R0 K1 ["_buffer"]
        5 LOADK                            R4 K2 ["log"]
        6 MOVE                             R5 R1
        7 LOADNIL                          R6
        8 CALL                             R2 4 0
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K2 [{"write"}]
        4 DUPCLOSURE                       R3 K3 [PROTO_0]
        5 CAPTURE                          UPVAL U1
        6 SETTABLEKS                       R3 R2 K1 ["write"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 1
       10 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       12 GETIMPORT                        R0 K5 [setmetatable]
       14 CALL                             R0 2 1
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K6 ["_buffer"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K7 ["_counters"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K8 ["_timers"]
       27 LOADN                            R1 0
       28 SETTABLEKS                       R1 R0 K9 ["_groupDepth"]
       30 GETUPVAL                         R1 0
       31 SETTABLEKS                       R1 R0 K10 ["Console"]
       33 RETURN                           R0 1

PROTO_2:
        0 JUMPIFEQKNIL                     R3 ; [+3]
        2 MOVE                             R4 R3
        3 JUMP                             ; [+1]
        4 LOADN                            R4 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["new"]
        8 LOADNIL                          R6
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R7 R7 K1 ["write"]
       12 CALL                             R5 2 1
       13 GETTABLEKS                       R5 R5 K2 ["stack"]
       15 GETUPVAL                         R6 2
       16 MOVE                             R7 R5
       17 LOADK                            R8 K3 ["always have a stack trace"]
       18 CALL                             R6 2 0
       19 GETUPVAL                         R6 3
       20 GETTABLEKS                       R6 R6 K4 ["join"]
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K5 ["filter"]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K6 ["slice"]
       28 GETUPVAL                         R9 4
       29 GETTABLEKS                       R9 R9 K7 ["split"]
       31 MOVE                             R10 R5
       32 LOADK                            R11 K8 ["\n"]
       33 CALL                             R9 2 1
       34 MOVE                             R10 R4
       35 CALL                             R8 2 1
       36 GETUPVAL                         R9 5
       37 GETTABLEKS                       R9 R9 K9 ["toJSBoolean"]
       39 CALL                             R7 2 1
       40 LOADK                            R8 K8 ["\n"]
       41 CALL                             R6 2 1
       42 DUPTABLE                         R9 K13 [{"message", "origin", "type"}]
       43 SETTABLEKS                       R2 R9 K10 ["message"]
       45 SETTABLEKS                       R6 R9 K11 ["origin"]
       47 SETTABLEKS                       R1 R9 K12 ["type"]
       49 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       51 MOVE                             R8 R0
       52 GETIMPORT                        R7 K16 [table.insert]
       54 CALL                             R7 2 0
       55 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["write"]
        3 GETTABLEKS                       R4 R0 K1 ["_buffer"]
        5 MOVE                             R5 R1
        6 LOADK                            R9 K2 ["  "]
        7 GETTABLEKS                       R11 R0 K3 ["_groupDepth"]
        9 NAMECALL                         R9 R9 K4 ["rep"]
       11 CALL                             R9 2 1
       12 MOVE                             R7 R9
       13 MOVE                             R8 R2
       14 CONCAT                           R6 R7 R8
       15 LOADN                            R7 3
       16 CALL                             R3 4 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        ASSERT R1 ; [+2]
        2 GETIMPORT                        R0 K1 [assert]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 [""]
        1 GETUPVAL                         R2 0
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 LOADK                            R2 K1 [" "]
        5 GETUPVAL                         R4 0
        6 FASTCALL1                        TOSTRING R4 ; [+2]
        7 GETIMPORT                        R3 K3 [tostring]
        9 CALL                             R3 1 1
       10 CONCAT                           R1 R2 R3
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K4 ["assert"]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R9 R0
       15 GETIMPORT                        R8 K3 [tostring]
       17 CALL                             R8 1 1
       18 MOVE                             R6 R8
       19 MOVE                             R7 R1
       20 CONCAT                           R5 R6 R7
       21 NAMECALL                         R2 R2 K5 ["_log"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K1 [xpcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R5 P1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADK                            R2 K0 ["default"]
        5 GETTABLEKS                       R4 R0 K1 ["_counters"]
        7 GETTABLE                         R3 R4 R2
        8 JUMPIFNOTEQKNIL                  R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K1 ["_counters"]
       12 LOADN                            R4 0
       13 SETTABLE                         R4 R3 R2
       14 GETTABLEKS                       R3 R0 K1 ["_counters"]
       16 GETTABLE                         R4 R3 R2
       17 ADDK                             R4 R4 K2 [1]
       18 SETTABLE                         R4 R3 R2
       19 LOADK                            R5 K3 ["count"]
       20 GETUPVAL                         R6 0
       21 LOADK                            R7 K4 ["%s: %s"]
       22 MOVE                             R8 R2
       23 GETTABLEKS                       R10 R0 K1 ["_counters"]
       25 GETTABLE                         R9 R10 R2
       26 CALL                             R6 3 -1
       27 NAMECALL                         R3 R0 K5 ["_log"]
       29 CALL                             R3 -1 0
       30 RETURN                           R0 0

PROTO_8:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADK                            R2 K0 ["default"]
        5 GETTABLEKS                       R3 R0 K1 ["_counters"]
        7 LOADN                            R4 0
        8 SETTABLE                         R4 R3 R2
        9 RETURN                           R0 0

PROTO_9:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["debug"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 MOVE                             R6 R3
        7 CALL                             R4 2 1
        8 LOADK                            R7 K0 ["dir"]
        9 GETUPVAL                         R8 1
       10 MOVE                             R9 R3
       11 MOVE                             R10 R4
       12 CALL                             R8 2 -1
       13 NAMECALL                         R5 R0 K1 ["_log"]
       15 CALL                             R5 -1 0
       16 RETURN                           R0 0

PROTO_11:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["dirxml"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_12:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["error"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_13:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 GETTABLEKS                       R3 R0 K0 ["_groupDepth"]
        8 ADDK                             R3 R3 K1 [1]
        9 SETTABLEKS                       R3 R0 K0 ["_groupDepth"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+4]
       17 LENGTH                           R3 R2
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+13]
       21 LOADK                            R5 K3 ["group"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K4 ["bold"]
       25 GETUPVAL                         R7 2
       26 MOVE                             R8 R1
       27 GETVARARGS                       R9 -1
       28 CALL                             R7 -1 -1
       29 CALL                             R6 -1 -1
       30 NAMECALL                         R3 R0 K5 ["_log"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_14:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 GETTABLEKS                       R3 R0 K0 ["_groupDepth"]
        8 ADDK                             R3 R3 K1 [1]
        9 SETTABLEKS                       R3 R0 K0 ["_groupDepth"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["toJSBoolean"]
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+4]
       17 LENGTH                           R3 R2
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+13]
       21 LOADK                            R5 K3 ["groupCollapsed"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K4 ["bold"]
       25 GETUPVAL                         R7 2
       26 MOVE                             R8 R1
       27 GETVARARGS                       R9 -1
       28 CALL                             R7 -1 -1
       29 CALL                             R6 -1 -1
       30 NAMECALL                         R3 R0 K5 ["_log"]
       32 CALL                             R3 -1 0
       33 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_groupDepth"]
        2 LOADN                            R2 0
        3 JUMPIFNOTLT                      R2 R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["_groupDepth"]
        7 SUBK                             R1 R1 K1 [1]
        8 SETTABLEKS                       R1 R0 K0 ["_groupDepth"]
       10 RETURN                           R0 0

PROTO_16:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["info"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_17:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["log"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_18:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADK                            R2 K0 ["default"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["toJSBoolean"]
        8 GETTABLEKS                       R5 R0 K2 ["_timers"]
       10 GETTABLE                         R4 R5 R2
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R0 K2 ["_timers"]
       16 GETIMPORT                        R4 K5 [DateTime.now]
       18 CALL                             R4 0 1
       19 SETTABLE                         R4 R3 R2
       20 RETURN                           R0 0

PROTO_19:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADK                            R2 K0 ["default"]
        5 GETTABLEKS                       R4 R0 K1 ["_timers"]
        7 GETTABLE                         R3 R4 R2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["toJSBoolean"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+23]
       14 GETIMPORT                        R4 K5 [DateTime.now]
       16 CALL                             R4 0 1
       17 GETTABLEKS                       R6 R4 K6 ["UnixTimestampMillis"]
       19 GETTABLEKS                       R7 R3 K6 ["UnixTimestampMillis"]
       21 SUB                              R5 R6 R7
       22 LOADK                            R8 K7 ["time"]
       23 GETUPVAL                         R9 1
       24 LOADK                            R10 K8 ["%s: %s"]
       25 MOVE                             R11 R2
       26 GETUPVAL                         R12 2
       27 MOVE                             R13 R5
       28 CALL                             R12 1 -1
       29 CALL                             R9 -1 -1
       30 NAMECALL                         R6 R0 K9 ["_log"]
       32 CALL                             R6 -1 0
       33 GETTABLEKS                       R6 R0 K1 ["_timers"]
       35 LOADNIL                          R7
       36 SETTABLE                         R7 R6 R2
       37 RETURN                           R0 0

PROTO_20:
        0 PREPVARARGS                      2
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 MOVE                             R2 R1
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K0 ["default"]
        6 GETTABLEKS                       R4 R0 K1 ["_timers"]
        8 GETTABLE                         R3 R4 R2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["toJSBoolean"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+20]
       15 GETIMPORT                        R4 K5 [DateTime.now]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R6 R4 K6 ["UnixTimestampMillis"]
       20 GETTABLEKS                       R7 R3 K6 ["UnixTimestampMillis"]
       22 SUB                              R5 R6 R7
       23 LOADK                            R8 K7 ["time"]
       24 GETUPVAL                         R9 1
       25 LOADK                            R10 K8 ["%s: %s"]
       26 MOVE                             R11 R2
       27 GETUPVAL                         R12 2
       28 MOVE                             R13 R5
       29 CALL                             R12 1 1
       30 GETVARARGS                       R13 -1
       31 CALL                             R9 -1 -1
       32 NAMECALL                         R6 R0 K9 ["_log"]
       34 CALL                             R6 -1 0
       35 RETURN                           R0 0

PROTO_21:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["warn"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 CALL                             R5 -1 -1
        6 NAMECALL                         R2 R0 K1 ["_log"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_22:
        0 GETTABLEKS                       R3 R0 K0 ["_buffer"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+4]
        6 GETTABLEKS                       R1 R0 K0 ["_buffer"]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+8]
        6 GETIMPORT                        R2 K2 [error]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["new"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Array"]
       16 GETTABLEKS                       R5 R3 K7 ["Boolean"]
       18 GETTABLEKS                       R6 R3 K8 ["String"]
       20 GETTABLEKS                       R7 R3 K9 ["Error"]
       22 GETTABLEKS                       R8 R3 K10 ["util"]
       24 GETTABLEKS                       R8 R8 K11 ["inspect"]
       26 GETIMPORT                        R9 K4 [require]
       28 GETTABLEKS                       R10 R1 K12 ["Console"]
       30 CALL                             R9 1 1
       31 GETTABLEKS                       R10 R9 K13 ["default"]
       33 GETIMPORT                        R11 K4 [require]
       35 GETTABLEKS                       R12 R1 K14 ["helpers"]
       37 CALL                             R11 1 1
       38 GETTABLEKS                       R12 R11 K15 ["format"]
       40 GETTABLEKS                       R13 R11 K16 ["formatWithOptions"]
       42 GETIMPORT                        R14 K4 [require]
       44 GETTABLEKS                       R15 R2 K17 ["ChalkLua"]
       46 CALL                             R14 1 1
       47 GETIMPORT                        R15 K4 [require]
       49 GETTABLEKS                       R16 R2 K18 ["JestUtil"]
       51 CALL                             R15 1 1
       52 GETTABLEKS                       R16 R15 K19 ["ErrorWithStack"]
       54 GETTABLEKS                       R17 R15 K20 ["formatTime"]
       56 GETIMPORT                        R18 K4 [require]
       58 GETTABLEKS                       R19 R1 K21 ["types"]
       60 CALL                             R18 1 1
       61 GETIMPORT                        R19 K4 [require]
       63 GETTABLEKS                       R20 R2 K22 ["RobloxShared"]
       65 CALL                             R19 1 1
       66 LOADNIL                          R20
       67 NEWTABLE                         R22 0 0
       69 DUPTABLE                         R23 K24 [{"__index"}]
       70 SETTABLEKS                       R10 R23 K23 ["__index"]
       72 FASTCALL2                        SETMETATABLE R22 R23 ; [+3]
       74 GETIMPORT                        R21 K26 [setmetatable]
       76 CALL                             R21 2 1
       77 SETTABLEKS                       R21 R21 K23 ["__index"]
       79 DUPCLOSURE                       R22 K27 [PROTO_1]
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R21
       82 SETTABLEKS                       R22 R21 K28 ["new"]
       84 NEWCLOSURE                       R22 P1
       85 CAPTURE                          VAL R16
       86 CAPTURE                          VAL R21
       87 CAPTURE                          REF R20
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R5
       91 SETTABLEKS                       R22 R21 K29 ["write"]
       93 DUPCLOSURE                       R22 K30 [PROTO_3]
       94 CAPTURE                          VAL R21
       95 SETTABLEKS                       R22 R21 K31 ["_log"]
       97 DUPCLOSURE                       R22 K32 [PROTO_6]
       98 SETTABLEKS                       R22 R21 K33 ["assert"]
      100 DUPCLOSURE                       R22 K34 [PROTO_7]
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R22 R21 K35 ["count"]
      104 DUPCLOSURE                       R22 K36 [PROTO_8]
      105 SETTABLEKS                       R22 R21 K37 ["countReset"]
      107 DUPCLOSURE                       R22 K38 [PROTO_9]
      108 CAPTURE                          VAL R12
      109 SETTABLEKS                       R22 R21 K39 ["debug"]
      111 DUPCLOSURE                       R22 K40 [PROTO_10]
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R13
      114 SETTABLEKS                       R22 R21 K41 ["dir"]
      116 DUPCLOSURE                       R22 K42 [PROTO_11]
      117 CAPTURE                          VAL R12
      118 SETTABLEKS                       R22 R21 K43 ["dirxml"]
      120 DUPCLOSURE                       R22 K44 [PROTO_12]
      121 CAPTURE                          VAL R12
      122 SETTABLEKS                       R22 R21 K45 ["error"]
      124 DUPCLOSURE                       R22 K46 [PROTO_13]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R12
      128 SETTABLEKS                       R22 R21 K47 ["group"]
      130 DUPCLOSURE                       R22 K48 [PROTO_14]
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R14
      133 CAPTURE                          VAL R12
      134 SETTABLEKS                       R22 R21 K49 ["groupCollapsed"]
      136 DUPCLOSURE                       R22 K50 [PROTO_15]
      137 SETTABLEKS                       R22 R21 K51 ["groupEnd"]
      139 DUPCLOSURE                       R22 K52 [PROTO_16]
      140 CAPTURE                          VAL R12
      141 SETTABLEKS                       R22 R21 K53 ["info"]
      143 DUPCLOSURE                       R22 K54 [PROTO_17]
      144 CAPTURE                          VAL R12
      145 SETTABLEKS                       R22 R21 K55 ["log"]
      147 DUPCLOSURE                       R22 K56 [PROTO_18]
      148 CAPTURE                          VAL R5
      149 SETTABLEKS                       R22 R21 K57 ["time"]
      151 DUPCLOSURE                       R22 K58 [PROTO_19]
      152 CAPTURE                          VAL R5
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R17
      155 SETTABLEKS                       R22 R21 K59 ["timeEnd"]
      157 DUPCLOSURE                       R22 K60 [PROTO_20]
      158 CAPTURE                          VAL R5
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R17
      161 SETTABLEKS                       R22 R21 K61 ["timeLog"]
      163 DUPCLOSURE                       R22 K62 [PROTO_21]
      164 CAPTURE                          VAL R12
      165 SETTABLEKS                       R22 R21 K63 ["warn"]
      167 DUPCLOSURE                       R22 K64 [PROTO_22]
      168 SETTABLEKS                       R22 R21 K65 ["getBuffer"]
      170 DUPCLOSURE                       R20 K66 [PROTO_23]
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R7
      173 SETTABLEKS                       R21 R0 K13 ["default"]
      175 CLOSEUPVALS                      R20
      176 RETURN                           R0 1

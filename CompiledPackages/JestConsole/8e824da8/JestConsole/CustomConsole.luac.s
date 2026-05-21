PROTO_0:
        0 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 GETUPVAL                         R5 1
        7 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        9 GETIMPORT                        R3 K2 [setmetatable]
       11 CALL                             R3 2 1
       12 JUMPIFEQKNIL                     R2 ; [+3]
       14 MOVE                             R4 R2
       15 JUMP                             ; [+1]
       16 DUPCLOSURE                       R4 K3 [PROTO_0]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R3 K4 ["_counters"]
       21 NEWTABLE                         R5 0 0
       23 SETTABLEKS                       R5 R3 K5 ["_timers"]
       25 LOADN                            R5 0
       26 SETTABLEKS                       R5 R3 K6 ["_groupDepth"]
       28 GETUPVAL                         R5 0
       29 SETTABLEKS                       R5 R3 K7 ["Console"]
       31 SETTABLEKS                       R0 R3 K8 ["_stdout"]
       33 SETTABLEKS                       R1 R3 K9 ["_stderr"]
       35 SETTABLEKS                       R4 R3 K10 ["_formatBuffer"]
       37 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_stdout"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["log"]
        7 MOVE                             R4 R0
        8 GETTABLEKS                       R5 R0 K2 ["_formatBuffer"]
       10 MOVE                             R6 R1
       11 LOADK                            R10 K3 ["  "]
       12 GETTABLEKS                       R12 R0 K4 ["_groupDepth"]
       14 NAMECALL                         R10 R10 K5 ["rep"]
       16 CALL                             R10 2 1
       17 MOVE                             R8 R10
       18 MOVE                             R9 R2
       19 CONCAT                           R7 R8 R9
       20 CALL                             R5 2 -1
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["_stderr"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["error"]
        7 MOVE                             R4 R0
        8 GETTABLEKS                       R5 R0 K2 ["_formatBuffer"]
       10 MOVE                             R6 R1
       11 LOADK                            R10 K3 ["  "]
       12 GETTABLEKS                       R12 R0 K4 ["_groupDepth"]
       14 NAMECALL                         R10 R10 K5 ["rep"]
       16 CALL                             R10 2 1
       17 MOVE                             R8 R10
       18 MOVE                             R9 R2
       19 CONCAT                           R7 R8 R9
       20 CALL                             R5 2 -1
       21 CALL                             R3 -1 0
       22 RETURN                           R0 0

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
       21 NAMECALL                         R2 R2 K5 ["_logError"]
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
        6 NAMECALL                         R2 R0 K1 ["_logError"]
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
        5 GETTABLEKS                       R4 R0 K1 ["_timers"]
        7 GETTABLE                         R3 R4 R2
        8 JUMPIFEQKNIL                     R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R3 R0 K1 ["_timers"]
       13 GETIMPORT                        R4 K4 [DateTime.now]
       15 CALL                             R4 0 1
       16 SETTABLE                         R4 R3 R2
       17 RETURN                           R0 0

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
        6 NAMECALL                         R2 R0 K1 ["_logError"]
        8 CALL                             R2 -1 0
        9 RETURN                           R0 0

PROTO_22:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 GETTABLEKS                       R1 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["Console"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R3 R3 K6 ["default"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R2 K7 ["LuauPolyfill"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K8 ["Boolean"]
       23 GETTABLEKS                       R6 R4 K9 ["util"]
       25 GETTABLEKS                       R6 R6 K10 ["inspect"]
       27 GETIMPORT                        R7 K4 [require]
       29 GETTABLEKS                       R8 R1 K11 ["helpers"]
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R8 R7 K12 ["format"]
       34 GETTABLEKS                       R9 R7 K13 ["formatWithOptions"]
       36 GETIMPORT                        R10 K4 [require]
       38 GETTABLEKS                       R11 R2 K14 ["RobloxShared"]
       40 CALL                             R10 1 1
       41 GETIMPORT                        R11 K4 [require]
       43 GETTABLEKS                       R12 R2 K15 ["ChalkLua"]
       45 CALL                             R11 1 1
       46 GETIMPORT                        R12 K4 [require]
       48 GETTABLEKS                       R13 R2 K16 ["JestUtil"]
       50 CALL                             R12 1 1
       51 GETTABLEKS                       R13 R12 K17 ["clearLine"]
       53 GETTABLEKS                       R14 R12 K18 ["formatTime"]
       55 GETIMPORT                        R15 K4 [require]
       57 GETTABLEKS                       R16 R1 K19 ["types"]
       59 CALL                             R15 1 1
       60 NEWTABLE                         R17 0 0
       62 DUPTABLE                         R18 K21 [{"__index"}]
       63 SETTABLEKS                       R3 R18 K20 ["__index"]
       65 FASTCALL2                        SETMETATABLE R17 R18 ; [+3]
       67 GETIMPORT                        R16 K23 [setmetatable]
       69 CALL                             R16 2 1
       70 SETTABLEKS                       R16 R16 K20 ["__index"]
       72 DUPCLOSURE                       R17 K24 [PROTO_1]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R16
       75 SETTABLEKS                       R17 R16 K25 ["new"]
       77 DUPCLOSURE                       R17 K26 [PROTO_2]
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R3
       80 SETTABLEKS                       R17 R16 K27 ["_log"]
       82 DUPCLOSURE                       R17 K28 [PROTO_3]
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R17 R16 K29 ["_logError"]
       87 DUPCLOSURE                       R17 K30 [PROTO_6]
       88 SETTABLEKS                       R17 R16 K31 ["assert"]
       90 DUPCLOSURE                       R17 K32 [PROTO_7]
       91 CAPTURE                          VAL R8
       92 SETTABLEKS                       R17 R16 K33 ["count"]
       94 DUPCLOSURE                       R17 K34 [PROTO_8]
       95 SETTABLEKS                       R17 R16 K35 ["countReset"]
       97 DUPCLOSURE                       R17 K36 [PROTO_9]
       98 CAPTURE                          VAL R8
       99 SETTABLEKS                       R17 R16 K37 ["debug"]
      101 DUPCLOSURE                       R17 K38 [PROTO_10]
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R9
      104 SETTABLEKS                       R17 R16 K39 ["dir"]
      106 DUPCLOSURE                       R17 K40 [PROTO_11]
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R17 R16 K41 ["dirxml"]
      110 DUPCLOSURE                       R17 K42 [PROTO_12]
      111 CAPTURE                          VAL R8
      112 SETTABLEKS                       R17 R16 K43 ["error"]
      114 DUPCLOSURE                       R17 K44 [PROTO_13]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R8
      118 SETTABLEKS                       R17 R16 K45 ["group"]
      120 DUPCLOSURE                       R17 K46 [PROTO_14]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R17 R16 K47 ["groupCollapsed"]
      126 DUPCLOSURE                       R17 K48 [PROTO_15]
      127 SETTABLEKS                       R17 R16 K49 ["groupEnd"]
      129 DUPCLOSURE                       R17 K50 [PROTO_16]
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R17 R16 K51 ["info"]
      133 DUPCLOSURE                       R17 K52 [PROTO_17]
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R17 R16 K53 ["log"]
      137 DUPCLOSURE                       R17 K54 [PROTO_18]
      138 SETTABLEKS                       R17 R16 K55 ["time"]
      140 DUPCLOSURE                       R17 K56 [PROTO_19]
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R14
      144 SETTABLEKS                       R17 R16 K57 ["timeEnd"]
      146 DUPCLOSURE                       R17 K58 [PROTO_20]
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R14
      150 SETTABLEKS                       R17 R16 K59 ["timeLog"]
      152 DUPCLOSURE                       R17 K60 [PROTO_21]
      153 CAPTURE                          VAL R8
      154 SETTABLEKS                       R17 R16 K61 ["warn"]
      156 DUPCLOSURE                       R17 K62 [PROTO_22]
      157 SETTABLEKS                       R17 R16 K63 ["getBuffer"]
      159 SETTABLEKS                       R16 R0 K6 ["default"]
      161 RETURN                           R0 1

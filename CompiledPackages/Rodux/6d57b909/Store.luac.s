PROTO_0:
        0 GETIMPORT                        R3 K1 [error]
        2 GETIMPORT                        R4 K4 [string.format]
        4 LOADK                            R5 K5 ["Received error: %s\n\n%s"]
        5 GETTABLEKS                       R6 R2 K6 ["message"]
        7 GETTABLEKS                       R7 R2 K7 ["thrownValue"]
        9 CALL                             R4 3 -1
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R4 K1 [error]
        2 GETIMPORT                        R5 K4 [string.format]
        4 LOADK                            R6 K5 ["Received error: %s\n\n%s"]
        5 GETTABLEKS                       R7 R3 K6 ["message"]
        7 GETTABLEKS                       R8 R3 K7 ["thrownValue"]
        9 CALL                             R5 3 -1
       10 CALL                             R4 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [debug.traceback]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K4 [tostring]
        6 CALL                             R2 1 1
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R1 2 1
        5 SETTABLEKS                       R1 R0 K0 ["_state"]
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["flush"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R7 R0
        2 GETIMPORT                        R6 K1 [typeof]
        4 CALL                             R6 1 1
        5 JUMPIFEQKS                       R6 K2 ["function"] ; [+2]
        7 LOADB                            R5 0 +1
        8 LOADB                            R5 1
        9 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       11 LOADK                            R6 K3 ["Bad argument #1 to Store.new, expected function."]
       12 GETIMPORT                        R4 K5 [assert]
       14 CALL                             R4 2 0
       15 LOADB                            R5 1
       16 JUMPIFEQKNIL                     R2 ; [+10]
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R7 R2
       20 GETIMPORT                        R6 K1 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFEQKS                       R6 K6 ["table"] ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 FASTCALL2K                       ASSERT R5 K7 ; [+4]
       29 LOADK                            R6 K7 ["Bad argument #3 to Store.new, expected nil or table."]
       30 GETIMPORT                        R4 K5 [assert]
       32 CALL                             R4 2 0
       33 JUMPIFEQKNIL                     R2 ; [+29]
       35 LOADN                            R6 1
       36 LENGTH                           R4 R2
       37 LOADN                            R5 1
       38 FORNPREP                         R4
       39 GETTABLE                         R10 R2 R6
       40 FASTCALL1                        TYPEOF R10 ; [+2]
       41 GETIMPORT                        R9 K1 [typeof]
       43 CALL                             R9 1 1
       44 JUMPIFEQKS                       R9 K2 ["function"] ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 LOADK                            R9 K8 ["Expected the middleware ('%s') at index %d to be a function."]
       49 GETTABLE                         R12 R2 R6
       50 FASTCALL1                        TOSTRING R12 ; [+2]
       51 GETIMPORT                        R11 K10 [tostring]
       53 CALL                             R11 1 1
       54 MOVE                             R12 R6
       55 NAMECALL                         R9 R9 K11 ["format"]
       57 CALL                             R9 3 -1
       58 FASTCALL                         ASSERT ; [+2]
       59 GETIMPORT                        R7 K5 [assert]
       61 CALL                             R7 -1 0
       62 FORNLOOP                         R4
       63 NEWTABLE                         R4 16 0
       65 MOVE                             R5 R3
       66 JUMPIF                           R5 ; [+1]
       67 GETUPVAL                         R5 0
       68 SETTABLEKS                       R5 R4 K12 ["_errorReporter"]
       70 LOADB                            R5 0
       71 SETTABLEKS                       R5 R4 K13 ["_isDispatching"]
       73 SETTABLEKS                       R0 R4 K14 ["_reducer"]
       75 DUPTABLE                         R5 K16 [{"type"}]
       76 LOADK                            R6 K17 ["@@INIT"]
       77 SETTABLEKS                       R6 R5 K15 ["type"]
       79 NEWTABLE                         R6 0 1
       81 MOVE                             R7 R5
       82 SETLIST                          R6 R7 1 [1]
       84 SETTABLEKS                       R6 R4 K18 ["_actionLog"]
       86 GETIMPORT                        R6 K20 [xpcall]
       88 NEWCLOSURE                       R7 P0
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R5
       93 GETUPVAL                         R8 1
       94 CALL                             R6 2 2
       95 JUMPIF                           R6 ; [+15]
       96 GETTABLEKS                       R8 R4 K12 ["_errorReporter"]
       98 GETTABLEKS                       R8 R8 K21 ["reportReducerError"]
      100 MOVE                             R9 R1
      101 MOVE                             R10 R5
      102 DUPTABLE                         R11 K24 [{"message", "thrownValue"}]
      103 LOADK                            R12 K25 ["Caught error in reducer with init"]
      104 SETTABLEKS                       R12 R11 K22 ["message"]
      106 SETTABLEKS                       R7 R11 K23 ["thrownValue"]
      108 CALL                             R8 3 0
      109 SETTABLEKS                       R1 R4 K26 ["_state"]
      111 GETTABLEKS                       R8 R4 K26 ["_state"]
      113 SETTABLEKS                       R8 R4 K27 ["_lastState"]
      115 LOADB                            R8 0
      116 SETTABLEKS                       R8 R4 K28 ["_mutatedSinceFlush"]
      118 NEWTABLE                         R8 0 0
      120 SETTABLEKS                       R8 R4 K29 ["_connections"]
      122 GETUPVAL                         R8 2
      123 GETTABLEKS                       R8 R8 K30 ["new"]
      125 MOVE                             R9 R4
      126 CALL                             R8 1 1
      127 SETTABLEKS                       R8 R4 K31 ["changed"]
      129 GETUPVAL                         R10 3
      130 FASTCALL2                        SETMETATABLE R4 R10 ; [+4]
      132 MOVE                             R9 R4
      133 GETIMPORT                        R8 K33 [setmetatable]
      135 CALL                             R8 2 0
      136 GETTABLEKS                       R8 R4 K34 ["_flushEvent"]
      138 NEWCLOSURE                       R10 P1
      139 CAPTURE                          VAL R4
      140 NAMECALL                         R8 R8 K35 ["Connect"]
      142 CALL                             R8 2 1
      143 GETTABLEKS                       R10 R4 K29 ["_connections"]
      145 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
      147 MOVE                             R11 R8
      148 GETIMPORT                        R9 K37 [table.insert]
      150 CALL                             R9 2 0
      151 JUMPIFNOT                        R2 ; [+21]
      152 GETTABLEKS                       R9 R4 K38 ["dispatch"]
      154 NEWCLOSURE                       R10 P2
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R4
      157 LENGTH                           R13 R2
      158 LOADN                            R11 1
      159 LOADN                            R12 255
      160 FORNPREP                         R11
      161 GETTABLE                         R14 R2 R13
      162 MOVE                             R15 R14
      163 MOVE                             R16 R10
      164 MOVE                             R17 R4
      165 CALL                             R15 2 1
      166 MOVE                             R10 R15
      167 FORNLOOP                         R11
      168 NEWCLOSURE                       R11 P3
      169 CAPTURE                          REF R10
      170 SETTABLEKS                       R11 R4 K38 ["dispatch"]
      172 CLOSEUPVALS                      R10
      173 RETURN                           R4 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_isDispatching"]
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETIMPORT                        R1 K2 [error]
        5 LOADK                            R2 K3 ["You may not call store:getState() while the reducer is executing. The reducer (%s) has already received the state as an argument. Pass it down from the top reducer instead of reading it from the store."]
        6 GETTABLEKS                       R5 R0 K4 ["_reducer"]
        8 FASTCALL1                        TOSTRING R5 ; [+2]
        9 GETIMPORT                        R4 K6 [tostring]
       11 CALL                             R4 1 1
       12 NAMECALL                         R2 R2 K7 ["format"]
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 0
       16 GETTABLEKS                       R1 R0 K8 ["_state"]
       18 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["_isDispatching"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["_reducer"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["_state"]
       11 GETUPVAL                         R3 1
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K2 ["_state"]
       15 GETUPVAL                         R0 0
       16 LOADB                            R1 1
       17 SETTABLEKS                       R1 R0 K3 ["_mutatedSinceFlush"]
       19 RETURN                           R0 0

PROTO_10:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+14]
        7 GETIMPORT                        R2 K4 [error]
        9 LOADK                            R3 K5 ["Actions must be tables. Use custom middleware for %q actions."]
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K1 [typeof]
       14 CALL                             R5 1 1
       15 NAMECALL                         R3 R3 K6 ["format"]
       17 CALL                             R3 2 1
       18 LOADN                            R4 2
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K7 ["type"]
       22 JUMPIFNOTEQKNIL                  R2 ; [+13]
       24 GETIMPORT                        R2 K4 [error]
       26 LOADK                            R4 K8 ["Actions may not have an undefined 'type' property. "]
       27 LOADK                            R5 K9 ["Have you misspelled a constant? \n"]
       28 FASTCALL1                        TOSTRING R1 ; [+3]
       29 MOVE                             R7 R1
       30 GETIMPORT                        R6 K11 [tostring]
       32 CALL                             R6 1 1
       33 CONCAT                           R3 R4 R6
       34 LOADN                            R4 2
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K12 ["_isDispatching"]
       38 JUMPIFNOT                        R2 ; [+4]
       39 GETIMPORT                        R2 K4 [error]
       41 LOADK                            R3 K13 ["Reducers may not dispatch actions."]
       42 CALL                             R2 1 0
       43 GETIMPORT                        R2 K15 [pcall]
       45 NEWCLOSURE                       R3 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CALL                             R2 1 2
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R0 K12 ["_isDispatching"]
       52 JUMPIF                           R2 ; [+14]
       53 GETTABLEKS                       R4 R0 K16 ["_errorReporter"]
       55 GETTABLEKS                       R4 R4 K17 ["reportReducerError"]
       57 GETTABLEKS                       R5 R0 K18 ["_state"]
       59 MOVE                             R6 R1
       60 DUPTABLE                         R7 K21 [{"message", "thrownValue"}]
       61 LOADK                            R8 K22 ["Caught error in reducer"]
       62 SETTABLEKS                       R8 R7 K19 ["message"]
       64 SETTABLEKS                       R3 R7 K20 ["thrownValue"]
       66 CALL                             R4 3 0
       67 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       69 LENGTH                           R4 R5
       70 JUMPIFNOTEQKN                    R4 K24 [3] ; [+7]
       72 GETIMPORT                        R4 K26 [table.remove]
       74 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       76 LOADN                            R6 1
       77 CALL                             R4 2 0
       78 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       80 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       82 MOVE                             R6 R1
       83 GETIMPORT                        R4 K28 [table.insert]
       85 CALL                             R4 2 0
       86 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["_connections"]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["changed"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["_lastState"]
        7 NAMECALL                         R0 R0 K2 ["fire"]
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_mutatedSinceFlush"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_mutatedSinceFlush"]
        7 GETTABLEKS                       R1 R0 K1 ["_state"]
        9 GETIMPORT                        R2 K3 [xpcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 GETUPVAL                         R4 1
       16 CALL                             R2 2 2
       17 JUMPIF                           R2 ; [+16]
       18 GETTABLEKS                       R4 R0 K4 ["_errorReporter"]
       20 GETTABLEKS                       R4 R4 K5 ["reportUpdateError"]
       22 GETTABLEKS                       R5 R0 K6 ["_lastState"]
       24 MOVE                             R6 R1
       25 GETTABLEKS                       R7 R0 K7 ["_actionLog"]
       27 DUPTABLE                         R8 K10 [{"message", "thrownValue"}]
       28 LOADK                            R9 K11 ["Caught error flushing store updates"]
       29 SETTABLEKS                       R9 R8 K8 ["message"]
       31 SETTABLEKS                       R3 R8 K9 ["thrownValue"]
       33 CALL                             R4 4 0
       34 SETTABLEKS                       R1 R0 K6 ["_lastState"]
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["Signal"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K7 [script]
       20 GETTABLEKS                       R3 R3 K8 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["NoYield"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K13 [{"reportReducerError", "reportUpdateError"}]
       26 DUPCLOSURE                       R4 K14 [PROTO_0]
       27 SETTABLEKS                       R4 R3 K11 ["reportReducerError"]
       29 DUPCLOSURE                       R4 K15 [PROTO_1]
       30 SETTABLEKS                       R4 R3 K12 ["reportUpdateError"]
       32 DUPCLOSURE                       R4 K16 [PROTO_2]
       33 NEWTABLE                         R5 8 0
       35 GETTABLEKS                       R6 R0 K17 ["Heartbeat"]
       37 SETTABLEKS                       R6 R5 K18 ["_flushEvent"]
       39 SETTABLEKS                       R5 R5 K19 ["__index"]
       41 DUPCLOSURE                       R6 K20 [PROTO_7]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R6 R5 K21 ["new"]
       48 DUPCLOSURE                       R6 K22 [PROTO_8]
       49 SETTABLEKS                       R6 R5 K23 ["getState"]
       51 DUPCLOSURE                       R6 K24 [PROTO_10]
       52 SETTABLEKS                       R6 R5 K25 ["dispatch"]
       54 DUPCLOSURE                       R6 K26 [PROTO_11]
       55 SETTABLEKS                       R6 R5 K27 ["destruct"]
       57 DUPCLOSURE                       R6 K28 [PROTO_14]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K29 ["flush"]
       62 RETURN                           R5 1

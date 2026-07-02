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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["changed"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["_lastState"]
        7 NAMECALL                         R1 R1 K2 ["fire"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["_reducer"]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K1 ["_state"]
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["flush"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETVARARGS                       R2 -1
        4 CALL                             R0 -1 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETVARARGS                       R2 -1
        3 CALL                             R1 -1 -1
        4 RETURN                           R1 -1

PROTO_8:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R8 R0
        2 GETIMPORT                        R7 K1 [typeof]
        4 CALL                             R7 1 1
        5 JUMPIFEQKS                       R7 K2 ["function"] ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["Bad argument #1 to Store.new, expected function."]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 LOADB                            R6 1
       16 JUMPIFEQKNIL                     R2 ; [+10]
       18 FASTCALL1                        TYPEOF R2 ; [+3]
       19 MOVE                             R8 R2
       20 GETIMPORT                        R7 K1 [typeof]
       22 CALL                             R7 1 1
       23 JUMPIFEQKS                       R7 K6 ["table"] ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       29 LOADK                            R7 K7 ["Bad argument #3 to Store.new, expected nil or table."]
       30 GETIMPORT                        R5 K5 [assert]
       32 CALL                             R5 2 0
       33 LOADB                            R6 1
       34 JUMPIFEQKNIL                     R4 ; [+15]
       36 LOADB                            R6 0
       37 FASTCALL1                        TYPEOF R4 ; [+3]
       38 MOVE                             R8 R4
       39 GETIMPORT                        R7 K1 [typeof]
       41 CALL                             R7 1 1
       42 JUMPIFNOTEQKS                    R7 K6 ["table"] ; [+7]
       44 GETTABLEKS                       R7 R4 K8 ["__className"]
       46 JUMPIFEQKS                       R7 K9 ["Devtools"] ; [+2]
       48 LOADB                            R6 0 +1
       49 LOADB                            R6 1
       50 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       52 LOADK                            R7 K10 ["Bad argument #5 to Store.new, expected nil or Devtools object."]
       53 GETIMPORT                        R5 K5 [assert]
       55 CALL                             R5 2 0
       56 JUMPIFEQKNIL                     R2 ; [+29]
       58 LOADN                            R7 1
       59 LENGTH                           R5 R2
       60 LOADN                            R6 1
       61 FORNPREP                         R5
       62 GETTABLE                         R11 R2 R7
       63 FASTCALL1                        TYPEOF R11 ; [+2]
       64 GETIMPORT                        R10 K1 [typeof]
       66 CALL                             R10 1 1
       67 JUMPIFEQKS                       R10 K2 ["function"] ; [+2]
       69 LOADB                            R9 0 +1
       70 LOADB                            R9 1
       71 LOADK                            R10 K11 ["Expected the middleware ('%s') at index %d to be a function."]
       72 GETTABLE                         R13 R2 R7
       73 FASTCALL1                        TOSTRING R13 ; [+2]
       74 GETIMPORT                        R12 K13 [tostring]
       76 CALL                             R12 1 1
       77 MOVE                             R13 R7
       78 NAMECALL                         R10 R10 K14 ["format"]
       80 CALL                             R10 3 -1
       81 FASTCALL                         ASSERT ; [+2]
       82 GETIMPORT                        R8 K5 [assert]
       84 CALL                             R8 -1 0
       85 FORNLOOP                         R5
       86 NEWTABLE                         R5 16 0
       88 GETIMPORT                        R6 K17 [string.match]
       90 GETIMPORT                        R7 K20 [debug.traceback]
       92 CALL                             R7 0 1
       93 LOADK                            R8 K21 ["^.-\n(.-)\n"]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K22 ["_source"]
       97 MOVE                             R6 R3
       98 JUMPIF                           R6 ; [+1]
       99 GETUPVAL                         R6 0
      100 SETTABLEKS                       R6 R5 K23 ["_errorReporter"]
      102 LOADB                            R6 0
      103 SETTABLEKS                       R6 R5 K24 ["_isDispatching"]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K25 ["_lastState"]
      108 GETUPVAL                         R6 1
      109 GETTABLEKS                       R6 R6 K26 ["new"]
      111 MOVE                             R7 R5
      112 CALL                             R6 1 1
      113 SETTABLEKS                       R6 R5 K27 ["changed"]
      115 SETTABLEKS                       R0 R5 K28 ["_reducer"]
      117 NEWCLOSURE                       R6 P0
      118 CAPTURE                          VAL R5
      119 SETTABLEKS                       R6 R5 K29 ["_flushHandler"]
      121 JUMPIFNOT                        R4 ; [+6]
      122 SETTABLEKS                       R4 R5 K30 ["_devtools"]
      124 MOVE                             R8 R5
      125 NAMECALL                         R6 R4 K31 ["_hookIntoStore"]
      127 CALL                             R6 2 0
      128 DUPTABLE                         R6 K34 [{["type"] = "@@INIT"}]
      129 NEWTABLE                         R7 0 1
      131 MOVE                             R8 R6
      132 SETLIST                          R7 R8 1 [1]
      134 SETTABLEKS                       R7 R5 K35 ["_actionLog"]
      136 GETIMPORT                        R7 K37 [xpcall]
      138 NEWCLOSURE                       R8 P1
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R6
      142 GETUPVAL                         R9 2
      143 CALL                             R7 2 2
      144 JUMPIF                           R7 ; [+12]
      145 GETTABLEKS                       R9 R5 K23 ["_errorReporter"]
      147 GETTABLEKS                       R9 R9 K38 ["reportReducerError"]
      149 MOVE                             R10 R1
      150 MOVE                             R11 R6
      151 DUPTABLE                         R12 K42 [{["message"] = "Caught error in reducer with init", ["thrownValue"]}]
      152 SETTABLEKS                       R8 R12 K41 ["thrownValue"]
      154 CALL                             R9 3 0
      155 SETTABLEKS                       R1 R5 K43 ["_state"]
      157 GETTABLEKS                       R9 R5 K43 ["_state"]
      159 SETTABLEKS                       R9 R5 K25 ["_lastState"]
      161 LOADB                            R9 0
      162 SETTABLEKS                       R9 R5 K44 ["_mutatedSinceFlush"]
      164 NEWTABLE                         R9 0 0
      166 SETTABLEKS                       R9 R5 K45 ["_connections"]
      168 GETUPVAL                         R11 3
      169 FASTCALL2                        SETMETATABLE R5 R11 ; [+4]
      171 MOVE                             R10 R5
      172 GETIMPORT                        R9 K47 [setmetatable]
      174 CALL                             R9 2 0
      175 GETTABLEKS                       R9 R5 K48 ["_flushEvent"]
      177 NEWCLOSURE                       R11 P2
      178 CAPTURE                          VAL R5
      179 NAMECALL                         R9 R9 K49 ["Connect"]
      181 CALL                             R9 2 1
      182 GETTABLEKS                       R11 R5 K45 ["_connections"]
      184 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
      186 MOVE                             R12 R9
      187 GETIMPORT                        R10 K51 [table.insert]
      189 CALL                             R10 2 0
      190 JUMPIFNOT                        R2 ; [+21]
      191 GETTABLEKS                       R10 R5 K52 ["dispatch"]
      193 NEWCLOSURE                       R11 P3
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R5
      196 LENGTH                           R14 R2
      197 LOADN                            R12 1
      198 LOADN                            R13 -1
      199 FORNPREP                         R12
      200 GETTABLE                         R15 R2 R14
      201 MOVE                             R16 R15
      202 MOVE                             R17 R11
      203 MOVE                             R18 R5
      204 CALL                             R16 2 1
      205 MOVE                             R11 R16
      206 FORNLOOP                         R12
      207 NEWCLOSURE                       R12 P4
      208 CAPTURE                          REF R11
      209 SETTABLEKS                       R12 R5 K52 ["dispatch"]
      211 CLOSEUPVALS                      R11
      212 RETURN                           R5 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       52 JUMPIF                           R2 ; [+11]
       53 GETTABLEKS                       R4 R0 K16 ["_errorReporter"]
       55 GETTABLEKS                       R4 R4 K17 ["reportReducerError"]
       57 GETTABLEKS                       R5 R0 K18 ["_state"]
       59 MOVE                             R6 R1
       60 DUPTABLE                         R7 K22 [{["message"] = "Caught error in reducer", ["thrownValue"]}]
       61 SETTABLEKS                       R3 R7 K21 ["thrownValue"]
       63 CALL                             R4 3 0
       64 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       66 LENGTH                           R4 R5
       67 JUMPIFNOTEQKN                    R4 K24 [3] ; [+7]
       69 GETIMPORT                        R4 K26 [table.remove]
       71 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       73 LOADN                            R6 1
       74 CALL                             R4 2 0
       75 GETTABLEKS                       R5 R0 K23 ["_actionLog"]
       77 FASTCALL2                        TABLE_INSERT R5 R1 ; [+4]
       79 MOVE                             R6 R1
       80 GETIMPORT                        R4 K28 [table.insert]
       82 CALL                             R4 2 0
       83 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["_flushHandler"]
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

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
       17 JUMPIF                           R2 ; [+13]
       18 GETTABLEKS                       R4 R0 K4 ["_errorReporter"]
       20 GETTABLEKS                       R4 R4 K5 ["reportUpdateError"]
       22 GETTABLEKS                       R5 R0 K6 ["_lastState"]
       24 MOVE                             R6 R1
       25 GETTABLEKS                       R7 R0 K7 ["_actionLog"]
       27 DUPTABLE                         R8 K11 [{["message"] = "Caught error flushing store updates", ["thrownValue"]}]
       28 SETTABLEKS                       R3 R8 K10 ["thrownValue"]
       30 CALL                             R4 4 0
       31 SETTABLEKS                       R1 R0 K6 ["_lastState"]
       33 RETURN                           R0 0

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
       41 DUPCLOSURE                       R6 K20 [PROTO_8]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R6 R5 K21 ["new"]
       48 DUPCLOSURE                       R6 K22 [PROTO_9]
       49 SETTABLEKS                       R6 R5 K23 ["getState"]
       51 DUPCLOSURE                       R6 K24 [PROTO_11]
       52 SETTABLEKS                       R6 R5 K25 ["dispatch"]
       54 DUPCLOSURE                       R6 K26 [PROTO_12]
       55 SETTABLEKS                       R6 R5 K27 ["destruct"]
       57 DUPCLOSURE                       R6 K28 [PROTO_14]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R6 R5 K29 ["flush"]
       62 RETURN                           R5 1

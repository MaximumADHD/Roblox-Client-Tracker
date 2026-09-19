PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["content"]
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K2 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+6]
        8 GETTABLEKS                       R2 R0 K0 ["content"]
       10 LENGTH                           R1 R2
       11 JUMPIFNOTEQKN                    R1 K4 [0] ; [+3]
       13 LOADB                            R1 0
       14 RETURN                           R1 1
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETUPVAL                         R7 0
       20 GETTABLE                         R6 R7 R4
       21 JUMPIF                           R6 ; [+2]
       22 LOADB                            R6 0
       23 RETURN                           R6 1
       24 FORGLOOP                         R1 1 ; [-6]
       26 LOADB                            R1 1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["text"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["content"]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+4]
        9 LENGTH                           R2 R1
       10 JUMPIFEQKN                       R2 K4 [1] ; [+2]
       12 RETURN                           R0 1
       13 GETTABLEN                        R2 R1 1
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R4 R2
       16 GETIMPORT                        R3 K2 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+5]
       21 GETTABLEKS                       R3 R2 K5 ["type"]
       23 JUMPIFEQKS                       R3 K0 ["content"] ; [+2]
       25 RETURN                           R0 1
       26 GETTABLEKS                       R5 R2 K0 ["content"]
       28 FASTCALL1                        TYPEOF R5 ; [+2]
       29 GETIMPORT                        R4 K2 [typeof]
       31 CALL                             R4 1 1
       32 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+4]
       34 GETTABLEKS                       R3 R2 K0 ["content"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R3
       38 JUMPIFEQKNIL                     R3 ; [+13]
       40 GETTABLEKS                       R4 R3 K5 ["type"]
       42 JUMPIFNOTEQKS                    R4 K6 ["text"] ; [+9]
       44 GETTABLEKS                       R5 R3 K6 ["text"]
       46 FASTCALL1                        TYPEOF R5 ; [+2]
       47 GETIMPORT                        R4 K2 [typeof]
       49 CALL                             R4 1 1
       50 JUMPIFEQKS                       R4 K7 ["string"] ; [+2]
       52 RETURN                           R0 1
       53 GETIMPORT                        R4 K9 [pcall]
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R3
       58 CALL                             R4 1 2
       59 JUMPIFNOT                        R4 ; [+35]
       60 FASTCALL1                        TYPEOF R5 ; [+3]
       61 MOVE                             R7 R5
       62 GETIMPORT                        R6 K2 [typeof]
       64 CALL                             R6 1 1
       65 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+29]
       67 GETTABLEKS                       R8 R5 K0 ["content"]
       69 FASTCALL1                        TYPEOF R8 ; [+2]
       70 GETIMPORT                        R7 K2 [typeof]
       72 CALL                             R7 1 1
       73 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+6]
       75 GETTABLEKS                       R8 R5 K0 ["content"]
       77 LENGTH                           R7 R8
       78 JUMPIFNOTEQKN                    R7 K10 [0] ; [+3]
       80 LOADB                            R6 0
       81 JUMP                             ; [+12]
       82 MOVE                             R7 R5
       83 LOADNIL                          R8
       84 LOADNIL                          R9
       85 FORGPREP                         R7
       86 GETUPVAL                         R13 1
       87 GETTABLE                         R12 R13 R10
       88 JUMPIF                           R12 ; [+2]
       89 LOADB                            R6 0
       90 JUMP                             ; [+3]
       91 FORGLOOP                         R7 1 ; [-6]
       93 LOADB                            R6 1
       94 JUMPIF                           R6 ; [+1]
       95 RETURN                           R0 1
       96 NEWTABLE                         R6 0 0
       98 GETTABLEKS                       R7 R5 K0 ["content"]
      100 LOADNIL                          R8
      101 LOADNIL                          R9
      102 FORGPREP                         R7
      103 FASTCALL1                        TYPEOF R11 ; [+3]
      104 MOVE                             R13 R11
      105 GETIMPORT                        R12 K2 [typeof]
      107 CALL                             R12 1 1
      108 JUMPIFNOTEQKS                    R12 K3 ["table"] ; [+9]
      110 GETTABLEKS                       R13 R11 K5 ["type"]
      112 FASTCALL1                        TYPEOF R13 ; [+2]
      113 GETIMPORT                        R12 K2 [typeof]
      115 CALL                             R12 1 1
      116 JUMPIFEQKS                       R12 K7 ["string"] ; [+2]
      118 RETURN                           R0 1
      119 GETUPVAL                         R12 2
      120 MOVE                             R13 R11
      121 CALL                             R12 1 1
      122 JUMPIFNOTEQKNIL                  R12 ; [+2]
      124 RETURN                           R0 1
      125 DUPTABLE                         R15 K11 [{["type"] = "content", [2]}]
      126 SETTABLEKS                       R12 R15 K0 ["content"]
      128 FASTCALL2                        TABLE_INSERT R6 R15 ; [+4]
      130 MOVE                             R14 R6
      131 GETIMPORT                        R13 K13 [table.insert]
      133 CALL                             R13 2 0
      134 FORGLOOP                         R7 2 ; [-32]
      136 GETIMPORT                        R7 K15 [table.clone]
      138 MOVE                             R8 R0
      139 CALL                             R7 1 1
      140 SETTABLEKS                       R6 R7 K0 ["content"]
      142 GETTABLEKS                       R8 R7 K16 ["rawOutput"]
      144 JUMPIFNOTEQKNIL                  R8 ; [+5]
      146 GETTABLEKS                       R8 R5 K17 ["structuredContent"]
      148 SETTABLEKS                       R8 R7 K16 ["rawOutput"]
      150 GETTABLEKS                       R8 R5 K18 ["isError"]
      152 JUMPIFNOTEQKB                    R8 TRUE ; [+8]
      154 GETTABLEKS                       R8 R7 K19 ["status"]
      156 JUMPIFEQKS                       R8 K20 ["failed"] ; [+4]
      158 LOADK                            R8 K20 ["failed"]
      159 SETTABLEKS                       R8 R7 K19 ["status"]
      161 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onTransportMessage"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["Fire"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["postAcp"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["FFlagDebugLogAssistantUI"]
        8 JUMPIFNOT                        R2 ; [+32]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R3 K4 ["[Remote ACP] postAcp settled method=%* ok=%* hasResult=%*"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["method"]
       15 FASTCALL1                        TOSTRING R6 ; [+2]
       16 GETIMPORT                        R5 K7 [tostring]
       18 CALL                             R5 1 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K7 [tostring]
       23 CALL                             R6 1 1
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R10 R1
       26 GETIMPORT                        R9 K9 [typeof]
       28 CALL                             R9 1 1
       29 JUMPIFEQKS                       R9 K10 ["table"] ; [+2]
       31 LOADB                            R8 0 +1
       32 LOADB                            R8 1
       33 FASTCALL1                        TOSTRING R8 ; [+2]
       34 GETIMPORT                        R7 K7 [tostring]
       36 CALL                             R7 1 1
       37 NAMECALL                         R3 R3 K11 ["format"]
       39 CALL                             R3 4 1
       40 CALL                             R2 1 0
       41 GETUPVAL                         R2 3
       42 JUMPIFNOT                        R2 ; [+4]
       43 GETUPVAL                         R2 3
       44 MOVE                             R3 R0
       45 MOVE                             R4 R1
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K4 [{[1] = "2.0", ["id"], ["error"]}]
        1 SETTABLEKS                       R0 R2 K2 ["id"]
        3 DUPTABLE                         R3 K8 [{["code"] = -32603, ["message"]}]
        4 SETTABLEKS                       R1 R3 K7 ["message"]
        6 SETTABLEKS                       R3 R2 K3 ["error"]
        8 RETURN                           R2 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+19]
        7 GETTABLEKS                       R4 R1 K3 ["error"]
        9 FASTCALL1                        TYPEOF R4 ; [+2]
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+11]
       15 GETIMPORT                        R3 K5 [table.clone]
       17 MOVE                             R4 R1
       18 CALL                             R3 1 1
       19 LOADK                            R4 K6 ["2.0"]
       20 SETTABLEKS                       R4 R3 K7 ["jsonrpc"]
       22 SETTABLEKS                       R0 R3 K8 ["id"]
       24 RETURN                           R3 1
       25 DUPTABLE                         R3 K9 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       26 SETTABLEKS                       R0 R3 K8 ["id"]
       28 DUPTABLE                         R4 K13 [{["code"] = -32603, ["message"]}]
       29 SETTABLEKS                       R2 R4 K12 ["message"]
       31 SETTABLEKS                       R4 R3 K3 ["error"]
       33 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["sequenceId"]
        2 JUMPIFNOT                        R2 ; [+18]
        3 GETTABLEKS                       R2 R1 K0 ["sequenceId"]
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETTABLEKS                       R2 R0 K0 ["sequenceId"]
        8 GETTABLEKS                       R3 R1 K0 ["sequenceId"]
       10 JUMPIFEQ                         R2 R3 ; [+10]
       12 GETTABLEKS                       R3 R0 K0 ["sequenceId"]
       14 GETTABLEKS                       R4 R1 K0 ["sequenceId"]
       16 JUMPIFLT                         R3 R4 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R3 R0 K1 ["order"]
       23 GETTABLEKS                       R4 R1 K1 ["order"]
       25 JUMPIFLT                         R3 R4 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["result"]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K2 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+4]
        9 GETTABLEKS                       R2 R1 K4 ["history"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 FASTCALL1                        TYPEOF R2 ; [+3]
       14 MOVE                             R4 R2
       15 GETIMPORT                        R3 K2 [typeof]
       17 CALL                             R3 1 1
       18 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       20 RETURN                           R0 0
       21 LENGTH                           R3 R2
       22 NEWTABLE                         R4 0 0
       24 MOVE                             R7 R3
       25 LOADN                            R5 1
       26 LOADN                            R6 -1
       27 FORNPREP                         R5
       28 GETTABLE                         R8 R2 R7
       29 DUPTABLE                         R11 K8 [{"update", "sequenceId", "order"}]
       30 SETTABLEKS                       R8 R11 K5 ["update"]
       32 FASTCALL1                        TYPEOF R8 ; [+3]
       33 MOVE                             R14 R8
       34 GETIMPORT                        R13 K2 [typeof]
       36 CALL                             R13 1 1
       37 JUMPIFNOTEQKS                    R13 K3 ["table"] ; [+8]
       39 GETTABLEKS                       R13 R8 K6 ["sequenceId"]
       41 FASTCALL1                        TONUMBER R13 ; [+2]
       42 GETIMPORT                        R12 K10 [tonumber]
       44 CALL                             R12 1 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R12
       47 SETTABLEKS                       R12 R11 K6 ["sequenceId"]
       49 SUB                              R13 R3 R7
       50 ADDK                             R12 R13 K11 [1]
       51 SETTABLEKS                       R12 R11 K7 ["order"]
       53 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
       55 MOVE                             R10 R4
       56 GETIMPORT                        R9 K13 [table.insert]
       58 CALL                             R9 2 0
       59 FORNLOOP                         R5
       60 GETIMPORT                        R5 K15 [table.sort]
       62 MOVE                             R6 R4
       63 DUPCLOSURE                       R7 K16 [PROTO_8]
       64 CALL                             R5 2 0
       65 NEWTABLE                         R5 0 0
       67 MOVE                             R6 R4
       68 LOADNIL                          R7
       69 LOADNIL                          R8
       70 FORGPREP                         R6
       71 GETTABLEKS                       R11 R10 K5 ["update"]
       73 FASTCALL1                        TYPEOF R11 ; [+3]
       74 MOVE                             R13 R11
       75 GETIMPORT                        R12 K2 [typeof]
       77 CALL                             R12 1 1
       78 JUMPIFNOTEQKS                    R12 K3 ["table"] ; [+29]
       80 GETTABLEKS                       R12 R11 K17 ["sessionUpdate"]
       82 JUMPIFNOTEQKS                    R12 K18 ["state_change"] ; [+25]
       84 DUPTABLE                         R14 K23 [{["sessionUpdate"] = "state_update", ["sequenceId"], ["state"], ["stopReason"], ["_meta"]}]
       85 GETTABLEKS                       R15 R11 K6 ["sequenceId"]
       87 SETTABLEKS                       R15 R14 K6 ["sequenceId"]
       89 GETTABLEKS                       R15 R11 K20 ["state"]
       91 SETTABLEKS                       R15 R14 K20 ["state"]
       93 GETTABLEKS                       R15 R11 K21 ["stopReason"]
       95 SETTABLEKS                       R15 R14 K21 ["stopReason"]
       97 GETTABLEKS                       R15 R11 K22 ["_meta"]
       99 SETTABLEKS                       R15 R14 K22 ["_meta"]
      101 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      103 MOVE                             R13 R5
      104 GETIMPORT                        R12 K13 [table.insert]
      106 CALL                             R12 2 0
      107 JUMP                             ; [+32]
      108 FASTCALL1                        TYPEOF R11 ; [+3]
      109 MOVE                             R13 R11
      110 GETIMPORT                        R12 K2 [typeof]
      112 CALL                             R12 1 1
      113 JUMPIFNOTEQKS                    R12 K3 ["table"] ; [+19]
      115 GETTABLEKS                       R12 R11 K17 ["sessionUpdate"]
      117 JUMPIFEQKS                       R12 K24 ["tool_call_update"] ; [+5]
      119 GETTABLEKS                       R12 R11 K17 ["sessionUpdate"]
      121 JUMPIFNOTEQKS                    R12 K25 ["tool_call"] ; [+11]
      123 GETUPVAL                         R14 0
      124 MOVE                             R15 R11
      125 CALL                             R14 1 1
      126 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      128 MOVE                             R13 R5
      129 GETIMPORT                        R12 K13 [table.insert]
      131 CALL                             R12 2 0
      132 JUMP                             ; [+7]
      133 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      135 MOVE                             R13 R5
      136 MOVE                             R14 R11
      137 GETIMPORT                        R12 K13 [table.insert]
      139 CALL                             R12 2 0
      140 FORGLOOP                         R6 2 ; [-70]
      142 GETUPVAL                         R6 1
      143 GETTABLEKS                       R6 R6 K26 ["FFlagDebugLogAssistantUI"]
      145 JUMPIFNOT                        R6 ; [+4]
      146 GETIMPORT                        R6 K28 [print]
      148 LOADK                            R7 K29 ["[Remote ACP] normalized and sorted session/load history"]
      149 CALL                             R6 1 0
      150 GETIMPORT                        R6 K31 [table.clone]
      152 MOVE                             R7 R1
      153 CALL                             R6 1 1
      154 SETTABLEKS                       R5 R6 K4 ["history"]
      156 SETTABLEKS                       R6 R0 K0 ["result"]
      158 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+7]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K2 ["table"] ; [+23]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["FFlagDebugLogAssistantUI"]
       12 JUMPIFNOT                        R1 ; [+17]
       13 GETIMPORT                        R1 K5 [print]
       15 LOADK                            R2 K6 ["[Remote ACP] drop inbound closed=%* typeof=%*"]
       16 GETUPVAL                         R5 0
       17 FASTCALL1                        TOSTRING R5 ; [+2]
       18 GETIMPORT                        R4 K8 [tostring]
       20 CALL                             R4 1 1
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R6 R0
       23 GETIMPORT                        R5 K1 [typeof]
       25 CALL                             R5 1 1
       26 NAMECALL                         R2 R2 K9 ["format"]
       28 CALL                             R2 3 1
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R1 R0 K10 ["method"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K11 ["SessionUpdate"]
       36 JUMPIFNOTEQ                      R1 R2 ; [+256]
       38 GETTABLEKS                       R1 R0 K12 ["params"]
       40 FASTCALL1                        TYPEOF R1 ; [+3]
       41 MOVE                             R4 R1
       42 GETIMPORT                        R3 K1 [typeof]
       44 CALL                             R3 1 1
       45 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       47 GETTABLEKS                       R2 R1 K13 ["update"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R2
       51 FASTCALL1                        TYPEOF R2 ; [+3]
       52 MOVE                             R4 R2
       53 GETIMPORT                        R3 K1 [typeof]
       55 CALL                             R3 1 1
       56 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+179]
       58 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
       60 JUMPIFNOTEQKS                    R3 K15 ["state_change"] ; [+175]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K3 ["FFlagDebugLogAssistantUI"]
       65 JUMPIFNOT                        R3 ; [+19]
       66 GETIMPORT                        R3 K5 [print]
       68 LOADK                            R4 K16 ["[Remote ACP] normalize state_change→state_update state=%* stopReason=%*"]
       69 GETTABLEKS                       R7 R2 K17 ["state"]
       71 FASTCALL1                        TOSTRING R7 ; [+2]
       72 GETIMPORT                        R6 K8 [tostring]
       74 CALL                             R6 1 1
       75 GETTABLEKS                       R8 R2 K18 ["stopReason"]
       77 FASTCALL1                        TOSTRING R8 ; [+2]
       78 GETIMPORT                        R7 K8 [tostring]
       80 CALL                             R7 1 1
       81 NAMECALL                         R4 R4 K9 ["format"]
       83 CALL                             R4 3 1
       84 CALL                             R3 1 0
       85 GETIMPORT                        R3 K20 [table.clone]
       87 MOVE                             R4 R2
       88 CALL                             R3 1 1
       89 LOADK                            R4 K21 ["state_update"]
       90 SETTABLEKS                       R4 R3 K14 ["sessionUpdate"]
       92 GETTABLEKS                       R4 R3 K17 ["state"]
       94 JUMPIFNOTEQKS                    R4 K22 ["idle"] ; [+12]
       96 GETTABLEKS                       R5 R3 K18 ["stopReason"]
       98 FASTCALL1                        TYPEOF R5 ; [+2]
       99 GETIMPORT                        R4 K1 [typeof]
      101 CALL                             R4 1 1
      102 JUMPIFEQKS                       R4 K23 ["string"] ; [+4]
      104 LOADK                            R4 K24 ["end_turn"]
      105 SETTABLEKS                       R4 R3 K18 ["stopReason"]
      107 GETIMPORT                        R4 K20 [table.clone]
      109 MOVE                             R5 R1
      110 CALL                             R4 1 1
      111 SETTABLEKS                       R3 R4 K13 ["update"]
      113 GETIMPORT                        R5 K20 [table.clone]
      115 MOVE                             R6 R0
      116 CALL                             R5 1 1
      117 SETTABLEKS                       R4 R5 K12 ["params"]
      119 GETUPVAL                         R6 3
      120 GETTABLEKS                       R6 R6 K25 ["onTransportMessage"]
      122 MOVE                             R8 R5
      123 NAMECALL                         R6 R6 K26 ["Fire"]
      125 CALL                             R6 2 0
      126 GETTABLEKS                       R6 R2 K17 ["state"]
      128 JUMPIFEQKS                       R6 K22 ["idle"] ; [+19]
      130 GETUPVAL                         R6 1
      131 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
      133 JUMPIFNOT                        R6 ; [+13]
      134 GETIMPORT                        R6 K5 [print]
      136 LOADK                            R7 K27 ["[Remote ACP] state_change not idle; waiting for prompt completion state=%*"]
      137 GETTABLEKS                       R10 R2 K17 ["state"]
      139 FASTCALL1                        TOSTRING R10 ; [+2]
      140 GETIMPORT                        R9 K8 [tostring]
      142 CALL                             R9 1 1
      143 NAMECALL                         R7 R7 K9 ["format"]
      145 CALL                             R7 2 1
      146 CALL                             R6 1 0
      147 RETURN                           R0 0
      148 FASTCALL1                        TYPEOF R1 ; [+3]
      149 MOVE                             R8 R1
      150 GETIMPORT                        R7 K1 [typeof]
      152 CALL                             R7 1 1
      153 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+4]
      155 GETTABLEKS                       R6 R1 K28 ["sessionId"]
      157 JUMP                             ; [+1]
      158 LOADNIL                          R6
      159 FASTCALL1                        TYPEOF R6 ; [+3]
      160 MOVE                             R9 R6
      161 GETIMPORT                        R8 K1 [typeof]
      163 CALL                             R8 1 1
      164 JUMPIFNOTEQKS                    R8 K23 ["string"] ; [+4]
      166 GETUPVAL                         R8 4
      167 GETTABLE                         R7 R8 R6
      168 JUMP                             ; [+1]
      169 LOADNIL                          R7
      170 FASTCALL1                        TYPEOF R6 ; [+3]
      171 MOVE                             R9 R6
      172 GETIMPORT                        R8 K1 [typeof]
      174 CALL                             R8 1 1
      175 JUMPIFNOTEQKS                    R8 K23 ["string"] ; [+43]
      177 JUMPIFEQKNIL                     R7 ; [+41]
      179 GETUPVAL                         R8 4
      180 LOADNIL                          R9
      181 SETTABLE                         R9 R8 R6
      182 GETUPVAL                         R8 1
      183 GETTABLEKS                       R8 R8 K3 ["FFlagDebugLogAssistantUI"]
      185 JUMPIFNOT                        R8 ; [+15]
      186 GETIMPORT                        R8 K5 [print]
      188 LOADK                            R9 K29 ["[Remote ACP] resolve pending session/prompt sessionId=%* id=%* stopReason=%*"]
      189 MOVE                             R11 R6
      190 FASTCALL1                        TOSTRING R7 ; [+3]
      191 MOVE                             R13 R7
      192 GETIMPORT                        R12 K8 [tostring]
      194 CALL                             R12 1 1
      195 GETTABLEKS                       R13 R3 K18 ["stopReason"]
      197 NAMECALL                         R9 R9 K9 ["format"]
      199 CALL                             R9 4 1
      200 CALL                             R8 1 0
      201 DUPTABLE                         R8 K34 [{["jsonrpc"] = "2.0", ["id"], ["result"]}]
      202 SETTABLEKS                       R7 R8 K32 ["id"]
      204 DUPTABLE                         R9 K35 [{"stopReason"}]
      205 GETTABLEKS                       R10 R3 K18 ["stopReason"]
      207 SETTABLEKS                       R10 R9 K18 ["stopReason"]
      209 SETTABLEKS                       R9 R8 K33 ["result"]
      211 GETUPVAL                         R9 3
      212 GETTABLEKS                       R9 R9 K25 ["onTransportMessage"]
      214 MOVE                             R11 R8
      215 NAMECALL                         R9 R9 K26 ["Fire"]
      217 CALL                             R9 2 0
      218 RETURN                           R0 0
      219 GETUPVAL                         R8 1
      220 GETTABLEKS                       R8 R8 K3 ["FFlagDebugLogAssistantUI"]
      222 JUMPIFNOT                        R8 ; [+12]
      223 GETIMPORT                        R8 K5 [print]
      225 LOADK                            R9 K36 ["[Remote ACP] idle state_change with no pending prompt sessionId=%*"]
      226 FASTCALL1                        TOSTRING R6 ; [+3]
      227 MOVE                             R12 R6
      228 GETIMPORT                        R11 K8 [tostring]
      230 CALL                             R11 1 1
      231 NAMECALL                         R9 R9 K9 ["format"]
      233 CALL                             R9 2 1
      234 CALL                             R8 1 0
      235 RETURN                           R0 0
      236 FASTCALL1                        TYPEOF R2 ; [+3]
      237 MOVE                             R4 R2
      238 GETIMPORT                        R3 K1 [typeof]
      240 CALL                             R3 1 1
      241 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+51]
      243 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
      245 JUMPIFEQKS                       R3 K37 ["tool_call_update"] ; [+5]
      247 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
      249 JUMPIFNOTEQKS                    R3 K38 ["tool_call"] ; [+43]
      251 GETUPVAL                         R3 5
      252 MOVE                             R4 R2
      253 CALL                             R3 1 1
      254 JUMPIFEQ                         R3 R2 ; [+38]
      256 GETUPVAL                         R4 1
      257 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
      259 JUMPIFNOT                        R4 ; [+13]
      260 GETIMPORT                        R4 K5 [print]
      262 LOADK                            R5 K39 ["[Remote ACP] normalized double-encoded client tool result toolCallId=%*"]
      263 GETTABLEKS                       R8 R2 K40 ["toolCallId"]
      265 FASTCALL1                        TOSTRING R8 ; [+2]
      266 GETIMPORT                        R7 K8 [tostring]
      268 CALL                             R7 1 1
      269 NAMECALL                         R5 R5 K9 ["format"]
      271 CALL                             R5 2 1
      272 CALL                             R4 1 0
      273 GETIMPORT                        R4 K20 [table.clone]
      275 MOVE                             R5 R1
      276 CALL                             R4 1 1
      277 SETTABLEKS                       R3 R4 K13 ["update"]
      279 GETIMPORT                        R5 K20 [table.clone]
      281 MOVE                             R6 R0
      282 CALL                             R5 1 1
      283 SETTABLEKS                       R4 R5 K12 ["params"]
      285 GETUPVAL                         R6 3
      286 GETTABLEKS                       R6 R6 K25 ["onTransportMessage"]
      288 MOVE                             R8 R5
      289 NAMECALL                         R6 R6 K26 ["Fire"]
      291 CALL                             R6 2 0
      292 RETURN                           R0 0
      293 GETUPVAL                         R1 3
      294 GETTABLEKS                       R1 R1 K25 ["onTransportMessage"]
      296 MOVE                             R3 R0
      297 NAMECALL                         R1 R1 K26 ["Fire"]
      299 CALL                             R1 2 0
      300 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Remote ACP] transport start; subscribing to inbound notifications"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K4 ["subscribe"]
       11 GETUPVAL                         R1 3
       12 CALL                             R0 1 1
       13 SETUPVAL                         R0 1
       14 GETUPVAL                         R0 4
       15 GETTABLEKS                       R0 R0 K5 ["resolve"]
       17 CALL                             R0 0 -1
       18 RETURN                           R0 -1

PROTO_12:
        0 JUMPIF                           R0 ; [+68]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["[Remote ACP] session/prompt HTTP failed sessionId=%*"]
        8 GETUPVAL                         R6 1
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 1
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 FASTCALL1                        TYPEOF R3 ; [+2]
       19 GETIMPORT                        R2 K8 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFNOTEQKS                    R2 K9 ["string"] ; [+5]
       24 GETUPVAL                         R2 2
       25 GETUPVAL                         R3 1
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R2 R3
       28 GETUPVAL                         R3 3
       29 FASTCALL1                        TYPEOF R1 ; [+3]
       30 MOVE                             R5 R1
       31 GETIMPORT                        R4 K8 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+20]
       36 GETTABLEKS                       R5 R1 K11 ["error"]
       38 FASTCALL1                        TYPEOF R5 ; [+2]
       39 GETIMPORT                        R4 K8 [typeof]
       41 CALL                             R4 1 1
       42 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+12]
       44 GETIMPORT                        R4 K13 [table.clone]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R5 K14 ["2.0"]
       49 SETTABLEKS                       R5 R4 K15 ["jsonrpc"]
       51 SETTABLEKS                       R3 R4 K16 ["id"]
       53 MOVE                             R2 R4
       54 JUMP                             ; [+6]
       55 DUPTABLE                         R2 K17 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       56 SETTABLEKS                       R3 R2 K16 ["id"]
       58 DUPTABLE                         R4 K22 [{["code"] = -32603, ["message"] = "session/prompt request failed"}]
       59 SETTABLEKS                       R4 R2 K11 ["error"]
       61 GETUPVAL                         R3 4
       62 GETTABLEKS                       R3 R3 K23 ["onTransportMessage"]
       64 MOVE                             R5 R2
       65 NAMECALL                         R3 R3 K24 ["Fire"]
       67 CALL                             R3 2 0
       68 RETURN                           R0 0
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
       72 JUMPIFNOT                        R2 ; [+12]
       73 GETIMPORT                        R2 K2 [print]
       75 LOADK                            R3 K25 ["[Remote ACP] session/prompt accepted; awaiting idle notification sessionId=%*"]
       76 GETUPVAL                         R6 1
       77 FASTCALL1                        TOSTRING R6 ; [+2]
       78 GETIMPORT                        R5 K5 [tostring]
       80 CALL                             R5 1 1
       81 NAMECALL                         R3 R3 K6 ["format"]
       83 CALL                             R3 2 1
       84 CALL                             R2 1 0
       85 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R0 ; [+42]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R2 K3 ["[Remote ACP] _roblox/session/tool_call HTTP failed sessionId=%*"]
        8 GETUPVAL                         R5 1
        9 FASTCALL1                        TOSTRING R5 ; [+2]
       10 GETIMPORT                        R4 K5 [tostring]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K6 ["format"]
       15 CALL                             R2 2 1
       16 CALL                             R1 1 0
       17 GETUPVAL                         R2 1
       18 FASTCALL1                        TYPEOF R2 ; [+2]
       19 GETIMPORT                        R1 K8 [typeof]
       21 CALL                             R1 1 1
       22 JUMPIFNOTEQKS                    R1 K9 ["string"] ; [+5]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 1
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R1 R2
       28 GETUPVAL                         R2 3
       29 DUPTABLE                         R1 K14 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       30 SETTABLEKS                       R2 R1 K12 ["id"]
       32 DUPTABLE                         R3 K19 [{["code"] = -32603, ["message"] = "_roblox/session/tool_call request failed"}]
       33 SETTABLEKS                       R3 R1 K13 ["error"]
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K20 ["onTransportMessage"]
       38 MOVE                             R4 R1
       39 NAMECALL                         R2 R2 K21 ["Fire"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R1 0
       44 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
       46 JUMPIFNOT                        R1 ; [+12]
       47 GETIMPORT                        R1 K2 [print]
       49 LOADK                            R2 K22 ["[Remote ACP] _roblox/session/tool_call accepted; awaiting idle notification sessionId=%*"]
       50 GETUPVAL                         R5 1
       51 FASTCALL1                        TOSTRING R5 ; [+2]
       52 GETIMPORT                        R4 K5 [tostring]
       54 CALL                             R4 1 1
       55 NAMECALL                         R2 R2 K6 ["format"]
       57 CALL                             R2 2 1
       58 CALL                             R1 1 0
       59 RETURN                           R0 0

PROTO_14:
        0 JUMPIF                           R0 ; [+47]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R2 ; [+17]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R3 K3 ["[Remote ACP] request failed method=%* id=%*"]
        8 GETUPVAL                         R6 1
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 GETUPVAL                         R7 2
       14 FASTCALL1                        TOSTRING R7 ; [+2]
       15 GETIMPORT                        R6 K5 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 3 1
       21 CALL                             R2 1 0
       22 GETUPVAL                         R3 2
       23 LOADK                            R4 K7 ["%* request failed"]
       24 GETUPVAL                         R7 1
       25 FASTCALL1                        TOSTRING R7 ; [+2]
       26 GETIMPORT                        R6 K5 [tostring]
       28 CALL                             R6 1 1
       29 NAMECALL                         R4 R4 K6 ["format"]
       31 CALL                             R4 2 1
       32 DUPTABLE                         R2 K12 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       33 SETTABLEKS                       R3 R2 K10 ["id"]
       35 DUPTABLE                         R5 K16 [{["code"] = -32603, ["message"]}]
       36 SETTABLEKS                       R4 R5 K15 ["message"]
       38 SETTABLEKS                       R5 R2 K11 ["error"]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K17 ["onTransportMessage"]
       43 MOVE                             R5 R2
       44 NAMECALL                         R3 R3 K18 ["Fire"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0
       48 FASTCALL1                        TYPEOF R1 ; [+3]
       49 MOVE                             R4 R1
       50 GETIMPORT                        R3 K20 [typeof]
       52 CALL                             R3 1 1
       53 JUMPIFNOTEQKS                    R3 K21 ["table"] ; [+3]
       55 MOVE                             R2 R1
       56 JUMP                             ; [+2]
       57 NEWTABLE                         R2 0 0
       59 LOADK                            R3 K9 ["2.0"]
       60 SETTABLEKS                       R3 R2 K8 ["jsonrpc"]
       62 GETUPVAL                         R3 2
       63 SETTABLEKS                       R3 R2 K10 ["id"]
       65 GETTABLEKS                       R3 R2 K22 ["result"]
       67 JUMPIFNOTEQKNIL                  R3 ; [+25]
       69 GETTABLEKS                       R3 R2 K11 ["error"]
       71 JUMPIFNOTEQKNIL                  R3 ; [+21]
       73 GETUPVAL                         R3 0
       74 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
       76 JUMPIFNOT                        R3 ; [+12]
       77 GETIMPORT                        R3 K2 [print]
       79 LOADK                            R4 K23 ["[Remote ACP] empty success body; synthesizing result method=%*"]
       80 GETUPVAL                         R7 1
       81 FASTCALL1                        TOSTRING R7 ; [+2]
       82 GETIMPORT                        R6 K5 [tostring]
       84 CALL                             R6 1 1
       85 NAMECALL                         R4 R4 K6 ["format"]
       87 CALL                             R4 2 1
       88 CALL                             R3 1 0
       89 NEWTABLE                         R3 0 0
       91 SETTABLEKS                       R3 R2 K22 ["result"]
       93 GETUPVAL                         R3 1
       94 GETUPVAL                         R4 4
       95 GETTABLEKS                       R4 R4 K24 ["SessionLoad"]
       97 JUMPIFNOTEQ                      R3 R4 ; [+12]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      102 JUMPIFNOT                        R3 ; [+4]
      103 GETIMPORT                        R3 K2 [print]
      105 LOADK                            R4 K25 ["[Remote ACP] normalize session/load history dialect"]
      106 CALL                             R3 1 0
      107 GETUPVAL                         R3 5
      108 MOVE                             R4 R2
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 0
      111 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      113 JUMPIFNOT                        R3 ; [+17]
      114 GETIMPORT                        R3 K2 [print]
      116 LOADK                            R4 K26 ["[Remote ACP] fire request response method=%* id=%*"]
      117 GETUPVAL                         R7 1
      118 FASTCALL1                        TOSTRING R7 ; [+2]
      119 GETIMPORT                        R6 K5 [tostring]
      121 CALL                             R6 1 1
      122 GETUPVAL                         R8 2
      123 FASTCALL1                        TOSTRING R8 ; [+2]
      124 GETIMPORT                        R7 K5 [tostring]
      126 CALL                             R7 1 1
      127 NAMECALL                         R4 R4 K6 ["format"]
      129 CALL                             R4 3 1
      130 CALL                             R3 1 0
      131 GETUPVAL                         R3 3
      132 GETTABLEKS                       R3 R3 K17 ["onTransportMessage"]
      134 MOVE                             R5 R2
      135 NAMECALL                         R3 R3 K18 ["Fire"]
      137 CALL                             R3 2 0
      138 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R0 K1 ["method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R3 ; [+17]
        8 GETIMPORT                        R3 K4 [print]
       10 LOADK                            R4 K5 ["[Remote ACP] sendRequest method=%* id=%*"]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K7 [tostring]
       15 CALL                             R6 1 1
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R8 R1
       18 GETIMPORT                        R7 K7 [tostring]
       20 CALL                             R7 1 1
       21 NAMECALL                         R4 R4 K8 ["format"]
       23 CALL                             R4 3 1
       24 CALL                             R3 1 0
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K9 ["SessionPrompt"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+68]
       30 GETTABLEKS                       R3 R0 K10 ["params"]
       32 FASTCALL1                        TYPEOF R3 ; [+3]
       33 MOVE                             R6 R3
       34 GETIMPORT                        R5 K12 [typeof]
       36 CALL                             R5 1 1
       37 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+4]
       39 GETTABLEKS                       R4 R3 K14 ["sessionId"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 FASTCALL1                        TYPEOF R4 ; [+3]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K12 [typeof]
       47 CALL                             R5 1 1
       48 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+21]
       50 GETUPVAL                         R5 2
       51 SETTABLE                         R1 R5 R4
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       55 JUMPIFNOT                        R5 ; [+22]
       56 GETIMPORT                        R5 K4 [print]
       58 LOADK                            R6 K16 ["[Remote ACP] track pending session/prompt sessionId=%* id=%*"]
       59 MOVE                             R8 R4
       60 FASTCALL1                        TOSTRING R1 ; [+3]
       61 MOVE                             R10 R1
       62 GETIMPORT                        R9 K7 [tostring]
       64 CALL                             R9 1 1
       65 NAMECALL                         R6 R6 K8 ["format"]
       67 CALL                             R6 3 1
       68 CALL                             R5 1 0
       69 JUMP                             ; [+8]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       73 JUMPIFNOT                        R5 ; [+4]
       74 GETIMPORT                        R5 K4 [print]
       76 LOADK                            R6 K17 ["[Remote ACP] session/prompt missing sessionId; cannot track pending prompt"]
       77 CALL                             R5 1 0
       78 NEWCLOSURE                       R5 P0
       79 CAPTURE                          UPVAL U0
       80 CAPTURE                          VAL R4
       81 CAPTURE                          UPVAL U2
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U3
       84 GETIMPORT                        R6 K20 [task.spawn]
       86 NEWCLOSURE                       R7 P1
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U0
       90 CAPTURE                          VAL R5
       91 CALL                             R6 1 0
       92 GETUPVAL                         R5 5
       93 GETTABLEKS                       R5 R5 K21 ["resolve"]
       95 CALL                             R5 0 -1
       96 RETURN                           R5 -1
       97 GETUPVAL                         R3 6
       98 GETTABLEKS                       R3 R3 K22 ["SessionToolCallMethod"]
      100 JUMPIFNOTEQ                      R2 R3 ; [+68]
      102 GETTABLEKS                       R3 R0 K10 ["params"]
      104 FASTCALL1                        TYPEOF R3 ; [+3]
      105 MOVE                             R6 R3
      106 GETIMPORT                        R5 K12 [typeof]
      108 CALL                             R5 1 1
      109 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+4]
      111 GETTABLEKS                       R4 R3 K14 ["sessionId"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R4
      115 FASTCALL1                        TYPEOF R4 ; [+3]
      116 MOVE                             R6 R4
      117 GETIMPORT                        R5 K12 [typeof]
      119 CALL                             R5 1 1
      120 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+21]
      122 GETUPVAL                         R5 2
      123 SETTABLE                         R1 R5 R4
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
      127 JUMPIFNOT                        R5 ; [+22]
      128 GETIMPORT                        R5 K4 [print]
      130 LOADK                            R6 K23 ["[Remote ACP] track pending _roblox/session/tool_call sessionId=%* id=%*"]
      131 MOVE                             R8 R4
      132 FASTCALL1                        TOSTRING R1 ; [+3]
      133 MOVE                             R10 R1
      134 GETIMPORT                        R9 K7 [tostring]
      136 CALL                             R9 1 1
      137 NAMECALL                         R6 R6 K8 ["format"]
      139 CALL                             R6 3 1
      140 CALL                             R5 1 0
      141 JUMP                             ; [+8]
      142 GETUPVAL                         R5 0
      143 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
      145 JUMPIFNOT                        R5 ; [+4]
      146 GETIMPORT                        R5 K4 [print]
      148 LOADK                            R6 K24 ["[Remote ACP] _roblox/session/tool_call missing sessionId; cannot track pending turn"]
      149 CALL                             R5 1 0
      150 NEWCLOSURE                       R5 P2
      151 CAPTURE                          UPVAL U0
      152 CAPTURE                          VAL R4
      153 CAPTURE                          UPVAL U2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          UPVAL U3
      156 GETIMPORT                        R6 K20 [task.spawn]
      158 NEWCLOSURE                       R7 P1
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U0
      162 CAPTURE                          VAL R5
      163 CALL                             R6 1 0
      164 GETUPVAL                         R5 5
      165 GETTABLEKS                       R5 R5 K21 ["resolve"]
      167 CALL                             R5 0 -1
      168 RETURN                           R5 -1
      169 NEWCLOSURE                       R3 P3
      170 CAPTURE                          UPVAL U0
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R1
      173 CAPTURE                          UPVAL U3
      174 CAPTURE                          UPVAL U1
      175 CAPTURE                          UPVAL U7
      176 GETIMPORT                        R4 K20 [task.spawn]
      178 NEWCLOSURE                       R5 P1
      179 CAPTURE                          UPVAL U4
      180 CAPTURE                          VAL R0
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          VAL R3
      183 CALL                             R4 1 0
      184 GETUPVAL                         R3 5
      185 GETTABLEKS                       R3 R3 K21 ["resolve"]
      187 CALL                             R3 0 -1
      188 RETURN                           R3 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[Remote ACP] sendNotification method=%*"]
        7 GETTABLEKS                       R5 R0 K4 ["method"]
        9 FASTCALL1                        TOSTRING R5 ; [+2]
       10 GETIMPORT                        R4 K6 [tostring]
       12 CALL                             R4 1 1
       13 NAMECALL                         R2 R2 K7 ["format"]
       15 CALL                             R2 2 1
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K10 [task.spawn]
       19 LOADNIL                          R3
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R3
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K11 ["resolve"]
       29 CALL                             R1 0 -1
       30 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+33]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R2 K3 ["[Remote ACP] sendResponse id=%* hasResult=%* hasError=%*"]
        7 GETTABLEKS                       R5 R0 K4 ["id"]
        9 FASTCALL1                        TOSTRING R5 ; [+2]
       10 GETIMPORT                        R4 K6 [tostring]
       12 CALL                             R4 1 1
       13 GETTABLEKS                       R7 R0 K7 ["result"]
       15 JUMPIFNOTEQKNIL                  R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 FASTCALL1                        TOSTRING R6 ; [+2]
       20 GETIMPORT                        R5 K6 [tostring]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R8 R0 K8 ["error"]
       25 JUMPIFNOTEQKNIL                  R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 FASTCALL1                        TOSTRING R7 ; [+2]
       30 GETIMPORT                        R6 K6 [tostring]
       32 CALL                             R6 1 1
       33 NAMECALL                         R2 R2 K9 ["format"]
       35 CALL                             R2 4 1
       36 CALL                             R1 1 0
       37 GETIMPORT                        R1 K12 [task.spawn]
       39 LOADNIL                          R3
       40 NEWCLOSURE                       R2 P0
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R3
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K13 ["resolve"]
       49 CALL                             R1 0 -1
       50 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [print]
        6 LOADK                            R1 K3 ["[Remote ACP] transport close"]
        7 CALL                             R0 1 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+4]
       12 GETUPVAL                         R0 2
       13 CALL                             R0 0 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 2
       16 GETUPVAL                         R0 3
       17 GETTABLEKS                       R0 R0 K4 ["resolve"]
       19 CALL                             R0 0 -1
       20 RETURN                           R0 -1

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 LOADB                            R3 0
        4 LOADNIL                          R4
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R4
        7 NEWCLOSURE                       R6 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 DUPCLOSURE                       R7 K0 [PROTO_6]
       11 DUPCLOSURE                       R8 K1 [PROTO_7]
       12 DUPCLOSURE                       R9 K2 [PROTO_9]
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 NEWCLOSURE                       R10 P5
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R1
       21 CAPTURE                          UPVAL U1
       22 GETUPVAL                         R11 3
       23 GETTABLEKS                       R11 R11 K3 ["makeTransport"]
       25 DUPTABLE                         R12 K9 [{"start", "sendRequest", "sendNotification", "sendResponse", "close"}]
       26 NEWCLOSURE                       R13 P6
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R10
       31 CAPTURE                          UPVAL U4
       32 SETTABLEKS                       R13 R12 K4 ["start"]
       34 NEWCLOSURE                       R13 P7
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R9
       43 SETTABLEKS                       R13 R12 K5 ["sendRequest"]
       45 NEWCLOSURE                       R13 P8
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U4
       49 SETTABLEKS                       R13 R12 K6 ["sendNotification"]
       51 NEWCLOSURE                       R13 P9
       52 CAPTURE                          UPVAL U0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U4
       55 SETTABLEKS                       R13 R12 K7 ["sendResponse"]
       57 NEWCLOSURE                       R13 P10
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          REF R3
       60 CAPTURE                          REF R2
       61 CAPTURE                          UPVAL U4
       62 SETTABLEKS                       R13 R12 K8 ["close"]
       64 CALL                             R11 1 1
       65 MOVE                             R4 R11
       66 CLOSEUPVALS                      R2
       67 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Acp"]
       11 GETTABLEKS                       R2 R2 K7 ["RobloxExtensions"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["AgentClientProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Engine"]
       25 GETTABLEKS                       R4 R4 K11 ["EngineFlags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Promise"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Acp"]
       39 GETTABLEKS                       R6 R6 K13 ["toContentBlock"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K15 [game]
       44 LOADK                            R8 K16 ["HttpService"]
       45 NAMECALL                         R6 R6 K17 ["GetService"]
       47 CALL                             R6 2 1
       48 GETTABLEKS                       R7 R2 K18 ["Method"]
       50 DUPTABLE                         R8 K24 [{["content"] = True, ["structuredContent"] = True, ["isError"] = True, ["_meta"] = True}]
       51 DUPCLOSURE                       R9 K25 [PROTO_0]
       52 CAPTURE                          VAL R8
       53 DUPCLOSURE                       R10 K26 [PROTO_2]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R5
       57 DUPCLOSURE                       R11 K27 [PROTO_19]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 DUPTABLE                         R12 K29 [{"makeCASTransport"}]
       65 SETTABLEKS                       R11 R12 K28 ["makeCASTransport"]
       67 RETURN                           R12 1

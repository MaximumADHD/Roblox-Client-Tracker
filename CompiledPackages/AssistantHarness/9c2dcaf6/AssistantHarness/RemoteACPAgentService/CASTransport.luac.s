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
        8 JUMPIFNOT                        R2 ; [+33]
        9 GETIMPORT                        R2 K3 [print]
       11 LOADK                            R4 K4 ["[Remote ACP] postAcp settled method=%* ok=%* hasResult=%*"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K5 ["method"]
       15 FASTCALL1                        TOSTRING R7 ; [+2]
       16 GETIMPORT                        R6 K7 [tostring]
       18 CALL                             R6 1 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R8 R0
       21 GETIMPORT                        R7 K7 [tostring]
       23 CALL                             R7 1 1
       24 FASTCALL1                        TYPEOF R1 ; [+3]
       25 MOVE                             R11 R1
       26 GETIMPORT                        R10 K9 [typeof]
       28 CALL                             R10 1 1
       29 JUMPIFEQKS                       R10 K10 ["table"] ; [+2]
       31 LOADB                            R9 0 +1
       32 LOADB                            R9 1
       33 FASTCALL1                        TOSTRING R9 ; [+2]
       34 GETIMPORT                        R8 K7 [tostring]
       36 CALL                             R8 1 1
       37 NAMECALL                         R4 R4 K11 ["format"]
       39 CALL                             R4 4 1
       40 MOVE                             R3 R4
       41 CALL                             R2 1 0
       42 GETUPVAL                         R2 3
       43 JUMPIFNOT                        R2 ; [+4]
       44 GETUPVAL                         R2 3
       45 MOVE                             R3 R0
       46 MOVE                             R4 R1
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

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

PROTO_8:
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
       63 DUPCLOSURE                       R7 K16 [PROTO_7]
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

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+7]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R1 K1 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K2 ["table"] ; [+24]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K3 ["FFlagDebugLogAssistantUI"]
       12 JUMPIFNOT                        R1 ; [+18]
       13 GETIMPORT                        R1 K5 [print]
       15 LOADK                            R3 K6 ["[Remote ACP] drop inbound closed=%* typeof=%*"]
       16 GETUPVAL                         R6 0
       17 FASTCALL1                        TOSTRING R6 ; [+2]
       18 GETIMPORT                        R5 K8 [tostring]
       20 CALL                             R5 1 1
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R7 R0
       23 GETIMPORT                        R6 K1 [typeof]
       25 CALL                             R6 1 1
       26 NAMECALL                         R3 R3 K9 ["format"]
       28 CALL                             R3 3 1
       29 MOVE                             R2 R3
       30 CALL                             R1 1 0
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K10 ["method"]
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K11 ["SessionUpdate"]
       37 JUMPIFNOTEQ                      R1 R2 ; [+261]
       39 GETTABLEKS                       R1 R0 K12 ["params"]
       41 FASTCALL1                        TYPEOF R1 ; [+3]
       42 MOVE                             R4 R1
       43 GETIMPORT                        R3 K1 [typeof]
       45 CALL                             R3 1 1
       46 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
       48 GETTABLEKS                       R2 R1 K13 ["update"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R2
       52 FASTCALL1                        TYPEOF R2 ; [+3]
       53 MOVE                             R4 R2
       54 GETIMPORT                        R3 K1 [typeof]
       56 CALL                             R3 1 1
       57 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+183]
       59 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
       61 JUMPIFNOTEQKS                    R3 K15 ["state_change"] ; [+179]
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K3 ["FFlagDebugLogAssistantUI"]
       66 JUMPIFNOT                        R3 ; [+20]
       67 GETIMPORT                        R3 K5 [print]
       69 LOADK                            R5 K16 ["[Remote ACP] normalize state_change→state_update state=%* stopReason=%*"]
       70 GETTABLEKS                       R8 R2 K17 ["state"]
       72 FASTCALL1                        TOSTRING R8 ; [+2]
       73 GETIMPORT                        R7 K8 [tostring]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R9 R2 K18 ["stopReason"]
       78 FASTCALL1                        TOSTRING R9 ; [+2]
       79 GETIMPORT                        R8 K8 [tostring]
       81 CALL                             R8 1 1
       82 NAMECALL                         R5 R5 K9 ["format"]
       84 CALL                             R5 3 1
       85 MOVE                             R4 R5
       86 CALL                             R3 1 0
       87 GETIMPORT                        R3 K20 [table.clone]
       89 MOVE                             R4 R2
       90 CALL                             R3 1 1
       91 LOADK                            R4 K21 ["state_update"]
       92 SETTABLEKS                       R4 R3 K14 ["sessionUpdate"]
       94 GETTABLEKS                       R4 R3 K17 ["state"]
       96 JUMPIFNOTEQKS                    R4 K22 ["idle"] ; [+12]
       98 GETTABLEKS                       R5 R3 K18 ["stopReason"]
      100 FASTCALL1                        TYPEOF R5 ; [+2]
      101 GETIMPORT                        R4 K1 [typeof]
      103 CALL                             R4 1 1
      104 JUMPIFEQKS                       R4 K23 ["string"] ; [+4]
      106 LOADK                            R4 K24 ["end_turn"]
      107 SETTABLEKS                       R4 R3 K18 ["stopReason"]
      109 GETIMPORT                        R4 K20 [table.clone]
      111 MOVE                             R5 R1
      112 CALL                             R4 1 1
      113 SETTABLEKS                       R3 R4 K13 ["update"]
      115 GETIMPORT                        R5 K20 [table.clone]
      117 MOVE                             R6 R0
      118 CALL                             R5 1 1
      119 SETTABLEKS                       R4 R5 K12 ["params"]
      121 GETUPVAL                         R6 3
      122 GETTABLEKS                       R6 R6 K25 ["onTransportMessage"]
      124 MOVE                             R8 R5
      125 NAMECALL                         R6 R6 K26 ["Fire"]
      127 CALL                             R6 2 0
      128 GETTABLEKS                       R6 R2 K17 ["state"]
      130 JUMPIFEQKS                       R6 K22 ["idle"] ; [+20]
      132 GETUPVAL                         R6 1
      133 GETTABLEKS                       R6 R6 K3 ["FFlagDebugLogAssistantUI"]
      135 JUMPIFNOT                        R6 ; [+14]
      136 GETIMPORT                        R6 K5 [print]
      138 LOADK                            R8 K27 ["[Remote ACP] state_change not idle; waiting for prompt completion state=%*"]
      139 GETTABLEKS                       R11 R2 K17 ["state"]
      141 FASTCALL1                        TOSTRING R11 ; [+2]
      142 GETIMPORT                        R10 K8 [tostring]
      144 CALL                             R10 1 1
      145 NAMECALL                         R8 R8 K9 ["format"]
      147 CALL                             R8 2 1
      148 MOVE                             R7 R8
      149 CALL                             R6 1 0
      150 RETURN                           R0 0
      151 FASTCALL1                        TYPEOF R1 ; [+3]
      152 MOVE                             R8 R1
      153 GETIMPORT                        R7 K1 [typeof]
      155 CALL                             R7 1 1
      156 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+4]
      158 GETTABLEKS                       R6 R1 K28 ["sessionId"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R6
      162 FASTCALL1                        TYPEOF R6 ; [+3]
      163 MOVE                             R9 R6
      164 GETIMPORT                        R8 K1 [typeof]
      166 CALL                             R8 1 1
      167 JUMPIFNOTEQKS                    R8 K23 ["string"] ; [+4]
      169 GETUPVAL                         R8 4
      170 GETTABLE                         R7 R8 R6
      171 JUMP                             ; [+1]
      172 LOADNIL                          R7
      173 FASTCALL1                        TYPEOF R6 ; [+3]
      174 MOVE                             R9 R6
      175 GETIMPORT                        R8 K1 [typeof]
      177 CALL                             R8 1 1
      178 JUMPIFNOTEQKS                    R8 K23 ["string"] ; [+44]
      180 JUMPIFEQKNIL                     R7 ; [+42]
      182 GETUPVAL                         R8 4
      183 LOADNIL                          R9
      184 SETTABLE                         R9 R8 R6
      185 GETUPVAL                         R8 1
      186 GETTABLEKS                       R8 R8 K3 ["FFlagDebugLogAssistantUI"]
      188 JUMPIFNOT                        R8 ; [+16]
      189 GETIMPORT                        R8 K5 [print]
      191 LOADK                            R10 K29 ["[Remote ACP] resolve pending session/prompt sessionId=%* id=%* stopReason=%*"]
      192 MOVE                             R12 R6
      193 FASTCALL1                        TOSTRING R7 ; [+3]
      194 MOVE                             R14 R7
      195 GETIMPORT                        R13 K8 [tostring]
      197 CALL                             R13 1 1
      198 GETTABLEKS                       R14 R3 K18 ["stopReason"]
      200 NAMECALL                         R10 R10 K9 ["format"]
      202 CALL                             R10 4 1
      203 MOVE                             R9 R10
      204 CALL                             R8 1 0
      205 DUPTABLE                         R8 K34 [{["jsonrpc"] = "2.0", ["id"], ["result"]}]
      206 SETTABLEKS                       R7 R8 K32 ["id"]
      208 DUPTABLE                         R9 K35 [{"stopReason"}]
      209 GETTABLEKS                       R10 R3 K18 ["stopReason"]
      211 SETTABLEKS                       R10 R9 K18 ["stopReason"]
      213 SETTABLEKS                       R9 R8 K33 ["result"]
      215 GETUPVAL                         R9 3
      216 GETTABLEKS                       R9 R9 K25 ["onTransportMessage"]
      218 MOVE                             R11 R8
      219 NAMECALL                         R9 R9 K26 ["Fire"]
      221 CALL                             R9 2 0
      222 RETURN                           R0 0
      223 GETUPVAL                         R8 1
      224 GETTABLEKS                       R8 R8 K3 ["FFlagDebugLogAssistantUI"]
      226 JUMPIFNOT                        R8 ; [+13]
      227 GETIMPORT                        R8 K5 [print]
      229 LOADK                            R10 K36 ["[Remote ACP] idle state_change with no pending prompt sessionId=%*"]
      230 FASTCALL1                        TOSTRING R6 ; [+3]
      231 MOVE                             R13 R6
      232 GETIMPORT                        R12 K8 [tostring]
      234 CALL                             R12 1 1
      235 NAMECALL                         R10 R10 K9 ["format"]
      237 CALL                             R10 2 1
      238 MOVE                             R9 R10
      239 CALL                             R8 1 0
      240 RETURN                           R0 0
      241 FASTCALL1                        TYPEOF R2 ; [+3]
      242 MOVE                             R4 R2
      243 GETIMPORT                        R3 K1 [typeof]
      245 CALL                             R3 1 1
      246 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+52]
      248 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
      250 JUMPIFEQKS                       R3 K37 ["tool_call_update"] ; [+5]
      252 GETTABLEKS                       R3 R2 K14 ["sessionUpdate"]
      254 JUMPIFNOTEQKS                    R3 K38 ["tool_call"] ; [+44]
      256 GETUPVAL                         R3 5
      257 MOVE                             R4 R2
      258 CALL                             R3 1 1
      259 JUMPIFEQ                         R3 R2 ; [+39]
      261 GETUPVAL                         R4 1
      262 GETTABLEKS                       R4 R4 K3 ["FFlagDebugLogAssistantUI"]
      264 JUMPIFNOT                        R4 ; [+14]
      265 GETIMPORT                        R4 K5 [print]
      267 LOADK                            R6 K39 ["[Remote ACP] normalized double-encoded client tool result toolCallId=%*"]
      268 GETTABLEKS                       R9 R2 K40 ["toolCallId"]
      270 FASTCALL1                        TOSTRING R9 ; [+2]
      271 GETIMPORT                        R8 K8 [tostring]
      273 CALL                             R8 1 1
      274 NAMECALL                         R6 R6 K9 ["format"]
      276 CALL                             R6 2 1
      277 MOVE                             R5 R6
      278 CALL                             R4 1 0
      279 GETIMPORT                        R4 K20 [table.clone]
      281 MOVE                             R5 R1
      282 CALL                             R4 1 1
      283 SETTABLEKS                       R3 R4 K13 ["update"]
      285 GETIMPORT                        R5 K20 [table.clone]
      287 MOVE                             R6 R0
      288 CALL                             R5 1 1
      289 SETTABLEKS                       R4 R5 K12 ["params"]
      291 GETUPVAL                         R6 3
      292 GETTABLEKS                       R6 R6 K25 ["onTransportMessage"]
      294 MOVE                             R8 R5
      295 NAMECALL                         R6 R6 K26 ["Fire"]
      297 CALL                             R6 2 0
      298 RETURN                           R0 0
      299 GETUPVAL                         R1 3
      300 GETTABLEKS                       R1 R1 K25 ["onTransportMessage"]
      302 MOVE                             R3 R0
      303 NAMECALL                         R1 R1 K26 ["Fire"]
      305 CALL                             R1 2 0
      306 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 JUMPIF                           R0 ; [+43]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R3 K3 ["[Remote ACP] session/prompt HTTP failed sessionId=%*"]
        8 GETUPVAL                         R6 1
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 GETUPVAL                         R2 1
       19 FASTCALL1                        TYPEOF R2 ; [+2]
       20 GETIMPORT                        R1 K8 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K9 ["string"] ; [+5]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R1 R2
       29 GETUPVAL                         R2 3
       30 DUPTABLE                         R1 K14 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       31 SETTABLEKS                       R2 R1 K12 ["id"]
       33 DUPTABLE                         R3 K19 [{["code"] = -32603, ["message"] = "session/prompt request failed"}]
       34 SETTABLEKS                       R3 R1 K13 ["error"]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K20 ["onTransportMessage"]
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K21 ["Fire"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
       47 JUMPIFNOT                        R1 ; [+13]
       48 GETIMPORT                        R1 K2 [print]
       50 LOADK                            R3 K22 ["[Remote ACP] session/prompt accepted; awaiting idle notification sessionId=%*"]
       51 GETUPVAL                         R6 1
       52 FASTCALL1                        TOSTRING R6 ; [+2]
       53 GETIMPORT                        R5 K5 [tostring]
       55 CALL                             R5 1 1
       56 NAMECALL                         R3 R3 K6 ["format"]
       58 CALL                             R3 2 1
       59 MOVE                             R2 R3
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_12:
        0 JUMPIF                           R0 ; [+43]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R1 ; [+13]
        5 GETIMPORT                        R1 K2 [print]
        7 LOADK                            R3 K3 ["[Remote ACP] _roblox/session/tool_call HTTP failed sessionId=%*"]
        8 GETUPVAL                         R6 1
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 GETUPVAL                         R2 1
       19 FASTCALL1                        TYPEOF R2 ; [+2]
       20 GETIMPORT                        R1 K8 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K9 ["string"] ; [+5]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 1
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R1 R2
       29 GETUPVAL                         R2 3
       30 DUPTABLE                         R1 K14 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       31 SETTABLEKS                       R2 R1 K12 ["id"]
       33 DUPTABLE                         R3 K19 [{["code"] = -32603, ["message"] = "_roblox/session/tool_call request failed"}]
       34 SETTABLEKS                       R3 R1 K13 ["error"]
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R2 R2 K20 ["onTransportMessage"]
       39 MOVE                             R4 R1
       40 NAMECALL                         R2 R2 K21 ["Fire"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
       47 JUMPIFNOT                        R1 ; [+13]
       48 GETIMPORT                        R1 K2 [print]
       50 LOADK                            R3 K22 ["[Remote ACP] _roblox/session/tool_call accepted; awaiting idle notification sessionId=%*"]
       51 GETUPVAL                         R6 1
       52 FASTCALL1                        TOSTRING R6 ; [+2]
       53 GETIMPORT                        R5 K5 [tostring]
       55 CALL                             R5 1 1
       56 NAMECALL                         R3 R3 K6 ["format"]
       58 CALL                             R3 2 1
       59 MOVE                             R2 R3
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R0 ; [+49]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETIMPORT                        R2 K2 [print]
        7 LOADK                            R4 K3 ["[Remote ACP] request failed method=%* id=%*"]
        8 GETUPVAL                         R7 1
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K5 [tostring]
       12 CALL                             R6 1 1
       13 GETUPVAL                         R8 2
       14 FASTCALL1                        TOSTRING R8 ; [+2]
       15 GETIMPORT                        R7 K5 [tostring]
       17 CALL                             R7 1 1
       18 NAMECALL                         R4 R4 K6 ["format"]
       20 CALL                             R4 3 1
       21 MOVE                             R3 R4
       22 CALL                             R2 1 0
       23 GETUPVAL                         R3 2
       24 LOADK                            R5 K7 ["%* request failed"]
       25 GETUPVAL                         R8 1
       26 FASTCALL1                        TOSTRING R8 ; [+2]
       27 GETIMPORT                        R7 K5 [tostring]
       29 CALL                             R7 1 1
       30 NAMECALL                         R5 R5 K6 ["format"]
       32 CALL                             R5 2 1
       33 MOVE                             R4 R5
       34 DUPTABLE                         R2 K12 [{["jsonrpc"] = "2.0", ["id"], ["error"]}]
       35 SETTABLEKS                       R3 R2 K10 ["id"]
       37 DUPTABLE                         R5 K16 [{["code"] = -32603, ["message"]}]
       38 SETTABLEKS                       R4 R5 K15 ["message"]
       40 SETTABLEKS                       R5 R2 K11 ["error"]
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K17 ["onTransportMessage"]
       45 MOVE                             R5 R2
       46 NAMECALL                         R3 R3 K18 ["Fire"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0
       50 FASTCALL1                        TYPEOF R1 ; [+3]
       51 MOVE                             R4 R1
       52 GETIMPORT                        R3 K20 [typeof]
       54 CALL                             R3 1 1
       55 JUMPIFNOTEQKS                    R3 K21 ["table"] ; [+3]
       57 MOVE                             R2 R1
       58 JUMP                             ; [+2]
       59 NEWTABLE                         R2 0 0
       61 LOADK                            R3 K9 ["2.0"]
       62 SETTABLEKS                       R3 R2 K8 ["jsonrpc"]
       64 GETUPVAL                         R3 2
       65 SETTABLEKS                       R3 R2 K10 ["id"]
       67 GETTABLEKS                       R3 R2 K22 ["result"]
       69 JUMPIFNOTEQKNIL                  R3 ; [+26]
       71 GETTABLEKS                       R3 R2 K11 ["error"]
       73 JUMPIFNOTEQKNIL                  R3 ; [+22]
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
       78 JUMPIFNOT                        R3 ; [+13]
       79 GETIMPORT                        R3 K2 [print]
       81 LOADK                            R5 K23 ["[Remote ACP] empty success body; synthesizing result method=%*"]
       82 GETUPVAL                         R8 1
       83 FASTCALL1                        TOSTRING R8 ; [+2]
       84 GETIMPORT                        R7 K5 [tostring]
       86 CALL                             R7 1 1
       87 NAMECALL                         R5 R5 K6 ["format"]
       89 CALL                             R5 2 1
       90 MOVE                             R4 R5
       91 CALL                             R3 1 0
       92 NEWTABLE                         R3 0 0
       94 SETTABLEKS                       R3 R2 K22 ["result"]
       96 GETUPVAL                         R3 1
       97 GETUPVAL                         R4 4
       98 GETTABLEKS                       R4 R4 K24 ["SessionLoad"]
      100 JUMPIFNOTEQ                      R3 R4 ; [+12]
      102 GETUPVAL                         R3 0
      103 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      105 JUMPIFNOT                        R3 ; [+4]
      106 GETIMPORT                        R3 K2 [print]
      108 LOADK                            R4 K25 ["[Remote ACP] normalize session/load history dialect"]
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 5
      111 MOVE                             R4 R2
      112 CALL                             R3 1 0
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R3 R3 K0 ["FFlagDebugLogAssistantUI"]
      116 JUMPIFNOT                        R3 ; [+18]
      117 GETIMPORT                        R3 K2 [print]
      119 LOADK                            R5 K26 ["[Remote ACP] fire request response method=%* id=%*"]
      120 GETUPVAL                         R8 1
      121 FASTCALL1                        TOSTRING R8 ; [+2]
      122 GETIMPORT                        R7 K5 [tostring]
      124 CALL                             R7 1 1
      125 GETUPVAL                         R9 2
      126 FASTCALL1                        TOSTRING R9 ; [+2]
      127 GETIMPORT                        R8 K5 [tostring]
      129 CALL                             R8 1 1
      130 NAMECALL                         R5 R5 K6 ["format"]
      132 CALL                             R5 3 1
      133 MOVE                             R4 R5
      134 CALL                             R3 1 0
      135 GETUPVAL                         R3 3
      136 GETTABLEKS                       R3 R3 K17 ["onTransportMessage"]
      138 MOVE                             R5 R2
      139 NAMECALL                         R3 R3 K18 ["Fire"]
      141 CALL                             R3 2 0
      142 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETTABLEKS                       R2 R0 K1 ["method"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["FFlagDebugLogAssistantUI"]
        7 JUMPIFNOT                        R3 ; [+18]
        8 GETIMPORT                        R3 K4 [print]
       10 LOADK                            R5 K5 ["[Remote ACP] sendRequest method=%* id=%*"]
       11 FASTCALL1                        TOSTRING R2 ; [+3]
       12 MOVE                             R8 R2
       13 GETIMPORT                        R7 K7 [tostring]
       15 CALL                             R7 1 1
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K7 [tostring]
       20 CALL                             R8 1 1
       21 NAMECALL                         R5 R5 K8 ["format"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K9 ["SessionPrompt"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+69]
       31 GETTABLEKS                       R3 R0 K10 ["params"]
       33 FASTCALL1                        TYPEOF R3 ; [+3]
       34 MOVE                             R6 R3
       35 GETIMPORT                        R5 K12 [typeof]
       37 CALL                             R5 1 1
       38 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+4]
       40 GETTABLEKS                       R4 R3 K14 ["sessionId"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R4
       44 FASTCALL1                        TYPEOF R4 ; [+3]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K12 [typeof]
       48 CALL                             R5 1 1
       49 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+22]
       51 GETUPVAL                         R5 2
       52 SETTABLE                         R1 R5 R4
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       56 JUMPIFNOT                        R5 ; [+23]
       57 GETIMPORT                        R5 K4 [print]
       59 LOADK                            R7 K16 ["[Remote ACP] track pending session/prompt sessionId=%* id=%*"]
       60 MOVE                             R9 R4
       61 FASTCALL1                        TOSTRING R1 ; [+3]
       62 MOVE                             R11 R1
       63 GETIMPORT                        R10 K7 [tostring]
       65 CALL                             R10 1 1
       66 NAMECALL                         R7 R7 K8 ["format"]
       68 CALL                             R7 3 1
       69 MOVE                             R6 R7
       70 CALL                             R5 1 0
       71 JUMP                             ; [+8]
       72 GETUPVAL                         R5 0
       73 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
       75 JUMPIFNOT                        R5 ; [+4]
       76 GETIMPORT                        R5 K4 [print]
       78 LOADK                            R6 K17 ["[Remote ACP] session/prompt missing sessionId; cannot track pending prompt"]
       79 CALL                             R5 1 0
       80 NEWCLOSURE                       R5 P0
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U3
       86 GETIMPORT                        R6 K20 [task.spawn]
       88 NEWCLOSURE                       R7 P1
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R0
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          VAL R5
       93 CALL                             R6 1 0
       94 GETUPVAL                         R5 5
       95 GETTABLEKS                       R5 R5 K21 ["resolve"]
       97 CALL                             R5 0 -1
       98 RETURN                           R5 -1
       99 GETUPVAL                         R3 6
      100 GETTABLEKS                       R3 R3 K22 ["SessionToolCallMethod"]
      102 JUMPIFNOTEQ                      R2 R3 ; [+69]
      104 GETTABLEKS                       R3 R0 K10 ["params"]
      106 FASTCALL1                        TYPEOF R3 ; [+3]
      107 MOVE                             R6 R3
      108 GETIMPORT                        R5 K12 [typeof]
      110 CALL                             R5 1 1
      111 JUMPIFNOTEQKS                    R5 K13 ["table"] ; [+4]
      113 GETTABLEKS                       R4 R3 K14 ["sessionId"]
      115 JUMP                             ; [+1]
      116 LOADNIL                          R4
      117 FASTCALL1                        TYPEOF R4 ; [+3]
      118 MOVE                             R6 R4
      119 GETIMPORT                        R5 K12 [typeof]
      121 CALL                             R5 1 1
      122 JUMPIFNOTEQKS                    R5 K15 ["string"] ; [+22]
      124 GETUPVAL                         R5 2
      125 SETTABLE                         R1 R5 R4
      126 GETUPVAL                         R5 0
      127 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
      129 JUMPIFNOT                        R5 ; [+23]
      130 GETIMPORT                        R5 K4 [print]
      132 LOADK                            R7 K23 ["[Remote ACP] track pending _roblox/session/tool_call sessionId=%* id=%*"]
      133 MOVE                             R9 R4
      134 FASTCALL1                        TOSTRING R1 ; [+3]
      135 MOVE                             R11 R1
      136 GETIMPORT                        R10 K7 [tostring]
      138 CALL                             R10 1 1
      139 NAMECALL                         R7 R7 K8 ["format"]
      141 CALL                             R7 3 1
      142 MOVE                             R6 R7
      143 CALL                             R5 1 0
      144 JUMP                             ; [+8]
      145 GETUPVAL                         R5 0
      146 GETTABLEKS                       R5 R5 K2 ["FFlagDebugLogAssistantUI"]
      148 JUMPIFNOT                        R5 ; [+4]
      149 GETIMPORT                        R5 K4 [print]
      151 LOADK                            R6 K24 ["[Remote ACP] _roblox/session/tool_call missing sessionId; cannot track pending turn"]
      152 CALL                             R5 1 0
      153 NEWCLOSURE                       R5 P2
      154 CAPTURE                          UPVAL U0
      155 CAPTURE                          VAL R4
      156 CAPTURE                          UPVAL U2
      157 CAPTURE                          VAL R1
      158 CAPTURE                          UPVAL U3
      159 GETIMPORT                        R6 K20 [task.spawn]
      161 NEWCLOSURE                       R7 P1
      162 CAPTURE                          UPVAL U4
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U0
      165 CAPTURE                          VAL R5
      166 CALL                             R6 1 0
      167 GETUPVAL                         R5 5
      168 GETTABLEKS                       R5 R5 K21 ["resolve"]
      170 CALL                             R5 0 -1
      171 RETURN                           R5 -1
      172 NEWCLOSURE                       R3 P3
      173 CAPTURE                          UPVAL U0
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R1
      176 CAPTURE                          UPVAL U3
      177 CAPTURE                          UPVAL U1
      178 CAPTURE                          UPVAL U7
      179 GETIMPORT                        R4 K20 [task.spawn]
      181 NEWCLOSURE                       R5 P1
      182 CAPTURE                          UPVAL U4
      183 CAPTURE                          VAL R0
      184 CAPTURE                          UPVAL U0
      185 CAPTURE                          VAL R3
      186 CALL                             R4 1 0
      187 GETUPVAL                         R3 5
      188 GETTABLEKS                       R3 R3 K21 ["resolve"]
      190 CALL                             R3 0 -1
      191 RETURN                           R3 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[Remote ACP] sendNotification method=%*"]
        7 GETTABLEKS                       R6 R0 K4 ["method"]
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K6 [tostring]
       12 CALL                             R5 1 1
       13 NAMECALL                         R3 R3 K7 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K10 [task.spawn]
       20 LOADNIL                          R3
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R3
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 GETTABLEKS                       R1 R1 K11 ["resolve"]
       30 CALL                             R1 0 -1
       31 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        3 JUMPIFNOT                        R1 ; [+34]
        4 GETIMPORT                        R1 K2 [print]
        6 LOADK                            R3 K3 ["[Remote ACP] sendResponse id=%* hasResult=%* hasError=%*"]
        7 GETTABLEKS                       R6 R0 K4 ["id"]
        9 FASTCALL1                        TOSTRING R6 ; [+2]
       10 GETIMPORT                        R5 K6 [tostring]
       12 CALL                             R5 1 1
       13 GETTABLEKS                       R8 R0 K7 ["result"]
       15 JUMPIFNOTEQKNIL                  R8 ; [+2]
       17 LOADB                            R7 0 +1
       18 LOADB                            R7 1
       19 FASTCALL1                        TOSTRING R7 ; [+2]
       20 GETIMPORT                        R6 K6 [tostring]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R9 R0 K8 ["error"]
       25 JUMPIFNOTEQKNIL                  R9 ; [+2]
       27 LOADB                            R8 0 +1
       28 LOADB                            R8 1
       29 FASTCALL1                        TOSTRING R8 ; [+2]
       30 GETIMPORT                        R7 K6 [tostring]
       32 CALL                             R7 1 1
       33 NAMECALL                         R3 R3 K9 ["format"]
       35 CALL                             R3 4 1
       36 MOVE                             R2 R3
       37 CALL                             R1 1 0
       38 GETIMPORT                        R1 K12 [task.spawn]
       40 LOADNIL                          R3
       41 NEWCLOSURE                       R2 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          VAL R3
       46 CALL                             R1 1 0
       47 GETUPVAL                         R1 2
       48 GETTABLEKS                       R1 R1 K13 ["resolve"]
       50 CALL                             R1 0 -1
       51 RETURN                           R1 -1

PROTO_17:
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

PROTO_18:
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
       11 DUPCLOSURE                       R8 K1 [PROTO_8]
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 NEWCLOSURE                       R9 P4
       15 CAPTURE                          REF R3
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          REF R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U1
       21 GETUPVAL                         R10 3
       22 GETTABLEKS                       R10 R10 K2 ["makeTransport"]
       24 DUPTABLE                         R11 K8 [{"start", "sendRequest", "sendNotification", "sendResponse", "close"}]
       25 NEWCLOSURE                       R12 P5
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R9
       30 CAPTURE                          UPVAL U4
       31 SETTABLEKS                       R12 R11 K3 ["start"]
       33 NEWCLOSURE                       R12 P6
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R8
       42 SETTABLEKS                       R12 R11 K4 ["sendRequest"]
       44 NEWCLOSURE                       R12 P7
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U4
       48 SETTABLEKS                       R12 R11 K5 ["sendNotification"]
       50 NEWCLOSURE                       R12 P8
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U4
       54 SETTABLEKS                       R12 R11 K6 ["sendResponse"]
       56 NEWCLOSURE                       R12 P9
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          REF R3
       59 CAPTURE                          REF R2
       60 CAPTURE                          UPVAL U4
       61 SETTABLEKS                       R12 R11 K7 ["close"]
       63 CALL                             R10 1 1
       64 MOVE                             R4 R10
       65 CLOSEUPVALS                      R2
       66 RETURN                           R4 1

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
       57 DUPCLOSURE                       R11 K27 [PROTO_18]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 DUPTABLE                         R12 K29 [{"makeCASTransport"}]
       65 SETTABLEKS                       R11 R12 K28 ["makeCASTransport"]
       67 RETURN                           R12 1

PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETIMPORT                        R0 K2 [warn]
        7 LOADK                            R1 K3 ["[cas-request]"]
        8 GETVARARGS                       R2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["[cas-request]"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R0 K3 ["responseBody"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["responseBody"]
       17 RETURN                           R1 1
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K6 [tostring]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R0 K3 ["method"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["method"]
       17 RETURN                           R1 1
       18 LOADK                            R1 K5 ["tool_result"]
       19 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["body"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R3 R0 K3 ["method"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K1 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["method"]
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K5 ["tool_result"]
       19 GETUPVAL                         R2 0
       20 LOADK                            R4 K6 ["rpc(gateway) method=%* body=%*"]
       21 MOVE                             R6 R1
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R7 R7 K7 ["Json"]
       25 GETTABLEKS                       R7 R7 K8 ["encode"]
       27 MOVE                             R8 R0
       28 CALL                             R7 1 1
       29 NAMECALL                         R4 R4 K9 ["format"]
       31 CALL                             R4 3 1
       32 MOVE                             R3 R4
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 2
       35 GETTABLEKS                       R2 R2 K10 ["Acp"]
       37 GETTABLEKS                       R2 R2 K11 ["postAcpAsync"]
       39 DUPTABLE                         R3 K13 [{"body"}]
       40 SETTABLEKS                       R0 R3 K12 ["body"]
       42 CALL                             R2 1 1
       43 GETTABLEKS                       R3 R2 K14 ["success"]
       45 JUMPIFNOT                        R3 ; [+4]
       46 LOADB                            R3 1
       47 GETTABLEKS                       R4 R2 K15 ["data"]
       49 RETURN                           R3 2
       50 GETTABLEKS                       R3 R2 K16 ["errorDetails"]
       52 GETTABLEKS                       R4 R3 K17 ["kind"]
       54 JUMPIFNOTEQKS                    R4 K18 ["Validation"] ; [+39]
       56 GETTABLEKS                       R5 R3 K12 ["body"]
       58 FASTCALL1                        TYPEOF R5 ; [+2]
       59 GETIMPORT                        R4 K1 [typeof]
       61 CALL                             R4 1 1
       62 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+5]
       64 GETTABLEKS                       R4 R3 K12 ["body"]
       66 JUMPIFNOTEQKS                    R4 K19 [""] ; [+5]
       68 LOADB                            R4 1
       69 NEWTABLE                         R5 0 0
       71 RETURN                           R4 2
       72 GETIMPORT                        R4 K21 [pcall]
       74 NEWCLOSURE                       R5 P0
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R3
       77 CALL                             R4 1 2
       78 JUMPIFNOT                        R4 ; [+3]
       79 LOADB                            R6 1
       80 MOVE                             R7 R5
       81 RETURN                           R6 2
       82 GETUPVAL                         R6 3
       83 LOADK                            R8 K22 ["rpc(gateway) undecodable body method=%*"]
       84 MOVE                             R10 R1
       85 NAMECALL                         R8 R8 K9 ["format"]
       87 CALL                             R8 2 1
       88 MOVE                             R7 R8
       89 CALL                             R6 1 0
       90 LOADB                            R6 0
       91 GETTABLEKS                       R7 R3 K12 ["body"]
       93 RETURN                           R6 2
       94 GETTABLEKS                       R4 R3 K17 ["kind"]
       96 JUMPIFNOTEQKS                    R4 K23 ["HttpStatusCode"] ; [+21]
       98 GETUPVAL                         R4 3
       99 LOADK                            R6 K24 ["rpc(gateway) http error method=%* status=%* body=%*"]
      100 MOVE                             R8 R1
      101 GETTABLEKS                       R10 R3 K25 ["statusCode"]
      103 FASTCALL1                        TOSTRING R10 ; [+2]
      104 GETIMPORT                        R9 K27 [tostring]
      106 CALL                             R9 1 1
      107 GETTABLEKS                       R10 R3 K12 ["body"]
      109 NAMECALL                         R6 R6 K9 ["format"]
      111 CALL                             R6 4 1
      112 MOVE                             R5 R6
      113 CALL                             R4 1 0
      114 LOADB                            R4 0
      115 GETTABLEKS                       R5 R3 K12 ["body"]
      117 RETURN                           R4 2
      118 GETUPVAL                         R4 3
      119 LOADK                            R6 K28 ["rpc(gateway) network error method=%* detail=%*"]
      120 MOVE                             R8 R1
      121 GETTABLEKS                       R9 R3 K29 ["networkError"]
      123 NAMECALL                         R6 R6 K9 ["format"]
      125 CALL                             R6 3 1
      126 MOVE                             R5 R6
      127 CALL                             R4 1 0
      128 LOADB                            R4 0
      129 GETTABLEKS                       R5 R3 K29 ["networkError"]
      131 RETURN                           R4 2

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R3 K0 ["%*/acp"]
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R2 R3
        7 GETUPVAL                         R3 2
        8 GETUPVAL                         R4 3
        9 NAMECALL                         R0 R0 K2 ["post"]
       11 CALL                             R0 4 1
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U4
       16 NAMECALL                         R0 R0 K3 ["andThen"]
       18 CALL                             R0 3 1
       19 NAMECALL                         R0 R0 K4 ["await"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R5 R0 K3 ["method"]
        9 FASTCALL1                        TYPEOF R5 ; [+2]
       10 GETIMPORT                        R4 K1 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+4]
       15 GETTABLEKS                       R3 R0 K3 ["method"]
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K5 ["tool_result"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K6 ["Json"]
       22 GETTABLEKS                       R4 R4 K7 ["encode"]
       24 MOVE                             R5 R0
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 1
       27 LOADK                            R7 K8 ["rpc(override) label=%* url=%*/acp body=%*"]
       28 MOVE                             R9 R3
       29 MOVE                             R10 R2
       30 MOVE                             R11 R4
       31 NAMECALL                         R7 R7 K9 ["format"]
       33 CALL                             R7 4 1
       34 MOVE                             R6 R7
       35 CALL                             R5 1 0
       36 NEWTABLE                         R5 4 0
       38 LOADK                            R6 K10 ["application/json"]
       39 SETTABLEKS                       R6 R5 K11 ["Content-Type"]
       41 FASTCALL1                        TOSTRING R1 ; [+3]
       42 MOVE                             R7 R1
       43 GETIMPORT                        R6 K13 [tostring]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K14 ["X-Roblox-User-Id"]
       48 FASTCALL1                        TOSTRING R1 ; [+3]
       49 MOVE                             R7 R1
       50 GETIMPORT                        R6 K13 [tostring]
       52 CALL                             R6 1 1
       53 SETTABLEKS                       R6 R5 K15 ["robloxctx-authenticated-userid"]
       55 LOADNIL                          R6
       56 GETIMPORT                        R7 K17 [pcall]
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          REF R6
       64 CALL                             R7 1 2
       65 FASTCALL1                        TYPEOF R6 ; [+3]
       66 MOVE                             R10 R6
       67 GETIMPORT                        R9 K1 [typeof]
       69 CALL                             R9 1 1
       70 JUMPIFEQKS                       R9 K2 ["table"] ; [+40]
       72 JUMPIFNOT                        R7 ; [+2]
       73 MOVE                             R9 R6
       74 JUMP                             ; [+1]
       75 MOVE                             R9 R8
       76 GETUPVAL                         R10 3
       77 LOADK                            R12 K18 ["rpc no response method=%* detail=%*"]
       78 MOVE                             R14 R3
       79 FASTCALL1                        TYPEOF R9 ; [+3]
       80 MOVE                             R17 R9
       81 GETIMPORT                        R16 K1 [typeof]
       83 CALL                             R16 1 1
       84 JUMPIFNOTEQKS                    R16 K2 ["table"] ; [+12]
       86 GETTABLEKS                       R17 R9 K19 ["responseBody"]
       88 FASTCALL1                        TYPEOF R17 ; [+2]
       89 GETIMPORT                        R16 K1 [typeof]
       91 CALL                             R16 1 1
       92 JUMPIFNOTEQKS                    R16 K4 ["string"] ; [+4]
       94 GETTABLEKS                       R15 R9 K19 ["responseBody"]
       96 JUMP                             ; [+5]
       97 FASTCALL1                        TOSTRING R9 ; [+3]
       98 MOVE                             R16 R9
       99 GETIMPORT                        R15 K13 [tostring]
      101 CALL                             R15 1 1
      102 NAMECALL                         R12 R12 K9 ["format"]
      104 CALL                             R12 3 1
      105 MOVE                             R11 R12
      106 CALL                             R10 1 0
      107 LOADB                            R10 0
      108 MOVE                             R11 R9
      109 CLOSEUPVALS                      R6
      110 RETURN                           R10 2
      111 GETTABLEKS                       R10 R6 K20 ["responseCode"]
      113 FASTCALL1                        TONUMBER R10 ; [+2]
      114 GETIMPORT                        R9 K22 [tonumber]
      116 CALL                             R9 1 1
      117 JUMPIFNOT                        R9 ; [+6]
      118 LOADN                            R10 200
      119 JUMPIFLT                         R9 R10 ; [+4]
      121 LOADN                            R10 300
      122 JUMPIFNOTLE                      R10 R9 ; [+43]
      124 GETUPVAL                         R10 3
      125 LOADK                            R12 K23 ["rpc http error method=%* status=%* body=%*"]
      126 MOVE                             R14 R3
      127 FASTCALL1                        TOSTRING R9 ; [+3]
      128 MOVE                             R16 R9
      129 GETIMPORT                        R15 K13 [tostring]
      131 CALL                             R15 1 1
      132 MOVE                             R17 R6
      133 FASTCALL1                        TYPEOF R17 ; [+3]
      134 MOVE                             R19 R17
      135 GETIMPORT                        R18 K1 [typeof]
      137 CALL                             R18 1 1
      138 JUMPIFNOTEQKS                    R18 K2 ["table"] ; [+12]
      140 GETTABLEKS                       R19 R17 K19 ["responseBody"]
      142 FASTCALL1                        TYPEOF R19 ; [+2]
      143 GETIMPORT                        R18 K1 [typeof]
      145 CALL                             R18 1 1
      146 JUMPIFNOTEQKS                    R18 K4 ["string"] ; [+4]
      148 GETTABLEKS                       R16 R17 K19 ["responseBody"]
      150 JUMP                             ; [+6]
      151 FASTCALL1                        TOSTRING R17 ; [+3]
      152 MOVE                             R19 R17
      153 GETIMPORT                        R18 K13 [tostring]
      155 CALL                             R18 1 1
      156 MOVE                             R16 R18
      157 NAMECALL                         R12 R12 K9 ["format"]
      159 CALL                             R12 4 1
      160 MOVE                             R11 R12
      161 CALL                             R10 1 0
      162 LOADB                            R10 0
      163 MOVE                             R11 R6
      164 CLOSEUPVALS                      R6
      165 RETURN                           R10 2
      166 GETTABLEKS                       R10 R6 K19 ["responseBody"]
      168 FASTCALL1                        TYPEOF R10 ; [+3]
      169 MOVE                             R12 R10
      170 GETIMPORT                        R11 K1 [typeof]
      172 CALL                             R11 1 1
      173 JUMPIFNOTEQKS                    R11 K4 ["string"] ; [+3]
      175 JUMPIFNOTEQKS                    R10 K24 [""] ; [+6]
      177 LOADB                            R11 1
      178 NEWTABLE                         R12 0 0
      180 CLOSEUPVALS                      R6
      181 RETURN                           R11 2
      182 GETIMPORT                        R11 K17 [pcall]
      184 NEWCLOSURE                       R12 P1
      185 CAPTURE                          UPVAL U0
      186 CAPTURE                          VAL R10
      187 CALL                             R11 1 2
      188 JUMPIF                           R11 ; [+5]
      189 LOADB                            R13 1
      190 NEWTABLE                         R14 0 0
      192 CLOSEUPVALS                      R6
      193 RETURN                           R13 2
      194 LOADB                            R13 1
      195 MOVE                             R14 R12
      196 CLOSEUPVALS                      R6
      197 RETURN                           R13 2

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADK                            R5 K0 ["http://localhost:5000"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K6 [{[1] = "2.0", ["id"] = 1, ["method"], ["params"]}]
        2 SETTABLEKS                       R0 R4 K4 ["method"]
        4 SETTABLEKS                       R1 R4 K5 ["params"]
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K4 [{[1] = "2.0", ["id"], ["result"]}]
        2 SETTABLEKS                       R0 R4 K2 ["id"]
        4 SETTABLEKS                       R1 R4 K3 ["result"]
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_14:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R2 0
        2 RETURN                           R2 1
        3 LOADB                            R2 0
        4 MOVE                             R3 R0
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R1
        8 CALL                             R3 1 0
        9 CLOSEUPVALS                      R2
       10 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["listTools"]
        3 CALL                             R1 2 1
        4 NAMECALL                         R1 R1 K1 ["await"]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+21]
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R4 R2
       10 GETIMPORT                        R3 K3 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+15]
       15 GETTABLEKS                       R4 R2 K5 ["result"]
       17 FASTCALL1                        TYPEOF R4 ; [+2]
       18 GETIMPORT                        R3 K3 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+7]
       23 GETTABLEKS                       R3 R2 K5 ["result"]
       25 GETTABLEKS                       R3 R3 K6 ["tools"]
       27 SETUPVAL                         R3 1
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 2
       30 LOADK                            R5 K7 ["listTools failed detail=%*"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R8 R2
       33 GETIMPORT                        R7 K9 [tostring]
       35 CALL                             R7 1 1
       36 NAMECALL                         R5 R5 K10 ["format"]
       38 CALL                             R5 2 1
       39 MOVE                             R4 R5
       40 CALL                             R3 1 0
       41 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          REF R1
        4 CAPTURE                          UPVAL U1
        5 JUMPIF                           R0 ; [+2]
        6 LOADB                            R2 0
        7 JUMP                             ; [+8]
        8 LOADB                            R4 0
        9 MOVE                             R5 R0
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R3
       13 CALL                             R5 1 0
       14 MOVE                             R2 R4
       15 CLOSEUPVALS                      R4
       16 JUMPIF                           R2 ; [+6]
       17 GETUPVAL                         R3 1
       18 LOADK                            R4 K0 ["listTools skipped: no MCP client"]
       19 CALL                             R3 1 0
       20 LOADNIL                          R3
       21 CLOSEUPVALS                      R1
       22 RETURN                           R3 1
       23 CLOSEUPVALS                      R1
       24 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R1 R0 K0 ["listTools"]
        3 CALL                             R1 2 1
        4 NAMECALL                         R1 R1 K1 ["await"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["getToolCallOptions"]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+5]
       13 GETIMPORT                        R2 K5 [table.clone]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMP                             ; [+2]
       18 NEWTABLE                         R2 0 0
       20 LOADK                            R3 K6 [200000000]
       21 SETTABLEKS                       R3 R2 K7 ["timeout"]
       23 GETUPVAL                         R5 2
       24 GETUPVAL                         R8 3
       25 FASTCALL1                        TYPEOF R8 ; [+2]
       26 GETIMPORT                        R7 K9 [typeof]
       28 CALL                             R7 1 1
       29 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+3]
       31 GETUPVAL                         R6 3
       32 JUMP                             ; [+2]
       33 NEWTABLE                         R6 0 0
       35 MOVE                             R7 R2
       36 NEWTABLE                         R8 0 0
       38 NAMECALL                         R3 R0 K10 ["callTool"]
       40 CALL                             R3 5 1
       41 NAMECALL                         R3 R3 K1 ["await"]
       43 CALL                             R3 1 2
       44 JUMPIFNOT                        R3 ; [+2]
       45 SETUPVAL                         R4 4
       46 RETURN                           R0 0
       47 FASTCALL1                        TOSTRING R4 ; [+3]
       48 MOVE                             R6 R4
       49 GETIMPORT                        R5 K12 [tostring]
       51 CALL                             R5 1 1
       52 SETUPVAL                         R5 5
       53 RETURN                           R0 0

PROTO_19:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          REF R3
        8 CAPTURE                          REF R4
        9 JUMPIF                           R0 ; [+2]
       10 LOADB                            R5 0
       11 JUMP                             ; [+8]
       12 LOADB                            R7 0
       13 MOVE                             R8 R0
       14 NEWCLOSURE                       R9 P1
       15 CAPTURE                          REF R7
       16 CAPTURE                          VAL R6
       17 CALL                             R8 1 0
       18 MOVE                             R5 R7
       19 CLOSEUPVALS                      R7
       20 JUMPIF                           R5 ; [+10]
       21 DUPTABLE                         R6 K3 [{[1], ["isError"] = True}]
       22 NEWTABLE                         R7 0 1
       24 DUPTABLE                         R8 K7 [{["type"] = "text", ["text"] = "No MCP client available"}]
       25 SETLIST                          R7 R8 1 [1]
       27 SETTABLEKS                       R7 R6 K0 ["content"]
       29 CLOSEUPVALS                      R3
       30 RETURN                           R6 1
       31 JUMPIFNOT                        R3 ; [+2]
       32 CLOSEUPVALS                      R3
       33 RETURN                           R3 1
       34 GETUPVAL                         R6 2
       35 LOADK                            R8 K8 ["local tool failed name=%* err=%*"]
       36 MOVE                             R10 R1
       37 FASTCALL1                        TOSTRING R4 ; [+3]
       38 MOVE                             R12 R4
       39 GETIMPORT                        R11 K10 [tostring]
       41 CALL                             R11 1 1
       42 NAMECALL                         R8 R8 K11 ["format"]
       44 CALL                             R8 3 1
       45 MOVE                             R7 R8
       46 CALL                             R6 1 0
       47 DUPTABLE                         R6 K3 [{[1], ["isError"] = True}]
       48 NEWTABLE                         R7 0 1
       50 DUPTABLE                         R8 K12 [{["type"] = "text", ["text"]}]
       51 FASTCALL1                        TOSTRING R4 ; [+3]
       52 MOVE                             R10 R4
       53 GETIMPORT                        R9 K10 [tostring]
       55 CALL                             R9 1 1
       56 SETTABLEKS                       R9 R8 K5 ["text"]
       58 SETLIST                          R7 R8 1 [1]
       60 SETTABLEKS                       R7 R6 K0 ["content"]
       62 CLOSEUPVALS                      R3
       63 RETURN                           R6 1

PROTO_20:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["content"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 FASTCALL1                        TYPEOF R6 ; [+3]
        8 MOVE                             R8 R6
        9 GETIMPORT                        R7 K2 [typeof]
       11 CALL                             R7 1 1
       12 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+21]
       14 GETTABLEKS                       R7 R6 K4 ["type"]
       16 JUMPIFNOTEQKS                    R7 K5 ["text"] ; [+17]
       18 GETTABLEKS                       R8 R6 K5 ["text"]
       20 FASTCALL1                        TYPEOF R8 ; [+2]
       21 GETIMPORT                        R7 K2 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFNOTEQKS                    R7 K6 ["string"] ; [+9]
       26 GETTABLEKS                       R9 R6 K5 ["text"]
       28 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       30 MOVE                             R8 R1
       31 GETIMPORT                        R7 K8 [table.insert]
       33 CALL                             R7 2 0
       34 FORGLOOP                         R2 2 ; [-28]
       36 GETIMPORT                        R2 K10 [table.concat]
       38 MOVE                             R3 R1
       39 LOADK                            R4 K11 ["\n"]
       40 CALL                             R2 2 -1
       41 RETURN                           R2 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Types"]
        3 GETTABLEKS                       R1 R1 K1 ["SYSTEM_REMINDER_OPEN"]
        5 GETTABLEKS                       R2 R0 K2 ["messages"]
        7 LOADNIL                          R3
        8 LENGTH                           R6 R2
        9 LOADN                            R4 1
       10 LOADN                            R5 -1
       11 FORNPREP                         R4
       12 GETTABLE                         R7 R2 R6
       13 JUMPIFNOT                        R7 ; [+15]
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R7
       16 CALL                             R8 1 1
       17 LOADN                            R11 1
       18 LENGTH                           R12 R1
       19 FASTCALL3                        STRING_SUB R8 R11 R12
       21 MOVE                             R10 R8
       22 GETIMPORT                        R9 K5 [string.sub]
       24 CALL                             R9 3 1
       25 JUMPIFEQ                         R9 R1 ; [+3]
       27 MOVE                             R3 R7
       28 JUMP                             ; [+1]
       29 FORNLOOP                         R4
       30 JUMPIF                           R3 ; [+2]
       31 LOADK                            R4 K6 [""]
       32 RETURN                           R4 1
       33 GETUPVAL                         R4 1
       34 MOVE                             R5 R3
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1

PROTO_22:
        0 NEWTABLE                         R1 0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        9 RETURN                           R1 1
       10 MOVE                             R2 R0
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 FASTCALL1                        TYPEOF R6 ; [+3]
       15 MOVE                             R8 R6
       16 GETIMPORT                        R7 K1 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+68]
       21 GETTABLEKS                       R8 R6 K3 ["name"]
       23 FASTCALL1                        TYPEOF R8 ; [+2]
       24 GETIMPORT                        R7 K1 [typeof]
       26 CALL                             R7 1 1
       27 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+60]
       29 GETTABLEKS                       R7 R6 K5 ["inputSchema"]
       31 JUMPIF                           R7 ; [+2]
       32 GETTABLEKS                       R7 R6 K6 ["input_schema"]
       34 FASTCALL1                        TYPEOF R7 ; [+3]
       35 MOVE                             R9 R7
       36 GETIMPORT                        R8 K1 [typeof]
       38 CALL                             R8 1 1
       39 JUMPIFEQKS                       R8 K2 ["table"] ; [+12]
       41 DUPTABLE                         R8 K10 [{["type"] = "object", ["properties"]}]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K11 ["Types"]
       45 GETTABLEKS                       R9 R9 K12 ["emptyObject"]
       47 CALL                             R9 0 1
       48 SETTABLEKS                       R9 R8 K9 ["properties"]
       50 MOVE                             R7 R8
       51 JUMP                             ; [+23]
       52 GETTABLEKS                       R8 R7 K9 ["properties"]
       54 JUMPIFNOT                        R8 ; [+20]
       55 GETIMPORT                        R8 K14 [next]
       57 GETTABLEKS                       R9 R7 K9 ["properties"]
       59 CALL                             R8 1 1
       60 JUMPIFNOTEQKNIL                  R8 ; [+14]
       62 GETIMPORT                        R8 K16 [table.clone]
       64 MOVE                             R9 R7
       65 CALL                             R8 1 1
       66 MOVE                             R7 R8
       67 GETUPVAL                         R8 0
       68 GETTABLEKS                       R8 R8 K11 ["Types"]
       70 GETTABLEKS                       R8 R8 K12 ["emptyObject"]
       72 CALL                             R8 0 1
       73 SETTABLEKS                       R8 R7 K9 ["properties"]
       75 DUPTABLE                         R10 K17 [{"name", "inputSchema"}]
       76 GETTABLEKS                       R11 R6 K3 ["name"]
       78 SETTABLEKS                       R11 R10 K3 ["name"]
       80 SETTABLEKS                       R7 R10 K5 ["inputSchema"]
       82 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       84 MOVE                             R9 R1
       85 GETIMPORT                        R8 K19 [table.insert]
       87 CALL                             R8 2 0
       88 FORGLOOP                         R2 2 ; [-75]
       90 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["started"]
        2 JUMPIF                           R1 ; [+14]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["started"]
        6 GETTABLEKS                       R1 R0 K1 ["callback"]
        8 DUPTABLE                         R2 K5 [{["type"] = "message_start", ["message"]}]
        9 DUPTABLE                         R3 K9 [{["role"] = "assistant", ["content"]}]
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K8 ["content"]
       14 SETTABLEKS                       R3 R2 K4 ["message"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["done"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R0 K1 ["nextContentId"]
        9 GETTABLEKS                       R3 R0 K1 ["nextContentId"]
       11 ADDK                             R3 R3 K2 [1]
       12 SETTABLEKS                       R3 R0 K1 ["nextContentId"]
       14 GETTABLEKS                       R3 R0 K3 ["callback"]
       16 DUPTABLE                         R4 K8 [{["type"] = "content_start", ["contentId"], ["contentBlock"]}]
       17 SETTABLEKS                       R2 R4 K6 ["contentId"]
       19 DUPTABLE                         R5 K11 [{["type"] = "text", ["text"] = ""}]
       20 SETTABLEKS                       R5 R4 K7 ["contentBlock"]
       22 CALL                             R3 1 0
       23 GETTABLEKS                       R3 R0 K3 ["callback"]
       25 DUPTABLE                         R4 K14 [{["type"] = "content_delta", ["contentId"], ["delta"]}]
       26 SETTABLEKS                       R2 R4 K6 ["contentId"]
       28 DUPTABLE                         R5 K16 [{["type"] = "text_delta", ["text"]}]
       29 SETTABLEKS                       R1 R5 K9 ["text"]
       31 SETTABLEKS                       R5 R4 K13 ["delta"]
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R0 K3 ["callback"]
       36 DUPTABLE                         R4 K18 [{["type"] = "content_end", ["contentId"]}]
       37 SETTABLEKS                       R2 R4 K6 ["contentId"]
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R1 R0 K0 ["done"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K1 ["callback"]
        9 DUPTABLE                         R2 K5 [{["type"] = "message_delta", ["delta"]}]
       10 DUPTABLE                         R3 K8 [{["stopReason"] = "message_end"}]
       11 SETTABLEKS                       R3 R2 K4 ["delta"]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K1 ["callback"]
       16 DUPTABLE                         R2 K10 [{["type"] = "message_stop"}]
       17 CALL                             R1 1 0
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K0 ["done"]
       21 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["done"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["callback"]
        6 DUPTABLE                         R2 K5 [{["type"] = "error", ["error"] = "request_failed"}]
        7 CALL                             R1 1 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["done"]
       11 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["detail"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["message"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 DUPTABLE                         R1 K3 [{"sessionId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K2 ["sessionId"]
       11 DUPTABLE                         R3 K11 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/cancel", ["params"]}]
       12 SETTABLEKS                       R1 R3 K10 ["params"]
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R3
       16 MOVE                             R6 R0
       17 LOADK                            R7 K12 ["http://localhost:5000"]
       18 CALL                             R4 3 1
       19 MOVE                             R2 R4
       20 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETUPVAL                         R4 4
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 5
       13 LOADK                            R4 K2 ["tool reply name=%* referenceId=%* turnId=%* isError=%*"]
       14 GETUPVAL                         R6 3
       15 GETUPVAL                         R7 6
       16 GETUPVAL                         R8 7
       17 GETTABLEKS                       R11 R1 K3 ["isError"]
       19 JUMPIFEQKB                       R11 TRUE ; [+2]
       21 LOADB                            R10 0 +1
       22 LOADB                            R10 1
       23 FASTCALL1                        TOSTRING R10 ; [+2]
       24 GETIMPORT                        R9 K5 [tostring]
       26 CALL                             R9 1 1
       27 NAMECALL                         R4 R4 K6 ["format"]
       29 CALL                             R4 5 1
       30 MOVE                             R3 R4
       31 CALL                             R2 1 0
       32 GETUPVAL                         R4 6
       33 DUPTABLE                         R5 K11 [{"sessionId", "referenceId", "turnId", "content"}]
       34 GETUPVAL                         R6 8
       35 SETTABLEKS                       R6 R5 K7 ["sessionId"]
       37 GETUPVAL                         R6 6
       38 SETTABLEKS                       R6 R5 K8 ["referenceId"]
       40 GETUPVAL                         R6 7
       41 SETTABLEKS                       R6 R5 K9 ["turnId"]
       43 SETTABLEKS                       R1 R5 K10 ["content"]
       45 DUPTABLE                         R6 K16 [{["jsonrpc"] = "2.0", ["id"], ["result"]}]
       46 SETTABLEKS                       R4 R6 K14 ["id"]
       48 SETTABLEKS                       R5 R6 K15 ["result"]
       50 GETUPVAL                         R7 9
       51 MOVE                             R8 R6
       52 MOVE                             R9 R0
       53 LOADK                            R10 K17 ["http://localhost:5000"]
       54 CALL                             R7 3 2
       55 MOVE                             R2 R7
       56 MOVE                             R3 R8
       57 GETUPVAL                         R4 10
       58 GETUPVAL                         R5 6
       59 LOADNIL                          R6
       60 SETTABLE                         R6 R4 R5
       61 JUMPIF                           R2 ; [+64]
       62 GETUPVAL                         R4 11
       63 LOADK                            R6 K18 ["tool reply failed name=%* referenceId=%* detail=%*"]
       64 GETUPVAL                         R8 3
       65 GETUPVAL                         R9 6
       66 FASTCALL1                        TYPEOF R3 ; [+3]
       67 MOVE                             R12 R3
       68 GETIMPORT                        R11 K20 [typeof]
       70 CALL                             R11 1 1
       71 JUMPIFNOTEQKS                    R11 K21 ["table"] ; [+12]
       73 GETTABLEKS                       R12 R3 K22 ["responseBody"]
       75 FASTCALL1                        TYPEOF R12 ; [+2]
       76 GETIMPORT                        R11 K20 [typeof]
       78 CALL                             R11 1 1
       79 JUMPIFNOTEQKS                    R11 K23 ["string"] ; [+4]
       81 GETTABLEKS                       R10 R3 K22 ["responseBody"]
       83 JUMP                             ; [+5]
       84 FASTCALL1                        TOSTRING R3 ; [+3]
       85 MOVE                             R11 R3
       86 GETIMPORT                        R10 K5 [tostring]
       88 CALL                             R10 1 1
       89 NAMECALL                         R6 R6 K6 ["format"]
       91 CALL                             R6 4 1
       92 MOVE                             R5 R6
       93 CALL                             R4 1 0
       94 DUPTABLE                         R4 K24 [{"sessionId"}]
       95 GETUPVAL                         R5 8
       96 SETTABLEKS                       R5 R4 K7 ["sessionId"]
       98 DUPTABLE                         R6 K29 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/cancel", ["params"]}]
       99 SETTABLEKS                       R4 R6 K28 ["params"]
      101 GETUPVAL                         R7 9
      102 MOVE                             R8 R6
      103 MOVE                             R9 R0
      104 LOADK                            R10 K17 ["http://localhost:5000"]
      105 CALL                             R7 3 1
      106 MOVE                             R5 R7
      107 GETUPVAL                         R5 12
      108 GETUPVAL                         R6 8
      109 GETTABLE                         R4 R5 R6
      110 JUMPIFNOT                        R4 ; [+15]
      111 GETTABLEKS                       R5 R4 K30 ["done"]
      113 JUMPIFNOT                        R5 ; [+1]
      114 JUMP                             ; [+7]
      115 GETTABLEKS                       R5 R4 K31 ["callback"]
      117 DUPTABLE                         R6 K35 [{["type"] = "error", ["error"] = "request_failed"}]
      118 CALL                             R5 1 0
      119 LOADB                            R5 1
      120 SETTABLEKS                       R5 R4 K30 ["done"]
      122 GETUPVAL                         R5 12
      123 GETUPVAL                         R6 8
      124 LOADNIL                          R7
      125 SETTABLE                         R7 R5 R6
      126 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 FASTCALL1                        TYPEOF R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [typeof]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["table"] ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R3 R2 K5 ["source"]
       17 JUMPIFEQKNIL                     R3 ; [+6]
       19 GETTABLEKS                       R3 R2 K5 ["source"]
       21 JUMPIFEQKS                       R3 K6 ["CAPStudioAssistant"] ; [+2]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R2 K7 ["created_app"]
       26 JUMPIFEQKNIL                     R3 ; [+6]
       28 GETTABLEKS                       R3 R2 K7 ["created_app"]
       30 JUMPIFEQKS                       R3 K8 ["studio"] ; [+2]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R2 K9 ["request_id"]
       35 FASTCALL1                        TYPEOF R3 ; [+3]
       36 MOVE                             R6 R3
       37 GETIMPORT                        R5 K3 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K10 ["string"] ; [+4]
       42 GETUPVAL                         R5 1
       43 GETTABLE                         R4 R5 R3
       44 JUMP                             ; [+1]
       45 LOADNIL                          R4
       46 JUMPIF                           R4 ; [+1]
       47 RETURN                           R0 0
       48 GETIMPORT                        R5 K1 [pcall]
       50 NEWCLOSURE                       R6 P1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R2
       53 CALL                             R5 1 2
       54 JUMPIFNOT                        R5 ; [+7]
       55 FASTCALL1                        TYPEOF R6 ; [+3]
       56 MOVE                             R8 R6
       57 GETIMPORT                        R7 K3 [typeof]
       59 CALL                             R7 1 1
       60 JUMPIFEQKS                       R7 K4 ["table"] ; [+2]
       62 RETURN                           R0 0
       63 GETTABLEKS                       R7 R6 K11 ["params"]
       65 FASTCALL1                        TYPEOF R7 ; [+3]
       66 MOVE                             R10 R7
       67 GETIMPORT                        R9 K3 [typeof]
       69 CALL                             R9 1 1
       70 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+4]
       72 GETTABLEKS                       R8 R7 K12 ["update"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R8
       76 FASTCALL1                        TYPEOF R8 ; [+3]
       77 MOVE                             R10 R8
       78 GETIMPORT                        R9 K3 [typeof]
       80 CALL                             R9 1 1
       81 JUMPIFEQKS                       R9 K4 ["table"] ; [+2]
       83 RETURN                           R0 0
       84 GETTABLEKS                       R9 R8 K13 ["sessionUpdate"]
       86 JUMPIFNOTEQKS                    R9 K14 ["agent_message_chunk"] ; [+28]
       88 GETTABLEKS                       R10 R8 K15 ["content"]
       90 FASTCALL1                        TYPEOF R10 ; [+3]
       91 MOVE                             R13 R10
       92 GETIMPORT                        R12 K3 [typeof]
       94 CALL                             R12 1 1
       95 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+4]
       97 GETTABLEKS                       R11 R10 K16 ["text"]
       99 JUMP                             ; [+1]
      100 LOADNIL                          R11
      101 FASTCALL1                        TYPEOF R11 ; [+3]
      102 MOVE                             R13 R11
      103 GETIMPORT                        R12 K3 [typeof]
      105 CALL                             R12 1 1
      106 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+202]
      108 JUMPIFEQKS                       R11 K17 [""] ; [+200]
      110 GETUPVAL                         R12 2
      111 MOVE                             R13 R4
      112 MOVE                             R14 R11
      113 CALL                             R12 2 0
      114 RETURN                           R0 0
      115 JUMPIFNOTEQKS                    R9 K18 ["state_change"] ; [+12]
      117 GETTABLEKS                       R10 R8 K19 ["state"]
      119 JUMPIFNOTEQKS                    R10 K20 ["idle"] ; [+8]
      121 GETUPVAL                         R10 3
      122 MOVE                             R11 R4
      123 CALL                             R10 1 0
      124 GETUPVAL                         R10 1
      125 LOADNIL                          R11
      126 SETTABLE                         R11 R10 R3
      127 RETURN                           R0 0
      128 JUMPIFNOTEQKS                    R9 K21 ["tool_call_update"] ; [+180]
      130 GETTABLEKS                       R10 R8 K22 ["_meta"]
      132 FASTCALL1                        TYPEOF R10 ; [+3]
      133 MOVE                             R13 R10
      134 GETIMPORT                        R12 K3 [typeof]
      136 CALL                             R12 1 1
      137 JUMPIFNOTEQKS                    R12 K4 ["table"] ; [+4]
      139 GETTABLEKS                       R11 R10 K23 ["_roblox"]
      141 JUMP                             ; [+1]
      142 LOADNIL                          R11
      143 FASTCALL1                        TYPEOF R11 ; [+3]
      144 MOVE                             R14 R11
      145 GETIMPORT                        R13 K3 [typeof]
      147 CALL                             R13 1 1
      148 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+4]
      150 GETTABLEKS                       R12 R11 K24 ["expectsReply"]
      152 JUMP                             ; [+1]
      153 LOADNIL                          R12
      154 JUMPIFEQKB                       R12 TRUE ; [+2]
      156 RETURN                           R0 0
      157 FASTCALL1                        TYPEOF R11 ; [+3]
      158 MOVE                             R15 R11
      159 GETIMPORT                        R14 K3 [typeof]
      161 CALL                             R14 1 1
      162 JUMPIFNOTEQKS                    R14 K4 ["table"] ; [+4]
      164 GETTABLEKS                       R13 R11 K25 ["referenceId"]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R13
      168 FASTCALL1                        TYPEOF R11 ; [+3]
      169 MOVE                             R16 R11
      170 GETIMPORT                        R15 K3 [typeof]
      172 CALL                             R15 1 1
      173 JUMPIFNOTEQKS                    R15 K4 ["table"] ; [+4]
      175 GETTABLEKS                       R14 R11 K26 ["turnId"]
      177 JUMP                             ; [+1]
      178 LOADNIL                          R14
      179 GETTABLEKS                       R17 R8 K27 ["title"]
      181 FASTCALL1                        TYPEOF R17 ; [+2]
      182 GETIMPORT                        R16 K3 [typeof]
      184 CALL                             R16 1 1
      185 JUMPIFNOTEQKS                    R16 K10 ["string"] ; [+4]
      187 GETTABLEKS                       R15 R8 K27 ["title"]
      189 JUMP                             ; [+1]
      190 LOADNIL                          R15
      191 GETTABLEKS                       R16 R8 K28 ["rawInput"]
      193 GETTABLEKS                       R17 R8 K29 ["status"]
      195 LOADB                            R18 0
      196 JUMPIFNOTEQKS                    R17 K30 ["pending"] ; [+36]
      198 LOADB                            R18 0
      199 FASTCALL1                        TYPEOF R13 ; [+3]
      200 MOVE                             R20 R13
      201 GETIMPORT                        R19 K3 [typeof]
      203 CALL                             R19 1 1
      204 JUMPIFNOTEQKS                    R19 K10 ["string"] ; [+28]
      206 LOADB                            R18 0
      207 JUMPIFEQKS                       R13 K17 [""] ; [+25]
      209 LOADB                            R18 0
      210 FASTCALL1                        TYPEOF R14 ; [+3]
      211 MOVE                             R20 R14
      212 GETIMPORT                        R19 K3 [typeof]
      214 CALL                             R19 1 1
      215 JUMPIFNOTEQKS                    R19 K31 ["number"] ; [+17]
      217 LOADB                            R18 0
      218 LOADN                            R19 0
      219 JUMPIFNOTLT                      R19 R14 ; [+13]
      221 LOADB                            R18 0
      222 FASTCALL1                        TYPEOF R15 ; [+3]
      223 MOVE                             R20 R15
      224 GETIMPORT                        R19 K3 [typeof]
      226 CALL                             R19 1 1
      227 JUMPIFNOTEQKS                    R19 K10 ["string"] ; [+5]
      229 JUMPIFNOTEQKS                    R15 K17 [""] ; [+2]
      231 LOADB                            R18 0 +1
      232 LOADB                            R18 1
      233 JUMPIF                           R18 ; [+51]
      234 JUMPIFNOTEQKS                    R17 K30 ["pending"] ; [+49]
      236 GETUPVAL                         R19 4
      237 LOADK                            R21 K32 ["tool_call_update expectsReply but missing fields status=%* title=%* referenceId=%* turnId=%*"]
      238 FASTCALL1                        TOSTRING R17 ; [+3]
      239 MOVE                             R24 R17
      240 GETIMPORT                        R23 K34 [tostring]
      242 CALL                             R23 1 1
      243 FASTCALL1                        TOSTRING R15 ; [+3]
      244 MOVE                             R25 R15
      245 GETIMPORT                        R24 K34 [tostring]
      247 CALL                             R24 1 1
      248 FASTCALL1                        TOSTRING R13 ; [+3]
      249 MOVE                             R26 R13
      250 GETIMPORT                        R25 K34 [tostring]
      252 CALL                             R25 1 1
      253 FASTCALL1                        TOSTRING R14 ; [+3]
      254 MOVE                             R27 R14
      255 GETIMPORT                        R26 K34 [tostring]
      257 CALL                             R26 1 1
      258 NAMECALL                         R21 R21 K35 ["format"]
      260 CALL                             R21 5 1
      261 MOVE                             R20 R21
      262 CALL                             R19 1 0
      263 GETIMPORT                        R19 K38 [task.spawn]
      265 NEWCLOSURE                       R20 P2
      266 CAPTURE                          UPVAL U5
      267 CAPTURE                          VAL R3
      268 CAPTURE                          UPVAL U6
      269 CALL                             R19 1 0
      270 GETTABLEKS                       R19 R4 K39 ["done"]
      272 JUMPIFNOT                        R19 ; [+1]
      273 JUMP                             ; [+7]
      274 GETTABLEKS                       R19 R4 K40 ["callback"]
      276 DUPTABLE                         R20 K44 [{["type"] = "error", ["error"] = "request_failed"}]
      277 CALL                             R19 1 0
      278 LOADB                            R19 1
      279 SETTABLEKS                       R19 R4 K39 ["done"]
      281 GETUPVAL                         R19 1
      282 LOADNIL                          R20
      283 SETTABLE                         R20 R19 R3
      284 RETURN                           R0 0
      285 GETUPVAL                         R20 7
      286 GETTABLE                         R19 R20 R13
      287 JUMPIFNOT                        R19 ; [+1]
      288 RETURN                           R0 0
      289 GETUPVAL                         R19 7
      290 LOADB                            R20 1
      291 SETTABLE                         R20 R19 R13
      292 GETIMPORT                        R19 K38 [task.spawn]
      294 NEWCLOSURE                       R20 P3
      295 CAPTURE                          UPVAL U5
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          UPVAL U9
      298 CAPTURE                          VAL R15
      299 CAPTURE                          VAL R16
      300 CAPTURE                          UPVAL U10
      301 CAPTURE                          VAL R13
      302 CAPTURE                          VAL R14
      303 CAPTURE                          VAL R3
      304 CAPTURE                          UPVAL U6
      305 CAPTURE                          UPVAL U7
      306 CAPTURE                          UPVAL U4
      307 CAPTURE                          UPVAL U1
      308 CALL                             R19 1 0
      309 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantNotificationManager"]
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["get"]
       10 CALL                             R0 0 1
       11 GETTABLEKS                       R1 R0 K2 ["listen"]
       13 LOADK                            R2 K3 ["AssistantPlugin"]
       14 GETUPVAL                         R3 3
       15 CALL                             R1 2 1
       16 SETUPVAL                         R1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K4 ["RobloxEventReceived"]
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          UPVAL U3
       23 NAMECALL                         R0 R0 K5 ["Connect"]
       25 CALL                             R0 2 1
       26 SETUPVAL                         R0 0
       27 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETIMPORT                        R0 K3 [table.clear]
       10 GETUPVAL                         R1 1
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K3 [table.clear]
       14 GETUPVAL                         R1 2
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K3 [table.clear]
       18 GETUPVAL                         R1 3
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["threadId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+126]
       13 LOADN                            R2 0
       14 LOADN                            R3 0
       15 GETIMPORT                        R4 K4 [pcall]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K5 ["getGameMetadata"]
       20 CALL                             R4 1 2
       21 JUMPIFNOT                        R4 ; [+5]
       22 JUMPIFNOT                        R5 ; [+4]
       23 GETTABLEKS                       R2 R5 K6 ["universeId"]
       25 GETTABLEKS                       R3 R5 K7 ["placeId"]
       27 JUMPIFEQKN                       R2 K8 [0] ; [+3]
       29 JUMPIFNOTEQKN                    R3 K8 [0] ; [+9]
       31 GETIMPORT                        R6 K10 [warn]
       33 LOADK                            R7 K11 ["This place is not team create place. Please make place in TeamCreate mode"]
       34 CALL                             R6 1 0
       35 GETUPVAL                         R6 4
       36 DUPTABLE                         R7 K15 [{["type"] = "error", ["error"] = "request_failed"}]
       37 CALL                             R6 1 0
       38 RETURN                           R0 0
       39 DUPTABLE                         R8 K19 [{["cwd"] = "/", ["_meta"]}]
       40 DUPTABLE                         R9 K21 [{"_roblox"}]
       41 DUPTABLE                         R10 K24 [{["universeId"], ["placeId"], ["createdApp"] = "studio"}]
       42 SETTABLEKS                       R2 R10 K6 ["universeId"]
       44 SETTABLEKS                       R3 R10 K7 ["placeId"]
       46 SETTABLEKS                       R10 R9 K20 ["_roblox"]
       48 SETTABLEKS                       R9 R8 K18 ["_meta"]
       50 DUPTABLE                         R9 K32 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/new", ["params"]}]
       51 SETTABLEKS                       R8 R9 K31 ["params"]
       53 GETUPVAL                         R10 5
       54 MOVE                             R11 R9
       55 MOVE                             R12 R0
       56 LOADK                            R13 K33 ["http://localhost:5000"]
       57 CALL                             R10 3 2
       58 MOVE                             R6 R10
       59 MOVE                             R7 R11
       60 JUMPIFNOT                        R6 ; [+20]
       61 FASTCALL1                        TYPEOF R7 ; [+3]
       62 MOVE                             R10 R7
       63 GETIMPORT                        R9 K35 [typeof]
       65 CALL                             R9 1 1
       66 JUMPIFNOTEQKS                    R9 K36 ["table"] ; [+14]
       68 GETTABLEKS                       R10 R7 K37 ["result"]
       70 FASTCALL1                        TYPEOF R10 ; [+2]
       71 GETIMPORT                        R9 K35 [typeof]
       73 CALL                             R9 1 1
       74 JUMPIFNOTEQKS                    R9 K36 ["table"] ; [+6]
       76 GETTABLEKS                       R8 R7 K37 ["result"]
       78 GETTABLEKS                       R8 R8 K38 ["sessionId"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R8
       82 FASTCALL1                        TYPEOF R8 ; [+3]
       83 MOVE                             R10 R8
       84 GETIMPORT                        R9 K35 [typeof]
       86 CALL                             R9 1 1
       87 JUMPIFNOTEQKS                    R9 K39 ["string"] ; [+3]
       89 JUMPIFNOTEQKS                    R8 K40 [""] ; [+35]
       91 GETUPVAL                         R9 6
       92 LOADK                            R11 K41 ["session/new failed detail=%*"]
       93 FASTCALL1                        TYPEOF R7 ; [+3]
       94 MOVE                             R15 R7
       95 GETIMPORT                        R14 K35 [typeof]
       97 CALL                             R14 1 1
       98 JUMPIFNOTEQKS                    R14 K36 ["table"] ; [+12]
      100 GETTABLEKS                       R15 R7 K42 ["responseBody"]
      102 FASTCALL1                        TYPEOF R15 ; [+2]
      103 GETIMPORT                        R14 K35 [typeof]
      105 CALL                             R14 1 1
      106 JUMPIFNOTEQKS                    R14 K39 ["string"] ; [+4]
      108 GETTABLEKS                       R13 R7 K42 ["responseBody"]
      110 JUMP                             ; [+5]
      111 FASTCALL1                        TOSTRING R7 ; [+3]
      112 MOVE                             R14 R7
      113 GETIMPORT                        R13 K44 [tostring]
      115 CALL                             R13 1 1
      116 NAMECALL                         R11 R11 K45 ["format"]
      118 CALL                             R11 2 1
      119 MOVE                             R10 R11
      120 CALL                             R9 1 0
      121 GETUPVAL                         R9 4
      122 DUPTABLE                         R10 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      123 CALL                             R9 1 0
      124 RETURN                           R0 0
      125 MOVE                             R1 R8
      126 GETUPVAL                         R9 1
      127 GETUPVAL                         R10 2
      128 GETTABLEKS                       R10 R10 K2 ["threadId"]
      130 SETTABLE                         R1 R9 R10
      131 GETUPVAL                         R9 7
      132 LOADK                            R10 K46 ["session/new ok"]
      133 GETUPVAL                         R11 2
      134 GETTABLEKS                       R11 R11 K2 ["threadId"]
      136 LOADK                            R12 K47 ["->"]
      137 MOVE                             R13 R1
      138 CALL                             R9 4 0
      139 DUPTABLE                         R2 K53 [{["callback"], ["started"] = False, ["nextContentId"] = 0, ["done"] = False}]
      140 GETUPVAL                         R3 4
      141 SETTABLEKS                       R3 R2 K48 ["callback"]
      143 GETUPVAL                         R3 8
      144 SETTABLE                         R2 R3 R1
      145 GETUPVAL                         R3 9
      146 GETUPVAL                         R4 2
      147 CALL                             R3 1 1
      148 JUMPIFNOTEQKS                    R3 K40 [""] ; [+12]
      150 GETUPVAL                         R4 6
      151 LOADK                            R6 K54 ["session/prompt skipped: empty prompt text (messages=%*)"]
      152 GETUPVAL                         R9 2
      153 GETTABLEKS                       R9 R9 K55 ["messages"]
      155 LENGTH                           R8 R9
      156 NAMECALL                         R6 R6 K45 ["format"]
      158 CALL                             R6 2 1
      159 MOVE                             R5 R6
      160 CALL                             R4 1 0
      161 GETUPVAL                         R5 10
      162 LOADNIL                          R6
      163 NEWCLOSURE                       R8 P0
      164 CAPTURE                          UPVAL U11
      165 CAPTURE                          REF R6
      166 CAPTURE                          UPVAL U6
      167 JUMPIF                           R5 ; [+2]
      168 LOADB                            R7 0
      169 JUMP                             ; [+8]
      170 LOADB                            R9 0
      171 MOVE                             R10 R5
      172 NEWCLOSURE                       R11 P1
      173 CAPTURE                          REF R9
      174 CAPTURE                          VAL R8
      175 CALL                             R10 1 0
      176 MOVE                             R7 R9
      177 CLOSEUPVALS                      R9
      178 JUMPIF                           R7 ; [+6]
      179 GETUPVAL                         R8 6
      180 LOADK                            R9 K56 ["listTools skipped: no MCP client"]
      181 CALL                             R8 1 0
      182 LOADNIL                          R4
      183 CLOSEUPVALS                      R6
      184 JUMP                             ; [+2]
      185 MOVE                             R4 R6
      186 CLOSEUPVALS                      R6
      187 GETUPVAL                         R5 12
      188 JUMPIFNOT                        R4 ; [+2]
      189 MOVE                             R6 R4
      190 JUMP                             ; [+3]
      191 GETUPVAL                         R6 2
      192 GETTABLEKS                       R6 R6 K57 ["tools"]
      194 CALL                             R5 1 1
      195 GETUPVAL                         R6 7
      196 LOADK                            R8 K58 ["session/prompt tools=%*"]
      197 LENGTH                           R10 R5
      198 NAMECALL                         R8 R8 K45 ["format"]
      200 CALL                             R8 2 1
      201 MOVE                             R7 R8
      202 CALL                             R6 1 0
      203 DUPTABLE                         R8 K60 [{"sessionId", "prompt", "_meta"}]
      204 SETTABLEKS                       R1 R8 K38 ["sessionId"]
      206 NEWTABLE                         R9 0 1
      208 DUPTABLE                         R10 K62 [{["type"] = "text", ["text"]}]
      209 SETTABLEKS                       R3 R10 K61 ["text"]
      211 SETLIST                          R9 R10 1 [1]
      213 SETTABLEKS                       R9 R8 K59 ["prompt"]
      215 DUPTABLE                         R9 K21 [{"_roblox"}]
      216 DUPTABLE                         R10 K64 [{"localTools"}]
      217 SETTABLEKS                       R5 R10 K63 ["localTools"]
      219 SETTABLEKS                       R10 R9 K20 ["_roblox"]
      221 SETTABLEKS                       R9 R8 K18 ["_meta"]
      223 DUPTABLE                         R9 K66 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/prompt", ["params"]}]
      224 SETTABLEKS                       R8 R9 K31 ["params"]
      226 GETUPVAL                         R10 5
      227 MOVE                             R11 R9
      228 MOVE                             R12 R0
      229 LOADK                            R13 K33 ["http://localhost:5000"]
      230 CALL                             R10 3 2
      231 MOVE                             R6 R10
      232 MOVE                             R7 R11
      233 JUMPIF                           R6 ; [+45]
      234 GETUPVAL                         R8 6
      235 LOADK                            R10 K67 ["session/prompt failed sessionId=%* detail=%*"]
      236 MOVE                             R12 R1
      237 FASTCALL1                        TYPEOF R7 ; [+3]
      238 MOVE                             R15 R7
      239 GETIMPORT                        R14 K35 [typeof]
      241 CALL                             R14 1 1
      242 JUMPIFNOTEQKS                    R14 K36 ["table"] ; [+12]
      244 GETTABLEKS                       R15 R7 K42 ["responseBody"]
      246 FASTCALL1                        TYPEOF R15 ; [+2]
      247 GETIMPORT                        R14 K35 [typeof]
      249 CALL                             R14 1 1
      250 JUMPIFNOTEQKS                    R14 K39 ["string"] ; [+4]
      252 GETTABLEKS                       R13 R7 K42 ["responseBody"]
      254 JUMP                             ; [+5]
      255 FASTCALL1                        TOSTRING R7 ; [+3]
      256 MOVE                             R14 R7
      257 GETIMPORT                        R13 K44 [tostring]
      259 CALL                             R13 1 1
      260 NAMECALL                         R10 R10 K45 ["format"]
      262 CALL                             R10 3 1
      263 MOVE                             R9 R10
      264 CALL                             R8 1 0
      265 GETUPVAL                         R8 8
      266 LOADNIL                          R9
      267 SETTABLE                         R9 R8 R1
      268 GETTABLEKS                       R8 R2 K52 ["done"]
      270 JUMPIFNOT                        R8 ; [+1]
      271 RETURN                           R0 0
      272 GETTABLEKS                       R8 R2 K48 ["callback"]
      274 DUPTABLE                         R9 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      275 CALL                             R8 1 0
      276 LOADB                            R8 1
      277 SETTABLEKS                       R8 R2 K52 ["done"]
      279 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 GETIMPORT                        R2 K2 [task.spawn]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U11
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_37:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NEWTABLE                         R5 0 0
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R8 R8 K0 ["FFlagAssistantNotificationManager"]
       11 JUMPIF                           R8 ; [+5]
       12 LOADK                            R10 K1 ["NotificationService"]
       13 NAMECALL                         R8 R0 K2 ["GetService"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 DUPCLOSURE                       R8 K3 [PROTO_23]
       18 DUPCLOSURE                       R9 K4 [PROTO_24]
       19 CAPTURE                          VAL R8
       20 DUPCLOSURE                       R10 K5 [PROTO_25]
       21 CAPTURE                          VAL R8
       22 DUPCLOSURE                       R11 K6 [PROTO_26]
       23 NEWCLOSURE                       R12 P4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R9
       27 CAPTURE                          VAL R10
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U6
       35 NEWCLOSURE                       R13 P5
       36 CAPTURE                          REF R6
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          VAL R12
       40 CAPTURE                          REF R7
       41 JUMPIFNOT                        R1 ; [+10]
       42 GETTABLEKS                       R14 R1 K7 ["Unloading"]
       44 NEWCLOSURE                       R16 P6
       45 CAPTURE                          REF R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 NAMECALL                         R14 R14 K8 ["Connect"]
       51 CALL                             R14 2 0
       52 NEWCLOSURE                       R14 P7
       53 CAPTURE                          VAL R13
       54 CAPTURE                          UPVAL U3
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U4
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          UPVAL U9
       62 CAPTURE                          VAL R2
       63 CAPTURE                          UPVAL U10
       64 CAPTURE                          UPVAL U11
       65 CLOSEUPVALS                      R6
       66 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["NotificationManagerStore"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R6 K13 ["OpenApiCreatorAgentsService"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K14 ["StudioGameMetadata"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Flags"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R1 K16 ["Guest"]
       62 GETTABLEKS                       R8 R8 K17 ["Environment"]
       64 GETTABLEKS                       R9 R1 K18 ["UIToolRegistry"]
       66 DUPTABLE                         R10 K20 [{"_meta"}]
       67 DUPTABLE                         R11 K23 [{["useInternalToolDefinitions"] = True}]
       68 SETTABLEKS                       R11 R10 K19 ["_meta"]
       70 GETTABLEKS                       R11 R2 K24 ["Http"]
       72 GETTABLEKS                       R11 R11 K25 ["Networking"]
       74 GETTABLEKS                       R12 R11 K26 ["new"]
       76 DUPTABLE                         R13 K29 [{["isInternal"] = True, ["loggingLevel"]}]
       77 GETTABLEKS                       R15 R7 K30 ["FFlagDebugLogAssistantUI"]
       79 JUMPIFNOT                        R15 ; [+2]
       80 LOADN                            R14 4
       81 JUMP                             ; [+1]
       82 LOADN                            R14 0
       83 SETTABLEKS                       R14 R13 K28 ["loggingLevel"]
       85 CALL                             R12 1 1
       86 DUPCLOSURE                       R13 K31 [PROTO_0]
       87 CAPTURE                          VAL R7
       88 DUPCLOSURE                       R14 K32 [PROTO_1]
       89 DUPCLOSURE                       R15 K33 [PROTO_2]
       90 DUPCLOSURE                       R16 K34 [PROTO_3]
       91 DUPCLOSURE                       R17 K35 [PROTO_5]
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R14
       96 DUPCLOSURE                       R18 K36 [PROTO_10]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R14
      101 DUPCLOSURE                       R19 K37 [PROTO_11]
      102 CAPTURE                          VAL R18
      103 DUPCLOSURE                       R20 K38 [PROTO_12]
      104 CAPTURE                          VAL R19
      105 DUPCLOSURE                       R21 K39 [PROTO_13]
      106 CAPTURE                          VAL R19
      107 DUPCLOSURE                       R22 K40 [PROTO_15]
      108 DUPCLOSURE                       R23 K41 [PROTO_17]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R14
      111 DUPCLOSURE                       R24 K42 [PROTO_19]
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R14
      115 DUPCLOSURE                       R25 K43 [PROTO_20]
      116 DUPCLOSURE                       R26 K44 [PROTO_21]
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R25
      119 DUPCLOSURE                       R27 K45 [PROTO_22]
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R28 K46 [PROTO_37]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R18
      127 CAPTURE                          VAL R24
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R26
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R27
      134 DUPTABLE                         R29 K48 [{"createRequestHandler"}]
      135 SETTABLEKS                       R28 R29 K47 ["createRequestHandler"]
      137 RETURN                           R29 1

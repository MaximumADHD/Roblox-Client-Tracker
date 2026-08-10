PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R0 K1 [""] ; [+2]
        5 RETURN                           R0 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["FFlagDebugLogAssistantUI"]
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETIMPORT                        R0 K2 [warn]
        7 LOADK                            R1 K3 ["[cas-request]"]
        8 GETVARARGS                       R2 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [warn]
        3 LOADK                            R1 K2 ["[cas-request]"]
        4 GETVARARGS                       R2 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["body"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_8:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FStringDebugCASBaseUrlOverride"]
        3 JUMPIFEQKS                       R3 K1 [""] ; [+3]
        5 MOVE                             R2 R3
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R3 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K6 [{[1] = "2.0", ["id"] = 1, ["method"], ["params"]}]
        2 SETTABLEKS                       R0 R4 K4 ["method"]
        4 SETTABLEKS                       R1 R4 K5 ["params"]
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K4 [{[1] = "2.0", ["id"], ["result"]}]
        2 SETTABLEKS                       R0 R4 K2 ["id"]
        4 SETTABLEKS                       R1 R4 K3 ["result"]
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1

PROTO_15:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["done"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["callback"]
        6 DUPTABLE                         R2 K5 [{["type"] = "error", ["error"] = "request_failed"}]
        7 CALL                             R1 1 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["done"]
       11 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["detail"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["message"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_30:
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
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K12 ["FStringDebugCASBaseUrlOverride"]
       17 JUMPIFEQKS                       R5 K13 [""] ; [+3]
       19 MOVE                             R4 R5
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 JUMPIFNOT                        R4 ; [+7]
       23 GETUPVAL                         R5 3
       24 MOVE                             R6 R3
       25 MOVE                             R7 R0
       26 MOVE                             R8 R4
       27 CALL                             R5 3 1
       28 MOVE                             R2 R5
       29 RETURN                           R0 0
       30 GETUPVAL                         R5 4
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 MOVE                             R2 R5
       34 RETURN                           R0 0

PROTO_31:
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
       50 GETUPVAL                         R8 9
       51 GETTABLEKS                       R8 R8 K17 ["FStringDebugCASBaseUrlOverride"]
       53 JUMPIFEQKS                       R8 K18 [""] ; [+3]
       55 MOVE                             R7 R8
       56 JUMP                             ; [+1]
       57 LOADNIL                          R7
       58 JUMPIFNOT                        R7 ; [+8]
       59 GETUPVAL                         R8 10
       60 MOVE                             R9 R6
       61 MOVE                             R10 R0
       62 MOVE                             R11 R7
       63 CALL                             R8 3 2
       64 MOVE                             R2 R8
       65 MOVE                             R3 R9
       66 JUMP                             ; [+5]
       67 GETUPVAL                         R8 11
       68 MOVE                             R9 R6
       69 CALL                             R8 1 2
       70 MOVE                             R2 R8
       71 MOVE                             R3 R9
       72 GETUPVAL                         R4 12
       73 GETUPVAL                         R5 6
       74 LOADNIL                          R6
       75 SETTABLE                         R6 R4 R5
       76 JUMPIF                           R2 ; [+78]
       77 GETUPVAL                         R4 13
       78 LOADK                            R6 K19 ["tool reply failed name=%* referenceId=%* detail=%*"]
       79 GETUPVAL                         R8 3
       80 GETUPVAL                         R9 6
       81 FASTCALL1                        TYPEOF R3 ; [+3]
       82 MOVE                             R12 R3
       83 GETIMPORT                        R11 K21 [typeof]
       85 CALL                             R11 1 1
       86 JUMPIFNOTEQKS                    R11 K22 ["table"] ; [+12]
       88 GETTABLEKS                       R12 R3 K23 ["responseBody"]
       90 FASTCALL1                        TYPEOF R12 ; [+2]
       91 GETIMPORT                        R11 K21 [typeof]
       93 CALL                             R11 1 1
       94 JUMPIFNOTEQKS                    R11 K24 ["string"] ; [+4]
       96 GETTABLEKS                       R10 R3 K23 ["responseBody"]
       98 JUMP                             ; [+5]
       99 FASTCALL1                        TOSTRING R3 ; [+3]
      100 MOVE                             R11 R3
      101 GETIMPORT                        R10 K5 [tostring]
      103 CALL                             R10 1 1
      104 NAMECALL                         R6 R6 K6 ["format"]
      106 CALL                             R6 4 1
      107 MOVE                             R5 R6
      108 CALL                             R4 1 0
      109 DUPTABLE                         R4 K25 [{"sessionId"}]
      110 GETUPVAL                         R5 8
      111 SETTABLEKS                       R5 R4 K7 ["sessionId"]
      113 DUPTABLE                         R6 K30 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/cancel", ["params"]}]
      114 SETTABLEKS                       R4 R6 K29 ["params"]
      116 GETUPVAL                         R8 9
      117 GETTABLEKS                       R8 R8 K17 ["FStringDebugCASBaseUrlOverride"]
      119 JUMPIFEQKS                       R8 K18 [""] ; [+3]
      121 MOVE                             R7 R8
      122 JUMP                             ; [+1]
      123 LOADNIL                          R7
      124 JUMPIFNOT                        R7 ; [+7]
      125 GETUPVAL                         R8 10
      126 MOVE                             R9 R6
      127 MOVE                             R10 R0
      128 MOVE                             R11 R7
      129 CALL                             R8 3 1
      130 MOVE                             R5 R8
      131 JUMP                             ; [+4]
      132 GETUPVAL                         R8 11
      133 MOVE                             R9 R6
      134 CALL                             R8 1 1
      135 MOVE                             R5 R8
      136 GETUPVAL                         R5 14
      137 GETUPVAL                         R6 8
      138 GETTABLE                         R4 R5 R6
      139 JUMPIFNOT                        R4 ; [+15]
      140 GETTABLEKS                       R5 R4 K31 ["done"]
      142 JUMPIFNOT                        R5 ; [+1]
      143 JUMP                             ; [+7]
      144 GETTABLEKS                       R5 R4 K32 ["callback"]
      146 DUPTABLE                         R6 K36 [{["type"] = "error", ["error"] = "request_failed"}]
      147 CALL                             R5 1 0
      148 LOADB                            R5 1
      149 SETTABLEKS                       R5 R4 K31 ["done"]
      151 GETUPVAL                         R5 14
      152 GETUPVAL                         R6 8
      153 LOADNIL                          R7
      154 SETTABLE                         R7 R5 R6
      155 RETURN                           R0 0

PROTO_32:
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
      106 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+206]
      108 JUMPIFEQKS                       R11 K17 [""] ; [+204]
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
      128 JUMPIFNOTEQKS                    R9 K21 ["tool_call_update"] ; [+184]
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
      233 JUMPIF                           R18 ; [+53]
      234 JUMPIFNOTEQKS                    R17 K30 ["pending"] ; [+51]
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
      269 CAPTURE                          UPVAL U7
      270 CAPTURE                          UPVAL U8
      271 CALL                             R19 1 0
      272 GETTABLEKS                       R19 R4 K39 ["done"]
      274 JUMPIFNOT                        R19 ; [+1]
      275 JUMP                             ; [+7]
      276 GETTABLEKS                       R19 R4 K40 ["callback"]
      278 DUPTABLE                         R20 K44 [{["type"] = "error", ["error"] = "request_failed"}]
      279 CALL                             R19 1 0
      280 LOADB                            R19 1
      281 SETTABLEKS                       R19 R4 K39 ["done"]
      283 GETUPVAL                         R19 1
      284 LOADNIL                          R20
      285 SETTABLE                         R20 R19 R3
      286 RETURN                           R0 0
      287 GETUPVAL                         R20 9
      288 GETTABLE                         R19 R20 R13
      289 JUMPIFNOT                        R19 ; [+1]
      290 RETURN                           R0 0
      291 GETUPVAL                         R19 9
      292 LOADB                            R20 1
      293 SETTABLE                         R20 R19 R13
      294 GETIMPORT                        R19 K38 [task.spawn]
      296 NEWCLOSURE                       R20 P3
      297 CAPTURE                          UPVAL U5
      298 CAPTURE                          UPVAL U10
      299 CAPTURE                          UPVAL U11
      300 CAPTURE                          VAL R15
      301 CAPTURE                          VAL R16
      302 CAPTURE                          UPVAL U12
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R14
      305 CAPTURE                          VAL R3
      306 CAPTURE                          UPVAL U6
      307 CAPTURE                          UPVAL U7
      308 CAPTURE                          UPVAL U8
      309 CAPTURE                          UPVAL U9
      310 CAPTURE                          UPVAL U4
      311 CAPTURE                          UPVAL U1
      312 CALL                             R19 1 0
      313 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["threadId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+141]
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
       53 GETUPVAL                         R11 5
       54 GETTABLEKS                       R11 R11 K33 ["FStringDebugCASBaseUrlOverride"]
       56 JUMPIFEQKS                       R11 K34 [""] ; [+3]
       58 MOVE                             R10 R11
       59 JUMP                             ; [+1]
       60 LOADNIL                          R10
       61 JUMPIFNOT                        R10 ; [+8]
       62 GETUPVAL                         R11 6
       63 MOVE                             R12 R9
       64 MOVE                             R13 R0
       65 MOVE                             R14 R10
       66 CALL                             R11 3 2
       67 MOVE                             R6 R11
       68 MOVE                             R7 R12
       69 JUMP                             ; [+5]
       70 GETUPVAL                         R11 7
       71 MOVE                             R12 R9
       72 CALL                             R11 1 2
       73 MOVE                             R6 R11
       74 MOVE                             R7 R12
       75 JUMPIFNOT                        R6 ; [+20]
       76 FASTCALL1                        TYPEOF R7 ; [+3]
       77 MOVE                             R10 R7
       78 GETIMPORT                        R9 K36 [typeof]
       80 CALL                             R9 1 1
       81 JUMPIFNOTEQKS                    R9 K37 ["table"] ; [+14]
       83 GETTABLEKS                       R10 R7 K38 ["result"]
       85 FASTCALL1                        TYPEOF R10 ; [+2]
       86 GETIMPORT                        R9 K36 [typeof]
       88 CALL                             R9 1 1
       89 JUMPIFNOTEQKS                    R9 K37 ["table"] ; [+6]
       91 GETTABLEKS                       R8 R7 K38 ["result"]
       93 GETTABLEKS                       R8 R8 K39 ["sessionId"]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R8
       97 FASTCALL1                        TYPEOF R8 ; [+3]
       98 MOVE                             R10 R8
       99 GETIMPORT                        R9 K36 [typeof]
      101 CALL                             R9 1 1
      102 JUMPIFNOTEQKS                    R9 K40 ["string"] ; [+3]
      104 JUMPIFNOTEQKS                    R8 K34 [""] ; [+35]
      106 GETUPVAL                         R9 8
      107 LOADK                            R11 K41 ["session/new failed detail=%*"]
      108 FASTCALL1                        TYPEOF R7 ; [+3]
      109 MOVE                             R15 R7
      110 GETIMPORT                        R14 K36 [typeof]
      112 CALL                             R14 1 1
      113 JUMPIFNOTEQKS                    R14 K37 ["table"] ; [+12]
      115 GETTABLEKS                       R15 R7 K42 ["responseBody"]
      117 FASTCALL1                        TYPEOF R15 ; [+2]
      118 GETIMPORT                        R14 K36 [typeof]
      120 CALL                             R14 1 1
      121 JUMPIFNOTEQKS                    R14 K40 ["string"] ; [+4]
      123 GETTABLEKS                       R13 R7 K42 ["responseBody"]
      125 JUMP                             ; [+5]
      126 FASTCALL1                        TOSTRING R7 ; [+3]
      127 MOVE                             R14 R7
      128 GETIMPORT                        R13 K44 [tostring]
      130 CALL                             R13 1 1
      131 NAMECALL                         R11 R11 K45 ["format"]
      133 CALL                             R11 2 1
      134 MOVE                             R10 R11
      135 CALL                             R9 1 0
      136 GETUPVAL                         R9 4
      137 DUPTABLE                         R10 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      138 CALL                             R9 1 0
      139 RETURN                           R0 0
      140 MOVE                             R1 R8
      141 GETUPVAL                         R9 1
      142 GETUPVAL                         R10 2
      143 GETTABLEKS                       R10 R10 K2 ["threadId"]
      145 SETTABLE                         R1 R9 R10
      146 GETUPVAL                         R9 9
      147 LOADK                            R10 K46 ["session/new ok"]
      148 GETUPVAL                         R11 2
      149 GETTABLEKS                       R11 R11 K2 ["threadId"]
      151 LOADK                            R12 K47 ["->"]
      152 MOVE                             R13 R1
      153 CALL                             R9 4 0
      154 DUPTABLE                         R2 K53 [{["callback"], ["started"] = False, ["nextContentId"] = 0, ["done"] = False}]
      155 GETUPVAL                         R3 4
      156 SETTABLEKS                       R3 R2 K48 ["callback"]
      158 GETUPVAL                         R3 10
      159 SETTABLE                         R2 R3 R1
      160 GETUPVAL                         R3 11
      161 GETUPVAL                         R4 2
      162 CALL                             R3 1 1
      163 JUMPIFNOTEQKS                    R3 K34 [""] ; [+12]
      165 GETUPVAL                         R4 8
      166 LOADK                            R6 K54 ["session/prompt skipped: empty prompt text (messages=%*)"]
      167 GETUPVAL                         R9 2
      168 GETTABLEKS                       R9 R9 K55 ["messages"]
      170 LENGTH                           R8 R9
      171 NAMECALL                         R6 R6 K45 ["format"]
      173 CALL                             R6 2 1
      174 MOVE                             R5 R6
      175 CALL                             R4 1 0
      176 GETUPVAL                         R5 12
      177 LOADNIL                          R6
      178 NEWCLOSURE                       R8 P0
      179 CAPTURE                          UPVAL U13
      180 CAPTURE                          REF R6
      181 CAPTURE                          UPVAL U8
      182 JUMPIF                           R5 ; [+2]
      183 LOADB                            R7 0
      184 JUMP                             ; [+8]
      185 LOADB                            R9 0
      186 MOVE                             R10 R5
      187 NEWCLOSURE                       R11 P1
      188 CAPTURE                          REF R9
      189 CAPTURE                          VAL R8
      190 CALL                             R10 1 0
      191 MOVE                             R7 R9
      192 CLOSEUPVALS                      R9
      193 JUMPIF                           R7 ; [+6]
      194 GETUPVAL                         R8 8
      195 LOADK                            R9 K56 ["listTools skipped: no MCP client"]
      196 CALL                             R8 1 0
      197 LOADNIL                          R4
      198 CLOSEUPVALS                      R6
      199 JUMP                             ; [+2]
      200 MOVE                             R4 R6
      201 CLOSEUPVALS                      R6
      202 GETUPVAL                         R5 14
      203 JUMPIFNOT                        R4 ; [+2]
      204 MOVE                             R6 R4
      205 JUMP                             ; [+3]
      206 GETUPVAL                         R6 2
      207 GETTABLEKS                       R6 R6 K57 ["tools"]
      209 CALL                             R5 1 1
      210 GETUPVAL                         R6 9
      211 LOADK                            R8 K58 ["session/prompt tools=%*"]
      212 LENGTH                           R10 R5
      213 NAMECALL                         R8 R8 K45 ["format"]
      215 CALL                             R8 2 1
      216 MOVE                             R7 R8
      217 CALL                             R6 1 0
      218 DUPTABLE                         R8 K60 [{"sessionId", "prompt", "_meta"}]
      219 SETTABLEKS                       R1 R8 K39 ["sessionId"]
      221 NEWTABLE                         R9 0 1
      223 DUPTABLE                         R10 K62 [{["type"] = "text", ["text"]}]
      224 SETTABLEKS                       R3 R10 K61 ["text"]
      226 SETLIST                          R9 R10 1 [1]
      228 SETTABLEKS                       R9 R8 K59 ["prompt"]
      230 DUPTABLE                         R9 K21 [{"_roblox"}]
      231 DUPTABLE                         R10 K64 [{"localTools"}]
      232 SETTABLEKS                       R5 R10 K63 ["localTools"]
      234 SETTABLEKS                       R10 R9 K20 ["_roblox"]
      236 SETTABLEKS                       R9 R8 K18 ["_meta"]
      238 DUPTABLE                         R9 K66 [{["jsonrpc"] = "2.0", ["id"] = 1, ["method"] = "session/prompt", ["params"]}]
      239 SETTABLEKS                       R8 R9 K31 ["params"]
      241 GETUPVAL                         R11 5
      242 GETTABLEKS                       R11 R11 K33 ["FStringDebugCASBaseUrlOverride"]
      244 JUMPIFEQKS                       R11 K34 [""] ; [+3]
      246 MOVE                             R10 R11
      247 JUMP                             ; [+1]
      248 LOADNIL                          R10
      249 JUMPIFNOT                        R10 ; [+8]
      250 GETUPVAL                         R11 6
      251 MOVE                             R12 R9
      252 MOVE                             R13 R0
      253 MOVE                             R14 R10
      254 CALL                             R11 3 2
      255 MOVE                             R6 R11
      256 MOVE                             R7 R12
      257 JUMP                             ; [+5]
      258 GETUPVAL                         R11 7
      259 MOVE                             R12 R9
      260 CALL                             R11 1 2
      261 MOVE                             R6 R11
      262 MOVE                             R7 R12
      263 JUMPIF                           R6 ; [+45]
      264 GETUPVAL                         R8 8
      265 LOADK                            R10 K67 ["session/prompt failed sessionId=%* detail=%*"]
      266 MOVE                             R12 R1
      267 FASTCALL1                        TYPEOF R7 ; [+3]
      268 MOVE                             R15 R7
      269 GETIMPORT                        R14 K36 [typeof]
      271 CALL                             R14 1 1
      272 JUMPIFNOTEQKS                    R14 K37 ["table"] ; [+12]
      274 GETTABLEKS                       R15 R7 K42 ["responseBody"]
      276 FASTCALL1                        TYPEOF R15 ; [+2]
      277 GETIMPORT                        R14 K36 [typeof]
      279 CALL                             R14 1 1
      280 JUMPIFNOTEQKS                    R14 K40 ["string"] ; [+4]
      282 GETTABLEKS                       R13 R7 K42 ["responseBody"]
      284 JUMP                             ; [+5]
      285 FASTCALL1                        TOSTRING R7 ; [+3]
      286 MOVE                             R14 R7
      287 GETIMPORT                        R13 K44 [tostring]
      289 CALL                             R13 1 1
      290 NAMECALL                         R10 R10 K45 ["format"]
      292 CALL                             R10 3 1
      293 MOVE                             R9 R10
      294 CALL                             R8 1 0
      295 GETUPVAL                         R8 10
      296 LOADNIL                          R9
      297 SETTABLE                         R9 R8 R1
      298 GETTABLEKS                       R8 R2 K52 ["done"]
      300 JUMPIFNOT                        R8 ; [+1]
      301 RETURN                           R0 0
      302 GETTABLEKS                       R8 R2 K48 ["callback"]
      304 DUPTABLE                         R9 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      305 CALL                             R8 1 0
      306 LOADB                            R8 1
      307 SETTABLEKS                       R8 R2 K52 ["done"]
      309 RETURN                           R0 0

PROTO_37:
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
       18 CAPTURE                          UPVAL U12
       19 CAPTURE                          UPVAL U13
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_38:
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
       17 DUPCLOSURE                       R8 K3 [PROTO_24]
       18 DUPCLOSURE                       R9 K4 [PROTO_25]
       19 CAPTURE                          VAL R8
       20 DUPCLOSURE                       R10 K5 [PROTO_26]
       21 CAPTURE                          VAL R8
       22 DUPCLOSURE                       R11 K6 [PROTO_27]
       23 NEWCLOSURE                       R12 P4
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R9
       27 CAPTURE                          VAL R10
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R5
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U7
       37 NEWCLOSURE                       R13 P5
       38 CAPTURE                          REF R6
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          VAL R12
       42 CAPTURE                          REF R7
       43 JUMPIFNOT                        R1 ; [+10]
       44 GETTABLEKS                       R14 R1 K7 ["Unloading"]
       46 NEWCLOSURE                       R16 P6
       47 CAPTURE                          REF R6
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 NAMECALL                         R14 R14 K8 ["Connect"]
       53 CALL                             R14 2 0
       54 NEWCLOSURE                       R14 P7
       55 CAPTURE                          VAL R13
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          VAL R4
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          UPVAL U12
       69 CLOSEUPVALS                      R6
       70 RETURN                           R14 1

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
       89 CAPTURE                          VAL R7
       90 DUPCLOSURE                       R15 K33 [PROTO_2]
       91 DUPCLOSURE                       R16 K34 [PROTO_3]
       92 DUPCLOSURE                       R17 K35 [PROTO_4]
       93 DUPCLOSURE                       R18 K36 [PROTO_6]
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R15
       98 DUPCLOSURE                       R19 K37 [PROTO_11]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R15
      103 DUPCLOSURE                       R20 K38 [PROTO_12]
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R19
      106 CAPTURE                          VAL R18
      107 DUPCLOSURE                       R21 K39 [PROTO_13]
      108 CAPTURE                          VAL R20
      109 DUPCLOSURE                       R22 K40 [PROTO_14]
      110 CAPTURE                          VAL R20
      111 DUPCLOSURE                       R23 K41 [PROTO_16]
      112 DUPCLOSURE                       R24 K42 [PROTO_18]
      113 CAPTURE                          VAL R10
      114 CAPTURE                          VAL R15
      115 DUPCLOSURE                       R25 K43 [PROTO_20]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R15
      119 DUPCLOSURE                       R26 K44 [PROTO_21]
      120 DUPCLOSURE                       R27 K45 [PROTO_22]
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R26
      123 DUPCLOSURE                       R28 K46 [PROTO_23]
      124 CAPTURE                          VAL R3
      125 DUPCLOSURE                       R29 K47 [PROTO_38]
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R25
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R27
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R28
      139 DUPTABLE                         R30 K49 [{"createRequestHandler"}]
      140 SETTABLEKS                       R29 R30 K48 ["createRequestHandler"]
      142 RETURN                           R30 1

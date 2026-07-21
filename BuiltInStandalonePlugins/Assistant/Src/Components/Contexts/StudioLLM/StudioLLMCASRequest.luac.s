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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["body"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R2 K6 [{[1] = "2.0", ["id"] = 1, ["method"], ["params"]}]
        1 SETTABLEKS                       R0 R2 K4 ["method"]
        3 SETTABLEKS                       R1 R2 K5 ["params"]
        5 GETUPVAL                         R3 0
        6 LOADK                            R5 K7 ["rpc(gateway) method=%* body=%*"]
        7 MOVE                             R7 R0
        8 GETUPVAL                         R8 1
        9 MOVE                             R10 R2
       10 NAMECALL                         R8 R8 K8 ["JSONEncode"]
       12 CALL                             R8 2 1
       13 NAMECALL                         R5 R5 K9 ["format"]
       15 CALL                             R5 3 1
       16 MOVE                             R4 R5
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K10 ["Acp"]
       21 GETTABLEKS                       R3 R3 K11 ["postAcpAsync"]
       23 LOADNIL                          R4
       24 MOVE                             R5 R2
       25 CALL                             R3 2 1
       26 GETTABLEKS                       R4 R3 K12 ["success"]
       28 JUMPIFNOT                        R4 ; [+4]
       29 LOADB                            R4 1
       30 GETTABLEKS                       R5 R3 K13 ["data"]
       32 RETURN                           R4 2
       33 GETTABLEKS                       R4 R3 K14 ["errorDetails"]
       35 GETTABLEKS                       R5 R4 K15 ["kind"]
       37 JUMPIFNOTEQKS                    R5 K16 ["Validation"] ; [+23]
       39 GETIMPORT                        R5 K18 [pcall]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R4
       44 CALL                             R5 1 2
       45 JUMPIFNOT                        R5 ; [+3]
       46 LOADB                            R7 1
       47 MOVE                             R8 R6
       48 RETURN                           R7 2
       49 GETUPVAL                         R7 3
       50 LOADK                            R9 K19 ["rpc(gateway) undecodable body method=%*"]
       51 MOVE                             R11 R0
       52 NAMECALL                         R9 R9 K9 ["format"]
       54 CALL                             R9 2 1
       55 MOVE                             R8 R9
       56 CALL                             R7 1 0
       57 LOADB                            R7 0
       58 GETTABLEKS                       R8 R4 K20 ["body"]
       60 RETURN                           R7 2
       61 GETTABLEKS                       R5 R4 K15 ["kind"]
       63 JUMPIFNOTEQKS                    R5 K21 ["HttpStatusCode"] ; [+21]
       65 GETUPVAL                         R5 3
       66 LOADK                            R7 K22 ["rpc(gateway) http error method=%* status=%* body=%*"]
       67 MOVE                             R9 R0
       68 GETTABLEKS                       R11 R4 K23 ["statusCode"]
       70 FASTCALL1                        TOSTRING R11 ; [+2]
       71 GETIMPORT                        R10 K25 [tostring]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R4 K20 ["body"]
       76 NAMECALL                         R7 R7 K9 ["format"]
       78 CALL                             R7 4 1
       79 MOVE                             R6 R7
       80 CALL                             R5 1 0
       81 LOADB                            R5 0
       82 GETTABLEKS                       R6 R4 K20 ["body"]
       84 RETURN                           R5 2
       85 GETUPVAL                         R5 3
       86 LOADK                            R7 K26 ["rpc(gateway) network error method=%* detail=%*"]
       87 MOVE                             R9 R0
       88 GETTABLEKS                       R10 R4 K27 ["networkError"]
       90 NAMECALL                         R7 R7 K9 ["format"]
       92 CALL                             R7 3 1
       93 MOVE                             R6 R7
       94 CALL                             R5 1 0
       95 LOADB                            R5 0
       96 GETTABLEKS                       R6 R4 K27 ["networkError"]
       98 RETURN                           R5 2

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 DUPTABLE                         R6 K6 [{[1] = "2.0", ["id"] = 1, ["method"], ["params"]}]
        2 SETTABLEKS                       R0 R6 K4 ["method"]
        4 SETTABLEKS                       R1 R6 K5 ["params"]
        6 NAMECALL                         R4 R4 K7 ["JSONEncode"]
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 LOADK                            R7 K8 ["rpc(override) method=%* url=%*/acp body=%*"]
       11 MOVE                             R9 R0
       12 MOVE                             R10 R3
       13 MOVE                             R11 R4
       14 NAMECALL                         R7 R7 K9 ["format"]
       16 CALL                             R7 4 1
       17 MOVE                             R6 R7
       18 CALL                             R5 1 0
       19 NEWTABLE                         R5 4 0
       21 LOADK                            R6 K10 ["application/json"]
       22 SETTABLEKS                       R6 R5 K11 ["Content-Type"]
       24 FASTCALL1                        TOSTRING R2 ; [+3]
       25 MOVE                             R7 R2
       26 GETIMPORT                        R6 K13 [tostring]
       28 CALL                             R6 1 1
       29 SETTABLEKS                       R6 R5 K14 ["X-Roblox-User-Id"]
       31 FASTCALL1                        TOSTRING R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K13 [tostring]
       35 CALL                             R6 1 1
       36 SETTABLEKS                       R6 R5 K15 ["robloxctx-authenticated-userid"]
       38 LOADNIL                          R6
       39 GETIMPORT                        R7 K17 [pcall]
       41 NEWCLOSURE                       R8 P0
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 CAPTURE                          REF R6
       47 CALL                             R7 1 2
       48 FASTCALL1                        TYPEOF R6 ; [+3]
       49 MOVE                             R10 R6
       50 GETIMPORT                        R9 K19 [typeof]
       52 CALL                             R9 1 1
       53 JUMPIFEQKS                       R9 K20 ["table"] ; [+40]
       55 JUMPIFNOT                        R7 ; [+2]
       56 MOVE                             R9 R6
       57 JUMP                             ; [+1]
       58 MOVE                             R9 R8
       59 GETUPVAL                         R10 3
       60 LOADK                            R12 K21 ["rpc no response method=%* detail=%*"]
       61 MOVE                             R14 R0
       62 FASTCALL1                        TYPEOF R9 ; [+3]
       63 MOVE                             R17 R9
       64 GETIMPORT                        R16 K19 [typeof]
       66 CALL                             R16 1 1
       67 JUMPIFNOTEQKS                    R16 K20 ["table"] ; [+12]
       69 GETTABLEKS                       R17 R9 K22 ["responseBody"]
       71 FASTCALL1                        TYPEOF R17 ; [+2]
       72 GETIMPORT                        R16 K19 [typeof]
       74 CALL                             R16 1 1
       75 JUMPIFNOTEQKS                    R16 K23 ["string"] ; [+4]
       77 GETTABLEKS                       R15 R9 K22 ["responseBody"]
       79 JUMP                             ; [+5]
       80 FASTCALL1                        TOSTRING R9 ; [+3]
       81 MOVE                             R16 R9
       82 GETIMPORT                        R15 K13 [tostring]
       84 CALL                             R15 1 1
       85 NAMECALL                         R12 R12 K9 ["format"]
       87 CALL                             R12 3 1
       88 MOVE                             R11 R12
       89 CALL                             R10 1 0
       90 LOADB                            R10 0
       91 MOVE                             R11 R9
       92 CLOSEUPVALS                      R6
       93 RETURN                           R10 2
       94 GETTABLEKS                       R10 R6 K24 ["responseCode"]
       96 FASTCALL1                        TONUMBER R10 ; [+2]
       97 GETIMPORT                        R9 K26 [tonumber]
       99 CALL                             R9 1 1
      100 JUMPIFNOT                        R9 ; [+6]
      101 LOADN                            R10 200
      102 JUMPIFLT                         R9 R10 ; [+4]
      104 LOADN                            R10 300
      105 JUMPIFNOTLE                      R10 R9 ; [+43]
      107 GETUPVAL                         R10 3
      108 LOADK                            R12 K27 ["rpc http error method=%* status=%* body=%*"]
      109 MOVE                             R14 R0
      110 FASTCALL1                        TOSTRING R9 ; [+3]
      111 MOVE                             R16 R9
      112 GETIMPORT                        R15 K13 [tostring]
      114 CALL                             R15 1 1
      115 MOVE                             R17 R6
      116 FASTCALL1                        TYPEOF R17 ; [+3]
      117 MOVE                             R19 R17
      118 GETIMPORT                        R18 K19 [typeof]
      120 CALL                             R18 1 1
      121 JUMPIFNOTEQKS                    R18 K20 ["table"] ; [+12]
      123 GETTABLEKS                       R19 R17 K22 ["responseBody"]
      125 FASTCALL1                        TYPEOF R19 ; [+2]
      126 GETIMPORT                        R18 K19 [typeof]
      128 CALL                             R18 1 1
      129 JUMPIFNOTEQKS                    R18 K23 ["string"] ; [+4]
      131 GETTABLEKS                       R16 R17 K22 ["responseBody"]
      133 JUMP                             ; [+6]
      134 FASTCALL1                        TOSTRING R17 ; [+3]
      135 MOVE                             R19 R17
      136 GETIMPORT                        R18 K13 [tostring]
      138 CALL                             R18 1 1
      139 MOVE                             R16 R18
      140 NAMECALL                         R12 R12 K9 ["format"]
      142 CALL                             R12 4 1
      143 MOVE                             R11 R12
      144 CALL                             R10 1 0
      145 LOADB                            R10 0
      146 MOVE                             R11 R6
      147 CLOSEUPVALS                      R6
      148 RETURN                           R10 2
      149 GETTABLEKS                       R10 R6 K22 ["responseBody"]
      151 FASTCALL1                        TYPEOF R10 ; [+3]
      152 MOVE                             R12 R10
      153 GETIMPORT                        R11 K19 [typeof]
      155 CALL                             R11 1 1
      156 JUMPIFNOTEQKS                    R11 K23 ["string"] ; [+3]
      158 JUMPIFNOTEQKS                    R10 K28 [""] ; [+6]
      160 LOADB                            R11 1
      161 NEWTABLE                         R12 0 0
      163 CLOSEUPVALS                      R6
      164 RETURN                           R11 2
      165 GETIMPORT                        R11 K17 [pcall]
      167 NEWCLOSURE                       R12 P1
      168 CAPTURE                          UPVAL U0
      169 CAPTURE                          VAL R10
      170 CALL                             R11 1 2
      171 JUMPIF                           R11 ; [+5]
      172 LOADB                            R13 1
      173 NEWTABLE                         R14 0 0
      175 CLOSEUPVALS                      R6
      176 RETURN                           R13 2
      177 LOADB                            R13 1
      178 MOVE                             R14 R12
      179 CLOSEUPVALS                      R6
      180 RETURN                           R13 2

PROTO_10:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADK                            R7 K0 ["http://localhost:5000"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["messages"]
        2 LENGTH                           R3 R1
        3 GETTABLE                         R2 R1 R3
        4 JUMPIF                           R2 ; [+2]
        5 LOADK                            R3 K1 [""]
        6 RETURN                           R3 1
        7 NEWTABLE                         R3 0 0
        9 GETTABLEKS                       R4 R2 K2 ["content"]
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 FASTCALL1                        TYPEOF R8 ; [+3]
       15 MOVE                             R10 R8
       16 GETIMPORT                        R9 K4 [typeof]
       18 CALL                             R9 1 1
       19 JUMPIFNOTEQKS                    R9 K5 ["table"] ; [+21]
       21 GETTABLEKS                       R9 R8 K6 ["type"]
       23 JUMPIFNOTEQKS                    R9 K7 ["text"] ; [+17]
       25 GETTABLEKS                       R10 R8 K7 ["text"]
       27 FASTCALL1                        TYPEOF R10 ; [+2]
       28 GETIMPORT                        R9 K4 [typeof]
       30 CALL                             R9 1 1
       31 JUMPIFNOTEQKS                    R9 K8 ["string"] ; [+9]
       33 GETTABLEKS                       R11 R8 K7 ["text"]
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K10 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-28]
       43 GETIMPORT                        R4 K12 [table.concat]
       45 MOVE                             R5 R3
       46 LOADK                            R6 K13 ["\n"]
       47 CALL                             R4 2 -1
       48 RETURN                           R4 -1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["done"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["callback"]
        6 DUPTABLE                         R2 K5 [{["type"] = "error", ["error"] = "request_failed"}]
        7 CALL                             R1 1 0
        8 LOADB                            R1 1
        9 SETTABLEKS                       R1 R0 K0 ["done"]
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["detail"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["message"]
        4 NAMECALL                         R0 R0 K1 ["JSONDecode"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 DUPTABLE                         R1 K3 [{"sessionId"}]
        8 GETUPVAL                         R2 1
        9 SETTABLEKS                       R2 R1 K2 ["sessionId"]
       11 GETUPVAL                         R2 2
       12 LOADK                            R3 K4 ["session/cancel"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R0
       15 LOADK                            R6 K5 ["http://localhost:5000"]
       16 CALL                             R2 4 1
       17 RETURN                           R0 0

PROTO_19:
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
      106 JUMPIFNOTEQKS                    R12 K10 ["string"] ; [+62]
      108 JUMPIFEQKS                       R11 K17 [""] ; [+60]
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
      128 JUMPIFNOTEQKS                    R9 K21 ["tool_call_update"] ; [+40]
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
      154 JUMPIFNOTEQKB                    R12 TRUE ; [+14]
      156 GETIMPORT                        R13 K27 [task.spawn]
      158 NEWCLOSURE                       R14 P2
      159 CAPTURE                          UPVAL U4
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U5
      162 CALL                             R13 1 0
      163 GETUPVAL                         R13 3
      164 MOVE                             R14 R4
      165 CALL                             R13 1 0
      166 GETUPVAL                         R13 1
      167 LOADNIL                          R14
      168 SETTABLE                         R14 R13 R3
      169 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["namespace"]
        2 JUMPIFEQKS                       R1 K1 ["AssistantPlugin"] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
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
       16 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getUserId"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["threadId"]
       11 GETTABLE                         R1 R2 R3
       12 JUMPIF                           R1 ; [+124]
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
       50 GETUPVAL                         R9 5
       51 LOADK                            R10 K25 ["session/new"]
       52 MOVE                             R11 R8
       53 MOVE                             R12 R0
       54 LOADK                            R13 K26 ["http://localhost:5000"]
       55 CALL                             R9 4 2
       56 MOVE                             R6 R9
       57 MOVE                             R7 R10
       58 JUMPIFNOT                        R6 ; [+20]
       59 FASTCALL1                        TYPEOF R7 ; [+3]
       60 MOVE                             R10 R7
       61 GETIMPORT                        R9 K28 [typeof]
       63 CALL                             R9 1 1
       64 JUMPIFNOTEQKS                    R9 K29 ["table"] ; [+14]
       66 GETTABLEKS                       R10 R7 K30 ["result"]
       68 FASTCALL1                        TYPEOF R10 ; [+2]
       69 GETIMPORT                        R9 K28 [typeof]
       71 CALL                             R9 1 1
       72 JUMPIFNOTEQKS                    R9 K29 ["table"] ; [+6]
       74 GETTABLEKS                       R8 R7 K30 ["result"]
       76 GETTABLEKS                       R8 R8 K31 ["sessionId"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R8
       80 FASTCALL1                        TYPEOF R8 ; [+3]
       81 MOVE                             R10 R8
       82 GETIMPORT                        R9 K28 [typeof]
       84 CALL                             R9 1 1
       85 JUMPIFNOTEQKS                    R9 K32 ["string"] ; [+3]
       87 JUMPIFNOTEQKS                    R8 K33 [""] ; [+35]
       89 GETUPVAL                         R9 6
       90 LOADK                            R11 K34 ["session/new failed detail=%*"]
       91 FASTCALL1                        TYPEOF R7 ; [+3]
       92 MOVE                             R15 R7
       93 GETIMPORT                        R14 K28 [typeof]
       95 CALL                             R14 1 1
       96 JUMPIFNOTEQKS                    R14 K29 ["table"] ; [+12]
       98 GETTABLEKS                       R15 R7 K35 ["responseBody"]
      100 FASTCALL1                        TYPEOF R15 ; [+2]
      101 GETIMPORT                        R14 K28 [typeof]
      103 CALL                             R14 1 1
      104 JUMPIFNOTEQKS                    R14 K32 ["string"] ; [+4]
      106 GETTABLEKS                       R13 R7 K35 ["responseBody"]
      108 JUMP                             ; [+5]
      109 FASTCALL1                        TOSTRING R7 ; [+3]
      110 MOVE                             R14 R7
      111 GETIMPORT                        R13 K37 [tostring]
      113 CALL                             R13 1 1
      114 NAMECALL                         R11 R11 K38 ["format"]
      116 CALL                             R11 2 1
      117 MOVE                             R10 R11
      118 CALL                             R9 1 0
      119 GETUPVAL                         R9 4
      120 DUPTABLE                         R10 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      121 CALL                             R9 1 0
      122 RETURN                           R0 0
      123 MOVE                             R1 R8
      124 GETUPVAL                         R9 1
      125 GETUPVAL                         R10 2
      126 GETTABLEKS                       R10 R10 K2 ["threadId"]
      128 SETTABLE                         R1 R9 R10
      129 GETUPVAL                         R9 7
      130 LOADK                            R10 K39 ["session/new ok"]
      131 GETUPVAL                         R11 2
      132 GETTABLEKS                       R11 R11 K2 ["threadId"]
      134 LOADK                            R12 K40 ["->"]
      135 MOVE                             R13 R1
      136 CALL                             R9 4 0
      137 DUPTABLE                         R2 K46 [{["callback"], ["started"] = False, ["nextContentId"] = 0, ["done"] = False}]
      138 GETUPVAL                         R3 4
      139 SETTABLEKS                       R3 R2 K41 ["callback"]
      141 GETUPVAL                         R3 8
      142 SETTABLE                         R2 R3 R1
      143 GETUPVAL                         R3 9
      144 GETUPVAL                         R4 2
      145 CALL                             R3 1 1
      146 JUMPIFNOTEQKS                    R3 K33 [""] ; [+12]
      148 GETUPVAL                         R4 6
      149 LOADK                            R6 K47 ["session/prompt skipped: empty prompt text (messages=%*)"]
      150 GETUPVAL                         R9 2
      151 GETTABLEKS                       R9 R9 K48 ["messages"]
      153 LENGTH                           R8 R9
      154 NAMECALL                         R6 R6 K38 ["format"]
      156 CALL                             R6 2 1
      157 MOVE                             R5 R6
      158 CALL                             R4 1 0
      159 DUPTABLE                         R6 K50 [{"sessionId", "prompt"}]
      160 SETTABLEKS                       R1 R6 K31 ["sessionId"]
      162 NEWTABLE                         R7 0 1
      164 DUPTABLE                         R8 K52 [{["type"] = "text", ["text"]}]
      165 SETTABLEKS                       R3 R8 K51 ["text"]
      167 SETLIST                          R7 R8 1 [1]
      169 SETTABLEKS                       R7 R6 K49 ["prompt"]
      171 GETUPVAL                         R7 5
      172 LOADK                            R8 K53 ["session/prompt"]
      173 MOVE                             R9 R6
      174 MOVE                             R10 R0
      175 LOADK                            R11 K26 ["http://localhost:5000"]
      176 CALL                             R7 4 2
      177 MOVE                             R4 R7
      178 MOVE                             R5 R8
      179 JUMPIF                           R4 ; [+45]
      180 GETUPVAL                         R6 6
      181 LOADK                            R8 K54 ["session/prompt failed sessionId=%* detail=%*"]
      182 MOVE                             R10 R1
      183 FASTCALL1                        TYPEOF R5 ; [+3]
      184 MOVE                             R13 R5
      185 GETIMPORT                        R12 K28 [typeof]
      187 CALL                             R12 1 1
      188 JUMPIFNOTEQKS                    R12 K29 ["table"] ; [+12]
      190 GETTABLEKS                       R13 R5 K35 ["responseBody"]
      192 FASTCALL1                        TYPEOF R13 ; [+2]
      193 GETIMPORT                        R12 K28 [typeof]
      195 CALL                             R12 1 1
      196 JUMPIFNOTEQKS                    R12 K32 ["string"] ; [+4]
      198 GETTABLEKS                       R11 R5 K35 ["responseBody"]
      200 JUMP                             ; [+5]
      201 FASTCALL1                        TOSTRING R5 ; [+3]
      202 MOVE                             R12 R5
      203 GETIMPORT                        R11 K37 [tostring]
      205 CALL                             R11 1 1
      206 NAMECALL                         R8 R8 K38 ["format"]
      208 CALL                             R8 3 1
      209 MOVE                             R7 R8
      210 CALL                             R6 1 0
      211 GETUPVAL                         R6 8
      212 LOADNIL                          R7
      213 SETTABLE                         R7 R6 R1
      214 GETTABLEKS                       R6 R2 K45 ["done"]
      216 JUMPIFNOT                        R6 ; [+1]
      217 RETURN                           R0 0
      218 GETTABLEKS                       R6 R2 K41 ["callback"]
      220 DUPTABLE                         R7 K15 [{["type"] = "error", ["error"] = "request_failed"}]
      221 CALL                             R6 1 0
      222 LOADB                            R6 1
      223 SETTABLEKS                       R6 R2 K45 ["done"]
      225 RETURN                           R0 0

PROTO_24:
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
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantNotificationManager"]
        9 JUMPIF                           R6 ; [+5]
       10 LOADK                            R8 K1 ["NotificationService"]
       11 NAMECALL                         R6 R0 K2 ["GetService"]
       13 CALL                             R6 2 1
       14 MOVE                             R5 R6
       15 DUPCLOSURE                       R6 K3 [PROTO_12]
       16 DUPCLOSURE                       R7 K4 [PROTO_13]
       17 CAPTURE                          VAL R6
       18 DUPCLOSURE                       R8 K5 [PROTO_14]
       19 CAPTURE                          VAL R6
       20 DUPCLOSURE                       R9 K6 [PROTO_15]
       21 NEWCLOSURE                       R10 P4
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R8
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 NEWCLOSURE                       R11 P5
       29 CAPTURE                          REF R4
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R10
       33 CAPTURE                          REF R5
       34 JUMPIFNOT                        R1 ; [+9]
       35 GETTABLEKS                       R12 R1 K7 ["Unloading"]
       37 NEWCLOSURE                       R14 P6
       38 CAPTURE                          REF R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 NAMECALL                         R12 R12 K8 ["Connect"]
       43 CALL                             R12 2 0
       44 NEWCLOSURE                       R12 P7
       45 CAPTURE                          VAL R11
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R2
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          VAL R3
       53 CAPTURE                          UPVAL U8
       54 CLOSEUPVALS                      R4
       55 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Generated"]
       26 GETTABLEKS                       R4 R4 K14 ["OpenAPI"]
       28 GETTABLEKS                       R4 R4 K15 ["CreatorAgentsService"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Packages"]
       35 GETTABLEKS                       R5 R5 K16 ["Framework"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K12 ["Src"]
       42 GETTABLEKS                       R6 R6 K17 ["Util"]
       44 GETTABLEKS                       R6 R6 K18 ["NotificationManagerStore"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K12 ["Src"]
       51 GETTABLEKS                       R7 R7 K17 ["Util"]
       53 GETTABLEKS                       R7 R7 K19 ["StudioGameMetadata"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K9 [require]
       58 GETTABLEKS                       R8 R0 K12 ["Src"]
       60 GETTABLEKS                       R8 R8 K20 ["Flags"]
       62 CALL                             R7 1 1
       63 GETTABLEKS                       R8 R2 K21 ["Guest"]
       65 GETTABLEKS                       R8 R8 K22 ["Environment"]
       67 GETTABLEKS                       R9 R4 K23 ["Http"]
       69 GETTABLEKS                       R9 R9 K24 ["Networking"]
       71 GETTABLEKS                       R10 R9 K25 ["new"]
       73 DUPTABLE                         R11 K29 [{["isInternal"] = True, ["loggingLevel"]}]
       74 GETTABLEKS                       R13 R7 K30 ["FFlagDebugLogAssistantUI"]
       76 JUMPIFNOT                        R13 ; [+2]
       77 LOADN                            R12 4
       78 JUMP                             ; [+1]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K28 ["loggingLevel"]
       82 CALL                             R10 1 1
       83 DUPCLOSURE                       R11 K31 [PROTO_0]
       84 CAPTURE                          VAL R7
       85 DUPCLOSURE                       R12 K32 [PROTO_1]
       86 DUPCLOSURE                       R13 K33 [PROTO_2]
       87 DUPCLOSURE                       R14 K34 [PROTO_4]
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R12
       92 DUPCLOSURE                       R15 K35 [PROTO_9]
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R12
       97 DUPCLOSURE                       R16 K36 [PROTO_10]
       98 CAPTURE                          VAL R15
       99 DUPCLOSURE                       R17 K37 [PROTO_11]
      100 DUPCLOSURE                       R18 K38 [PROTO_25]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R15
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R17
      110 DUPTABLE                         R19 K40 [{"createRequestHandler"}]
      111 SETTABLEKS                       R18 R19 K39 ["createRequestHandler"]
      113 RETURN                           R19 1

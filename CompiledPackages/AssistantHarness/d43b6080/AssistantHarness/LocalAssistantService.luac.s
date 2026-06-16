PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reject"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"code", "message"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["code"]
        4 LOADK                            R3 K3 ["not_implemented: %*"]
        5 MOVE                             R5 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 SETTABLEKS                       R2 R1 K1 ["message"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R1
       15 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"sessionId", "update"}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        5 SETTABLEKS                       R0 R3 K1 ["update"]
        7 NAMECALL                         R1 R1 K3 ["sendSessionUpdate"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 DUPTABLE                         R4 K2 [{"sessionUpdate", "content"}]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K3 ["AgentThoughtChunk"]
        7 SETTABLEKS                       R5 R4 K0 ["sessionUpdate"]
        9 DUPTABLE                         R5 K6 [{"type", "text"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K7 ["Text"]
       13 SETTABLEKS                       R6 R5 K4 ["type"]
       15 LOADK                            R6 K8 ["Thinking..."]
       16 SETTABLEKS                       R6 R5 K5 ["text"]
       18 SETTABLEKS                       R5 R4 K1 ["content"]
       20 DUPTABLE                         R7 K11 [{"sessionId", "update"}]
       21 SETTABLEKS                       R1 R7 K9 ["sessionId"]
       23 SETTABLEKS                       R4 R7 K10 ["update"]
       25 NAMECALL                         R5 R0 K12 ["sendSessionUpdate"]
       27 CALL                             R5 2 0
       28 GETIMPORT                        R4 K15 [task.wait]
       30 LOADK                            R5 K16 [0.05]
       31 CALL                             R4 1 0
       32 DUPTABLE                         R4 K2 [{"sessionUpdate", "content"}]
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K17 ["AgentMessageChunk"]
       36 SETTABLEKS                       R5 R4 K0 ["sessionUpdate"]
       38 DUPTABLE                         R5 K6 [{"type", "text"}]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K7 ["Text"]
       42 SETTABLEKS                       R6 R5 K4 ["type"]
       44 LOADK                            R6 K18 ["Hello from the harness stub. "]
       45 SETTABLEKS                       R6 R5 K5 ["text"]
       47 SETTABLEKS                       R5 R4 K1 ["content"]
       49 DUPTABLE                         R7 K11 [{"sessionId", "update"}]
       50 SETTABLEKS                       R1 R7 K9 ["sessionId"]
       52 SETTABLEKS                       R4 R7 K10 ["update"]
       54 NAMECALL                         R5 R0 K12 ["sendSessionUpdate"]
       56 CALL                             R5 2 0
       57 GETIMPORT                        R4 K15 [task.wait]
       59 LOADK                            R5 K16 [0.05]
       60 CALL                             R4 1 0
       61 DUPTABLE                         R4 K24 [{"toolCallId", "title", "kind", "status", "rawInput"}]
       62 GETUPVAL                         R5 2
       63 GETTABLEKS                       R5 R5 K25 ["CallId"]
       65 SETTABLEKS                       R5 R4 K19 ["toolCallId"]
       67 GETUPVAL                         R5 2
       68 GETTABLEKS                       R5 R5 K26 ["Name"]
       70 SETTABLEKS                       R5 R4 K20 ["title"]
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K27 ["Execute"]
       75 SETTABLEKS                       R5 R4 K21 ["kind"]
       77 GETUPVAL                         R5 4
       78 GETTABLEKS                       R5 R5 K28 ["Pending"]
       80 SETTABLEKS                       R5 R4 K22 ["status"]
       82 GETUPVAL                         R5 2
       83 GETTABLEKS                       R5 R5 K29 ["Args"]
       85 SETTABLEKS                       R5 R4 K23 ["rawInput"]
       87 DUPTABLE                         R5 K30 [{"sessionUpdate", "toolCallId", "title", "kind", "status", "rawInput"}]
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R6 R6 K31 ["ToolCall"]
       91 SETTABLEKS                       R6 R5 K0 ["sessionUpdate"]
       93 GETUPVAL                         R6 2
       94 GETTABLEKS                       R6 R6 K25 ["CallId"]
       96 SETTABLEKS                       R6 R5 K19 ["toolCallId"]
       98 GETUPVAL                         R6 2
       99 GETTABLEKS                       R6 R6 K26 ["Name"]
      101 SETTABLEKS                       R6 R5 K20 ["title"]
      103 GETUPVAL                         R6 3
      104 GETTABLEKS                       R6 R6 K27 ["Execute"]
      106 SETTABLEKS                       R6 R5 K21 ["kind"]
      108 GETUPVAL                         R6 4
      109 GETTABLEKS                       R6 R6 K28 ["Pending"]
      111 SETTABLEKS                       R6 R5 K22 ["status"]
      113 GETUPVAL                         R6 2
      114 GETTABLEKS                       R6 R6 K29 ["Args"]
      116 SETTABLEKS                       R6 R5 K23 ["rawInput"]
      118 DUPTABLE                         R8 K11 [{"sessionId", "update"}]
      119 SETTABLEKS                       R1 R8 K9 ["sessionId"]
      121 SETTABLEKS                       R5 R8 K10 ["update"]
      123 NAMECALL                         R6 R0 K12 ["sendSessionUpdate"]
      125 CALL                             R6 2 0
      126 GETIMPORT                        R5 K15 [task.wait]
      128 LOADK                            R6 K16 [0.05]
      129 CALL                             R5 1 0
      130 GETTABLEKS                       R5 R2 K32 ["checkPermission"]
      132 DUPTABLE                         R6 K35 [{"sessionId", "toolName", "toolCall"}]
      133 SETTABLEKS                       R1 R6 K9 ["sessionId"]
      135 GETUPVAL                         R7 2
      136 GETTABLEKS                       R7 R7 K26 ["Name"]
      138 SETTABLEKS                       R7 R6 K33 ["toolName"]
      140 SETTABLEKS                       R4 R6 K34 ["toolCall"]
      142 CALL                             R5 1 1
      143 JUMPIF                           R5 ; [+77]
      144 DUPTABLE                         R6 K36 [{"sessionUpdate", "toolCallId", "status", "content"}]
      145 GETUPVAL                         R7 0
      146 GETTABLEKS                       R7 R7 K37 ["ToolCallUpdate"]
      148 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      150 GETUPVAL                         R7 2
      151 GETTABLEKS                       R7 R7 K25 ["CallId"]
      153 SETTABLEKS                       R7 R6 K19 ["toolCallId"]
      155 GETUPVAL                         R7 4
      156 GETTABLEKS                       R7 R7 K38 ["Failed"]
      158 SETTABLEKS                       R7 R6 K22 ["status"]
      160 NEWTABLE                         R7 0 1
      162 DUPTABLE                         R8 K39 [{"type", "content"}]
      163 GETUPVAL                         R9 5
      164 GETTABLEKS                       R9 R9 K40 ["Content"]
      166 SETTABLEKS                       R9 R8 K4 ["type"]
      168 DUPTABLE                         R9 K6 [{"type", "text"}]
      169 GETUPVAL                         R10 1
      170 GETTABLEKS                       R10 R10 K7 ["Text"]
      172 SETTABLEKS                       R10 R9 K4 ["type"]
      174 LOADK                            R10 K41 ["Permission denied for mock insert_asset call."]
      175 SETTABLEKS                       R10 R9 K5 ["text"]
      177 SETTABLEKS                       R9 R8 K1 ["content"]
      179 SETLIST                          R7 R8 1 [1]
      181 SETTABLEKS                       R7 R6 K1 ["content"]
      183 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      184 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      186 SETTABLEKS                       R6 R9 K10 ["update"]
      188 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      190 CALL                             R7 2 0
      191 GETIMPORT                        R6 K15 [task.wait]
      193 LOADK                            R7 K16 [0.05]
      194 CALL                             R6 1 0
      195 DUPTABLE                         R6 K2 [{"sessionUpdate", "content"}]
      196 GETUPVAL                         R7 0
      197 GETTABLEKS                       R7 R7 K17 ["AgentMessageChunk"]
      199 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      201 DUPTABLE                         R7 K6 [{"type", "text"}]
      202 GETUPVAL                         R8 1
      203 GETTABLEKS                       R8 R8 K7 ["Text"]
      205 SETTABLEKS                       R8 R7 K4 ["type"]
      207 LOADK                            R8 K42 ["Tool run blocked by permission policy."]
      208 SETTABLEKS                       R8 R7 K5 ["text"]
      210 SETTABLEKS                       R7 R6 K1 ["content"]
      212 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      213 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      215 SETTABLEKS                       R6 R9 K10 ["update"]
      217 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      219 CALL                             R7 2 0
      220 RETURN                           R0 0
      221 DUPTABLE                         R6 K36 [{"sessionUpdate", "toolCallId", "status", "content"}]
      222 GETUPVAL                         R7 0
      223 GETTABLEKS                       R7 R7 K37 ["ToolCallUpdate"]
      225 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      227 GETUPVAL                         R7 2
      228 GETTABLEKS                       R7 R7 K25 ["CallId"]
      230 SETTABLEKS                       R7 R6 K19 ["toolCallId"]
      232 GETUPVAL                         R7 4
      233 GETTABLEKS                       R7 R7 K43 ["Completed"]
      235 SETTABLEKS                       R7 R6 K22 ["status"]
      237 NEWTABLE                         R7 0 1
      239 DUPTABLE                         R8 K39 [{"type", "content"}]
      240 GETUPVAL                         R9 5
      241 GETTABLEKS                       R9 R9 K40 ["Content"]
      243 SETTABLEKS                       R9 R8 K4 ["type"]
      245 DUPTABLE                         R9 K6 [{"type", "text"}]
      246 GETUPVAL                         R10 1
      247 GETTABLEKS                       R10 R10 K7 ["Text"]
      249 SETTABLEKS                       R10 R9 K4 ["type"]
      251 LOADK                            R10 K44 ["Mock tool returned: inserted asset \"StubAsset\"."]
      252 SETTABLEKS                       R10 R9 K5 ["text"]
      254 SETTABLEKS                       R9 R8 K1 ["content"]
      256 SETLIST                          R7 R8 1 [1]
      258 SETTABLEKS                       R7 R6 K1 ["content"]
      260 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      261 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      263 SETTABLEKS                       R6 R9 K10 ["update"]
      265 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      267 CALL                             R7 2 0
      268 GETIMPORT                        R6 K15 [task.wait]
      270 LOADK                            R7 K16 [0.05]
      271 CALL                             R6 1 0
      272 DUPTABLE                         R6 K2 [{"sessionUpdate", "content"}]
      273 GETUPVAL                         R7 0
      274 GETTABLEKS                       R7 R7 K17 ["AgentMessageChunk"]
      276 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      278 DUPTABLE                         R7 K6 [{"type", "text"}]
      279 GETUPVAL                         R8 1
      280 GETTABLEKS                       R8 R8 K7 ["Text"]
      282 SETTABLEKS                       R8 R7 K4 ["type"]
      284 LOADK                            R8 K45 ["All done."]
      285 SETTABLEKS                       R8 R7 K5 ["text"]
      287 SETTABLEKS                       R7 R6 K1 ["content"]
      289 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      290 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      292 SETTABLEKS                       R6 R9 K10 ["update"]
      294 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      296 CALL                             R7 2 0
      297 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K3 [{"sessionId", "toolCall", "options"}]
        2 GETTABLEKS                       R4 R0 K0 ["sessionId"]
        4 SETTABLEKS                       R4 R3 K0 ["sessionId"]
        6 GETTABLEKS                       R4 R0 K1 ["toolCall"]
        8 SETTABLEKS                       R4 R3 K1 ["toolCall"]
       10 GETTABLEKS                       R4 R0 K2 ["options"]
       12 SETTABLEKS                       R4 R3 K2 ["options"]
       14 NAMECALL                         R1 R1 K4 ["requestPermission"]
       16 CALL                             R1 2 1
       17 NAMECALL                         R1 R1 K5 ["await"]
       19 CALL                             R1 1 2
       20 JUMPIF                           R1 ; [+2]
       21 LOADNIL                          R3
       22 RETURN                           R3 1
       23 RETURN                           R2 1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"sessions"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["sessions"]
        5 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"sessionId"}]
        1 GETUPVAL                         R1 0
        2 LOADB                            R3 0
        3 NAMECALL                         R1 R1 K2 ["GenerateGUID"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K0 ["sessionId"]
        8 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["sessionId"]
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 GETUPVAL                         R0 4
        8 DUPTABLE                         R1 K2 [{"stopReason"}]
        9 LOADK                            R2 K3 ["end_turn"]
       10 SETTABLEKS                       R2 R1 K1 ["stopReason"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["close"]
        8 CALL                             R0 1 1
        9 DUPCLOSURE                       R2 K1 [PROTO_12]
       10 NAMECALL                         R0 R0 K2 ["catch"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 2
       14 NAMECALL                         R0 R0 K0 ["close"]
       16 CALL                             R0 1 1
       17 DUPCLOSURE                       R2 K3 [PROTO_13]
       18 NAMECALL                         R0 R0 K2 ["catch"]
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETTABLEKS                       R2 R0 K0 ["permissionStorageProvider"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R1 R0 K0 ["permissionStorageProvider"]
        6 JUMP                             ; [+4]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["createInMemory"]
       10 CALL                             R1 0 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K2 ["new"]
       14 LOADK                            R3 K3 ["acp-client"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K2 ["new"]
       19 LOADK                            R4 K4 ["acp-server"]
       20 CALL                             R3 1 1
       21 MOVE                             R6 R3
       22 LOADB                            R7 0
       23 NAMECALL                         R4 R2 K5 ["bindPeer"]
       25 CALL                             R4 3 0
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K6 ["Server"]
       29 GETTABLEKS                       R4 R4 K2 ["new"]
       31 DUPTABLE                         R5 K9 [{"name", "version"}]
       32 LOADK                            R6 K10 ["roblox-assistant-harness-stub"]
       33 SETTABLEKS                       R6 R5 K7 ["name"]
       35 LOADK                            R6 K11 ["0.0.0"]
       36 SETTABLEKS                       R6 R5 K8 ["version"]
       38 DUPTABLE                         R6 K13 [{"capabilities"}]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K12 ["capabilities"]
       43 CALL                             R4 2 1
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K2 ["new"]
       47 DUPTABLE                         R6 K17 [{"provider", "defaultConfig", "requestPermission"}]
       48 SETTABLEKS                       R1 R6 K14 ["provider"]
       50 GETUPVAL                         R7 4
       51 GETTABLEKS                       R7 R7 K18 ["getPermissionDefaultConfig"]
       53 CALL                             R7 0 1
       54 SETTABLEKS                       R7 R6 K15 ["defaultConfig"]
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R7 R6 K16 ["requestPermission"]
       60 CALL                             R5 1 1
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K19 ["Method"]
       64 GETTABLEKS                       R9 R9 K20 ["Initialize"]
       66 DUPTABLE                         R10 K23 [{"code", "message"}]
       67 GETUPVAL                         R11 6
       68 SETTABLEKS                       R11 R10 K21 ["code"]
       70 LOADK                            R12 K24 ["not_implemented: %*"]
       71 MOVE                             R14 R9
       72 NAMECALL                         R12 R12 K25 ["format"]
       74 CALL                             R12 2 1
       75 MOVE                             R11 R12
       76 SETTABLEKS                       R11 R10 K22 ["message"]
       78 NEWCLOSURE                       R8 P1
       79 CAPTURE                          UPVAL U7
       80 CAPTURE                          VAL R10
       81 NAMECALL                         R6 R4 K26 ["onInitialize"]
       83 CALL                             R6 2 0
       84 GETUPVAL                         R9 5
       85 GETTABLEKS                       R9 R9 K19 ["Method"]
       87 GETTABLEKS                       R9 R9 K27 ["SessionLoad"]
       89 DUPTABLE                         R10 K23 [{"code", "message"}]
       90 GETUPVAL                         R11 6
       91 SETTABLEKS                       R11 R10 K21 ["code"]
       93 LOADK                            R12 K24 ["not_implemented: %*"]
       94 MOVE                             R14 R9
       95 NAMECALL                         R12 R12 K25 ["format"]
       97 CALL                             R12 2 1
       98 MOVE                             R11 R12
       99 SETTABLEKS                       R11 R10 K22 ["message"]
      101 NEWCLOSURE                       R8 P1
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R10
      104 NAMECALL                         R6 R4 K28 ["onLoadSession"]
      106 CALL                             R6 2 0
      107 GETUPVAL                         R9 5
      108 GETTABLEKS                       R9 R9 K19 ["Method"]
      110 GETTABLEKS                       R9 R9 K29 ["SessionSetMode"]
      112 DUPTABLE                         R10 K23 [{"code", "message"}]
      113 GETUPVAL                         R11 6
      114 SETTABLEKS                       R11 R10 K21 ["code"]
      116 LOADK                            R12 K24 ["not_implemented: %*"]
      117 MOVE                             R14 R9
      118 NAMECALL                         R12 R12 K25 ["format"]
      120 CALL                             R12 2 1
      121 MOVE                             R11 R12
      122 SETTABLEKS                       R11 R10 K22 ["message"]
      124 NEWCLOSURE                       R8 P1
      125 CAPTURE                          UPVAL U7
      126 CAPTURE                          VAL R10
      127 NAMECALL                         R6 R4 K30 ["onSetSessionMode"]
      129 CALL                             R6 2 0
      130 DUPCLOSURE                       R8 K31 [PROTO_6]
      131 NAMECALL                         R6 R4 K32 ["onListSessions"]
      133 CALL                             R6 2 0
      134 DUPCLOSURE                       R8 K33 [PROTO_7]
      135 NAMECALL                         R6 R4 K34 ["onCancel"]
      137 CALL                             R6 2 0
      138 DUPCLOSURE                       R8 K35 [PROTO_8]
      139 CAPTURE                          UPVAL U8
      140 NAMECALL                         R6 R4 K36 ["onNewSession"]
      142 CALL                             R6 2 0
      143 NEWCLOSURE                       R8 P5
      144 CAPTURE                          UPVAL U7
      145 CAPTURE                          UPVAL U9
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R5
      148 NAMECALL                         R6 R4 K37 ["onPrompt"]
      150 CALL                             R6 2 0
      151 GETUPVAL                         R6 2
      152 GETTABLEKS                       R6 R6 K38 ["Client"]
      154 GETTABLEKS                       R6 R6 K2 ["new"]
      156 DUPTABLE                         R7 K9 [{"name", "version"}]
      157 LOADK                            R8 K39 ["roblox-assistant-ui"]
      158 SETTABLEKS                       R8 R7 K7 ["name"]
      160 LOADK                            R8 K11 ["0.0.0"]
      161 SETTABLEKS                       R8 R7 K8 ["version"]
      163 DUPTABLE                         R8 K13 [{"capabilities"}]
      164 NEWTABLE                         R9 0 0
      166 SETTABLEKS                       R9 R8 K12 ["capabilities"]
      168 CALL                             R6 2 1
      169 GETTABLEKS                       R9 R3 K40 ["transport"]
      171 NAMECALL                         R7 R4 K41 ["connect"]
      173 CALL                             R7 2 0
      174 GETTABLEKS                       R9 R2 K40 ["transport"]
      176 NAMECALL                         R7 R6 K41 ["connect"]
      178 CALL                             R7 2 0
      179 LOADB                            R7 0
      180 NEWCLOSURE                       R8 P6
      181 CAPTURE                          REF R7
      182 CAPTURE                          VAL R6
      183 CAPTURE                          VAL R4
      184 DUPTABLE                         R9 K44 [{"client", "dispose"}]
      185 SETTABLEKS                       R6 R9 K42 ["client"]
      187 SETTABLEKS                       R8 R9 K43 ["dispose"]
      189 CLOSEUPVALS                      R7
      190 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Acp"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K6 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["Tools"]
       24 GETTABLEKS                       R3 R3 K9 ["HarnessRegistry"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETIMPORT                        R4 K1 [script]
       31 GETTABLEKS                       R4 R4 K6 ["Parent"]
       33 GETTABLEKS                       R4 R4 K10 ["Permissioning"]
       35 GETTABLEKS                       R4 R4 K11 ["PermissionManager"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETIMPORT                        R5 K1 [script]
       42 GETTABLEKS                       R5 R5 K6 ["Parent"]
       44 GETTABLEKS                       R5 R5 K10 ["Permissioning"]
       46 GETTABLEKS                       R5 R5 K12 ["PermissionStorageProvider"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETIMPORT                        R6 K1 [script]
       53 GETTABLEKS                       R6 R6 K6 ["Parent"]
       55 GETTABLEKS                       R6 R6 K7 ["Acp"]
       57 GETTABLEKS                       R6 R6 K13 ["Types"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K6 ["Parent"]
       64 GETTABLEKS                       R7 R7 K14 ["ModelContextProtocol"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K16 [game]
       69 LOADK                            R9 K17 ["HttpService"]
       70 NAMECALL                         R7 R7 K18 ["GetService"]
       72 CALL                             R7 2 1
       73 GETTABLEKS                       R8 R6 K19 ["PeerTransport"]
       75 GETTABLEKS                       R9 R6 K20 ["Promise"]
       77 GETTABLEKS                       R10 R6 K13 ["Types"]
       79 GETTABLEKS                       R10 R10 K21 ["ErrorCode"]
       81 GETTABLEKS                       R10 R10 K22 ["MethodNotFound"]
       83 GETTABLEKS                       R11 R5 K23 ["SessionUpdateKind"]
       85 GETIMPORT                        R12 K26 [table.freeze]
       87 DUPTABLE                         R13 K30 [{"Pending", "Completed", "Failed"}]
       88 LOADK                            R14 K31 ["pending"]
       89 SETTABLEKS                       R14 R13 K27 ["Pending"]
       91 LOADK                            R14 K32 ["completed"]
       92 SETTABLEKS                       R14 R13 K28 ["Completed"]
       94 LOADK                            R14 K33 ["failed"]
       95 SETTABLEKS                       R14 R13 K29 ["Failed"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K26 [table.freeze]
      100 DUPTABLE                         R14 K35 [{"Execute"}]
      101 LOADK                            R15 K36 ["execute"]
      102 SETTABLEKS                       R15 R14 K34 ["Execute"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K26 [table.freeze]
      107 DUPTABLE                         R15 K38 [{"Text"}]
      108 LOADK                            R16 K39 ["text"]
      109 SETTABLEKS                       R16 R15 K37 ["Text"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K26 [table.freeze]
      114 DUPTABLE                         R16 K41 [{"Content"}]
      115 LOADK                            R17 K42 ["content"]
      116 SETTABLEKS                       R17 R16 K40 ["Content"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K26 [table.freeze]
      121 DUPTABLE                         R17 K46 [{"Name", "CallId", "Args"}]
      122 LOADK                            R18 K47 ["insert_asset"]
      123 SETTABLEKS                       R18 R17 K43 ["Name"]
      125 LOADK                            R18 K48 ["stub_tool_1"]
      126 SETTABLEKS                       R18 R17 K44 ["CallId"]
      128 DUPTABLE                         R18 K53 [{"assetId", "assetName", "assetType", "parentPath"}]
      129 LOADK                            R19 K54 ["123456789"]
      130 SETTABLEKS                       R19 R18 K49 ["assetId"]
      132 LOADK                            R19 K55 ["StubAsset"]
      133 SETTABLEKS                       R19 R18 K50 ["assetName"]
      135 LOADK                            R19 K56 ["Model"]
      136 SETTABLEKS                       R19 R18 K51 ["assetType"]
      138 LOADK                            R19 K57 ["game.Workspace"]
      139 SETTABLEKS                       R19 R18 K52 ["parentPath"]
      141 SETTABLEKS                       R18 R17 K45 ["Args"]
      143 CALL                             R16 1 1
      144 DUPCLOSURE                       R17 K58 [PROTO_1]
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R9
      147 DUPCLOSURE                       R18 K59 [PROTO_3]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R15
      154 DUPCLOSURE                       R19 K60 [PROTO_5]
      155 DUPCLOSURE                       R20 K61 [PROTO_15]
      156 CAPTURE                          VAL R4
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R1
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R5
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R7
      165 CAPTURE                          VAL R18
      166 DUPTABLE                         R21 K63 [{"new"}]
      167 SETTABLEKS                       R20 R21 K62 ["new"]
      169 RETURN                           R21 1

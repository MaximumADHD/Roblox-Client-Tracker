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
        9 DUPTABLE                         R5 K7 [{["type"], ["text"] = "Thinking..."}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K8 ["Text"]
       13 SETTABLEKS                       R6 R5 K4 ["type"]
       15 SETTABLEKS                       R5 R4 K1 ["content"]
       17 DUPTABLE                         R7 K11 [{"sessionId", "update"}]
       18 SETTABLEKS                       R1 R7 K9 ["sessionId"]
       20 SETTABLEKS                       R4 R7 K10 ["update"]
       22 NAMECALL                         R5 R0 K12 ["sendSessionUpdate"]
       24 CALL                             R5 2 0
       25 GETIMPORT                        R4 K15 [task.wait]
       27 LOADK                            R5 K16 [0.05]
       28 CALL                             R4 1 0
       29 DUPTABLE                         R4 K2 [{"sessionUpdate", "content"}]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K17 ["AgentMessageChunk"]
       33 SETTABLEKS                       R5 R4 K0 ["sessionUpdate"]
       35 DUPTABLE                         R5 K19 [{["type"], ["text"] = "Hello from the harness stub. "}]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K8 ["Text"]
       39 SETTABLEKS                       R6 R5 K4 ["type"]
       41 SETTABLEKS                       R5 R4 K1 ["content"]
       43 DUPTABLE                         R7 K11 [{"sessionId", "update"}]
       44 SETTABLEKS                       R1 R7 K9 ["sessionId"]
       46 SETTABLEKS                       R4 R7 K10 ["update"]
       48 NAMECALL                         R5 R0 K12 ["sendSessionUpdate"]
       50 CALL                             R5 2 0
       51 GETIMPORT                        R4 K15 [task.wait]
       53 LOADK                            R5 K16 [0.05]
       54 CALL                             R4 1 0
       55 DUPTABLE                         R4 K25 [{"toolCallId", "title", "kind", "status", "rawInput"}]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R5 R5 K26 ["CallId"]
       59 SETTABLEKS                       R5 R4 K20 ["toolCallId"]
       61 GETUPVAL                         R5 2
       62 GETTABLEKS                       R5 R5 K27 ["Name"]
       64 SETTABLEKS                       R5 R4 K21 ["title"]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R5 R5 K28 ["Execute"]
       69 SETTABLEKS                       R5 R4 K22 ["kind"]
       71 GETUPVAL                         R5 4
       72 GETTABLEKS                       R5 R5 K29 ["Pending"]
       74 SETTABLEKS                       R5 R4 K23 ["status"]
       76 GETUPVAL                         R5 2
       77 GETTABLEKS                       R5 R5 K30 ["Args"]
       79 SETTABLEKS                       R5 R4 K24 ["rawInput"]
       81 DUPTABLE                         R5 K31 [{"sessionUpdate", "toolCallId", "title", "kind", "status", "rawInput"}]
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R6 R6 K32 ["ToolCall"]
       85 SETTABLEKS                       R6 R5 K0 ["sessionUpdate"]
       87 GETUPVAL                         R6 2
       88 GETTABLEKS                       R6 R6 K26 ["CallId"]
       90 SETTABLEKS                       R6 R5 K20 ["toolCallId"]
       92 GETUPVAL                         R6 2
       93 GETTABLEKS                       R6 R6 K27 ["Name"]
       95 SETTABLEKS                       R6 R5 K21 ["title"]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R6 R6 K28 ["Execute"]
      100 SETTABLEKS                       R6 R5 K22 ["kind"]
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K29 ["Pending"]
      105 SETTABLEKS                       R6 R5 K23 ["status"]
      107 GETUPVAL                         R6 2
      108 GETTABLEKS                       R6 R6 K30 ["Args"]
      110 SETTABLEKS                       R6 R5 K24 ["rawInput"]
      112 DUPTABLE                         R8 K11 [{"sessionId", "update"}]
      113 SETTABLEKS                       R1 R8 K9 ["sessionId"]
      115 SETTABLEKS                       R5 R8 K10 ["update"]
      117 NAMECALL                         R6 R0 K12 ["sendSessionUpdate"]
      119 CALL                             R6 2 0
      120 GETIMPORT                        R5 K15 [task.wait]
      122 LOADK                            R6 K16 [0.05]
      123 CALL                             R5 1 0
      124 GETTABLEKS                       R5 R2 K33 ["checkPermission"]
      126 DUPTABLE                         R6 K36 [{"sessionId", "toolName", "toolCall"}]
      127 SETTABLEKS                       R1 R6 K9 ["sessionId"]
      129 GETUPVAL                         R7 2
      130 GETTABLEKS                       R7 R7 K27 ["Name"]
      132 SETTABLEKS                       R7 R6 K34 ["toolName"]
      134 SETTABLEKS                       R4 R6 K35 ["toolCall"]
      136 CALL                             R5 1 1
      137 JUMPIF                           R5 ; [+71]
      138 DUPTABLE                         R6 K37 [{"sessionUpdate", "toolCallId", "status", "content"}]
      139 GETUPVAL                         R7 0
      140 GETTABLEKS                       R7 R7 K38 ["ToolCallUpdate"]
      142 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      144 GETUPVAL                         R7 2
      145 GETTABLEKS                       R7 R7 K26 ["CallId"]
      147 SETTABLEKS                       R7 R6 K20 ["toolCallId"]
      149 GETUPVAL                         R7 4
      150 GETTABLEKS                       R7 R7 K39 ["Failed"]
      152 SETTABLEKS                       R7 R6 K23 ["status"]
      154 NEWTABLE                         R7 0 1
      156 DUPTABLE                         R8 K40 [{"type", "content"}]
      157 GETUPVAL                         R9 5
      158 GETTABLEKS                       R9 R9 K41 ["Content"]
      160 SETTABLEKS                       R9 R8 K4 ["type"]
      162 DUPTABLE                         R9 K43 [{["type"], ["text"] = "Permission denied for mock insert_asset call."}]
      163 GETUPVAL                         R10 1
      164 GETTABLEKS                       R10 R10 K8 ["Text"]
      166 SETTABLEKS                       R10 R9 K4 ["type"]
      168 SETTABLEKS                       R9 R8 K1 ["content"]
      170 SETLIST                          R7 R8 1 [1]
      172 SETTABLEKS                       R7 R6 K1 ["content"]
      174 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      175 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      177 SETTABLEKS                       R6 R9 K10 ["update"]
      179 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      181 CALL                             R7 2 0
      182 GETIMPORT                        R6 K15 [task.wait]
      184 LOADK                            R7 K16 [0.05]
      185 CALL                             R6 1 0
      186 DUPTABLE                         R6 K2 [{"sessionUpdate", "content"}]
      187 GETUPVAL                         R7 0
      188 GETTABLEKS                       R7 R7 K17 ["AgentMessageChunk"]
      190 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      192 DUPTABLE                         R7 K45 [{["type"], ["text"] = "Tool run blocked by permission policy."}]
      193 GETUPVAL                         R8 1
      194 GETTABLEKS                       R8 R8 K8 ["Text"]
      196 SETTABLEKS                       R8 R7 K4 ["type"]
      198 SETTABLEKS                       R7 R6 K1 ["content"]
      200 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      201 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      203 SETTABLEKS                       R6 R9 K10 ["update"]
      205 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      207 CALL                             R7 2 0
      208 RETURN                           R0 0
      209 DUPTABLE                         R6 K37 [{"sessionUpdate", "toolCallId", "status", "content"}]
      210 GETUPVAL                         R7 0
      211 GETTABLEKS                       R7 R7 K38 ["ToolCallUpdate"]
      213 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      215 GETUPVAL                         R7 2
      216 GETTABLEKS                       R7 R7 K26 ["CallId"]
      218 SETTABLEKS                       R7 R6 K20 ["toolCallId"]
      220 GETUPVAL                         R7 4
      221 GETTABLEKS                       R7 R7 K46 ["Completed"]
      223 SETTABLEKS                       R7 R6 K23 ["status"]
      225 NEWTABLE                         R7 0 1
      227 DUPTABLE                         R8 K40 [{"type", "content"}]
      228 GETUPVAL                         R9 5
      229 GETTABLEKS                       R9 R9 K41 ["Content"]
      231 SETTABLEKS                       R9 R8 K4 ["type"]
      233 DUPTABLE                         R9 K48 [{["type"], ["text"] = "Mock tool returned: inserted asset \"StubAsset\"."}]
      234 GETUPVAL                         R10 1
      235 GETTABLEKS                       R10 R10 K8 ["Text"]
      237 SETTABLEKS                       R10 R9 K4 ["type"]
      239 SETTABLEKS                       R9 R8 K1 ["content"]
      241 SETLIST                          R7 R8 1 [1]
      243 SETTABLEKS                       R7 R6 K1 ["content"]
      245 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      246 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      248 SETTABLEKS                       R6 R9 K10 ["update"]
      250 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      252 CALL                             R7 2 0
      253 GETIMPORT                        R6 K15 [task.wait]
      255 LOADK                            R7 K16 [0.05]
      256 CALL                             R6 1 0
      257 DUPTABLE                         R6 K2 [{"sessionUpdate", "content"}]
      258 GETUPVAL                         R7 0
      259 GETTABLEKS                       R7 R7 K17 ["AgentMessageChunk"]
      261 SETTABLEKS                       R7 R6 K0 ["sessionUpdate"]
      263 DUPTABLE                         R7 K50 [{["type"], ["text"] = "All done."}]
      264 GETUPVAL                         R8 1
      265 GETTABLEKS                       R8 R8 K8 ["Text"]
      267 SETTABLEKS                       R8 R7 K4 ["type"]
      269 SETTABLEKS                       R7 R6 K1 ["content"]
      271 DUPTABLE                         R9 K11 [{"sessionId", "update"}]
      272 SETTABLEKS                       R1 R9 K9 ["sessionId"]
      274 SETTABLEKS                       R6 R9 K10 ["update"]
      276 NAMECALL                         R7 R0 K12 ["sendSessionUpdate"]
      278 CALL                             R7 2 0
      279 RETURN                           R0 0

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
        8 DUPTABLE                         R1 K3 [{["stopReason"] = "end_turn"}]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

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
       31 DUPTABLE                         R5 K11 [{["name"] = "roblox-assistant-harness-stub", ["version"] = "0.0.0"}]
       32 DUPTABLE                         R6 K13 [{"capabilities"}]
       33 NEWTABLE                         R7 0 0
       35 SETTABLEKS                       R7 R6 K12 ["capabilities"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K2 ["new"]
       41 DUPTABLE                         R6 K17 [{"provider", "defaultConfig", "requestPermission"}]
       42 SETTABLEKS                       R1 R6 K14 ["provider"]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K18 ["getPermissionDefaultConfig"]
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R6 K15 ["defaultConfig"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R6 K16 ["requestPermission"]
       54 CALL                             R5 1 1
       55 GETUPVAL                         R9 5
       56 GETTABLEKS                       R9 R9 K19 ["Method"]
       58 GETTABLEKS                       R9 R9 K20 ["Initialize"]
       60 DUPTABLE                         R10 K23 [{"code", "message"}]
       61 GETUPVAL                         R11 6
       62 SETTABLEKS                       R11 R10 K21 ["code"]
       64 LOADK                            R12 K24 ["not_implemented: %*"]
       65 MOVE                             R14 R9
       66 NAMECALL                         R12 R12 K25 ["format"]
       68 CALL                             R12 2 1
       69 MOVE                             R11 R12
       70 SETTABLEKS                       R11 R10 K22 ["message"]
       72 NEWCLOSURE                       R8 P1
       73 CAPTURE                          UPVAL U7
       74 CAPTURE                          VAL R10
       75 NAMECALL                         R6 R4 K26 ["onInitialize"]
       77 CALL                             R6 2 0
       78 GETUPVAL                         R9 5
       79 GETTABLEKS                       R9 R9 K19 ["Method"]
       81 GETTABLEKS                       R9 R9 K27 ["SessionLoad"]
       83 DUPTABLE                         R10 K23 [{"code", "message"}]
       84 GETUPVAL                         R11 6
       85 SETTABLEKS                       R11 R10 K21 ["code"]
       87 LOADK                            R12 K24 ["not_implemented: %*"]
       88 MOVE                             R14 R9
       89 NAMECALL                         R12 R12 K25 ["format"]
       91 CALL                             R12 2 1
       92 MOVE                             R11 R12
       93 SETTABLEKS                       R11 R10 K22 ["message"]
       95 NEWCLOSURE                       R8 P1
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R10
       98 NAMECALL                         R6 R4 K28 ["onLoadSession"]
      100 CALL                             R6 2 0
      101 GETUPVAL                         R9 5
      102 GETTABLEKS                       R9 R9 K19 ["Method"]
      104 GETTABLEKS                       R9 R9 K29 ["SessionSetMode"]
      106 DUPTABLE                         R10 K23 [{"code", "message"}]
      107 GETUPVAL                         R11 6
      108 SETTABLEKS                       R11 R10 K21 ["code"]
      110 LOADK                            R12 K24 ["not_implemented: %*"]
      111 MOVE                             R14 R9
      112 NAMECALL                         R12 R12 K25 ["format"]
      114 CALL                             R12 2 1
      115 MOVE                             R11 R12
      116 SETTABLEKS                       R11 R10 K22 ["message"]
      118 NEWCLOSURE                       R8 P1
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          VAL R10
      121 NAMECALL                         R6 R4 K30 ["onSetSessionMode"]
      123 CALL                             R6 2 0
      124 DUPCLOSURE                       R8 K31 [PROTO_6]
      125 NAMECALL                         R6 R4 K32 ["onListSessions"]
      127 CALL                             R6 2 0
      128 DUPCLOSURE                       R8 K33 [PROTO_7]
      129 NAMECALL                         R6 R4 K34 ["onCancel"]
      131 CALL                             R6 2 0
      132 DUPCLOSURE                       R8 K35 [PROTO_8]
      133 CAPTURE                          UPVAL U8
      134 NAMECALL                         R6 R4 K36 ["onNewSession"]
      136 CALL                             R6 2 0
      137 NEWCLOSURE                       R8 P5
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          UPVAL U9
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R5
      142 NAMECALL                         R6 R4 K37 ["onPrompt"]
      144 CALL                             R6 2 0
      145 GETUPVAL                         R6 2
      146 GETTABLEKS                       R6 R6 K38 ["Client"]
      148 GETTABLEKS                       R6 R6 K2 ["new"]
      150 DUPTABLE                         R7 K40 [{["name"] = "roblox-assistant-ui", ["version"] = "0.0.0"}]
      151 DUPTABLE                         R8 K13 [{"capabilities"}]
      152 NEWTABLE                         R9 0 0
      154 SETTABLEKS                       R9 R8 K12 ["capabilities"]
      156 CALL                             R6 2 1
      157 GETTABLEKS                       R9 R3 K41 ["transport"]
      159 NAMECALL                         R7 R4 K42 ["connect"]
      161 CALL                             R7 2 0
      162 GETTABLEKS                       R9 R2 K41 ["transport"]
      164 NAMECALL                         R7 R6 K42 ["connect"]
      166 CALL                             R7 2 0
      167 LOADB                            R7 0
      168 NEWCLOSURE                       R8 P6
      169 CAPTURE                          REF R7
      170 CAPTURE                          VAL R6
      171 CAPTURE                          VAL R4
      172 DUPTABLE                         R9 K45 [{"client", "dispose"}]
      173 SETTABLEKS                       R6 R9 K43 ["client"]
      175 SETTABLEKS                       R8 R9 K44 ["dispose"]
      177 CLOSEUPVALS                      R7
      178 RETURN                           R9 1

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
       87 DUPTABLE                         R13 K33 [{["Pending"] = "pending", ["Completed"] = "completed", ["Failed"] = "failed"}]
       88 CALL                             R12 1 1
       89 GETIMPORT                        R13 K26 [table.freeze]
       91 DUPTABLE                         R14 K36 [{["Execute"] = "execute"}]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K26 [table.freeze]
       95 DUPTABLE                         R15 K39 [{["Text"] = "text"}]
       96 CALL                             R14 1 1
       97 GETIMPORT                        R15 K26 [table.freeze]
       99 DUPTABLE                         R16 K42 [{["Content"] = "content"}]
      100 CALL                             R15 1 1
      101 GETIMPORT                        R16 K26 [table.freeze]
      103 DUPTABLE                         R17 K48 [{["Name"] = "insert_asset", ["CallId"] = "stub_tool_1", ["Args"]}]
      104 DUPTABLE                         R18 K57 [{["assetId"] = "123456789", ["assetName"] = "StubAsset", ["assetType"] = "Model", ["parentPath"] = "game.Workspace"}]
      105 SETTABLEKS                       R18 R17 K47 ["Args"]
      107 CALL                             R16 1 1
      108 DUPCLOSURE                       R17 K58 [PROTO_1]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R9
      111 DUPCLOSURE                       R18 K59 [PROTO_3]
      112 CAPTURE                          VAL R11
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R15
      118 DUPCLOSURE                       R19 K60 [PROTO_5]
      119 DUPCLOSURE                       R20 K61 [PROTO_15]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R8
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R18
      130 DUPTABLE                         R21 K63 [{"new"}]
      131 SETTABLEKS                       R20 R21 K62 ["new"]
      133 RETURN                           R21 1

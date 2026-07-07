PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 SETTABLE                         R3 R2 R0
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOTEQ                      R2 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R5 1
       11 GETTABLE                         R4 R5 R0
       12 NOT                              R3 R4
       13 LOADK                            R5 K0 ["Serializer already registered for type: %*"]
       14 MOVE                             R7 R0
       15 NAMECALL                         R5 R5 K1 ["format"]
       17 CALL                             R5 2 1
       18 MOVE                             R4 R5
       19 FASTCALL2                        ASSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K3 [assert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R2 1
       25 SETTABLE                         R1 R2 R0
       26 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["toolResult"]
        2 DUPTABLE                         R2 K7 [{"type", "sourceId", "rootId", "lastServerStreamId", "startTime", "startTimeAfterConfirmation"}]
        3 GETTABLEKS                       R3 R0 K1 ["type"]
        5 SETTABLEKS                       R3 R2 K1 ["type"]
        7 GETTABLEKS                       R3 R0 K2 ["sourceId"]
        9 SETTABLEKS                       R3 R2 K2 ["sourceId"]
       11 GETTABLEKS                       R3 R0 K3 ["rootId"]
       13 SETTABLEKS                       R3 R2 K3 ["rootId"]
       15 GETTABLEKS                       R3 R0 K4 ["lastServerStreamId"]
       17 SETTABLEKS                       R3 R2 K4 ["lastServerStreamId"]
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R3 R1 K5 ["startTime"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K5 ["startTime"]
       26 JUMPIFNOT                        R1 ; [+3]
       27 GETTABLEKS                       R3 R1 K6 ["startTimeAfterConfirmation"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R2 K6 ["startTimeAfterConfirmation"]
       33 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 DUPTABLE                         R3 K3 [{"base", "widget"}]
        5 GETTABLEKS                       R5 R0 K4 ["toolResult"]
        7 DUPTABLE                         R4 K10 [{"type", "sourceId", "rootId", "lastServerStreamId", "startTime", "startTimeAfterConfirmation"}]
        8 GETTABLEKS                       R6 R0 K0 ["type"]
       10 SETTABLEKS                       R6 R4 K0 ["type"]
       12 GETTABLEKS                       R6 R0 K5 ["sourceId"]
       14 SETTABLEKS                       R6 R4 K5 ["sourceId"]
       16 GETTABLEKS                       R6 R0 K6 ["rootId"]
       18 SETTABLEKS                       R6 R4 K6 ["rootId"]
       20 GETTABLEKS                       R6 R0 K7 ["lastServerStreamId"]
       22 SETTABLEKS                       R6 R4 K7 ["lastServerStreamId"]
       24 JUMPIFNOT                        R5 ; [+3]
       25 GETTABLEKS                       R6 R5 K8 ["startTime"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R6
       29 SETTABLEKS                       R6 R4 K8 ["startTime"]
       31 JUMPIFNOT                        R5 ; [+3]
       32 GETTABLEKS                       R6 R5 K9 ["startTimeAfterConfirmation"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 SETTABLEKS                       R6 R4 K9 ["startTimeAfterConfirmation"]
       38 SETTABLEKS                       R4 R3 K1 ["base"]
       40 JUMPIFNOT                        R2 ; [+5]
       41 GETTABLEKS                       R4 R2 K11 ["toMeta"]
       43 MOVE                             R5 R0
       44 CALL                             R4 1 1
       45 JUMP                             ; [+2]
       46 NEWTABLE                         R4 0 0
       48 SETTABLEKS                       R4 R3 K2 ["widget"]
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K12 ["join"]
       53 GETTABLEKS                       R5 R0 K13 ["_meta"]
       55 JUMPIF                           R5 ; [+2]
       56 NEWTABLE                         R5 0 0
       58 DUPTABLE                         R6 K15 [{"roblox_studio_assistant"}]
       59 SETTABLEKS                       R3 R6 K14 ["roblox_studio_assistant"]
       61 CALL                             R4 2 1
       62 GETIMPORT                        R5 K18 [table.create]
       64 LOADN                            R6 2
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R6 R0 K19 ["toolUse"]
       68 JUMPIFNOT                        R6 ; [+48]
       69 GETTABLEKS                       R7 R0 K4 ["toolResult"]
       71 JUMPIFNOT                        R7 ; [+109]
       72 DUPTABLE                         R10 K24 [{[1] = "tool_use", ["id"], ["name"], ["input"], ["_meta"]}]
       73 GETTABLEKS                       R11 R6 K21 ["id"]
       75 SETTABLEKS                       R11 R10 K21 ["id"]
       77 GETTABLEKS                       R11 R6 K22 ["name"]
       79 SETTABLEKS                       R11 R10 K22 ["name"]
       81 GETTABLEKS                       R11 R6 K23 ["input"]
       83 SETTABLEKS                       R11 R10 K23 ["input"]
       85 SETTABLEKS                       R4 R10 K13 ["_meta"]
       87 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       89 MOVE                             R9 R5
       90 GETIMPORT                        R8 K26 [table.insert]
       92 CALL                             R8 2 0
       93 DUPTABLE                         R10 K33 [{[1] = "tool_result", ["toolUseId"], ["content"], ["structuredContent"], ["isError"], ["_meta"] = }]
       94 GETTABLEKS                       R11 R7 K21 ["id"]
       96 SETTABLEKS                       R11 R10 K28 ["toolUseId"]
       98 GETTABLEKS                       R11 R7 K29 ["content"]
      100 SETTABLEKS                       R11 R10 K29 ["content"]
      102 GETTABLEKS                       R11 R7 K30 ["structuredContent"]
      104 SETTABLEKS                       R11 R10 K30 ["structuredContent"]
      106 GETTABLEKS                       R11 R7 K31 ["isError"]
      108 SETTABLEKS                       R11 R10 K31 ["isError"]
      110 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      112 MOVE                             R9 R5
      113 GETIMPORT                        R8 K26 [table.insert]
      115 CALL                             R8 2 0
      116 RETURN                           R5 1
      117 JUMPIFNOT                        R2 ; [+19]
      118 GETTABLEKS                       R7 R2 K34 ["getText"]
      120 JUMPIFNOT                        R7 ; [+16]
      121 DUPTABLE                         R9 K37 [{[1] = "text", ["text"], ["annotations"] = , ["_meta"]}]
      122 GETTABLEKS                       R10 R2 K34 ["getText"]
      124 MOVE                             R11 R0
      125 CALL                             R10 1 1
      126 SETTABLEKS                       R10 R9 K35 ["text"]
      128 SETTABLEKS                       R4 R9 K13 ["_meta"]
      130 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      132 MOVE                             R8 R5
      133 GETIMPORT                        R7 K26 [table.insert]
      135 CALL                             R7 2 0
      136 RETURN                           R5 1
      137 GETUPVAL                         R7 2
      138 GETTABLEKS                       R7 R7 K38 ["Type"]
      140 JUMPIFNOTEQ                      R1 R7 ; [+31]
      142 GETTABLEKS                       R7 R0 K39 ["imageContents"]
      144 LOADNIL                          R8
      145 LOADNIL                          R9
      146 FORGPREP                         R7
      147 DUPTABLE                         R14 K43 [{[1] = "image", ["data"], ["mimeType"], ["annotations"] = , ["_meta"]}]
      148 GETTABLEKS                       R15 R11 K41 ["data"]
      150 SETTABLEKS                       R15 R14 K41 ["data"]
      152 GETTABLEKS                       R15 R11 K42 ["mimeType"]
      154 SETTABLEKS                       R15 R14 K42 ["mimeType"]
      156 JUMPIFNOTEQKN                    R10 K44 [1] ; [+3]
      158 MOVE                             R15 R4
      159 JUMP                             ; [+1]
      160 LOADNIL                          R15
      161 SETTABLEKS                       R15 R14 K13 ["_meta"]
      163 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      165 MOVE                             R13 R5
      166 GETIMPORT                        R12 K26 [table.insert]
      168 CALL                             R12 2 0
      169 FORGLOOP                         R7 2 ; [-23]
      171 RETURN                           R5 1
      172 DUPTABLE                         R9 K46 [{[1] = "text", ["text"] = "", ["annotations"] = , ["_meta"]}]
      173 SETTABLEKS                       R4 R9 K13 ["_meta"]
      175 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      177 MOVE                             R8 R5
      178 GETIMPORT                        R7 K26 [table.insert]
      180 CALL                             R7 2 0
      181 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_meta"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["table"] ; [+4]
        8 LOADNIL                          R1
        9 LOADNIL                          R2
       10 RETURN                           R1 2
       11 GETTABLEKS                       R1 R0 K0 ["_meta"]
       13 GETTABLEKS                       R1 R1 K4 ["roblox_studio_assistant"]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K2 [type]
       19 CALL                             R2 1 1
       20 JUMPIFEQKS                       R2 K3 ["table"] ; [+4]
       22 LOADNIL                          R2
       23 LOADNIL                          R3
       24 RETURN                           R2 2
       25 GETTABLEKS                       R4 R1 K5 ["base"]
       27 FASTCALL1                        TYPE R4 ; [+2]
       28 GETIMPORT                        R3 K2 [type]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+4]
       33 GETTABLEKS                       R2 R1 K5 ["base"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 GETTABLEKS                       R5 R1 K6 ["widget"]
       39 FASTCALL1                        TYPE R5 ; [+2]
       40 GETIMPORT                        R4 K2 [type]
       42 CALL                             R4 1 1
       43 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+4]
       45 GETTABLEKS                       R3 R1 K6 ["widget"]
       47 RETURN                           R2 2
       48 LOADNIL                          R3
       49 RETURN                           R2 2

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["tool_use"] ; [+9]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["get"]
        7 GETTABLEKS                       R3 R0 K3 ["name"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R2 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R2 R1 K0 ["type"]
       15 JUMPIF                           R2 ; [+1]
       16 LOADNIL                          R2
       17 JUMPIFNOT                        R2 ; [+4]
       18 GETUPVAL                         R4 1
       19 GETTABLE                         R3 R4 R2
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R2 1
       22 GETTABLEKS                       R3 R0 K0 ["type"]
       24 JUMPIFNOTEQKS                    R3 K4 ["text"] ; [+5]
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K5 ["Type"]
       29 RETURN                           R3 1
       30 GETTABLEKS                       R3 R0 K0 ["type"]
       32 JUMPIFNOTEQKS                    R3 K6 ["image"] ; [+5]
       34 GETUPVAL                         R3 3
       35 GETTABLEKS                       R3 R3 K5 ["Type"]
       37 RETURN                           R3 1
       38 GETUPVAL                         R3 4
       39 GETTABLEKS                       R3 R3 K5 ["Type"]
       41 RETURN                           R3 1

PROTO_6:
        0 DUPTABLE                         R4 K19 [{[1], ["sourceId"], ["rootId"], ["type"], ["toolUse"] = , ["toolResult"] = , ["generating"] = , ["streaming"] = , ["expanded"] = , ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastServerStreamId"], ["LayoutOrder"], ["_meta"]}]
        1 GETTABLEKS                       R5 R1 K0 ["contentId"]
        3 SETTABLEKS                       R5 R4 K0 ["contentId"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R5 R2 K1 ["sourceId"]
        8 JUMPIF                           R5 ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K1 ["sourceId"]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETTABLEKS                       R5 R2 K2 ["rootId"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADNIL                          R5
       17 SETTABLEKS                       R5 R4 K2 ["rootId"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R5 R2 K3 ["type"]
       22 JUMPIF                           R5 ; [+1]
       23 LOADK                            R5 K20 ["MISSING"]
       24 SETTABLEKS                       R5 R4 K3 ["type"]
       26 GETTABLEKS                       R5 R1 K10 ["createdAt"]
       28 SETTABLEKS                       R5 R4 K10 ["createdAt"]
       30 GETTABLEKS                       R5 R1 K11 ["updatedAt"]
       32 SETTABLEKS                       R5 R4 K11 ["updatedAt"]
       34 GETTABLEKS                       R5 R1 K15 ["isDeleted"]
       36 SETTABLEKS                       R5 R4 K15 ["isDeleted"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R5 R2 K16 ["lastServerStreamId"]
       41 JUMPIF                           R5 ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K16 ["lastServerStreamId"]
       45 SETTABLEKS                       R0 R4 K17 ["LayoutOrder"]
       47 SETTABLEKS                       R3 R4 K18 ["_meta"]
       49 RETURN                           R4 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R7 K0 ["mcpContent"]
       10 GETTABLEKS                       R9 R8 K1 ["type"]
       12 JUMPIFNOTEQKS                    R9 K2 ["tool_result"] ; [+21]
       14 GETTABLEKS                       R9 R8 K3 ["toolUseId"]
       16 JUMPIFEQKNIL                     R9 ; [+17]
       18 GETTABLE                         R10 R2 R9
       19 JUMPIFNOT                        R10 ; [+13]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K4 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R10 ; [+9]
       24 GETIMPORT                        R10 K6 [warn]
       26 LOADK                            R12 K7 ["[Assistant] Duplicate tool_result with toolUseId: %*. Each tool_use should have at most one corresponding tool_result."]
       27 MOVE                             R14 R9
       28 NAMECALL                         R12 R12 K8 ["format"]
       30 CALL                             R12 2 1
       31 MOVE                             R11 R12
       32 CALL                             R10 1 0
       33 SETTABLE                         R8 R2 R9
       34 FORGLOOP                         R3 2 ; [-27]
       36 LOADN                            R3 1
       37 LENGTH                           R4 R0
       38 JUMPIFNOTLE                      R3 R4 ; [+529]
       40 GETTABLE                         R4 R0 R3
       41 GETTABLEKS                       R5 R4 K0 ["mcpContent"]
       43 GETTABLEKS                       R9 R5 K9 ["_meta"]
       45 FASTCALL1                        TYPE R9 ; [+2]
       46 GETIMPORT                        R8 K10 [type]
       48 CALL                             R8 1 1
       49 JUMPIFEQKS                       R8 K11 ["table"] ; [+4]
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 JUMP                             ; [+40]
       54 GETTABLEKS                       R8 R5 K9 ["_meta"]
       56 GETTABLEKS                       R8 R8 K12 ["roblox_studio_assistant"]
       58 FASTCALL1                        TYPE R8 ; [+3]
       59 MOVE                             R10 R8
       60 GETIMPORT                        R9 K10 [type]
       62 CALL                             R9 1 1
       63 JUMPIFEQKS                       R9 K11 ["table"] ; [+4]
       65 LOADNIL                          R6
       66 LOADNIL                          R7
       67 JUMP                             ; [+26]
       68 GETTABLEKS                       R11 R8 K13 ["base"]
       70 FASTCALL1                        TYPE R11 ; [+2]
       71 GETIMPORT                        R10 K10 [type]
       73 CALL                             R10 1 1
       74 JUMPIFNOTEQKS                    R10 K11 ["table"] ; [+4]
       76 GETTABLEKS                       R9 R8 K13 ["base"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 GETTABLEKS                       R12 R8 K14 ["widget"]
       82 FASTCALL1                        TYPE R12 ; [+2]
       83 GETIMPORT                        R11 K10 [type]
       85 CALL                             R11 1 1
       86 JUMPIFNOTEQKS                    R11 K11 ["table"] ; [+4]
       88 GETTABLEKS                       R10 R8 K14 ["widget"]
       90 JUMP                             ; [+1]
       91 LOADNIL                          R10
       92 MOVE                             R6 R9
       93 MOVE                             R7 R10
       94 MOVE                             R8 R7
       95 JUMPIF                           R8 ; [+2]
       96 NEWTABLE                         R8 0 0
       98 MOVE                             R7 R8
       99 FASTCALL2K                       ASSERT R7 K15 ; [+5]
      101 MOVE                             R9 R7
      102 LOADK                            R10 K15 ["Failed to set widgetMeta"]
      103 GETIMPORT                        R8 K17 [assert]
      105 CALL                             R8 2 0
      106 MOVE                             R8 R6
      107 JUMPIF                           R8 ; [+2]
      108 NEWTABLE                         R8 0 0
      110 MOVE                             R6 R8
      111 FASTCALL2K                       ASSERT R6 K18 ; [+5]
      113 MOVE                             R9 R6
      114 LOADK                            R10 K18 ["Failed to set metaBase"]
      115 GETIMPORT                        R8 K17 [assert]
      117 CALL                             R8 2 0
      118 GETUPVAL                         R8 1
      119 LENGTH                           R10 R1
      120 ADDK                             R9 R10 K19 [1]
      121 MOVE                             R10 R4
      122 MOVE                             R11 R6
      123 GETTABLEKS                       R12 R5 K9 ["_meta"]
      125 CALL                             R8 4 1
      126 GETUPVAL                         R10 0
      127 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantSplitToolsAndWidgets"]
      129 JUMPIFNOT                        R10 ; [+45]
      130 MOVE                             R10 R6
      131 GETTABLEKS                       R11 R5 K1 ["type"]
      133 JUMPIFNOTEQKS                    R11 K21 ["tool_use"] ; [+10]
      135 GETUPVAL                         R11 2
      136 GETTABLEKS                       R11 R11 K22 ["get"]
      138 GETTABLEKS                       R12 R5 K23 ["name"]
      140 CALL                             R11 1 1
      141 JUMPIFNOT                        R11 ; [+2]
      142 MOVE                             R9 R11
      143 JUMP                             ; [+33]
      144 JUMPIFNOT                        R10 ; [+3]
      145 GETTABLEKS                       R11 R10 K1 ["type"]
      147 JUMPIF                           R11 ; [+1]
      148 LOADNIL                          R11
      149 JUMPIFNOT                        R11 ; [+5]
      150 GETUPVAL                         R13 3
      151 GETTABLE                         R12 R13 R11
      152 JUMPIFNOT                        R12 ; [+2]
      153 MOVE                             R9 R11
      154 JUMP                             ; [+22]
      155 GETTABLEKS                       R12 R5 K1 ["type"]
      157 JUMPIFNOTEQKS                    R12 K24 ["text"] ; [+5]
      159 GETUPVAL                         R9 4
      160 GETTABLEKS                       R9 R9 K25 ["Type"]
      162 JUMP                             ; [+14]
      163 GETTABLEKS                       R12 R5 K1 ["type"]
      165 JUMPIFNOTEQKS                    R12 K26 ["image"] ; [+5]
      167 GETUPVAL                         R9 5
      168 GETTABLEKS                       R9 R9 K25 ["Type"]
      170 JUMP                             ; [+6]
      171 GETUPVAL                         R9 6
      172 GETTABLEKS                       R9 R9 K25 ["Type"]
      174 JUMP                             ; [+2]
      175 GETTABLEKS                       R9 R8 K1 ["type"]
      177 SETTABLEKS                       R9 R8 K1 ["type"]
      179 LOADNIL                          R10
      180 GETTABLEKS                       R11 R5 K1 ["type"]
      182 JUMPIFNOTEQKS                    R11 K21 ["tool_use"] ; [+175]
      184 GETTABLEKS                       R13 R5 K27 ["id"]
      186 FASTCALL1                        TYPE R13 ; [+2]
      187 GETIMPORT                        R12 K10 [type]
      189 CALL                             R12 1 1
      190 JUMPIFNOTEQKS                    R12 K28 ["string"] ; [+4]
      192 GETTABLEKS                       R11 R5 K27 ["id"]
      194 JUMP                             ; [+1]
      195 LOADK                            R11 K29 [""]
      196 DUPTABLE                         R12 K31 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      197 SETTABLEKS                       R11 R12 K27 ["id"]
      199 GETTABLEKS                       R15 R5 K23 ["name"]
      201 FASTCALL1                        TYPE R15 ; [+2]
      202 GETIMPORT                        R14 K10 [type]
      204 CALL                             R14 1 1
      205 JUMPIFNOTEQKS                    R14 K28 ["string"] ; [+4]
      207 GETTABLEKS                       R13 R5 K23 ["name"]
      209 JUMP                             ; [+1]
      210 LOADK                            R13 K29 [""]
      211 SETTABLEKS                       R13 R12 K23 ["name"]
      213 GETTABLEKS                       R15 R5 K30 ["input"]
      215 FASTCALL1                        TYPE R15 ; [+2]
      216 GETIMPORT                        R14 K10 [type]
      218 CALL                             R14 1 1
      219 JUMPIFNOTEQKS                    R14 K11 ["table"] ; [+4]
      221 GETTABLEKS                       R13 R5 K30 ["input"]
      223 JUMP                             ; [+2]
      224 NEWTABLE                         R13 0 0
      226 SETTABLEKS                       R13 R12 K30 ["input"]
      228 GETTABLE                         R13 R2 R11
      229 DUPTABLE                         R14 K34 [{"toolUseContent", "toolResultContent"}]
      230 SETTABLEKS                       R5 R14 K32 ["toolUseContent"]
      232 SETTABLEKS                       R13 R14 K33 ["toolResultContent"]
      234 JUMPIFNOT                        R9 ; [+3]
      235 GETUPVAL                         R16 7
      236 GETTABLE                         R15 R16 R9
      237 JUMP                             ; [+1]
      238 LOADNIL                          R15
      239 LOADNIL                          R16
      240 JUMPIFNOT                        R15 ; [+7]
      241 GETTABLEKS                       R17 R15 K35 ["fromMeta"]
      243 MOVE                             R18 R7
      244 MOVE                             R19 R14
      245 CALL                             R17 2 1
      246 MOVE                             R16 R17
      247 JUMP                             ; [+8]
      248 GETUPVAL                         R17 0
      249 GETTABLEKS                       R17 R17 K20 ["FFlagAssistantSplitToolsAndWidgets"]
      251 JUMPIFNOT                        R17 ; [+4]
      252 DUPTABLE                         R17 K36 [{"type"}]
      253 SETTABLEKS                       R9 R17 K1 ["type"]
      255 MOVE                             R16 R17
      256 JUMPIF                           R16 ; [+21]
      257 DUPTABLE                         R17 K40 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
      258 GETUPVAL                         R18 6
      259 GETTABLEKS                       R18 R18 K25 ["Type"]
      261 SETTABLEKS                       R18 R17 K1 ["type"]
      263 GETTABLEKS                       R20 R7 K37 ["toolIdentifier"]
      265 FASTCALL1                        TYPEOF R20 ; [+2]
      266 GETIMPORT                        R19 K42 [typeof]
      268 CALL                             R19 1 1
      269 JUMPIFNOTEQKS                    R19 K28 ["string"] ; [+4]
      271 GETTABLEKS                       R18 R7 K37 ["toolIdentifier"]
      273 JUMPIF                           R18 ; [+1]
      274 LOADNIL                          R18
      275 SETTABLEKS                       R18 R17 K37 ["toolIdentifier"]
      277 MOVE                             R16 R17
      278 FASTCALL2K                       ASSERT R16 K43 ; [+5]
      280 MOVE                             R18 R16
      281 LOADK                            R19 K43 ["Failed to set contentMeta for tool_use"]
      282 GETIMPORT                        R17 K17 [assert]
      284 CALL                             R17 2 0
      285 SETTABLEKS                       R12 R16 K44 ["toolUse"]
      287 JUMPIFNOT                        R13 ; [+62]
      288 DUPTABLE                         R17 K50 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      289 SETTABLEKS                       R11 R17 K27 ["id"]
      291 GETTABLEKS                       R18 R12 K23 ["name"]
      293 SETTABLEKS                       R18 R17 K23 ["name"]
      295 GETTABLEKS                       R20 R13 K45 ["content"]
      297 FASTCALL1                        TYPE R20 ; [+2]
      298 GETIMPORT                        R19 K10 [type]
      300 CALL                             R19 1 1
      301 JUMPIFNOTEQKS                    R19 K11 ["table"] ; [+4]
      303 GETTABLEKS                       R18 R13 K45 ["content"]
      305 JUMP                             ; [+2]
      306 NEWTABLE                         R18 0 0
      308 SETTABLEKS                       R18 R17 K45 ["content"]
      310 GETTABLEKS                       R20 R13 K46 ["isError"]
      312 FASTCALL1                        TYPE R20 ; [+2]
      313 GETIMPORT                        R19 K10 [type]
      315 CALL                             R19 1 1
      316 JUMPIFNOTEQKS                    R19 K51 ["boolean"] ; [+4]
      318 GETTABLEKS                       R18 R13 K46 ["isError"]
      320 JUMP                             ; [+1]
      321 LOADNIL                          R18
      322 SETTABLEKS                       R18 R17 K46 ["isError"]
      324 GETTABLEKS                       R20 R13 K47 ["structuredContent"]
      326 FASTCALL1                        TYPE R20 ; [+2]
      327 GETIMPORT                        R19 K10 [type]
      329 CALL                             R19 1 1
      330 JUMPIFNOTEQKS                    R19 K11 ["table"] ; [+4]
      332 GETTABLEKS                       R18 R13 K47 ["structuredContent"]
      334 JUMP                             ; [+1]
      335 LOADNIL                          R18
      336 SETTABLEKS                       R18 R17 K47 ["structuredContent"]
      338 GETTABLEKS                       R19 R6 K48 ["startTime"]
      340 ORK                              R18 R19 K52 [0]
      341 SETTABLEKS                       R18 R17 K48 ["startTime"]
      343 GETTABLEKS                       R19 R6 K49 ["startTimeAfterConfirmation"]
      345 ORK                              R18 R19 K52 [0]
      346 SETTABLEKS                       R18 R17 K49 ["startTimeAfterConfirmation"]
      348 SETTABLEKS                       R17 R16 K53 ["toolResult"]
      350 GETUPVAL                         R17 8
      351 GETTABLEKS                       R17 R17 K54 ["assign"]
      353 MOVE                             R18 R8
      354 MOVE                             R19 R16
      355 CALL                             R17 2 1
      356 MOVE                             R10 R17
      357 JUMP                             ; [+185]
      358 GETTABLEKS                       R11 R5 K1 ["type"]
      360 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      362 JUMP                             ; [+180]
      363 GETTABLEKS                       R11 R5 K1 ["type"]
      365 JUMPIFNOTEQKS                    R11 K26 ["image"] ; [+122]
      367 NEWTABLE                         R11 0 1
      369 MOVE                             R12 R5
      370 SETLIST                          R11 R12 1 [1]
      372 ADDK                             R12 R3 K19 [1]
      373 LENGTH                           R13 R0
      374 JUMPIFNOTLE                      R12 R13 ; [+43]
      376 ADDK                             R13 R3 K19 [1]
      377 GETTABLE                         R12 R0 R13
      378 JUMPIFNOT                        R12 ; [+39]
      379 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      381 LOADB                            R14 0
      382 GETTABLEKS                       R16 R13 K9 ["_meta"]
      384 FASTCALL1                        TYPE R16 ; [+2]
      385 GETIMPORT                        R15 K10 [type]
      387 CALL                             R15 1 1
      388 JUMPIFNOTEQKS                    R15 K11 ["table"] ; [+13]
      390 GETTABLEKS                       R16 R13 K9 ["_meta"]
      392 GETTABLEKS                       R16 R16 K12 ["roblox_studio_assistant"]
      394 FASTCALL1                        TYPE R16 ; [+2]
      395 GETIMPORT                        R15 K10 [type]
      397 CALL                             R15 1 1
      398 JUMPIFEQKS                       R15 K11 ["table"] ; [+2]
      400 LOADB                            R14 0 +1
      401 LOADB                            R14 1
      402 GETTABLEKS                       R15 R13 K1 ["type"]
      404 JUMPIFNOTEQKS                    R15 K26 ["image"] ; [+13]
      406 JUMPIF                           R14 ; [+11]
      407 ADDK                             R3 R3 K19 [1]
      408 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      410 MOVE                             R16 R11
      411 MOVE                             R17 R13
      412 GETIMPORT                        R15 K56 [table.insert]
      414 CALL                             R15 2 0
      415 JUMP                             ; [+1]
      416 JUMP                             ; [+1]
      417 JUMPBACK                         ; [-46]
      418 DUPTABLE                         R12 K58 [{"imageContents"}]
      419 SETTABLEKS                       R11 R12 K57 ["imageContents"]
      421 GETUPVAL                         R14 7
      422 GETUPVAL                         R15 5
      423 GETTABLEKS                       R15 R15 K25 ["Type"]
      425 GETTABLE                         R13 R14 R15
      426 LOADNIL                          R14
      427 JUMPIFNOT                        R13 ; [+6]
      428 GETTABLEKS                       R15 R13 K35 ["fromMeta"]
      430 MOVE                             R16 R7
      431 MOVE                             R17 R12
      432 CALL                             R15 2 1
      433 MOVE                             R14 R15
      434 JUMPIF                           R14 ; [+38]
      435 GETIMPORT                        R15 K60 [table.create]
      437 LENGTH                           R16 R11
      438 CALL                             R15 1 1
      439 MOVE                             R16 R11
      440 LOADNIL                          R17
      441 LOADNIL                          R18
      442 FORGPREP                         R16
      443 DUPTABLE                         R23 K63 [{"type", "data", "mimeType"}]
      444 GETTABLEKS                       R24 R20 K1 ["type"]
      446 SETTABLEKS                       R24 R23 K1 ["type"]
      448 GETTABLEKS                       R24 R20 K61 ["data"]
      450 SETTABLEKS                       R24 R23 K61 ["data"]
      452 GETTABLEKS                       R24 R20 K62 ["mimeType"]
      454 SETTABLEKS                       R24 R23 K62 ["mimeType"]
      456 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      458 MOVE                             R22 R15
      459 GETIMPORT                        R21 K56 [table.insert]
      461 CALL                             R21 2 0
      462 FORGLOOP                         R16 2 ; [-20]
      464 DUPTABLE                         R16 K64 [{["type"], ["imageContents"], ["expanded"] = False}]
      465 GETUPVAL                         R17 5
      466 GETTABLEKS                       R17 R17 K25 ["Type"]
      468 SETTABLEKS                       R17 R16 K1 ["type"]
      470 SETTABLEKS                       R15 R16 K57 ["imageContents"]
      472 MOVE                             R14 R16
      473 FASTCALL2K                       ASSERT R14 K65 ; [+5]
      475 MOVE                             R16 R14
      476 LOADK                            R17 K65 ["Failed to set contentMeta for image"]
      477 GETIMPORT                        R15 K17 [assert]
      479 CALL                             R15 2 0
      480 GETUPVAL                         R15 8
      481 GETTABLEKS                       R15 R15 K54 ["assign"]
      483 MOVE                             R16 R8
      484 MOVE                             R17 R14
      485 CALL                             R15 2 1
      486 MOVE                             R10 R15
      487 JUMP                             ; [+55]
      488 DUPTABLE                         R11 K67 [{"textContent"}]
      489 SETTABLEKS                       R5 R11 K66 ["textContent"]
      491 GETUPVAL                         R13 7
      492 GETTABLE                         R12 R13 R9
      493 JUMPIF                           R12 ; [+5]
      494 GETUPVAL                         R13 7
      495 GETUPVAL                         R14 4
      496 GETTABLEKS                       R14 R14 K25 ["Type"]
      498 GETTABLE                         R12 R13 R14
      499 LOADNIL                          R13
      500 JUMPIFNOT                        R12 ; [+6]
      501 GETTABLEKS                       R14 R12 K35 ["fromMeta"]
      503 MOVE                             R15 R7
      504 MOVE                             R16 R11
      505 CALL                             R14 2 1
      506 MOVE                             R13 R14
      507 JUMPIF                           R13 ; [+21]
      508 DUPTABLE                         R14 K68 [{"type", "text"}]
      509 GETUPVAL                         R15 4
      510 GETTABLEKS                       R15 R15 K25 ["Type"]
      512 SETTABLEKS                       R15 R14 K1 ["type"]
      514 GETTABLEKS                       R17 R5 K24 ["text"]
      516 FASTCALL1                        TYPE R17 ; [+2]
      517 GETIMPORT                        R16 K10 [type]
      519 CALL                             R16 1 1
      520 JUMPIFNOTEQKS                    R16 K28 ["string"] ; [+4]
      522 GETTABLEKS                       R15 R5 K24 ["text"]
      524 JUMP                             ; [+1]
      525 LOADK                            R15 K29 [""]
      526 SETTABLEKS                       R15 R14 K24 ["text"]
      528 MOVE                             R13 R14
      529 FASTCALL2K                       ASSERT R13 K69 ; [+5]
      531 MOVE                             R15 R13
      532 LOADK                            R16 K69 ["Failed to set contentMeta for text or unrecognized type"]
      533 GETIMPORT                        R14 K17 [assert]
      535 CALL                             R14 2 0
      536 GETUPVAL                         R14 8
      537 GETTABLEKS                       R14 R14 K54 ["assign"]
      539 MOVE                             R15 R8
      540 MOVE                             R16 R13
      541 CALL                             R14 2 1
      542 MOVE                             R10 R14
      543 JUMPIFNOT                        R10 ; [+22]
      544 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      546 MOVE                             R12 R1
      547 MOVE                             R13 R10
      548 GETIMPORT                        R11 K56 [table.insert]
      550 CALL                             R11 2 0
      551 GETUPVAL                         R11 9
      552 GETTABLEKS                       R11 R11 K70 ["setContentMetadata"]
      554 GETTABLEKS                       R12 R4 K71 ["contentId"]
      556 DUPTABLE                         R13 K74 [{"threadId", "messageId"}]
      557 GETTABLEKS                       R14 R4 K72 ["threadId"]
      559 SETTABLEKS                       R14 R13 K72 ["threadId"]
      561 GETTABLEKS                       R14 R4 K73 ["messageId"]
      563 SETTABLEKS                       R14 R13 K73 ["messageId"]
      565 CALL                             R11 2 0
      566 ADDK                             R3 R3 K19 [1]
      567 JUMPBACK                         ; [-531]
      568 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["Serializer"]
       27 GETTABLEKS                       R4 R4 K11 ["SerializerTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["ContentWidgets"]
       36 GETTABLEKS                       R5 R5 K13 ["ToolWidgetMappingRegistry"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Flags"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Components"]
       53 GETTABLEKS                       R8 R8 K12 ["ContentWidgets"]
       55 GETTABLEKS                       R8 R8 K17 ["GenericToolContentWidget"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Components"]
       62 GETTABLEKS                       R9 R9 K12 ["ContentWidgets"]
       64 GETTABLEKS                       R9 R9 K18 ["ImageContentWidget"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K16 ["Components"]
       71 GETTABLEKS                       R10 R10 K12 ["ContentWidgets"]
       73 GETTABLEKS                       R10 R10 K19 ["TextContentWidget"]
       75 CALL                             R9 1 1
       76 NEWTABLE                         R10 0 0
       78 NEWTABLE                         R11 0 0
       80 NEWCLOSURE                       R12 P0
       81 CAPTURE                          REF R11
       82 CAPTURE                          REF R10
       83 NEWCLOSURE                       R13 P1
       84 CAPTURE                          REF R11
       85 CAPTURE                          REF R10
       86 DUPCLOSURE                       R14 K20 [PROTO_2]
       87 NEWCLOSURE                       R15 P3
       88 CAPTURE                          REF R10
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R8
       91 DUPCLOSURE                       R16 K21 [PROTO_4]
       92 NEWCLOSURE                       R17 P5
       93 CAPTURE                          VAL R4
       94 CAPTURE                          REF R11
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 DUPCLOSURE                       R18 K22 [PROTO_6]
       99 NEWCLOSURE                       R19 P7
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R4
      103 CAPTURE                          REF R11
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R7
      107 CAPTURE                          REF R10
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R1
      110 NEWCLOSURE                       R20 P8
      111 CAPTURE                          REF R10
      112 CAPTURE                          REF R11
      113 DUPTABLE                         R21 K28 [{"registerSerializer", "deregisterSerializer", "serialize", "deserialize", "clear"}]
      114 SETTABLEKS                       R12 R21 K23 ["registerSerializer"]
      116 SETTABLEKS                       R13 R21 K24 ["deregisterSerializer"]
      118 SETTABLEKS                       R15 R21 K25 ["serialize"]
      120 SETTABLEKS                       R19 R21 K26 ["deserialize"]
      122 SETTABLEKS                       R20 R21 K27 ["clear"]
      124 CLOSEUPVALS                      R10
      125 RETURN                           R21 1

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
       13 LOADK                            R4 K0 ["Serializer already registered for type: %*"]
       14 MOVE                             R6 R0
       15 NAMECALL                         R4 R4 K1 ["format"]
       17 CALL                             R4 2 1
       18 FASTCALL2                        ASSERT R3 R4 ; [+3]
       20 GETIMPORT                        R2 K3 [assert]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 1
       24 SETTABLE                         R1 R2 R0
       25 RETURN                           R0 0

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
        0 DUPTABLE                         R4 K18 [{[1], ["sourceId"], ["rootId"], ["type"], ["toolUse"] = , ["toolResult"] = , ["streaming"] = , ["expanded"] = , ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastServerStreamId"], ["LayoutOrder"], ["_meta"]}]
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
       23 LOADK                            R5 K19 ["MISSING"]
       24 SETTABLEKS                       R5 R4 K3 ["type"]
       26 GETTABLEKS                       R5 R1 K9 ["createdAt"]
       28 SETTABLEKS                       R5 R4 K9 ["createdAt"]
       30 GETTABLEKS                       R5 R1 K10 ["updatedAt"]
       32 SETTABLEKS                       R5 R4 K10 ["updatedAt"]
       34 GETTABLEKS                       R5 R1 K14 ["isDeleted"]
       36 SETTABLEKS                       R5 R4 K14 ["isDeleted"]
       38 JUMPIFNOT                        R2 ; [+3]
       39 GETTABLEKS                       R5 R2 K15 ["lastServerStreamId"]
       41 JUMPIF                           R5 ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K15 ["lastServerStreamId"]
       45 SETTABLEKS                       R0 R4 K16 ["LayoutOrder"]
       47 SETTABLEKS                       R3 R4 K17 ["_meta"]
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
       12 JUMPIFNOTEQKS                    R9 K2 ["tool_result"] ; [+20]
       14 GETTABLEKS                       R9 R8 K3 ["toolUseId"]
       16 JUMPIFEQKNIL                     R9 ; [+16]
       18 GETTABLE                         R10 R2 R9
       19 JUMPIFNOT                        R10 ; [+12]
       20 GETUPVAL                         R10 0
       21 GETTABLEKS                       R10 R10 K4 ["FFlagDebugLogAssistantUI"]
       23 JUMPIFNOT                        R10 ; [+8]
       24 GETIMPORT                        R10 K6 [warn]
       26 LOADK                            R11 K7 ["[Assistant] Duplicate tool_result with toolUseId: %*. Each tool_use should have at most one corresponding tool_result."]
       27 MOVE                             R13 R9
       28 NAMECALL                         R11 R11 K8 ["format"]
       30 CALL                             R11 2 1
       31 CALL                             R10 1 0
       32 SETTABLE                         R8 R2 R9
       33 FORGLOOP                         R3 2 ; [-26]
       35 LOADN                            R3 1
       36 LENGTH                           R4 R0
       37 JUMPIFNOTLE                      R3 R4 ; [+504]
       39 GETTABLE                         R4 R0 R3
       40 GETTABLEKS                       R5 R4 K0 ["mcpContent"]
       42 GETTABLEKS                       R9 R5 K9 ["_meta"]
       44 FASTCALL1                        TYPE R9 ; [+2]
       45 GETIMPORT                        R8 K10 [type]
       47 CALL                             R8 1 1
       48 JUMPIFEQKS                       R8 K11 ["table"] ; [+4]
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 JUMP                             ; [+40]
       53 GETTABLEKS                       R8 R5 K9 ["_meta"]
       55 GETTABLEKS                       R8 R8 K12 ["roblox_studio_assistant"]
       57 FASTCALL1                        TYPE R8 ; [+3]
       58 MOVE                             R10 R8
       59 GETIMPORT                        R9 K10 [type]
       61 CALL                             R9 1 1
       62 JUMPIFEQKS                       R9 K11 ["table"] ; [+4]
       64 LOADNIL                          R6
       65 LOADNIL                          R7
       66 JUMP                             ; [+26]
       67 GETTABLEKS                       R11 R8 K13 ["base"]
       69 FASTCALL1                        TYPE R11 ; [+2]
       70 GETIMPORT                        R10 K10 [type]
       72 CALL                             R10 1 1
       73 JUMPIFNOTEQKS                    R10 K11 ["table"] ; [+4]
       75 GETTABLEKS                       R9 R8 K13 ["base"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R9
       79 GETTABLEKS                       R12 R8 K14 ["widget"]
       81 FASTCALL1                        TYPE R12 ; [+2]
       82 GETIMPORT                        R11 K10 [type]
       84 CALL                             R11 1 1
       85 JUMPIFNOTEQKS                    R11 K11 ["table"] ; [+4]
       87 GETTABLEKS                       R10 R8 K14 ["widget"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R10
       91 MOVE                             R6 R9
       92 MOVE                             R7 R10
       93 MOVE                             R8 R7
       94 JUMPIF                           R8 ; [+2]
       95 NEWTABLE                         R8 0 0
       97 MOVE                             R7 R8
       98 FASTCALL2K                       ASSERT R7 K15 ; [+5]
      100 MOVE                             R9 R7
      101 LOADK                            R10 K15 ["Failed to set widgetMeta"]
      102 GETIMPORT                        R8 K17 [assert]
      104 CALL                             R8 2 0
      105 MOVE                             R8 R6
      106 JUMPIF                           R8 ; [+2]
      107 NEWTABLE                         R8 0 0
      109 MOVE                             R6 R8
      110 FASTCALL2K                       ASSERT R6 K18 ; [+5]
      112 MOVE                             R9 R6
      113 LOADK                            R10 K18 ["Failed to set metaBase"]
      114 GETIMPORT                        R8 K17 [assert]
      116 CALL                             R8 2 0
      117 GETUPVAL                         R8 1
      118 LENGTH                           R10 R1
      119 ADDK                             R9 R10 K19 [1]
      120 MOVE                             R10 R4
      121 MOVE                             R11 R6
      122 GETTABLEKS                       R12 R5 K9 ["_meta"]
      124 CALL                             R8 4 1
      125 MOVE                             R10 R6
      126 GETTABLEKS                       R11 R5 K1 ["type"]
      128 JUMPIFNOTEQKS                    R11 K20 ["tool_use"] ; [+10]
      130 GETUPVAL                         R11 2
      131 GETTABLEKS                       R11 R11 K21 ["get"]
      133 GETTABLEKS                       R12 R5 K22 ["name"]
      135 CALL                             R11 1 1
      136 JUMPIFNOT                        R11 ; [+2]
      137 MOVE                             R9 R11
      138 JUMP                             ; [+30]
      139 JUMPIFNOT                        R10 ; [+3]
      140 GETTABLEKS                       R11 R10 K1 ["type"]
      142 JUMPIF                           R11 ; [+1]
      143 LOADNIL                          R11
      144 JUMPIFNOT                        R11 ; [+5]
      145 GETUPVAL                         R13 3
      146 GETTABLE                         R12 R13 R11
      147 JUMPIFNOT                        R12 ; [+2]
      148 MOVE                             R9 R11
      149 JUMP                             ; [+19]
      150 GETTABLEKS                       R12 R5 K1 ["type"]
      152 JUMPIFNOTEQKS                    R12 K23 ["text"] ; [+5]
      154 GETUPVAL                         R9 4
      155 GETTABLEKS                       R9 R9 K24 ["Type"]
      157 JUMP                             ; [+11]
      158 GETTABLEKS                       R12 R5 K1 ["type"]
      160 JUMPIFNOTEQKS                    R12 K25 ["image"] ; [+5]
      162 GETUPVAL                         R9 5
      163 GETTABLEKS                       R9 R9 K24 ["Type"]
      165 JUMP                             ; [+3]
      166 GETUPVAL                         R9 6
      167 GETTABLEKS                       R9 R9 K24 ["Type"]
      169 SETTABLEKS                       R9 R8 K1 ["type"]
      171 LOADNIL                          R10
      172 GETTABLEKS                       R11 R5 K1 ["type"]
      174 JUMPIFNOTEQKS                    R11 K20 ["tool_use"] ; [+157]
      176 GETTABLEKS                       R13 R5 K26 ["id"]
      178 FASTCALL1                        TYPE R13 ; [+2]
      179 GETIMPORT                        R12 K10 [type]
      181 CALL                             R12 1 1
      182 JUMPIFNOTEQKS                    R12 K27 ["string"] ; [+4]
      184 GETTABLEKS                       R11 R5 K26 ["id"]
      186 JUMP                             ; [+1]
      187 LOADK                            R11 K28 [""]
      188 DUPTABLE                         R12 K30 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      189 SETTABLEKS                       R11 R12 K26 ["id"]
      191 GETTABLEKS                       R15 R5 K22 ["name"]
      193 FASTCALL1                        TYPE R15 ; [+2]
      194 GETIMPORT                        R14 K10 [type]
      196 CALL                             R14 1 1
      197 JUMPIFNOTEQKS                    R14 K27 ["string"] ; [+4]
      199 GETTABLEKS                       R13 R5 K22 ["name"]
      201 JUMP                             ; [+1]
      202 LOADK                            R13 K28 [""]
      203 SETTABLEKS                       R13 R12 K22 ["name"]
      205 GETTABLEKS                       R15 R5 K29 ["input"]
      207 FASTCALL1                        TYPE R15 ; [+2]
      208 GETIMPORT                        R14 K10 [type]
      210 CALL                             R14 1 1
      211 JUMPIFNOTEQKS                    R14 K11 ["table"] ; [+4]
      213 GETTABLEKS                       R13 R5 K29 ["input"]
      215 JUMP                             ; [+2]
      216 NEWTABLE                         R13 0 0
      218 SETTABLEKS                       R13 R12 K29 ["input"]
      220 GETTABLE                         R13 R2 R11
      221 DUPTABLE                         R14 K33 [{"toolUseContent", "toolResultContent"}]
      222 SETTABLEKS                       R5 R14 K31 ["toolUseContent"]
      224 SETTABLEKS                       R13 R14 K32 ["toolResultContent"]
      226 JUMPIFNOT                        R9 ; [+3]
      227 GETUPVAL                         R16 7
      228 GETTABLE                         R15 R16 R9
      229 JUMP                             ; [+1]
      230 LOADNIL                          R15
      231 LOADNIL                          R16
      232 JUMPIFNOT                        R15 ; [+7]
      233 GETTABLEKS                       R17 R15 K34 ["fromMeta"]
      235 MOVE                             R18 R7
      236 MOVE                             R19 R14
      237 CALL                             R17 2 1
      238 MOVE                             R16 R17
      239 JUMP                             ; [+4]
      240 DUPTABLE                         R17 K35 [{"type"}]
      241 SETTABLEKS                       R9 R17 K1 ["type"]
      243 MOVE                             R16 R17
      244 JUMPIF                           R16 ; [+7]
      245 DUPTABLE                         R17 K38 [{["type"], ["expanded"] = False}]
      246 GETUPVAL                         R18 6
      247 GETTABLEKS                       R18 R18 K24 ["Type"]
      249 SETTABLEKS                       R18 R17 K1 ["type"]
      251 MOVE                             R16 R17
      252 FASTCALL2K                       ASSERT R16 K39 ; [+5]
      254 MOVE                             R18 R16
      255 LOADK                            R19 K39 ["Failed to set contentMeta for tool_use"]
      256 GETIMPORT                        R17 K17 [assert]
      258 CALL                             R17 2 0
      259 SETTABLEKS                       R12 R16 K40 ["toolUse"]
      261 JUMPIFNOT                        R13 ; [+62]
      262 DUPTABLE                         R17 K46 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      263 SETTABLEKS                       R11 R17 K26 ["id"]
      265 GETTABLEKS                       R18 R12 K22 ["name"]
      267 SETTABLEKS                       R18 R17 K22 ["name"]
      269 GETTABLEKS                       R20 R13 K41 ["content"]
      271 FASTCALL1                        TYPE R20 ; [+2]
      272 GETIMPORT                        R19 K10 [type]
      274 CALL                             R19 1 1
      275 JUMPIFNOTEQKS                    R19 K11 ["table"] ; [+4]
      277 GETTABLEKS                       R18 R13 K41 ["content"]
      279 JUMP                             ; [+2]
      280 NEWTABLE                         R18 0 0
      282 SETTABLEKS                       R18 R17 K41 ["content"]
      284 GETTABLEKS                       R20 R13 K42 ["isError"]
      286 FASTCALL1                        TYPE R20 ; [+2]
      287 GETIMPORT                        R19 K10 [type]
      289 CALL                             R19 1 1
      290 JUMPIFNOTEQKS                    R19 K47 ["boolean"] ; [+4]
      292 GETTABLEKS                       R18 R13 K42 ["isError"]
      294 JUMP                             ; [+1]
      295 LOADNIL                          R18
      296 SETTABLEKS                       R18 R17 K42 ["isError"]
      298 GETTABLEKS                       R20 R13 K43 ["structuredContent"]
      300 FASTCALL1                        TYPE R20 ; [+2]
      301 GETIMPORT                        R19 K10 [type]
      303 CALL                             R19 1 1
      304 JUMPIFNOTEQKS                    R19 K11 ["table"] ; [+4]
      306 GETTABLEKS                       R18 R13 K43 ["structuredContent"]
      308 JUMP                             ; [+1]
      309 LOADNIL                          R18
      310 SETTABLEKS                       R18 R17 K43 ["structuredContent"]
      312 GETTABLEKS                       R19 R6 K44 ["startTime"]
      314 ORK                              R18 R19 K48 [0]
      315 SETTABLEKS                       R18 R17 K44 ["startTime"]
      317 GETTABLEKS                       R19 R6 K45 ["startTimeAfterConfirmation"]
      319 ORK                              R18 R19 K48 [0]
      320 SETTABLEKS                       R18 R17 K45 ["startTimeAfterConfirmation"]
      322 SETTABLEKS                       R17 R16 K49 ["toolResult"]
      324 GETUPVAL                         R17 8
      325 GETTABLEKS                       R17 R17 K50 ["assign"]
      327 MOVE                             R18 R8
      328 MOVE                             R19 R16
      329 CALL                             R17 2 1
      330 MOVE                             R10 R17
      331 JUMP                             ; [+185]
      332 GETTABLEKS                       R11 R5 K1 ["type"]
      334 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      336 JUMP                             ; [+180]
      337 GETTABLEKS                       R11 R5 K1 ["type"]
      339 JUMPIFNOTEQKS                    R11 K25 ["image"] ; [+122]
      341 NEWTABLE                         R11 0 1
      343 MOVE                             R12 R5
      344 SETLIST                          R11 R12 1 [1]
      346 ADDK                             R12 R3 K19 [1]
      347 LENGTH                           R13 R0
      348 JUMPIFNOTLE                      R12 R13 ; [+43]
      350 ADDK                             R13 R3 K19 [1]
      351 GETTABLE                         R12 R0 R13
      352 JUMPIFNOT                        R12 ; [+39]
      353 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      355 LOADB                            R14 0
      356 GETTABLEKS                       R16 R13 K9 ["_meta"]
      358 FASTCALL1                        TYPE R16 ; [+2]
      359 GETIMPORT                        R15 K10 [type]
      361 CALL                             R15 1 1
      362 JUMPIFNOTEQKS                    R15 K11 ["table"] ; [+13]
      364 GETTABLEKS                       R16 R13 K9 ["_meta"]
      366 GETTABLEKS                       R16 R16 K12 ["roblox_studio_assistant"]
      368 FASTCALL1                        TYPE R16 ; [+2]
      369 GETIMPORT                        R15 K10 [type]
      371 CALL                             R15 1 1
      372 JUMPIFEQKS                       R15 K11 ["table"] ; [+2]
      374 LOADB                            R14 0 +1
      375 LOADB                            R14 1
      376 GETTABLEKS                       R15 R13 K1 ["type"]
      378 JUMPIFNOTEQKS                    R15 K25 ["image"] ; [+13]
      380 JUMPIF                           R14 ; [+11]
      381 ADDK                             R3 R3 K19 [1]
      382 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      384 MOVE                             R16 R11
      385 MOVE                             R17 R13
      386 GETIMPORT                        R15 K52 [table.insert]
      388 CALL                             R15 2 0
      389 JUMP                             ; [+1]
      390 JUMP                             ; [+1]
      391 JUMPBACK                         ; [-46]
      392 DUPTABLE                         R12 K54 [{"imageContents"}]
      393 SETTABLEKS                       R11 R12 K53 ["imageContents"]
      395 GETUPVAL                         R14 7
      396 GETUPVAL                         R15 5
      397 GETTABLEKS                       R15 R15 K24 ["Type"]
      399 GETTABLE                         R13 R14 R15
      400 LOADNIL                          R14
      401 JUMPIFNOT                        R13 ; [+6]
      402 GETTABLEKS                       R15 R13 K34 ["fromMeta"]
      404 MOVE                             R16 R7
      405 MOVE                             R17 R12
      406 CALL                             R15 2 1
      407 MOVE                             R14 R15
      408 JUMPIF                           R14 ; [+38]
      409 GETIMPORT                        R15 K56 [table.create]
      411 LENGTH                           R16 R11
      412 CALL                             R15 1 1
      413 MOVE                             R16 R11
      414 LOADNIL                          R17
      415 LOADNIL                          R18
      416 FORGPREP                         R16
      417 DUPTABLE                         R23 K59 [{"type", "data", "mimeType"}]
      418 GETTABLEKS                       R24 R20 K1 ["type"]
      420 SETTABLEKS                       R24 R23 K1 ["type"]
      422 GETTABLEKS                       R24 R20 K57 ["data"]
      424 SETTABLEKS                       R24 R23 K57 ["data"]
      426 GETTABLEKS                       R24 R20 K58 ["mimeType"]
      428 SETTABLEKS                       R24 R23 K58 ["mimeType"]
      430 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      432 MOVE                             R22 R15
      433 GETIMPORT                        R21 K52 [table.insert]
      435 CALL                             R21 2 0
      436 FORGLOOP                         R16 2 ; [-20]
      438 DUPTABLE                         R16 K60 [{["type"], ["imageContents"], ["expanded"] = False}]
      439 GETUPVAL                         R17 5
      440 GETTABLEKS                       R17 R17 K24 ["Type"]
      442 SETTABLEKS                       R17 R16 K1 ["type"]
      444 SETTABLEKS                       R15 R16 K53 ["imageContents"]
      446 MOVE                             R14 R16
      447 FASTCALL2K                       ASSERT R14 K61 ; [+5]
      449 MOVE                             R16 R14
      450 LOADK                            R17 K61 ["Failed to set contentMeta for image"]
      451 GETIMPORT                        R15 K17 [assert]
      453 CALL                             R15 2 0
      454 GETUPVAL                         R15 8
      455 GETTABLEKS                       R15 R15 K50 ["assign"]
      457 MOVE                             R16 R8
      458 MOVE                             R17 R14
      459 CALL                             R15 2 1
      460 MOVE                             R10 R15
      461 JUMP                             ; [+55]
      462 DUPTABLE                         R11 K63 [{"textContent"}]
      463 SETTABLEKS                       R5 R11 K62 ["textContent"]
      465 GETUPVAL                         R13 7
      466 GETTABLE                         R12 R13 R9
      467 JUMPIF                           R12 ; [+5]
      468 GETUPVAL                         R13 7
      469 GETUPVAL                         R14 4
      470 GETTABLEKS                       R14 R14 K24 ["Type"]
      472 GETTABLE                         R12 R13 R14
      473 LOADNIL                          R13
      474 JUMPIFNOT                        R12 ; [+6]
      475 GETTABLEKS                       R14 R12 K34 ["fromMeta"]
      477 MOVE                             R15 R7
      478 MOVE                             R16 R11
      479 CALL                             R14 2 1
      480 MOVE                             R13 R14
      481 JUMPIF                           R13 ; [+21]
      482 DUPTABLE                         R14 K64 [{"type", "text"}]
      483 GETUPVAL                         R15 4
      484 GETTABLEKS                       R15 R15 K24 ["Type"]
      486 SETTABLEKS                       R15 R14 K1 ["type"]
      488 GETTABLEKS                       R17 R5 K23 ["text"]
      490 FASTCALL1                        TYPE R17 ; [+2]
      491 GETIMPORT                        R16 K10 [type]
      493 CALL                             R16 1 1
      494 JUMPIFNOTEQKS                    R16 K27 ["string"] ; [+4]
      496 GETTABLEKS                       R15 R5 K23 ["text"]
      498 JUMP                             ; [+1]
      499 LOADK                            R15 K28 [""]
      500 SETTABLEKS                       R15 R14 K23 ["text"]
      502 MOVE                             R13 R14
      503 FASTCALL2K                       ASSERT R13 K65 ; [+5]
      505 MOVE                             R15 R13
      506 LOADK                            R16 K65 ["Failed to set contentMeta for text or unrecognized type"]
      507 GETIMPORT                        R14 K17 [assert]
      509 CALL                             R14 2 0
      510 GETUPVAL                         R14 8
      511 GETTABLEKS                       R14 R14 K50 ["assign"]
      513 MOVE                             R15 R8
      514 MOVE                             R16 R13
      515 CALL                             R14 2 1
      516 MOVE                             R10 R14
      517 JUMPIFNOT                        R10 ; [+22]
      518 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      520 MOVE                             R12 R1
      521 MOVE                             R13 R10
      522 GETIMPORT                        R11 K52 [table.insert]
      524 CALL                             R11 2 0
      525 GETUPVAL                         R11 9
      526 GETTABLEKS                       R11 R11 K66 ["setContentMetadata"]
      528 GETTABLEKS                       R12 R4 K67 ["contentId"]
      530 DUPTABLE                         R13 K70 [{"threadId", "messageId"}]
      531 GETTABLEKS                       R14 R4 K68 ["threadId"]
      533 SETTABLEKS                       R14 R13 K68 ["threadId"]
      535 GETTABLEKS                       R14 R4 K69 ["messageId"]
      537 SETTABLEKS                       R14 R13 K69 ["messageId"]
      539 CALL                             R11 2 0
      540 ADDK                             R3 R3 K19 [1]
      541 JUMPBACK                         ; [-506]
      542 RETURN                           R1 1

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

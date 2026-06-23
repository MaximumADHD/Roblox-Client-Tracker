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
       68 JUMPIFNOT                        R6 ; [+57]
       69 GETTABLEKS                       R7 R0 K4 ["toolResult"]
       71 JUMPIFNOT                        R7 ; [+139]
       72 DUPTABLE                         R10 K23 [{"type", "id", "name", "input", "_meta"}]
       73 LOADK                            R11 K24 ["tool_use"]
       74 SETTABLEKS                       R11 R10 K0 ["type"]
       76 GETTABLEKS                       R11 R6 K20 ["id"]
       78 SETTABLEKS                       R11 R10 K20 ["id"]
       80 GETTABLEKS                       R11 R6 K21 ["name"]
       82 SETTABLEKS                       R11 R10 K21 ["name"]
       84 GETTABLEKS                       R11 R6 K22 ["input"]
       86 SETTABLEKS                       R11 R10 K22 ["input"]
       88 SETTABLEKS                       R4 R10 K13 ["_meta"]
       90 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
       92 MOVE                             R9 R5
       93 GETIMPORT                        R8 K26 [table.insert]
       95 CALL                             R8 2 0
       96 DUPTABLE                         R10 K31 [{"type", "toolUseId", "content", "structuredContent", "isError", "_meta"}]
       97 LOADK                            R11 K32 ["tool_result"]
       98 SETTABLEKS                       R11 R10 K0 ["type"]
      100 GETTABLEKS                       R11 R7 K20 ["id"]
      102 SETTABLEKS                       R11 R10 K27 ["toolUseId"]
      104 GETTABLEKS                       R11 R7 K28 ["content"]
      106 SETTABLEKS                       R11 R10 K28 ["content"]
      108 GETTABLEKS                       R11 R7 K29 ["structuredContent"]
      110 SETTABLEKS                       R11 R10 K29 ["structuredContent"]
      112 GETTABLEKS                       R11 R7 K30 ["isError"]
      114 SETTABLEKS                       R11 R10 K30 ["isError"]
      116 LOADNIL                          R11
      117 SETTABLEKS                       R11 R10 K13 ["_meta"]
      119 FASTCALL2                        TABLE_INSERT R5 R10 ; [+4]
      121 MOVE                             R9 R5
      122 GETIMPORT                        R8 K26 [table.insert]
      124 CALL                             R8 2 0
      125 RETURN                           R5 1
      126 JUMPIFNOT                        R2 ; [+25]
      127 GETTABLEKS                       R7 R2 K33 ["getText"]
      129 JUMPIFNOT                        R7 ; [+22]
      130 DUPTABLE                         R9 K36 [{"type", "text", "annotations", "_meta"}]
      131 LOADK                            R10 K34 ["text"]
      132 SETTABLEKS                       R10 R9 K0 ["type"]
      134 GETTABLEKS                       R10 R2 K33 ["getText"]
      136 MOVE                             R11 R0
      137 CALL                             R10 1 1
      138 SETTABLEKS                       R10 R9 K34 ["text"]
      140 LOADNIL                          R10
      141 SETTABLEKS                       R10 R9 K35 ["annotations"]
      143 SETTABLEKS                       R4 R9 K13 ["_meta"]
      145 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      147 MOVE                             R8 R5
      148 GETIMPORT                        R7 K26 [table.insert]
      150 CALL                             R7 2 0
      151 RETURN                           R5 1
      152 GETUPVAL                         R7 2
      153 GETTABLEKS                       R7 R7 K37 ["Type"]
      155 JUMPIFNOTEQ                      R1 R7 ; [+37]
      157 GETTABLEKS                       R7 R0 K38 ["imageContents"]
      159 LOADNIL                          R8
      160 LOADNIL                          R9
      161 FORGPREP                         R7
      162 DUPTABLE                         R14 K41 [{"type", "data", "mimeType", "annotations", "_meta"}]
      163 LOADK                            R15 K42 ["image"]
      164 SETTABLEKS                       R15 R14 K0 ["type"]
      166 GETTABLEKS                       R15 R11 K39 ["data"]
      168 SETTABLEKS                       R15 R14 K39 ["data"]
      170 GETTABLEKS                       R15 R11 K40 ["mimeType"]
      172 SETTABLEKS                       R15 R14 K40 ["mimeType"]
      174 LOADNIL                          R15
      175 SETTABLEKS                       R15 R14 K35 ["annotations"]
      177 JUMPIFNOTEQKN                    R10 K43 [1] ; [+3]
      179 MOVE                             R15 R4
      180 JUMP                             ; [+1]
      181 LOADNIL                          R15
      182 SETTABLEKS                       R15 R14 K13 ["_meta"]
      184 FASTCALL2                        TABLE_INSERT R5 R14 ; [+4]
      186 MOVE                             R13 R5
      187 GETIMPORT                        R12 K26 [table.insert]
      189 CALL                             R12 2 0
      190 FORGLOOP                         R7 2 ; [-29]
      192 RETURN                           R5 1
      193 DUPTABLE                         R9 K36 [{"type", "text", "annotations", "_meta"}]
      194 LOADK                            R10 K34 ["text"]
      195 SETTABLEKS                       R10 R9 K0 ["type"]
      197 LOADK                            R10 K44 [""]
      198 SETTABLEKS                       R10 R9 K34 ["text"]
      200 LOADNIL                          R10
      201 SETTABLEKS                       R10 R9 K35 ["annotations"]
      203 SETTABLEKS                       R4 R9 K13 ["_meta"]
      205 FASTCALL2                        TABLE_INSERT R5 R9 ; [+4]
      207 MOVE                             R8 R5
      208 GETIMPORT                        R7 K26 [table.insert]
      210 CALL                             R7 2 0
      211 RETURN                           R5 1

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
        0 DUPTABLE                         R4 K16 [{"contentId", "sourceId", "rootId", "type", "toolUse", "toolResult", "generating", "expanded", "createdAt", "updatedAt", "ephemeral", "isDirty", "isDeleted", "lastServerStreamId", "LayoutOrder", "_meta"}]
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
       23 LOADK                            R5 K17 ["MISSING"]
       24 SETTABLEKS                       R5 R4 K3 ["type"]
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K4 ["toolUse"]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K5 ["toolResult"]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K6 ["generating"]
       35 LOADNIL                          R5
       36 SETTABLEKS                       R5 R4 K7 ["expanded"]
       38 GETTABLEKS                       R5 R1 K8 ["createdAt"]
       40 SETTABLEKS                       R5 R4 K8 ["createdAt"]
       42 GETTABLEKS                       R5 R1 K9 ["updatedAt"]
       44 SETTABLEKS                       R5 R4 K9 ["updatedAt"]
       46 LOADB                            R5 0
       47 SETTABLEKS                       R5 R4 K10 ["ephemeral"]
       49 LOADB                            R5 0
       50 SETTABLEKS                       R5 R4 K11 ["isDirty"]
       52 GETTABLEKS                       R5 R1 K12 ["isDeleted"]
       54 SETTABLEKS                       R5 R4 K12 ["isDeleted"]
       56 JUMPIFNOT                        R2 ; [+3]
       57 GETTABLEKS                       R5 R2 K13 ["lastServerStreamId"]
       59 JUMPIF                           R5 ; [+1]
       60 LOADNIL                          R5
       61 SETTABLEKS                       R5 R4 K13 ["lastServerStreamId"]
       63 SETTABLEKS                       R0 R4 K14 ["LayoutOrder"]
       65 SETTABLEKS                       R3 R4 K15 ["_meta"]
       67 RETURN                           R4 1

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
       21 CALL                             R10 0 1
       22 JUMPIFNOT                        R10 ; [+9]
       23 GETIMPORT                        R10 K5 [warn]
       25 LOADK                            R12 K6 ["[Assistant] Duplicate tool_result with toolUseId: %*. Each tool_use should have at most one corresponding tool_result."]
       26 MOVE                             R14 R9
       27 NAMECALL                         R12 R12 K7 ["format"]
       29 CALL                             R12 2 1
       30 MOVE                             R11 R12
       31 CALL                             R10 1 0
       32 SETTABLE                         R8 R2 R9
       33 FORGLOOP                         R3 2 ; [-26]
       35 LOADN                            R3 1
       36 LENGTH                           R4 R0
       37 JUMPIFNOTLE                      R3 R4 ; [+539]
       39 GETTABLE                         R4 R0 R3
       40 GETTABLEKS                       R5 R4 K0 ["mcpContent"]
       42 GETTABLEKS                       R9 R5 K8 ["_meta"]
       44 FASTCALL1                        TYPE R9 ; [+2]
       45 GETIMPORT                        R8 K9 [type]
       47 CALL                             R8 1 1
       48 JUMPIFEQKS                       R8 K10 ["table"] ; [+4]
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 JUMP                             ; [+40]
       53 GETTABLEKS                       R8 R5 K8 ["_meta"]
       55 GETTABLEKS                       R8 R8 K11 ["roblox_studio_assistant"]
       57 FASTCALL1                        TYPE R8 ; [+3]
       58 MOVE                             R10 R8
       59 GETIMPORT                        R9 K9 [type]
       61 CALL                             R9 1 1
       62 JUMPIFEQKS                       R9 K10 ["table"] ; [+4]
       64 LOADNIL                          R6
       65 LOADNIL                          R7
       66 JUMP                             ; [+26]
       67 GETTABLEKS                       R11 R8 K12 ["base"]
       69 FASTCALL1                        TYPE R11 ; [+2]
       70 GETIMPORT                        R10 K9 [type]
       72 CALL                             R10 1 1
       73 JUMPIFNOTEQKS                    R10 K10 ["table"] ; [+4]
       75 GETTABLEKS                       R9 R8 K12 ["base"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R9
       79 GETTABLEKS                       R12 R8 K13 ["widget"]
       81 FASTCALL1                        TYPE R12 ; [+2]
       82 GETIMPORT                        R11 K9 [type]
       84 CALL                             R11 1 1
       85 JUMPIFNOTEQKS                    R11 K10 ["table"] ; [+4]
       87 GETTABLEKS                       R10 R8 K13 ["widget"]
       89 JUMP                             ; [+1]
       90 LOADNIL                          R10
       91 MOVE                             R6 R9
       92 MOVE                             R7 R10
       93 MOVE                             R8 R7
       94 JUMPIF                           R8 ; [+2]
       95 NEWTABLE                         R8 0 0
       97 MOVE                             R7 R8
       98 FASTCALL2K                       ASSERT R7 K14 ; [+5]
      100 MOVE                             R9 R7
      101 LOADK                            R10 K14 ["Failed to set widgetMeta"]
      102 GETIMPORT                        R8 K16 [assert]
      104 CALL                             R8 2 0
      105 MOVE                             R8 R6
      106 JUMPIF                           R8 ; [+2]
      107 NEWTABLE                         R8 0 0
      109 MOVE                             R6 R8
      110 FASTCALL2K                       ASSERT R6 K17 ; [+5]
      112 MOVE                             R9 R6
      113 LOADK                            R10 K17 ["Failed to set metaBase"]
      114 GETIMPORT                        R8 K16 [assert]
      116 CALL                             R8 2 0
      117 GETUPVAL                         R8 1
      118 LENGTH                           R10 R1
      119 ADDK                             R9 R10 K18 [1]
      120 MOVE                             R10 R4
      121 MOVE                             R11 R6
      122 GETTABLEKS                       R12 R5 K8 ["_meta"]
      124 CALL                             R8 4 1
      125 GETUPVAL                         R10 2
      126 CALL                             R10 0 1
      127 JUMPIFNOT                        R10 ; [+45]
      128 MOVE                             R10 R6
      129 GETTABLEKS                       R11 R5 K1 ["type"]
      131 JUMPIFNOTEQKS                    R11 K19 ["tool_use"] ; [+10]
      133 GETUPVAL                         R11 3
      134 GETTABLEKS                       R11 R11 K20 ["get"]
      136 GETTABLEKS                       R12 R5 K21 ["name"]
      138 CALL                             R11 1 1
      139 JUMPIFNOT                        R11 ; [+2]
      140 MOVE                             R9 R11
      141 JUMP                             ; [+33]
      142 JUMPIFNOT                        R10 ; [+3]
      143 GETTABLEKS                       R11 R10 K1 ["type"]
      145 JUMPIF                           R11 ; [+1]
      146 LOADNIL                          R11
      147 JUMPIFNOT                        R11 ; [+5]
      148 GETUPVAL                         R13 4
      149 GETTABLE                         R12 R13 R11
      150 JUMPIFNOT                        R12 ; [+2]
      151 MOVE                             R9 R11
      152 JUMP                             ; [+22]
      153 GETTABLEKS                       R12 R5 K1 ["type"]
      155 JUMPIFNOTEQKS                    R12 K22 ["text"] ; [+5]
      157 GETUPVAL                         R9 5
      158 GETTABLEKS                       R9 R9 K23 ["Type"]
      160 JUMP                             ; [+14]
      161 GETTABLEKS                       R12 R5 K1 ["type"]
      163 JUMPIFNOTEQKS                    R12 K24 ["image"] ; [+5]
      165 GETUPVAL                         R9 6
      166 GETTABLEKS                       R9 R9 K23 ["Type"]
      168 JUMP                             ; [+6]
      169 GETUPVAL                         R9 7
      170 GETTABLEKS                       R9 R9 K23 ["Type"]
      172 JUMP                             ; [+2]
      173 GETTABLEKS                       R9 R8 K1 ["type"]
      175 SETTABLEKS                       R9 R8 K1 ["type"]
      177 LOADNIL                          R10
      178 GETTABLEKS                       R11 R5 K1 ["type"]
      180 JUMPIFNOTEQKS                    R11 K19 ["tool_use"] ; [+183]
      182 GETTABLEKS                       R13 R5 K25 ["id"]
      184 FASTCALL1                        TYPE R13 ; [+2]
      185 GETIMPORT                        R12 K9 [type]
      187 CALL                             R12 1 1
      188 JUMPIFNOTEQKS                    R12 K26 ["string"] ; [+4]
      190 GETTABLEKS                       R11 R5 K25 ["id"]
      192 JUMP                             ; [+1]
      193 LOADK                            R11 K27 [""]
      194 DUPTABLE                         R12 K29 [{"type", "id", "name", "input"}]
      195 LOADK                            R13 K19 ["tool_use"]
      196 SETTABLEKS                       R13 R12 K1 ["type"]
      198 SETTABLEKS                       R11 R12 K25 ["id"]
      200 GETTABLEKS                       R15 R5 K21 ["name"]
      202 FASTCALL1                        TYPE R15 ; [+2]
      203 GETIMPORT                        R14 K9 [type]
      205 CALL                             R14 1 1
      206 JUMPIFNOTEQKS                    R14 K26 ["string"] ; [+4]
      208 GETTABLEKS                       R13 R5 K21 ["name"]
      210 JUMP                             ; [+1]
      211 LOADK                            R13 K27 [""]
      212 SETTABLEKS                       R13 R12 K21 ["name"]
      214 GETTABLEKS                       R15 R5 K28 ["input"]
      216 FASTCALL1                        TYPE R15 ; [+2]
      217 GETIMPORT                        R14 K9 [type]
      219 CALL                             R14 1 1
      220 JUMPIFNOTEQKS                    R14 K10 ["table"] ; [+4]
      222 GETTABLEKS                       R13 R5 K28 ["input"]
      224 JUMP                             ; [+2]
      225 NEWTABLE                         R13 0 0
      227 SETTABLEKS                       R13 R12 K28 ["input"]
      229 GETTABLE                         R13 R2 R11
      230 DUPTABLE                         R14 K32 [{"toolUseContent", "toolResultContent"}]
      231 SETTABLEKS                       R5 R14 K30 ["toolUseContent"]
      233 SETTABLEKS                       R13 R14 K31 ["toolResultContent"]
      235 JUMPIFNOT                        R9 ; [+3]
      236 GETUPVAL                         R16 8
      237 GETTABLE                         R15 R16 R9
      238 JUMP                             ; [+1]
      239 LOADNIL                          R15
      240 LOADNIL                          R16
      241 JUMPIFNOT                        R15 ; [+7]
      242 GETTABLEKS                       R17 R15 K33 ["fromMeta"]
      244 MOVE                             R18 R7
      245 MOVE                             R19 R14
      246 CALL                             R17 2 1
      247 MOVE                             R16 R17
      248 JUMP                             ; [+7]
      249 GETUPVAL                         R17 2
      250 CALL                             R17 0 1
      251 JUMPIFNOT                        R17 ; [+4]
      252 DUPTABLE                         R17 K34 [{"type"}]
      253 SETTABLEKS                       R9 R17 K1 ["type"]
      255 MOVE                             R16 R17
      256 JUMPIF                           R16 ; [+24]
      257 DUPTABLE                         R17 K37 [{"type", "toolIdentifier", "expanded"}]
      258 GETUPVAL                         R18 7
      259 GETTABLEKS                       R18 R18 K23 ["Type"]
      261 SETTABLEKS                       R18 R17 K1 ["type"]
      263 GETTABLEKS                       R20 R7 K35 ["toolIdentifier"]
      265 FASTCALL1                        TYPEOF R20 ; [+2]
      266 GETIMPORT                        R19 K39 [typeof]
      268 CALL                             R19 1 1
      269 JUMPIFNOTEQKS                    R19 K26 ["string"] ; [+4]
      271 GETTABLEKS                       R18 R7 K35 ["toolIdentifier"]
      273 JUMPIF                           R18 ; [+1]
      274 LOADNIL                          R18
      275 SETTABLEKS                       R18 R17 K35 ["toolIdentifier"]
      277 LOADB                            R18 0
      278 SETTABLEKS                       R18 R17 K36 ["expanded"]
      280 MOVE                             R16 R17
      281 FASTCALL2K                       ASSERT R16 K40 ; [+5]
      283 MOVE                             R18 R16
      284 LOADK                            R19 K40 ["Failed to set contentMeta for tool_use"]
      285 GETIMPORT                        R17 K16 [assert]
      287 CALL                             R17 2 0
      288 SETTABLEKS                       R12 R16 K41 ["toolUse"]
      290 JUMPIFNOT                        R13 ; [+65]
      291 DUPTABLE                         R17 K47 [{"type", "id", "name", "content", "isError", "structuredContent", "startTime", "startTimeAfterConfirmation"}]
      292 LOADK                            R18 K2 ["tool_result"]
      293 SETTABLEKS                       R18 R17 K1 ["type"]
      295 SETTABLEKS                       R11 R17 K25 ["id"]
      297 GETTABLEKS                       R18 R12 K21 ["name"]
      299 SETTABLEKS                       R18 R17 K21 ["name"]
      301 GETTABLEKS                       R20 R13 K42 ["content"]
      303 FASTCALL1                        TYPE R20 ; [+2]
      304 GETIMPORT                        R19 K9 [type]
      306 CALL                             R19 1 1
      307 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      309 GETTABLEKS                       R18 R13 K42 ["content"]
      311 JUMP                             ; [+2]
      312 NEWTABLE                         R18 0 0
      314 SETTABLEKS                       R18 R17 K42 ["content"]
      316 GETTABLEKS                       R20 R13 K43 ["isError"]
      318 FASTCALL1                        TYPE R20 ; [+2]
      319 GETIMPORT                        R19 K9 [type]
      321 CALL                             R19 1 1
      322 JUMPIFNOTEQKS                    R19 K48 ["boolean"] ; [+4]
      324 GETTABLEKS                       R18 R13 K43 ["isError"]
      326 JUMP                             ; [+1]
      327 LOADNIL                          R18
      328 SETTABLEKS                       R18 R17 K43 ["isError"]
      330 GETTABLEKS                       R20 R13 K44 ["structuredContent"]
      332 FASTCALL1                        TYPE R20 ; [+2]
      333 GETIMPORT                        R19 K9 [type]
      335 CALL                             R19 1 1
      336 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      338 GETTABLEKS                       R18 R13 K44 ["structuredContent"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R18
      342 SETTABLEKS                       R18 R17 K44 ["structuredContent"]
      344 GETTABLEKS                       R19 R6 K45 ["startTime"]
      346 ORK                              R18 R19 K49 [0]
      347 SETTABLEKS                       R18 R17 K45 ["startTime"]
      349 GETTABLEKS                       R19 R6 K46 ["startTimeAfterConfirmation"]
      351 ORK                              R18 R19 K49 [0]
      352 SETTABLEKS                       R18 R17 K46 ["startTimeAfterConfirmation"]
      354 SETTABLEKS                       R17 R16 K50 ["toolResult"]
      356 GETUPVAL                         R17 9
      357 GETTABLEKS                       R17 R17 K51 ["assign"]
      359 MOVE                             R18 R8
      360 MOVE                             R19 R16
      361 CALL                             R17 2 1
      362 MOVE                             R10 R17
      363 JUMP                             ; [+188]
      364 GETTABLEKS                       R11 R5 K1 ["type"]
      366 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      368 JUMP                             ; [+183]
      369 GETTABLEKS                       R11 R5 K1 ["type"]
      371 JUMPIFNOTEQKS                    R11 K24 ["image"] ; [+125]
      373 NEWTABLE                         R11 0 1
      375 MOVE                             R12 R5
      376 SETLIST                          R11 R12 1 [1]
      378 ADDK                             R12 R3 K18 [1]
      379 LENGTH                           R13 R0
      380 JUMPIFNOTLE                      R12 R13 ; [+43]
      382 ADDK                             R13 R3 K18 [1]
      383 GETTABLE                         R12 R0 R13
      384 JUMPIFNOT                        R12 ; [+39]
      385 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      387 LOADB                            R14 0
      388 GETTABLEKS                       R16 R13 K8 ["_meta"]
      390 FASTCALL1                        TYPE R16 ; [+2]
      391 GETIMPORT                        R15 K9 [type]
      393 CALL                             R15 1 1
      394 JUMPIFNOTEQKS                    R15 K10 ["table"] ; [+13]
      396 GETTABLEKS                       R16 R13 K8 ["_meta"]
      398 GETTABLEKS                       R16 R16 K11 ["roblox_studio_assistant"]
      400 FASTCALL1                        TYPE R16 ; [+2]
      401 GETIMPORT                        R15 K9 [type]
      403 CALL                             R15 1 1
      404 JUMPIFEQKS                       R15 K10 ["table"] ; [+2]
      406 LOADB                            R14 0 +1
      407 LOADB                            R14 1
      408 GETTABLEKS                       R15 R13 K1 ["type"]
      410 JUMPIFNOTEQKS                    R15 K24 ["image"] ; [+13]
      412 JUMPIF                           R14 ; [+11]
      413 ADDK                             R3 R3 K18 [1]
      414 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      416 MOVE                             R16 R11
      417 MOVE                             R17 R13
      418 GETIMPORT                        R15 K53 [table.insert]
      420 CALL                             R15 2 0
      421 JUMP                             ; [+1]
      422 JUMP                             ; [+1]
      423 JUMPBACK                         ; [-46]
      424 DUPTABLE                         R12 K55 [{"imageContents"}]
      425 SETTABLEKS                       R11 R12 K54 ["imageContents"]
      427 GETUPVAL                         R14 8
      428 GETUPVAL                         R15 6
      429 GETTABLEKS                       R15 R15 K23 ["Type"]
      431 GETTABLE                         R13 R14 R15
      432 LOADNIL                          R14
      433 JUMPIFNOT                        R13 ; [+6]
      434 GETTABLEKS                       R15 R13 K33 ["fromMeta"]
      436 MOVE                             R16 R7
      437 MOVE                             R17 R12
      438 CALL                             R15 2 1
      439 MOVE                             R14 R15
      440 JUMPIF                           R14 ; [+41]
      441 GETIMPORT                        R15 K57 [table.create]
      443 LENGTH                           R16 R11
      444 CALL                             R15 1 1
      445 MOVE                             R16 R11
      446 LOADNIL                          R17
      447 LOADNIL                          R18
      448 FORGPREP                         R16
      449 DUPTABLE                         R23 K60 [{"type", "data", "mimeType"}]
      450 GETTABLEKS                       R24 R20 K1 ["type"]
      452 SETTABLEKS                       R24 R23 K1 ["type"]
      454 GETTABLEKS                       R24 R20 K58 ["data"]
      456 SETTABLEKS                       R24 R23 K58 ["data"]
      458 GETTABLEKS                       R24 R20 K59 ["mimeType"]
      460 SETTABLEKS                       R24 R23 K59 ["mimeType"]
      462 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      464 MOVE                             R22 R15
      465 GETIMPORT                        R21 K53 [table.insert]
      467 CALL                             R21 2 0
      468 FORGLOOP                         R16 2 ; [-20]
      470 DUPTABLE                         R16 K61 [{"type", "imageContents", "expanded"}]
      471 GETUPVAL                         R17 6
      472 GETTABLEKS                       R17 R17 K23 ["Type"]
      474 SETTABLEKS                       R17 R16 K1 ["type"]
      476 SETTABLEKS                       R15 R16 K54 ["imageContents"]
      478 LOADB                            R17 0
      479 SETTABLEKS                       R17 R16 K36 ["expanded"]
      481 MOVE                             R14 R16
      482 FASTCALL2K                       ASSERT R14 K62 ; [+5]
      484 MOVE                             R16 R14
      485 LOADK                            R17 K62 ["Failed to set contentMeta for image"]
      486 GETIMPORT                        R15 K16 [assert]
      488 CALL                             R15 2 0
      489 GETUPVAL                         R15 9
      490 GETTABLEKS                       R15 R15 K51 ["assign"]
      492 MOVE                             R16 R8
      493 MOVE                             R17 R14
      494 CALL                             R15 2 1
      495 MOVE                             R10 R15
      496 JUMP                             ; [+55]
      497 DUPTABLE                         R11 K64 [{"textContent"}]
      498 SETTABLEKS                       R5 R11 K63 ["textContent"]
      500 GETUPVAL                         R13 8
      501 GETTABLE                         R12 R13 R9
      502 JUMPIF                           R12 ; [+5]
      503 GETUPVAL                         R13 8
      504 GETUPVAL                         R14 5
      505 GETTABLEKS                       R14 R14 K23 ["Type"]
      507 GETTABLE                         R12 R13 R14
      508 LOADNIL                          R13
      509 JUMPIFNOT                        R12 ; [+6]
      510 GETTABLEKS                       R14 R12 K33 ["fromMeta"]
      512 MOVE                             R15 R7
      513 MOVE                             R16 R11
      514 CALL                             R14 2 1
      515 MOVE                             R13 R14
      516 JUMPIF                           R13 ; [+21]
      517 DUPTABLE                         R14 K65 [{"type", "text"}]
      518 GETUPVAL                         R15 5
      519 GETTABLEKS                       R15 R15 K23 ["Type"]
      521 SETTABLEKS                       R15 R14 K1 ["type"]
      523 GETTABLEKS                       R17 R5 K22 ["text"]
      525 FASTCALL1                        TYPE R17 ; [+2]
      526 GETIMPORT                        R16 K9 [type]
      528 CALL                             R16 1 1
      529 JUMPIFNOTEQKS                    R16 K26 ["string"] ; [+4]
      531 GETTABLEKS                       R15 R5 K22 ["text"]
      533 JUMP                             ; [+1]
      534 LOADK                            R15 K27 [""]
      535 SETTABLEKS                       R15 R14 K22 ["text"]
      537 MOVE                             R13 R14
      538 FASTCALL2K                       ASSERT R13 K66 ; [+5]
      540 MOVE                             R15 R13
      541 LOADK                            R16 K66 ["Failed to set contentMeta for text or unrecognized type"]
      542 GETIMPORT                        R14 K16 [assert]
      544 CALL                             R14 2 0
      545 GETUPVAL                         R14 9
      546 GETTABLEKS                       R14 R14 K51 ["assign"]
      548 MOVE                             R15 R8
      549 MOVE                             R16 R13
      550 CALL                             R14 2 1
      551 MOVE                             R10 R14
      552 JUMPIFNOT                        R10 ; [+22]
      553 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      555 MOVE                             R12 R1
      556 MOVE                             R13 R10
      557 GETIMPORT                        R11 K53 [table.insert]
      559 CALL                             R11 2 0
      560 GETUPVAL                         R11 10
      561 GETTABLEKS                       R11 R11 K67 ["setContentMetadata"]
      563 GETTABLEKS                       R12 R4 K68 ["contentId"]
      565 DUPTABLE                         R13 K71 [{"threadId", "messageId"}]
      566 GETTABLEKS                       R14 R4 K69 ["threadId"]
      568 SETTABLEKS                       R14 R13 K69 ["threadId"]
      570 GETTABLEKS                       R14 R4 K70 ["messageId"]
      572 SETTABLEKS                       R14 R13 K70 ["messageId"]
      574 CALL                             R11 2 0
      575 ADDK                             R3 R3 K18 [1]
      576 JUMPBACK                         ; [-541]
      577 RETURN                           R1 1

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
       46 GETTABLEKS                       R7 R0 K15 ["Components"]
       48 GETTABLEKS                       R7 R7 K12 ["ContentWidgets"]
       50 GETTABLEKS                       R7 R7 K16 ["GenericToolContentWidget"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K15 ["Components"]
       57 GETTABLEKS                       R8 R8 K12 ["ContentWidgets"]
       59 GETTABLEKS                       R8 R8 K17 ["ImageContentWidget"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K15 ["Components"]
       66 GETTABLEKS                       R9 R9 K12 ["ContentWidgets"]
       68 GETTABLEKS                       R9 R9 K18 ["TextContentWidget"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K19 ["Flags"]
       75 GETTABLEKS                       R10 R10 K20 ["FFlagAssistantSplitToolsAndWidgets"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K19 ["Flags"]
       82 GETTABLEKS                       R11 R11 K21 ["FFlagDebugLogAssistantUI"]
       84 CALL                             R10 1 1
       85 NEWTABLE                         R11 0 0
       87 NEWTABLE                         R12 0 0
       89 NEWCLOSURE                       R13 P0
       90 CAPTURE                          REF R12
       91 CAPTURE                          REF R11
       92 NEWCLOSURE                       R14 P1
       93 CAPTURE                          REF R12
       94 CAPTURE                          REF R11
       95 DUPCLOSURE                       R15 K22 [PROTO_2]
       96 NEWCLOSURE                       R16 P3
       97 CAPTURE                          REF R11
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R7
      100 DUPCLOSURE                       R17 K23 [PROTO_4]
      101 NEWCLOSURE                       R18 P5
      102 CAPTURE                          VAL R4
      103 CAPTURE                          REF R12
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R6
      107 DUPCLOSURE                       R19 K24 [PROTO_6]
      108 NEWCLOSURE                       R20 P7
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R4
      113 CAPTURE                          REF R12
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R6
      117 CAPTURE                          REF R11
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R1
      120 NEWCLOSURE                       R21 P8
      121 CAPTURE                          REF R11
      122 CAPTURE                          REF R12
      123 DUPTABLE                         R22 K30 [{"registerSerializer", "deregisterSerializer", "serialize", "deserialize", "clear"}]
      124 SETTABLEKS                       R13 R22 K25 ["registerSerializer"]
      126 SETTABLEKS                       R14 R22 K26 ["deregisterSerializer"]
      128 SETTABLEKS                       R16 R22 K27 ["serialize"]
      130 SETTABLEKS                       R20 R22 K28 ["deserialize"]
      132 SETTABLEKS                       R21 R22 K29 ["clear"]
      134 CLOSEUPVALS                      R11
      135 RETURN                           R22 1

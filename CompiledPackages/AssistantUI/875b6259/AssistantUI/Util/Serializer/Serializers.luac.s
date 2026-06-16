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
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["type"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R4 R2
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R2 1
       10 GETTABLEKS                       R3 R0 K0 ["type"]
       12 JUMPIFNOTEQKS                    R3 K1 ["text"] ; [+5]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["Type"]
       17 RETURN                           R3 1
       18 GETTABLEKS                       R3 R0 K0 ["type"]
       20 JUMPIFNOTEQKS                    R3 K3 ["image"] ; [+5]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K2 ["Type"]
       25 RETURN                           R3 1
       26 GETTABLEKS                       R3 R0 K0 ["type"]
       28 JUMPIFNOTEQKS                    R3 K4 ["tool_use"] ; [+12]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K5 ["get"]
       33 GETTABLEKS                       R4 R0 K6 ["name"]
       35 CALL                             R3 1 1
       36 JUMPIF                           R3 ; [+3]
       37 GETUPVAL                         R3 4
       38 GETTABLEKS                       R3 R3 K2 ["Type"]
       40 RETURN                           R3 1
       41 GETUPVAL                         R3 4
       42 GETTABLEKS                       R3 R3 K2 ["Type"]
       44 RETURN                           R3 1

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
       37 JUMPIFNOTLE                      R3 R4 ; [+542]
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
      127 JUMPIFNOT                        R10 ; [+48]
      128 MOVE                             R10 R6
      129 JUMPIFNOT                        R10 ; [+3]
      130 GETTABLEKS                       R11 R10 K1 ["type"]
      132 JUMPIF                           R11 ; [+1]
      133 LOADNIL                          R11
      134 JUMPIFNOT                        R11 ; [+5]
      135 GETUPVAL                         R13 3
      136 GETTABLE                         R12 R13 R11
      137 JUMPIFNOT                        R12 ; [+2]
      138 MOVE                             R9 R11
      139 JUMP                             ; [+38]
      140 GETTABLEKS                       R12 R5 K1 ["type"]
      142 JUMPIFNOTEQKS                    R12 K19 ["text"] ; [+5]
      144 GETUPVAL                         R9 4
      145 GETTABLEKS                       R9 R9 K20 ["Type"]
      147 JUMP                             ; [+30]
      148 GETTABLEKS                       R12 R5 K1 ["type"]
      150 JUMPIFNOTEQKS                    R12 K21 ["image"] ; [+5]
      152 GETUPVAL                         R9 5
      153 GETTABLEKS                       R9 R9 K20 ["Type"]
      155 JUMP                             ; [+22]
      156 GETTABLEKS                       R12 R5 K1 ["type"]
      158 JUMPIFNOTEQKS                    R12 K22 ["tool_use"] ; [+13]
      160 GETUPVAL                         R12 6
      161 GETTABLEKS                       R12 R12 K23 ["get"]
      163 GETTABLEKS                       R13 R5 K24 ["name"]
      165 CALL                             R12 1 1
      166 MOVE                             R9 R12
      167 JUMPIF                           R9 ; [+10]
      168 GETUPVAL                         R9 7
      169 GETTABLEKS                       R9 R9 K20 ["Type"]
      171 JUMP                             ; [+6]
      172 GETUPVAL                         R9 7
      173 GETTABLEKS                       R9 R9 K20 ["Type"]
      175 JUMP                             ; [+2]
      176 GETTABLEKS                       R9 R8 K1 ["type"]
      178 SETTABLEKS                       R9 R8 K1 ["type"]
      180 LOADNIL                          R10
      181 GETTABLEKS                       R11 R5 K1 ["type"]
      183 JUMPIFNOTEQKS                    R11 K22 ["tool_use"] ; [+183]
      185 GETTABLEKS                       R13 R5 K25 ["id"]
      187 FASTCALL1                        TYPE R13 ; [+2]
      188 GETIMPORT                        R12 K9 [type]
      190 CALL                             R12 1 1
      191 JUMPIFNOTEQKS                    R12 K26 ["string"] ; [+4]
      193 GETTABLEKS                       R11 R5 K25 ["id"]
      195 JUMP                             ; [+1]
      196 LOADK                            R11 K27 [""]
      197 DUPTABLE                         R12 K29 [{"type", "id", "name", "input"}]
      198 LOADK                            R13 K22 ["tool_use"]
      199 SETTABLEKS                       R13 R12 K1 ["type"]
      201 SETTABLEKS                       R11 R12 K25 ["id"]
      203 GETTABLEKS                       R15 R5 K24 ["name"]
      205 FASTCALL1                        TYPE R15 ; [+2]
      206 GETIMPORT                        R14 K9 [type]
      208 CALL                             R14 1 1
      209 JUMPIFNOTEQKS                    R14 K26 ["string"] ; [+4]
      211 GETTABLEKS                       R13 R5 K24 ["name"]
      213 JUMP                             ; [+1]
      214 LOADK                            R13 K27 [""]
      215 SETTABLEKS                       R13 R12 K24 ["name"]
      217 GETTABLEKS                       R15 R5 K28 ["input"]
      219 FASTCALL1                        TYPE R15 ; [+2]
      220 GETIMPORT                        R14 K9 [type]
      222 CALL                             R14 1 1
      223 JUMPIFNOTEQKS                    R14 K10 ["table"] ; [+4]
      225 GETTABLEKS                       R13 R5 K28 ["input"]
      227 JUMP                             ; [+2]
      228 NEWTABLE                         R13 0 0
      230 SETTABLEKS                       R13 R12 K28 ["input"]
      232 GETTABLE                         R13 R2 R11
      233 DUPTABLE                         R14 K32 [{"toolUseContent", "toolResultContent"}]
      234 SETTABLEKS                       R5 R14 K30 ["toolUseContent"]
      236 SETTABLEKS                       R13 R14 K31 ["toolResultContent"]
      238 JUMPIFNOT                        R9 ; [+3]
      239 GETUPVAL                         R16 8
      240 GETTABLE                         R15 R16 R9
      241 JUMP                             ; [+1]
      242 LOADNIL                          R15
      243 LOADNIL                          R16
      244 JUMPIFNOT                        R15 ; [+7]
      245 GETTABLEKS                       R17 R15 K33 ["fromMeta"]
      247 MOVE                             R18 R7
      248 MOVE                             R19 R14
      249 CALL                             R17 2 1
      250 MOVE                             R16 R17
      251 JUMP                             ; [+7]
      252 GETUPVAL                         R17 2
      253 CALL                             R17 0 1
      254 JUMPIFNOT                        R17 ; [+4]
      255 DUPTABLE                         R17 K34 [{"type"}]
      256 SETTABLEKS                       R9 R17 K1 ["type"]
      258 MOVE                             R16 R17
      259 JUMPIF                           R16 ; [+24]
      260 DUPTABLE                         R17 K37 [{"type", "toolIdentifier", "expanded"}]
      261 GETUPVAL                         R18 7
      262 GETTABLEKS                       R18 R18 K20 ["Type"]
      264 SETTABLEKS                       R18 R17 K1 ["type"]
      266 GETTABLEKS                       R20 R7 K35 ["toolIdentifier"]
      268 FASTCALL1                        TYPEOF R20 ; [+2]
      269 GETIMPORT                        R19 K39 [typeof]
      271 CALL                             R19 1 1
      272 JUMPIFNOTEQKS                    R19 K26 ["string"] ; [+4]
      274 GETTABLEKS                       R18 R7 K35 ["toolIdentifier"]
      276 JUMPIF                           R18 ; [+1]
      277 LOADNIL                          R18
      278 SETTABLEKS                       R18 R17 K35 ["toolIdentifier"]
      280 LOADB                            R18 0
      281 SETTABLEKS                       R18 R17 K36 ["expanded"]
      283 MOVE                             R16 R17
      284 FASTCALL2K                       ASSERT R16 K40 ; [+5]
      286 MOVE                             R18 R16
      287 LOADK                            R19 K40 ["Failed to set contentMeta for tool_use"]
      288 GETIMPORT                        R17 K16 [assert]
      290 CALL                             R17 2 0
      291 SETTABLEKS                       R12 R16 K41 ["toolUse"]
      293 JUMPIFNOT                        R13 ; [+65]
      294 DUPTABLE                         R17 K47 [{"type", "id", "name", "content", "isError", "structuredContent", "startTime", "startTimeAfterConfirmation"}]
      295 LOADK                            R18 K2 ["tool_result"]
      296 SETTABLEKS                       R18 R17 K1 ["type"]
      298 SETTABLEKS                       R11 R17 K25 ["id"]
      300 GETTABLEKS                       R18 R12 K24 ["name"]
      302 SETTABLEKS                       R18 R17 K24 ["name"]
      304 GETTABLEKS                       R20 R13 K42 ["content"]
      306 FASTCALL1                        TYPE R20 ; [+2]
      307 GETIMPORT                        R19 K9 [type]
      309 CALL                             R19 1 1
      310 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      312 GETTABLEKS                       R18 R13 K42 ["content"]
      314 JUMP                             ; [+2]
      315 NEWTABLE                         R18 0 0
      317 SETTABLEKS                       R18 R17 K42 ["content"]
      319 GETTABLEKS                       R20 R13 K43 ["isError"]
      321 FASTCALL1                        TYPE R20 ; [+2]
      322 GETIMPORT                        R19 K9 [type]
      324 CALL                             R19 1 1
      325 JUMPIFNOTEQKS                    R19 K48 ["boolean"] ; [+4]
      327 GETTABLEKS                       R18 R13 K43 ["isError"]
      329 JUMP                             ; [+1]
      330 LOADNIL                          R18
      331 SETTABLEKS                       R18 R17 K43 ["isError"]
      333 GETTABLEKS                       R20 R13 K44 ["structuredContent"]
      335 FASTCALL1                        TYPE R20 ; [+2]
      336 GETIMPORT                        R19 K9 [type]
      338 CALL                             R19 1 1
      339 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      341 GETTABLEKS                       R18 R13 K44 ["structuredContent"]
      343 JUMP                             ; [+1]
      344 LOADNIL                          R18
      345 SETTABLEKS                       R18 R17 K44 ["structuredContent"]
      347 GETTABLEKS                       R19 R6 K45 ["startTime"]
      349 ORK                              R18 R19 K49 [0]
      350 SETTABLEKS                       R18 R17 K45 ["startTime"]
      352 GETTABLEKS                       R19 R6 K46 ["startTimeAfterConfirmation"]
      354 ORK                              R18 R19 K49 [0]
      355 SETTABLEKS                       R18 R17 K46 ["startTimeAfterConfirmation"]
      357 SETTABLEKS                       R17 R16 K50 ["toolResult"]
      359 GETUPVAL                         R17 9
      360 GETTABLEKS                       R17 R17 K51 ["assign"]
      362 MOVE                             R18 R8
      363 MOVE                             R19 R16
      364 CALL                             R17 2 1
      365 MOVE                             R10 R17
      366 JUMP                             ; [+188]
      367 GETTABLEKS                       R11 R5 K1 ["type"]
      369 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      371 JUMP                             ; [+183]
      372 GETTABLEKS                       R11 R5 K1 ["type"]
      374 JUMPIFNOTEQKS                    R11 K21 ["image"] ; [+125]
      376 NEWTABLE                         R11 0 1
      378 MOVE                             R12 R5
      379 SETLIST                          R11 R12 1 [1]
      381 ADDK                             R12 R3 K18 [1]
      382 LENGTH                           R13 R0
      383 JUMPIFNOTLE                      R12 R13 ; [+43]
      385 ADDK                             R13 R3 K18 [1]
      386 GETTABLE                         R12 R0 R13
      387 JUMPIFNOT                        R12 ; [+39]
      388 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      390 LOADB                            R14 0
      391 GETTABLEKS                       R16 R13 K8 ["_meta"]
      393 FASTCALL1                        TYPE R16 ; [+2]
      394 GETIMPORT                        R15 K9 [type]
      396 CALL                             R15 1 1
      397 JUMPIFNOTEQKS                    R15 K10 ["table"] ; [+13]
      399 GETTABLEKS                       R16 R13 K8 ["_meta"]
      401 GETTABLEKS                       R16 R16 K11 ["roblox_studio_assistant"]
      403 FASTCALL1                        TYPE R16 ; [+2]
      404 GETIMPORT                        R15 K9 [type]
      406 CALL                             R15 1 1
      407 JUMPIFEQKS                       R15 K10 ["table"] ; [+2]
      409 LOADB                            R14 0 +1
      410 LOADB                            R14 1
      411 GETTABLEKS                       R15 R13 K1 ["type"]
      413 JUMPIFNOTEQKS                    R15 K21 ["image"] ; [+13]
      415 JUMPIF                           R14 ; [+11]
      416 ADDK                             R3 R3 K18 [1]
      417 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      419 MOVE                             R16 R11
      420 MOVE                             R17 R13
      421 GETIMPORT                        R15 K53 [table.insert]
      423 CALL                             R15 2 0
      424 JUMP                             ; [+1]
      425 JUMP                             ; [+1]
      426 JUMPBACK                         ; [-46]
      427 DUPTABLE                         R12 K55 [{"imageContents"}]
      428 SETTABLEKS                       R11 R12 K54 ["imageContents"]
      430 GETUPVAL                         R14 8
      431 GETUPVAL                         R15 5
      432 GETTABLEKS                       R15 R15 K20 ["Type"]
      434 GETTABLE                         R13 R14 R15
      435 LOADNIL                          R14
      436 JUMPIFNOT                        R13 ; [+6]
      437 GETTABLEKS                       R15 R13 K33 ["fromMeta"]
      439 MOVE                             R16 R7
      440 MOVE                             R17 R12
      441 CALL                             R15 2 1
      442 MOVE                             R14 R15
      443 JUMPIF                           R14 ; [+41]
      444 GETIMPORT                        R15 K57 [table.create]
      446 LENGTH                           R16 R11
      447 CALL                             R15 1 1
      448 MOVE                             R16 R11
      449 LOADNIL                          R17
      450 LOADNIL                          R18
      451 FORGPREP                         R16
      452 DUPTABLE                         R23 K60 [{"type", "data", "mimeType"}]
      453 GETTABLEKS                       R24 R20 K1 ["type"]
      455 SETTABLEKS                       R24 R23 K1 ["type"]
      457 GETTABLEKS                       R24 R20 K58 ["data"]
      459 SETTABLEKS                       R24 R23 K58 ["data"]
      461 GETTABLEKS                       R24 R20 K59 ["mimeType"]
      463 SETTABLEKS                       R24 R23 K59 ["mimeType"]
      465 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      467 MOVE                             R22 R15
      468 GETIMPORT                        R21 K53 [table.insert]
      470 CALL                             R21 2 0
      471 FORGLOOP                         R16 2 ; [-20]
      473 DUPTABLE                         R16 K61 [{"type", "imageContents", "expanded"}]
      474 GETUPVAL                         R17 5
      475 GETTABLEKS                       R17 R17 K20 ["Type"]
      477 SETTABLEKS                       R17 R16 K1 ["type"]
      479 SETTABLEKS                       R15 R16 K54 ["imageContents"]
      481 LOADB                            R17 0
      482 SETTABLEKS                       R17 R16 K36 ["expanded"]
      484 MOVE                             R14 R16
      485 FASTCALL2K                       ASSERT R14 K62 ; [+5]
      487 MOVE                             R16 R14
      488 LOADK                            R17 K62 ["Failed to set contentMeta for image"]
      489 GETIMPORT                        R15 K16 [assert]
      491 CALL                             R15 2 0
      492 GETUPVAL                         R15 9
      493 GETTABLEKS                       R15 R15 K51 ["assign"]
      495 MOVE                             R16 R8
      496 MOVE                             R17 R14
      497 CALL                             R15 2 1
      498 MOVE                             R10 R15
      499 JUMP                             ; [+55]
      500 DUPTABLE                         R11 K64 [{"textContent"}]
      501 SETTABLEKS                       R5 R11 K63 ["textContent"]
      503 GETUPVAL                         R13 8
      504 GETTABLE                         R12 R13 R9
      505 JUMPIF                           R12 ; [+5]
      506 GETUPVAL                         R13 8
      507 GETUPVAL                         R14 4
      508 GETTABLEKS                       R14 R14 K20 ["Type"]
      510 GETTABLE                         R12 R13 R14
      511 LOADNIL                          R13
      512 JUMPIFNOT                        R12 ; [+6]
      513 GETTABLEKS                       R14 R12 K33 ["fromMeta"]
      515 MOVE                             R15 R7
      516 MOVE                             R16 R11
      517 CALL                             R14 2 1
      518 MOVE                             R13 R14
      519 JUMPIF                           R13 ; [+21]
      520 DUPTABLE                         R14 K65 [{"type", "text"}]
      521 GETUPVAL                         R15 4
      522 GETTABLEKS                       R15 R15 K20 ["Type"]
      524 SETTABLEKS                       R15 R14 K1 ["type"]
      526 GETTABLEKS                       R17 R5 K19 ["text"]
      528 FASTCALL1                        TYPE R17 ; [+2]
      529 GETIMPORT                        R16 K9 [type]
      531 CALL                             R16 1 1
      532 JUMPIFNOTEQKS                    R16 K26 ["string"] ; [+4]
      534 GETTABLEKS                       R15 R5 K19 ["text"]
      536 JUMP                             ; [+1]
      537 LOADK                            R15 K27 [""]
      538 SETTABLEKS                       R15 R14 K19 ["text"]
      540 MOVE                             R13 R14
      541 FASTCALL2K                       ASSERT R13 K66 ; [+5]
      543 MOVE                             R15 R13
      544 LOADK                            R16 K66 ["Failed to set contentMeta for text or unrecognized type"]
      545 GETIMPORT                        R14 K16 [assert]
      547 CALL                             R14 2 0
      548 GETUPVAL                         R14 9
      549 GETTABLEKS                       R14 R14 K51 ["assign"]
      551 MOVE                             R15 R8
      552 MOVE                             R16 R13
      553 CALL                             R14 2 1
      554 MOVE                             R10 R14
      555 JUMPIFNOT                        R10 ; [+22]
      556 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      558 MOVE                             R12 R1
      559 MOVE                             R13 R10
      560 GETIMPORT                        R11 K53 [table.insert]
      562 CALL                             R11 2 0
      563 GETUPVAL                         R11 10
      564 GETTABLEKS                       R11 R11 K67 ["setContentMetadata"]
      566 GETTABLEKS                       R12 R4 K68 ["contentId"]
      568 DUPTABLE                         R13 K71 [{"threadId", "messageId"}]
      569 GETTABLEKS                       R14 R4 K69 ["threadId"]
      571 SETTABLEKS                       R14 R13 K69 ["threadId"]
      573 GETTABLEKS                       R14 R4 K70 ["messageId"]
      575 SETTABLEKS                       R14 R13 K70 ["messageId"]
      577 CALL                             R11 2 0
      578 ADDK                             R3 R3 K18 [1]
      579 JUMPBACK                         ; [-544]
      580 RETURN                           R1 1

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
      102 CAPTURE                          REF R12
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 DUPCLOSURE                       R19 K24 [PROTO_6]
      108 NEWCLOSURE                       R20 P7
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R9
      112 CAPTURE                          REF R12
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R4
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

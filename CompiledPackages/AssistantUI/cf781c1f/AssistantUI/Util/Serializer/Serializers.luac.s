PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R0
        7 NOT                              R3 R4
        8 LOADK                            R5 K0 ["Serializer already registered for type: %*"]
        9 MOVE                             R7 R0
       10 NAMECALL                         R5 R5 K1 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 FASTCALL2                        ASSERT R3 R4 ; [+3]
       16 GETIMPORT                        R2 K3 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 0
       20 SETTABLE                         R1 R2 R0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

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

PROTO_6:
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
       37 JUMPIFNOTLE                      R3 R4 ; [+481]
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
      125 GETTABLEKS                       R9 R8 K1 ["type"]
      127 LOADNIL                          R10
      128 GETTABLEKS                       R11 R5 K1 ["type"]
      130 JUMPIFNOTEQKS                    R11 K19 ["tool_use"] ; [+175]
      132 GETTABLEKS                       R13 R5 K20 ["id"]
      134 FASTCALL1                        TYPE R13 ; [+2]
      135 GETIMPORT                        R12 K9 [type]
      137 CALL                             R12 1 1
      138 JUMPIFNOTEQKS                    R12 K21 ["string"] ; [+4]
      140 GETTABLEKS                       R11 R5 K20 ["id"]
      142 JUMP                             ; [+1]
      143 LOADK                            R11 K22 [""]
      144 DUPTABLE                         R12 K25 [{"type", "id", "name", "input"}]
      145 LOADK                            R13 K19 ["tool_use"]
      146 SETTABLEKS                       R13 R12 K1 ["type"]
      148 SETTABLEKS                       R11 R12 K20 ["id"]
      150 GETTABLEKS                       R15 R5 K23 ["name"]
      152 FASTCALL1                        TYPE R15 ; [+2]
      153 GETIMPORT                        R14 K9 [type]
      155 CALL                             R14 1 1
      156 JUMPIFNOTEQKS                    R14 K21 ["string"] ; [+4]
      158 GETTABLEKS                       R13 R5 K23 ["name"]
      160 JUMP                             ; [+1]
      161 LOADK                            R13 K22 [""]
      162 SETTABLEKS                       R13 R12 K23 ["name"]
      164 GETTABLEKS                       R15 R5 K24 ["input"]
      166 FASTCALL1                        TYPE R15 ; [+2]
      167 GETIMPORT                        R14 K9 [type]
      169 CALL                             R14 1 1
      170 JUMPIFNOTEQKS                    R14 K10 ["table"] ; [+4]
      172 GETTABLEKS                       R13 R5 K24 ["input"]
      174 JUMP                             ; [+2]
      175 NEWTABLE                         R13 0 0
      177 SETTABLEKS                       R13 R12 K24 ["input"]
      179 GETTABLE                         R13 R2 R11
      180 DUPTABLE                         R14 K28 [{"toolUseContent", "toolResultContent"}]
      181 SETTABLEKS                       R5 R14 K26 ["toolUseContent"]
      183 SETTABLEKS                       R13 R14 K27 ["toolResultContent"]
      185 JUMPIFNOT                        R9 ; [+3]
      186 GETUPVAL                         R16 2
      187 GETTABLE                         R15 R16 R9
      188 JUMP                             ; [+1]
      189 LOADNIL                          R15
      190 LOADNIL                          R16
      191 JUMPIFNOT                        R15 ; [+6]
      192 GETTABLEKS                       R17 R15 K29 ["fromMeta"]
      194 MOVE                             R18 R7
      195 MOVE                             R19 R14
      196 CALL                             R17 2 1
      197 MOVE                             R16 R17
      198 JUMPIF                           R16 ; [+24]
      199 DUPTABLE                         R17 K32 [{"type", "toolIdentifier", "expanded"}]
      200 GETUPVAL                         R18 3
      201 GETTABLEKS                       R18 R18 K33 ["Type"]
      203 SETTABLEKS                       R18 R17 K1 ["type"]
      205 GETTABLEKS                       R20 R7 K30 ["toolIdentifier"]
      207 FASTCALL1                        TYPEOF R20 ; [+2]
      208 GETIMPORT                        R19 K35 [typeof]
      210 CALL                             R19 1 1
      211 JUMPIFNOTEQKS                    R19 K21 ["string"] ; [+4]
      213 GETTABLEKS                       R18 R7 K30 ["toolIdentifier"]
      215 JUMPIF                           R18 ; [+1]
      216 LOADNIL                          R18
      217 SETTABLEKS                       R18 R17 K30 ["toolIdentifier"]
      219 LOADB                            R18 0
      220 SETTABLEKS                       R18 R17 K31 ["expanded"]
      222 MOVE                             R16 R17
      223 FASTCALL2K                       ASSERT R16 K36 ; [+5]
      225 MOVE                             R18 R16
      226 LOADK                            R19 K36 ["Failed to set contentMeta for tool_use"]
      227 GETIMPORT                        R17 K16 [assert]
      229 CALL                             R17 2 0
      230 SETTABLEKS                       R12 R16 K37 ["toolUse"]
      232 JUMPIFNOT                        R13 ; [+65]
      233 DUPTABLE                         R17 K43 [{"type", "id", "name", "content", "isError", "structuredContent", "startTime", "startTimeAfterConfirmation"}]
      234 LOADK                            R18 K2 ["tool_result"]
      235 SETTABLEKS                       R18 R17 K1 ["type"]
      237 SETTABLEKS                       R11 R17 K20 ["id"]
      239 GETTABLEKS                       R18 R12 K23 ["name"]
      241 SETTABLEKS                       R18 R17 K23 ["name"]
      243 GETTABLEKS                       R20 R13 K38 ["content"]
      245 FASTCALL1                        TYPE R20 ; [+2]
      246 GETIMPORT                        R19 K9 [type]
      248 CALL                             R19 1 1
      249 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      251 GETTABLEKS                       R18 R13 K38 ["content"]
      253 JUMP                             ; [+2]
      254 NEWTABLE                         R18 0 0
      256 SETTABLEKS                       R18 R17 K38 ["content"]
      258 GETTABLEKS                       R20 R13 K39 ["isError"]
      260 FASTCALL1                        TYPE R20 ; [+2]
      261 GETIMPORT                        R19 K9 [type]
      263 CALL                             R19 1 1
      264 JUMPIFNOTEQKS                    R19 K44 ["boolean"] ; [+4]
      266 GETTABLEKS                       R18 R13 K39 ["isError"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R18
      270 SETTABLEKS                       R18 R17 K39 ["isError"]
      272 GETTABLEKS                       R20 R13 K40 ["structuredContent"]
      274 FASTCALL1                        TYPE R20 ; [+2]
      275 GETIMPORT                        R19 K9 [type]
      277 CALL                             R19 1 1
      278 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      280 GETTABLEKS                       R18 R13 K40 ["structuredContent"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R18
      284 SETTABLEKS                       R18 R17 K40 ["structuredContent"]
      286 GETTABLEKS                       R19 R6 K41 ["startTime"]
      288 ORK                              R18 R19 K45 [0]
      289 SETTABLEKS                       R18 R17 K41 ["startTime"]
      291 GETTABLEKS                       R19 R6 K42 ["startTimeAfterConfirmation"]
      293 ORK                              R18 R19 K45 [0]
      294 SETTABLEKS                       R18 R17 K42 ["startTimeAfterConfirmation"]
      296 SETTABLEKS                       R17 R16 K46 ["toolResult"]
      298 GETUPVAL                         R17 4
      299 GETTABLEKS                       R17 R17 K47 ["assign"]
      301 MOVE                             R18 R8
      302 MOVE                             R19 R16
      303 CALL                             R17 2 1
      304 MOVE                             R10 R17
      305 JUMP                             ; [+188]
      306 GETTABLEKS                       R11 R5 K1 ["type"]
      308 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      310 JUMP                             ; [+183]
      311 GETTABLEKS                       R11 R5 K1 ["type"]
      313 JUMPIFNOTEQKS                    R11 K48 ["image"] ; [+125]
      315 NEWTABLE                         R11 0 1
      317 MOVE                             R12 R5
      318 SETLIST                          R11 R12 1 [1]
      320 ADDK                             R12 R3 K18 [1]
      321 LENGTH                           R13 R0
      322 JUMPIFNOTLE                      R12 R13 ; [+43]
      324 ADDK                             R13 R3 K18 [1]
      325 GETTABLE                         R12 R0 R13
      326 JUMPIFNOT                        R12 ; [+39]
      327 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      329 LOADB                            R14 0
      330 GETTABLEKS                       R16 R13 K8 ["_meta"]
      332 FASTCALL1                        TYPE R16 ; [+2]
      333 GETIMPORT                        R15 K9 [type]
      335 CALL                             R15 1 1
      336 JUMPIFNOTEQKS                    R15 K10 ["table"] ; [+13]
      338 GETTABLEKS                       R16 R13 K8 ["_meta"]
      340 GETTABLEKS                       R16 R16 K11 ["roblox_studio_assistant"]
      342 FASTCALL1                        TYPE R16 ; [+2]
      343 GETIMPORT                        R15 K9 [type]
      345 CALL                             R15 1 1
      346 JUMPIFEQKS                       R15 K10 ["table"] ; [+2]
      348 LOADB                            R14 0 +1
      349 LOADB                            R14 1
      350 GETTABLEKS                       R15 R13 K1 ["type"]
      352 JUMPIFNOTEQKS                    R15 K48 ["image"] ; [+13]
      354 JUMPIF                           R14 ; [+11]
      355 ADDK                             R3 R3 K18 [1]
      356 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      358 MOVE                             R16 R11
      359 MOVE                             R17 R13
      360 GETIMPORT                        R15 K50 [table.insert]
      362 CALL                             R15 2 0
      363 JUMP                             ; [+1]
      364 JUMP                             ; [+1]
      365 JUMPBACK                         ; [-46]
      366 DUPTABLE                         R12 K52 [{"imageContents"}]
      367 SETTABLEKS                       R11 R12 K51 ["imageContents"]
      369 GETUPVAL                         R14 2
      370 GETUPVAL                         R15 5
      371 GETTABLEKS                       R15 R15 K33 ["Type"]
      373 GETTABLE                         R13 R14 R15
      374 LOADNIL                          R14
      375 JUMPIFNOT                        R13 ; [+6]
      376 GETTABLEKS                       R15 R13 K29 ["fromMeta"]
      378 MOVE                             R16 R7
      379 MOVE                             R17 R12
      380 CALL                             R15 2 1
      381 MOVE                             R14 R15
      382 JUMPIF                           R14 ; [+41]
      383 GETIMPORT                        R15 K54 [table.create]
      385 LENGTH                           R16 R11
      386 CALL                             R15 1 1
      387 MOVE                             R16 R11
      388 LOADNIL                          R17
      389 LOADNIL                          R18
      390 FORGPREP                         R16
      391 DUPTABLE                         R23 K57 [{"type", "data", "mimeType"}]
      392 GETTABLEKS                       R24 R20 K1 ["type"]
      394 SETTABLEKS                       R24 R23 K1 ["type"]
      396 GETTABLEKS                       R24 R20 K55 ["data"]
      398 SETTABLEKS                       R24 R23 K55 ["data"]
      400 GETTABLEKS                       R24 R20 K56 ["mimeType"]
      402 SETTABLEKS                       R24 R23 K56 ["mimeType"]
      404 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      406 MOVE                             R22 R15
      407 GETIMPORT                        R21 K50 [table.insert]
      409 CALL                             R21 2 0
      410 FORGLOOP                         R16 2 ; [-20]
      412 DUPTABLE                         R16 K58 [{"type", "imageContents", "expanded"}]
      413 GETUPVAL                         R17 5
      414 GETTABLEKS                       R17 R17 K33 ["Type"]
      416 SETTABLEKS                       R17 R16 K1 ["type"]
      418 SETTABLEKS                       R15 R16 K51 ["imageContents"]
      420 LOADB                            R17 0
      421 SETTABLEKS                       R17 R16 K31 ["expanded"]
      423 MOVE                             R14 R16
      424 FASTCALL2K                       ASSERT R14 K59 ; [+5]
      426 MOVE                             R16 R14
      427 LOADK                            R17 K59 ["Failed to set contentMeta for image"]
      428 GETIMPORT                        R15 K16 [assert]
      430 CALL                             R15 2 0
      431 GETUPVAL                         R15 4
      432 GETTABLEKS                       R15 R15 K47 ["assign"]
      434 MOVE                             R16 R8
      435 MOVE                             R17 R14
      436 CALL                             R15 2 1
      437 MOVE                             R10 R15
      438 JUMP                             ; [+55]
      439 DUPTABLE                         R11 K61 [{"textContent"}]
      440 SETTABLEKS                       R5 R11 K60 ["textContent"]
      442 GETUPVAL                         R13 2
      443 GETTABLE                         R12 R13 R9
      444 JUMPIF                           R12 ; [+5]
      445 GETUPVAL                         R13 2
      446 GETUPVAL                         R14 6
      447 GETTABLEKS                       R14 R14 K33 ["Type"]
      449 GETTABLE                         R12 R13 R14
      450 LOADNIL                          R13
      451 JUMPIFNOT                        R12 ; [+6]
      452 GETTABLEKS                       R14 R12 K29 ["fromMeta"]
      454 MOVE                             R15 R7
      455 MOVE                             R16 R11
      456 CALL                             R14 2 1
      457 MOVE                             R13 R14
      458 JUMPIF                           R13 ; [+21]
      459 DUPTABLE                         R14 K63 [{"type", "text"}]
      460 GETUPVAL                         R15 6
      461 GETTABLEKS                       R15 R15 K33 ["Type"]
      463 SETTABLEKS                       R15 R14 K1 ["type"]
      465 GETTABLEKS                       R17 R5 K62 ["text"]
      467 FASTCALL1                        TYPE R17 ; [+2]
      468 GETIMPORT                        R16 K9 [type]
      470 CALL                             R16 1 1
      471 JUMPIFNOTEQKS                    R16 K21 ["string"] ; [+4]
      473 GETTABLEKS                       R15 R5 K62 ["text"]
      475 JUMP                             ; [+1]
      476 LOADK                            R15 K22 [""]
      477 SETTABLEKS                       R15 R14 K62 ["text"]
      479 MOVE                             R13 R14
      480 FASTCALL2K                       ASSERT R13 K64 ; [+5]
      482 MOVE                             R15 R13
      483 LOADK                            R16 K64 ["Failed to set contentMeta for text or unrecognized type"]
      484 GETIMPORT                        R14 K16 [assert]
      486 CALL                             R14 2 0
      487 GETUPVAL                         R14 4
      488 GETTABLEKS                       R14 R14 K47 ["assign"]
      490 MOVE                             R15 R8
      491 MOVE                             R16 R13
      492 CALL                             R14 2 1
      493 MOVE                             R10 R14
      494 JUMPIFNOT                        R10 ; [+22]
      495 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      497 MOVE                             R12 R1
      498 MOVE                             R13 R10
      499 GETIMPORT                        R11 K50 [table.insert]
      501 CALL                             R11 2 0
      502 GETUPVAL                         R11 7
      503 GETTABLEKS                       R11 R11 K65 ["setContentMetadata"]
      505 GETTABLEKS                       R12 R4 K66 ["contentId"]
      507 DUPTABLE                         R13 K69 [{"threadId", "messageId"}]
      508 GETTABLEKS                       R14 R4 K67 ["threadId"]
      510 SETTABLEKS                       R14 R13 K67 ["threadId"]
      512 GETTABLEKS                       R14 R4 K68 ["messageId"]
      514 SETTABLEKS                       R14 R13 K68 ["messageId"]
      516 CALL                             R11 2 0
      517 ADDK                             R3 R3 K18 [1]
      518 JUMPBACK                         ; [-483]
      519 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K12 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Components"]
       39 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       41 GETTABLEKS                       R6 R6 K15 ["GenericToolContentWidget"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K13 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["ContentWidgets"]
       50 GETTABLEKS                       R7 R7 K16 ["ImageContentWidget"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K13 ["Components"]
       57 GETTABLEKS                       R8 R8 K14 ["ContentWidgets"]
       59 GETTABLEKS                       R8 R8 K17 ["TextContentWidget"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Flags"]
       66 GETTABLEKS                       R9 R9 K19 ["FFlagDebugLogAssistantUI"]
       68 CALL                             R8 1 1
       69 NEWTABLE                         R9 0 0
       71 NEWCLOSURE                       R10 P0
       72 CAPTURE                          REF R9
       73 NEWCLOSURE                       R11 P1
       74 CAPTURE                          REF R9
       75 DUPCLOSURE                       R12 K20 [PROTO_2]
       76 NEWCLOSURE                       R13 P3
       77 CAPTURE                          REF R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R6
       80 DUPCLOSURE                       R14 K21 [PROTO_4]
       81 DUPCLOSURE                       R15 K22 [PROTO_5]
       82 NEWCLOSURE                       R16 P6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R15
       85 CAPTURE                          REF R9
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R1
       91 NEWCLOSURE                       R17 P7
       92 CAPTURE                          REF R9
       93 DUPTABLE                         R18 K28 [{"registerSerializer", "deregisterSerializer", "serialize", "deserialize", "clear"}]
       94 SETTABLEKS                       R10 R18 K23 ["registerSerializer"]
       96 SETTABLEKS                       R11 R18 K24 ["deregisterSerializer"]
       98 SETTABLEKS                       R13 R18 K25 ["serialize"]
      100 SETTABLEKS                       R16 R18 K26 ["deserialize"]
      102 SETTABLEKS                       R17 R18 K27 ["clear"]
      104 CLOSEUPVALS                      R9
      105 RETURN                           R18 1

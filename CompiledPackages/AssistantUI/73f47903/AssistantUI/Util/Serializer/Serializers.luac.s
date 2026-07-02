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
        0 DUPTABLE                         R4 K18 [{[1], ["sourceId"], ["rootId"], ["type"], ["toolUse"] = , ["toolResult"] = , ["generating"] = , ["expanded"] = , ["createdAt"], ["updatedAt"], ["ephemeral"] = False, ["isDirty"] = False, ["isDeleted"], ["lastServerStreamId"], ["LayoutOrder"], ["_meta"]}]
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
       37 JUMPIFNOTLE                      R3 R4 ; [+527]
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
      180 JUMPIFNOTEQKS                    R11 K19 ["tool_use"] ; [+174]
      182 GETTABLEKS                       R13 R5 K25 ["id"]
      184 FASTCALL1                        TYPE R13 ; [+2]
      185 GETIMPORT                        R12 K9 [type]
      187 CALL                             R12 1 1
      188 JUMPIFNOTEQKS                    R12 K26 ["string"] ; [+4]
      190 GETTABLEKS                       R11 R5 K25 ["id"]
      192 JUMP                             ; [+1]
      193 LOADK                            R11 K27 [""]
      194 DUPTABLE                         R12 K29 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
      195 SETTABLEKS                       R11 R12 K25 ["id"]
      197 GETTABLEKS                       R15 R5 K21 ["name"]
      199 FASTCALL1                        TYPE R15 ; [+2]
      200 GETIMPORT                        R14 K9 [type]
      202 CALL                             R14 1 1
      203 JUMPIFNOTEQKS                    R14 K26 ["string"] ; [+4]
      205 GETTABLEKS                       R13 R5 K21 ["name"]
      207 JUMP                             ; [+1]
      208 LOADK                            R13 K27 [""]
      209 SETTABLEKS                       R13 R12 K21 ["name"]
      211 GETTABLEKS                       R15 R5 K28 ["input"]
      213 FASTCALL1                        TYPE R15 ; [+2]
      214 GETIMPORT                        R14 K9 [type]
      216 CALL                             R14 1 1
      217 JUMPIFNOTEQKS                    R14 K10 ["table"] ; [+4]
      219 GETTABLEKS                       R13 R5 K28 ["input"]
      221 JUMP                             ; [+2]
      222 NEWTABLE                         R13 0 0
      224 SETTABLEKS                       R13 R12 K28 ["input"]
      226 GETTABLE                         R13 R2 R11
      227 DUPTABLE                         R14 K32 [{"toolUseContent", "toolResultContent"}]
      228 SETTABLEKS                       R5 R14 K30 ["toolUseContent"]
      230 SETTABLEKS                       R13 R14 K31 ["toolResultContent"]
      232 JUMPIFNOT                        R9 ; [+3]
      233 GETUPVAL                         R16 8
      234 GETTABLE                         R15 R16 R9
      235 JUMP                             ; [+1]
      236 LOADNIL                          R15
      237 LOADNIL                          R16
      238 JUMPIFNOT                        R15 ; [+7]
      239 GETTABLEKS                       R17 R15 K33 ["fromMeta"]
      241 MOVE                             R18 R7
      242 MOVE                             R19 R14
      243 CALL                             R17 2 1
      244 MOVE                             R16 R17
      245 JUMP                             ; [+7]
      246 GETUPVAL                         R17 2
      247 CALL                             R17 0 1
      248 JUMPIFNOT                        R17 ; [+4]
      249 DUPTABLE                         R17 K34 [{"type"}]
      250 SETTABLEKS                       R9 R17 K1 ["type"]
      252 MOVE                             R16 R17
      253 JUMPIF                           R16 ; [+21]
      254 DUPTABLE                         R17 K38 [{["type"], ["toolIdentifier"], ["expanded"] = False}]
      255 GETUPVAL                         R18 7
      256 GETTABLEKS                       R18 R18 K23 ["Type"]
      258 SETTABLEKS                       R18 R17 K1 ["type"]
      260 GETTABLEKS                       R20 R7 K35 ["toolIdentifier"]
      262 FASTCALL1                        TYPEOF R20 ; [+2]
      263 GETIMPORT                        R19 K40 [typeof]
      265 CALL                             R19 1 1
      266 JUMPIFNOTEQKS                    R19 K26 ["string"] ; [+4]
      268 GETTABLEKS                       R18 R7 K35 ["toolIdentifier"]
      270 JUMPIF                           R18 ; [+1]
      271 LOADNIL                          R18
      272 SETTABLEKS                       R18 R17 K35 ["toolIdentifier"]
      274 MOVE                             R16 R17
      275 FASTCALL2K                       ASSERT R16 K41 ; [+5]
      277 MOVE                             R18 R16
      278 LOADK                            R19 K41 ["Failed to set contentMeta for tool_use"]
      279 GETIMPORT                        R17 K16 [assert]
      281 CALL                             R17 2 0
      282 SETTABLEKS                       R12 R16 K42 ["toolUse"]
      284 JUMPIFNOT                        R13 ; [+62]
      285 DUPTABLE                         R17 K48 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["structuredContent"], ["startTime"], ["startTimeAfterConfirmation"]}]
      286 SETTABLEKS                       R11 R17 K25 ["id"]
      288 GETTABLEKS                       R18 R12 K21 ["name"]
      290 SETTABLEKS                       R18 R17 K21 ["name"]
      292 GETTABLEKS                       R20 R13 K43 ["content"]
      294 FASTCALL1                        TYPE R20 ; [+2]
      295 GETIMPORT                        R19 K9 [type]
      297 CALL                             R19 1 1
      298 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      300 GETTABLEKS                       R18 R13 K43 ["content"]
      302 JUMP                             ; [+2]
      303 NEWTABLE                         R18 0 0
      305 SETTABLEKS                       R18 R17 K43 ["content"]
      307 GETTABLEKS                       R20 R13 K44 ["isError"]
      309 FASTCALL1                        TYPE R20 ; [+2]
      310 GETIMPORT                        R19 K9 [type]
      312 CALL                             R19 1 1
      313 JUMPIFNOTEQKS                    R19 K49 ["boolean"] ; [+4]
      315 GETTABLEKS                       R18 R13 K44 ["isError"]
      317 JUMP                             ; [+1]
      318 LOADNIL                          R18
      319 SETTABLEKS                       R18 R17 K44 ["isError"]
      321 GETTABLEKS                       R20 R13 K45 ["structuredContent"]
      323 FASTCALL1                        TYPE R20 ; [+2]
      324 GETIMPORT                        R19 K9 [type]
      326 CALL                             R19 1 1
      327 JUMPIFNOTEQKS                    R19 K10 ["table"] ; [+4]
      329 GETTABLEKS                       R18 R13 K45 ["structuredContent"]
      331 JUMP                             ; [+1]
      332 LOADNIL                          R18
      333 SETTABLEKS                       R18 R17 K45 ["structuredContent"]
      335 GETTABLEKS                       R19 R6 K46 ["startTime"]
      337 ORK                              R18 R19 K50 [0]
      338 SETTABLEKS                       R18 R17 K46 ["startTime"]
      340 GETTABLEKS                       R19 R6 K47 ["startTimeAfterConfirmation"]
      342 ORK                              R18 R19 K50 [0]
      343 SETTABLEKS                       R18 R17 K47 ["startTimeAfterConfirmation"]
      345 SETTABLEKS                       R17 R16 K51 ["toolResult"]
      347 GETUPVAL                         R17 9
      348 GETTABLEKS                       R17 R17 K52 ["assign"]
      350 MOVE                             R18 R8
      351 MOVE                             R19 R16
      352 CALL                             R17 2 1
      353 MOVE                             R10 R17
      354 JUMP                             ; [+185]
      355 GETTABLEKS                       R11 R5 K1 ["type"]
      357 JUMPIFNOTEQKS                    R11 K2 ["tool_result"] ; [+2]
      359 JUMP                             ; [+180]
      360 GETTABLEKS                       R11 R5 K1 ["type"]
      362 JUMPIFNOTEQKS                    R11 K24 ["image"] ; [+122]
      364 NEWTABLE                         R11 0 1
      366 MOVE                             R12 R5
      367 SETLIST                          R11 R12 1 [1]
      369 ADDK                             R12 R3 K18 [1]
      370 LENGTH                           R13 R0
      371 JUMPIFNOTLE                      R12 R13 ; [+43]
      373 ADDK                             R13 R3 K18 [1]
      374 GETTABLE                         R12 R0 R13
      375 JUMPIFNOT                        R12 ; [+39]
      376 GETTABLEKS                       R13 R12 K0 ["mcpContent"]
      378 LOADB                            R14 0
      379 GETTABLEKS                       R16 R13 K8 ["_meta"]
      381 FASTCALL1                        TYPE R16 ; [+2]
      382 GETIMPORT                        R15 K9 [type]
      384 CALL                             R15 1 1
      385 JUMPIFNOTEQKS                    R15 K10 ["table"] ; [+13]
      387 GETTABLEKS                       R16 R13 K8 ["_meta"]
      389 GETTABLEKS                       R16 R16 K11 ["roblox_studio_assistant"]
      391 FASTCALL1                        TYPE R16 ; [+2]
      392 GETIMPORT                        R15 K9 [type]
      394 CALL                             R15 1 1
      395 JUMPIFEQKS                       R15 K10 ["table"] ; [+2]
      397 LOADB                            R14 0 +1
      398 LOADB                            R14 1
      399 GETTABLEKS                       R15 R13 K1 ["type"]
      401 JUMPIFNOTEQKS                    R15 K24 ["image"] ; [+13]
      403 JUMPIF                           R14 ; [+11]
      404 ADDK                             R3 R3 K18 [1]
      405 FASTCALL2                        TABLE_INSERT R11 R13 ; [+5]
      407 MOVE                             R16 R11
      408 MOVE                             R17 R13
      409 GETIMPORT                        R15 K54 [table.insert]
      411 CALL                             R15 2 0
      412 JUMP                             ; [+1]
      413 JUMP                             ; [+1]
      414 JUMPBACK                         ; [-46]
      415 DUPTABLE                         R12 K56 [{"imageContents"}]
      416 SETTABLEKS                       R11 R12 K55 ["imageContents"]
      418 GETUPVAL                         R14 8
      419 GETUPVAL                         R15 6
      420 GETTABLEKS                       R15 R15 K23 ["Type"]
      422 GETTABLE                         R13 R14 R15
      423 LOADNIL                          R14
      424 JUMPIFNOT                        R13 ; [+6]
      425 GETTABLEKS                       R15 R13 K33 ["fromMeta"]
      427 MOVE                             R16 R7
      428 MOVE                             R17 R12
      429 CALL                             R15 2 1
      430 MOVE                             R14 R15
      431 JUMPIF                           R14 ; [+38]
      432 GETIMPORT                        R15 K58 [table.create]
      434 LENGTH                           R16 R11
      435 CALL                             R15 1 1
      436 MOVE                             R16 R11
      437 LOADNIL                          R17
      438 LOADNIL                          R18
      439 FORGPREP                         R16
      440 DUPTABLE                         R23 K61 [{"type", "data", "mimeType"}]
      441 GETTABLEKS                       R24 R20 K1 ["type"]
      443 SETTABLEKS                       R24 R23 K1 ["type"]
      445 GETTABLEKS                       R24 R20 K59 ["data"]
      447 SETTABLEKS                       R24 R23 K59 ["data"]
      449 GETTABLEKS                       R24 R20 K60 ["mimeType"]
      451 SETTABLEKS                       R24 R23 K60 ["mimeType"]
      453 FASTCALL2                        TABLE_INSERT R15 R23 ; [+4]
      455 MOVE                             R22 R15
      456 GETIMPORT                        R21 K54 [table.insert]
      458 CALL                             R21 2 0
      459 FORGLOOP                         R16 2 ; [-20]
      461 DUPTABLE                         R16 K62 [{["type"], ["imageContents"], ["expanded"] = False}]
      462 GETUPVAL                         R17 6
      463 GETTABLEKS                       R17 R17 K23 ["Type"]
      465 SETTABLEKS                       R17 R16 K1 ["type"]
      467 SETTABLEKS                       R15 R16 K55 ["imageContents"]
      469 MOVE                             R14 R16
      470 FASTCALL2K                       ASSERT R14 K63 ; [+5]
      472 MOVE                             R16 R14
      473 LOADK                            R17 K63 ["Failed to set contentMeta for image"]
      474 GETIMPORT                        R15 K16 [assert]
      476 CALL                             R15 2 0
      477 GETUPVAL                         R15 9
      478 GETTABLEKS                       R15 R15 K52 ["assign"]
      480 MOVE                             R16 R8
      481 MOVE                             R17 R14
      482 CALL                             R15 2 1
      483 MOVE                             R10 R15
      484 JUMP                             ; [+55]
      485 DUPTABLE                         R11 K65 [{"textContent"}]
      486 SETTABLEKS                       R5 R11 K64 ["textContent"]
      488 GETUPVAL                         R13 8
      489 GETTABLE                         R12 R13 R9
      490 JUMPIF                           R12 ; [+5]
      491 GETUPVAL                         R13 8
      492 GETUPVAL                         R14 5
      493 GETTABLEKS                       R14 R14 K23 ["Type"]
      495 GETTABLE                         R12 R13 R14
      496 LOADNIL                          R13
      497 JUMPIFNOT                        R12 ; [+6]
      498 GETTABLEKS                       R14 R12 K33 ["fromMeta"]
      500 MOVE                             R15 R7
      501 MOVE                             R16 R11
      502 CALL                             R14 2 1
      503 MOVE                             R13 R14
      504 JUMPIF                           R13 ; [+21]
      505 DUPTABLE                         R14 K66 [{"type", "text"}]
      506 GETUPVAL                         R15 5
      507 GETTABLEKS                       R15 R15 K23 ["Type"]
      509 SETTABLEKS                       R15 R14 K1 ["type"]
      511 GETTABLEKS                       R17 R5 K22 ["text"]
      513 FASTCALL1                        TYPE R17 ; [+2]
      514 GETIMPORT                        R16 K9 [type]
      516 CALL                             R16 1 1
      517 JUMPIFNOTEQKS                    R16 K26 ["string"] ; [+4]
      519 GETTABLEKS                       R15 R5 K22 ["text"]
      521 JUMP                             ; [+1]
      522 LOADK                            R15 K27 [""]
      523 SETTABLEKS                       R15 R14 K22 ["text"]
      525 MOVE                             R13 R14
      526 FASTCALL2K                       ASSERT R13 K67 ; [+5]
      528 MOVE                             R15 R13
      529 LOADK                            R16 K67 ["Failed to set contentMeta for text or unrecognized type"]
      530 GETIMPORT                        R14 K16 [assert]
      532 CALL                             R14 2 0
      533 GETUPVAL                         R14 9
      534 GETTABLEKS                       R14 R14 K52 ["assign"]
      536 MOVE                             R15 R8
      537 MOVE                             R16 R13
      538 CALL                             R14 2 1
      539 MOVE                             R10 R14
      540 JUMPIFNOT                        R10 ; [+22]
      541 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      543 MOVE                             R12 R1
      544 MOVE                             R13 R10
      545 GETIMPORT                        R11 K54 [table.insert]
      547 CALL                             R11 2 0
      548 GETUPVAL                         R11 10
      549 GETTABLEKS                       R11 R11 K68 ["setContentMetadata"]
      551 GETTABLEKS                       R12 R4 K69 ["contentId"]
      553 DUPTABLE                         R13 K72 [{"threadId", "messageId"}]
      554 GETTABLEKS                       R14 R4 K70 ["threadId"]
      556 SETTABLEKS                       R14 R13 K70 ["threadId"]
      558 GETTABLEKS                       R14 R4 K71 ["messageId"]
      560 SETTABLEKS                       R14 R13 K71 ["messageId"]
      562 CALL                             R11 2 0
      563 ADDK                             R3 R3 K18 [1]
      564 JUMPBACK                         ; [-529]
      565 RETURN                           R1 1

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

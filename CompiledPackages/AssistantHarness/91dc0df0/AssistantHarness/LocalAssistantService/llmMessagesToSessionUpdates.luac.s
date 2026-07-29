PROTO_0:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^%s*<system_reminder>"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["text"] ; [+21]
       10 GETTABLEKS                       R8 R6 K1 ["text"]
       12 GETIMPORT                        R9 K4 [string.match]
       14 MOVE                             R10 R8
       15 LOADK                            R11 K5 ["^%s*<system_reminder>"]
       16 CALL                             R9 2 1
       17 JUMPIFNOTEQKNIL                  R9 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 JUMPIF                           R7 ; [+8]
       22 GETTABLEKS                       R9 R6 K1 ["text"]
       24 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       26 MOVE                             R8 R1
       27 GETIMPORT                        R7 K8 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-25]
       32 GETIMPORT                        R2 K10 [table.concat]
       34 MOVE                             R3 R1
       35 LOADK                            R4 K11 [""]
       36 CALL                             R2 2 -1
       37 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADNIL                          R8
       11 GETTABLEKS                       R9 R7 K0 ["type"]
       13 JUMPIFNOTEQKS                    R9 K1 ["text"] ; [+8]
       15 DUPTABLE                         R9 K2 [{[1] = "text", ["text"]}]
       16 GETTABLEKS                       R10 R7 K1 ["text"]
       18 SETTABLEKS                       R10 R9 K1 ["text"]
       20 MOVE                             R8 R9
       21 JUMP                             ; [+62]
       22 GETTABLEKS                       R9 R7 K0 ["type"]
       24 JUMPIFNOTEQKS                    R9 K3 ["image"] ; [+12]
       26 DUPTABLE                         R9 K6 [{[1] = "image", ["data"], ["mimeType"]}]
       27 GETTABLEKS                       R10 R7 K4 ["data"]
       29 SETTABLEKS                       R10 R9 K4 ["data"]
       31 GETTABLEKS                       R10 R7 K5 ["mimeType"]
       33 SETTABLEKS                       R10 R9 K5 ["mimeType"]
       35 MOVE                             R8 R9
       36 JUMP                             ; [+47]
       37 GETTABLEKS                       R9 R7 K0 ["type"]
       39 JUMPIFNOTEQKS                    R9 K7 ["audio"] ; [+12]
       41 DUPTABLE                         R9 K8 [{[1] = "audio", ["data"], ["mimeType"]}]
       42 GETTABLEKS                       R10 R7 K4 ["data"]
       44 SETTABLEKS                       R10 R9 K4 ["data"]
       46 GETTABLEKS                       R10 R7 K5 ["mimeType"]
       48 SETTABLEKS                       R10 R9 K5 ["mimeType"]
       50 MOVE                             R8 R9
       51 JUMP                             ; [+32]
       52 GETTABLEKS                       R9 R7 K0 ["type"]
       54 JUMPIFNOTEQKS                    R9 K9 ["resource"] ; [+8]
       56 DUPTABLE                         R9 K10 [{[1] = "resource", ["resource"]}]
       57 GETTABLEKS                       R10 R7 K9 ["resource"]
       59 SETTABLEKS                       R10 R9 K9 ["resource"]
       61 MOVE                             R8 R9
       62 JUMP                             ; [+21]
       63 DUPTABLE                         R9 K15 [{[1] = "resource_link", ["uri"], ["name"], ["description"], ["mimeType"]}]
       64 GETTABLEKS                       R10 R7 K12 ["uri"]
       66 SETTABLEKS                       R10 R9 K12 ["uri"]
       68 GETTABLEKS                       R10 R7 K13 ["name"]
       70 JUMPIF                           R10 ; [+2]
       71 GETTABLEKS                       R10 R7 K12 ["uri"]
       73 SETTABLEKS                       R10 R9 K13 ["name"]
       75 GETTABLEKS                       R10 R7 K14 ["description"]
       77 SETTABLEKS                       R10 R9 K14 ["description"]
       79 GETTABLEKS                       R10 R7 K5 ["mimeType"]
       81 SETTABLEKS                       R10 R9 K5 ["mimeType"]
       83 MOVE                             R8 R9
       84 DUPTABLE                         R11 K17 [{[1] = "content", ["content"]}]
       85 SETTABLEKS                       R8 R11 K16 ["content"]
       87 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       89 MOVE                             R10 R1
       90 GETIMPORT                        R9 K20 [table.insert]
       92 CALL                             R9 2 0
       93 FORGLOOP                         R3 2 ; [-84]
       95 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 DUPTABLE                         R2 K8 [{["sessionUpdate"] = "tool_call_update", ["toolCallId"], ["title"], ["status"], ["content"], ["rawOutput"]}]
        3 SETTABLEKS                       R1 R2 K3 ["toolCallId"]
        5 GETTABLEKS                       R3 R0 K9 ["name"]
        7 SETTABLEKS                       R3 R2 K4 ["title"]
        9 GETTABLEKS                       R4 R0 K10 ["isError"]
       11 JUMPIFNOT                        R4 ; [+2]
       12 LOADK                            R3 K11 ["failed"]
       13 JUMP                             ; [+1]
       14 LOADK                            R3 K12 ["completed"]
       15 SETTABLEKS                       R3 R2 K5 ["status"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R4 R0 K6 ["content"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K6 ["content"]
       23 GETTABLEKS                       R3 R0 K13 ["structuredContent"]
       25 SETTABLEKS                       R3 R2 K7 ["rawOutput"]
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R4 1
       29 GETTABLE                         R3 R4 R1
       30 JUMPIF                           R3 ; [+3]
       31 GETUPVAL                         R3 2
       32 SETTABLE                         R2 R3 R1
       33 RETURN                           R0 0
       34 GETUPVAL                         R4 3
       35 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       37 MOVE                             R5 R2
       38 GETIMPORT                        R3 K16 [table.insert]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K7 [{[1] = "tool_call", ["toolCallId"], ["title"], ["status"] = "pending", ["rawInput"]}]
        1 GETTABLEKS                       R2 R0 K8 ["id"]
        3 SETTABLEKS                       R2 R1 K2 ["toolCallId"]
        5 GETTABLEKS                       R2 R0 K9 ["name"]
        7 SETTABLEKS                       R2 R1 K3 ["title"]
        9 GETTABLEKS                       R2 R0 K10 ["input"]
       11 JUMPIF                           R2 ; [+2]
       12 NEWTABLE                         R2 0 0
       14 SETTABLEKS                       R2 R1 K6 ["rawInput"]
       16 GETUPVAL                         R3 0
       17 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       19 MOVE                             R4 R1
       20 GETIMPORT                        R2 K13 [table.insert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R0 K8 ["id"]
       25 JUMPIFNOT                        R2 ; [+22]
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R3 R0 K8 ["id"]
       29 LOADB                            R4 1
       30 SETTABLE                         R4 R2 R3
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R4 R0 K8 ["id"]
       34 GETTABLE                         R2 R3 R4
       35 JUMPIFNOT                        R2 ; [+12]
       36 GETUPVAL                         R4 0
       37 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       39 MOVE                             R5 R2
       40 GETIMPORT                        R3 K13 [table.insert]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 2
       44 GETTABLEKS                       R4 R0 K8 ["id"]
       46 LOADNIL                          R5
       47 SETTABLE                         R5 R3 R4
       48 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 NEWTABLE                         R3 0 0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          VAL R1
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R3
       15 MOVE                             R6 R0
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 GETTABLEKS                       R11 R10 K0 ["role"]
       21 JUMPIFNOTEQKS                    R11 K1 ["user"] ; [+34]
       23 GETUPVAL                         R11 1
       24 GETTABLEKS                       R12 R10 K2 ["content"]
       26 CALL                             R11 1 1
       27 JUMPIFEQKS                       R11 K3 [""] ; [+13]
       29 DUPTABLE                         R14 K6 [{["sessionUpdate"] = "user_message_chunk", ["content"]}]
       30 DUPTABLE                         R15 K9 [{["type"] = "text", ["text"]}]
       31 SETTABLEKS                       R11 R15 K8 ["text"]
       33 SETTABLEKS                       R15 R14 K2 ["content"]
       35 FASTCALL2                        TABLE_INSERT R1 R14 ; [+4]
       37 MOVE                             R13 R1
       38 GETIMPORT                        R12 K12 [table.insert]
       40 CALL                             R12 2 0
       41 GETTABLEKS                       R12 R10 K2 ["content"]
       43 LOADNIL                          R13
       44 LOADNIL                          R14
       45 FORGPREP                         R12
       46 GETTABLEKS                       R17 R16 K7 ["type"]
       48 JUMPIFNOTEQKS                    R17 K13 ["tool_result"] ; [+4]
       50 MOVE                             R17 R4
       51 MOVE                             R18 R16
       52 CALL                             R17 1 0
       53 FORGLOOP                         R12 2 ; [-8]
       55 JUMP                             ; [+70]
       56 GETTABLEKS                       R11 R10 K0 ["role"]
       58 JUMPIFEQKS                       R11 K14 ["assistant"] ; [+5]
       60 GETTABLEKS                       R11 R10 K0 ["role"]
       62 JUMPIFNOTEQKS                    R11 K15 ["model"] ; [+63]
       64 GETTABLEKS                       R11 R10 K2 ["content"]
       66 LOADNIL                          R12
       67 LOADNIL                          R13
       68 FORGPREP                         R11
       69 GETTABLEKS                       R16 R15 K7 ["type"]
       71 JUMPIFNOTEQKS                    R16 K8 ["text"] ; [+17]
       73 DUPTABLE                         R18 K17 [{["sessionUpdate"] = "agent_message_chunk", ["content"]}]
       74 DUPTABLE                         R19 K9 [{["type"] = "text", ["text"]}]
       75 GETTABLEKS                       R21 R15 K8 ["text"]
       77 ORK                              R20 R21 K3 [""]
       78 SETTABLEKS                       R20 R19 K8 ["text"]
       80 SETTABLEKS                       R19 R18 K2 ["content"]
       82 FASTCALL2                        TABLE_INSERT R1 R18 ; [+4]
       84 MOVE                             R17 R1
       85 GETIMPORT                        R16 K12 [table.insert]
       87 CALL                             R16 2 0
       88 JUMP                             ; [+35]
       89 GETTABLEKS                       R16 R15 K7 ["type"]
       91 JUMPIFNOTEQKS                    R16 K18 ["thinking"] ; [+17]
       93 DUPTABLE                         R18 K20 [{["sessionUpdate"] = "agent_thought_chunk", ["content"]}]
       94 DUPTABLE                         R19 K9 [{["type"] = "text", ["text"]}]
       95 GETTABLEKS                       R21 R15 K18 ["thinking"]
       97 ORK                              R20 R21 K3 [""]
       98 SETTABLEKS                       R20 R19 K8 ["text"]
      100 SETTABLEKS                       R19 R18 K2 ["content"]
      102 FASTCALL2                        TABLE_INSERT R1 R18 ; [+4]
      104 MOVE                             R17 R1
      105 GETIMPORT                        R16 K12 [table.insert]
      107 CALL                             R16 2 0
      108 JUMP                             ; [+15]
      109 GETTABLEKS                       R16 R15 K7 ["type"]
      111 JUMPIFNOTEQKS                    R16 K21 ["tool_use"] ; [+5]
      113 MOVE                             R16 R5
      114 MOVE                             R17 R15
      115 CALL                             R16 1 0
      116 JUMP                             ; [+7]
      117 GETTABLEKS                       R16 R15 K7 ["type"]
      119 JUMPIFNOTEQKS                    R16 K13 ["tool_result"] ; [+4]
      121 MOVE                             R16 R4
      122 MOVE                             R17 R15
      123 CALL                             R16 1 0
      124 FORGLOOP                         R11 2 ; [-56]
      126 FORGLOOP                         R6 2 ; [-108]
      128 MOVE                             R6 R3
      129 LOADNIL                          R7
      130 LOADNIL                          R8
      131 FORGPREP                         R6
      132 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
      134 MOVE                             R12 R1
      135 MOVE                             R13 R10
      136 GETIMPORT                        R11 K12 [table.insert]
      138 CALL                             R11 2 0
      139 FORGLOOP                         R6 2 ; [-8]
      141 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Engine"]
       16 GETTABLEKS                       R3 R3 K7 ["StreamTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["AgentClientProtocol"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 DUPCLOSURE                       R5 K11 [PROTO_1]
       28 DUPCLOSURE                       R6 K12 [PROTO_2]
       29 DUPCLOSURE                       R7 K13 [PROTO_5]
       30 CAPTURE                          VAL R6
       31 CAPTURE                          VAL R5
       32 RETURN                           R7 1

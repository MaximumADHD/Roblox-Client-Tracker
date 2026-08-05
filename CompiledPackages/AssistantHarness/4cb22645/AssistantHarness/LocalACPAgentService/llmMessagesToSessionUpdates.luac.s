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
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*<system_reminder>Attached image URI: (IMAGEID_[%w%-]+)</system_reminder>%s*$"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["text"] ; [+17]
       10 GETTABLEKS                       R8 R6 K1 ["text"]
       12 GETIMPORT                        R9 K4 [string.match]
       14 MOVE                             R10 R8
       15 LOADK                            R11 K5 ["^%s*<system_reminder>Attached image URI: (IMAGEID_[%w%-]+)</system_reminder>%s*$"]
       16 CALL                             R9 2 1
       17 MOVE                             R7 R9
       18 JUMPIFNOT                        R7 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       21 MOVE                             R9 R1
       22 MOVE                             R10 R7
       23 GETIMPORT                        R8 K8 [table.insert]
       25 CALL                             R8 2 0
       26 FORGLOOP                         R2 2 ; [-21]
       28 NEWTABLE                         R2 0 0
       30 LOADN                            R3 0
       31 MOVE                             R4 R0
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 GETTABLEKS                       R9 R8 K0 ["type"]
       37 JUMPIFNOTEQKS                    R9 K1 ["text"] ; [+34]
       39 GETTABLEKS                       R10 R8 K1 ["text"]
       41 GETIMPORT                        R11 K4 [string.match]
       43 MOVE                             R12 R10
       44 LOADK                            R13 K9 ["^%s*<system_reminder>"]
       45 CALL                             R11 2 1
       46 JUMPIFNOTEQKNIL                  R11 ; [+2]
       48 LOADB                            R9 0 +1
       49 LOADB                            R9 1
       50 JUMPIFNOT                        R9 ; [+9]
       51 GETTABLEKS                       R10 R8 K1 ["text"]
       53 GETIMPORT                        R11 K4 [string.match]
       55 MOVE                             R12 R10
       56 LOADK                            R13 K5 ["^%s*<system_reminder>Attached image URI: (IMAGEID_[%w%-]+)</system_reminder>%s*$"]
       57 CALL                             R11 2 1
       58 MOVE                             R9 R11
       59 JUMPIFNOT                        R9 ; [+35]
       60 DUPTABLE                         R11 K10 [{[1] = "text", ["text"]}]
       61 GETTABLEKS                       R12 R8 K1 ["text"]
       63 SETTABLEKS                       R12 R11 K1 ["text"]
       65 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       67 MOVE                             R10 R2
       68 GETIMPORT                        R9 K8 [table.insert]
       70 CALL                             R9 2 0
       71 JUMP                             ; [+23]
       72 GETTABLEKS                       R9 R8 K0 ["type"]
       74 JUMPIFNOTEQKS                    R9 K11 ["image"] ; [+20]
       76 ADDK                             R3 R3 K12 [1]
       77 DUPTABLE                         R11 K16 [{[1] = "image", ["data"], ["mimeType"], ["uri"]}]
       78 GETTABLEKS                       R12 R8 K13 ["data"]
       80 SETTABLEKS                       R12 R11 K13 ["data"]
       82 GETTABLEKS                       R12 R8 K14 ["mimeType"]
       84 SETTABLEKS                       R12 R11 K14 ["mimeType"]
       86 GETTABLE                         R12 R1 R3
       87 SETTABLEKS                       R12 R11 K15 ["uri"]
       89 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       91 MOVE                             R10 R2
       92 GETIMPORT                        R9 K8 [table.insert]
       94 CALL                             R9 2 0
       95 FORGLOOP                         R4 2 ; [-61]
       97 RETURN                           R2 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R3
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R2
       11 NEWCLOSURE                       R6 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R4
       15 MOVE                             R7 R0
       16 LOADNIL                          R8
       17 LOADNIL                          R9
       18 FORGPREP                         R7
       19 GETTABLEKS                       R12 R11 K0 ["role"]
       21 JUMPIFNOTEQKS                    R12 K1 ["user"] ; [+43]
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R13 R11 K2 ["content"]
       26 CALL                             R12 1 1
       27 LENGTH                           R13 R12
       28 LOADN                            R14 0
       29 JUMPIFNOTLT                      R14 R13 ; [+20]
       31 DUPTABLE                         R15 K6 [{["sessionUpdate"] = "user_message", ["messageId"], ["content"]}]
       32 JUMPIFNOT                        R1 ; [+2]
       33 GETTABLE                         R16 R1 R10
       34 JUMP                             ; [+5]
       35 GETUPVAL                         R16 2
       36 LOADB                            R18 0
       37 NAMECALL                         R16 R16 K7 ["GenerateGUID"]
       39 CALL                             R16 2 1
       40 SETTABLEKS                       R16 R15 K5 ["messageId"]
       42 SETTABLEKS                       R12 R15 K2 ["content"]
       44 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       46 MOVE                             R14 R2
       47 GETIMPORT                        R13 K10 [table.insert]
       49 CALL                             R13 2 0
       50 GETTABLEKS                       R13 R11 K2 ["content"]
       52 LOADNIL                          R14
       53 LOADNIL                          R15
       54 FORGPREP                         R13
       55 GETTABLEKS                       R18 R17 K11 ["type"]
       57 JUMPIFNOTEQKS                    R18 K12 ["tool_result"] ; [+4]
       59 MOVE                             R18 R5
       60 MOVE                             R19 R17
       61 CALL                             R18 1 0
       62 FORGLOOP                         R13 2 ; [-8]
       64 JUMP                             ; [+70]
       65 GETTABLEKS                       R12 R11 K0 ["role"]
       67 JUMPIFEQKS                       R12 K13 ["assistant"] ; [+5]
       69 GETTABLEKS                       R12 R11 K0 ["role"]
       71 JUMPIFNOTEQKS                    R12 K14 ["model"] ; [+63]
       73 GETTABLEKS                       R12 R11 K2 ["content"]
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 FORGPREP                         R12
       78 GETTABLEKS                       R17 R16 K11 ["type"]
       80 JUMPIFNOTEQKS                    R17 K15 ["text"] ; [+17]
       82 DUPTABLE                         R19 K17 [{["sessionUpdate"] = "agent_message_chunk", ["content"]}]
       83 DUPTABLE                         R20 K18 [{["type"] = "text", ["text"]}]
       84 GETTABLEKS                       R22 R16 K15 ["text"]
       86 ORK                              R21 R22 K19 [""]
       87 SETTABLEKS                       R21 R20 K15 ["text"]
       89 SETTABLEKS                       R20 R19 K2 ["content"]
       91 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
       93 MOVE                             R18 R2
       94 GETIMPORT                        R17 K10 [table.insert]
       96 CALL                             R17 2 0
       97 JUMP                             ; [+35]
       98 GETTABLEKS                       R17 R16 K11 ["type"]
      100 JUMPIFNOTEQKS                    R17 K20 ["thinking"] ; [+17]
      102 DUPTABLE                         R19 K22 [{["sessionUpdate"] = "agent_thought_chunk", ["content"]}]
      103 DUPTABLE                         R20 K18 [{["type"] = "text", ["text"]}]
      104 GETTABLEKS                       R22 R16 K20 ["thinking"]
      106 ORK                              R21 R22 K19 [""]
      107 SETTABLEKS                       R21 R20 K15 ["text"]
      109 SETTABLEKS                       R20 R19 K2 ["content"]
      111 FASTCALL2                        TABLE_INSERT R2 R19 ; [+4]
      113 MOVE                             R18 R2
      114 GETIMPORT                        R17 K10 [table.insert]
      116 CALL                             R17 2 0
      117 JUMP                             ; [+15]
      118 GETTABLEKS                       R17 R16 K11 ["type"]
      120 JUMPIFNOTEQKS                    R17 K23 ["tool_use"] ; [+5]
      122 MOVE                             R17 R6
      123 MOVE                             R18 R16
      124 CALL                             R17 1 0
      125 JUMP                             ; [+7]
      126 GETTABLEKS                       R17 R16 K11 ["type"]
      128 JUMPIFNOTEQKS                    R17 K12 ["tool_result"] ; [+4]
      130 MOVE                             R17 R5
      131 MOVE                             R18 R16
      132 CALL                             R17 1 0
      133 FORGLOOP                         R12 2 ; [-56]
      135 FORGLOOP                         R7 2 ; [-117]
      137 MOVE                             R7 R4
      138 LOADNIL                          R8
      139 LOADNIL                          R9
      140 FORGPREP                         R7
      141 FASTCALL2                        TABLE_INSERT R2 R11 ; [+5]
      143 MOVE                             R13 R2
      144 MOVE                             R14 R11
      145 GETIMPORT                        R12 K10 [table.insert]
      147 CALL                             R12 2 0
      148 FORGLOOP                         R7 2 ; [-8]
      150 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Engine"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Engine"]
       22 GETTABLEKS                       R4 R4 K11 ["StreamTypes"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["AgentClientProtocol"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K14 [PROTO_0]
       33 DUPCLOSURE                       R6 K15 [PROTO_1]
       34 DUPCLOSURE                       R7 K16 [PROTO_2]
       35 DUPCLOSURE                       R8 K17 [PROTO_3]
       36 DUPCLOSURE                       R9 K18 [PROTO_6]
       37 CAPTURE                          VAL R8
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R1
       40 RETURN                           R9 1

PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/delete"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["request"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R5 R1 K1 ["sessionId"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K3 [type]
        9 CALL                             R4 1 1
       10 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["sessionId is required"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 DUPTABLE                         R2 K8 [{"sessionId"}]
       21 GETTABLEKS                       R3 R1 K1 ["sessionId"]
       23 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K9 ["Trace"]
       28 GETTABLEKS                       R3 R3 K10 ["log"]
       30 LOADK                            R4 K11 ["_roblox/session/delete"]
       31 GETTABLEKS                       R5 R2 K1 ["sessionId"]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 MOVE                             R4 R2
       36 CALL                             R3 1 -1
       37 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/delete"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K2 ["setRequestHandler"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/update_info"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["request"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R5 R1 K1 ["sessionId"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K3 [type]
        9 CALL                             R4 1 1
       10 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["sessionId is required"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K8 ["title"]
       22 LOADB                            R4 1
       23 JUMPIFEQKNIL                     R2 ; [+10]
       25 FASTCALL1                        TYPE R2 ; [+3]
       26 MOVE                             R6 R2
       27 GETIMPORT                        R5 K3 [type]
       29 CALL                             R5 1 1
       30 JUMPIFEQKS                       R5 K4 ["string"] ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       36 LOADK                            R5 K9 ["title must be a string"]
       37 GETIMPORT                        R3 K7 [assert]
       39 CALL                             R3 2 0
       40 DUPTABLE                         R3 K10 [{"sessionId", "title"}]
       41 GETTABLEKS                       R4 R1 K1 ["sessionId"]
       43 SETTABLEKS                       R4 R3 K1 ["sessionId"]
       45 SETTABLEKS                       R2 R3 K8 ["title"]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K11 ["Trace"]
       50 GETTABLEKS                       R4 R4 K12 ["log"]
       52 LOADK                            R5 K13 ["_roblox/session/update_info"]
       53 GETTABLEKS                       R6 R3 K1 ["sessionId"]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 1
       57 MOVE                             R5 R3
       58 CALL                             R4 1 -1
       59 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/update_info"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K2 ["setRequestHandler"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/tool_call"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K2 ["request"]
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["params"]
        2 MOVE                             R3 R1
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETTABLEKS                       R5 R1 K1 ["sessionId"]
        6 FASTCALL1                        TYPE R5 ; [+2]
        7 GETIMPORT                        R4 K3 [type]
        9 CALL                             R4 1 1
       10 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["sessionId is required"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R5 R1 K8 ["name"]
       22 FASTCALL1                        TYPE R5 ; [+2]
       23 GETIMPORT                        R4 K3 [type]
       25 CALL                             R4 1 1
       26 JUMPIFEQKS                       R4 K4 ["string"] ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       32 LOADK                            R4 K9 ["name is required"]
       33 GETIMPORT                        R2 K7 [assert]
       35 CALL                             R2 2 0
       36 DUPTABLE                         R2 K14 [{"sessionId", "name", "arguments", "userPromptText", "images", "_meta"}]
       37 GETTABLEKS                       R3 R1 K1 ["sessionId"]
       39 SETTABLEKS                       R3 R2 K1 ["sessionId"]
       41 GETTABLEKS                       R3 R1 K8 ["name"]
       43 SETTABLEKS                       R3 R2 K8 ["name"]
       45 GETTABLEKS                       R3 R1 K10 ["arguments"]
       47 SETTABLEKS                       R3 R2 K10 ["arguments"]
       49 GETTABLEKS                       R3 R1 K11 ["userPromptText"]
       51 SETTABLEKS                       R3 R2 K11 ["userPromptText"]
       53 GETTABLEKS                       R3 R1 K12 ["images"]
       55 SETTABLEKS                       R3 R2 K12 ["images"]
       57 GETTABLEKS                       R3 R1 K13 ["_meta"]
       59 SETTABLEKS                       R3 R2 K13 ["_meta"]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K15 ["Trace"]
       64 GETTABLEKS                       R3 R3 K16 ["log"]
       66 LOADK                            R4 K17 ["_roblox/session/tool_call"]
       67 GETTABLEKS                       R5 R2 K1 ["sessionId"]
       69 CALL                             R3 2 0
       70 GETUPVAL                         R3 1
       71 MOVE                             R4 R2
       72 CALL                             R3 1 -1
       73 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_protocol"]
        2 LOADK                            R4 K1 ["_roblox/session/tool_call"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 NAMECALL                         R2 R2 K2 ["setRequestHandler"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R4 R1 K0 ["referenceId"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R0 K1 ["sendResult"]
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_10:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["result"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K4 ["Trace"]
       14 GETTABLEKS                       R2 R2 K5 ["log"]
       16 LOADK                            R3 K6 ["tool_result"]
       17 FASTCALL1                        TYPE R1 ; [+3]
       18 MOVE                             R6 R1
       19 GETIMPORT                        R5 K1 [type]
       21 CALL                             R5 1 1
       22 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+4]
       24 GETTABLEKS                       R4 R1 K7 ["referenceId"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 CALL                             R2 2 0
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETUPVAL                         R2 1
       31 MOVE                             R3 R1
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 NAMECALL                         R2 R0 K0 ["setBackChannelHandler"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AgentClientProtocol"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 LOADK                            R3 K8 ["_roblox/session/tool_call"]
       17 SETTABLEKS                       R3 R2 K9 ["SessionToolCallMethod"]
       19 DUPCLOSURE                       R3 K10 [PROTO_0]
       20 SETTABLEKS                       R3 R2 K11 ["deleteSession"]
       22 DUPCLOSURE                       R3 K12 [PROTO_2]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K13 ["setDeleteSessionHandler"]
       26 DUPCLOSURE                       R3 K14 [PROTO_3]
       27 SETTABLEKS                       R3 R2 K15 ["updateSessionInfo"]
       29 DUPCLOSURE                       R3 K16 [PROTO_5]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K17 ["setUpdateSessionInfoHandler"]
       33 DUPCLOSURE                       R3 K18 [PROTO_6]
       34 SETTABLEKS                       R3 R2 K19 ["requestToolCall"]
       36 DUPCLOSURE                       R3 K20 [PROTO_8]
       37 CAPTURE                          VAL R1
       38 SETTABLEKS                       R3 R2 K21 ["setToolCallRequestHandler"]
       40 DUPCLOSURE                       R3 K22 [PROTO_9]
       41 SETTABLEKS                       R3 R2 K23 ["submitToolResult"]
       43 DUPCLOSURE                       R3 K24 [PROTO_11]
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R3 R2 K25 ["setToolResultHandler"]
       47 RETURN                           R2 1

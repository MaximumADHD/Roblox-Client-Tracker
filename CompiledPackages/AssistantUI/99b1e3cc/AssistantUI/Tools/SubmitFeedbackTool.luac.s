PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["addText"]
        5 CALL                             R1 2 1
        6 LOADB                            R3 1
        7 NAMECALL                         R1 R1 K1 ["setError"]
        9 CALL                             R1 2 1
       10 NAMECALL                         R1 R1 K2 ["build"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["feedback"]
        2 FASTCALL1                        TYPE R4 ; [+2]
        3 GETIMPORT                        R3 K2 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+4]
        8 GETTABLEKS                       R2 R0 K0 ["feedback"]
       10 JUMP                             ; [+1]
       11 LOADK                            R2 K4 [""]
       12 LENGTH                           R3 R2
       13 LOADN                            R4 4000
       14 JUMPIFNOTLT                      R4 R3 ; [+10]
       16 GETUPVAL                         R3 0
       17 LOADK                            R4 K5 ["feedback is %* bytes; shorten it to at most %* bytes, or split it into separate calls"]
       18 LENGTH                           R6 R2
       19 LOADN                            R7 4000
       20 NAMECALL                         R4 R4 K6 ["format"]
       22 CALL                             R4 3 1
       23 CALL                             R3 1 -1
       24 RETURN                           R3 -1
       25 GETIMPORT                        R4 K8 [string.match]
       27 MOVE                             R5 R2
       28 LOADK                            R6 K9 ["^%s*(.*%S)"]
       29 CALL                             R4 2 1
       30 ORK                              R3 R4 K4 [""]
       31 JUMPIFNOTEQKS                    R3 K4 [""] ; [+5]
       33 GETUPVAL                         R4 0
       34 LOADK                            R5 K10 ["feedback must not be empty"]
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1
       37 MOVE                             R4 R1
       38 JUMPIF                           R4 ; [+2]
       39 NEWTABLE                         R4 0 0
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K11 ["EventLogger"]
       44 GETTABLEKS                       R5 R5 K12 ["logMcpFeedback"]
       46 DUPTABLE                         R6 K15 [{"feedback", "clientName", "studioSessionId"}]
       47 SETTABLEKS                       R3 R6 K0 ["feedback"]
       49 GETTABLEKS                       R7 R4 K16 ["client_name"]
       51 SETTABLEKS                       R7 R6 K13 ["clientName"]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K17 ["getStudioSessionId"]
       56 CALL                             R7 0 1
       57 SETTABLEKS                       R7 R6 K14 ["studioSessionId"]
       59 CALL                             R5 1 0
       60 GETUPVAL                         R5 2
       61 CALL                             R5 0 1
       62 LOADK                            R7 K18 ["Feedback submitted, continue with the task."]
       63 NAMECALL                         R5 R5 K19 ["addText"]
       65 CALL                             R5 2 1
       66 NAMECALL                         R5 R5 K20 ["build"]
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["define"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K2 ["SubmitFeedback"]
       13 NAMECALL                         R3 R3 K3 ["setName"]
       15 CALL                             R3 2 1
       16 LOADK                            R5 K4 ["Submit Feedback"]
       17 NAMECALL                         R3 R3 K5 ["setTitle"]
       19 CALL                             R3 2 1
       20 LOADK                            R5 K6 ["Sends feedback about Roblox Studio and its MCP tools to the Roblox team that builds them. Call it when a tool fails or behaves unexpectedly, a capability you need is missing, a workflow takes more steps or workarounds than it should, the user hits friction in Studio, or a tool description, result, or documentation is unclear. Only send feedback about Studio and its tools, not about the user's game or the user. If the user has asked you not to send feedback, do not call this tool. After it succeeds, tell the user in one short sentence that you sent feedback and what it was about, and that they can ask you to stop sending feedback, then continue with the task. One specific issue per call: the tools involved, if any, what you tried, what happened, and what would have worked better. Do not include source code, personal information, or credentials."]
       21 NAMECALL                         R3 R3 K7 ["setDescription"]
       23 CALL                             R3 2 1
       24 LOADK                            R5 K8 ["feedback"]
       25 DUPTABLE                         R6 K12 [{["type"] = "string", ["description"]}]
       26 LOADK                            R7 K13 ["At most %* bytes."]
       27 LOADN                            R9 4000
       28 NAMECALL                         R7 R7 K14 ["format"]
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K11 ["description"]
       33 NAMECALL                         R3 R3 K15 ["addArgument"]
       35 CALL                             R3 3 1
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R3 K16 ["setHandler"]
       39 CALL                             R3 2 1
       40 DUPTABLE                         R5 K24 [{["title"] = "Submit Feedback", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = True}]
       41 NAMECALL                         R3 R3 K25 ["setAnnotations"]
       43 CALL                             R3 2 1
       44 NAMECALL                         R3 R3 K26 ["build"]
       46 CALL                             R3 1 1
       47 DUPTABLE                         R4 K28 [{"definition"}]
       48 SETTABLEKS                       R3 R4 K27 ["definition"]
       50 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["ModelContextProtocol"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R4 R4 K9 ["ToolTypes"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["Util"]
       23 GETTABLEKS                       R4 R4 K11 ["ToolBuilder"]
       25 GETTABLEKS                       R5 R2 K10 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["ToolResult"]
       29 GETTABLEKS                       R6 R3 K13 ["ToolNames"]
       31 DUPCLOSURE                       R7 K14 [PROTO_0]
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R8 K15 [PROTO_2]
       34 CAPTURE                          VAL R7
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 RETURN                           R8 1

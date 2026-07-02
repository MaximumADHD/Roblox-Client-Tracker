PROTO_0:
        0 DUPTABLE                         R2 K3 [{[1], ["isError"] = True}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["content"]
        5 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["handler"]
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["getRequestHandler"]
        6 CALL                             R1 0 1
        7 JUMPIF                           R1 ; [+2]
        8 DUPTABLE                         R2 K6 [{["text"] = , ["error"] = "no request handler available"}]
        9 RETURN                           R2 1
       10 DUPTABLE                         R2 K14 [{["name"], ["description"], ["systemMessage"], ["allowedTools"], ["maxToolCalls"] = 0, ["model"]}]
       11 GETTABLEKS                       R4 R0 K7 ["name"]
       13 ORK                              R3 R4 K15 ["one_shot"]
       14 SETTABLEKS                       R3 R2 K7 ["name"]
       16 GETTABLEKS                       R4 R0 K8 ["description"]
       18 ORK                              R3 R4 K16 ["One-shot LLM call"]
       19 SETTABLEKS                       R3 R2 K8 ["description"]
       21 GETTABLEKS                       R3 R0 K17 ["systemPrompt"]
       23 SETTABLEKS                       R3 R2 K9 ["systemMessage"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K10 ["allowedTools"]
       29 GETTABLEKS                       R3 R0 K13 ["model"]
       31 JUMPIF                           R3 ; [+2]
       32 GETUPVAL                         R3 1
       33 CALL                             R3 0 1
       34 SETTABLEKS                       R3 R2 K13 ["model"]
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R3 R3 K18 ["execute"]
       39 DUPTABLE                         R4 K25 [{"definition", "prompt", "requestLLM", "callTool", "formattedTools", "onPacketReceived"}]
       40 SETTABLEKS                       R2 R4 K19 ["definition"]
       42 GETTABLEKS                       R5 R0 K26 ["userPrompt"]
       44 SETTABLEKS                       R5 R4 K20 ["prompt"]
       46 SETTABLEKS                       R1 R4 K21 ["requestLLM"]
       48 GETUPVAL                         R5 3
       49 SETTABLEKS                       R5 R4 K22 ["callTool"]
       51 NEWTABLE                         R5 0 0
       53 SETTABLEKS                       R5 R4 K23 ["formattedTools"]
       55 DUPCLOSURE                       R5 K27 [PROTO_1]
       56 SETTABLEKS                       R5 R4 K24 ["onPacketReceived"]
       58 LOADNIL                          R5
       59 CALL                             R3 2 1
       60 DUPTABLE                         R4 K28 [{"text", "error"}]
       61 GETTABLEKS                       R5 R3 K29 ["finalAnswer"]
       63 SETTABLEKS                       R5 R4 K2 ["text"]
       65 GETTABLEKS                       R5 R3 K4 ["error"]
       67 SETTABLEKS                       R5 R4 K4 ["error"]
       69 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K0 ["error"]
        5 JUMPIF                           R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K1 ["text"]
        8 JUMPIF                           R2 ; [+4]
        9 LOADNIL                          R2
       10 GETTABLEKS                       R3 R1 K0 ["error"]
       12 RETURN                           R2 2
       13 GETTABLEKS                       R3 R1 K1 ["text"]
       15 LOADK                            R5 K3 ["^%s*(.-)%s*$"]
       16 NAMECALL                         R3 R3 K4 ["match"]
       18 CALL                             R3 2 1
       19 ORK                              R2 R3 K2 [""]
       20 LOADK                            R5 K5 ["^```%w*%s*\n(.-)\n```$"]
       21 NAMECALL                         R3 R2 K4 ["match"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R3 ; [+1]
       25 MOVE                             R2 R3
       26 GETIMPORT                        R4 K7 [pcall]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          REF R2
       31 CALL                             R4 1 2
       32 JUMPIF                           R4 ; [+9]
       33 LOADNIL                          R6
       34 LOADK                            R8 K8 ["failed to parse JSON response: %*"]
       35 MOVE                             R10 R5
       36 NAMECALL                         R8 R8 K9 ["format"]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 CLOSEUPVALS                      R2
       41 RETURN                           R6 2
       42 MOVE                             R6 R5
       43 LOADNIL                          R7
       44 CLOSEUPVALS                      R2
       45 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Contexts"]
       19 GETTABLEKS                       R3 R3 K12 ["DefaultLLMProvider"]
       21 GETTABLEKS                       R3 R3 K13 ["LLMRequest"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Parent"]
       28 GETTABLEKS                       R4 R4 K15 ["ModelContextProtocol"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K16 ["Subagents"]
       35 GETTABLEKS                       R5 R5 K17 ["SubagentSessionRunner"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K16 ["Subagents"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K18 ["Flags"]
       47 GETTABLEKS                       R7 R7 K19 ["FStringAssistantGen3dDefaultModel"]
       49 CALL                             R6 1 1
       50 DUPCLOSURE                       R7 K20 [PROTO_0]
       51 DUPCLOSURE                       R8 K21 [PROTO_2]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R7
       56 DUPCLOSURE                       R9 K22 [PROTO_4]
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R1
       59 DUPTABLE                         R10 K25 [{"runAsync", "jsonAsync"}]
       60 SETTABLEKS                       R8 R10 K23 ["runAsync"]
       62 SETTABLEKS                       R9 R10 K24 ["jsonAsync"]
       64 RETURN                           R10 1

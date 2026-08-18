PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADK                            R3 K0 ["This tool does nothing locally and should never be called. Please report the bug."]
        3 NAMECALL                         R1 R1 K1 ["addText"]
        5 CALL                             R1 2 1
        6 LOADB                            R3 1
        7 NAMECALL                         R1 R1 K2 ["setError"]
        9 CALL                             R1 2 1
       10 NAMECALL                         R1 R1 K3 ["build"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["define"]
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["ListRobloxStudios"]
        9 NAMECALL                         R2 R2 K3 ["setName"]
       11 CALL                             R2 2 1
       12 LOADK                            R4 K4 ["Lists the connected Roblox Studio instances so a call can be directed at one. Several instances are commonly open at once, so every tool call must include a `studio_id` identifying the target instance — call this tool first to obtain the ids. Each result has an `id` and a human-readable `name` (including its place id or file name); use the `name` to choose the intended instance, confirming with the user before modifying their game."]
       13 NAMECALL                         R2 R2 K5 ["setDescription"]
       15 CALL                             R2 2 1
       16 DUPTABLE                         R4 K14 [{["title"] = "List Roblox Studios", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       17 NAMECALL                         R2 R2 K15 ["setAnnotations"]
       19 CALL                             R2 2 1
       20 MOVE                             R4 R1
       21 NAMECALL                         R2 R2 K16 ["setHandler"]
       23 CALL                             R2 2 1
       24 NAMECALL                         R2 R2 K17 ["build"]
       26 CALL                             R2 1 1
       27 DUPTABLE                         R3 K19 [{"definition"}]
       28 SETTABLEKS                       R2 R3 K18 ["definition"]
       30 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["ToolBuilder"]
       25 GETTABLEKS                       R4 R1 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolResult"]
       29 GETTABLEKS                       R5 R2 K13 ["ToolNames"]
       31 DUPCLOSURE                       R6 K14 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1

PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMcpListStudiosFullPath"]
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K3 [string.match]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["[^/\\]+$"]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_1:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["getFocusedDataModelType"]
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Types"]
        8 GETTABLEKS                       R3 R3 K2 ["Unknown"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+10]
       12 DUPTABLE                         R2 K8 [{["id"], ["mode"] = "Unavailable", ["state"] = "Place is not open"}]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K9 ["getStudioSessionId"]
       16 CALL                             R3 0 1
       17 SETTABLEKS                       R3 R2 K3 ["id"]
       19 MOVE                             R1 R2
       20 JUMP                             ; [+59]
       21 DUPTABLE                         R2 K10 [{"id", "mode", "state"}]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K9 ["getStudioSessionId"]
       25 CALL                             R3 0 1
       26 SETTABLEKS                       R3 R2 K3 ["id"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K11 ["getStudioPlayState"]
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+2]
       33 LOADK                            R3 K12 ["Play"]
       34 JUMP                             ; [+1]
       35 LOADK                            R3 K13 ["Edit"]
       36 SETTABLEKS                       R3 R2 K4 ["mode"]
       38 GETUPVAL                         R3 0
       39 GETTABLEKS                       R3 R3 K14 ["getStudioState"]
       41 CALL                             R3 0 1
       42 SETTABLEKS                       R3 R2 K6 ["state"]
       44 MOVE                             R1 R2
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K15 ["getPlaceSessionInfoAsync"]
       48 CALL                             R2 0 1
       49 JUMPIFNOT                        R2 ; [+30]
       50 GETTABLEKS                       R3 R2 K16 ["placeId"]
       52 SETTABLEKS                       R3 R1 K16 ["placeId"]
       54 GETTABLEKS                       R3 R2 K17 ["universeId"]
       56 SETTABLEKS                       R3 R1 K17 ["universeId"]
       58 GETTABLEKS                       R3 R2 K18 ["isPersistedToCloud"]
       60 SETTABLEKS                       R3 R1 K19 ["persistedToCloud"]
       62 GETTABLEKS                       R4 R2 K20 ["file"]
       64 JUMPIFEQKNIL                     R4 ; [+5]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R5 R5 K21 ["FFlagAssistantMcpListStudiosFullPath"]
       69 JUMPIFNOT                        R5 ; [+2]
       70 MOVE                             R3 R4
       71 JUMP                             ; [+6]
       72 GETIMPORT                        R5 K24 [string.match]
       74 MOVE                             R6 R4
       75 LOADK                            R7 K25 ["[^/\\]+$"]
       76 CALL                             R5 2 1
       77 MOVE                             R3 R5
       78 SETTABLEKS                       R3 R1 K20 ["file"]
       80 GETUPVAL                         R2 3
       81 CALL                             R2 0 1
       82 GETUPVAL                         R4 4
       83 MOVE                             R6 R1
       84 NAMECALL                         R4 R4 K26 ["JSONEncode"]
       86 CALL                             R4 2 -1
       87 NAMECALL                         R2 R2 K27 ["addText"]
       89 CALL                             R2 -1 1
       90 NAMECALL                         R2 R2 K28 ["build"]
       92 CALL                             R2 1 -1
       93 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 GETUPVAL                         R3 4
        9 GETTABLEKS                       R3 R3 K1 ["define"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 5
       13 GETTABLEKS                       R5 R5 K2 ["ListRobloxStudios"]
       15 NAMECALL                         R3 R3 K3 ["setName"]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K4 ["FFlagStudioMCPListStudiosFanOut"]
       21 JUMPIFNOT                        R6 ; [+2]
       22 LOADK                            R5 K5 ["Lists the connected Roblox Studio instances so a call can be directed at one. Several instances are commonly open at once, so every tool call must include a `studio_id` identifying the target instance — call this tool first to obtain the ids. Each result has an `id` and a human-readable `name` (including its place id or file name); use the `name` to choose the intended instance, confirming with the user before modifying their game. Results include `mode` (`Edit`/`Play`) and `state` depending on Studio state, and `persistedToCloud`, `placeId`, `universeId` or `file` depending on how the place is saved."]
       23 JUMP                             ; [+1]
       24 LOADK                            R5 K6 ["Lists the connected Roblox Studio instances so a call can be directed at one. Several instances are commonly open at once, so every tool call must include a `studio_id` identifying the target instance — call this tool first to obtain the ids. Each result has an `id` and a human-readable `name` (including its place id or file name); use the `name` to choose the intended instance, confirming with the user before modifying their game."]
       25 NAMECALL                         R3 R3 K7 ["setDescription"]
       27 CALL                             R3 2 1
       28 LOADK                            R5 K8 ["List Roblox Studios"]
       29 NAMECALL                         R3 R3 K9 ["setTitle"]
       31 CALL                             R3 2 1
       32 DUPTABLE                         R5 K17 [{["title"] = "List Roblox Studios", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       33 NAMECALL                         R3 R3 K18 ["setAnnotations"]
       35 CALL                             R3 2 1
       36 MOVE                             R5 R2
       37 NAMECALL                         R3 R3 K19 ["setHandler"]
       39 CALL                             R3 2 1
       40 NAMECALL                         R3 R3 K20 ["build"]
       42 CALL                             R3 1 1
       43 DUPTABLE                         R4 K22 [{"definition"}]
       44 SETTABLEKS                       R3 R4 K21 ["definition"]
       46 RETURN                           R4 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["ModelContextProtocol"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Tools"]
       24 GETTABLEKS                       R4 R4 K13 ["ToolTypes"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Util"]
       31 GETTABLEKS                       R5 R5 K15 ["DataModelType"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Flags"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R2 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K17 ["ToolBuilder"]
       43 GETTABLEKS                       R7 R2 K14 ["Util"]
       45 GETTABLEKS                       R7 R7 K18 ["ToolResult"]
       47 GETTABLEKS                       R8 R3 K19 ["ToolNames"]
       49 DUPCLOSURE                       R9 K20 [PROTO_0]
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R10 K21 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 RETURN                           R10 1

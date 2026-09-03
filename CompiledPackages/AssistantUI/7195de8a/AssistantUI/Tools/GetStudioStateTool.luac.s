PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getStudioState"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K1 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K2 ["build"]
       12 CALL                             R2 1 1
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["define"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["GetStudioState"]
       12 NAMECALL                         R3 R3 K3 ["setName"]
       14 CALL                             R3 2 1
       15 LOADK                            R6 K4 ["Get the state of the studio, including current play state and available datamodel types. If the studio state is not expected, please call %* tool to start or stop the play."]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K5 ["StartStopPlay"]
       19 NAMECALL                         R6 R6 K6 ["format"]
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 NAMECALL                         R3 R3 K7 ["setDescription"]
       25 CALL                             R3 2 1
       26 DUPTABLE                         R5 K16 [{["title"] = "Get Studio State", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       27 NAMECALL                         R3 R3 K17 ["setAnnotations"]
       29 CALL                             R3 2 1
       30 MOVE                             R5 R2
       31 NAMECALL                         R3 R3 K18 ["setHandler"]
       33 CALL                             R3 2 1
       34 NAMECALL                         R3 R3 K19 ["build"]
       36 CALL                             R3 1 1
       37 DUPTABLE                         R4 K21 [{"definition"}]
       38 SETTABLEKS                       R3 R4 K20 ["definition"]
       40 RETURN                           R4 1

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

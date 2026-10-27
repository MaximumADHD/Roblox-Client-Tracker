PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["User"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Local"]
        6 RETURN                           R1 1
        7 LOADK                            R1 K2 ["Roblox"]
        8 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["getAll"]
        5 CALL                             R1 0 3
        6 FORGPREP                         R1
        7 LOADK                            R8 K1 ["  <skill>\n    <name>%*</name>\n    <source>%*</source>\n    <description>%*</description>\n  </skill>"]
        8 GETTABLEKS                       R10 R5 K2 ["name"]
       10 GETTABLEKS                       R12 R5 K3 ["source"]
       12 GETUPVAL                         R13 1
       13 GETTABLEKS                       R13 R13 K4 ["User"]
       15 JUMPIFNOTEQ                      R12 R13 ; [+3]
       17 LOADK                            R11 K5 ["Local"]
       18 JUMP                             ; [+1]
       19 LOADK                            R11 K6 ["Roblox"]
       20 GETTABLEKS                       R12 R5 K7 ["description"]
       22 NAMECALL                         R8 R8 K8 ["format"]
       24 CALL                             R8 4 1
       25 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K11 [table.insert]
       30 CALL                             R6 2 0
       31 FORGLOOP                         R1 2 ; [-25]
       33 GETIMPORT                        R1 K13 [table.sort]
       35 MOVE                             R2 R0
       36 CALL                             R1 1 0
       37 LENGTH                           R1 R0
       38 JUMPIFNOTEQKN                    R1 K14 [0] ; [+3]
       40 LOADK                            R1 K15 ["No skills are available."]
       41 RETURN                           R1 1
       42 LOADK                            R1 K16 ["<available_skills>\n%*\n</available_skills>\n\nTo use a skill, call %* with its name before writing code or taking action, and follow the returned guidance."]
       43 GETIMPORT                        R3 K18 [table.concat]
       45 MOVE                             R4 R0
       46 LOADK                            R5 K19 ["\n"]
       47 CALL                             R3 2 1
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K20 ["Skill"]
       51 NAMECALL                         R1 R1 K8 ["format"]
       53 CALL                             R1 3 1
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 NAMECALL                         R1 R1 K0 ["addText"]
        6 CALL                             R1 2 1
        7 NAMECALL                         R1 R1 K1 ["build"]
        9 CALL                             R1 1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K1 ["define"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K2 ["ListSkills"]
       10 NAMECALL                         R2 R2 K3 ["setName"]
       12 CALL                             R2 2 1
       13 LOADK                            R4 K4 ["Lists every available skill with its source and a description of when to use it. Call this before starting a task to find skills that cover it, then load one with %*."]
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K5 ["Skill"]
       17 NAMECALL                         R4 R4 K6 ["format"]
       19 CALL                             R4 2 1
       20 NAMECALL                         R2 R2 K7 ["setDescription"]
       22 CALL                             R2 2 1
       23 LOADK                            R4 K8 ["List Skills"]
       24 NAMECALL                         R2 R2 K9 ["setTitle"]
       26 CALL                             R2 2 1
       27 DUPTABLE                         R4 K17 [{["title"] = "List Skills", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       28 NAMECALL                         R2 R2 K18 ["setAnnotations"]
       30 CALL                             R2 2 1
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R2 K19 ["setHandler"]
       34 CALL                             R2 2 1
       35 NAMECALL                         R2 R2 K20 ["build"]
       37 CALL                             R2 1 1
       38 DUPTABLE                         R3 K22 [{"definition"}]
       39 SETTABLEKS                       R2 R3 K21 ["definition"]
       41 RETURN                           R3 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Skills"]
       18 GETTABLEKS                       R3 R3 K9 ["SkillDefinition"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Skills"]
       25 GETTABLEKS                       R4 R4 K10 ["SkillRegistry"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["Sources"]
       37 GETTABLEKS                       R6 R1 K14 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["ToolBuilder"]
       41 GETTABLEKS                       R7 R1 K14 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["ToolResult"]
       45 GETTABLEKS                       R8 R4 K17 ["ToolNames"]
       47 DUPCLOSURE                       R9 K18 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 DUPCLOSURE                       R10 K19 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R8
       53 DUPCLOSURE                       R11 K20 [PROTO_3]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 RETURN                           R11 1

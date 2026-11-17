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
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K14 ["FFlagAssistantSkillsShowDisabled"]
       40 JUMPIFNOT                        R2 ; [+5]
       41 GETUPVAL                         R1 3
       42 GETTABLEKS                       R1 R1 K15 ["buildSection"]
       44 CALL                             R1 0 1
       45 JUMP                             ; [+1]
       46 LOADNIL                          R1
       47 LENGTH                           R2 R0
       48 JUMPIFNOTEQKN                    R2 K16 [0] ; [+3]
       50 ORK                              R2 R1 K17 ["No skills are available."]
       51 RETURN                           R2 1
       52 LOADK                            R2 K18 ["<available_skills>\n%*\n</available_skills>\n\nTo use a skill, call %* with its name before writing code or taking action, and follow the returned guidance."]
       53 GETIMPORT                        R4 K20 [table.concat]
       55 MOVE                             R5 R0
       56 LOADK                            R6 K21 ["\n"]
       57 CALL                             R4 2 1
       58 GETUPVAL                         R5 4
       59 GETTABLEKS                       R5 R5 K22 ["Skill"]
       61 NAMECALL                         R2 R2 K8 ["format"]
       63 CALL                             R2 3 1
       64 JUMPIFNOT                        R1 ; [+4]
       65 MOVE                             R3 R2
       66 LOADK                            R4 K23 ["\n\n"]
       67 MOVE                             R5 R1
       68 CONCAT                           R2 R3 R5
       69 RETURN                           R2 1

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
        9 GETTABLEKS                       R2 R0 K6 ["Skills"]
       11 GETTABLEKS                       R2 R2 K7 ["DisabledSkillsPrompt"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Skills"]
       30 GETTABLEKS                       R5 R5 K11 ["SkillDefinition"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Skills"]
       37 GETTABLEKS                       R6 R6 K12 ["SkillRegistry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Tools"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolTypes"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R4 K15 ["Sources"]
       49 GETTABLEKS                       R8 R3 K16 ["Util"]
       51 GETTABLEKS                       R8 R8 K17 ["ToolBuilder"]
       53 GETTABLEKS                       R9 R3 K16 ["Util"]
       55 GETTABLEKS                       R9 R9 K18 ["ToolResult"]
       57 GETTABLEKS                       R10 R6 K19 ["ToolNames"]
       59 DUPCLOSURE                       R11 K20 [PROTO_0]
       60 CAPTURE                          VAL R7
       61 DUPCLOSURE                       R12 K21 [PROTO_1]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R10
       67 DUPCLOSURE                       R13 K22 [PROTO_3]
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 RETURN                           R13 1

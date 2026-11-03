PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["User"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+3]
        5 LOADK                            R1 K1 ["Local"]
        6 RETURN                           R1 1
        7 LOADK                            R1 K2 ["Roblox"]
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAll"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADK                            R7 K1 ["\n    <source>%*</source>"]
       11 GETTABLEKS                       R10 R6 K2 ["source"]
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R11 R11 K3 ["User"]
       16 JUMPIFNOTEQ                      R10 R11 ; [+3]
       18 LOADK                            R9 K4 ["Local"]
       19 JUMP                             ; [+1]
       20 LOADK                            R9 K5 ["Roblox"]
       21 NAMECALL                         R7 R7 K6 ["format"]
       23 CALL                             R7 2 1
       24 LOADK                            R10 K7 ["  <skill>\n    <name>%*</name>%*\n    <description>%*</description>\n  </skill>"]
       25 GETTABLEKS                       R12 R6 K8 ["name"]
       27 MOVE                             R13 R7
       28 GETTABLEKS                       R14 R6 K9 ["description"]
       30 NAMECALL                         R10 R10 K6 ["format"]
       32 CALL                             R10 4 1
       33 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       35 MOVE                             R9 R1
       36 GETIMPORT                        R8 K12 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R2 2 ; [-30]
       41 GETIMPORT                        R2 K14 [table.sort]
       43 MOVE                             R3 R1
       44 CALL                             R2 1 0
       45 LOADK                            R3 K15 ["Retrieve detailed knowledge, best practices, or reference material for a specific skill.\nSkills provide domain-specific expertise that helps you produce better, more accurate results.\n\n<available_skills>\n"]
       46 GETIMPORT                        R6 K17 [table.concat]
       48 MOVE                             R7 R1
       49 LOADK                            R8 K18 ["\n"]
       50 CALL                             R6 2 1
       51 MOVE                             R4 R6
       52 LOADK                            R5 K19 ["\n</available_skills>\n\nWhen to use skills:\n1. When the task involves a domain covered by an available skill\n2. When you need best practices or conventions before writing or reviewing code\n3. When you are unsure about the correct patterns or APIs for a specific area\n\nImportant:\n1. Invoke the skill BEFORE writing code or taking action, not after\n2. Follow the returned guidance closely in your response\n3. Do not mention a skill without actually invoking it first"]
       53 CONCAT                           R2 R3 R5
       54 GETUPVAL                         R4 2
       55 GETTABLEKS                       R4 R4 K20 ["FFlagAssistantSkillsShowDisabled"]
       57 JUMPIFNOT                        R4 ; [+5]
       58 GETUPVAL                         R3 3
       59 GETTABLEKS                       R3 R3 K21 ["buildSection"]
       61 CALL                             R3 0 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R3
       64 JUMPIFNOT                        R3 ; [+4]
       65 MOVE                             R4 R2
       66 LOADK                            R5 K22 ["\n\n"]
       67 MOVE                             R6 R3
       68 CONCAT                           R2 R4 R6
       69 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["skill_name"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+30]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["FFlagAssistantSkillsShowDisabled"]
       10 JUMPIFNOT                        R4 ; [+26]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K3 ["isUserDisabled"]
       14 GETTABLEKS                       R5 R0 K1 ["skill_name"]
       16 CALL                             R4 1 1
       17 JUMPIFNOT                        R4 ; [+19]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 LOADK                            R6 K4 ["Skill \"%*\" is turned off. Ask the user to turn it on in the Assistant settings under Skills, then try again."]
       21 GETTABLEKS                       R8 R0 K1 ["skill_name"]
       23 NAMECALL                         R6 R6 K5 ["format"]
       25 CALL                             R6 2 1
       26 NAMECALL                         R4 R4 K6 ["addText"]
       28 CALL                             R4 2 1
       29 LOADB                            R6 1
       30 NAMECALL                         R4 R4 K7 ["setError"]
       32 CALL                             R4 2 1
       33 NAMECALL                         R4 R4 K8 ["build"]
       35 CALL                             R4 1 -1
       36 RETURN                           R4 -1
       37 JUMPIF                           R3 ; [+32]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K9 ["getNames"]
       41 CALL                             R4 0 1
       42 GETIMPORT                        R5 K12 [table.sort]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 0
       46 GETUPVAL                         R5 3
       47 CALL                             R5 0 1
       48 LOADK                            R7 K13 ["Unknown skill: \"%*\". Available skills: %*"]
       49 GETTABLEKS                       R9 R0 K1 ["skill_name"]
       51 GETIMPORT                        R10 K15 [table.concat]
       53 MOVE                             R11 R4
       54 LOADK                            R12 K16 [", "]
       55 CALL                             R10 2 1
       56 NAMECALL                         R7 R7 K5 ["format"]
       58 CALL                             R7 3 1
       59 NAMECALL                         R5 R5 K6 ["addText"]
       61 CALL                             R5 2 1
       62 LOADB                            R7 1
       63 NAMECALL                         R5 R5 K7 ["setError"]
       65 CALL                             R5 2 1
       66 NAMECALL                         R5 R5 K8 ["build"]
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1
       70 GETTABLEKS                       R4 R3 K17 ["content"]
       72 GETUPVAL                         R5 1
       73 GETTABLEKS                       R5 R5 K18 ["FFlagAssistantSkillToolNameReplace"]
       75 JUMPIFNOT                        R5 ; [+6]
       76 GETUPVAL                         R5 4
       77 GETTABLEKS                       R5 R5 K19 ["replaceTokens"]
       79 MOVE                             R6 R4
       80 CALL                             R5 1 1
       81 MOVE                             R4 R5
       82 GETUPVAL                         R5 3
       83 CALL                             R5 0 1
       84 MOVE                             R7 R4
       85 NAMECALL                         R5 R5 K6 ["addText"]
       87 CALL                             R5 2 1
       88 DUPTABLE                         R7 K21 [{"skillName"}]
       89 GETTABLEKS                       R8 R0 K1 ["skill_name"]
       91 SETTABLEKS                       R8 R7 K20 ["skillName"]
       93 NAMECALL                         R5 R5 K22 ["setStructuredContent"]
       95 CALL                             R5 2 1
       96 NAMECALL                         R5 R5 K8 ["build"]
       98 CALL                             R5 1 -1
       99 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 RETURN                           R1 1

PROTO_4:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getNames"]
        9 CALL                             R2 0 1
       10 GETIMPORT                        R3 K4 [table.sort]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 5
       15 GETTABLEKS                       R3 R3 K5 ["define"]
       17 CALL                             R3 0 1
       18 LOADK                            R5 K6 ["skill"]
       19 NAMECALL                         R3 R3 K7 ["setName"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 6
       23 CALL                             R5 0 1
       24 NAMECALL                         R3 R3 K8 ["setDescription"]
       26 CALL                             R3 2 1
       27 LOADK                            R5 K9 ["skill_name"]
       28 DUPTABLE                         R6 K13 [{["type"] = "string", ["description"]}]
       29 LOADK                            R8 K14 ["The name of the skill to retrieve. Options: "]
       30 GETIMPORT                        R9 K16 [table.concat]
       32 MOVE                             R10 R2
       33 LOADK                            R11 K17 [", "]
       34 CALL                             R9 2 1
       35 CONCAT                           R7 R8 R9
       36 SETTABLEKS                       R7 R6 K12 ["description"]
       38 NAMECALL                         R3 R3 K18 ["addArgument"]
       40 CALL                             R3 3 1
       41 LOADK                            R5 K19 ["Skill"]
       42 NAMECALL                         R3 R3 K20 ["setTitle"]
       44 CALL                             R3 2 1
       45 DUPTABLE                         R5 K28 [{["title"] = "Skill", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       46 NAMECALL                         R3 R3 K29 ["setAnnotations"]
       48 CALL                             R3 2 1
       49 MOVE                             R5 R1
       50 NAMECALL                         R3 R3 K30 ["setHandler"]
       52 CALL                             R3 2 1
       53 NAMECALL                         R3 R3 K31 ["build"]
       55 CALL                             R3 1 1
       56 DUPTABLE                         R4 K34 [{"definition", "getDescription"}]
       57 SETTABLEKS                       R3 R4 K32 ["definition"]
       59 DUPCLOSURE                       R5 K35 [PROTO_3]
       60 CAPTURE                          UPVAL U6
       61 SETTABLEKS                       R5 R4 K33 ["getDescription"]
       63 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Skills"]
       18 GETTABLEKS                       R3 R3 K9 ["DisabledSkillsPrompt"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Skills"]
       37 GETTABLEKS                       R6 R6 K12 ["SkillDefinition"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K8 ["Skills"]
       44 GETTABLEKS                       R7 R7 K13 ["SkillRegistry"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R1 K14 ["Engine"]
       49 GETTABLEKS                       R7 R7 K15 ["Providers"]
       51 GETTABLEKS                       R7 R7 K16 ["ToolNames"]
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K17 ["Tools"]
       57 GETTABLEKS                       R9 R9 K18 ["ToolTypes"]
       59 CALL                             R8 1 1
       60 GETTABLEKS                       R9 R5 K19 ["Sources"]
       62 GETTABLEKS                       R10 R4 K20 ["Util"]
       64 GETTABLEKS                       R10 R10 K21 ["ToolBuilder"]
       66 GETTABLEKS                       R11 R4 K20 ["Util"]
       68 GETTABLEKS                       R11 R11 K22 ["ToolResult"]
       70 DUPCLOSURE                       R12 K23 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R13 K24 [PROTO_1]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R2
       77 DUPCLOSURE                       R14 K25 [PROTO_4]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R13
       85 RETURN                           R14 1

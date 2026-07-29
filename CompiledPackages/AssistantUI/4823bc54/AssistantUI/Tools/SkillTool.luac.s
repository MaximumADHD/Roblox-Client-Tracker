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
       10 LOADK                            R8 K1 ["\n    <source>%*</source>"]
       11 GETTABLEKS                       R11 R6 K2 ["source"]
       13 GETUPVAL                         R12 1
       14 GETTABLEKS                       R12 R12 K3 ["User"]
       16 JUMPIFNOTEQ                      R11 R12 ; [+3]
       18 LOADK                            R10 K4 ["Local"]
       19 JUMP                             ; [+1]
       20 LOADK                            R10 K5 ["Roblox"]
       21 NAMECALL                         R8 R8 K6 ["format"]
       23 CALL                             R8 2 1
       24 MOVE                             R7 R8
       25 LOADK                            R11 K7 ["  <skill>\n    <name>%*</name>%*\n    <description>%*</description>\n  </skill>"]
       26 GETTABLEKS                       R13 R6 K8 ["name"]
       28 MOVE                             R14 R7
       29 GETTABLEKS                       R15 R6 K9 ["description"]
       31 NAMECALL                         R11 R11 K6 ["format"]
       33 CALL                             R11 4 1
       34 MOVE                             R10 R11
       35 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       37 MOVE                             R9 R1
       38 GETIMPORT                        R8 K12 [table.insert]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R2 2 ; [-32]
       43 GETIMPORT                        R2 K14 [table.sort]
       45 MOVE                             R3 R1
       46 CALL                             R2 1 0
       47 LOADK                            R3 K15 ["Retrieve detailed knowledge, best practices, or reference material for a specific skill.\nSkills provide domain-specific expertise that helps you produce better, more accurate results.\n\n<available_skills>\n"]
       48 GETIMPORT                        R6 K17 [table.concat]
       50 MOVE                             R7 R1
       51 LOADK                            R8 K18 ["\n"]
       52 CALL                             R6 2 1
       53 MOVE                             R4 R6
       54 LOADK                            R5 K19 ["\n</available_skills>\n\nWhen to use skills:\n1. When the task involves a domain covered by an available skill\n2. When you need best practices or conventions before writing or reviewing code\n3. When you are unsure about the correct patterns or APIs for a specific area\n\nImportant:\n1. Invoke the skill BEFORE writing code or taking action, not after\n2. Follow the returned guidance closely in your response\n3. Do not mention a skill without actually invoking it first"]
       55 CONCAT                           R2 R3 R5
       56 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 GETTABLEKS                       R4 R0 K1 ["skill_name"]
        5 CALL                             R3 1 1
        6 JUMPIF                           R3 ; [+33]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["getNames"]
       10 CALL                             R4 0 1
       11 GETIMPORT                        R5 K5 [table.sort]
       13 MOVE                             R6 R4
       14 CALL                             R5 1 0
       15 GETUPVAL                         R5 1
       16 CALL                             R5 0 1
       17 LOADK                            R8 K6 ["Unknown skill: \"%*\". Available skills: %*"]
       18 GETTABLEKS                       R10 R0 K1 ["skill_name"]
       20 GETIMPORT                        R11 K8 [table.concat]
       22 MOVE                             R12 R4
       23 LOADK                            R13 K9 [", "]
       24 CALL                             R11 2 1
       25 NAMECALL                         R8 R8 K10 ["format"]
       27 CALL                             R8 3 1
       28 MOVE                             R7 R8
       29 NAMECALL                         R5 R5 K11 ["addText"]
       31 CALL                             R5 2 1
       32 LOADB                            R7 1
       33 NAMECALL                         R5 R5 K12 ["setError"]
       35 CALL                             R5 2 1
       36 NAMECALL                         R5 R5 K13 ["build"]
       38 CALL                             R5 1 -1
       39 RETURN                           R5 -1
       40 GETTABLEKS                       R4 R3 K14 ["content"]
       42 GETUPVAL                         R5 2
       43 GETTABLEKS                       R5 R5 K15 ["FFlagAssistantSkillToolNameReplace"]
       45 JUMPIFNOT                        R5 ; [+6]
       46 GETUPVAL                         R5 3
       47 GETTABLEKS                       R5 R5 K16 ["replaceTokens"]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 MOVE                             R4 R5
       52 GETUPVAL                         R5 1
       53 CALL                             R5 0 1
       54 MOVE                             R7 R4
       55 NAMECALL                         R5 R5 K11 ["addText"]
       57 CALL                             R5 2 1
       58 DUPTABLE                         R7 K18 [{"skillName"}]
       59 GETTABLEKS                       R8 R0 K1 ["skill_name"]
       61 SETTABLEKS                       R8 R7 K17 ["skillName"]
       63 NAMECALL                         R5 R5 K19 ["setStructuredContent"]
       65 CALL                             R5 2 1
       66 NAMECALL                         R5 R5 K13 ["build"]
       68 CALL                             R5 1 -1
       69 RETURN                           R5 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["Skill"]
        8 LOADK                            R4 K5 ["Generating"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Skill"]
        2 LOADK                            R4 K1 ["Calling"]
        3 DUPTABLE                         R5 K3 [{"name"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["name"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R2 K2 ["skill_name"]
        4 ORK                              R1 R2 K0 [""]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Skill"]
        2 LOADK                            R4 K1 ["Called"]
        3 DUPTABLE                         R5 K3 [{"name"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K5 ["skillName"]
        7 ORK                              R6 R7 K4 [""]
        8 SETTABLEKS                       R6 R5 K2 ["name"]
       10 NAMECALL                         R1 R1 K6 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K7 ["summary"]
       15 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 RETURN                           R1 1

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["getNames"]
        8 CALL                             R2 0 1
        9 GETIMPORT                        R3 K4 [table.sort]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K5 ["define"]
       16 CALL                             R3 0 1
       17 LOADK                            R5 K6 ["skill"]
       18 NAMECALL                         R3 R3 K7 ["setName"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 5
       22 CALL                             R5 0 1
       23 NAMECALL                         R3 R3 K8 ["setDescription"]
       25 CALL                             R3 2 1
       26 LOADK                            R5 K9 ["skill_name"]
       27 DUPTABLE                         R6 K13 [{["type"] = "string", ["description"]}]
       28 LOADK                            R8 K14 ["The name of the skill to retrieve. Options: "]
       29 GETIMPORT                        R9 K16 [table.concat]
       31 MOVE                             R10 R2
       32 LOADK                            R11 K17 [", "]
       33 CALL                             R9 2 1
       34 CONCAT                           R7 R8 R9
       35 SETTABLEKS                       R7 R6 K12 ["description"]
       37 NAMECALL                         R3 R3 K18 ["addArgument"]
       39 CALL                             R3 3 1
       40 DUPTABLE                         R5 K27 [{["title"] = "Skill", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       41 NAMECALL                         R3 R3 K28 ["setAnnotations"]
       43 CALL                             R3 2 1
       44 MOVE                             R5 R1
       45 NAMECALL                         R3 R3 K29 ["setHandler"]
       47 CALL                             R3 2 1
       48 NAMECALL                         R3 R3 K30 ["build"]
       50 CALL                             R3 1 1
       51 DUPTABLE                         R4 K34 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       52 DUPCLOSURE                       R5 K35 [PROTO_3]
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 SETTABLEKS                       R5 R4 K31 ["transformInitialContent"]
       57 DUPCLOSURE                       R5 K36 [PROTO_5]
       58 CAPTURE                          UPVAL U7
       59 SETTABLEKS                       R5 R4 K32 ["getTransformPreExecuteFn"]
       61 DUPCLOSURE                       R5 K37 [PROTO_7]
       62 CAPTURE                          UPVAL U7
       63 SETTABLEKS                       R5 R4 K33 ["getTransformResultFn"]
       65 DUPTABLE                         R5 K42 [{"definition", "contentWidgets", "streamTransform", "getDescription"}]
       66 SETTABLEKS                       R3 R5 K38 ["definition"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K43 ["FFlagAssistantSplitToolsAndWidgets"]
       71 JUMPIFNOT                        R7 ; [+2]
       72 LOADNIL                          R6
       73 JUMP                             ; [+5]
       74 NEWTABLE                         R6 0 1
       76 GETUPVAL                         R7 6
       77 SETLIST                          R6 R7 1 [1]
       79 SETTABLEKS                       R6 R5 K39 ["contentWidgets"]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R7 R7 K43 ["FFlagAssistantSplitToolsAndWidgets"]
       84 JUMPIFNOT                        R7 ; [+2]
       85 LOADNIL                          R6
       86 JUMP                             ; [+1]
       87 MOVE                             R6 R4
       88 SETTABLEKS                       R6 R5 K40 ["streamTransform"]
       90 DUPCLOSURE                       R6 K44 [PROTO_8]
       91 CAPTURE                          UPVAL U5
       92 SETTABLEKS                       R6 R5 K41 ["getDescription"]
       94 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Skills"]
       23 GETTABLEKS                       R4 R4 K10 ["SkillDefinition"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Skills"]
       30 GETTABLEKS                       R5 R5 K11 ["SkillRegistry"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["ContentWidgets"]
       39 GETTABLEKS                       R6 R6 K14 ["SummarizedContentWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Tools"]
       46 GETTABLEKS                       R7 R7 K16 ["ToolNames"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Tools"]
       53 GETTABLEKS                       R8 R8 K17 ["ToolTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K18 ["Resources"]
       60 GETTABLEKS                       R9 R9 K19 ["Localization"]
       62 GETTABLEKS                       R9 R9 K20 ["Translator"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R3 K21 ["Sources"]
       67 GETTABLEKS                       R10 R2 K22 ["Util"]
       69 GETTABLEKS                       R10 R10 K23 ["ToolBuilder"]
       71 GETTABLEKS                       R11 R2 K22 ["Util"]
       73 GETTABLEKS                       R11 R11 K24 ["ToolResult"]
       75 DUPCLOSURE                       R12 K25 [PROTO_0]
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R13 K26 [PROTO_1]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 DUPCLOSURE                       R14 K27 [PROTO_9]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R8
       89 RETURN                           R14 1

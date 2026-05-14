PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAll"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 LOADK                            R10 K1 ["  <skill>\n    <name>%*</name>\n    <description>%*</description>\n  </skill>"]
       11 GETTABLEKS                       R12 R6 K2 ["name"]
       13 GETTABLEKS                       R13 R6 K3 ["description"]
       15 NAMECALL                         R10 R10 K4 ["format"]
       17 CALL                             R10 3 1
       18 MOVE                             R9 R10
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K7 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-16]
       27 GETIMPORT                        R2 K9 [table.sort]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 LOADK                            R3 K10 ["Retrieve detailed knowledge, best practices, or reference material for a specific skill.\nSkills provide domain-specific expertise that helps you produce better, more accurate results.\n\n<available_skills>\n"]
       32 GETIMPORT                        R6 K12 [table.concat]
       34 MOVE                             R7 R1
       35 LOADK                            R8 K13 ["\n"]
       36 CALL                             R6 2 1
       37 MOVE                             R4 R6
       38 LOADK                            R5 K14 ["\n</available_skills>\n\nWhen to use skills:\n1. When the task involves a domain covered by an available skill\n2. When you need best practices or conventions before writing or reviewing code\n3. When you are unsure about the correct patterns or APIs for a specific area\n\nImportant:\n1. Invoke the skill BEFORE writing code or taking action, not after\n2. Follow the returned guidance closely in your response\n3. Do not mention a skill without actually invoking it first"]
       39 CONCAT                           R2 R3 R5
       40 RETURN                           R2 1

PROTO_1:
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
       40 GETUPVAL                         R4 1
       41 CALL                             R4 0 1
       42 GETTABLEKS                       R6 R3 K14 ["content"]
       44 NAMECALL                         R4 R4 K11 ["addText"]
       46 CALL                             R4 2 1
       47 DUPTABLE                         R6 K16 [{"skillName"}]
       48 GETTABLEKS                       R7 R0 K1 ["skill_name"]
       50 SETTABLEKS                       R7 R6 K15 ["skillName"]
       52 NAMECALL                         R4 R4 K17 ["setStructuredContent"]
       54 CALL                             R4 2 1
       55 NAMECALL                         R4 R4 K13 ["build"]
       57 CALL                             R4 1 -1
       58 RETURN                           R4 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R2 K2 ["skill_name"]
        4 ORK                              R1 R2 K0 [""]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["getNames"]
        6 CALL                             R2 0 1
        7 GETIMPORT                        R3 K4 [table.sort]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K5 ["define"]
       14 CALL                             R3 0 1
       15 LOADK                            R5 K6 ["skill"]
       16 NAMECALL                         R3 R3 K7 ["setName"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R5 3
       20 CALL                             R5 0 1
       21 NAMECALL                         R3 R3 K8 ["setDescription"]
       23 CALL                             R3 2 1
       24 LOADK                            R5 K9 ["skill_name"]
       25 DUPTABLE                         R6 K12 [{"type", "description"}]
       26 LOADK                            R7 K13 ["string"]
       27 SETTABLEKS                       R7 R6 K10 ["type"]
       29 LOADK                            R8 K14 ["The name of the skill to retrieve. Options: "]
       30 GETIMPORT                        R9 K16 [table.concat]
       32 MOVE                             R10 R2
       33 LOADK                            R11 K17 [", "]
       34 CALL                             R9 2 1
       35 CONCAT                           R7 R8 R9
       36 SETTABLEKS                       R7 R6 K11 ["description"]
       38 NAMECALL                         R3 R3 K18 ["addArgument"]
       40 CALL                             R3 3 1
       41 DUPTABLE                         R5 K24 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       42 LOADK                            R6 K25 ["Skill"]
       43 SETTABLEKS                       R6 R5 K19 ["title"]
       45 LOADB                            R6 1
       46 SETTABLEKS                       R6 R5 K20 ["readOnlyHint"]
       48 LOADB                            R6 0
       49 SETTABLEKS                       R6 R5 K21 ["destructiveHint"]
       51 LOADB                            R6 0
       52 SETTABLEKS                       R6 R5 K22 ["idempotentHint"]
       54 LOADB                            R6 0
       55 SETTABLEKS                       R6 R5 K23 ["openWorldHint"]
       57 NAMECALL                         R3 R3 K26 ["setAnnotations"]
       59 CALL                             R3 2 1
       60 MOVE                             R5 R1
       61 NAMECALL                         R3 R3 K27 ["setHandler"]
       63 CALL                             R3 2 1
       64 NAMECALL                         R3 R3 K28 ["build"]
       66 CALL                             R3 1 1
       67 DUPTABLE                         R4 K32 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       68 DUPCLOSURE                       R5 K33 [PROTO_2]
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U5
       71 SETTABLEKS                       R5 R4 K29 ["transformInitialContent"]
       73 DUPCLOSURE                       R5 K34 [PROTO_4]
       74 CAPTURE                          UPVAL U5
       75 SETTABLEKS                       R5 R4 K30 ["getTransformPreExecuteFn"]
       77 DUPCLOSURE                       R5 K35 [PROTO_6]
       78 CAPTURE                          UPVAL U5
       79 SETTABLEKS                       R5 R4 K31 ["getTransformResultFn"]
       81 DUPTABLE                         R5 K39 [{"definition", "contentWidgets", "streamTransform"}]
       82 SETTABLEKS                       R3 R5 K36 ["definition"]
       84 NEWTABLE                         R6 0 1
       86 GETUPVAL                         R7 4
       87 SETLIST                          R6 R7 1 [1]
       89 SETTABLEKS                       R6 R5 K37 ["contentWidgets"]
       91 SETTABLEKS                       R4 R5 K38 ["streamTransform"]
       93 RETURN                           R5 1

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
       18 GETTABLEKS                       R3 R3 K9 ["SkillRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K12 ["SummarizedContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Tools"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Resources"]
       41 GETTABLEKS                       R6 R6 K16 ["Localization"]
       43 GETTABLEKS                       R6 R6 K17 ["Translator"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K18 ["Util"]
       48 GETTABLEKS                       R6 R6 K19 ["ToolBuilder"]
       50 GETTABLEKS                       R7 R1 K18 ["Util"]
       52 GETTABLEKS                       R7 R7 K20 ["ToolResult"]
       54 DUPCLOSURE                       R8 K21 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R9 K22 [PROTO_7]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R5
       63 RETURN                           R9 1

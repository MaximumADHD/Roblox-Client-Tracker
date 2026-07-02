PROTO_0:
        0 LOADK                            R3 K0 ["\\n"]
        1 LOADK                            R4 K1 ["\n"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 MOVE                             R0 R1
        6 LOADK                            R3 K3 ["\\t"]
        7 LOADK                            R4 K4 ["\t"]
        8 NAMECALL                         R1 R0 K2 ["gsub"]
       10 CALL                             R1 3 1
       11 MOVE                             R0 R1
       12 LOADK                            R3 K5 ["\\r"]
       13 LOADK                            R4 K6 ["\r"]
       14 NAMECALL                         R1 R0 K2 ["gsub"]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 LOADK                            R3 K7 ["\\\""]
       19 LOADK                            R4 K8 ["\""]
       20 NAMECALL                         R1 R0 K2 ["gsub"]
       22 CALL                             R1 3 1
       23 MOVE                             R0 R1
       24 LOADK                            R3 K9 ["\\\\"]
       25 LOADK                            R4 K10 ["\\"]
       26 NAMECALL                         R1 R0 K2 ["gsub"]
       28 CALL                             R1 3 1
       29 MOVE                             R0 R1
       30 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 3
        9 GETUPVAL                         R4 4
       10 CALL                             R0 4 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["skill_name"]
        2 GETTABLEKS                       R4 R0 K1 ["skill_description"]
        4 GETTABLEKS                       R5 R0 K2 ["skill_body"]
        6 JUMPIFNOT                        R3 ; [+2]
        7 JUMPIFNOTEQKS                    R3 K3 [""] ; [+15]
        9 GETUPVAL                         R6 0
       10 CALL                             R6 0 1
       11 LOADK                            R8 K4 ["Error: skill_name is required."]
       12 NAMECALL                         R6 R6 K5 ["addText"]
       14 CALL                             R6 2 1
       15 LOADB                            R8 1
       16 NAMECALL                         R6 R6 K6 ["setError"]
       18 CALL                             R6 2 1
       19 NAMECALL                         R6 R6 K7 ["build"]
       21 CALL                             R6 1 -1
       22 RETURN                           R6 -1
       23 JUMPIFNOT                        R4 ; [+2]
       24 JUMPIFNOTEQKS                    R4 K3 [""] ; [+15]
       26 GETUPVAL                         R6 0
       27 CALL                             R6 0 1
       28 LOADK                            R8 K8 ["Error: skill_description is required."]
       29 NAMECALL                         R6 R6 K5 ["addText"]
       31 CALL                             R6 2 1
       32 LOADB                            R8 1
       33 NAMECALL                         R6 R6 K6 ["setError"]
       35 CALL                             R6 2 1
       36 NAMECALL                         R6 R6 K7 ["build"]
       38 CALL                             R6 1 -1
       39 RETURN                           R6 -1
       40 JUMPIFNOT                        R5 ; [+2]
       41 JUMPIFNOTEQKS                    R5 K3 [""] ; [+15]
       43 GETUPVAL                         R6 0
       44 CALL                             R6 0 1
       45 LOADK                            R8 K9 ["Error: skill_body is required."]
       46 NAMECALL                         R6 R6 K5 ["addText"]
       48 CALL                             R6 2 1
       49 LOADB                            R8 1
       50 NAMECALL                         R6 R6 K6 ["setError"]
       52 CALL                             R6 2 1
       53 NAMECALL                         R6 R6 K7 ["build"]
       55 CALL                             R6 1 -1
       56 RETURN                           R6 -1
       57 LOADN                            R8 1
       58 LOADN                            R9 4
       59 NAMECALL                         R6 R3 K10 ["sub"]
       61 CALL                             R6 3 1
       62 JUMPIFNOTEQKS                    R6 K11 ["rbx-"] ; [+15]
       64 GETUPVAL                         R6 0
       65 CALL                             R6 0 1
       66 LOADK                            R8 K12 ["Error: skill names cannot start with 'rbx-' (reserved for Roblox skills)."]
       67 NAMECALL                         R6 R6 K5 ["addText"]
       69 CALL                             R6 2 1
       70 LOADB                            R8 1
       71 NAMECALL                         R6 R6 K6 ["setError"]
       73 CALL                             R6 2 1
       74 NAMECALL                         R6 R6 K7 ["build"]
       76 CALL                             R6 1 -1
       77 RETURN                           R6 -1
       78 LOADK                            R8 K13 ["^[%w_%-]+$"]
       79 NAMECALL                         R6 R3 K14 ["match"]
       81 CALL                             R6 2 1
       82 JUMPIF                           R6 ; [+14]
       83 GETUPVAL                         R6 0
       84 CALL                             R6 0 1
       85 LOADK                            R8 K15 ["Error: skill_name can only contain letters, numbers, underscores, and dashes."]
       86 NAMECALL                         R6 R6 K5 ["addText"]
       88 CALL                             R6 2 1
       89 LOADB                            R8 1
       90 NAMECALL                         R6 R6 K6 ["setError"]
       92 CALL                             R6 2 1
       93 NAMECALL                         R6 R6 K7 ["build"]
       95 CALL                             R6 1 -1
       96 RETURN                           R6 -1
       97 GETIMPORT                        R6 K17 [pcall]
       99 NEWCLOSURE                       R7 P0
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          UPVAL U2
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R5
      105 CALL                             R6 1 2
      106 JUMPIF                           R6 ; [+23]
      107 GETUPVAL                         R8 0
      108 CALL                             R8 0 1
      109 LOADK                            R11 K18 ["Error creating skill: %*"]
      110 FASTCALL1                        TOSTRING R7 ; [+3]
      111 MOVE                             R14 R7
      112 GETIMPORT                        R13 K20 [tostring]
      114 CALL                             R13 1 1
      115 NAMECALL                         R11 R11 K21 ["format"]
      117 CALL                             R11 2 1
      118 MOVE                             R10 R11
      119 NAMECALL                         R8 R8 K5 ["addText"]
      121 CALL                             R8 2 1
      122 LOADB                            R10 1
      123 NAMECALL                         R8 R8 K6 ["setError"]
      125 CALL                             R8 2 1
      126 NAMECALL                         R8 R8 K7 ["build"]
      128 CALL                             R8 1 -1
      129 RETURN                           R8 -1
      130 GETUPVAL                         R8 0
      131 CALL                             R8 0 1
      132 LOADK                            R11 K22 ["Skill \"%*\" created successfully. It is now available in the Skills tab under Personal."]
      133 MOVE                             R13 R3
      134 NAMECALL                         R11 R11 K21 ["format"]
      136 CALL                             R11 2 1
      137 MOVE                             R10 R11
      138 NAMECALL                         R8 R8 K5 ["addText"]
      140 CALL                             R8 2 1
      141 NAMECALL                         R8 R8 K7 ["build"]
      143 CALL                             R8 1 -1
      144 RETURN                           R8 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["CreateSkill"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Skill"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K6 [{["skill_name"] = "rbx-create-skill"}]
        7 SETTABLEKS                       R2 R1 K1 ["arguments"]
        9 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R0 K7 [{[1], ["stage"], ["body"] = "", ["expanded"] = True, ["inProgress"] = True}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K9 ["CreateSkill"]
        8 LOADK                            R4 K10 ["Creating"]
        9 NAMECALL                         R1 R1 K11 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["stage"]
       14 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K0 ["body"]
        5 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["CreateSkill"]
        2 LOADK                            R4 K1 ["Created"]
        3 DUPTABLE                         R5 K3 [{"name"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K5 ["skill_name"]
        7 ORK                              R6 R7 K4 [""]
        8 SETTABLEKS                       R6 R5 K2 ["name"]
       10 NAMECALL                         R1 R1 K6 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K7 ["stage"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K8 ["skill_body"]
       18 ORK                              R1 R2 K4 [""]
       19 SETTABLEKS                       R1 R0 K9 ["body"]
       21 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_10:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["inProgress"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["expanded"]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+3]
        8 LOADK                            R1 K2 ["Failed to create skill"]
        9 SETTABLEKS                       R1 R0 K3 ["stage"]
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["isError"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_12:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K1 ["define"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K2 ["CreateSkill"]
       11 NAMECALL                         R2 R2 K3 ["setName"]
       13 CALL                             R2 2 1
       14 LOADK                            R4 K4 ["Create a new custom skill. The skill will be published and immediately available to the assistant."]
       15 NAMECALL                         R2 R2 K5 ["setDescription"]
       17 CALL                             R2 2 1
       18 LOADK                            R4 K6 ["skill_name"]
       19 DUPTABLE                         R5 K11 [{["type"] = "string", ["description"] = "Unique name for the skill. Lowercase letters, numbers, underscores, dashes only. Cannot start with 'rbx-'."}]
       20 NAMECALL                         R2 R2 K12 ["addArgument"]
       22 CALL                             R2 3 1
       23 LOADK                            R4 K13 ["skill_description"]
       24 DUPTABLE                         R5 K15 [{["type"] = "string", ["description"] = "One-line description of what the skill does and when to use it. Written in third person."}]
       25 NAMECALL                         R2 R2 K12 ["addArgument"]
       27 CALL                             R2 3 1
       28 LOADK                            R4 K16 ["skill_body"]
       29 DUPTABLE                         R5 K18 [{["type"] = "string", ["description"] = "The markdown body content — instructions the agent follows when the skill is invoked."}]
       30 NAMECALL                         R2 R2 K12 ["addArgument"]
       32 CALL                             R2 3 1
       33 DUPTABLE                         R4 K26 [{["title"] = "Create Skill", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       34 NAMECALL                         R2 R2 K27 ["setAnnotations"]
       36 CALL                             R2 2 1
       37 MOVE                             R4 R1
       38 NAMECALL                         R2 R2 K28 ["setHandler"]
       40 CALL                             R2 2 1
       41 NAMECALL                         R2 R2 K29 ["build"]
       43 CALL                             R2 1 1
       44 DUPTABLE                         R3 K36 [{["command"] = "create-skill", ["continueWithLLM"] = True, ["getDescription"], ["mapToToolCall"]}]
       45 DUPCLOSURE                       R4 K37 [PROTO_3]
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R4 R3 K34 ["getDescription"]
       49 DUPCLOSURE                       R4 K38 [PROTO_4]
       50 CAPTURE                          UPVAL U4
       51 SETTABLEKS                       R4 R3 K35 ["mapToToolCall"]
       53 DUPTABLE                         R4 K43 [{"transformInitialContent", "getTransformDeltaFn", "getTransformPreExecuteFn", "getTransformResultFn"}]
       54 DUPCLOSURE                       R5 K44 [PROTO_5]
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U5
       57 SETTABLEKS                       R5 R4 K39 ["transformInitialContent"]
       59 DUPCLOSURE                       R5 K45 [PROTO_7]
       60 CAPTURE                          UPVAL U7
       61 SETTABLEKS                       R5 R4 K40 ["getTransformDeltaFn"]
       63 DUPCLOSURE                       R5 K46 [PROTO_9]
       64 CAPTURE                          UPVAL U5
       65 SETTABLEKS                       R5 R4 K41 ["getTransformPreExecuteFn"]
       67 DUPCLOSURE                       R5 K47 [PROTO_11]
       68 SETTABLEKS                       R5 R4 K42 ["getTransformResultFn"]
       70 DUPTABLE                         R5 K52 [{"definition", "slashCommands", "contentWidgets", "streamTransform"}]
       71 SETTABLEKS                       R2 R5 K48 ["definition"]
       73 NEWTABLE                         R6 0 1
       75 MOVE                             R7 R3
       76 SETLIST                          R6 R7 1 [1]
       78 SETTABLEKS                       R6 R5 K49 ["slashCommands"]
       80 GETUPVAL                         R7 8
       81 CALL                             R7 0 1
       82 JUMPIFNOT                        R7 ; [+2]
       83 LOADNIL                          R6
       84 JUMP                             ; [+5]
       85 NEWTABLE                         R6 0 1
       87 GETUPVAL                         R7 6
       88 SETLIST                          R6 R7 1 [1]
       90 SETTABLEKS                       R6 R5 K50 ["contentWidgets"]
       92 GETUPVAL                         R7 8
       93 CALL                             R7 0 1
       94 JUMPIFNOT                        R7 ; [+2]
       95 LOADNIL                          R6
       96 JUMP                             ; [+1]
       97 MOVE                             R6 R4
       98 SETTABLEKS                       R6 R5 K51 ["streamTransform"]
      100 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["CreateSkillContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["ModelContextProtocol"]
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
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K18 ["Skills"]
       50 GETTABLEKS                       R7 R7 K19 ["createUserSkillAsync"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K20 ["Flags"]
       57 GETTABLEKS                       R8 R8 K21 ["FFlagAssistantSplitToolsAndWidgets"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R3 K22 ["Util"]
       62 GETTABLEKS                       R8 R8 K23 ["ToolBuilder"]
       64 GETTABLEKS                       R9 R3 K22 ["Util"]
       66 GETTABLEKS                       R9 R9 K24 ["ToolResult"]
       68 GETTABLEKS                       R10 R4 K25 ["ToolNames"]
       70 DUPCLOSURE                       R11 K26 [PROTO_0]
       71 DUPCLOSURE                       R12 K27 [PROTO_12]
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R7
       81 RETURN                           R12 1

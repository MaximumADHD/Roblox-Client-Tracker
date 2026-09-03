PROTO_0:
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

PROTO_1:
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

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
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
       44 DUPTABLE                         R3 K31 [{"definition"}]
       45 SETTABLEKS                       R2 R3 K30 ["definition"]
       47 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Tools"]
       25 GETTABLEKS                       R4 R4 K11 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Skills"]
       32 GETTABLEKS                       R5 R5 K13 ["createUserSkillAsync"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K14 ["Util"]
       37 GETTABLEKS                       R5 R5 K15 ["ToolBuilder"]
       39 GETTABLEKS                       R6 R2 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K16 ["ToolResult"]
       43 GETTABLEKS                       R7 R3 K17 ["ToolNames"]
       45 DUPCLOSURE                       R8 K18 [PROTO_2]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R7
       51 RETURN                           R8 1

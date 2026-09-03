PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 DUPTABLE                         R3 K5 [{"newName", "newDescription", "newBody"}]
        9 GETUPVAL                         R4 3
       10 SETTABLEKS                       R4 R3 K2 ["newName"]
       12 GETUPVAL                         R4 4
       13 SETTABLEKS                       R4 R3 K3 ["newDescription"]
       15 GETUPVAL                         R4 5
       16 SETTABLEKS                       R4 R3 K4 ["newBody"]
       18 CALL                             R0 3 2
       19 JUMPIF                           R0 ; [+4]
       20 GETIMPORT                        R2 K7 [error]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["skill_name"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 JUMPIFNOTEQKS                    R3 K1 [""] ; [+15]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 LOADK                            R6 K2 ["Error: skill_name is required."]
        8 NAMECALL                         R4 R4 K3 ["addText"]
       10 CALL                             R4 2 1
       11 LOADB                            R6 1
       12 NAMECALL                         R4 R4 K4 ["setError"]
       14 CALL                             R4 2 1
       15 NAMECALL                         R4 R4 K5 ["build"]
       17 CALL                             R4 1 -1
       18 RETURN                           R4 -1
       19 GETTABLEKS                       R4 R0 K6 ["new_name"]
       21 GETTABLEKS                       R5 R0 K7 ["new_description"]
       23 GETTABLEKS                       R6 R0 K8 ["new_skill_body"]
       25 JUMPIF                           R4 ; [+16]
       26 JUMPIF                           R5 ; [+15]
       27 JUMPIF                           R6 ; [+14]
       28 GETUPVAL                         R7 0
       29 CALL                             R7 0 1
       30 LOADK                            R9 K9 ["Error: at least one of new_name, new_description, or new_skill_body is required."]
       31 NAMECALL                         R7 R7 K3 ["addText"]
       33 CALL                             R7 2 1
       34 LOADB                            R9 1
       35 NAMECALL                         R7 R7 K4 ["setError"]
       37 CALL                             R7 2 1
       38 NAMECALL                         R7 R7 K5 ["build"]
       40 CALL                             R7 1 -1
       41 RETURN                           R7 -1
       42 GETIMPORT                        R7 K11 [pcall]
       44 NEWCLOSURE                       R8 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R6
       51 CALL                             R7 1 2
       52 JUMPIF                           R7 ; [+23]
       53 GETUPVAL                         R9 0
       54 CALL                             R9 0 1
       55 LOADK                            R12 K12 ["Error editing skill: %*"]
       56 FASTCALL1                        TOSTRING R8 ; [+3]
       57 MOVE                             R15 R8
       58 GETIMPORT                        R14 K14 [tostring]
       60 CALL                             R14 1 1
       61 NAMECALL                         R12 R12 K15 ["format"]
       63 CALL                             R12 2 1
       64 MOVE                             R11 R12
       65 NAMECALL                         R9 R9 K3 ["addText"]
       67 CALL                             R9 2 1
       68 LOADB                            R11 1
       69 NAMECALL                         R9 R9 K4 ["setError"]
       71 CALL                             R9 2 1
       72 NAMECALL                         R9 R9 K5 ["build"]
       74 CALL                             R9 1 -1
       75 RETURN                           R9 -1
       76 OR                               R9 R4 R3
       77 GETUPVAL                         R10 0
       78 CALL                             R10 0 1
       79 LOADK                            R13 K16 ["Skill \"%*\" updated successfully."]
       80 MOVE                             R15 R9
       81 NAMECALL                         R13 R13 K15 ["format"]
       83 CALL                             R13 2 1
       84 MOVE                             R12 R13
       85 NAMECALL                         R10 R10 K3 ["addText"]
       87 CALL                             R10 2 1
       88 DUPTABLE                         R12 K18 [{"skillName"}]
       89 SETTABLEKS                       R9 R12 K17 ["skillName"]
       91 NAMECALL                         R10 R10 K19 ["setStructuredContent"]
       93 CALL                             R10 2 1
       94 NAMECALL                         R10 R10 K5 ["build"]
       96 CALL                             R10 1 -1
       97 RETURN                           R10 -1

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K1 ["define"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R4 R4 K2 ["EditSkill"]
       11 NAMECALL                         R2 R2 K3 ["setName"]
       13 CALL                             R2 2 1
       14 LOADK                            R4 K4 ["Edit an existing user skill. Can update the name, description, and/or body. Only user-created skills can be edited."]
       15 NAMECALL                         R2 R2 K5 ["setDescription"]
       17 CALL                             R2 2 1
       18 LOADK                            R4 K6 ["skill_name"]
       19 DUPTABLE                         R5 K11 [{["type"] = "string", ["description"] = "The current name of the skill to edit."}]
       20 NAMECALL                         R2 R2 K12 ["addArgument"]
       22 CALL                             R2 3 1
       23 LOADK                            R4 K13 ["new_name"]
       24 DUPTABLE                         R5 K15 [{["type"] = "string", ["description"] = "New name for the skill. Lowercase letters, numbers, underscores, dashes only. Cannot start with 'rbx-'. Omit to keep current name."}]
       25 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       27 CALL                             R2 3 1
       28 LOADK                            R4 K17 ["new_description"]
       29 DUPTABLE                         R5 K19 [{["type"] = "string", ["description"] = "New one-line description for the skill. Omit to keep current description."}]
       30 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       32 CALL                             R2 3 1
       33 LOADK                            R4 K20 ["new_skill_body"]
       34 DUPTABLE                         R5 K22 [{["type"] = "string", ["description"] = "New markdown body content for the skill. This replaces the entire body. Omit to keep current body."}]
       35 NAMECALL                         R2 R2 K16 ["addOptionalArgument"]
       37 CALL                             R2 3 1
       38 DUPTABLE                         R4 K31 [{["title"] = "Edit Skill", ["readOnlyHint"] = False, ["destructiveHint"] = True, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       39 NAMECALL                         R2 R2 K32 ["setAnnotations"]
       41 CALL                             R2 2 1
       42 MOVE                             R4 R1
       43 NAMECALL                         R2 R2 K33 ["setHandler"]
       45 CALL                             R2 2 1
       46 NAMECALL                         R2 R2 K34 ["build"]
       48 CALL                             R2 1 1
       49 DUPTABLE                         R3 K36 [{"definition"}]
       50 SETTABLEKS                       R2 R3 K35 ["definition"]
       52 RETURN                           R3 1

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
       32 GETTABLEKS                       R5 R5 K13 ["editUserSkillAsync"]
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

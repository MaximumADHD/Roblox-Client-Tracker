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

PROTO_2:
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

PROTO_3:
        0 DUPTABLE                         R0 K7 [{[1], ["stage"], ["body"] = "", ["expanded"] = True, ["inProgress"] = True}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K8 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K9 ["EditSkill"]
        8 LOADK                            R4 K10 ["Editing"]
        9 NAMECALL                         R1 R1 K11 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["stage"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 SETTABLEKS                       R1 R0 K0 ["body"]
        5 RETURN                           R0 0

PROTO_5:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new_name"]
        3 JUMPIF                           R1 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["skill_name"]
        7 JUMPIF                           R1 ; [+1]
        8 LOADK                            R1 K2 [""]
        9 GETUPVAL                         R2 1
       10 LOADK                            R4 K3 ["EditSkill"]
       11 LOADK                            R5 K4 ["Edited"]
       12 DUPTABLE                         R6 K6 [{"name"}]
       13 SETTABLEKS                       R1 R6 K5 ["name"]
       15 NAMECALL                         R2 R2 K7 ["getText"]
       17 CALL                             R2 4 1
       18 SETTABLEKS                       R2 R0 K8 ["stage"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K9 ["new_skill_body"]
       23 ORK                              R2 R3 K2 [""]
       24 SETTABLEKS                       R2 R0 K10 ["body"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 RETURN                           R2 1

PROTO_8:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["inProgress"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K1 ["expanded"]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOT                        R1 ; [+3]
        8 LOADK                            R1 K2 ["Failed to edit skill"]
        9 SETTABLEKS                       R1 R0 K3 ["stage"]
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["isError"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
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
       49 DUPTABLE                         R3 K39 [{"transformInitialContent", "getTransformDeltaFn", "getTransformPreExecuteFn", "getTransformResultFn"}]
       50 DUPCLOSURE                       R4 K40 [PROTO_3]
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          UPVAL U6
       53 SETTABLEKS                       R4 R3 K35 ["transformInitialContent"]
       55 DUPCLOSURE                       R4 K41 [PROTO_5]
       56 CAPTURE                          UPVAL U7
       57 SETTABLEKS                       R4 R3 K36 ["getTransformDeltaFn"]
       59 DUPCLOSURE                       R4 K42 [PROTO_7]
       60 CAPTURE                          UPVAL U6
       61 SETTABLEKS                       R4 R3 K37 ["getTransformPreExecuteFn"]
       63 DUPCLOSURE                       R4 K43 [PROTO_9]
       64 SETTABLEKS                       R4 R3 K38 ["getTransformResultFn"]
       66 DUPTABLE                         R4 K47 [{"definition", "contentWidgets", "streamTransform"}]
       67 SETTABLEKS                       R2 R4 K44 ["definition"]
       69 GETUPVAL                         R6 8
       70 GETTABLEKS                       R6 R6 K48 ["FFlagAssistantSplitToolsAndWidgets"]
       72 JUMPIFNOT                        R6 ; [+2]
       73 LOADNIL                          R5
       74 JUMP                             ; [+5]
       75 NEWTABLE                         R5 0 1
       77 GETUPVAL                         R6 5
       78 SETLIST                          R5 R6 1 [1]
       80 SETTABLEKS                       R5 R4 K45 ["contentWidgets"]
       82 GETUPVAL                         R6 8
       83 GETTABLEKS                       R6 R6 K48 ["FFlagAssistantSplitToolsAndWidgets"]
       85 JUMPIFNOT                        R6 ; [+2]
       86 LOADNIL                          R5
       87 JUMP                             ; [+1]
       88 MOVE                             R5 R3
       89 SETTABLEKS                       R5 R4 K46 ["streamTransform"]
       91 RETURN                           R4 1

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
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Parent"]
       32 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Tools"]
       39 GETTABLEKS                       R6 R6 K15 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K16 ["Resources"]
       46 GETTABLEKS                       R7 R7 K17 ["Localization"]
       48 GETTABLEKS                       R7 R7 K18 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K19 ["Skills"]
       55 GETTABLEKS                       R8 R8 K20 ["editUserSkillAsync"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R4 K21 ["Util"]
       60 GETTABLEKS                       R8 R8 K22 ["ToolBuilder"]
       62 GETTABLEKS                       R9 R4 K21 ["Util"]
       64 GETTABLEKS                       R9 R9 K23 ["ToolResult"]
       66 GETTABLEKS                       R10 R5 K24 ["ToolNames"]
       68 DUPCLOSURE                       R11 K25 [PROTO_0]
       69 DUPCLOSURE                       R12 K26 [PROTO_10]
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R3
       79 RETURN                           R12 1

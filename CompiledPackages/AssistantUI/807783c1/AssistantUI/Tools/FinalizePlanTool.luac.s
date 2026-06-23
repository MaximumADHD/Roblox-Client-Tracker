PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPE R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K1 [type]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+13]
       13 DUPTABLE                         R9 K5 [{"text", "state"}]
       14 SETTABLEKS                       R6 R9 K3 ["text"]
       16 LOADK                            R10 K6 ["pending"]
       17 SETTABLEKS                       R10 R9 K4 ["state"]
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K9 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-20]
       27 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["plan"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R6 R2
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 LOADK                            R6 K4 ["FinalizePlanTool requires a plan object, got \"%*\""]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R9 R2
       14 GETIMPORT                        R8 K2 [type]
       16 CALL                             R8 1 1
       17 NAMECALL                         R6 R6 K5 ["format"]
       19 CALL                             R6 2 1
       20 MOVE                             R5 R6
       21 FASTCALL2                        ASSERT R4 R5 ; [+3]
       23 GETIMPORT                        R3 K7 [assert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R6 R2 K8 ["title"]
       28 FASTCALL1                        TYPE R6 ; [+2]
       29 GETIMPORT                        R5 K2 [type]
       31 CALL                             R5 1 1
       32 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       34 LOADB                            R4 0 +1
       35 LOADB                            R4 1
       36 LOADK                            R6 K10 ["FinalizePlanTool requires plan.title, got \"%*\""]
       37 GETTABLEKS                       R9 R2 K8 ["title"]
       39 FASTCALL1                        TYPE R9 ; [+2]
       40 GETIMPORT                        R8 K2 [type]
       42 CALL                             R8 1 1
       43 NAMECALL                         R6 R6 K5 ["format"]
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 FASTCALL2                        ASSERT R4 R5 ; [+3]
       49 GETIMPORT                        R3 K7 [assert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R6 R2 K11 ["summary"]
       54 FASTCALL1                        TYPE R6 ; [+2]
       55 GETIMPORT                        R5 K2 [type]
       57 CALL                             R5 1 1
       58 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       60 LOADB                            R4 0 +1
       61 LOADB                            R4 1
       62 LOADK                            R6 K12 ["FinalizePlanTool requires plan.summary, got \"%*\""]
       63 GETTABLEKS                       R9 R2 K11 ["summary"]
       65 FASTCALL1                        TYPE R9 ; [+2]
       66 GETIMPORT                        R8 K2 [type]
       68 CALL                             R8 1 1
       69 NAMECALL                         R6 R6 K5 ["format"]
       71 CALL                             R6 2 1
       72 MOVE                             R5 R6
       73 FASTCALL2                        ASSERT R4 R5 ; [+3]
       75 GETIMPORT                        R3 K7 [assert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R6 R2 K13 ["completeDescription"]
       80 FASTCALL1                        TYPE R6 ; [+2]
       81 GETIMPORT                        R5 K2 [type]
       83 CALL                             R5 1 1
       84 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       86 LOADB                            R4 0 +1
       87 LOADB                            R4 1
       88 LOADK                            R6 K14 ["FinalizePlanTool requires plan.completeDescription, got \"%*\""]
       89 GETTABLEKS                       R9 R2 K13 ["completeDescription"]
       91 FASTCALL1                        TYPE R9 ; [+2]
       92 GETIMPORT                        R8 K2 [type]
       94 CALL                             R8 1 1
       95 NAMECALL                         R6 R6 K5 ["format"]
       97 CALL                             R6 2 1
       98 MOVE                             R5 R6
       99 FASTCALL2                        ASSERT R4 R5 ; [+3]
      101 GETIMPORT                        R3 K7 [assert]
      103 CALL                             R3 2 0
      104 GETTABLEKS                       R6 R2 K15 ["todo"]
      106 FASTCALL1                        TYPE R6 ; [+2]
      107 GETIMPORT                        R5 K2 [type]
      109 CALL                             R5 1 1
      110 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
      112 LOADB                            R4 0 +1
      113 LOADB                            R4 1
      114 LOADK                            R6 K16 ["FinalizePlanTool requires plan.todo, got \"%*\""]
      115 GETTABLEKS                       R9 R2 K15 ["todo"]
      117 FASTCALL1                        TYPE R9 ; [+2]
      118 GETIMPORT                        R8 K2 [type]
      120 CALL                             R8 1 1
      121 NAMECALL                         R6 R6 K5 ["format"]
      123 CALL                             R6 2 1
      124 MOVE                             R5 R6
      125 FASTCALL2                        ASSERT R4 R5 ; [+3]
      127 GETIMPORT                        R3 K7 [assert]
      129 CALL                             R3 2 0
      130 GETTABLEKS                       R3 R2 K15 ["todo"]
      132 LOADNIL                          R4
      133 LOADNIL                          R5
      134 FORGPREP                         R3
      135 FASTCALL1                        TYPE R7 ; [+3]
      136 MOVE                             R11 R7
      137 GETIMPORT                        R10 K2 [type]
      139 CALL                             R10 1 1
      140 JUMPIFEQKS                       R10 K9 ["string"] ; [+2]
      142 LOADB                            R9 0 +1
      143 LOADB                            R9 1
      144 LOADK                            R11 K17 ["FinalizePlanTool requires todo items to be strings, got \"%*\""]
      145 FASTCALL1                        TYPE R7 ; [+3]
      146 MOVE                             R14 R7
      147 GETIMPORT                        R13 K2 [type]
      149 CALL                             R13 1 1
      150 NAMECALL                         R11 R11 K5 ["format"]
      152 CALL                             R11 2 1
      153 MOVE                             R10 R11
      154 FASTCALL2                        ASSERT R9 R10 ; [+3]
      156 GETIMPORT                        R8 K7 [assert]
      158 CALL                             R8 2 0
      159 FORGLOOP                         R3 2 ; [-25]
      161 GETUPVAL                         R3 0
      162 JUMPIFNOT                        R3 ; [+93]
      163 GETTABLEKS                       R3 R0 K18 ["name"]
      165 FASTCALL1                        TYPE R3 ; [+3]
      166 MOVE                             R7 R3
      167 GETIMPORT                        R6 K2 [type]
      169 CALL                             R6 1 1
      170 JUMPIFEQKS                       R6 K9 ["string"] ; [+2]
      172 LOADB                            R5 0 +1
      173 LOADB                            R5 1
      174 LOADK                            R7 K19 ["FinalizePlanTool requires name, got \"%*\""]
      175 FASTCALL1                        TYPE R3 ; [+3]
      176 MOVE                             R10 R3
      177 GETIMPORT                        R9 K2 [type]
      179 CALL                             R9 1 1
      180 NAMECALL                         R7 R7 K5 ["format"]
      182 CALL                             R7 2 1
      183 MOVE                             R6 R7
      184 FASTCALL2                        ASSERT R5 R6 ; [+3]
      186 GETIMPORT                        R4 K7 [assert]
      188 CALL                             R4 2 0
      189 GETUPVAL                         R4 1
      190 MOVE                             R5 R1
      191 CALL                             R4 1 1
      192 MOVE                             R7 R3
      193 DUPTABLE                         R8 K21 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      194 GETTABLEKS                       R9 R2 K8 ["title"]
      196 SETTABLEKS                       R9 R8 K8 ["title"]
      198 GETTABLEKS                       R9 R2 K11 ["summary"]
      200 SETTABLEKS                       R9 R8 K11 ["summary"]
      202 GETTABLEKS                       R9 R2 K13 ["completeDescription"]
      204 SETTABLEKS                       R9 R8 K13 ["completeDescription"]
      206 GETUPVAL                         R9 2
      207 GETTABLEKS                       R10 R2 K15 ["todo"]
      209 CALL                             R9 1 1
      210 SETTABLEKS                       R9 R8 K15 ["todo"]
      212 GETIMPORT                        R9 K24 [os.time]
      214 CALL                             R9 0 1
      215 SETTABLEKS                       R9 R8 K20 ["createdAt"]
      217 NAMECALL                         R5 R4 K25 ["createPlan"]
      219 CALL                             R5 3 1
      220 GETUPVAL                         R6 3
      221 CALL                             R6 0 1
      222 JUMPIFNOT                        R6 ; [+6]
      223 JUMPIFNOT                        R1 ; [+5]
      224 GETTABLEKS                       R8 R1 K26 ["messageGuid"]
      226 NAMECALL                         R6 R4 K27 ["setPlanMessageId"]
      228 CALL                             R6 2 0
      229 DUPTABLE                         R6 K30 [{"status", "planId", "name"}]
      230 LOADK                            R7 K31 ["presented"]
      231 SETTABLEKS                       R7 R6 K28 ["status"]
      233 SETTABLEKS                       R5 R6 K29 ["planId"]
      235 SETTABLEKS                       R3 R6 K18 ["name"]
      237 GETUPVAL                         R7 4
      238 GETTABLEKS                       R7 R7 K32 ["toString"]
      240 MOVE                             R8 R6
      241 CALL                             R7 1 1
      242 GETUPVAL                         R8 5
      243 CALL                             R8 0 1
      244 MOVE                             R10 R7
      245 NAMECALL                         R8 R8 K33 ["addText"]
      247 CALL                             R8 2 1
      248 MOVE                             R10 R6
      249 NAMECALL                         R8 R8 K34 ["setStructuredContent"]
      251 CALL                             R8 2 1
      252 NAMECALL                         R8 R8 K35 ["build"]
      254 CALL                             R8 1 -1
      255 RETURN                           R8 -1
      256 DUPTABLE                         R3 K36 [{"status"}]
      257 LOADK                            R4 K31 ["presented"]
      258 SETTABLEKS                       R4 R3 K28 ["status"]
      260 GETUPVAL                         R4 4
      261 GETTABLEKS                       R4 R4 K32 ["toString"]
      263 MOVE                             R5 R3
      264 CALL                             R4 1 1
      265 GETUPVAL                         R5 5
      266 CALL                             R5 0 1
      267 MOVE                             R7 R4
      268 NAMECALL                         R5 R5 K33 ["addText"]
      270 CALL                             R5 2 1
      271 MOVE                             R7 R3
      272 NAMECALL                         R5 R5 K34 ["setStructuredContent"]
      274 CALL                             R5 2 1
      275 NAMECALL                         R5 R5 K35 ["build"]
      277 CALL                             R5 1 -1
      278 RETURN                           R5 -1

PROTO_2:
        0 DUPTABLE                         R0 K6 [{"type", "title", "summary", "completeDescription", "todo", "status"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K7 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K8 [""]
        7 SETTABLEKS                       R1 R0 K1 ["title"]
        9 LOADK                            R1 K8 [""]
       10 SETTABLEKS                       R1 R0 K2 ["summary"]
       12 LOADK                            R1 K8 [""]
       13 SETTABLEKS                       R1 R0 K3 ["completeDescription"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K4 ["todo"]
       19 LOADK                            R1 K9 ["preparing"]
       20 SETTABLEKS                       R1 R0 K5 ["status"]
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["title"]
        3 FASTCALL1                        TYPE R3 ; [+2]
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["title"]
       12 JUMP                             ; [+1]
       13 LOADK                            R1 K4 [""]
       14 SETTABLEKS                       R1 R0 K0 ["title"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["summary"]
       19 FASTCALL1                        TYPE R3 ; [+2]
       20 GETIMPORT                        R2 K2 [type]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K5 ["summary"]
       28 JUMP                             ; [+1]
       29 LOADK                            R1 K4 [""]
       30 SETTABLEKS                       R1 R0 K5 ["summary"]
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K6 ["completeDescription"]
       35 FASTCALL1                        TYPE R3 ; [+2]
       36 GETIMPORT                        R2 K2 [type]
       38 CALL                             R2 1 1
       39 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K6 ["completeDescription"]
       44 JUMP                             ; [+1]
       45 LOADK                            R1 K4 [""]
       46 SETTABLEKS                       R1 R0 K6 ["completeDescription"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K7 ["todo"]
       51 FASTCALL1                        TYPE R3 ; [+2]
       52 GETIMPORT                        R2 K2 [type]
       54 CALL                             R2 1 1
       55 JUMPIFNOTEQKS                    R2 K8 ["table"] ; [+7]
       57 GETUPVAL                         R1 1
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K7 ["todo"]
       61 CALL                             R1 1 1
       62 JUMP                             ; [+2]
       63 NEWTABLE                         R1 0 0
       65 SETTABLEKS                       R1 R0 K7 ["todo"]
       67 GETUPVAL                         R1 2
       68 JUMPIFNOT                        R1 ; [+12]
       69 GETUPVAL                         R3 3
       70 FASTCALL1                        TYPE R3 ; [+2]
       71 GETIMPORT                        R2 K2 [type]
       73 CALL                             R2 1 1
       74 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+3]
       76 GETUPVAL                         R1 3
       77 JUMP                             ; [+1]
       78 LOADNIL                          R1
       79 SETTABLEKS                       R1 R0 K9 ["name"]
       81 LOADK                            R1 K10 ["awaiting_decision"]
       82 SETTABLEKS                       R1 R0 K11 ["status"]
       84 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["plan"]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [type]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K4 ["table"] ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R3 0
       17 JUMPIFNOT                        R3 ; [+8]
       18 GETTABLEKS                       R2 R0 K0 ["input"]
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETTABLEKS                       R2 R0 K0 ["input"]
       23 GETTABLEKS                       R2 R2 K5 ["name"]
       25 JUMP                             ; [+1]
       26 LOADNIL                          R2
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R2
       32 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+4]
        4 LOADK                            R1 K1 ["error"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+18]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["structuredContent"]
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R3 R1
       15 GETIMPORT                        R2 K5 [type]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+9]
       20 GETTABLEKS                       R2 R1 K7 ["planId"]
       22 SETTABLEKS                       R2 R0 K7 ["planId"]
       24 GETTABLEKS                       R2 R1 K8 ["name"]
       26 SETTABLEKS                       R2 R0 K8 ["name"]
       28 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["getPersistentPlanRuntime"]
        4 DUPCLOSURE                       R3 K1 [PROTO_0]
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["define"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K3 ["FinalizePlan"]
       19 NAMECALL                         R5 R5 K4 ["setName"]
       21 CALL                             R5 2 1
       22 JUMPIFNOT                        R1 ; [+2]
       23 LOADK                            R7 K5 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\",\"planId\":\"...\",\"name\":\"...\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       24 JUMP                             ; [+1]
       25 LOADK                            R7 K6 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       26 NAMECALL                         R5 R5 K7 ["setDescription"]
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R1 ; [+11]
       30 LOADK                            R8 K8 ["name"]
       31 DUPTABLE                         R9 K11 [{"type", "description"}]
       32 LOADK                            R10 K12 ["string"]
       33 SETTABLEKS                       R10 R9 K9 ["type"]
       35 LOADK                            R10 K13 ["A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."]
       36 SETTABLEKS                       R10 R9 K10 ["description"]
       38 NAMECALL                         R6 R5 K14 ["addArgument"]
       40 CALL                             R6 3 0
       41 LOADK                            R8 K15 ["plan"]
       42 DUPTABLE                         R9 K18 [{"type", "description", "properties", "required"}]
       43 LOADK                            R10 K19 ["object"]
       44 SETTABLEKS                       R10 R9 K9 ["type"]
       46 LOADK                            R10 K20 ["The structured final plan."]
       47 SETTABLEKS                       R10 R9 K10 ["description"]
       49 DUPTABLE                         R10 K25 [{"completeDescription", "todo", "summary", "title"}]
       50 DUPTABLE                         R11 K11 [{"type", "description"}]
       51 LOADK                            R12 K12 ["string"]
       52 SETTABLEKS                       R12 R11 K9 ["type"]
       54 LOADK                            R12 K26 ["Markdown describing all plan details."]
       55 SETTABLEKS                       R12 R11 K10 ["description"]
       57 SETTABLEKS                       R11 R10 K21 ["completeDescription"]
       59 DUPTABLE                         R11 K28 [{"type", "description", "items"}]
       60 LOADK                            R12 K29 ["array"]
       61 SETTABLEKS                       R12 R11 K9 ["type"]
       63 LOADK                            R12 K30 ["A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long."]
       64 SETTABLEKS                       R12 R11 K10 ["description"]
       66 DUPTABLE                         R12 K11 [{"type", "description"}]
       67 LOADK                            R13 K12 ["string"]
       68 SETTABLEKS                       R13 R12 K9 ["type"]
       70 LOADK                            R13 K31 ["Todo text."]
       71 SETTABLEKS                       R13 R12 K10 ["description"]
       73 SETTABLEKS                       R12 R11 K27 ["items"]
       75 SETTABLEKS                       R11 R10 K22 ["todo"]
       77 DUPTABLE                         R11 K11 [{"type", "description"}]
       78 LOADK                            R12 K12 ["string"]
       79 SETTABLEKS                       R12 R11 K9 ["type"]
       81 LOADK                            R12 K32 ["A one sentence summary of the plan."]
       82 SETTABLEKS                       R12 R11 K10 ["description"]
       84 SETTABLEKS                       R11 R10 K23 ["summary"]
       86 DUPTABLE                         R11 K11 [{"type", "description"}]
       87 LOADK                            R12 K12 ["string"]
       88 SETTABLEKS                       R12 R11 K9 ["type"]
       90 LOADK                            R12 K33 ["A short 2 to 6 word title for the plan."]
       91 SETTABLEKS                       R12 R11 K10 ["description"]
       93 SETTABLEKS                       R11 R10 K24 ["title"]
       95 SETTABLEKS                       R10 R9 K16 ["properties"]
       97 NEWTABLE                         R10 0 4
       99 LOADK                            R11 K21 ["completeDescription"]
      100 LOADK                            R12 K22 ["todo"]
      101 LOADK                            R13 K23 ["summary"]
      102 LOADK                            R14 K24 ["title"]
      103 SETLIST                          R10 R11 4 [1]
      105 SETTABLEKS                       R10 R9 K17 ["required"]
      107 NAMECALL                         R6 R5 K14 ["addArgument"]
      109 CALL                             R6 3 1
      110 DUPTABLE                         R8 K38 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      111 LOADK                            R9 K39 ["Finalize Plan"]
      112 SETTABLEKS                       R9 R8 K24 ["title"]
      114 LOADB                            R9 0
      115 SETTABLEKS                       R9 R8 K34 ["readOnlyHint"]
      117 LOADB                            R9 0
      118 SETTABLEKS                       R9 R8 K35 ["destructiveHint"]
      120 LOADB                            R9 0
      121 SETTABLEKS                       R9 R8 K36 ["idempotentHint"]
      123 LOADB                            R9 0
      124 SETTABLEKS                       R9 R8 K37 ["openWorldHint"]
      126 NAMECALL                         R6 R6 K40 ["setAnnotations"]
      128 CALL                             R6 2 1
      129 MOVE                             R8 R4
      130 NAMECALL                         R6 R6 K41 ["setHandler"]
      132 CALL                             R6 2 1
      133 NAMECALL                         R6 R6 K42 ["build"]
      135 CALL                             R6 1 1
      136 DUPTABLE                         R7 K46 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      137 DUPCLOSURE                       R8 K47 [PROTO_2]
      138 CAPTURE                          UPVAL U5
      139 SETTABLEKS                       R8 R7 K43 ["transformInitialContent"]
      141 NEWCLOSURE                       R8 P3
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R3
      144 SETTABLEKS                       R8 R7 K44 ["getTransformPreExecuteFn"]
      146 NEWCLOSURE                       R8 P4
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R8 R7 K45 ["getTransformResultFn"]
      150 DUPTABLE                         R8 K51 [{"definition", "contentWidgets", "streamTransform"}]
      151 SETTABLEKS                       R6 R8 K48 ["definition"]
      153 GETUPVAL                         R10 6
      154 CALL                             R10 0 1
      155 JUMPIFNOT                        R10 ; [+2]
      156 LOADNIL                          R9
      157 JUMP                             ; [+5]
      158 NEWTABLE                         R9 0 1
      160 GETUPVAL                         R10 5
      161 SETLIST                          R9 R10 1 [1]
      163 SETTABLEKS                       R9 R8 K49 ["contentWidgets"]
      165 SETTABLEKS                       R7 R8 K50 ["streamTransform"]
      167 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Flags"]
       41 GETTABLEKS                       R6 R6 K16 ["FFlagAssistantMarkdownPlanMode"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R3 K18 ["ToolNames"]
       53 GETTABLEKS                       R8 R2 K13 ["Util"]
       55 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       57 GETTABLEKS                       R9 R2 K13 ["Util"]
       59 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       61 DUPCLOSURE                       R10 K21 [PROTO_7]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 RETURN                           R10 1

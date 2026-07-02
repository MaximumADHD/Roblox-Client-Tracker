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
       11 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+10]
       13 DUPTABLE                         R9 K6 [{["text"], ["state"] = "pending"}]
       14 SETTABLEKS                       R6 R9 K3 ["text"]
       16 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       18 MOVE                             R8 R1
       19 GETIMPORT                        R7 K9 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-17]
       24 RETURN                           R1 1

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
      162 JUMPIFNOT                        R3 ; [+90]
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
      229 DUPTABLE                         R6 K31 [{["status"] = "presented", ["planId"], ["name"]}]
      230 SETTABLEKS                       R5 R6 K30 ["planId"]
      232 SETTABLEKS                       R3 R6 K18 ["name"]
      234 GETUPVAL                         R7 4
      235 GETTABLEKS                       R7 R7 K32 ["toString"]
      237 MOVE                             R8 R6
      238 CALL                             R7 1 1
      239 GETUPVAL                         R8 5
      240 CALL                             R8 0 1
      241 MOVE                             R10 R7
      242 NAMECALL                         R8 R8 K33 ["addText"]
      244 CALL                             R8 2 1
      245 MOVE                             R10 R6
      246 NAMECALL                         R8 R8 K34 ["setStructuredContent"]
      248 CALL                             R8 2 1
      249 NAMECALL                         R8 R8 K35 ["build"]
      251 CALL                             R8 1 -1
      252 RETURN                           R8 -1
      253 DUPTABLE                         R3 K36 [{["status"] = "presented"}]
      254 GETUPVAL                         R4 4
      255 GETTABLEKS                       R4 R4 K32 ["toString"]
      257 MOVE                             R5 R3
      258 CALL                             R4 1 1
      259 GETUPVAL                         R5 5
      260 CALL                             R5 0 1
      261 MOVE                             R7 R4
      262 NAMECALL                         R5 R5 K33 ["addText"]
      264 CALL                             R5 2 1
      265 MOVE                             R7 R3
      266 NAMECALL                         R5 R5 K34 ["setStructuredContent"]
      268 CALL                             R5 2 1
      269 NAMECALL                         R5 R5 K35 ["build"]
      271 CALL                             R5 1 -1
      272 RETURN                           R5 -1

PROTO_2:
        0 DUPTABLE                         R0 K8 [{[1], ["title"] = "", ["summary"] = "", ["completeDescription"] = "", ["todo"], ["status"] = "preparing"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K9 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K5 ["todo"]
       10 RETURN                           R0 1

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
       29 JUMPIFNOT                        R1 ; [+5]
       30 LOADK                            R8 K8 ["name"]
       31 DUPTABLE                         R9 K13 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       32 NAMECALL                         R6 R5 K14 ["addArgument"]
       34 CALL                             R6 3 0
       35 LOADK                            R8 K15 ["plan"]
       36 DUPTABLE                         R9 K20 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       37 DUPTABLE                         R10 K25 [{"completeDescription", "todo", "summary", "title"}]
       38 DUPTABLE                         R11 K27 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       39 SETTABLEKS                       R11 R10 K21 ["completeDescription"]
       41 DUPTABLE                         R11 K31 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       42 DUPTABLE                         R12 K33 [{["type"] = "string", ["description"] = "Todo text."}]
       43 SETTABLEKS                       R12 R11 K30 ["items"]
       45 SETTABLEKS                       R11 R10 K22 ["todo"]
       47 DUPTABLE                         R11 K35 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       48 SETTABLEKS                       R11 R10 K23 ["summary"]
       50 DUPTABLE                         R11 K37 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       51 SETTABLEKS                       R11 R10 K24 ["title"]
       53 SETTABLEKS                       R10 R9 K18 ["properties"]
       55 NEWTABLE                         R10 0 4
       57 LOADK                            R11 K21 ["completeDescription"]
       58 LOADK                            R12 K22 ["todo"]
       59 LOADK                            R13 K23 ["summary"]
       60 LOADK                            R14 K24 ["title"]
       61 SETLIST                          R10 R11 4 [1]
       63 SETTABLEKS                       R10 R9 K19 ["required"]
       65 NAMECALL                         R6 R5 K14 ["addArgument"]
       67 CALL                             R6 3 1
       68 DUPTABLE                         R8 K44 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       69 NAMECALL                         R6 R6 K45 ["setAnnotations"]
       71 CALL                             R6 2 1
       72 MOVE                             R8 R4
       73 NAMECALL                         R6 R6 K46 ["setHandler"]
       75 CALL                             R6 2 1
       76 NAMECALL                         R6 R6 K47 ["build"]
       78 CALL                             R6 1 1
       79 DUPTABLE                         R7 K51 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       80 DUPCLOSURE                       R8 K52 [PROTO_2]
       81 CAPTURE                          UPVAL U5
       82 SETTABLEKS                       R8 R7 K48 ["transformInitialContent"]
       84 NEWCLOSURE                       R8 P3
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 SETTABLEKS                       R8 R7 K49 ["getTransformPreExecuteFn"]
       89 NEWCLOSURE                       R8 P4
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R8 R7 K50 ["getTransformResultFn"]
       93 DUPTABLE                         R8 K56 [{"definition", "contentWidgets", "streamTransform"}]
       94 SETTABLEKS                       R6 R8 K53 ["definition"]
       96 GETUPVAL                         R10 6
       97 CALL                             R10 0 1
       98 JUMPIFNOT                        R10 ; [+2]
       99 LOADNIL                          R9
      100 JUMP                             ; [+5]
      101 NEWTABLE                         R9 0 1
      103 GETUPVAL                         R10 5
      104 SETLIST                          R9 R10 1 [1]
      106 SETTABLEKS                       R9 R8 K54 ["contentWidgets"]
      108 SETTABLEKS                       R7 R8 K55 ["streamTransform"]
      110 RETURN                           R8 1

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

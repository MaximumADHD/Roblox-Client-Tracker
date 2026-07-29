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
      162 JUMPIFNOT                        R3 ; [+91]
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
      221 GETTABLEKS                       R6 R6 K26 ["FFlagAssistantMarkdownPlanMode"]
      223 JUMPIFNOT                        R6 ; [+6]
      224 JUMPIFNOT                        R1 ; [+5]
      225 GETTABLEKS                       R8 R1 K27 ["messageGuid"]
      227 NAMECALL                         R6 R4 K28 ["setPlanMessageId"]
      229 CALL                             R6 2 0
      230 DUPTABLE                         R6 K32 [{["status"] = "presented", ["planId"], ["name"]}]
      231 SETTABLEKS                       R5 R6 K31 ["planId"]
      233 SETTABLEKS                       R3 R6 K18 ["name"]
      235 GETUPVAL                         R7 4
      236 GETTABLEKS                       R7 R7 K33 ["toString"]
      238 MOVE                             R8 R6
      239 CALL                             R7 1 1
      240 GETUPVAL                         R8 5
      241 CALL                             R8 0 1
      242 MOVE                             R10 R7
      243 NAMECALL                         R8 R8 K34 ["addText"]
      245 CALL                             R8 2 1
      246 MOVE                             R10 R6
      247 NAMECALL                         R8 R8 K35 ["setStructuredContent"]
      249 CALL                             R8 2 1
      250 NAMECALL                         R8 R8 K36 ["build"]
      252 CALL                             R8 1 -1
      253 RETURN                           R8 -1
      254 DUPTABLE                         R3 K37 [{["status"] = "presented"}]
      255 GETUPVAL                         R4 4
      256 GETTABLEKS                       R4 R4 K33 ["toString"]
      258 MOVE                             R5 R3
      259 CALL                             R4 1 1
      260 GETUPVAL                         R5 5
      261 CALL                             R5 0 1
      262 MOVE                             R7 R4
      263 NAMECALL                         R5 R5 K34 ["addText"]
      265 CALL                             R5 2 1
      266 MOVE                             R7 R3
      267 NAMECALL                         R5 R5 K35 ["setStructuredContent"]
      269 CALL                             R5 2 1
      270 NAMECALL                         R5 R5 K36 ["build"]
      272 CALL                             R5 1 -1
      273 RETURN                           R5 -1

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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 GETTABLEKS                       R2 R0 K1 ["getPersistentPlanRuntime"]
        5 DUPCLOSURE                       R3 K2 [PROTO_0]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K3 ["define"]
       16 CALL                             R5 0 1
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R7 R7 K4 ["FinalizePlan"]
       20 NAMECALL                         R5 R5 K5 ["setName"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADK                            R7 K6 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\",\"planId\":\"...\",\"name\":\"...\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       25 JUMP                             ; [+1]
       26 LOADK                            R7 K7 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       27 NAMECALL                         R5 R5 K8 ["setDescription"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R1 ; [+5]
       31 LOADK                            R8 K9 ["name"]
       32 DUPTABLE                         R9 K14 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       33 NAMECALL                         R6 R5 K15 ["addArgument"]
       35 CALL                             R6 3 0
       36 LOADK                            R8 K16 ["plan"]
       37 DUPTABLE                         R9 K21 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       38 DUPTABLE                         R10 K26 [{"completeDescription", "todo", "summary", "title"}]
       39 DUPTABLE                         R11 K28 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       40 SETTABLEKS                       R11 R10 K22 ["completeDescription"]
       42 DUPTABLE                         R11 K32 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       43 DUPTABLE                         R12 K34 [{["type"] = "string", ["description"] = "Todo text."}]
       44 SETTABLEKS                       R12 R11 K31 ["items"]
       46 SETTABLEKS                       R11 R10 K23 ["todo"]
       48 DUPTABLE                         R11 K36 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       49 SETTABLEKS                       R11 R10 K24 ["summary"]
       51 DUPTABLE                         R11 K38 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       52 SETTABLEKS                       R11 R10 K25 ["title"]
       54 SETTABLEKS                       R10 R9 K19 ["properties"]
       56 NEWTABLE                         R10 0 4
       58 LOADK                            R11 K22 ["completeDescription"]
       59 LOADK                            R12 K23 ["todo"]
       60 LOADK                            R13 K24 ["summary"]
       61 LOADK                            R14 K25 ["title"]
       62 SETLIST                          R10 R11 4 [1]
       64 SETTABLEKS                       R10 R9 K20 ["required"]
       66 NAMECALL                         R6 R5 K15 ["addArgument"]
       68 CALL                             R6 3 1
       69 DUPTABLE                         R8 K45 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       70 NAMECALL                         R6 R6 K46 ["setAnnotations"]
       72 CALL                             R6 2 1
       73 MOVE                             R8 R4
       74 NAMECALL                         R6 R6 K47 ["setHandler"]
       76 CALL                             R6 2 1
       77 NAMECALL                         R6 R6 K48 ["build"]
       79 CALL                             R6 1 1
       80 DUPTABLE                         R7 K52 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       81 DUPCLOSURE                       R8 K53 [PROTO_2]
       82 CAPTURE                          UPVAL U5
       83 SETTABLEKS                       R8 R7 K49 ["transformInitialContent"]
       85 NEWCLOSURE                       R8 P3
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R3
       88 SETTABLEKS                       R8 R7 K50 ["getTransformPreExecuteFn"]
       90 NEWCLOSURE                       R8 P4
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R8 R7 K51 ["getTransformResultFn"]
       94 DUPTABLE                         R8 K57 [{"definition", "contentWidgets", "streamTransform"}]
       95 SETTABLEKS                       R6 R8 K54 ["definition"]
       97 GETUPVAL                         R10 0
       98 GETTABLEKS                       R10 R10 K58 ["FFlagAssistantSplitToolsAndWidgets"]
      100 JUMPIFNOT                        R10 ; [+2]
      101 LOADNIL                          R9
      102 JUMP                             ; [+5]
      103 NEWTABLE                         R9 0 1
      105 GETUPVAL                         R10 5
      106 SETLIST                          R9 R10 1 [1]
      108 SETTABLEKS                       R9 R8 K55 ["contentWidgets"]
      110 SETTABLEKS                       R7 R8 K56 ["streamTransform"]
      112 RETURN                           R8 1

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
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Tools"]
       32 GETTABLEKS                       R5 R5 K13 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K14 ["Util"]
       39 GETTABLEKS                       R6 R6 K15 ["ToolUtils"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K16 ["ToolNames"]
       44 GETTABLEKS                       R7 R3 K14 ["Util"]
       46 GETTABLEKS                       R7 R7 K17 ["ToolBuilder"]
       48 GETTABLEKS                       R8 R3 K14 ["Util"]
       50 GETTABLEKS                       R8 R8 K18 ["ToolResult"]
       52 DUPCLOSURE                       R9 K19 [PROTO_7]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R1
       59 RETURN                           R9 1

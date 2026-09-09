PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Field"]
        3 GETTABLEKS                       R3 R3 K1 ["Submitted"]
        5 NAMECALL                         R1 R0 K2 ["Wait"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKB                       R1 TRUE ; [+3]
       10 LOADK                            R2 K3 ["rejected"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["Field"]
       15 GETTABLEKS                       R4 R4 K4 ["Decision"]
       17 NAMECALL                         R2 R0 K5 ["Get"]
       19 CALL                             R2 2 1
       20 JUMPIFNOTEQKS                    R2 K6 ["built"] ; [+3]
       22 LOADK                            R3 K6 ["built"]
       23 RETURN                           R3 1
       24 LOADK                            R3 K3 ["rejected"]
       25 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Scope"]
        6 MOVE                             R4 R1
        7 CALL                             R2 2 1
        8 GETIMPORT                        R3 K3 [pcall]
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R2
       12 CALL                             R3 2 2
       13 NAMECALL                         R5 R2 K4 ["Destroy"]
       15 CALL                             R5 1 0
       16 JUMPIF                           R3 ; [+5]
       17 GETIMPORT                        R5 K6 [error]
       19 MOVE                             R6 R4
       20 LOADN                            R7 0
       21 CALL                             R5 2 0
       22 RETURN                           R4 1

PROTO_2:
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

PROTO_3:
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
      162 JUMPIFNOT                        R3 ; [+150]
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
      220 JUMPIFNOT                        R1 ; [+5]
      221 GETTABLEKS                       R8 R1 K26 ["messageGuid"]
      223 NAMECALL                         R6 R4 K27 ["setPlanMessageId"]
      225 CALL                             R6 2 0
      226 MOVE                             R8 R1
      227 JUMPIFNOT                        R8 ; [+2]
      228 GETTABLEKS                       R8 R1 K28 ["threadId"]
      230 NAMECALL                         R6 R4 K29 ["onPlanPresented"]
      232 CALL                             R6 2 0
      233 GETUPVAL                         R7 3
      234 FASTCALL2K                       ASSERT R7 K30 ; [+4]
      236 LOADK                            R8 K30 ["FinalizePlanTool requires the decision waiter for synchronous decision"]
      237 GETIMPORT                        R6 K7 [assert]
      239 CALL                             R6 2 0
      240 MOVE                             R6 R1
      241 JUMPIFNOT                        R6 ; [+2]
      242 GETTABLEKS                       R6 R1 K31 ["toolId"]
      244 LOADB                            R8 0
      245 FASTCALL1                        TYPEOF R6 ; [+3]
      246 MOVE                             R10 R6
      247 GETIMPORT                        R9 K33 [typeof]
      249 CALL                             R9 1 1
      250 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+5]
      252 JUMPIFNOTEQKS                    R6 K34 [""] ; [+2]
      254 LOADB                            R8 0 +1
      255 LOADB                            R8 1
      256 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      258 LOADK                            R9 K35 ["FinalizePlanTool requires toolUseId for synchronous decision"]
      259 GETIMPORT                        R7 K7 [assert]
      261 CALL                             R7 2 0
      262 GETUPVAL                         R7 3
      263 LOADNIL                          R8
      264 MOVE                             R9 R6
      265 CALL                             R7 2 1
      266 DUPTABLE                         R8 K40 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      267 SETTABLEKS                       R5 R8 K38 ["planId"]
      269 SETTABLEKS                       R3 R8 K18 ["name"]
      271 SETTABLEKS                       R7 R8 K39 ["decision"]
      273 DUPTABLE                         R9 K41 [{"title", "summary", "completeDescription", "todo"}]
      274 GETTABLEKS                       R10 R2 K8 ["title"]
      276 SETTABLEKS                       R10 R9 K8 ["title"]
      278 GETTABLEKS                       R10 R2 K11 ["summary"]
      280 SETTABLEKS                       R10 R9 K11 ["summary"]
      282 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      284 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      286 GETUPVAL                         R10 2
      287 GETTABLEKS                       R11 R2 K15 ["todo"]
      289 CALL                             R10 1 1
      290 SETTABLEKS                       R10 R9 K15 ["todo"]
      292 SETTABLEKS                       R9 R8 K0 ["plan"]
      294 GETUPVAL                         R9 4
      295 GETTABLEKS                       R9 R9 K42 ["toString"]
      297 MOVE                             R10 R8
      298 CALL                             R9 1 1
      299 GETUPVAL                         R10 5
      300 CALL                             R10 0 1
      301 MOVE                             R12 R9
      302 NAMECALL                         R10 R10 K43 ["addText"]
      304 CALL                             R10 2 1
      305 MOVE                             R12 R8
      306 NAMECALL                         R10 R10 K44 ["setStructuredContent"]
      308 CALL                             R10 2 1
      309 NAMECALL                         R10 R10 K45 ["build"]
      311 CALL                             R10 1 -1
      312 RETURN                           R10 -1
      313 DUPTABLE                         R3 K47 [{["status"] = "presented"}]
      314 GETUPVAL                         R4 4
      315 GETTABLEKS                       R4 R4 K42 ["toString"]
      317 MOVE                             R5 R3
      318 CALL                             R4 1 1
      319 GETUPVAL                         R5 5
      320 CALL                             R5 0 1
      321 MOVE                             R7 R4
      322 NAMECALL                         R5 R5 K43 ["addText"]
      324 CALL                             R5 2 1
      325 MOVE                             R7 R3
      326 NAMECALL                         R5 R5 K44 ["setStructuredContent"]
      328 CALL                             R5 2 1
      329 NAMECALL                         R5 R5 K45 ["build"]
      331 CALL                             R5 1 -1
      332 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 GETTABLEKS                       R2 R0 K1 ["getPersistentPlanRuntime"]
        5 GETTABLEKS                       R3 R0 K2 ["networking"]
        7 LOADK                            R6 K3 ["FinalizePlanTool_waitForDecisionAsync"]
        8 DUPCLOSURE                       R7 K4 [PROTO_1]
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 NAMECALL                         R4 R3 K5 ["OnHostInvokeAsync"]
       14 CALL                             R4 3 1
       15 DUPCLOSURE                       R5 K6 [PROTO_2]
       16 NEWCLOSURE                       R6 P2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R4
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 GETUPVAL                         R7 6
       24 GETTABLEKS                       R7 R7 K7 ["define"]
       26 CALL                             R7 0 1
       27 GETUPVAL                         R9 7
       28 GETTABLEKS                       R9 R9 K8 ["FinalizePlan"]
       30 NAMECALL                         R7 R7 K9 ["setName"]
       32 CALL                             R7 2 1
       33 JUMPIFNOT                        R1 ; [+2]
       34 LOADK                            R9 K10 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       35 JUMP                             ; [+1]
       36 LOADK                            R9 K11 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       37 NAMECALL                         R7 R7 K12 ["setDescription"]
       39 CALL                             R7 2 1
       40 JUMPIFNOT                        R1 ; [+5]
       41 LOADK                            R10 K13 ["name"]
       42 DUPTABLE                         R11 K18 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       43 NAMECALL                         R8 R7 K19 ["addArgument"]
       45 CALL                             R8 3 0
       46 LOADK                            R10 K20 ["plan"]
       47 DUPTABLE                         R11 K25 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       48 DUPTABLE                         R12 K30 [{"completeDescription", "todo", "summary", "title"}]
       49 DUPTABLE                         R13 K32 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       50 SETTABLEKS                       R13 R12 K26 ["completeDescription"]
       52 DUPTABLE                         R13 K36 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       53 DUPTABLE                         R14 K38 [{["type"] = "string", ["description"] = "Todo text."}]
       54 SETTABLEKS                       R14 R13 K35 ["items"]
       56 SETTABLEKS                       R13 R12 K27 ["todo"]
       58 DUPTABLE                         R13 K40 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       59 SETTABLEKS                       R13 R12 K28 ["summary"]
       61 DUPTABLE                         R13 K42 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       62 SETTABLEKS                       R13 R12 K29 ["title"]
       64 SETTABLEKS                       R12 R11 K23 ["properties"]
       66 NEWTABLE                         R12 0 4
       68 LOADK                            R13 K26 ["completeDescription"]
       69 LOADK                            R14 K27 ["todo"]
       70 LOADK                            R15 K28 ["summary"]
       71 LOADK                            R16 K29 ["title"]
       72 SETLIST                          R12 R13 4 [1]
       74 SETTABLEKS                       R12 R11 K24 ["required"]
       76 NAMECALL                         R8 R7 K19 ["addArgument"]
       78 CALL                             R8 3 1
       79 DUPTABLE                         R10 K49 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       80 NAMECALL                         R8 R8 K50 ["setAnnotations"]
       82 CALL                             R8 2 1
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R8 K51 ["setHandler"]
       86 CALL                             R8 2 1
       87 NAMECALL                         R8 R8 K52 ["build"]
       89 CALL                             R8 1 1
       90 DUPTABLE                         R9 K54 [{"definition"}]
       91 SETTABLEKS                       R8 R9 K53 ["definition"]
       93 RETURN                           R9 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["InstanceChannel"]
       18 GETTABLEKS                       R3 R3 K8 ["InstanceChannel"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K7 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["Plan"]
       34 GETTABLEKS                       R5 R5 K12 ["PlanDecisionChannel"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Tools"]
       41 GETTABLEKS                       R6 R6 K14 ["ToolTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K7 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["ToolUtils"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R5 K16 ["ToolNames"]
       53 GETTABLEKS                       R8 R3 K7 ["Util"]
       55 GETTABLEKS                       R8 R8 K17 ["ToolBuilder"]
       57 GETTABLEKS                       R9 R3 K7 ["Util"]
       59 GETTABLEKS                       R9 R9 K18 ["ToolResult"]
       61 DUPCLOSURE                       R10 K19 [PROTO_0]
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R11 K20 [PROTO_4]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 RETURN                           R11 1

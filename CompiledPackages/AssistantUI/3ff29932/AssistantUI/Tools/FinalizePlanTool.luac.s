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
       11 LOADK                            R5 K4 ["FinalizePlanTool requires a plan object, got \"%*\""]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R8 R2
       14 GETIMPORT                        R7 K2 [type]
       16 CALL                             R7 1 1
       17 NAMECALL                         R5 R5 K5 ["format"]
       19 CALL                             R5 2 1
       20 FASTCALL2                        ASSERT R4 R5 ; [+3]
       22 GETIMPORT                        R3 K7 [assert]
       24 CALL                             R3 2 0
       25 GETTABLEKS                       R6 R2 K8 ["title"]
       27 FASTCALL1                        TYPE R6 ; [+2]
       28 GETIMPORT                        R5 K2 [type]
       30 CALL                             R5 1 1
       31 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 LOADK                            R5 K10 ["FinalizePlanTool requires plan.title, got \"%*\""]
       36 GETTABLEKS                       R8 R2 K8 ["title"]
       38 FASTCALL1                        TYPE R8 ; [+2]
       39 GETIMPORT                        R7 K2 [type]
       41 CALL                             R7 1 1
       42 NAMECALL                         R5 R5 K5 ["format"]
       44 CALL                             R5 2 1
       45 FASTCALL2                        ASSERT R4 R5 ; [+3]
       47 GETIMPORT                        R3 K7 [assert]
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R6 R2 K11 ["summary"]
       52 FASTCALL1                        TYPE R6 ; [+2]
       53 GETIMPORT                        R5 K2 [type]
       55 CALL                             R5 1 1
       56 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       58 LOADB                            R4 0 +1
       59 LOADB                            R4 1
       60 LOADK                            R5 K12 ["FinalizePlanTool requires plan.summary, got \"%*\""]
       61 GETTABLEKS                       R8 R2 K11 ["summary"]
       63 FASTCALL1                        TYPE R8 ; [+2]
       64 GETIMPORT                        R7 K2 [type]
       66 CALL                             R7 1 1
       67 NAMECALL                         R5 R5 K5 ["format"]
       69 CALL                             R5 2 1
       70 FASTCALL2                        ASSERT R4 R5 ; [+3]
       72 GETIMPORT                        R3 K7 [assert]
       74 CALL                             R3 2 0
       75 GETTABLEKS                       R6 R2 K13 ["completeDescription"]
       77 FASTCALL1                        TYPE R6 ; [+2]
       78 GETIMPORT                        R5 K2 [type]
       80 CALL                             R5 1 1
       81 JUMPIFEQKS                       R5 K9 ["string"] ; [+2]
       83 LOADB                            R4 0 +1
       84 LOADB                            R4 1
       85 LOADK                            R5 K14 ["FinalizePlanTool requires plan.completeDescription, got \"%*\""]
       86 GETTABLEKS                       R8 R2 K13 ["completeDescription"]
       88 FASTCALL1                        TYPE R8 ; [+2]
       89 GETIMPORT                        R7 K2 [type]
       91 CALL                             R7 1 1
       92 NAMECALL                         R5 R5 K5 ["format"]
       94 CALL                             R5 2 1
       95 FASTCALL2                        ASSERT R4 R5 ; [+3]
       97 GETIMPORT                        R3 K7 [assert]
       99 CALL                             R3 2 0
      100 GETTABLEKS                       R6 R2 K15 ["todo"]
      102 FASTCALL1                        TYPE R6 ; [+2]
      103 GETIMPORT                        R5 K2 [type]
      105 CALL                             R5 1 1
      106 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
      108 LOADB                            R4 0 +1
      109 LOADB                            R4 1
      110 LOADK                            R5 K16 ["FinalizePlanTool requires plan.todo, got \"%*\""]
      111 GETTABLEKS                       R8 R2 K15 ["todo"]
      113 FASTCALL1                        TYPE R8 ; [+2]
      114 GETIMPORT                        R7 K2 [type]
      116 CALL                             R7 1 1
      117 NAMECALL                         R5 R5 K5 ["format"]
      119 CALL                             R5 2 1
      120 FASTCALL2                        ASSERT R4 R5 ; [+3]
      122 GETIMPORT                        R3 K7 [assert]
      124 CALL                             R3 2 0
      125 GETTABLEKS                       R3 R2 K15 ["todo"]
      127 LOADNIL                          R4
      128 LOADNIL                          R5
      129 FORGPREP                         R3
      130 FASTCALL1                        TYPE R7 ; [+3]
      131 MOVE                             R11 R7
      132 GETIMPORT                        R10 K2 [type]
      134 CALL                             R10 1 1
      135 JUMPIFEQKS                       R10 K9 ["string"] ; [+2]
      137 LOADB                            R9 0 +1
      138 LOADB                            R9 1
      139 LOADK                            R10 K17 ["FinalizePlanTool requires todo items to be strings, got \"%*\""]
      140 FASTCALL1                        TYPE R7 ; [+3]
      141 MOVE                             R13 R7
      142 GETIMPORT                        R12 K2 [type]
      144 CALL                             R12 1 1
      145 NAMECALL                         R10 R10 K5 ["format"]
      147 CALL                             R10 2 1
      148 FASTCALL2                        ASSERT R9 R10 ; [+3]
      150 GETIMPORT                        R8 K7 [assert]
      152 CALL                             R8 2 0
      153 FORGLOOP                         R3 2 ; [-24]
      155 GETUPVAL                         R3 0
      156 JUMPIFNOT                        R3 ; [+158]
      157 GETTABLEKS                       R3 R0 K18 ["name"]
      159 FASTCALL1                        TYPE R3 ; [+3]
      160 MOVE                             R7 R3
      161 GETIMPORT                        R6 K2 [type]
      163 CALL                             R6 1 1
      164 JUMPIFEQKS                       R6 K9 ["string"] ; [+2]
      166 LOADB                            R5 0 +1
      167 LOADB                            R5 1
      168 LOADK                            R6 K19 ["FinalizePlanTool requires name, got \"%*\""]
      169 FASTCALL1                        TYPE R3 ; [+3]
      170 MOVE                             R9 R3
      171 GETIMPORT                        R8 K2 [type]
      173 CALL                             R8 1 1
      174 NAMECALL                         R6 R6 K5 ["format"]
      176 CALL                             R6 2 1
      177 FASTCALL2                        ASSERT R5 R6 ; [+3]
      179 GETIMPORT                        R4 K7 [assert]
      181 CALL                             R4 2 0
      182 GETUPVAL                         R4 1
      183 MOVE                             R5 R1
      184 CALL                             R4 1 1
      185 MOVE                             R7 R3
      186 DUPTABLE                         R8 K21 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      187 GETTABLEKS                       R9 R2 K8 ["title"]
      189 SETTABLEKS                       R9 R8 K8 ["title"]
      191 GETTABLEKS                       R9 R2 K11 ["summary"]
      193 SETTABLEKS                       R9 R8 K11 ["summary"]
      195 GETTABLEKS                       R9 R2 K13 ["completeDescription"]
      197 SETTABLEKS                       R9 R8 K13 ["completeDescription"]
      199 GETUPVAL                         R9 2
      200 GETTABLEKS                       R10 R2 K15 ["todo"]
      202 CALL                             R9 1 1
      203 SETTABLEKS                       R9 R8 K15 ["todo"]
      205 GETIMPORT                        R9 K24 [os.time]
      207 CALL                             R9 0 1
      208 SETTABLEKS                       R9 R8 K20 ["createdAt"]
      210 NAMECALL                         R5 R4 K25 ["createPlan"]
      212 CALL                             R5 3 1
      213 JUMPIFNOT                        R1 ; [+5]
      214 GETTABLEKS                       R8 R1 K26 ["messageGuid"]
      216 NAMECALL                         R6 R4 K27 ["setPlanMessageId"]
      218 CALL                             R6 2 0
      219 MOVE                             R8 R1
      220 JUMPIFNOT                        R8 ; [+2]
      221 GETTABLEKS                       R8 R1 K28 ["threadId"]
      223 NAMECALL                         R6 R4 K29 ["onPlanPresented"]
      225 CALL                             R6 2 0
      226 GETUPVAL                         R7 3
      227 FASTCALL2K                       ASSERT R7 K30 ; [+4]
      229 LOADK                            R8 K30 ["FinalizePlanTool requires the decision waiter for synchronous decision"]
      230 GETIMPORT                        R6 K7 [assert]
      232 CALL                             R6 2 0
      233 MOVE                             R6 R1
      234 JUMPIFNOT                        R6 ; [+2]
      235 GETTABLEKS                       R6 R1 K31 ["toolId"]
      237 LOADB                            R8 0
      238 FASTCALL1                        TYPEOF R6 ; [+3]
      239 MOVE                             R10 R6
      240 GETIMPORT                        R9 K33 [typeof]
      242 CALL                             R9 1 1
      243 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+5]
      245 JUMPIFNOTEQKS                    R6 K34 [""] ; [+2]
      247 LOADB                            R8 0 +1
      248 LOADB                            R8 1
      249 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      251 LOADK                            R9 K35 ["FinalizePlanTool requires toolUseId for synchronous decision"]
      252 GETIMPORT                        R7 K7 [assert]
      254 CALL                             R7 2 0
      255 GETUPVAL                         R7 3
      256 LOADNIL                          R8
      257 MOVE                             R9 R6
      258 CALL                             R7 2 1
      259 DUPTABLE                         R8 K40 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      260 SETTABLEKS                       R5 R8 K38 ["planId"]
      262 SETTABLEKS                       R3 R8 K18 ["name"]
      264 SETTABLEKS                       R7 R8 K39 ["decision"]
      266 DUPTABLE                         R9 K41 [{"title", "summary", "completeDescription", "todo"}]
      267 GETTABLEKS                       R10 R2 K8 ["title"]
      269 SETTABLEKS                       R10 R9 K8 ["title"]
      271 GETTABLEKS                       R10 R2 K11 ["summary"]
      273 SETTABLEKS                       R10 R9 K11 ["summary"]
      275 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      277 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      279 GETUPVAL                         R10 2
      280 GETTABLEKS                       R11 R2 K15 ["todo"]
      282 CALL                             R10 1 1
      283 SETTABLEKS                       R10 R9 K15 ["todo"]
      285 SETTABLEKS                       R9 R8 K0 ["plan"]
      287 JUMPIFNOTEQKS                    R7 K42 ["built"] ; [+8]
      289 GETUPVAL                         R9 4
      290 GETTABLEKS                       R9 R9 K43 ["FFlagAssistantEndPlanTurnOnBuild"]
      292 JUMPIFNOT                        R9 ; [+3]
      293 LOADB                            R9 1
      294 SETTABLEKS                       R9 R8 K44 ["endTurn"]
      296 GETUPVAL                         R9 5
      297 GETTABLEKS                       R9 R9 K45 ["toString"]
      299 MOVE                             R10 R8
      300 CALL                             R9 1 1
      301 GETUPVAL                         R10 6
      302 CALL                             R10 0 1
      303 MOVE                             R12 R9
      304 NAMECALL                         R10 R10 K46 ["addText"]
      306 CALL                             R10 2 1
      307 MOVE                             R12 R8
      308 NAMECALL                         R10 R10 K47 ["setStructuredContent"]
      310 CALL                             R10 2 1
      311 NAMECALL                         R10 R10 K48 ["build"]
      313 CALL                             R10 1 -1
      314 RETURN                           R10 -1
      315 DUPTABLE                         R3 K50 [{["status"] = "presented"}]
      316 GETUPVAL                         R4 5
      317 GETTABLEKS                       R4 R4 K45 ["toString"]
      319 MOVE                             R5 R3
      320 CALL                             R4 1 1
      321 GETUPVAL                         R5 6
      322 CALL                             R5 0 1
      323 MOVE                             R7 R4
      324 NAMECALL                         R5 R5 K46 ["addText"]
      326 CALL                             R5 2 1
      327 MOVE                             R7 R3
      328 NAMECALL                         R5 R5 K47 ["setStructuredContent"]
      330 CALL                             R5 2 1
      331 NAMECALL                         R5 R5 K48 ["build"]
      333 CALL                             R5 1 -1
      334 RETURN                           R5 -1

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
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          UPVAL U5
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K7 ["define"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R9 7
       29 GETTABLEKS                       R9 R9 K8 ["FinalizePlan"]
       31 NAMECALL                         R7 R7 K9 ["setName"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R1 ; [+2]
       35 LOADK                            R9 K10 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       36 JUMP                             ; [+1]
       37 LOADK                            R9 K11 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       38 NAMECALL                         R7 R7 K12 ["setDescription"]
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R1 ; [+5]
       42 LOADK                            R10 K13 ["name"]
       43 DUPTABLE                         R11 K18 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       44 NAMECALL                         R8 R7 K19 ["addArgument"]
       46 CALL                             R8 3 0
       47 LOADK                            R10 K20 ["plan"]
       48 DUPTABLE                         R11 K25 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       49 DUPTABLE                         R12 K30 [{"completeDescription", "todo", "summary", "title"}]
       50 DUPTABLE                         R13 K32 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       51 SETTABLEKS                       R13 R12 K26 ["completeDescription"]
       53 DUPTABLE                         R13 K36 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       54 DUPTABLE                         R14 K38 [{["type"] = "string", ["description"] = "Todo text."}]
       55 SETTABLEKS                       R14 R13 K35 ["items"]
       57 SETTABLEKS                       R13 R12 K27 ["todo"]
       59 DUPTABLE                         R13 K40 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       60 SETTABLEKS                       R13 R12 K28 ["summary"]
       62 DUPTABLE                         R13 K42 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       63 SETTABLEKS                       R13 R12 K29 ["title"]
       65 SETTABLEKS                       R12 R11 K23 ["properties"]
       67 NEWTABLE                         R12 0 4
       69 LOADK                            R13 K26 ["completeDescription"]
       70 LOADK                            R14 K27 ["todo"]
       71 LOADK                            R15 K28 ["summary"]
       72 LOADK                            R16 K29 ["title"]
       73 SETLIST                          R12 R13 4 [1]
       75 SETTABLEKS                       R12 R11 K24 ["required"]
       77 NAMECALL                         R8 R7 K19 ["addArgument"]
       79 CALL                             R8 3 1
       80 DUPTABLE                         R10 K49 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       81 NAMECALL                         R8 R8 K50 ["setAnnotations"]
       83 CALL                             R8 2 1
       84 MOVE                             R10 R6
       85 NAMECALL                         R8 R8 K51 ["setHandler"]
       87 CALL                             R8 2 1
       88 NAMECALL                         R8 R8 K52 ["build"]
       90 CALL                             R8 1 1
       91 DUPTABLE                         R9 K54 [{"definition"}]
       92 SETTABLEKS                       R8 R9 K53 ["definition"]
       94 RETURN                           R9 1

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

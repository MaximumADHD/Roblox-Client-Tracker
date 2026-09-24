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
      155 GETTABLEKS                       R3 R0 K18 ["name"]
      157 FASTCALL1                        TYPE R3 ; [+3]
      158 MOVE                             R7 R3
      159 GETIMPORT                        R6 K2 [type]
      161 CALL                             R6 1 1
      162 JUMPIFEQKS                       R6 K9 ["string"] ; [+2]
      164 LOADB                            R5 0 +1
      165 LOADB                            R5 1
      166 LOADK                            R6 K19 ["FinalizePlanTool requires name, got \"%*\""]
      167 FASTCALL1                        TYPE R3 ; [+3]
      168 MOVE                             R9 R3
      169 GETIMPORT                        R8 K2 [type]
      171 CALL                             R8 1 1
      172 NAMECALL                         R6 R6 K5 ["format"]
      174 CALL                             R6 2 1
      175 FASTCALL2                        ASSERT R5 R6 ; [+3]
      177 GETIMPORT                        R4 K7 [assert]
      179 CALL                             R4 2 0
      180 GETUPVAL                         R4 0
      181 MOVE                             R5 R1
      182 CALL                             R4 1 1
      183 MOVE                             R7 R3
      184 DUPTABLE                         R8 K21 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      185 GETTABLEKS                       R9 R2 K8 ["title"]
      187 SETTABLEKS                       R9 R8 K8 ["title"]
      189 GETTABLEKS                       R9 R2 K11 ["summary"]
      191 SETTABLEKS                       R9 R8 K11 ["summary"]
      193 GETTABLEKS                       R9 R2 K13 ["completeDescription"]
      195 SETTABLEKS                       R9 R8 K13 ["completeDescription"]
      197 GETUPVAL                         R9 1
      198 GETTABLEKS                       R10 R2 K15 ["todo"]
      200 CALL                             R9 1 1
      201 SETTABLEKS                       R9 R8 K15 ["todo"]
      203 GETIMPORT                        R9 K24 [os.time]
      205 CALL                             R9 0 1
      206 SETTABLEKS                       R9 R8 K20 ["createdAt"]
      208 NAMECALL                         R5 R4 K25 ["createPlan"]
      210 CALL                             R5 3 1
      211 JUMPIFNOT                        R1 ; [+5]
      212 GETTABLEKS                       R8 R1 K26 ["messageGuid"]
      214 NAMECALL                         R6 R4 K27 ["setPlanMessageId"]
      216 CALL                             R6 2 0
      217 MOVE                             R8 R1
      218 JUMPIFNOT                        R8 ; [+2]
      219 GETTABLEKS                       R8 R1 K28 ["threadId"]
      221 NAMECALL                         R6 R4 K29 ["onPlanPresented"]
      223 CALL                             R6 2 0
      224 GETUPVAL                         R7 2
      225 FASTCALL2K                       ASSERT R7 K30 ; [+4]
      227 LOADK                            R8 K30 ["FinalizePlanTool requires the decision waiter for synchronous decision"]
      228 GETIMPORT                        R6 K7 [assert]
      230 CALL                             R6 2 0
      231 MOVE                             R6 R1
      232 JUMPIFNOT                        R6 ; [+2]
      233 GETTABLEKS                       R6 R1 K31 ["toolId"]
      235 LOADB                            R8 0
      236 FASTCALL1                        TYPEOF R6 ; [+3]
      237 MOVE                             R10 R6
      238 GETIMPORT                        R9 K33 [typeof]
      240 CALL                             R9 1 1
      241 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+5]
      243 JUMPIFNOTEQKS                    R6 K34 [""] ; [+2]
      245 LOADB                            R8 0 +1
      246 LOADB                            R8 1
      247 FASTCALL2K                       ASSERT R8 K35 ; [+4]
      249 LOADK                            R9 K35 ["FinalizePlanTool requires toolUseId for synchronous decision"]
      250 GETIMPORT                        R7 K7 [assert]
      252 CALL                             R7 2 0
      253 GETUPVAL                         R7 2
      254 LOADNIL                          R8
      255 MOVE                             R9 R6
      256 CALL                             R7 2 1
      257 DUPTABLE                         R8 K40 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      258 SETTABLEKS                       R5 R8 K38 ["planId"]
      260 SETTABLEKS                       R3 R8 K18 ["name"]
      262 SETTABLEKS                       R7 R8 K39 ["decision"]
      264 DUPTABLE                         R9 K41 [{"title", "summary", "completeDescription", "todo"}]
      265 GETTABLEKS                       R10 R2 K8 ["title"]
      267 SETTABLEKS                       R10 R9 K8 ["title"]
      269 GETTABLEKS                       R10 R2 K11 ["summary"]
      271 SETTABLEKS                       R10 R9 K11 ["summary"]
      273 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      275 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      277 GETUPVAL                         R10 1
      278 GETTABLEKS                       R11 R2 K15 ["todo"]
      280 CALL                             R10 1 1
      281 SETTABLEKS                       R10 R9 K15 ["todo"]
      283 SETTABLEKS                       R9 R8 K0 ["plan"]
      285 JUMPIFNOTEQKS                    R7 K42 ["built"] ; [+8]
      287 GETUPVAL                         R9 3
      288 GETTABLEKS                       R9 R9 K43 ["FFlagAssistantEndPlanTurnOnBuild"]
      290 JUMPIFNOT                        R9 ; [+3]
      291 LOADB                            R9 1
      292 SETTABLEKS                       R9 R8 K44 ["endTurn"]
      294 GETUPVAL                         R9 4
      295 GETTABLEKS                       R9 R9 K45 ["toString"]
      297 MOVE                             R10 R8
      298 CALL                             R9 1 1
      299 GETUPVAL                         R10 5
      300 CALL                             R10 0 1
      301 MOVE                             R12 R9
      302 NAMECALL                         R10 R10 K46 ["addText"]
      304 CALL                             R10 2 1
      305 MOVE                             R12 R8
      306 NAMECALL                         R10 R10 K47 ["setStructuredContent"]
      308 CALL                             R10 2 1
      309 NAMECALL                         R10 R10 K48 ["build"]
      311 CALL                             R10 1 -1
      312 RETURN                           R10 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["getPersistentPlanRuntime"]
        2 GETTABLEKS                       R2 R0 K1 ["networking"]
        4 LOADK                            R5 K2 ["FinalizePlanTool_waitForDecisionAsync"]
        5 DUPCLOSURE                       R6 K3 [PROTO_1]
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R3 R2 K4 ["OnHostInvokeAsync"]
       11 CALL                             R3 3 1
       12 DUPCLOSURE                       R4 K5 [PROTO_2]
       13 NEWCLOSURE                       R5 P2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 GETUPVAL                         R6 6
       21 GETTABLEKS                       R6 R6 K6 ["define"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R8 7
       25 GETTABLEKS                       R8 R8 K7 ["FinalizePlan"]
       27 NAMECALL                         R6 R6 K8 ["setName"]
       29 CALL                             R6 2 1
       30 LOADK                            R8 K9 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       31 NAMECALL                         R6 R6 K10 ["setDescription"]
       33 CALL                             R6 2 1
       34 LOADK                            R9 K11 ["name"]
       35 DUPTABLE                         R10 K16 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       36 NAMECALL                         R7 R6 K17 ["addArgument"]
       38 CALL                             R7 3 0
       39 LOADK                            R9 K18 ["plan"]
       40 DUPTABLE                         R10 K23 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       41 DUPTABLE                         R11 K28 [{"completeDescription", "todo", "summary", "title"}]
       42 DUPTABLE                         R12 K30 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       43 SETTABLEKS                       R12 R11 K24 ["completeDescription"]
       45 DUPTABLE                         R12 K34 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       46 DUPTABLE                         R13 K36 [{["type"] = "string", ["description"] = "Todo text."}]
       47 SETTABLEKS                       R13 R12 K33 ["items"]
       49 SETTABLEKS                       R12 R11 K25 ["todo"]
       51 DUPTABLE                         R12 K38 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       52 SETTABLEKS                       R12 R11 K26 ["summary"]
       54 DUPTABLE                         R12 K40 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       55 SETTABLEKS                       R12 R11 K27 ["title"]
       57 SETTABLEKS                       R11 R10 K21 ["properties"]
       59 NEWTABLE                         R11 0 4
       61 LOADK                            R12 K24 ["completeDescription"]
       62 LOADK                            R13 K25 ["todo"]
       63 LOADK                            R14 K26 ["summary"]
       64 LOADK                            R15 K27 ["title"]
       65 SETLIST                          R11 R12 4 [1]
       67 SETTABLEKS                       R11 R10 K22 ["required"]
       69 NAMECALL                         R7 R6 K17 ["addArgument"]
       71 CALL                             R7 3 1
       72 DUPTABLE                         R9 K47 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       73 NAMECALL                         R7 R7 K48 ["setAnnotations"]
       75 CALL                             R7 2 1
       76 MOVE                             R9 R5
       77 NAMECALL                         R7 R7 K49 ["setHandler"]
       79 CALL                             R7 2 1
       80 NAMECALL                         R7 R7 K50 ["build"]
       82 CALL                             R7 1 1
       83 DUPTABLE                         R8 K52 [{"definition"}]
       84 SETTABLEKS                       R7 R8 K51 ["definition"]
       86 RETURN                           R8 1

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
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 RETURN                           R11 1

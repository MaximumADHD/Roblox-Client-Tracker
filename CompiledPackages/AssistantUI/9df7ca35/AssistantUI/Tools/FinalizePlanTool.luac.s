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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Scope"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 FASTPCALL                        pcall 2 ; [+2]
       11 GETIMPORT                        R2 K3 [pcall]
       13 CALL                             R2 2 2
       14 NAMECALL                         R4 R1 K4 ["Destroy"]
       16 CALL                             R4 1 0
       17 JUMPIF                           R2 ; [+5]
       18 GETIMPORT                        R4 K6 [error]
       20 MOVE                             R5 R3
       21 LOADN                            R6 0
       22 CALL                             R4 2 0
       23 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Scope"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 GETUPVAL                         R5 2
        9 MOVE                             R6 R3
       10 FASTPCALL                        pcall 2 ; [+2]
       11 GETIMPORT                        R4 K3 [pcall]
       13 CALL                             R4 2 2
       14 NAMECALL                         R6 R3 K4 ["Destroy"]
       16 CALL                             R6 1 0
       17 JUMPIF                           R4 ; [+5]
       18 GETIMPORT                        R6 K6 [error]
       20 MOVE                             R7 R5
       21 LOADN                            R8 0
       22 CALL                             R6 2 0
       23 MOVE                             R2 R5
       24 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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
      224 MOVE                             R6 R1
      225 JUMPIFNOT                        R6 ; [+2]
      226 GETTABLEKS                       R6 R1 K30 ["toolId"]
      228 LOADB                            R8 0
      229 FASTCALL1                        TYPEOF R6 ; [+3]
      230 MOVE                             R10 R6
      231 GETIMPORT                        R9 K32 [typeof]
      233 CALL                             R9 1 1
      234 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+5]
      236 JUMPIFNOTEQKS                    R6 K33 [""] ; [+2]
      238 LOADB                            R8 0 +1
      239 LOADB                            R8 1
      240 FASTCALL2K                       ASSERT R8 K34 ; [+4]
      242 LOADK                            R9 K34 ["FinalizePlanTool requires toolUseId for synchronous decision"]
      243 GETIMPORT                        R7 K7 [assert]
      245 CALL                             R7 2 0
      246 GETUPVAL                         R7 2
      247 GETUPVAL                         R9 3
      248 GETTABLEKS                       R9 R9 K35 ["FOCUSED"]
      250 MOVE                             R10 R6
      251 NAMECALL                         R7 R7 K36 ["InvokeAsync"]
      253 CALL                             R7 3 1
      254 DUPTABLE                         R8 K41 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      255 SETTABLEKS                       R5 R8 K39 ["planId"]
      257 SETTABLEKS                       R3 R8 K18 ["name"]
      259 SETTABLEKS                       R7 R8 K40 ["decision"]
      261 DUPTABLE                         R9 K42 [{"title", "summary", "completeDescription", "todo"}]
      262 GETTABLEKS                       R10 R2 K8 ["title"]
      264 SETTABLEKS                       R10 R9 K8 ["title"]
      266 GETTABLEKS                       R10 R2 K11 ["summary"]
      268 SETTABLEKS                       R10 R9 K11 ["summary"]
      270 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      272 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      274 GETUPVAL                         R10 1
      275 GETTABLEKS                       R11 R2 K15 ["todo"]
      277 CALL                             R10 1 1
      278 SETTABLEKS                       R10 R9 K15 ["todo"]
      280 SETTABLEKS                       R9 R8 K0 ["plan"]
      282 JUMPIFNOTEQKS                    R7 K43 ["built"] ; [+4]
      284 LOADB                            R9 1
      285 SETTABLEKS                       R9 R8 K44 ["endTurn"]
      287 GETUPVAL                         R9 4
      288 GETTABLEKS                       R9 R9 K45 ["toString"]
      290 MOVE                             R10 R8
      291 CALL                             R9 1 1
      292 GETUPVAL                         R10 5
      293 CALL                             R10 0 1
      294 MOVE                             R12 R9
      295 NAMECALL                         R10 R10 K46 ["addText"]
      297 CALL                             R10 2 1
      298 MOVE                             R12 R8
      299 NAMECALL                         R10 R10 K47 ["setStructuredContent"]
      301 CALL                             R10 2 1
      302 NAMECALL                         R10 R10 K48 ["build"]
      304 CALL                             R10 1 -1
      305 RETURN                           R10 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETTABLEKS                       R3 R0 K2 ["getPersistentPlanRuntime"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["invoke"]
        9 MOVE                             R5 R1
       10 LOADK                            R6 K4 ["FinalizePlanTool.waitForDecisionAsync"]
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["new"]
       15 CALL                             R5 0 1
       16 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K7 ["Identity"]
       22 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       24 JUMPIFEQ                         R6 R7 ; [+11]
       26 DUPCLOSURE                       R10 K9 [PROTO_2]
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U5
       30 NAMECALL                         R8 R4 K10 ["Connect"]
       32 CALL                             R8 2 -1
       33 NAMECALL                         R6 R5 K11 ["Add"]
       35 CALL                             R6 -1 0
       36 NEWCLOSURE                       R8 P1
       37 CAPTURE                          VAL R5
       38 NAMECALL                         R6 R2 K12 ["Once"]
       40 CALL                             R6 2 0
       41 DUPCLOSURE                       R6 K13 [PROTO_4]
       42 NEWCLOSURE                       R7 P3
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          UPVAL U7
       49 GETUPVAL                         R8 8
       50 GETTABLEKS                       R8 R8 K14 ["define"]
       52 CALL                             R8 0 1
       53 GETUPVAL                         R10 9
       54 GETTABLEKS                       R10 R10 K15 ["FinalizePlan"]
       56 NAMECALL                         R8 R8 K16 ["setName"]
       58 CALL                             R8 2 1
       59 LOADK                            R10 K17 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       60 NAMECALL                         R8 R8 K18 ["setDescription"]
       62 CALL                             R8 2 1
       63 LOADK                            R11 K19 ["name"]
       64 DUPTABLE                         R12 K24 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       65 NAMECALL                         R9 R8 K25 ["addArgument"]
       67 CALL                             R9 3 0
       68 LOADK                            R11 K26 ["plan"]
       69 DUPTABLE                         R12 K31 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       70 DUPTABLE                         R13 K36 [{"completeDescription", "todo", "summary", "title"}]
       71 DUPTABLE                         R14 K38 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       72 SETTABLEKS                       R14 R13 K32 ["completeDescription"]
       74 DUPTABLE                         R14 K42 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       75 DUPTABLE                         R15 K44 [{["type"] = "string", ["description"] = "Todo text."}]
       76 SETTABLEKS                       R15 R14 K41 ["items"]
       78 SETTABLEKS                       R14 R13 K33 ["todo"]
       80 DUPTABLE                         R14 K46 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       81 SETTABLEKS                       R14 R13 K34 ["summary"]
       83 DUPTABLE                         R14 K48 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       84 SETTABLEKS                       R14 R13 K35 ["title"]
       86 SETTABLEKS                       R13 R12 K29 ["properties"]
       88 NEWTABLE                         R13 0 4
       90 LOADK                            R14 K32 ["completeDescription"]
       91 LOADK                            R15 K33 ["todo"]
       92 LOADK                            R16 K34 ["summary"]
       93 LOADK                            R17 K35 ["title"]
       94 SETLIST                          R13 R14 4 [1]
       96 SETTABLEKS                       R13 R12 K30 ["required"]
       98 NAMECALL                         R9 R8 K25 ["addArgument"]
      100 CALL                             R9 3 1
      101 LOADK                            R11 K49 ["Finalize Plan"]
      102 NAMECALL                         R9 R9 K50 ["setTitle"]
      104 CALL                             R9 2 1
      105 DUPTABLE                         R11 K56 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      106 NAMECALL                         R9 R9 K57 ["setAnnotations"]
      108 CALL                             R9 2 1
      109 MOVE                             R11 R7
      110 NAMECALL                         R9 R9 K58 ["setHandler"]
      112 CALL                             R9 2 1
      113 NAMECALL                         R9 R9 K59 ["build"]
      115 CALL                             R9 1 1
      116 DUPTABLE                         R10 K61 [{"definition"}]
      117 SETTABLEKS                       R9 R10 K60 ["definition"]
      119 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Util"]
       28 GETTABLEKS                       R6 R6 K11 ["InstanceChannel"]
       30 GETTABLEKS                       R6 R6 K11 ["InstanceChannel"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K10 ["Util"]
       37 GETTABLEKS                       R7 R7 K12 ["Plan"]
       39 GETTABLEKS                       R7 R7 K13 ["PlanDecisionChannel"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Tools"]
       46 GETTABLEKS                       R8 R8 K15 ["ToolTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K10 ["Util"]
       53 GETTABLEKS                       R9 R9 K16 ["ToolUtils"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R3 K17 ["Remote"]
       58 GETTABLEKS                       R10 R7 K18 ["ToolNames"]
       60 GETTABLEKS                       R11 R4 K10 ["Util"]
       62 GETTABLEKS                       R11 R11 K19 ["ToolBuilder"]
       64 GETTABLEKS                       R12 R4 K10 ["Util"]
       66 GETTABLEKS                       R12 R12 K20 ["ToolResult"]
       68 DUPCLOSURE                       R13 K21 [PROTO_0]
       69 CAPTURE                          VAL R6
       70 DUPCLOSURE                       R14 K22 [PROTO_1]
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R13
       74 DUPCLOSURE                       R15 K23 [PROTO_6]
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R10
       85 RETURN                           R15 1

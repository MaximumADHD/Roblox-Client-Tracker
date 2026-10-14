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
        8 GETIMPORT                        R2 K3 [pcall]
       10 GETUPVAL                         R3 2
       11 MOVE                             R4 R1
       12 CALL                             R2 2 2
       13 NAMECALL                         R4 R1 K4 ["Destroy"]
       15 CALL                             R4 1 0
       16 JUMPIF                           R2 ; [+5]
       17 GETIMPORT                        R4 K6 [error]
       19 MOVE                             R5 R3
       20 LOADN                            R6 0
       21 CALL                             R4 2 0
       22 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Scope"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K3 [pcall]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R3
       12 CALL                             R4 2 2
       13 NAMECALL                         R6 R3 K4 ["Destroy"]
       15 CALL                             R6 1 0
       16 JUMPIF                           R4 ; [+5]
       17 GETIMPORT                        R6 K6 [error]
       19 MOVE                             R7 R5
       20 LOADN                            R8 0
       21 CALL                             R6 2 0
       22 MOVE                             R2 R5
       23 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Scope"]
        6 MOVE                             R5 R1
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K3 [pcall]
       10 GETUPVAL                         R5 2
       11 MOVE                             R6 R3
       12 CALL                             R4 2 2
       13 NAMECALL                         R6 R3 K4 ["Destroy"]
       15 CALL                             R6 1 0
       16 JUMPIF                           R4 ; [+5]
       17 GETIMPORT                        R6 K6 [error]
       19 MOVE                             R7 R5
       20 LOADN                            R8 0
       21 CALL                             R6 2 0
       22 MOVE                             R2 R5
       23 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
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
      246 LOADNIL                          R7
      247 GETUPVAL                         R8 2
      248 GETTABLEKS                       R8 R8 K35 ["FFlagAssistantUseNewDMNetworking"]
      250 JUMPIFNOT                        R8 ; [+10]
      251 GETUPVAL                         R8 3
      252 GETUPVAL                         R10 4
      253 GETTABLEKS                       R10 R10 K36 ["FOCUSED"]
      255 MOVE                             R11 R6
      256 NAMECALL                         R8 R8 K37 ["InvokeAsync"]
      258 CALL                             R8 3 1
      259 MOVE                             R7 R8
      260 JUMP                             ; [+12]
      261 GETUPVAL                         R9 5
      262 FASTCALL2K                       ASSERT R9 K38 ; [+4]
      264 LOADK                            R10 K38 ["FinalizePlanTool requires the decision waiter for synchronous decision"]
      265 GETIMPORT                        R8 K7 [assert]
      267 CALL                             R8 2 0
      268 GETUPVAL                         R8 5
      269 LOADNIL                          R9
      270 MOVE                             R10 R6
      271 CALL                             R8 2 1
      272 MOVE                             R7 R8
      273 DUPTABLE                         R8 K43 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      274 SETTABLEKS                       R5 R8 K41 ["planId"]
      276 SETTABLEKS                       R3 R8 K18 ["name"]
      278 SETTABLEKS                       R7 R8 K42 ["decision"]
      280 DUPTABLE                         R9 K44 [{"title", "summary", "completeDescription", "todo"}]
      281 GETTABLEKS                       R10 R2 K8 ["title"]
      283 SETTABLEKS                       R10 R9 K8 ["title"]
      285 GETTABLEKS                       R10 R2 K11 ["summary"]
      287 SETTABLEKS                       R10 R9 K11 ["summary"]
      289 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      291 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      293 GETUPVAL                         R10 1
      294 GETTABLEKS                       R11 R2 K15 ["todo"]
      296 CALL                             R10 1 1
      297 SETTABLEKS                       R10 R9 K15 ["todo"]
      299 SETTABLEKS                       R9 R8 K0 ["plan"]
      301 JUMPIFNOTEQKS                    R7 K45 ["built"] ; [+4]
      303 LOADB                            R9 1
      304 SETTABLEKS                       R9 R8 K46 ["endTurn"]
      306 GETUPVAL                         R9 6
      307 GETTABLEKS                       R9 R9 K47 ["toString"]
      309 MOVE                             R10 R8
      310 CALL                             R9 1 1
      311 GETUPVAL                         R10 7
      312 CALL                             R10 0 1
      313 MOVE                             R12 R9
      314 NAMECALL                         R10 R10 K48 ["addText"]
      316 CALL                             R10 2 1
      317 MOVE                             R12 R8
      318 NAMECALL                         R10 R10 K49 ["setStructuredContent"]
      320 CALL                             R10 2 1
      321 NAMECALL                         R10 R10 K50 ["build"]
      323 CALL                             R10 1 -1
      324 RETURN                           R10 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETTABLEKS                       R3 R0 K2 ["getPersistentPlanRuntime"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["FFlagAssistantUseNewDMNetworking"]
       11 JUMPIFNOT                        R6 ; [+37]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K4 ["invoke"]
       15 MOVE                             R7 R1
       16 LOADK                            R8 K5 ["FinalizePlanTool.waitForDecisionAsync"]
       17 CALL                             R6 2 1
       18 MOVE                             R5 R6
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K6 ["new"]
       22 CALL                             R6 0 1
       23 NAMECALL                         R7 R1 K7 ["GetIdentity"]
       25 CALL                             R7 1 1
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K8 ["Identity"]
       29 GETTABLEKS                       R8 R8 K9 ["Standalone"]
       31 JUMPIFEQ                         R7 R8 ; [+11]
       33 DUPCLOSURE                       R11 K10 [PROTO_2]
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U6
       37 NAMECALL                         R9 R5 K11 ["Connect"]
       39 CALL                             R9 2 -1
       40 NAMECALL                         R7 R6 K12 ["Add"]
       42 CALL                             R7 -1 0
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R6
       45 NAMECALL                         R7 R2 K13 ["Once"]
       47 CALL                             R7 2 0
       48 JUMP                             ; [+11]
       49 GETTABLEKS                       R6 R0 K14 ["networkingOLD"]
       51 LOADK                            R9 K15 ["FinalizePlanTool_waitForDecisionAsync"]
       52 DUPCLOSURE                       R10 K16 [PROTO_4]
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U5
       55 CAPTURE                          UPVAL U6
       56 NAMECALL                         R7 R6 K17 ["OnHostInvokeAsync"]
       58 CALL                             R7 3 1
       59 MOVE                             R4 R7
       60 DUPCLOSURE                       R6 K18 [PROTO_5]
       61 NEWCLOSURE                       R7 P4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          REF R4
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U8
       70 GETUPVAL                         R8 9
       71 GETTABLEKS                       R8 R8 K19 ["define"]
       73 CALL                             R8 0 1
       74 GETUPVAL                         R10 10
       75 GETTABLEKS                       R10 R10 K20 ["FinalizePlan"]
       77 NAMECALL                         R8 R8 K21 ["setName"]
       79 CALL                             R8 2 1
       80 LOADK                            R10 K22 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       81 NAMECALL                         R8 R8 K23 ["setDescription"]
       83 CALL                             R8 2 1
       84 LOADK                            R11 K24 ["name"]
       85 DUPTABLE                         R12 K29 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       86 NAMECALL                         R9 R8 K30 ["addArgument"]
       88 CALL                             R9 3 0
       89 LOADK                            R11 K31 ["plan"]
       90 DUPTABLE                         R12 K36 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       91 DUPTABLE                         R13 K41 [{"completeDescription", "todo", "summary", "title"}]
       92 DUPTABLE                         R14 K43 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       93 SETTABLEKS                       R14 R13 K37 ["completeDescription"]
       95 DUPTABLE                         R14 K47 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       96 DUPTABLE                         R15 K49 [{["type"] = "string", ["description"] = "Todo text."}]
       97 SETTABLEKS                       R15 R14 K46 ["items"]
       99 SETTABLEKS                       R14 R13 K38 ["todo"]
      101 DUPTABLE                         R14 K51 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
      102 SETTABLEKS                       R14 R13 K39 ["summary"]
      104 DUPTABLE                         R14 K53 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
      105 SETTABLEKS                       R14 R13 K40 ["title"]
      107 SETTABLEKS                       R13 R12 K34 ["properties"]
      109 NEWTABLE                         R13 0 4
      111 LOADK                            R14 K37 ["completeDescription"]
      112 LOADK                            R15 K38 ["todo"]
      113 LOADK                            R16 K39 ["summary"]
      114 LOADK                            R17 K40 ["title"]
      115 SETLIST                          R13 R14 4 [1]
      117 SETTABLEKS                       R13 R12 K35 ["required"]
      119 NAMECALL                         R9 R8 K30 ["addArgument"]
      121 CALL                             R9 3 1
      122 DUPTABLE                         R11 K60 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      123 NAMECALL                         R9 R9 K61 ["setAnnotations"]
      125 CALL                             R9 2 1
      126 MOVE                             R11 R7
      127 NAMECALL                         R9 R9 K62 ["setHandler"]
      129 CALL                             R9 2 1
      130 NAMECALL                         R9 R9 K63 ["build"]
      132 CALL                             R9 1 1
      133 DUPTABLE                         R10 K65 [{"definition"}]
      134 SETTABLEKS                       R9 R10 K64 ["definition"]
      136 CLOSEUPVALS                      R4
      137 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["InstanceChannel"]
       32 GETTABLEKS                       R5 R5 K11 ["InstanceChannel"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K13 ["Plan"]
       48 GETTABLEKS                       R7 R7 K14 ["PlanDecisionChannel"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Tools"]
       55 GETTABLEKS                       R8 R8 K16 ["ToolTypes"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["ToolUtils"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K18 ["Remote"]
       67 GETTABLEKS                       R10 R7 K19 ["ToolNames"]
       69 GETTABLEKS                       R11 R5 K6 ["Util"]
       71 GETTABLEKS                       R11 R11 K20 ["ToolBuilder"]
       73 GETTABLEKS                       R12 R5 K6 ["Util"]
       75 GETTABLEKS                       R12 R12 K21 ["ToolResult"]
       77 DUPCLOSURE                       R13 K22 [PROTO_0]
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R14 K23 [PROTO_1]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R13
       83 DUPCLOSURE                       R15 K24 [PROTO_7]
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R10
       95 RETURN                           R15 1

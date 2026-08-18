PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantFixPlanModeInAcp"]
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["awaitDecision requires the synchronous plan decision flags"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K5 ["Field"]
       16 GETTABLEKS                       R3 R3 K6 ["Submitted"]
       18 NAMECALL                         R1 R0 K7 ["Wait"]
       20 CALL                             R1 2 1
       21 JUMPIFEQKB                       R1 TRUE ; [+3]
       23 LOADK                            R2 K8 ["rejected"]
       24 RETURN                           R2 1
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K5 ["Field"]
       28 GETTABLEKS                       R4 R4 K9 ["Decision"]
       30 NAMECALL                         R2 R0 K10 ["Get"]
       32 CALL                             R2 2 1
       33 JUMPIFNOTEQKS                    R2 K11 ["built"] ; [+3]
       35 LOADK                            R3 K11 ["built"]
       36 RETURN                           R3 1
       37 LOADK                            R3 K8 ["rejected"]
       38 RETURN                           R3 1

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
      162 JUMPIFNOT                        R3 ; [+190]
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
      230 GETUPVAL                         R6 3
      231 GETTABLEKS                       R6 R6 K29 ["FFlagAssistantFixPlanModeInAcp"]
      233 JUMPIFNOT                        R6 ; [+7]
      234 MOVE                             R8 R1
      235 JUMPIFNOT                        R8 ; [+2]
      236 GETTABLEKS                       R8 R1 K30 ["threadId"]
      238 NAMECALL                         R6 R4 K31 ["onPlanPresented"]
      240 CALL                             R6 2 0
      241 GETUPVAL                         R6 3
      242 GETTABLEKS                       R6 R6 K32 ["FFlagAssistantSplitToolsAndWidgets"]
      244 JUMPIFNOT                        R6 ; [+84]
      245 GETUPVAL                         R6 3
      246 GETTABLEKS                       R6 R6 K29 ["FFlagAssistantFixPlanModeInAcp"]
      248 JUMPIFNOT                        R6 ; [+80]
      249 GETUPVAL                         R7 4
      250 FASTCALL2K                       ASSERT R7 K33 ; [+4]
      252 LOADK                            R8 K33 ["FinalizePlanTool requires the decision waiter for synchronous decision"]
      253 GETIMPORT                        R6 K7 [assert]
      255 CALL                             R6 2 0
      256 MOVE                             R6 R1
      257 JUMPIFNOT                        R6 ; [+2]
      258 GETTABLEKS                       R6 R1 K34 ["toolId"]
      260 LOADB                            R8 0
      261 FASTCALL1                        TYPEOF R6 ; [+3]
      262 MOVE                             R10 R6
      263 GETIMPORT                        R9 K36 [typeof]
      265 CALL                             R9 1 1
      266 JUMPIFNOTEQKS                    R9 K9 ["string"] ; [+5]
      268 JUMPIFNOTEQKS                    R6 K37 [""] ; [+2]
      270 LOADB                            R8 0 +1
      271 LOADB                            R8 1
      272 FASTCALL2K                       ASSERT R8 K38 ; [+4]
      274 LOADK                            R9 K38 ["FinalizePlanTool requires toolUseId for synchronous decision"]
      275 GETIMPORT                        R7 K7 [assert]
      277 CALL                             R7 2 0
      278 GETUPVAL                         R7 4
      279 LOADNIL                          R8
      280 MOVE                             R9 R6
      281 CALL                             R7 2 1
      282 DUPTABLE                         R8 K43 [{["status"] = "decided", ["planId"], ["name"], ["decision"], [5]}]
      283 SETTABLEKS                       R5 R8 K41 ["planId"]
      285 SETTABLEKS                       R3 R8 K18 ["name"]
      287 SETTABLEKS                       R7 R8 K42 ["decision"]
      289 DUPTABLE                         R9 K44 [{"title", "summary", "completeDescription", "todo"}]
      290 GETTABLEKS                       R10 R2 K8 ["title"]
      292 SETTABLEKS                       R10 R9 K8 ["title"]
      294 GETTABLEKS                       R10 R2 K11 ["summary"]
      296 SETTABLEKS                       R10 R9 K11 ["summary"]
      298 GETTABLEKS                       R10 R2 K13 ["completeDescription"]
      300 SETTABLEKS                       R10 R9 K13 ["completeDescription"]
      302 GETUPVAL                         R10 2
      303 GETTABLEKS                       R11 R2 K15 ["todo"]
      305 CALL                             R10 1 1
      306 SETTABLEKS                       R10 R9 K15 ["todo"]
      308 SETTABLEKS                       R9 R8 K0 ["plan"]
      310 GETUPVAL                         R9 5
      311 GETTABLEKS                       R9 R9 K45 ["toString"]
      313 MOVE                             R10 R8
      314 CALL                             R9 1 1
      315 GETUPVAL                         R10 6
      316 CALL                             R10 0 1
      317 MOVE                             R12 R9
      318 NAMECALL                         R10 R10 K46 ["addText"]
      320 CALL                             R10 2 1
      321 MOVE                             R12 R8
      322 NAMECALL                         R10 R10 K47 ["setStructuredContent"]
      324 CALL                             R10 2 1
      325 NAMECALL                         R10 R10 K48 ["build"]
      327 CALL                             R10 1 -1
      328 RETURN                           R10 -1
      329 DUPTABLE                         R6 K50 [{["status"] = "presented", ["planId"], ["name"]}]
      330 SETTABLEKS                       R5 R6 K41 ["planId"]
      332 SETTABLEKS                       R3 R6 K18 ["name"]
      334 GETUPVAL                         R7 5
      335 GETTABLEKS                       R7 R7 K45 ["toString"]
      337 MOVE                             R8 R6
      338 CALL                             R7 1 1
      339 GETUPVAL                         R8 6
      340 CALL                             R8 0 1
      341 MOVE                             R10 R7
      342 NAMECALL                         R8 R8 K46 ["addText"]
      344 CALL                             R8 2 1
      345 MOVE                             R10 R6
      346 NAMECALL                         R8 R8 K47 ["setStructuredContent"]
      348 CALL                             R8 2 1
      349 NAMECALL                         R8 R8 K48 ["build"]
      351 CALL                             R8 1 -1
      352 RETURN                           R8 -1
      353 DUPTABLE                         R3 K51 [{["status"] = "presented"}]
      354 GETUPVAL                         R4 5
      355 GETTABLEKS                       R4 R4 K45 ["toString"]
      357 MOVE                             R5 R3
      358 CALL                             R4 1 1
      359 GETUPVAL                         R5 6
      360 CALL                             R5 0 1
      361 MOVE                             R7 R4
      362 NAMECALL                         R5 R5 K46 ["addText"]
      364 CALL                             R5 2 1
      365 MOVE                             R7 R3
      366 NAMECALL                         R5 R5 K47 ["setStructuredContent"]
      368 CALL                             R5 2 1
      369 NAMECALL                         R5 R5 K48 ["build"]
      371 CALL                             R5 1 -1
      372 RETURN                           R5 -1

PROTO_4:
        0 DUPTABLE                         R0 K8 [{[1], ["title"] = "", ["summary"] = "", ["completeDescription"] = "", ["todo"], ["status"] = "preparing"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K9 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K5 ["todo"]
       10 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantMarkdownPlanMode"]
        3 GETTABLEKS                       R2 R0 K1 ["getPersistentPlanRuntime"]
        5 GETTABLEKS                       R3 R0 K2 ["networking"]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K3 ["FFlagAssistantSplitToolsAndWidgets"]
       11 JUMPIFNOT                        R5 ; [+13]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantFixPlanModeInAcp"]
       15 JUMPIFNOT                        R5 ; [+9]
       16 LOADK                            R7 K5 ["FinalizePlanTool_waitForDecisionAsync"]
       17 DUPCLOSURE                       R8 K6 [PROTO_1]
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 NAMECALL                         R5 R3 K7 ["OnHostInvokeAsync"]
       23 CALL                             R5 3 1
       24 MOVE                             R4 R5
       25 DUPCLOSURE                       R5 K8 [PROTO_2]
       26 NEWCLOSURE                       R6 P2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R5
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          REF R4
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K3 ["FFlagAssistantSplitToolsAndWidgets"]
       37 JUMPIFNOT                        R8 ; [+6]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R8 R8 K4 ["FFlagAssistantFixPlanModeInAcp"]
       41 JUMPIFNOT                        R8 ; [+2]
       42 LOADK                            R7 K9 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool renders the plan UI and then BLOCKS until the user chooses Build or Reject.\nThe tool result is JSON: {\"status\":\"decided\",\"planId\":\"...\",\"name\":\"...\",\"decision\":\"built\"|\"rejected\"}.\nOn \"built\" the plan is approved; on \"rejected\" ask the user what they would like to do instead.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       43 JUMP                             ; [+1]
       44 LOADK                            R7 K10 ["Create a NEW structured plan with markdown details and todos.\nUse this tool only when creating a brand-new plan. If updating an existing plan, use update_plan instead.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\",\"planId\":\"...\",\"name\":\"...\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K11 ["define"]
       48 CALL                             R8 0 1
       49 GETUPVAL                         R10 7
       50 GETTABLEKS                       R10 R10 K12 ["FinalizePlan"]
       52 NAMECALL                         R8 R8 K13 ["setName"]
       54 CALL                             R8 2 1
       55 JUMPIFNOT                        R1 ; [+2]
       56 MOVE                             R10 R7
       57 JUMP                             ; [+1]
       58 LOADK                            R10 K14 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       59 NAMECALL                         R8 R8 K15 ["setDescription"]
       61 CALL                             R8 2 1
       62 JUMPIFNOT                        R1 ; [+5]
       63 LOADK                            R11 K16 ["name"]
       64 DUPTABLE                         R12 K21 [{["type"] = "string", ["description"] = "A short human-readable name for this plan, used to distinguish it from other plans in the same conversation."}]
       65 NAMECALL                         R9 R8 K22 ["addArgument"]
       67 CALL                             R9 3 0
       68 LOADK                            R11 K23 ["plan"]
       69 DUPTABLE                         R12 K28 [{["type"] = "object", ["description"] = "The structured final plan.", ["properties"], ["required"]}]
       70 DUPTABLE                         R13 K33 [{"completeDescription", "todo", "summary", "title"}]
       71 DUPTABLE                         R14 K35 [{["type"] = "string", ["description"] = "Markdown describing all plan details."}]
       72 SETTABLEKS                       R14 R13 K29 ["completeDescription"]
       74 DUPTABLE                         R14 K39 [{["type"] = "array", ["description"] = "A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long.", ["items"]}]
       75 DUPTABLE                         R15 K41 [{["type"] = "string", ["description"] = "Todo text."}]
       76 SETTABLEKS                       R15 R14 K38 ["items"]
       78 SETTABLEKS                       R14 R13 K30 ["todo"]
       80 DUPTABLE                         R14 K43 [{["type"] = "string", ["description"] = "A one sentence summary of the plan."}]
       81 SETTABLEKS                       R14 R13 K31 ["summary"]
       83 DUPTABLE                         R14 K45 [{["type"] = "string", ["description"] = "A short 2 to 6 word title for the plan."}]
       84 SETTABLEKS                       R14 R13 K32 ["title"]
       86 SETTABLEKS                       R13 R12 K26 ["properties"]
       88 NEWTABLE                         R13 0 4
       90 LOADK                            R14 K29 ["completeDescription"]
       91 LOADK                            R15 K30 ["todo"]
       92 LOADK                            R16 K31 ["summary"]
       93 LOADK                            R17 K32 ["title"]
       94 SETLIST                          R13 R14 4 [1]
       96 SETTABLEKS                       R13 R12 K27 ["required"]
       98 NAMECALL                         R9 R8 K22 ["addArgument"]
      100 CALL                             R9 3 1
      101 DUPTABLE                         R11 K52 [{["title"] = "Finalize Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      102 NAMECALL                         R9 R9 K53 ["setAnnotations"]
      104 CALL                             R9 2 1
      105 MOVE                             R11 R6
      106 NAMECALL                         R9 R9 K54 ["setHandler"]
      108 CALL                             R9 2 1
      109 NAMECALL                         R9 R9 K55 ["build"]
      111 CALL                             R9 1 1
      112 DUPTABLE                         R10 K59 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      113 DUPCLOSURE                       R11 K60 [PROTO_4]
      114 CAPTURE                          UPVAL U8
      115 SETTABLEKS                       R11 R10 K56 ["transformInitialContent"]
      117 NEWCLOSURE                       R11 P4
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R5
      120 SETTABLEKS                       R11 R10 K57 ["getTransformPreExecuteFn"]
      122 NEWCLOSURE                       R11 P5
      123 CAPTURE                          VAL R1
      124 SETTABLEKS                       R11 R10 K58 ["getTransformResultFn"]
      126 DUPTABLE                         R11 K64 [{"definition", "contentWidgets", "streamTransform"}]
      127 SETTABLEKS                       R9 R11 K61 ["definition"]
      129 GETUPVAL                         R13 0
      130 GETTABLEKS                       R13 R13 K3 ["FFlagAssistantSplitToolsAndWidgets"]
      132 JUMPIFNOT                        R13 ; [+2]
      133 LOADNIL                          R12
      134 JUMP                             ; [+5]
      135 NEWTABLE                         R12 0 1
      137 GETUPVAL                         R13 8
      138 SETLIST                          R12 R13 1 [1]
      140 SETTABLEKS                       R12 R11 K62 ["contentWidgets"]
      142 GETUPVAL                         R13 0
      143 GETTABLEKS                       R13 R13 K3 ["FFlagAssistantSplitToolsAndWidgets"]
      145 JUMPIFNOT                        R13 ; [+2]
      146 LOADNIL                          R12
      147 JUMP                             ; [+1]
      148 MOVE                             R12 R10
      149 SETTABLEKS                       R12 R11 K63 ["streamTransform"]
      151 CLOSEUPVALS                      R4
      152 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["DEPRECATED_FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["InstanceChannel"]
       27 GETTABLEKS                       R4 R4 K11 ["InstanceChannel"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Parent"]
       34 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["Plan"]
       43 GETTABLEKS                       R6 R6 K15 ["PlanDecisionChannel"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K16 ["Tools"]
       50 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Util"]
       57 GETTABLEKS                       R8 R8 K18 ["ToolUtils"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R6 K19 ["ToolNames"]
       62 GETTABLEKS                       R9 R4 K10 ["Util"]
       64 GETTABLEKS                       R9 R9 K20 ["ToolBuilder"]
       66 GETTABLEKS                       R10 R4 K10 ["Util"]
       68 GETTABLEKS                       R10 R10 K21 ["ToolResult"]
       70 DUPCLOSURE                       R11 K22 [PROTO_0]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R12 K23 [PROTO_9]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 RETURN                           R12 1

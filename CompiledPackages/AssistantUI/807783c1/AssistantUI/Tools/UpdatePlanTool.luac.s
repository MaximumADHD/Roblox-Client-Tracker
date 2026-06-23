PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["planId"]
        2 GETTABLEKS                       R3 R0 K1 ["todo"]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K3 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K4 ["string"] ; [+35]
       11 LOADK                            R5 K5 ["UpdatePlanTool requires planId as a string, got \"%*\": %*"]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R8 R2
       14 GETIMPORT                        R7 K3 [type]
       16 CALL                             R7 1 1
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K7 [tostring]
       21 CALL                             R8 1 1
       22 NAMECALL                         R5 R5 K8 ["format"]
       24 CALL                             R5 3 1
       25 MOVE                             R4 R5
       26 GETIMPORT                        R5 K10 [warn]
       28 LOADK                            R6 K11 ["[UpdatePlanTool]"]
       29 MOVE                             R7 R4
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 0
       32 CALL                             R5 0 1
       33 MOVE                             R7 R4
       34 NAMECALL                         R5 R5 K12 ["addText"]
       36 CALL                             R5 2 1
       37 LOADB                            R7 1
       38 NAMECALL                         R5 R5 K13 ["setError"]
       40 CALL                             R5 2 1
       41 NAMECALL                         R5 R5 K14 ["build"]
       43 CALL                             R5 1 -1
       44 RETURN                           R5 -1
       45 JUMPIFEQKNIL                     R3 ; [+112]
       47 FASTCALL1                        TYPE R3 ; [+3]
       48 MOVE                             R5 R3
       49 GETIMPORT                        R4 K3 [type]
       51 CALL                             R4 1 1
       52 JUMPIFEQKS                       R4 K15 ["table"] ; [+35]
       54 LOADK                            R5 K16 ["UpdatePlanTool: todo must be an array when provided, got \"%*\": %*"]
       55 FASTCALL1                        TYPE R3 ; [+3]
       56 MOVE                             R8 R3
       57 GETIMPORT                        R7 K3 [type]
       59 CALL                             R7 1 1
       60 FASTCALL1                        TOSTRING R3 ; [+3]
       61 MOVE                             R9 R3
       62 GETIMPORT                        R8 K7 [tostring]
       64 CALL                             R8 1 1
       65 NAMECALL                         R5 R5 K8 ["format"]
       67 CALL                             R5 3 1
       68 MOVE                             R4 R5
       69 GETIMPORT                        R5 K10 [warn]
       71 LOADK                            R6 K11 ["[UpdatePlanTool]"]
       72 MOVE                             R7 R4
       73 CALL                             R5 2 0
       74 GETUPVAL                         R5 0
       75 CALL                             R5 0 1
       76 MOVE                             R7 R4
       77 NAMECALL                         R5 R5 K12 ["addText"]
       79 CALL                             R5 2 1
       80 LOADB                            R7 1
       81 NAMECALL                         R5 R5 K13 ["setError"]
       83 CALL                             R5 2 1
       84 NAMECALL                         R5 R5 K14 ["build"]
       86 CALL                             R5 1 -1
       87 RETURN                           R5 -1
       88 LENGTH                           R4 R3
       89 JUMPIFNOTEQKN                    R4 K17 [0] ; [+20]
       91 GETIMPORT                        R4 K10 [warn]
       93 LOADK                            R5 K11 ["[UpdatePlanTool]"]
       94 LOADK                            R6 K18 ["UpdatePlanTool: todo must have at least one item when provided, got empty array"]
       95 CALL                             R4 2 0
       96 GETUPVAL                         R4 0
       97 CALL                             R4 0 1
       98 LOADK                            R6 K18 ["UpdatePlanTool: todo must have at least one item when provided, got empty array"]
       99 NAMECALL                         R4 R4 K12 ["addText"]
      101 CALL                             R4 2 1
      102 LOADB                            R6 1
      103 NAMECALL                         R4 R4 K13 ["setError"]
      105 CALL                             R4 2 1
      106 NAMECALL                         R4 R4 K14 ["build"]
      108 CALL                             R4 1 -1
      109 RETURN                           R4 -1
      110 MOVE                             R4 R3
      111 LOADNIL                          R5
      112 LOADNIL                          R6
      113 FORGPREP                         R4
      114 FASTCALL1                        TYPE R8 ; [+3]
      115 MOVE                             R10 R8
      116 GETIMPORT                        R9 K3 [type]
      118 CALL                             R9 1 1
      119 JUMPIFEQKS                       R9 K4 ["string"] ; [+36]
      121 LOADK                            R10 K19 ["UpdatePlanTool: todo[%*] must be a string, got \"%*\": %*"]
      122 MOVE                             R12 R7
      123 FASTCALL1                        TYPE R8 ; [+3]
      124 MOVE                             R14 R8
      125 GETIMPORT                        R13 K3 [type]
      127 CALL                             R13 1 1
      128 FASTCALL1                        TOSTRING R8 ; [+3]
      129 MOVE                             R15 R8
      130 GETIMPORT                        R14 K7 [tostring]
      132 CALL                             R14 1 1
      133 NAMECALL                         R10 R10 K8 ["format"]
      135 CALL                             R10 4 1
      136 MOVE                             R9 R10
      137 GETIMPORT                        R10 K10 [warn]
      139 LOADK                            R11 K11 ["[UpdatePlanTool]"]
      140 MOVE                             R12 R9
      141 CALL                             R10 2 0
      142 GETUPVAL                         R10 0
      143 CALL                             R10 0 1
      144 MOVE                             R12 R9
      145 NAMECALL                         R10 R10 K12 ["addText"]
      147 CALL                             R10 2 1
      148 LOADB                            R12 1
      149 NAMECALL                         R10 R10 K13 ["setError"]
      151 CALL                             R10 2 1
      152 NAMECALL                         R10 R10 K14 ["build"]
      154 CALL                             R10 1 -1
      155 RETURN                           R10 -1
      156 FORGLOOP                         R4 2 ; [-43]
      158 GETUPVAL                         R4 1
      159 MOVE                             R5 R1
      160 CALL                             R4 1 1
      161 MOVE                             R7 R2
      162 NAMECALL                         R5 R4 K20 ["getPlanById"]
      164 CALL                             R5 2 1
      165 JUMPIF                           R5 ; [+24]
      166 GETIMPORT                        R6 K10 [warn]
      168 LOADK                            R7 K21 ["[UpdatePlanTool] No plan found with ID:"]
      169 MOVE                             R8 R2
      170 CALL                             R6 2 0
      171 GETUPVAL                         R6 0
      172 CALL                             R6 0 1
      173 LOADK                            R9 K22 ["No plan found with ID \"%*\". The plan may have been created in a different session or thread."]
      174 MOVE                             R11 R2
      175 NAMECALL                         R9 R9 K8 ["format"]
      177 CALL                             R9 2 1
      178 MOVE                             R8 R9
      179 NAMECALL                         R6 R6 K12 ["addText"]
      181 CALL                             R6 2 1
      182 LOADB                            R8 1
      183 NAMECALL                         R6 R6 K13 ["setError"]
      185 CALL                             R6 2 1
      186 NAMECALL                         R6 R6 K14 ["build"]
      188 CALL                             R6 1 -1
      189 RETURN                           R6 -1
      190 LOADNIL                          R6
      191 FASTCALL1                        TYPE R3 ; [+3]
      192 MOVE                             R8 R3
      193 GETIMPORT                        R7 K3 [type]
      195 CALL                             R7 1 1
      196 JUMPIFNOTEQKS                    R7 K15 ["table"] ; [+22]
      198 NEWTABLE                         R6 0 0
      200 MOVE                             R7 R3
      201 LOADNIL                          R8
      202 LOADNIL                          R9
      203 FORGPREP                         R7
      204 DUPTABLE                         R14 K25 [{"text", "state"}]
      205 SETTABLEKS                       R11 R14 K23 ["text"]
      207 LOADK                            R15 K26 ["pending"]
      208 SETTABLEKS                       R15 R14 K24 ["state"]
      210 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      212 MOVE                             R13 R6
      213 GETIMPORT                        R12 K28 [table.insert]
      215 CALL                             R12 2 0
      216 FORGLOOP                         R7 2 ; [-13]
      218 JUMP                             ; [+10]
      219 MOVE                             R9 R2
      220 NAMECALL                         R7 R4 K29 ["getLatestRevision"]
      222 CALL                             R7 2 1
      223 JUMPIFNOT                        R7 ; [+3]
      224 GETTABLEKS                       R6 R7 K1 ["todo"]
      226 JUMP                             ; [+2]
      227 NEWTABLE                         R6 0 0
      229 LOADB                            R7 0
      230 GETTABLEKS                       R9 R0 K30 ["title"]
      232 FASTCALL1                        TYPE R9 ; [+2]
      233 GETIMPORT                        R8 K3 [type]
      235 CALL                             R8 1 1
      236 JUMPIFEQKS                       R8 K4 ["string"] ; [+20]
      238 LOADB                            R7 0
      239 GETTABLEKS                       R9 R0 K31 ["summary"]
      241 FASTCALL1                        TYPE R9 ; [+2]
      242 GETIMPORT                        R8 K3 [type]
      244 CALL                             R8 1 1
      245 JUMPIFEQKS                       R8 K4 ["string"] ; [+11]
      247 GETTABLEKS                       R9 R0 K32 ["completeDescription"]
      249 FASTCALL1                        TYPE R9 ; [+2]
      250 GETIMPORT                        R8 K3 [type]
      252 CALL                             R8 1 1
      253 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+2]
      255 LOADB                            R7 0 +1
      256 LOADB                            R7 1
      257 JUMPIFNOT                        R7 ; [+13]
      258 FASTCALL1                        TYPE R3 ; [+3]
      259 MOVE                             R9 R3
      260 GETIMPORT                        R8 K3 [type]
      262 CALL                             R8 1 1
      263 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+96]
      265 MOVE                             R10 R2
      266 MOVE                             R11 R6
      267 NAMECALL                         R8 R4 K33 ["updateTodosForPlan"]
      269 CALL                             R8 3 0
      270 JUMP                             ; [+89]
      271 MOVE                             R10 R2
      272 NAMECALL                         R8 R4 K29 ["getLatestRevision"]
      274 CALL                             R8 2 1
      275 NAMECALL                         R9 R4 K34 ["getPlan"]
      277 CALL                             R9 1 1
      278 JUMPIFNOT                        R8 ; [+3]
      279 GETTABLEKS                       R10 R8 K30 ["title"]
      281 JUMP                             ; [+5]
      282 JUMPIFNOT                        R9 ; [+3]
      283 GETTABLEKS                       R10 R9 K30 ["title"]
      285 JUMP                             ; [+1]
      286 LOADK                            R10 K35 [""]
      287 JUMPIFNOT                        R8 ; [+3]
      288 GETTABLEKS                       R11 R8 K31 ["summary"]
      290 JUMP                             ; [+5]
      291 JUMPIFNOT                        R9 ; [+3]
      292 GETTABLEKS                       R11 R9 K31 ["summary"]
      294 JUMP                             ; [+1]
      295 LOADK                            R11 K35 [""]
      296 JUMPIFNOT                        R8 ; [+3]
      297 GETTABLEKS                       R12 R8 K32 ["completeDescription"]
      299 JUMP                             ; [+5]
      300 JUMPIFNOT                        R9 ; [+3]
      301 GETTABLEKS                       R12 R9 K32 ["completeDescription"]
      303 JUMP                             ; [+1]
      304 LOADK                            R12 K35 [""]
      305 DUPTABLE                         R13 K37 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      306 GETTABLEKS                       R16 R0 K30 ["title"]
      308 FASTCALL1                        TYPE R16 ; [+2]
      309 GETIMPORT                        R15 K3 [type]
      311 CALL                             R15 1 1
      312 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      314 GETTABLEKS                       R14 R0 K30 ["title"]
      316 JUMP                             ; [+1]
      317 MOVE                             R14 R10
      318 SETTABLEKS                       R14 R13 K30 ["title"]
      320 GETTABLEKS                       R16 R0 K31 ["summary"]
      322 FASTCALL1                        TYPE R16 ; [+2]
      323 GETIMPORT                        R15 K3 [type]
      325 CALL                             R15 1 1
      326 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      328 GETTABLEKS                       R14 R0 K31 ["summary"]
      330 JUMP                             ; [+1]
      331 MOVE                             R14 R11
      332 SETTABLEKS                       R14 R13 K31 ["summary"]
      334 GETTABLEKS                       R16 R0 K32 ["completeDescription"]
      336 FASTCALL1                        TYPE R16 ; [+2]
      337 GETIMPORT                        R15 K3 [type]
      339 CALL                             R15 1 1
      340 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      342 GETTABLEKS                       R14 R0 K32 ["completeDescription"]
      344 JUMP                             ; [+1]
      345 MOVE                             R14 R12
      346 SETTABLEKS                       R14 R13 K32 ["completeDescription"]
      348 SETTABLEKS                       R6 R13 K1 ["todo"]
      350 GETIMPORT                        R14 K40 [os.time]
      352 CALL                             R14 0 1
      353 SETTABLEKS                       R14 R13 K36 ["createdAt"]
      355 MOVE                             R16 R2
      356 MOVE                             R17 R13
      357 NAMECALL                         R14 R4 K41 ["addRevision"]
      359 CALL                             R14 3 0
      360 JUMPIFNOT                        R6 ; [+2]
      361 LENGTH                           R8 R6
      362 JUMP                             ; [+1]
      363 LOADN                            R8 0
      364 GETUPVAL                         R9 0
      365 CALL                             R9 0 1
      366 LOADK                            R12 K42 ["Updated plan with %* todo items."]
      367 MOVE                             R14 R8
      368 NAMECALL                         R12 R12 K8 ["format"]
      370 CALL                             R12 2 1
      371 MOVE                             R11 R12
      372 NAMECALL                         R9 R9 K12 ["addText"]
      374 CALL                             R9 2 1
      375 NAMECALL                         R9 R9 K14 ["build"]
      377 CALL                             R9 1 -1
      378 RETURN                           R9 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["getPersistentPlanRuntime"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["define"]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["UpdatePlan"]
       12 NAMECALL                         R3 R3 K3 ["setName"]
       14 CALL                             R3 2 1
       15 LOADK                            R5 K4 ["Update an existing plan. Use this instead of finalize_plan when a plan already exists and needs modification (e.g. the user asked for changes, edited the markdown, or you need to regenerate todos). The planId is provided in the active plan system reminder.\n\nIf the plan content (completeDescription) has changed in ways that affect the task breakdown, you SHOULD provide an updated todo list to keep it in sync. Omit todo only when the changes are cosmetic (e.g. typo fixes, formatting) and the existing tasks are still accurate."]
       16 NAMECALL                         R3 R3 K5 ["setDescription"]
       18 CALL                             R3 2 1
       19 LOADK                            R5 K6 ["planId"]
       20 DUPTABLE                         R6 K9 [{"type", "description"}]
       21 LOADK                            R7 K10 ["string"]
       22 SETTABLEKS                       R7 R6 K7 ["type"]
       24 LOADK                            R7 K11 ["The unique ID of the plan to update (returned by finalize_plan)."]
       25 SETTABLEKS                       R7 R6 K8 ["description"]
       27 NAMECALL                         R3 R3 K12 ["addArgument"]
       29 CALL                             R3 3 1
       30 LOADK                            R5 K13 ["todo"]
       31 DUPTABLE                         R6 K15 [{"type", "description", "items"}]
       32 LOADK                            R7 K16 ["array"]
       33 SETTABLEKS                       R7 R6 K7 ["type"]
       35 LOADK                            R7 K17 ["Regenerated todo items derived from the plan markdown. Provide when plan content changes affect the task breakdown. If omitted, existing todos are preserved."]
       36 SETTABLEKS                       R7 R6 K8 ["description"]
       38 DUPTABLE                         R7 K9 [{"type", "description"}]
       39 LOADK                            R8 K10 ["string"]
       40 SETTABLEKS                       R8 R7 K7 ["type"]
       42 LOADK                            R8 K18 ["A concise, actionable todo item."]
       43 SETTABLEKS                       R8 R7 K8 ["description"]
       45 SETTABLEKS                       R7 R6 K14 ["items"]
       47 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       49 CALL                             R3 3 1
       50 LOADK                            R5 K20 ["title"]
       51 DUPTABLE                         R6 K9 [{"type", "description"}]
       52 LOADK                            R7 K10 ["string"]
       53 SETTABLEKS                       R7 R6 K7 ["type"]
       55 LOADK                            R7 K21 ["Optional updated title for the plan."]
       56 SETTABLEKS                       R7 R6 K8 ["description"]
       58 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       60 CALL                             R3 3 1
       61 LOADK                            R5 K22 ["summary"]
       62 DUPTABLE                         R6 K9 [{"type", "description"}]
       63 LOADK                            R7 K10 ["string"]
       64 SETTABLEKS                       R7 R6 K7 ["type"]
       66 LOADK                            R7 K23 ["Optional updated one-sentence summary."]
       67 SETTABLEKS                       R7 R6 K8 ["description"]
       69 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       71 CALL                             R3 3 1
       72 LOADK                            R5 K24 ["completeDescription"]
       73 DUPTABLE                         R6 K9 [{"type", "description"}]
       74 LOADK                            R7 K10 ["string"]
       75 SETTABLEKS                       R7 R6 K7 ["type"]
       77 LOADK                            R7 K25 ["Optional updated full markdown description of the plan. Provide when the plan content has changed."]
       78 SETTABLEKS                       R7 R6 K8 ["description"]
       80 NAMECALL                         R3 R3 K19 ["addOptionalArgument"]
       82 CALL                             R3 3 1
       83 DUPTABLE                         R5 K30 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       84 LOADK                            R6 K31 ["Update Plan"]
       85 SETTABLEKS                       R6 R5 K20 ["title"]
       87 LOADB                            R6 0
       88 SETTABLEKS                       R6 R5 K26 ["readOnlyHint"]
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K27 ["destructiveHint"]
       93 LOADB                            R6 1
       94 SETTABLEKS                       R6 R5 K28 ["idempotentHint"]
       96 LOADB                            R6 0
       97 SETTABLEKS                       R6 R5 K29 ["openWorldHint"]
       99 NAMECALL                         R3 R3 K32 ["setAnnotations"]
      101 CALL                             R3 2 1
      102 MOVE                             R5 R2
      103 NAMECALL                         R3 R3 K33 ["setHandler"]
      105 CALL                             R3 2 1
      106 NAMECALL                         R3 R3 K34 ["build"]
      108 CALL                             R3 1 1
      109 DUPTABLE                         R4 K37 [{"definition", "streamTransform"}]
      110 SETTABLEKS                       R3 R4 K35 ["definition"]
      112 GETUPVAL                         R5 3
      113 GETTABLEKS                       R5 R5 K38 ["None"]
      115 SETTABLEKS                       R5 R4 K36 ["streamTransform"]
      117 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["UIToolRegistry"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K12 ["Util"]
       30 GETTABLEKS                       R4 R4 K13 ["ToolBuilder"]
       32 GETTABLEKS                       R5 R1 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolResult"]
       36 GETTABLEKS                       R6 R2 K15 ["ToolNames"]
       38 DUPCLOSURE                       R7 K16 [PROTO_1]
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 RETURN                           R7 1

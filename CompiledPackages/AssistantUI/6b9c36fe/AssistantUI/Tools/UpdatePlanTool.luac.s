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
      196 JUMPIFNOTEQKS                    R7 K15 ["table"] ; [+19]
      198 NEWTABLE                         R6 0 0
      200 MOVE                             R7 R3
      201 LOADNIL                          R8
      202 LOADNIL                          R9
      203 FORGPREP                         R7
      204 DUPTABLE                         R14 K26 [{["text"], ["state"] = "pending"}]
      205 SETTABLEKS                       R11 R14 K23 ["text"]
      207 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      209 MOVE                             R13 R6
      210 GETIMPORT                        R12 K28 [table.insert]
      212 CALL                             R12 2 0
      213 FORGLOOP                         R7 2 ; [-10]
      215 JUMP                             ; [+10]
      216 MOVE                             R9 R2
      217 NAMECALL                         R7 R4 K29 ["getLatestRevision"]
      219 CALL                             R7 2 1
      220 JUMPIFNOT                        R7 ; [+3]
      221 GETTABLEKS                       R6 R7 K1 ["todo"]
      223 JUMP                             ; [+2]
      224 NEWTABLE                         R6 0 0
      226 LOADB                            R7 0
      227 GETTABLEKS                       R9 R0 K30 ["title"]
      229 FASTCALL1                        TYPE R9 ; [+2]
      230 GETIMPORT                        R8 K3 [type]
      232 CALL                             R8 1 1
      233 JUMPIFEQKS                       R8 K4 ["string"] ; [+20]
      235 LOADB                            R7 0
      236 GETTABLEKS                       R9 R0 K31 ["summary"]
      238 FASTCALL1                        TYPE R9 ; [+2]
      239 GETIMPORT                        R8 K3 [type]
      241 CALL                             R8 1 1
      242 JUMPIFEQKS                       R8 K4 ["string"] ; [+11]
      244 GETTABLEKS                       R9 R0 K32 ["completeDescription"]
      246 FASTCALL1                        TYPE R9 ; [+2]
      247 GETIMPORT                        R8 K3 [type]
      249 CALL                             R8 1 1
      250 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+2]
      252 LOADB                            R7 0 +1
      253 LOADB                            R7 1
      254 JUMPIFNOT                        R7 ; [+13]
      255 FASTCALL1                        TYPE R3 ; [+3]
      256 MOVE                             R9 R3
      257 GETIMPORT                        R8 K3 [type]
      259 CALL                             R8 1 1
      260 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+96]
      262 MOVE                             R10 R2
      263 MOVE                             R11 R6
      264 NAMECALL                         R8 R4 K33 ["updateTodosForPlan"]
      266 CALL                             R8 3 0
      267 JUMP                             ; [+89]
      268 MOVE                             R10 R2
      269 NAMECALL                         R8 R4 K29 ["getLatestRevision"]
      271 CALL                             R8 2 1
      272 NAMECALL                         R9 R4 K34 ["getPlan"]
      274 CALL                             R9 1 1
      275 JUMPIFNOT                        R8 ; [+3]
      276 GETTABLEKS                       R10 R8 K30 ["title"]
      278 JUMP                             ; [+5]
      279 JUMPIFNOT                        R9 ; [+3]
      280 GETTABLEKS                       R10 R9 K30 ["title"]
      282 JUMP                             ; [+1]
      283 LOADK                            R10 K35 [""]
      284 JUMPIFNOT                        R8 ; [+3]
      285 GETTABLEKS                       R11 R8 K31 ["summary"]
      287 JUMP                             ; [+5]
      288 JUMPIFNOT                        R9 ; [+3]
      289 GETTABLEKS                       R11 R9 K31 ["summary"]
      291 JUMP                             ; [+1]
      292 LOADK                            R11 K35 [""]
      293 JUMPIFNOT                        R8 ; [+3]
      294 GETTABLEKS                       R12 R8 K32 ["completeDescription"]
      296 JUMP                             ; [+5]
      297 JUMPIFNOT                        R9 ; [+3]
      298 GETTABLEKS                       R12 R9 K32 ["completeDescription"]
      300 JUMP                             ; [+1]
      301 LOADK                            R12 K35 [""]
      302 DUPTABLE                         R13 K37 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      303 GETTABLEKS                       R16 R0 K30 ["title"]
      305 FASTCALL1                        TYPE R16 ; [+2]
      306 GETIMPORT                        R15 K3 [type]
      308 CALL                             R15 1 1
      309 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      311 GETTABLEKS                       R14 R0 K30 ["title"]
      313 JUMP                             ; [+1]
      314 MOVE                             R14 R10
      315 SETTABLEKS                       R14 R13 K30 ["title"]
      317 GETTABLEKS                       R16 R0 K31 ["summary"]
      319 FASTCALL1                        TYPE R16 ; [+2]
      320 GETIMPORT                        R15 K3 [type]
      322 CALL                             R15 1 1
      323 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      325 GETTABLEKS                       R14 R0 K31 ["summary"]
      327 JUMP                             ; [+1]
      328 MOVE                             R14 R11
      329 SETTABLEKS                       R14 R13 K31 ["summary"]
      331 GETTABLEKS                       R16 R0 K32 ["completeDescription"]
      333 FASTCALL1                        TYPE R16 ; [+2]
      334 GETIMPORT                        R15 K3 [type]
      336 CALL                             R15 1 1
      337 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      339 GETTABLEKS                       R14 R0 K32 ["completeDescription"]
      341 JUMP                             ; [+1]
      342 MOVE                             R14 R12
      343 SETTABLEKS                       R14 R13 K32 ["completeDescription"]
      345 SETTABLEKS                       R6 R13 K1 ["todo"]
      347 GETIMPORT                        R14 K40 [os.time]
      349 CALL                             R14 0 1
      350 SETTABLEKS                       R14 R13 K36 ["createdAt"]
      352 MOVE                             R16 R2
      353 MOVE                             R17 R13
      354 NAMECALL                         R14 R4 K41 ["addRevision"]
      356 CALL                             R14 3 0
      357 JUMPIFNOT                        R6 ; [+2]
      358 LENGTH                           R8 R6
      359 JUMP                             ; [+1]
      360 LOADN                            R8 0
      361 GETUPVAL                         R9 0
      362 CALL                             R9 0 1
      363 LOADK                            R12 K42 ["Updated plan with %* todo items."]
      364 MOVE                             R14 R8
      365 NAMECALL                         R12 R12 K8 ["format"]
      367 CALL                             R12 2 1
      368 MOVE                             R11 R12
      369 NAMECALL                         R9 R9 K12 ["addText"]
      371 CALL                             R9 2 1
      372 NAMECALL                         R9 R9 K14 ["build"]
      374 CALL                             R9 1 -1
      375 RETURN                           R9 -1

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
       20 DUPTABLE                         R6 K11 [{["type"] = "string", ["description"] = "The unique ID of the plan to update (returned by finalize_plan)."}]
       21 NAMECALL                         R3 R3 K12 ["addArgument"]
       23 CALL                             R3 3 1
       24 LOADK                            R5 K13 ["todo"]
       25 DUPTABLE                         R6 K17 [{["type"] = "array", ["description"] = "Regenerated todo items derived from the plan markdown. Provide when plan content changes affect the task breakdown. If omitted, existing todos are preserved.", ["items"]}]
       26 DUPTABLE                         R7 K19 [{["type"] = "string", ["description"] = "A concise, actionable todo item."}]
       27 SETTABLEKS                       R7 R6 K16 ["items"]
       29 NAMECALL                         R3 R3 K20 ["addOptionalArgument"]
       31 CALL                             R3 3 1
       32 LOADK                            R5 K21 ["title"]
       33 DUPTABLE                         R6 K23 [{["type"] = "string", ["description"] = "Optional updated title for the plan."}]
       34 NAMECALL                         R3 R3 K20 ["addOptionalArgument"]
       36 CALL                             R3 3 1
       37 LOADK                            R5 K24 ["summary"]
       38 DUPTABLE                         R6 K26 [{["type"] = "string", ["description"] = "Optional updated one-sentence summary."}]
       39 NAMECALL                         R3 R3 K20 ["addOptionalArgument"]
       41 CALL                             R3 3 1
       42 LOADK                            R5 K27 ["completeDescription"]
       43 DUPTABLE                         R6 K29 [{["type"] = "string", ["description"] = "Optional updated full markdown description of the plan. Provide when the plan content has changed."}]
       44 NAMECALL                         R3 R3 K20 ["addOptionalArgument"]
       46 CALL                             R3 3 1
       47 DUPTABLE                         R5 K37 [{["title"] = "Update Plan", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       48 NAMECALL                         R3 R3 K38 ["setAnnotations"]
       50 CALL                             R3 2 1
       51 MOVE                             R5 R2
       52 NAMECALL                         R3 R3 K39 ["setHandler"]
       54 CALL                             R3 2 1
       55 NAMECALL                         R3 R3 K40 ["build"]
       57 CALL                             R3 1 1
       58 DUPTABLE                         R4 K42 [{"definition"}]
       59 SETTABLEKS                       R3 R4 K41 ["definition"]
       61 RETURN                           R4 1

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
       21 GETTABLEKS                       R3 R1 K10 ["Util"]
       23 GETTABLEKS                       R3 R3 K11 ["ToolBuilder"]
       25 GETTABLEKS                       R4 R1 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolResult"]
       29 GETTABLEKS                       R5 R2 K13 ["ToolNames"]
       31 DUPCLOSURE                       R6 K14 [PROTO_1]
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R5
       35 RETURN                           R6 1

PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["planId"]
        2 GETTABLEKS                       R3 R0 K1 ["todo"]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K3 [type]
        8 CALL                             R4 1 1
        9 JUMPIFEQKS                       R4 K4 ["string"] ; [+34]
       11 LOADK                            R4 K5 ["UpdatePlanTool requires planId as a string, got \"%*\": %*"]
       12 FASTCALL1                        TYPE R2 ; [+3]
       13 MOVE                             R7 R2
       14 GETIMPORT                        R6 K3 [type]
       16 CALL                             R6 1 1
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R8 R2
       19 GETIMPORT                        R7 K7 [tostring]
       21 CALL                             R7 1 1
       22 NAMECALL                         R4 R4 K8 ["format"]
       24 CALL                             R4 3 1
       25 GETIMPORT                        R5 K10 [warn]
       27 LOADK                            R6 K11 ["[UpdatePlanTool]"]
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 0
       31 CALL                             R5 0 1
       32 MOVE                             R7 R4
       33 NAMECALL                         R5 R5 K12 ["addText"]
       35 CALL                             R5 2 1
       36 LOADB                            R7 1
       37 NAMECALL                         R5 R5 K13 ["setError"]
       39 CALL                             R5 2 1
       40 NAMECALL                         R5 R5 K14 ["build"]
       42 CALL                             R5 1 -1
       43 RETURN                           R5 -1
       44 JUMPIFEQKNIL                     R3 ; [+110]
       46 FASTCALL1                        TYPE R3 ; [+3]
       47 MOVE                             R5 R3
       48 GETIMPORT                        R4 K3 [type]
       50 CALL                             R4 1 1
       51 JUMPIFEQKS                       R4 K15 ["table"] ; [+34]
       53 LOADK                            R4 K16 ["UpdatePlanTool: todo must be an array when provided, got \"%*\": %*"]
       54 FASTCALL1                        TYPE R3 ; [+3]
       55 MOVE                             R7 R3
       56 GETIMPORT                        R6 K3 [type]
       58 CALL                             R6 1 1
       59 FASTCALL1                        TOSTRING R3 ; [+3]
       60 MOVE                             R8 R3
       61 GETIMPORT                        R7 K7 [tostring]
       63 CALL                             R7 1 1
       64 NAMECALL                         R4 R4 K8 ["format"]
       66 CALL                             R4 3 1
       67 GETIMPORT                        R5 K10 [warn]
       69 LOADK                            R6 K11 ["[UpdatePlanTool]"]
       70 MOVE                             R7 R4
       71 CALL                             R5 2 0
       72 GETUPVAL                         R5 0
       73 CALL                             R5 0 1
       74 MOVE                             R7 R4
       75 NAMECALL                         R5 R5 K12 ["addText"]
       77 CALL                             R5 2 1
       78 LOADB                            R7 1
       79 NAMECALL                         R5 R5 K13 ["setError"]
       81 CALL                             R5 2 1
       82 NAMECALL                         R5 R5 K14 ["build"]
       84 CALL                             R5 1 -1
       85 RETURN                           R5 -1
       86 LENGTH                           R4 R3
       87 JUMPIFNOTEQKN                    R4 K17 [0] ; [+20]
       89 GETIMPORT                        R4 K10 [warn]
       91 LOADK                            R5 K11 ["[UpdatePlanTool]"]
       92 LOADK                            R6 K18 ["UpdatePlanTool: todo must have at least one item when provided, got empty array"]
       93 CALL                             R4 2 0
       94 GETUPVAL                         R4 0
       95 CALL                             R4 0 1
       96 LOADK                            R6 K18 ["UpdatePlanTool: todo must have at least one item when provided, got empty array"]
       97 NAMECALL                         R4 R4 K12 ["addText"]
       99 CALL                             R4 2 1
      100 LOADB                            R6 1
      101 NAMECALL                         R4 R4 K13 ["setError"]
      103 CALL                             R4 2 1
      104 NAMECALL                         R4 R4 K14 ["build"]
      106 CALL                             R4 1 -1
      107 RETURN                           R4 -1
      108 MOVE                             R4 R3
      109 LOADNIL                          R5
      110 LOADNIL                          R6
      111 FORGPREP                         R4
      112 FASTCALL1                        TYPE R8 ; [+3]
      113 MOVE                             R10 R8
      114 GETIMPORT                        R9 K3 [type]
      116 CALL                             R9 1 1
      117 JUMPIFEQKS                       R9 K4 ["string"] ; [+35]
      119 LOADK                            R9 K19 ["UpdatePlanTool: todo[%*] must be a string, got \"%*\": %*"]
      120 MOVE                             R11 R7
      121 FASTCALL1                        TYPE R8 ; [+3]
      122 MOVE                             R13 R8
      123 GETIMPORT                        R12 K3 [type]
      125 CALL                             R12 1 1
      126 FASTCALL1                        TOSTRING R8 ; [+3]
      127 MOVE                             R14 R8
      128 GETIMPORT                        R13 K7 [tostring]
      130 CALL                             R13 1 1
      131 NAMECALL                         R9 R9 K8 ["format"]
      133 CALL                             R9 4 1
      134 GETIMPORT                        R10 K10 [warn]
      136 LOADK                            R11 K11 ["[UpdatePlanTool]"]
      137 MOVE                             R12 R9
      138 CALL                             R10 2 0
      139 GETUPVAL                         R10 0
      140 CALL                             R10 0 1
      141 MOVE                             R12 R9
      142 NAMECALL                         R10 R10 K12 ["addText"]
      144 CALL                             R10 2 1
      145 LOADB                            R12 1
      146 NAMECALL                         R10 R10 K13 ["setError"]
      148 CALL                             R10 2 1
      149 NAMECALL                         R10 R10 K14 ["build"]
      151 CALL                             R10 1 -1
      152 RETURN                           R10 -1
      153 FORGLOOP                         R4 2 ; [-42]
      155 GETUPVAL                         R4 1
      156 MOVE                             R5 R1
      157 CALL                             R4 1 1
      158 MOVE                             R7 R2
      159 NAMECALL                         R5 R4 K20 ["getPlanById"]
      161 CALL                             R5 2 1
      162 JUMPIF                           R5 ; [+23]
      163 GETIMPORT                        R6 K10 [warn]
      165 LOADK                            R7 K21 ["[UpdatePlanTool] No plan found with ID:"]
      166 MOVE                             R8 R2
      167 CALL                             R6 2 0
      168 GETUPVAL                         R6 0
      169 CALL                             R6 0 1
      170 LOADK                            R8 K22 ["No plan found with ID \"%*\". The plan may have been created in a different session or thread."]
      171 MOVE                             R10 R2
      172 NAMECALL                         R8 R8 K8 ["format"]
      174 CALL                             R8 2 1
      175 NAMECALL                         R6 R6 K12 ["addText"]
      177 CALL                             R6 2 1
      178 LOADB                            R8 1
      179 NAMECALL                         R6 R6 K13 ["setError"]
      181 CALL                             R6 2 1
      182 NAMECALL                         R6 R6 K14 ["build"]
      184 CALL                             R6 1 -1
      185 RETURN                           R6 -1
      186 LOADNIL                          R6
      187 FASTCALL1                        TYPE R3 ; [+3]
      188 MOVE                             R8 R3
      189 GETIMPORT                        R7 K3 [type]
      191 CALL                             R7 1 1
      192 JUMPIFNOTEQKS                    R7 K15 ["table"] ; [+19]
      194 NEWTABLE                         R6 0 0
      196 MOVE                             R7 R3
      197 LOADNIL                          R8
      198 LOADNIL                          R9
      199 FORGPREP                         R7
      200 DUPTABLE                         R14 K26 [{["text"], ["state"] = "pending"}]
      201 SETTABLEKS                       R11 R14 K23 ["text"]
      203 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      205 MOVE                             R13 R6
      206 GETIMPORT                        R12 K28 [table.insert]
      208 CALL                             R12 2 0
      209 FORGLOOP                         R7 2 ; [-10]
      211 JUMP                             ; [+10]
      212 MOVE                             R9 R2
      213 NAMECALL                         R7 R4 K29 ["getLatestRevision"]
      215 CALL                             R7 2 1
      216 JUMPIFNOT                        R7 ; [+3]
      217 GETTABLEKS                       R6 R7 K1 ["todo"]
      219 JUMP                             ; [+2]
      220 NEWTABLE                         R6 0 0
      222 LOADB                            R7 0
      223 GETTABLEKS                       R9 R0 K30 ["title"]
      225 FASTCALL1                        TYPE R9 ; [+2]
      226 GETIMPORT                        R8 K3 [type]
      228 CALL                             R8 1 1
      229 JUMPIFEQKS                       R8 K4 ["string"] ; [+20]
      231 LOADB                            R7 0
      232 GETTABLEKS                       R9 R0 K31 ["summary"]
      234 FASTCALL1                        TYPE R9 ; [+2]
      235 GETIMPORT                        R8 K3 [type]
      237 CALL                             R8 1 1
      238 JUMPIFEQKS                       R8 K4 ["string"] ; [+11]
      240 GETTABLEKS                       R9 R0 K32 ["completeDescription"]
      242 FASTCALL1                        TYPE R9 ; [+2]
      243 GETIMPORT                        R8 K3 [type]
      245 CALL                             R8 1 1
      246 JUMPIFNOTEQKS                    R8 K4 ["string"] ; [+2]
      248 LOADB                            R7 0 +1
      249 LOADB                            R7 1
      250 JUMPIFNOT                        R7 ; [+13]
      251 FASTCALL1                        TYPE R3 ; [+3]
      252 MOVE                             R9 R3
      253 GETIMPORT                        R8 K3 [type]
      255 CALL                             R8 1 1
      256 JUMPIFNOTEQKS                    R8 K15 ["table"] ; [+96]
      258 MOVE                             R10 R2
      259 MOVE                             R11 R6
      260 NAMECALL                         R8 R4 K33 ["updateTodosForPlan"]
      262 CALL                             R8 3 0
      263 JUMP                             ; [+89]
      264 MOVE                             R10 R2
      265 NAMECALL                         R8 R4 K29 ["getLatestRevision"]
      267 CALL                             R8 2 1
      268 NAMECALL                         R9 R4 K34 ["getPlan"]
      270 CALL                             R9 1 1
      271 JUMPIFNOT                        R8 ; [+3]
      272 GETTABLEKS                       R10 R8 K30 ["title"]
      274 JUMP                             ; [+5]
      275 JUMPIFNOT                        R9 ; [+3]
      276 GETTABLEKS                       R10 R9 K30 ["title"]
      278 JUMP                             ; [+1]
      279 LOADK                            R10 K35 [""]
      280 JUMPIFNOT                        R8 ; [+3]
      281 GETTABLEKS                       R11 R8 K31 ["summary"]
      283 JUMP                             ; [+5]
      284 JUMPIFNOT                        R9 ; [+3]
      285 GETTABLEKS                       R11 R9 K31 ["summary"]
      287 JUMP                             ; [+1]
      288 LOADK                            R11 K35 [""]
      289 JUMPIFNOT                        R8 ; [+3]
      290 GETTABLEKS                       R12 R8 K32 ["completeDescription"]
      292 JUMP                             ; [+5]
      293 JUMPIFNOT                        R9 ; [+3]
      294 GETTABLEKS                       R12 R9 K32 ["completeDescription"]
      296 JUMP                             ; [+1]
      297 LOADK                            R12 K35 [""]
      298 DUPTABLE                         R13 K37 [{"title", "summary", "completeDescription", "todo", "createdAt"}]
      299 GETTABLEKS                       R16 R0 K30 ["title"]
      301 FASTCALL1                        TYPE R16 ; [+2]
      302 GETIMPORT                        R15 K3 [type]
      304 CALL                             R15 1 1
      305 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      307 GETTABLEKS                       R14 R0 K30 ["title"]
      309 JUMP                             ; [+1]
      310 MOVE                             R14 R10
      311 SETTABLEKS                       R14 R13 K30 ["title"]
      313 GETTABLEKS                       R16 R0 K31 ["summary"]
      315 FASTCALL1                        TYPE R16 ; [+2]
      316 GETIMPORT                        R15 K3 [type]
      318 CALL                             R15 1 1
      319 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      321 GETTABLEKS                       R14 R0 K31 ["summary"]
      323 JUMP                             ; [+1]
      324 MOVE                             R14 R11
      325 SETTABLEKS                       R14 R13 K31 ["summary"]
      327 GETTABLEKS                       R16 R0 K32 ["completeDescription"]
      329 FASTCALL1                        TYPE R16 ; [+2]
      330 GETIMPORT                        R15 K3 [type]
      332 CALL                             R15 1 1
      333 JUMPIFNOTEQKS                    R15 K4 ["string"] ; [+4]
      335 GETTABLEKS                       R14 R0 K32 ["completeDescription"]
      337 JUMP                             ; [+1]
      338 MOVE                             R14 R12
      339 SETTABLEKS                       R14 R13 K32 ["completeDescription"]
      341 SETTABLEKS                       R6 R13 K1 ["todo"]
      343 GETIMPORT                        R14 K40 [os.time]
      345 CALL                             R14 0 1
      346 SETTABLEKS                       R14 R13 K36 ["createdAt"]
      348 MOVE                             R16 R2
      349 MOVE                             R17 R13
      350 NAMECALL                         R14 R4 K41 ["addRevision"]
      352 CALL                             R14 3 0
      353 JUMPIFNOT                        R6 ; [+2]
      354 LENGTH                           R8 R6
      355 JUMP                             ; [+1]
      356 LOADN                            R8 0
      357 GETUPVAL                         R9 0
      358 CALL                             R9 0 1
      359 LOADK                            R11 K42 ["Updated plan with %* todo items."]
      360 MOVE                             R13 R8
      361 NAMECALL                         R11 R11 K8 ["format"]
      363 CALL                             R11 2 1
      364 NAMECALL                         R9 R9 K12 ["addText"]
      366 CALL                             R9 2 1
      367 NAMECALL                         R9 R9 K14 ["build"]
      369 CALL                             R9 1 -1
      370 RETURN                           R9 -1

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

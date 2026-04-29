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
       11 JUMPIFNOTEQKS                    R7 K2 ["string"] ; [+13]
       13 DUPTABLE                         R9 K5 [{"text", "state"}]
       14 SETTABLEKS                       R6 R9 K3 ["text"]
       16 LOADK                            R10 K6 ["pending"]
       17 SETTABLEKS                       R10 R9 K4 ["state"]
       19 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       21 MOVE                             R8 R1
       22 GETIMPORT                        R7 K9 [table.insert]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-20]
       27 RETURN                           R1 1

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
      161 DUPTABLE                         R3 K19 [{"status"}]
      162 LOADK                            R4 K20 ["presented"]
      163 SETTABLEKS                       R4 R3 K18 ["status"]
      165 GETUPVAL                         R5 0
      166 GETTABLEKS                       R4 R5 K21 ["toString"]
      168 MOVE                             R5 R3
      169 CALL                             R4 1 1
      170 GETUPVAL                         R5 1
      171 CALL                             R5 0 1
      172 MOVE                             R7 R4
      173 NAMECALL                         R5 R5 K22 ["addText"]
      175 CALL                             R5 2 1
      176 MOVE                             R7 R3
      177 NAMECALL                         R5 R5 K23 ["setStructuredContent"]
      179 CALL                             R5 2 1
      180 NAMECALL                         R5 R5 K24 ["build"]
      182 CALL                             R5 1 -1
      183 RETURN                           R5 -1

PROTO_2:
        0 DUPTABLE                         R0 K6 [{"type", "title", "summary", "completeDescription", "todo", "status"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K7 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K8 [""]
        7 SETTABLEKS                       R1 R0 K1 ["title"]
        9 LOADK                            R1 K8 [""]
       10 SETTABLEKS                       R1 R0 K2 ["summary"]
       12 LOADK                            R1 K8 [""]
       13 SETTABLEKS                       R1 R0 K3 ["completeDescription"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K4 ["todo"]
       19 LOADK                            R1 K9 ["preparing"]
       20 SETTABLEKS                       R1 R0 K5 ["status"]
       22 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["title"]
        3 FASTCALL1                        TYPE R3 ; [+2]
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["title"]
       12 JUMP                             ; [+1]
       13 LOADK                            R1 K4 [""]
       14 SETTABLEKS                       R1 R0 K0 ["title"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K5 ["summary"]
       19 FASTCALL1                        TYPE R3 ; [+2]
       20 GETIMPORT                        R2 K2 [type]
       22 CALL                             R2 1 1
       23 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R1 R2 K5 ["summary"]
       28 JUMP                             ; [+1]
       29 LOADK                            R1 K4 [""]
       30 SETTABLEKS                       R1 R0 K5 ["summary"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K6 ["completeDescription"]
       35 FASTCALL1                        TYPE R3 ; [+2]
       36 GETIMPORT                        R2 K2 [type]
       38 CALL                             R2 1 1
       39 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+5]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R1 R2 K6 ["completeDescription"]
       44 JUMP                             ; [+1]
       45 LOADK                            R1 K4 [""]
       46 SETTABLEKS                       R1 R0 K6 ["completeDescription"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K7 ["todo"]
       51 FASTCALL1                        TYPE R3 ; [+2]
       52 GETIMPORT                        R2 K2 [type]
       54 CALL                             R2 1 1
       55 JUMPIFNOTEQKS                    R2 K8 ["table"] ; [+7]
       57 GETUPVAL                         R1 1
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R2 R3 K7 ["todo"]
       61 CALL                             R1 1 1
       62 JUMP                             ; [+2]
       63 NEWTABLE                         R1 0 0
       65 SETTABLEKS                       R1 R0 K7 ["todo"]
       67 LOADK                            R1 K9 ["awaiting_decision"]
       68 SETTABLEKS                       R1 R0 K10 ["status"]
       70 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R2 K1 ["plan"]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K3 [type]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K4 ["table"] ; [+3]
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          UPVAL U0
       19 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isError"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 LOADK                            R1 K1 ["error"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 DUPCLOSURE                       R2 K1 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K2 ["define"]
        7 CALL                             R3 0 1
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R5 R6 K3 ["FinalizePlan"]
       11 NAMECALL                         R3 R3 K4 ["setName"]
       13 CALL                             R3 2 1
       14 LOADK                            R5 K5 ["Finalizes a structured plan with markdown details and todos.\nUse this tool to present the final structured plan when ready.\n\nThe tool returns immediately after rendering the plan UI.\nThe tool result is JSON: {\"status\":\"presented\"}.\n\nEnsure that all content is human-readable and editable by the user.\n"]
       15 NAMECALL                         R3 R3 K6 ["setDescription"]
       17 CALL                             R3 2 1
       18 LOADK                            R5 K7 ["plan"]
       19 DUPTABLE                         R6 K12 [{"type", "description", "properties", "required"}]
       20 LOADK                            R7 K13 ["object"]
       21 SETTABLEKS                       R7 R6 K8 ["type"]
       23 LOADK                            R7 K14 ["The structured final plan."]
       24 SETTABLEKS                       R7 R6 K9 ["description"]
       26 DUPTABLE                         R7 K19 [{"completeDescription", "todo", "summary", "title"}]
       27 DUPTABLE                         R8 K20 [{"type", "description"}]
       28 LOADK                            R9 K21 ["string"]
       29 SETTABLEKS                       R9 R8 K8 ["type"]
       31 LOADK                            R9 K22 ["Markdown describing all plan details."]
       32 SETTABLEKS                       R9 R8 K9 ["description"]
       34 SETTABLEKS                       R8 R7 K15 ["completeDescription"]
       36 DUPTABLE                         R8 K24 [{"type", "description", "items"}]
       37 LOADK                            R9 K25 ["array"]
       38 SETTABLEKS                       R9 R8 K8 ["type"]
       40 LOADK                            R9 K26 ["A list of todo items for the plan. This should be succint and to the point. Try to keep the list under 5 items long."]
       41 SETTABLEKS                       R9 R8 K9 ["description"]
       43 DUPTABLE                         R9 K20 [{"type", "description"}]
       44 LOADK                            R10 K21 ["string"]
       45 SETTABLEKS                       R10 R9 K8 ["type"]
       47 LOADK                            R10 K27 ["Todo text."]
       48 SETTABLEKS                       R10 R9 K9 ["description"]
       50 SETTABLEKS                       R9 R8 K23 ["items"]
       52 SETTABLEKS                       R8 R7 K16 ["todo"]
       54 DUPTABLE                         R8 K20 [{"type", "description"}]
       55 LOADK                            R9 K21 ["string"]
       56 SETTABLEKS                       R9 R8 K8 ["type"]
       58 LOADK                            R9 K28 ["A one sentence summary of the plan."]
       59 SETTABLEKS                       R9 R8 K9 ["description"]
       61 SETTABLEKS                       R8 R7 K17 ["summary"]
       63 DUPTABLE                         R8 K20 [{"type", "description"}]
       64 LOADK                            R9 K21 ["string"]
       65 SETTABLEKS                       R9 R8 K8 ["type"]
       67 LOADK                            R9 K29 ["A short 2 to 6 word title for the plan."]
       68 SETTABLEKS                       R9 R8 K9 ["description"]
       70 SETTABLEKS                       R8 R7 K18 ["title"]
       72 SETTABLEKS                       R7 R6 K10 ["properties"]
       74 NEWTABLE                         R7 0 4
       76 LOADK                            R8 K15 ["completeDescription"]
       77 LOADK                            R9 K16 ["todo"]
       78 LOADK                            R10 K17 ["summary"]
       79 LOADK                            R11 K18 ["title"]
       80 SETLIST                          R7 R8 4 [1]
       82 SETTABLEKS                       R7 R6 K11 ["required"]
       84 NAMECALL                         R3 R3 K30 ["addArgument"]
       86 CALL                             R3 3 1
       87 MOVE                             R5 R2
       88 NAMECALL                         R3 R3 K31 ["setHandler"]
       90 CALL                             R3 2 1
       91 NAMECALL                         R3 R3 K32 ["build"]
       93 CALL                             R3 1 1
       94 DUPTABLE                         R4 K36 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       95 DUPCLOSURE                       R5 K37 [PROTO_2]
       96 CAPTURE                          UPVAL U4
       97 SETTABLEKS                       R5 R4 K33 ["transformInitialContent"]
       99 DUPCLOSURE                       R5 K38 [PROTO_4]
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R5 R4 K34 ["getTransformPreExecuteFn"]
      103 DUPCLOSURE                       R5 K39 [PROTO_6]
      104 SETTABLEKS                       R5 R4 K35 ["getTransformResultFn"]
      106 DUPTABLE                         R5 K43 [{"definition", "contentWidgets", "streamTransform"}]
      107 SETTABLEKS                       R3 R5 K40 ["definition"]
      109 NEWTABLE                         R6 0 1
      111 GETUPVAL                         R7 4
      112 SETLIST                          R6 R7 1 [1]
      114 SETTABLEKS                       R6 R5 K41 ["contentWidgets"]
      116 SETTABLEKS                       R4 R5 K42 ["streamTransform"]
      118 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R3 K8 ["FinalizePlanContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R5 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["ToolUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K15 ["ToolNames"]
       39 GETTABLEKS                       R7 R2 K13 ["Util"]
       41 GETTABLEKS                       R6 R7 K16 ["ToolBuilder"]
       43 GETTABLEKS                       R8 R2 K13 ["Util"]
       45 GETTABLEKS                       R7 R8 K17 ["ToolResult"]
       47 DUPCLOSURE                       R8 K18 [PROTO_7]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R1
       53 RETURN                           R8 1

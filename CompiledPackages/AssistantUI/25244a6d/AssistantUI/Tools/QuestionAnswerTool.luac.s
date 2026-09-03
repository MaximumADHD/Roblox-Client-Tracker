PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["get"]
        3 CALL                             R3 0 1
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 JUMPIFNOT                        R1 ; [+17]
        7 MOVE                             R6 R1
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 GETTABLEKS                       R11 R10 K1 ["chosenOption"]
       13 JUMPIFNOT                        R11 ; [+7]
       14 GETTABLEKS                       R11 R10 K1 ["chosenOption"]
       16 GETTABLEKS                       R11 R11 K2 ["isFromUser"]
       18 JUMPIFNOT                        R11 ; [+2]
       19 ADDK                             R4 R4 K3 [1]
       20 JUMP                             ; [+1]
       21 ADDK                             R5 R5 K3 [1]
       22 FORGLOOP                         R6 2 ; [-12]
       24 GETTABLEKS                       R6 R3 K4 ["EventLogger"]
       26 GETTABLEKS                       R7 R6 K5 ["logQuestionAnswerCompleted"]
       28 DUPTABLE                         R8 K16 [{"messageGuid", "sessionId", "threadId", "assistantMode", "dismissed", "questionCount", "questionsJson", "answersJson", "customAnswerCount", "predefinedAnswerCount"}]
       29 JUMPIFNOT                        R2 ; [+3]
       30 GETTABLEKS                       R9 R2 K6 ["messageGuid"]
       32 JUMPIF                           R9 ; [+1]
       33 LOADK                            R9 K17 [""]
       34 SETTABLEKS                       R9 R8 K6 ["messageGuid"]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETTABLEKS                       R9 R2 K7 ["sessionId"]
       39 JUMPIF                           R9 ; [+1]
       40 LOADK                            R9 K17 [""]
       41 SETTABLEKS                       R9 R8 K7 ["sessionId"]
       43 MOVE                             R9 R2
       44 JUMPIFNOT                        R9 ; [+2]
       45 GETTABLEKS                       R9 R2 K8 ["threadId"]
       47 SETTABLEKS                       R9 R8 K8 ["threadId"]
       49 MOVE                             R9 R2
       50 JUMPIFNOT                        R9 ; [+2]
       51 GETTABLEKS                       R9 R2 K9 ["assistantMode"]
       53 SETTABLEKS                       R9 R8 K9 ["assistantMode"]
       55 NOT                              R9 R1
       56 SETTABLEKS                       R9 R8 K10 ["dismissed"]
       58 LENGTH                           R9 R0
       59 SETTABLEKS                       R9 R8 K11 ["questionCount"]
       61 GETTABLEKS                       R9 R3 K18 ["json"]
       63 GETTABLEKS                       R9 R9 K19 ["encodeAsync"]
       65 MOVE                             R10 R0
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K12 ["questionsJson"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETTABLEKS                       R9 R3 K18 ["json"]
       72 GETTABLEKS                       R9 R9 K19 ["encodeAsync"]
       74 MOVE                             R10 R1
       75 CALL                             R9 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R9
       78 SETTABLEKS                       R9 R8 K13 ["answersJson"]
       80 SETTABLEKS                       R4 R8 K14 ["customAnswerCount"]
       82 SETTABLEKS                       R5 R8 K15 ["predefinedAnswerCount"]
       84 CALL                             R7 1 0
       85 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Field"]
        3 GETTABLEKS                       R3 R3 K1 ["Answers"]
        5 NAMECALL                         R1 R0 K2 ["Get"]
        7 CALL                             R1 2 1
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R5 R1
       10 GETIMPORT                        R4 K4 [typeof]
       12 CALL                             R4 1 1
       13 JUMPIFEQKS                       R4 K5 ["string"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       19 LOADK                            R4 K6 ["Answers must be a JSON string"]
       20 GETIMPORT                        R2 K8 [assert]
       22 CALL                             R2 2 0
       23 GETUPVAL                         R2 1
       24 MOVE                             R4 R1
       25 NAMECALL                         R2 R2 K9 ["JSONDecode"]
       27 CALL                             R2 2 1
       28 FASTCALL1                        TYPEOF R2 ; [+3]
       29 MOVE                             R6 R2
       30 GETIMPORT                        R5 K4 [typeof]
       32 CALL                             R5 1 1
       33 JUMPIFEQKS                       R5 K10 ["table"] ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 FASTCALL2K                       ASSERT R4 K11 ; [+4]
       39 LOADK                            R5 K11 ["Answers must decode to a table"]
       40 GETIMPORT                        R3 K8 [assert]
       42 CALL                             R3 2 0
       43 MOVE                             R3 R2
       44 LOADNIL                          R4
       45 LOADNIL                          R5
       46 FORGPREP                         R3
       47 FASTCALL1                        TYPEOF R7 ; [+3]
       48 MOVE                             R11 R7
       49 GETIMPORT                        R10 K4 [typeof]
       51 CALL                             R10 1 1
       52 JUMPIFEQKS                       R10 K10 ["table"] ; [+2]
       54 LOADB                            R9 0 +1
       55 LOADB                            R9 1
       56 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       58 LOADK                            R10 K12 ["Answer must be a table"]
       59 GETIMPORT                        R8 K8 [assert]
       61 CALL                             R8 2 0
       62 GETTABLEKS                       R11 R7 K13 ["question"]
       64 FASTCALL1                        TYPEOF R11 ; [+2]
       65 GETIMPORT                        R10 K4 [typeof]
       67 CALL                             R10 1 1
       68 JUMPIFEQKS                       R10 K5 ["string"] ; [+2]
       70 LOADB                            R9 0 +1
       71 LOADB                            R9 1
       72 FASTCALL2K                       ASSERT R9 K14 ; [+4]
       74 LOADK                            R10 K14 ["question must be a string"]
       75 GETIMPORT                        R8 K8 [assert]
       77 CALL                             R8 2 0
       78 GETTABLEKS                       R8 R7 K15 ["chosenOption"]
       80 FASTCALL1                        TYPEOF R8 ; [+3]
       81 MOVE                             R12 R8
       82 GETIMPORT                        R11 K4 [typeof]
       84 CALL                             R11 1 1
       85 JUMPIFEQKS                       R11 K10 ["table"] ; [+2]
       87 LOADB                            R10 0 +1
       88 LOADB                            R10 1
       89 FASTCALL2K                       ASSERT R10 K16 ; [+4]
       91 LOADK                            R11 K16 ["chosenOption must be a table"]
       92 GETIMPORT                        R9 K8 [assert]
       94 CALL                             R9 2 0
       95 GETTABLEKS                       R12 R8 K17 ["optionText"]
       97 FASTCALL1                        TYPEOF R12 ; [+2]
       98 GETIMPORT                        R11 K4 [typeof]
      100 CALL                             R11 1 1
      101 JUMPIFEQKS                       R11 K5 ["string"] ; [+2]
      103 LOADB                            R10 0 +1
      104 LOADB                            R10 1
      105 FASTCALL2K                       ASSERT R10 K18 ; [+4]
      107 LOADK                            R11 K18 ["optionText must be a string"]
      108 GETIMPORT                        R9 K8 [assert]
      110 CALL                             R9 2 0
      111 GETTABLEKS                       R12 R8 K19 ["clarificationText"]
      113 FASTCALL1                        TYPEOF R12 ; [+2]
      114 GETIMPORT                        R11 K4 [typeof]
      116 CALL                             R11 1 1
      117 JUMPIFEQKS                       R11 K5 ["string"] ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 FASTCALL2K                       ASSERT R10 K20 ; [+4]
      123 LOADK                            R11 K20 ["clarificationText must be a string"]
      124 GETIMPORT                        R9 K8 [assert]
      126 CALL                             R9 2 0
      127 GETTABLEKS                       R9 R8 K21 ["isFromUser"]
      129 LOADB                            R11 1
      130 JUMPIFEQKNIL                     R9 ; [+10]
      132 FASTCALL1                        TYPEOF R9 ; [+3]
      133 MOVE                             R13 R9
      134 GETIMPORT                        R12 K4 [typeof]
      136 CALL                             R12 1 1
      137 JUMPIFEQKS                       R12 K22 ["boolean"] ; [+2]
      139 LOADB                            R11 0 +1
      140 LOADB                            R11 1
      141 FASTCALL2K                       ASSERT R11 K23 ; [+4]
      143 LOADK                            R12 K23 ["isFromUser must be a boolean or nil"]
      144 GETIMPORT                        R10 K8 [assert]
      146 CALL                             R10 2 0
      147 FORGLOOP                         R3 2 ; [-101]
      149 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Field"]
        3 GETTABLEKS                       R3 R3 K1 ["Submitted"]
        5 NAMECALL                         R1 R0 K2 ["Wait"]
        7 CALL                             R1 2 1
        8 JUMPIFEQKB                       R1 TRUE ; [+3]
       10 LOADNIL                          R2
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantACPFixPendingToolCall"]
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["find"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Scope"]
       10 MOVE                             R4 R1
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+3]
       13 NAMECALL                         R3 R2 K3 ["Destroy"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K4 ["new"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K2 ["Scope"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K6 [pcall]
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R2
       28 CALL                             R3 2 2
       29 NAMECALL                         R5 R2 K3 ["Destroy"]
       31 CALL                             R5 1 0
       32 JUMPIF                           R3 ; [+5]
       33 GETIMPORT                        R5 K8 [error]
       35 MOVE                             R6 R4
       36 LOADN                            R7 0
       37 CALL                             R5 2 0
       38 RETURN                           R4 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["toolId"]
        3 JUMP                             ; [+1]
        4 LOADNIL                          R3
        5 LOADB                            R5 0
        6 FASTCALL1                        TYPEOF R3 ; [+3]
        7 MOVE                             R7 R3
        8 GETIMPORT                        R6 K2 [typeof]
       10 CALL                             R6 1 1
       11 JUMPIFNOTEQKS                    R6 K3 ["string"] ; [+5]
       13 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       19 LOADK                            R6 K5 ["QuestionAnswerTool requires toolUseId"]
       20 GETIMPORT                        R4 K7 [assert]
       22 CALL                             R4 2 0
       23 GETTABLEKS                       R4 R0 K8 ["questions"]
       25 JUMPIFNOT                        R4 ; [+3]
       26 LENGTH                           R5 R4
       27 JUMPIFNOTEQKN                    R5 K9 [0] ; [+6]
       29 GETIMPORT                        R5 K11 [error]
       31 LOADK                            R6 K12 ["At least one question is required"]
       32 LOADN                            R7 0
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 0
       35 LOADNIL                          R6
       36 MOVE                             R7 R3
       37 CALL                             R5 2 1
       38 GETUPVAL                         R6 1
       39 MOVE                             R7 R4
       40 MOVE                             R8 R5
       41 MOVE                             R9 R1
       42 CALL                             R6 3 0
       43 JUMPIF                           R5 ; [+14]
       44 GETUPVAL                         R6 2
       45 CALL                             R6 0 1
       46 LOADK                            R8 K13 ["The user dismissed the questions."]
       47 NAMECALL                         R6 R6 K14 ["addText"]
       49 CALL                             R6 2 1
       50 DUPTABLE                         R8 K17 [{["dismissed"] = True}]
       51 NAMECALL                         R6 R6 K18 ["setStructuredContent"]
       53 CALL                             R6 2 1
       54 NAMECALL                         R6 R6 K19 ["build"]
       56 CALL                             R6 1 -1
       57 RETURN                           R6 -1
       58 GETUPVAL                         R6 3
       59 MOVE                             R8 R5
       60 NAMECALL                         R6 R6 K20 ["JSONEncode"]
       62 CALL                             R6 2 1
       63 GETUPVAL                         R7 2
       64 CALL                             R7 0 1
       65 MOVE                             R9 R6
       66 NAMECALL                         R7 R7 K14 ["addText"]
       68 CALL                             R7 2 1
       69 DUPTABLE                         R9 K23 [{["dismissed"] = False, ["answers"]}]
       70 SETTABLEKS                       R5 R9 K22 ["answers"]
       72 NAMECALL                         R7 R7 K18 ["setStructuredContent"]
       74 CALL                             R7 2 1
       75 NAMECALL                         R7 R7 K19 ["build"]
       77 CALL                             R7 1 -1
       78 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["QuestionAnswerTool_waitForAnswersAsync"]
        3 DUPCLOSURE                       R5 K2 [PROTO_3]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R2 3 1
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U4
       14 CAPTURE                          UPVAL U5
       15 CAPTURE                          UPVAL U6
       16 GETUPVAL                         R4 7
       17 GETTABLEKS                       R4 R4 K4 ["replaceTokens"]
       19 LOADK                            R5 K5 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n- Do NOT ask about runtime behaviors, interactivity, or scripted functionality (e.g. \"should it be drivable?\", \"should it be clickable?\", \"should players be able to sit in it?\"). The generation tools ({ToolNames.PrimitiveGen}, {ToolNames.MeshGen}) produce static visual models only. Focus questions on appearance, style, and scope instead.\n\n## Tool ambiguity guidance for 3D object creation\nWhen there is tool ambiguity for creating a 3D object, model, or physical thing, always include generation tools as options. Typical tool-choice options for 3D creation requests:\n- **{ToolNames.PrimitiveGen}** — Generate a procedural model built from primitive parts with configurable attributes (recommended for blocky/stylized objects, parametric designs)\n- **{ToolNames.MeshGen}** — Generate a textured mesh using AI (recommended for organic, detailed, or realistic objects)\n- **Creator Store** — Insert a pre-built model from the marketplace\n- **Build from Parts with scripts** — Manually assemble from primitive parts using {ToolNames.ExecuteLuau}\n\n## Internal Classification Examples\n\nUser: \"create a car\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: NO — a single car is clear.\n- Target ambiguity: NO — \"car\" is clear.\n- Style ambiguity: YES — realistic, low-poly, cartoony?\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and style.\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options), scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 8
       22 GETTABLEKS                       R5 R5 K6 ["define"]
       24 CALL                             R5 0 1
       25 GETUPVAL                         R7 7
       26 GETTABLEKS                       R7 R7 K7 ["QuestionAnswer"]
       28 NAMECALL                         R5 R5 K8 ["setName"]
       30 CALL                             R5 2 1
       31 MOVE                             R7 R4
       32 NAMECALL                         R5 R5 K9 ["setDescription"]
       34 CALL                             R5 2 1
       35 LOADK                            R7 K10 ["questions"]
       36 DUPTABLE                         R8 K16 [{["type"] = "array", ["description"] = "An array of questions to present to the user.", ["items"]}]
       37 DUPTABLE                         R9 K20 [{["type"] = "object", ["properties"], ["required"]}]
       38 DUPTABLE                         R10 K23 [{"question", "options"}]
       39 DUPTABLE                         R11 K26 [{["type"] = "string", ["description"] = "The question text to display."}]
       40 SETTABLEKS                       R11 R10 K21 ["question"]
       42 DUPTABLE                         R11 K28 [{["type"] = "array", ["description"] = "Optional predefined answer choices.", ["items"]}]
       43 DUPTABLE                         R12 K20 [{["type"] = "object", ["properties"], ["required"]}]
       44 DUPTABLE                         R13 K31 [{"optionText", "clarificationText"}]
       45 DUPTABLE                         R14 K33 [{["type"] = "string", ["description"] = "The display text for this option."}]
       46 SETTABLEKS                       R14 R13 K29 ["optionText"]
       48 DUPTABLE                         R14 K35 [{["type"] = "string", ["description"] = "Additional context or explanation for this option."}]
       49 SETTABLEKS                       R14 R13 K30 ["clarificationText"]
       51 SETTABLEKS                       R13 R12 K18 ["properties"]
       53 NEWTABLE                         R13 0 2
       55 LOADK                            R14 K29 ["optionText"]
       56 LOADK                            R15 K30 ["clarificationText"]
       57 SETLIST                          R13 R14 2 [1]
       59 SETTABLEKS                       R13 R12 K19 ["required"]
       61 SETTABLEKS                       R12 R11 K15 ["items"]
       63 SETTABLEKS                       R11 R10 K22 ["options"]
       65 SETTABLEKS                       R10 R9 K18 ["properties"]
       67 NEWTABLE                         R10 0 1
       69 LOADK                            R11 K21 ["question"]
       70 SETLIST                          R10 R11 1 [1]
       72 SETTABLEKS                       R10 R9 K19 ["required"]
       74 SETTABLEKS                       R9 R8 K15 ["items"]
       76 NAMECALL                         R5 R5 K36 ["addArgument"]
       78 CALL                             R5 3 1
       79 DUPTABLE                         R7 K45 [{["title"] = "Question Answer", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       80 NAMECALL                         R5 R5 K46 ["setAnnotations"]
       82 CALL                             R5 2 1
       83 MOVE                             R7 R3
       84 NAMECALL                         R5 R5 K47 ["setHandler"]
       86 CALL                             R5 2 1
       87 NAMECALL                         R5 R5 K48 ["build"]
       89 CALL                             R5 1 1
       90 DUPTABLE                         R6 K50 [{"definition"}]
       91 SETTABLEKS                       R5 R6 K49 ["definition"]
       93 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R3 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Util"]
       29 GETTABLEKS                       R5 R5 K14 ["InstanceChannel"]
       31 GETTABLEKS                       R5 R5 K14 ["InstanceChannel"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Parent"]
       38 GETTABLEKS                       R6 R6 K16 ["ModelContextProtocol"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K13 ["Util"]
       45 GETTABLEKS                       R7 R7 K17 ["QuestionAnswer"]
       47 GETTABLEKS                       R7 R7 K18 ["QuestionAnswerChannel"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K19 ["Components"]
       54 GETTABLEKS                       R8 R8 K17 ["QuestionAnswer"]
       56 GETTABLEKS                       R8 R8 K20 ["QuestionAnswerTypes"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K21 ["Tools"]
       63 GETTABLEKS                       R9 R9 K22 ["ToolTypes"]
       65 CALL                             R8 1 1
       66 GETTABLEKS                       R9 R5 K13 ["Util"]
       68 GETTABLEKS                       R9 R9 K23 ["ToolBuilder"]
       70 GETTABLEKS                       R10 R5 K13 ["Util"]
       72 GETTABLEKS                       R10 R10 K24 ["ToolResult"]
       74 GETTABLEKS                       R11 R8 K25 ["ToolNames"]
       76 DUPCLOSURE                       R12 K26 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 DUPCLOSURE                       R13 K27 [PROTO_1]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R1
       81 DUPCLOSURE                       R14 K28 [PROTO_2]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R13
       84 DUPCLOSURE                       R15 K29 [PROTO_5]
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R12
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R9
       94 RETURN                           R15 1

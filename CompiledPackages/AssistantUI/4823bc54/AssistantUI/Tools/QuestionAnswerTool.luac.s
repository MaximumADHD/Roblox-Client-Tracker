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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getContentHooks"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["editContent"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [coroutine.status]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+6]
        6 GETIMPORT                        R1 K6 [task.spawn]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [coroutine.status]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 1
        4 JUMPIFNOTEQKS                    R0 K3 ["suspended"] ; [+6]
        6 GETIMPORT                        R0 K6 [task.spawn]
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 SETTABLEKS                       R1 R0 K0 ["onSubmitAnswers"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K1 ["onDismiss"]
        8 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+2]
        2 GETTABLEKS                       R2 R1 K0 ["contentId"]
        4 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        6 MOVE                             R4 R2
        7 LOADK                            R5 K1 ["QuestionAnswerTool requires contentId in meta"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K4 ["questions"]
       13 JUMPIFNOT                        R3 ; [+3]
       14 LENGTH                           R4 R3
       15 JUMPIFNOTEQKN                    R4 K5 [0] ; [+6]
       17 GETIMPORT                        R4 K7 [error]
       19 LOADK                            R5 K8 ["At least one question is required"]
       20 LOADN                            R6 0
       21 CALL                             R4 2 0
       22 GETIMPORT                        R4 K11 [coroutine.running]
       24 CALL                             R4 0 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R4
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K12 ["getContentHooks"]
       33 MOVE                             R8 R2
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R7 K13 ["editContent"]
       37 MOVE                             R9 R6
       38 CALL                             R8 1 0
       39 GETIMPORT                        R6 K15 [coroutine.yield]
       41 CALL                             R6 0 1
       42 GETUPVAL                         R7 1
       43 MOVE                             R8 R3
       44 MOVE                             R9 R6
       45 MOVE                             R10 R1
       46 CALL                             R7 3 0
       47 JUMPIF                           R6 ; [+14]
       48 GETUPVAL                         R7 2
       49 CALL                             R7 0 1
       50 LOADK                            R9 K16 ["The user dismissed the questions."]
       51 NAMECALL                         R7 R7 K17 ["addText"]
       53 CALL                             R7 2 1
       54 DUPTABLE                         R9 K20 [{["dismissed"] = True}]
       55 NAMECALL                         R7 R7 K21 ["setStructuredContent"]
       57 CALL                             R7 2 1
       58 NAMECALL                         R7 R7 K22 ["build"]
       60 CALL                             R7 1 -1
       61 RETURN                           R7 -1
       62 GETUPVAL                         R7 3
       63 MOVE                             R9 R6
       64 NAMECALL                         R7 R7 K23 ["JSONEncode"]
       66 CALL                             R7 2 1
       67 GETUPVAL                         R8 2
       68 CALL                             R8 0 1
       69 MOVE                             R10 R7
       70 NAMECALL                         R8 R8 K17 ["addText"]
       72 CALL                             R8 2 1
       73 DUPTABLE                         R10 K26 [{["dismissed"] = False, ["answers"]}]
       74 SETTABLEKS                       R6 R10 K25 ["answers"]
       76 NAMECALL                         R8 R8 K21 ["setStructuredContent"]
       78 CALL                             R8 2 1
       79 NAMECALL                         R8 R8 K22 ["build"]
       81 CALL                             R8 1 -1
       82 RETURN                           R8 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["EngineFeatureProceduralModel"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K3 [{"type", "status", "questions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K5 ["Status"]
        9 GETTABLEKS                       R1 R1 K6 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["status"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K2 ["questions"]
       17 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["questions"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Status"]
        6 GETTABLEKS                       R1 R1 K2 ["AwaitingAnswers"]
        8 SETTABLEKS                       R1 R0 K3 ["status"]
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R1 K1 ["questions"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Status"]
        3 GETTABLEKS                       R1 R1 K1 ["Completed"]
        5 SETTABLEKS                       R1 R0 K2 ["status"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K3 ["onSubmitAnswers"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K4 ["onDismiss"]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K5 ["isError"]
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K0 ["Status"]
       20 GETTABLEKS                       R1 R1 K6 ["Error"]
       22 SETTABLEKS                       R1 R0 K2 ["status"]
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 JUMPIFNOT                        R1 ; [+7]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K7 ["answeredQuestions"]
       30 LOADB                            R1 1
       31 SETTABLEKS                       R1 R0 K8 ["dismissed"]
       33 RETURN                           R0 0
       34 GETUPVAL                         R1 3
       35 JUMPIFNOT                        R1 ; [+6]
       36 GETUPVAL                         R1 3
       37 SETTABLEKS                       R1 R0 K7 ["answeredQuestions"]
       39 LOADNIL                          R1
       40 SETTABLEKS                       R1 R0 K8 ["dismissed"]
       42 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 LOADB                            R2 0
        3 LOADNIL                          R3
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+21]
       11 GETTABLEKS                       R5 R1 K4 ["dismissed"]
       13 FASTCALL1                        TYPEOF R5 ; [+2]
       14 GETIMPORT                        R4 K2 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K5 ["boolean"] ; [+3]
       19 GETTABLEKS                       R2 R1 K4 ["dismissed"]
       21 GETTABLEKS                       R5 R1 K6 ["answers"]
       23 FASTCALL1                        TYPEOF R5 ; [+2]
       24 GETIMPORT                        R4 K2 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+3]
       29 GETTABLEKS                       R3 R1 K6 ["answers"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          REF R2
       35 CAPTURE                          REF R3
       36 CLOSEUPVALS                      R2
       37 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["RESTRICTED_externalHooks"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R3 3
        8 GETTABLEKS                       R3 R3 K1 ["replaceTokens"]
       10 LOADK                            R4 K2 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n- Do NOT ask about runtime behaviors, interactivity, or scripted functionality (e.g. \"should it be drivable?\", \"should it be clickable?\", \"should players be able to sit in it?\"). The generation tools ({ToolNames.PrimitiveGen}, {ToolNames.MeshGen}) produce static visual models only. Focus questions on appearance, style, and scope instead.\n\n## Tool ambiguity guidance for 3D object creation\nWhen there is tool ambiguity for creating a 3D object, model, or physical thing, always include generation tools as options. Typical tool-choice options for 3D creation requests:\n- **{ToolNames.PrimitiveGen}** — Generate a procedural model built from primitive parts with configurable attributes (recommended for blocky/stylized objects, parametric designs)\n- **{ToolNames.MeshGen}** — Generate a textured mesh using AI (recommended for organic, detailed, or realistic objects)\n- **Creator Store** — Insert a pre-built model from the marketplace\n- **Build from Parts with scripts** — Manually assemble from primitive parts using {ToolNames.ExecuteLuau}\n\n## Internal Classification Examples\n\nUser: \"create a car\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: NO — a single car is clear.\n- Target ambiguity: NO — \"car\" is clear.\n- Style ambiguity: YES — realistic, low-poly, cartoony?\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and style.\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options), scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K1 ["replaceTokens"]
       15 LOADK                            R5 K3 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n\n## Internal Classification Examples\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated terrain?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice, scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       16 CALL                             R4 1 1
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R6 R6 K4 ["define"]
       24 CALL                             R6 0 1
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R8 R8 K5 ["QuestionAnswer"]
       28 NAMECALL                         R6 R6 K6 ["setName"]
       30 CALL                             R6 2 1
       31 GETUPVAL                         R9 4
       32 GETTABLEKS                       R9 R9 K7 ["EngineFeatureProceduralModel"]
       34 JUMPIFNOT                        R9 ; [+2]
       35 MOVE                             R8 R3
       36 JUMP                             ; [+1]
       37 MOVE                             R8 R4
       38 NAMECALL                         R6 R6 K8 ["setDescription"]
       40 CALL                             R6 2 1
       41 LOADK                            R8 K9 ["questions"]
       42 DUPTABLE                         R9 K15 [{["type"] = "array", ["description"] = "An array of questions to present to the user.", ["items"]}]
       43 DUPTABLE                         R10 K19 [{["type"] = "object", ["properties"], ["required"]}]
       44 DUPTABLE                         R11 K22 [{"question", "options"}]
       45 DUPTABLE                         R12 K25 [{["type"] = "string", ["description"] = "The question text to display."}]
       46 SETTABLEKS                       R12 R11 K20 ["question"]
       48 DUPTABLE                         R12 K27 [{["type"] = "array", ["description"] = "Optional predefined answer choices.", ["items"]}]
       49 DUPTABLE                         R13 K19 [{["type"] = "object", ["properties"], ["required"]}]
       50 DUPTABLE                         R14 K30 [{"optionText", "clarificationText"}]
       51 DUPTABLE                         R15 K32 [{["type"] = "string", ["description"] = "The display text for this option."}]
       52 SETTABLEKS                       R15 R14 K28 ["optionText"]
       54 DUPTABLE                         R15 K34 [{["type"] = "string", ["description"] = "Additional context or explanation for this option."}]
       55 SETTABLEKS                       R15 R14 K29 ["clarificationText"]
       57 SETTABLEKS                       R14 R13 K17 ["properties"]
       59 NEWTABLE                         R14 0 2
       61 LOADK                            R15 K28 ["optionText"]
       62 LOADK                            R16 K29 ["clarificationText"]
       63 SETLIST                          R14 R15 2 [1]
       65 SETTABLEKS                       R14 R13 K18 ["required"]
       67 SETTABLEKS                       R13 R12 K14 ["items"]
       69 SETTABLEKS                       R12 R11 K21 ["options"]
       71 SETTABLEKS                       R11 R10 K17 ["properties"]
       73 NEWTABLE                         R11 0 1
       75 LOADK                            R12 K20 ["question"]
       76 SETLIST                          R11 R12 1 [1]
       78 SETTABLEKS                       R11 R10 K18 ["required"]
       80 SETTABLEKS                       R10 R9 K14 ["items"]
       82 NAMECALL                         R6 R6 K35 ["addArgument"]
       84 CALL                             R6 3 1
       85 DUPTABLE                         R8 K44 [{["title"] = "Question Answer", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       86 NAMECALL                         R6 R6 K45 ["setAnnotations"]
       88 CALL                             R6 2 1
       89 MOVE                             R8 R2
       90 NAMECALL                         R6 R6 K46 ["setHandler"]
       92 CALL                             R6 2 1
       93 NAMECALL                         R6 R6 K47 ["build"]
       95 CALL                             R6 1 1
       96 DUPTABLE                         R7 K51 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       97 DUPCLOSURE                       R8 K52 [PROTO_7]
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U7
      100 SETTABLEKS                       R8 R7 K48 ["transformInitialContent"]
      102 DUPCLOSURE                       R8 K53 [PROTO_9]
      103 CAPTURE                          UPVAL U7
      104 SETTABLEKS                       R8 R7 K49 ["getTransformPreExecuteFn"]
      106 DUPCLOSURE                       R8 K54 [PROTO_11]
      107 CAPTURE                          UPVAL U7
      108 SETTABLEKS                       R8 R7 K50 ["getTransformResultFn"]
      110 DUPTABLE                         R8 K58 [{"definition", "contentWidgets", "streamTransform"}]
      111 SETTABLEKS                       R6 R8 K55 ["definition"]
      113 GETUPVAL                         R10 4
      114 GETTABLEKS                       R10 R10 K59 ["FFlagAssistantSplitToolsAndWidgets"]
      116 JUMPIFNOT                        R10 ; [+2]
      117 LOADNIL                          R9
      118 JUMP                             ; [+5]
      119 NEWTABLE                         R9 0 1
      121 GETUPVAL                         R10 6
      122 SETLIST                          R9 R10 1 [1]
      124 SETTABLEKS                       R9 R8 K56 ["contentWidgets"]
      126 SETTABLEKS                       R7 R8 K57 ["streamTransform"]
      128 RETURN                           R8 1

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
       27 GETTABLEKS                       R5 R0 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Components"]
       36 GETTABLEKS                       R6 R6 K16 ["ContentWidgets"]
       38 GETTABLEKS                       R6 R6 K17 ["QuestionAnswerContentWidget"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K15 ["Components"]
       45 GETTABLEKS                       R7 R7 K16 ["ContentWidgets"]
       47 GETTABLEKS                       R7 R7 K17 ["QuestionAnswerContentWidget"]
       49 GETTABLEKS                       R7 R7 K18 ["QuestionAnswerTypes"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K19 ["Tools"]
       56 GETTABLEKS                       R8 R8 K20 ["ToolTypes"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R4 K21 ["Util"]
       61 GETTABLEKS                       R8 R8 K22 ["ToolBuilder"]
       63 GETTABLEKS                       R9 R4 K21 ["Util"]
       65 GETTABLEKS                       R9 R9 K23 ["ToolResult"]
       67 GETTABLEKS                       R10 R7 K24 ["ToolNames"]
       69 DUPCLOSURE                       R11 K25 [PROTO_0]
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R12 K26 [PROTO_12]
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 RETURN                           R12 1

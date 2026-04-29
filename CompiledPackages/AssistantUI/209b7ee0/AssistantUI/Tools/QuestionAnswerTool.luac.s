PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["get"]
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
       14 GETTABLEKS                       R12 R10 K1 ["chosenOption"]
       16 GETTABLEKS                       R11 R12 K2 ["isFromUser"]
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
       61 GETTABLEKS                       R10 R3 K18 ["json"]
       63 GETTABLEKS                       R9 R10 K19 ["encodeAsync"]
       65 MOVE                             R10 R0
       66 CALL                             R9 1 1
       67 SETTABLEKS                       R9 R8 K12 ["questionsJson"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETTABLEKS                       R10 R3 K18 ["json"]
       72 GETTABLEKS                       R9 R10 K19 ["encodeAsync"]
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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["getContentHooks"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K1 ["editContent"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+3]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K2 ["messageId"]
       18 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K3 ["QuestionAnswerTool requires messageId in meta"]
       22 GETIMPORT                        R2 K5 [assert]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R2 R3 K1 ["editContent"]
       28 DUPTABLE                         R3 K8 [{"messageId", "contentId", "transformFn"}]
       29 SETTABLEKS                       R1 R3 K2 ["messageId"]
       31 GETUPVAL                         R4 2
       32 SETTABLEKS                       R4 R3 K6 ["contentId"]
       34 SETTABLEKS                       R0 R3 K7 ["transformFn"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

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
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 MOVE                             R6 R5
       31 NEWCLOSURE                       R7 P1
       32 CAPTURE                          VAL R4
       33 CALL                             R6 1 0
       34 GETIMPORT                        R6 K13 [coroutine.yield]
       36 CALL                             R6 0 1
       37 GETUPVAL                         R7 2
       38 MOVE                             R8 R3
       39 MOVE                             R9 R6
       40 MOVE                             R10 R1
       41 CALL                             R7 3 0
       42 JUMPIF                           R6 ; [+17]
       43 GETUPVAL                         R7 3
       44 CALL                             R7 0 1
       45 LOADK                            R9 K14 ["The user dismissed the questions."]
       46 NAMECALL                         R7 R7 K15 ["addText"]
       48 CALL                             R7 2 1
       49 DUPTABLE                         R9 K17 [{"dismissed"}]
       50 LOADB                            R10 1
       51 SETTABLEKS                       R10 R9 K16 ["dismissed"]
       53 NAMECALL                         R7 R7 K18 ["setStructuredContent"]
       55 CALL                             R7 2 1
       56 NAMECALL                         R7 R7 K19 ["build"]
       58 CALL                             R7 1 -1
       59 RETURN                           R7 -1
       60 GETUPVAL                         R7 4
       61 MOVE                             R9 R6
       62 NAMECALL                         R7 R7 K20 ["JSONEncode"]
       64 CALL                             R7 2 1
       65 GETUPVAL                         R8 3
       66 CALL                             R8 0 1
       67 MOVE                             R10 R7
       68 NAMECALL                         R8 R8 K15 ["addText"]
       70 CALL                             R8 2 1
       71 DUPTABLE                         R10 K22 [{"dismissed", "answers"}]
       72 LOADB                            R11 0
       73 SETTABLEKS                       R11 R10 K16 ["dismissed"]
       75 SETTABLEKS                       R6 R10 K21 ["answers"]
       77 NAMECALL                         R8 R8 K18 ["setStructuredContent"]
       79 CALL                             R8 2 1
       80 NAMECALL                         R8 R8 K19 ["build"]
       82 CALL                             R8 1 -1
       83 RETURN                           R8 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 2
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 3
        9 RETURN                           R0 1

PROTO_7:
        0 DUPTABLE                         R0 K3 [{"type", "status", "questions"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K5 ["preparing"]
        7 SETTABLEKS                       R1 R0 K1 ["status"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["questions"]
       13 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["questions"]
        3 LOADK                            R1 K1 ["awaiting_answers"]
        4 SETTABLEKS                       R1 R0 K2 ["status"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R2 K1 ["questions"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_10:
        0 LOADK                            R1 K0 ["completed"]
        1 SETTABLEKS                       R1 R0 K1 ["status"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K2 ["onSubmitAnswers"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K3 ["onDismiss"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["isError"]
       12 JUMPIFNOT                        R1 ; [+4]
       13 LOADK                            R1 K5 ["error"]
       14 SETTABLEKS                       R1 R0 K1 ["status"]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+7]
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K6 ["answeredQuestions"]
       22 LOADB                            R1 1
       23 SETTABLEKS                       R1 R0 K7 ["dismissed"]
       25 RETURN                           R0 0
       26 GETUPVAL                         R1 2
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETUPVAL                         R1 2
       29 SETTABLEKS                       R1 R0 K6 ["answeredQuestions"]
       31 LOADNIL                          R1
       32 SETTABLEKS                       R1 R0 K7 ["dismissed"]
       34 RETURN                           R0 0

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
       32 CAPTURE                          VAL R0
       33 CAPTURE                          REF R2
       34 CAPTURE                          REF R3
       35 CLOSEUPVALS                      R2
       36 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["externalHooks"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 GETUPVAL                         R4 4
        9 GETTABLEKS                       R3 R4 K1 ["replaceTokens"]
       11 LOADK                            R4 K2 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n- Do NOT ask about runtime behaviors, interactivity, or scripted functionality (e.g. \"should it be drivable?\", \"should it be clickable?\", \"should players be able to sit in it?\"). The generation tools ({ToolNames.PrimitiveGen}, {ToolNames.MeshGen}) produce static visual models only. Focus questions on appearance, style, and scope instead.\n\n## Tool ambiguity guidance for 3D object creation\nWhen there is tool ambiguity for creating a 3D object, model, or physical thing, always include generation tools as options. Typical tool-choice options for 3D creation requests:\n- **{ToolNames.PrimitiveGen}** — Generate a procedural model built from primitive parts with configurable attributes (recommended for blocky/stylized objects, parametric designs)\n- **{ToolNames.MeshGen}** — Generate a textured mesh using AI (recommended for organic, detailed, or realistic objects)\n- **Creator Store** — Insert a pre-built model from the marketplace\n- **Build from Parts with scripts** — Manually assemble from primitive parts using {ToolNames.ExecuteLuau}\n\n## Internal Classification Examples\n\nUser: \"create a car\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: NO — a single car is clear.\n- Target ambiguity: NO — \"car\" is clear.\n- Style ambiguity: YES — realistic, low-poly, cartoony?\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and style.\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options), scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — {ToolNames.PrimitiveGen} procedural model vs {ToolNames.MeshGen} AI mesh vs Creator Store model vs built from Parts?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice (include {ToolNames.PrimitiveGen} and {ToolNames.MeshGen} as options) and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R4 R5 K1 ["replaceTokens"]
       16 LOADK                            R5 K3 ["Presents structured questions to the user and collects their answers before you proceed.\nBefore deciding whether to use this tool, internally classify the user's request for these ambiguity types. A request may have more than one.\n\n- **Tool ambiguity**: Multiple downstream tools could fulfill the request, and the wrong choice wastes significant work.\n- **Scope ambiguity**: The request could mean anything from a small atomic change to a large multi-system feature.\n- **Target ambiguity**: The request applies to multiple possible objects, locations, or interactions and you cannot infer which.\n- **Style ambiguity**: The creative direction, aesthetic, or behavioral style is unspecified and meaningfully changes the result.\n\n**Decision rule**: If one or more ambiguity types are present and you cannot resolve them from conversation context, use this tool. Ask one question per ambiguity type. If zero ambiguity types are present, do NOT use this tool.\n\n## When NOT to use\n- Zero ambiguity types detected.\n- The answer is obvious from context or conversation history.\n- A reasonable default exists — proceed, then offer to adjust.\n- The question is purely confirmatory — act and describe what you did.\n\n## How to write good questions\n- One focused question per ambiguity type. Do not bundle multiple concerns into one question.\n- Keep question text short and direct.\n- Provide predefined options when the choice set is bounded. Omit them for free-form answers.\n- Do NOT include a \"custom / other\" option — the tool always appends one automatically.\n\n## Internal Classification Examples\n\nUser: \"add a central park\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated terrain?\n- Scope ambiguity: YES — a small decorative park vs a large explorable zone with paths, benches, a pond, and trees?\n- Target ambiguity: NO — a park area is clear.\n- Style ambiguity: YES — realistic NYC replica, cartoony, low-poly, fantasy-themed?\n-> Use this tool. Ask three questions: tool choice, scope, and style.\n\nUser: \"add a futuristic racing track\"\n- Tool ambiguity: YES — Creator Store model vs built from Parts vs AI-generated?\n- Scope ambiguity: YES — a single track piece vs a full racing game with vehicles, checkpoints, and leaderboard?\n- Target ambiguity: NO — \"race track\" is clear.\n- Style ambiguity: NO — not the primary concern here, the user has specified a specific style.\n-> Use this tool. Ask two questions: tool choice and scope.\n\nUser: \"add sound effects to my tycoon game\"\n- Tool ambiguity: NO — sound insertion is one tool path.\n- Scope ambiguity: NO — clear feature request.\n- Target ambiguity: YES — which interactions? (footsteps, UI clicks, ambient, combat, etc.)\n- Style ambiguity: NO — style is secondary to target selection.\n-> Use this tool. Ask one question for target.\n\nUser: \"make the baseplate blue\"\n- Tool ambiguity: NO — {ToolNames.ExecuteLuau}.\n- Scope ambiguity: NO — single property change.\n- Target ambiguity: NO — \"baseplate\" is clear.\n- Style ambiguity: NO — \"blue\" is specified.\n-> Do NOT use this tool. Proceed directly.\n\n## Behaviour\nThe tool blocks until the user submits answers or dismisses. Each question always includes a free-text answer field in addition to any predefined options.\n"]
       17 CALL                             R4 1 1
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          UPVAL U6
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 GETUPVAL                         R7 7
       24 GETTABLEKS                       R6 R7 K4 ["define"]
       26 CALL                             R6 0 1
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R8 R9 K5 ["QuestionAnswer"]
       30 NAMECALL                         R6 R6 K6 ["setName"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R9 5
       34 CALL                             R9 0 1
       35 JUMPIFNOT                        R9 ; [+5]
       36 GETUPVAL                         R9 6
       37 CALL                             R9 0 1
       38 JUMPIFNOT                        R9 ; [+2]
       39 MOVE                             R8 R3
       40 JUMP                             ; [+1]
       41 MOVE                             R8 R4
       42 NAMECALL                         R6 R6 K7 ["setDescription"]
       44 CALL                             R6 2 1
       45 LOADK                            R8 K8 ["questions"]
       46 DUPTABLE                         R9 K12 [{"type", "description", "items"}]
       47 LOADK                            R10 K13 ["array"]
       48 SETTABLEKS                       R10 R9 K9 ["type"]
       50 LOADK                            R10 K14 ["An array of questions to present to the user."]
       51 SETTABLEKS                       R10 R9 K10 ["description"]
       53 DUPTABLE                         R10 K17 [{"type", "properties", "required"}]
       54 LOADK                            R11 K18 ["object"]
       55 SETTABLEKS                       R11 R10 K9 ["type"]
       57 DUPTABLE                         R11 K21 [{"question", "options"}]
       58 DUPTABLE                         R12 K22 [{"type", "description"}]
       59 LOADK                            R13 K23 ["string"]
       60 SETTABLEKS                       R13 R12 K9 ["type"]
       62 LOADK                            R13 K24 ["The question text to display."]
       63 SETTABLEKS                       R13 R12 K10 ["description"]
       65 SETTABLEKS                       R12 R11 K19 ["question"]
       67 DUPTABLE                         R12 K12 [{"type", "description", "items"}]
       68 LOADK                            R13 K13 ["array"]
       69 SETTABLEKS                       R13 R12 K9 ["type"]
       71 LOADK                            R13 K25 ["Optional predefined answer choices."]
       72 SETTABLEKS                       R13 R12 K10 ["description"]
       74 DUPTABLE                         R13 K17 [{"type", "properties", "required"}]
       75 LOADK                            R14 K18 ["object"]
       76 SETTABLEKS                       R14 R13 K9 ["type"]
       78 DUPTABLE                         R14 K28 [{"optionText", "clarificationText"}]
       79 DUPTABLE                         R15 K22 [{"type", "description"}]
       80 LOADK                            R16 K23 ["string"]
       81 SETTABLEKS                       R16 R15 K9 ["type"]
       83 LOADK                            R16 K29 ["The display text for this option."]
       84 SETTABLEKS                       R16 R15 K10 ["description"]
       86 SETTABLEKS                       R15 R14 K26 ["optionText"]
       88 DUPTABLE                         R15 K22 [{"type", "description"}]
       89 LOADK                            R16 K23 ["string"]
       90 SETTABLEKS                       R16 R15 K9 ["type"]
       92 LOADK                            R16 K30 ["Additional context or explanation for this option."]
       93 SETTABLEKS                       R16 R15 K10 ["description"]
       95 SETTABLEKS                       R15 R14 K27 ["clarificationText"]
       97 SETTABLEKS                       R14 R13 K15 ["properties"]
       99 NEWTABLE                         R14 0 2
      101 LOADK                            R15 K26 ["optionText"]
      102 LOADK                            R16 K27 ["clarificationText"]
      103 SETLIST                          R14 R15 2 [1]
      105 SETTABLEKS                       R14 R13 K16 ["required"]
      107 SETTABLEKS                       R13 R12 K11 ["items"]
      109 SETTABLEKS                       R12 R11 K20 ["options"]
      111 SETTABLEKS                       R11 R10 K15 ["properties"]
      113 NEWTABLE                         R11 0 1
      115 LOADK                            R12 K19 ["question"]
      116 SETLIST                          R11 R12 1 [1]
      118 SETTABLEKS                       R11 R10 K16 ["required"]
      120 SETTABLEKS                       R10 R9 K11 ["items"]
      122 NAMECALL                         R6 R6 K31 ["addArgument"]
      124 CALL                             R6 3 1
      125 MOVE                             R8 R2
      126 NAMECALL                         R6 R6 K32 ["setHandler"]
      128 CALL                             R6 2 1
      129 NAMECALL                         R6 R6 K33 ["build"]
      131 CALL                             R6 1 1
      132 DUPTABLE                         R7 K37 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
      133 DUPCLOSURE                       R8 K38 [PROTO_7]
      134 CAPTURE                          UPVAL U8
      135 SETTABLEKS                       R8 R7 K34 ["transformInitialContent"]
      137 DUPCLOSURE                       R8 K39 [PROTO_9]
      138 SETTABLEKS                       R8 R7 K35 ["getTransformPreExecuteFn"]
      140 DUPCLOSURE                       R8 K40 [PROTO_11]
      141 SETTABLEKS                       R8 R7 K36 ["getTransformResultFn"]
      143 DUPTABLE                         R8 K44 [{"definition", "contentWidgets", "streamTransform"}]
      144 SETTABLEKS                       R6 R8 K41 ["definition"]
      146 NEWTABLE                         R9 0 1
      148 GETUPVAL                         R10 8
      149 SETLIST                          R9 R10 1 [1]
      151 SETTABLEKS                       R9 R8 K42 ["contentWidgets"]
      153 SETTABLEKS                       R7 R8 K43 ["streamTransform"]
      155 RETURN                           R8 1

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
       15 GETTABLEKS                       R4 R0 K10 ["Guest"]
       17 GETTABLEKS                       R3 R4 K11 ["Environment"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R5 K13 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R0 K14 ["Components"]
       31 GETTABLEKS                       R6 R7 K15 ["ContentWidgets"]
       33 GETTABLEKS                       R5 R6 K16 ["QuestionAnswerContentWidget"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K17 ["Tools"]
       40 GETTABLEKS                       R6 R7 K18 ["ToolTypes"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R8 R0 K19 ["Flags"]
       47 GETTABLEKS                       R7 R8 K20 ["FFlagAssistantMultipleChatPersistence"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K19 ["Flags"]
       54 GETTABLEKS                       R8 R9 K21 ["FFlagEnablePrimitiveGenTool"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K19 ["Flags"]
       61 GETTABLEKS                       R9 R10 K22 ["FFlagProceduralModel"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R10 R3 K23 ["Util"]
       66 GETTABLEKS                       R9 R10 K24 ["ToolBuilder"]
       68 GETTABLEKS                       R11 R3 K23 ["Util"]
       70 GETTABLEKS                       R10 R11 K25 ["ToolResult"]
       72 GETTABLEKS                       R11 R5 K26 ["ToolNames"]
       74 DUPCLOSURE                       R12 K27 [PROTO_0]
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R13 K28 [PROTO_12]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R4
       86 RETURN                           R13 1

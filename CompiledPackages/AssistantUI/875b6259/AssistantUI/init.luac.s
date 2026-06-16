MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETIMPORT                        R1 K3 [require]
        5 GETTABLEKS                       R2 R0 K4 ["Components"]
        7 GETTABLEKS                       R2 R2 K5 ["Accordion"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K3 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Features"]
       14 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       16 GETTABLEKS                       R3 R3 K8 ["AnimationGenConstants"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K3 [require]
       21 GETTABLEKS                       R4 R0 K4 ["Components"]
       23 GETTABLEKS                       R4 R4 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["AssistantServiceContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K3 [require]
       30 GETTABLEKS                       R5 R0 K4 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Carousel"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K3 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R6 K13 ["CheckCodeSafety"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K3 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Util"]
       46 GETTABLEKS                       R7 R7 K14 ["CommandExecution"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K3 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Util"]
       53 GETTABLEKS                       R8 R8 K15 ["ConsoleOutput"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K3 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Constants"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K3 [require]
       63 GETTABLEKS                       R10 R0 K12 ["Util"]
       65 GETTABLEKS                       R10 R10 K17 ["ContentWidgets"]
       67 GETTABLEKS                       R10 R10 K18 ["ContentWidgetRegistry"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K3 [require]
       72 GETTABLEKS                       R11 R0 K4 ["Components"]
       74 GETTABLEKS                       R11 R11 K9 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K19 ["ConversationContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K3 [require]
       81 GETTABLEKS                       R12 R0 K12 ["Util"]
       83 GETTABLEKS                       R12 R12 K20 ["DEPRECATED_ContentWidgetRegistry"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K3 [require]
       88 GETTABLEKS                       R13 R0 K12 ["Util"]
       90 GETTABLEKS                       R13 R13 K21 ["DataModelType"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K3 [require]
       95 GETTABLEKS                       R14 R0 K22 ["Guest"]
       97 GETTABLEKS                       R14 R14 K23 ["Environment"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K3 [require]
      102 GETTABLEKS                       R15 R0 K12 ["Util"]
      104 GETTABLEKS                       R15 R15 K24 ["AssistantEval"]
      106 GETTABLEKS                       R15 R15 K25 ["EvalContext"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K3 [require]
      111 GETTABLEKS                       R16 R0 K12 ["Util"]
      113 GETTABLEKS                       R16 R16 K24 ["AssistantEval"]
      115 GETTABLEKS                       R16 R16 K26 ["EvalController"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K3 [require]
      120 GETTABLEKS                       R17 R0 K12 ["Util"]
      122 GETTABLEKS                       R17 R17 K24 ["AssistantEval"]
      124 GETTABLEKS                       R17 R17 K27 ["EvalFunctionRegistry"]
      126 CALL                             R16 1 1
      127 GETIMPORT                        R17 K3 [require]
      129 GETTABLEKS                       R18 R0 K28 ["Hooks"]
      131 GETTABLEKS                       R18 R18 K29 ["RESTRICTED_ExternalHooks"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K3 [require]
      136 GETTABLEKS                       R19 R0 K4 ["Components"]
      138 GETTABLEKS                       R19 R19 K9 ["Contexts"]
      140 GETTABLEKS                       R19 R19 K30 ["ExternalServerContext"]
      142 CALL                             R18 1 1
      143 GETIMPORT                        R19 K3 [require]
      145 GETTABLEKS                       R20 R0 K4 ["Components"]
      147 GETTABLEKS                       R20 R20 K9 ["Contexts"]
      149 GETTABLEKS                       R20 R20 K31 ["FeedbackContext"]
      151 CALL                             R19 1 1
      152 GETIMPORT                        R20 K3 [require]
      154 GETTABLEKS                       R21 R0 K32 ["Flags"]
      156 CALL                             R20 1 1
      157 GETIMPORT                        R21 K3 [require]
      159 GETTABLEKS                       R22 R0 K12 ["Util"]
      161 GETTABLEKS                       R22 R22 K33 ["ImageAttachmentUtils"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K3 [require]
      166 GETTABLEKS                       R23 R0 K4 ["Components"]
      168 GETTABLEKS                       R23 R23 K9 ["Contexts"]
      170 GETTABLEKS                       R23 R23 K34 ["InputStateContext"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K3 [require]
      175 GETTABLEKS                       R24 R0 K4 ["Components"]
      177 GETTABLEKS                       R24 R24 K35 ["IntegrationManagement"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K3 [require]
      182 GETTABLEKS                       R25 R0 K4 ["Components"]
      184 GETTABLEKS                       R25 R25 K9 ["Contexts"]
      186 GETTABLEKS                       R25 R25 K36 ["LLMProviderSelectionContext"]
      188 CALL                             R24 1 1
      189 GETIMPORT                        R25 K3 [require]
      191 GETTABLEKS                       R26 R0 K22 ["Guest"]
      193 GETTABLEKS                       R26 R26 K37 ["LoadAssetHandlers"]
      195 CALL                             R25 1 1
      196 GETIMPORT                        R26 K3 [require]
      198 GETTABLEKS                       R27 R0 K4 ["Components"]
      200 GETTABLEKS                       R27 R27 K38 ["MainView"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K3 [require]
      205 GETTABLEKS                       R28 R0 K4 ["Components"]
      207 GETTABLEKS                       R28 R28 K39 ["MarkdownText"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K3 [require]
      212 GETTABLEKS                       R29 R0 K4 ["Components"]
      214 GETTABLEKS                       R29 R29 K9 ["Contexts"]
      216 GETTABLEKS                       R29 R29 K40 ["McpAuthorizerManagerContext"]
      218 CALL                             R28 1 1
      219 GETIMPORT                        R29 K3 [require]
      221 GETTABLEKS                       R30 R0 K4 ["Components"]
      223 GETTABLEKS                       R30 R30 K9 ["Contexts"]
      225 GETTABLEKS                       R30 R30 K41 ["McpClientContext"]
      227 CALL                             R29 1 1
      228 GETIMPORT                        R30 K3 [require]
      230 GETTABLEKS                       R31 R0 K4 ["Components"]
      232 GETTABLEKS                       R31 R31 K9 ["Contexts"]
      234 GETTABLEKS                       R31 R31 K42 ["ModelQualityContext"]
      236 CALL                             R30 1 1
      237 GETIMPORT                        R31 K3 [require]
      239 GETTABLEKS                       R32 R0 K12 ["Util"]
      241 GETTABLEKS                       R32 R32 K43 ["MultiDataModelToolUtil"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K3 [require]
      246 GETTABLEKS                       R33 R0 K12 ["Util"]
      248 GETTABLEKS                       R33 R33 K44 ["MultiPlayersConnection"]
      250 GETTABLEKS                       R33 R33 K45 ["MultiPlayersAgentClient"]
      252 CALL                             R32 1 1
      253 GETIMPORT                        R33 K3 [require]
      255 GETTABLEKS                       R34 R0 K12 ["Util"]
      257 GETTABLEKS                       R34 R34 K44 ["MultiPlayersConnection"]
      259 GETTABLEKS                       R34 R34 K46 ["MultiPlayersAgentServer"]
      261 CALL                             R33 1 1
      262 GETIMPORT                        R34 K3 [require]
      264 GETTABLEKS                       R35 R0 K4 ["Components"]
      266 GETTABLEKS                       R35 R35 K9 ["Contexts"]
      268 GETTABLEKS                       R35 R35 K47 ["OptionsContext"]
      270 CALL                             R34 1 1
      271 GETIMPORT                        R35 K3 [require]
      273 GETTABLEKS                       R36 R0 K12 ["Util"]
      275 GETTABLEKS                       R36 R36 K48 ["OutputParser"]
      277 CALL                             R35 1 1
      278 GETIMPORT                        R36 K3 [require]
      280 GETTABLEKS                       R37 R0 K4 ["Components"]
      282 GETTABLEKS                       R37 R37 K9 ["Contexts"]
      284 GETTABLEKS                       R37 R37 K49 ["PersistedIntegrationContext"]
      286 CALL                             R36 1 1
      287 GETIMPORT                        R37 K3 [require]
      289 GETTABLEKS                       R38 R0 K4 ["Components"]
      291 GETTABLEKS                       R38 R38 K9 ["Contexts"]
      293 GETTABLEKS                       R38 R38 K50 ["PersistedSettingsContext"]
      295 CALL                             R37 1 1
      296 GETIMPORT                        R38 K3 [require]
      298 GETTABLEKS                       R39 R0 K12 ["Util"]
      300 GETTABLEKS                       R39 R39 K51 ["Persistence"]
      302 CALL                             R38 1 1
      303 GETIMPORT                        R39 K3 [require]
      305 GETTABLEKS                       R40 R0 K4 ["Components"]
      307 GETTABLEKS                       R40 R40 K9 ["Contexts"]
      309 GETTABLEKS                       R40 R40 K52 ["PopoutWidgetContext"]
      311 CALL                             R39 1 1
      312 GETIMPORT                        R40 K3 [require]
      314 GETTABLEKS                       R41 R0 K22 ["Guest"]
      316 GETTABLEKS                       R41 R41 K53 ["RecordingHandlers"]
      318 CALL                             R40 1 1
      319 GETIMPORT                        R41 K3 [require]
      321 GETTABLEKS                       R42 R0 K12 ["Util"]
      323 GETTABLEKS                       R42 R42 K54 ["Serializer"]
      325 CALL                             R41 1 1
      326 GETIMPORT                        R42 K3 [require]
      328 GETTABLEKS                       R43 R0 K12 ["Util"]
      330 GETTABLEKS                       R43 R43 K55 ["ServerStreamIdStore"]
      332 CALL                             R42 1 1
      333 GETIMPORT                        R43 K3 [require]
      335 GETTABLEKS                       R44 R0 K4 ["Components"]
      337 GETTABLEKS                       R44 R44 K9 ["Contexts"]
      339 GETTABLEKS                       R44 R44 K56 ["SessionIdContext"]
      341 CALL                             R43 1 1
      342 GETIMPORT                        R44 K3 [require]
      344 GETTABLEKS                       R45 R0 K4 ["Components"]
      346 GETTABLEKS                       R45 R45 K9 ["Contexts"]
      348 GETTABLEKS                       R45 R45 K57 ["SettingsContext"]
      350 CALL                             R44 1 1
      351 GETIMPORT                        R45 K3 [require]
      353 GETTABLEKS                       R46 R0 K4 ["Components"]
      355 GETTABLEKS                       R46 R46 K58 ["ShimmerGradient"]
      357 CALL                             R45 1 1
      358 GETIMPORT                        R46 K3 [require]
      360 GETTABLEKS                       R47 R0 K59 ["Skills"]
      362 CALL                             R46 1 1
      363 GETIMPORT                        R47 K3 [require]
      365 GETTABLEKS                       R48 R0 K12 ["Util"]
      367 GETTABLEKS                       R48 R48 K60 ["SpyableObject"]
      369 CALL                             R47 1 1
      370 GETIMPORT                        R48 K3 [require]
      372 GETTABLEKS                       R49 R0 K12 ["Util"]
      374 GETTABLEKS                       R49 R49 K61 ["StreamEventUtils"]
      376 CALL                             R48 1 1
      377 GETIMPORT                        R49 K3 [require]
      379 GETTABLEKS                       R50 R0 K62 ["Subagents"]
      381 CALL                             R49 1 1
      382 GETIMPORT                        R50 K3 [require]
      384 GETTABLEKS                       R51 R0 K28 ["Hooks"]
      386 GETTABLEKS                       R51 R51 K63 ["SystemReminders"]
      388 CALL                             R50 1 1
      389 GETIMPORT                        R51 K3 [require]
      391 GETTABLEKS                       R52 R0 K12 ["Util"]
      393 GETTABLEKS                       R52 R52 K64 ["TestIds"]
      395 CALL                             R51 1 1
      396 GETIMPORT                        R52 K3 [require]
      398 GETTABLEKS                       R53 R0 K65 ["tests"]
      400 GETTABLEKS                       R53 R53 K66 ["TestUtils"]
      402 CALL                             R52 1 1
      403 GETIMPORT                        R53 K3 [require]
      405 GETTABLEKS                       R54 R0 K4 ["Components"]
      407 GETTABLEKS                       R54 R54 K9 ["Contexts"]
      409 GETTABLEKS                       R54 R54 K67 ["ThreadIdContext"]
      411 CALL                             R53 1 1
      412 GETIMPORT                        R54 K3 [require]
      414 GETTABLEKS                       R55 R0 K12 ["Util"]
      416 GETTABLEKS                       R55 R55 K68 ["Time"]
      418 CALL                             R54 1 1
      419 GETIMPORT                        R55 K3 [require]
      421 GETTABLEKS                       R56 R0 K4 ["Components"]
      423 GETTABLEKS                       R56 R56 K69 ["ToolMenuView"]
      425 CALL                             R55 1 1
      426 GETIMPORT                        R56 K3 [require]
      428 GETTABLEKS                       R57 R0 K70 ["Tools"]
      430 GETTABLEKS                       R57 R57 K71 ["ToolTypes"]
      432 CALL                             R56 1 1
      433 GETIMPORT                        R57 K3 [require]
      435 GETTABLEKS                       R58 R0 K12 ["Util"]
      437 GETTABLEKS                       R58 R58 K72 ["ToolUtils"]
      439 CALL                             R57 1 1
      440 GETIMPORT                        R58 K3 [require]
      442 GETTABLEKS                       R59 R0 K12 ["Util"]
      444 GETTABLEKS                       R59 R59 K17 ["ContentWidgets"]
      446 GETTABLEKS                       R59 R59 K73 ["ToolWidgetMappingRegistry"]
      448 CALL                             R58 1 1
      449 GETIMPORT                        R59 K3 [require]
      451 GETTABLEKS                       R60 R0 K70 ["Tools"]
      453 CALL                             R59 1 1
      454 GETIMPORT                        R60 K3 [require]
      456 GETTABLEKS                       R61 R0 K74 ["Resources"]
      458 GETTABLEKS                       R61 R61 K75 ["Localization"]
      460 GETTABLEKS                       R61 R61 K76 ["Translator"]
      462 CALL                             R60 1 1
      463 GETIMPORT                        R61 K3 [require]
      465 GETTABLEKS                       R62 R0 K77 ["Types"]
      467 CALL                             R61 1 1
      468 GETIMPORT                        R62 K3 [require]
      470 GETTABLEKS                       R63 R0 K4 ["Components"]
      472 GETTABLEKS                       R63 R63 K78 ["UIToolRegistry"]
      474 CALL                             R62 1 1
      475 GETIMPORT                        R63 K3 [require]
      477 GETTABLEKS                       R64 R0 K12 ["Util"]
      479 GETTABLEKS                       R64 R64 K79 ["VersionResolver"]
      481 CALL                             R63 1 1
      482 GETIMPORT                        R64 K3 [require]
      484 GETTABLEKS                       R65 R0 K4 ["Components"]
      486 GETTABLEKS                       R65 R65 K9 ["Contexts"]
      488 GETTABLEKS                       R65 R65 K80 ["WindowInputContext"]
      490 CALL                             R64 1 1
      491 GETIMPORT                        R65 K3 [require]
      493 GETTABLEKS                       R66 R0 K28 ["Hooks"]
      495 GETTABLEKS                       R66 R66 K81 ["createPersistedSetting"]
      497 CALL                             R65 1 1
      498 GETIMPORT                        R66 K3 [require]
      500 GETTABLEKS                       R67 R0 K12 ["Util"]
      502 GETTABLEKS                       R67 R67 K82 ["makeConversation"]
      504 CALL                             R66 1 1
      505 GETIMPORT                        R67 K3 [require]
      507 GETTABLEKS                       R68 R0 K22 ["Guest"]
      509 GETTABLEKS                       R68 R68 K83 ["startGuest"]
      511 CALL                             R67 1 1
      512 GETIMPORT                        R68 K3 [require]
      514 GETTABLEKS                       R69 R0 K12 ["Util"]
      516 GETTABLEKS                       R69 R69 K84 ["truncateUtf8Safe"]
      518 CALL                             R68 1 1
      519 GETIMPORT                        R69 K3 [require]
      521 GETTABLEKS                       R70 R0 K28 ["Hooks"]
      523 GETTABLEKS                       R70 R70 K85 ["useAddContent"]
      525 CALL                             R69 1 1
      526 GETIMPORT                        R70 K3 [require]
      528 GETTABLEKS                       R71 R0 K28 ["Hooks"]
      530 GETTABLEKS                       R71 R71 K86 ["useAddMessage"]
      532 CALL                             R70 1 1
      533 GETIMPORT                        R71 K3 [require]
      535 GETTABLEKS                       R72 R0 K28 ["Hooks"]
      537 GETTABLEKS                       R72 R72 K87 ["useAssistantMode"]
      539 CALL                             R71 1 1
      540 GETIMPORT                        R72 K3 [require]
      542 GETTABLEKS                       R73 R0 K28 ["Hooks"]
      544 GETTABLEKS                       R73 R73 K88 ["useAssistantModeToolStates"]
      546 CALL                             R72 1 1
      547 GETIMPORT                        R73 K3 [require]
      549 GETTABLEKS                       R74 R0 K28 ["Hooks"]
      551 GETTABLEKS                       R74 R74 K89 ["useAsyncGuard"]
      553 CALL                             R73 1 1
      554 GETIMPORT                        R74 K3 [require]
      556 GETTABLEKS                       R75 R0 K28 ["Hooks"]
      558 GETTABLEKS                       R75 R75 K90 ["useEditContent"]
      560 CALL                             R74 1 1
      561 GETIMPORT                        R75 K3 [require]
      563 GETTABLEKS                       R76 R0 K28 ["Hooks"]
      565 GETTABLEKS                       R76 R76 K91 ["useGetDialogWidget"]
      567 CALL                             R75 1 1
      568 GETIMPORT                        R76 K3 [require]
      570 GETTABLEKS                       R77 R0 K28 ["Hooks"]
      572 GETTABLEKS                       R77 R77 K92 ["useMultiPlayerClientAgentStates"]
      574 CALL                             R76 1 1
      575 GETIMPORT                        R77 K3 [require]
      577 GETTABLEKS                       R78 R0 K28 ["Hooks"]
      579 GETTABLEKS                       R78 R78 K93 ["usePersistedSettings"]
      581 CALL                             R77 1 1
      582 GETIMPORT                        R78 K3 [require]
      584 GETTABLEKS                       R79 R0 K28 ["Hooks"]
      586 GETTABLEKS                       R79 R79 K94 ["useWithClient"]
      588 CALL                             R78 1 1
      589 GETTABLEKS                       R79 R0 K4 ["Components"]
      591 GETTABLEKS                       R79 R79 K9 ["Contexts"]
      593 GETTABLEKS                       R79 R79 K95 ["Claude"]
      595 GETIMPORT                        R80 K3 [require]
      597 GETTABLEKS                       R81 R79 K96 ["ClaudeLLMPackageContextProvider"]
      599 CALL                             R80 1 1
      600 GETIMPORT                        R81 K3 [require]
      602 GETTABLEKS                       R82 R79 K97 ["ClaudeLLMRequest"]
      604 CALL                             R81 1 1
      605 GETIMPORT                        R82 K3 [require]
      607 GETTABLEKS                       R83 R79 K98 ["ClaudeLLMSystemMessage"]
      609 CALL                             R82 1 1
      610 GETIMPORT                        R83 K3 [require]
      612 GETTABLEKS                       R84 R79 K99 ["ClaudeLLMToolFormat"]
      614 CALL                             R83 1 1
      615 GETTABLEKS                       R84 R0 K4 ["Components"]
      617 GETTABLEKS                       R84 R84 K9 ["Contexts"]
      619 GETTABLEKS                       R84 R84 K100 ["Gemini"]
      621 GETIMPORT                        R85 K3 [require]
      623 GETTABLEKS                       R86 R84 K101 ["GeminiLLMPackageContextProvider"]
      625 CALL                             R85 1 1
      626 GETTABLEKS                       R86 R0 K4 ["Components"]
      628 GETTABLEKS                       R86 R86 K9 ["Contexts"]
      630 GETTABLEKS                       R86 R86 K102 ["OpenAI"]
      632 GETIMPORT                        R87 K3 [require]
      634 GETTABLEKS                       R88 R86 K103 ["OpenAILLMPackageContextProvider"]
      636 CALL                             R87 1 1
      637 GETTABLEKS                       R88 R0 K4 ["Components"]
      639 GETTABLEKS                       R88 R88 K9 ["Contexts"]
      641 GETTABLEKS                       R88 R88 K104 ["TestLLM"]
      643 GETIMPORT                        R89 K3 [require]
      645 GETTABLEKS                       R90 R88 K105 ["TestLLMPackageContextProvider"]
      647 CALL                             R89 1 1
      648 GETIMPORT                        R90 K3 [require]
      650 GETTABLEKS                       R91 R88 K106 ["TestLLMRequest"]
      652 CALL                             R90 1 1
      653 GETTABLEKS                       R91 R0 K4 ["Components"]
      655 GETTABLEKS                       R91 R91 K9 ["Contexts"]
      657 GETTABLEKS                       R91 R91 K107 ["DefaultLLMProvider"]
      659 GETIMPORT                        R92 K3 [require]
      661 GETTABLEKS                       R93 R91 K108 ["LLMPackageContextProvider"]
      663 CALL                             R92 1 1
      664 GETIMPORT                        R93 K3 [require]
      666 GETTABLEKS                       R94 R91 K109 ["LLMProcessEvent"]
      668 CALL                             R93 1 1
      669 GETIMPORT                        R94 K3 [require]
      671 GETTABLEKS                       R95 R91 K110 ["LLMRequest"]
      673 CALL                             R94 1 1
      674 GETIMPORT                        R95 K3 [require]
      676 GETTABLEKS                       R96 R91 K111 ["LLMSystemMessage"]
      678 CALL                             R95 1 1
      679 GETIMPORT                        R96 K3 [require]
      681 GETTABLEKS                       R97 R91 K112 ["LLMToolFormat"]
      683 CALL                             R96 1 1
      684 GETIMPORT                        R97 K3 [require]
      686 GETTABLEKS                       R98 R0 K32 ["Flags"]
      688 GETTABLEKS                       R98 R98 K113 ["FStringMCPAssistantClaudeAPIKey"]
      690 CALL                             R97 1 1
      691 GETIMPORT                        R98 K3 [require]
      693 GETTABLEKS                       R99 R0 K32 ["Flags"]
      695 GETTABLEKS                       R99 R99 K114 ["FStringMCPAssistantCustomModelName"]
      697 CALL                             R98 1 1
      698 GETIMPORT                        R99 K3 [require]
      700 GETTABLEKS                       R100 R0 K32 ["Flags"]
      702 GETTABLEKS                       R100 R100 K115 ["FStringMCPAssistantGeminiAPIKey"]
      704 CALL                             R99 1 1
      705 GETIMPORT                        R100 K3 [require]
      707 GETTABLEKS                       R101 R0 K32 ["Flags"]
      709 GETTABLEKS                       R101 R101 K116 ["FStringMCPAssistantOpenAIAPIKey"]
      711 CALL                             R100 1 1
      712 GETIMPORT                        R101 K3 [require]
      714 GETTABLEKS                       R102 R0 K32 ["Flags"]
      716 GETTABLEKS                       R102 R102 K117 ["FFlagAssistantPlanMode"]
      718 CALL                             R101 1 1
      719 GETIMPORT                        R102 K3 [require]
      721 GETTABLEKS                       R103 R0 K32 ["Flags"]
      723 GETTABLEKS                       R103 R103 K118 ["FFlagAssistantSplitToolsAndWidgets"]
      725 CALL                             R102 1 1
      726 DUPTABLE                         R103 K122 [{"Components", "Tools", "Features", "Types", "Constants", "Utils", "Persistence", "IntegrationManagement", "TestUtils", "TestIds", "APIKeys", "Resources", "Guest", "Flags", "UIToolRegistry", "Serializer", "Skills", "Subagents", "PersistentPlanRuntime"}]
      727 DUPTABLE                         R104 K124 [{"Contexts", "Claude", "DefaultLLMProvider", "TestLLM", "Hooks", "ExternalHooks", "ContentWidgetRegistry", "Accordion", "Carousel", "MainView", "MarkdownText", "ShimmerGradient", "ToolMenuView"}]
      728 DUPTABLE                         R105 K139 [{"SettingsContextProvider", "AssistantServiceContext", "AssistantServiceContextProvider", "ConversationContextProvider", "ThreadIdContextProvider", "SessionIdContextProvider", "McpClientContextProvider", "OptionsContextProvider", "InputStateContextProvider", "WindowInputContextProvider", "WindowInputContextStandardProvider", "PopoutWidgetContextProvider", "ModelQualityContext", "LLMProviderSelectionContextProvider", "LLMProviderSelectionContext", "PersistentPlanContext", "ClaudeLLMPackageContextProvider", "GeminiLLMPackageContextProvider", "OpenAILLMPackageContextProvider", "TestLLMPackageContextProvider", "LLMPackageContextProvider", "McpAuthorizerManagerContext", "PersistedIntegrationContext", "ExternalServerContext", "EvalContextProvider", "FeedbackContext", "PersistedSettingsContext"}]
      729 GETTABLEKS                       R106 R44 K140 ["Provider"]
      731 SETTABLEKS                       R106 R105 K125 ["SettingsContextProvider"]
      733 SETTABLEKS                       R3 R105 K10 ["AssistantServiceContext"]
      735 GETTABLEKS                       R106 R3 K140 ["Provider"]
      737 SETTABLEKS                       R106 R105 K126 ["AssistantServiceContextProvider"]
      739 GETTABLEKS                       R106 R10 K140 ["Provider"]
      741 SETTABLEKS                       R106 R105 K127 ["ConversationContextProvider"]
      743 GETTABLEKS                       R106 R53 K140 ["Provider"]
      745 SETTABLEKS                       R106 R105 K128 ["ThreadIdContextProvider"]
      747 GETTABLEKS                       R106 R43 K140 ["Provider"]
      749 SETTABLEKS                       R106 R105 K129 ["SessionIdContextProvider"]
      751 GETTABLEKS                       R106 R29 K140 ["Provider"]
      753 SETTABLEKS                       R106 R105 K130 ["McpClientContextProvider"]
      755 GETTABLEKS                       R106 R34 K140 ["Provider"]
      757 SETTABLEKS                       R106 R105 K131 ["OptionsContextProvider"]
      759 GETTABLEKS                       R106 R22 K140 ["Provider"]
      761 SETTABLEKS                       R106 R105 K132 ["InputStateContextProvider"]
      763 GETTABLEKS                       R106 R64 K140 ["Provider"]
      765 SETTABLEKS                       R106 R105 K133 ["WindowInputContextProvider"]
      767 GETTABLEKS                       R106 R64 K141 ["StandardProvider"]
      769 SETTABLEKS                       R106 R105 K134 ["WindowInputContextStandardProvider"]
      771 GETTABLEKS                       R106 R39 K140 ["Provider"]
      773 SETTABLEKS                       R106 R105 K135 ["PopoutWidgetContextProvider"]
      775 SETTABLEKS                       R30 R105 K42 ["ModelQualityContext"]
      777 GETTABLEKS                       R106 R24 K140 ["Provider"]
      779 SETTABLEKS                       R106 R105 K136 ["LLMProviderSelectionContextProvider"]
      781 SETTABLEKS                       R24 R105 K36 ["LLMProviderSelectionContext"]
      783 MOVE                             R107 R101
      784 CALL                             R107 0 1
      785 JUMPIFNOT                        R107 ; [+10]
      786 GETIMPORT                        R106 K3 [require]
      788 GETTABLEKS                       R107 R0 K4 ["Components"]
      790 GETTABLEKS                       R107 R107 K9 ["Contexts"]
      792 GETTABLEKS                       R107 R107 K137 ["PersistentPlanContext"]
      794 CALL                             R106 1 1
      795 JUMP                             ; [+1]
      796 LOADNIL                          R106
      797 SETTABLEKS                       R106 R105 K137 ["PersistentPlanContext"]
      799 GETTABLEKS                       R106 R80 K140 ["Provider"]
      801 SETTABLEKS                       R106 R105 K96 ["ClaudeLLMPackageContextProvider"]
      803 GETTABLEKS                       R106 R85 K140 ["Provider"]
      805 SETTABLEKS                       R106 R105 K101 ["GeminiLLMPackageContextProvider"]
      807 GETTABLEKS                       R106 R87 K140 ["Provider"]
      809 SETTABLEKS                       R106 R105 K103 ["OpenAILLMPackageContextProvider"]
      811 GETTABLEKS                       R106 R89 K140 ["Provider"]
      813 SETTABLEKS                       R106 R105 K105 ["TestLLMPackageContextProvider"]
      815 GETTABLEKS                       R106 R92 K140 ["Provider"]
      817 SETTABLEKS                       R106 R105 K108 ["LLMPackageContextProvider"]
      819 SETTABLEKS                       R28 R105 K40 ["McpAuthorizerManagerContext"]
      821 SETTABLEKS                       R36 R105 K49 ["PersistedIntegrationContext"]
      823 SETTABLEKS                       R18 R105 K30 ["ExternalServerContext"]
      825 GETTABLEKS                       R106 R14 K140 ["Provider"]
      827 SETTABLEKS                       R106 R105 K138 ["EvalContextProvider"]
      829 SETTABLEKS                       R19 R105 K31 ["FeedbackContext"]
      831 SETTABLEKS                       R37 R105 K50 ["PersistedSettingsContext"]
      833 SETTABLEKS                       R105 R104 K9 ["Contexts"]
      835 DUPTABLE                         R105 K142 [{"ClaudeLLMRequest", "ClaudeLLMSystemMessage", "ClaudeLLMToolFormat"}]
      836 SETTABLEKS                       R81 R105 K97 ["ClaudeLLMRequest"]
      838 SETTABLEKS                       R82 R105 K98 ["ClaudeLLMSystemMessage"]
      840 SETTABLEKS                       R83 R105 K99 ["ClaudeLLMToolFormat"]
      842 SETTABLEKS                       R105 R104 K95 ["Claude"]
      844 DUPTABLE                         R105 K143 [{"LLMProcessEvent", "LLMToolFormat"}]
      845 SETTABLEKS                       R93 R105 K109 ["LLMProcessEvent"]
      847 SETTABLEKS                       R96 R105 K112 ["LLMToolFormat"]
      849 SETTABLEKS                       R105 R104 K107 ["DefaultLLMProvider"]
      851 DUPTABLE                         R105 K144 [{"TestLLMRequest"}]
      852 SETTABLEKS                       R90 R105 K106 ["TestLLMRequest"]
      854 SETTABLEKS                       R105 R104 K104 ["TestLLM"]
      856 DUPTABLE                         R105 K147 [{"useAddMessage", "useAddContent", "useEditContent", "useGetDialogWidget", "useWithClient", "useExternalServer", "useAsyncGuard", "usePersistedSettings", "createPersistedSetting", "useAssistantMode", "useAssistantModeToolStates", "useMultiPlayerClientAgentStates", "usePersistentPlan", "SystemReminders"}]
      857 SETTABLEKS                       R70 R105 K86 ["useAddMessage"]
      859 SETTABLEKS                       R69 R105 K85 ["useAddContent"]
      861 SETTABLEKS                       R74 R105 K90 ["useEditContent"]
      863 SETTABLEKS                       R75 R105 K91 ["useGetDialogWidget"]
      865 SETTABLEKS                       R78 R105 K94 ["useWithClient"]
      867 GETTABLEKS                       R106 R18 K145 ["useExternalServer"]
      869 SETTABLEKS                       R106 R105 K145 ["useExternalServer"]
      871 SETTABLEKS                       R73 R105 K89 ["useAsyncGuard"]
      873 SETTABLEKS                       R77 R105 K93 ["usePersistedSettings"]
      875 SETTABLEKS                       R65 R105 K81 ["createPersistedSetting"]
      877 SETTABLEKS                       R71 R105 K87 ["useAssistantMode"]
      879 SETTABLEKS                       R72 R105 K88 ["useAssistantModeToolStates"]
      881 SETTABLEKS                       R76 R105 K92 ["useMultiPlayerClientAgentStates"]
      883 MOVE                             R107 R101
      884 CALL                             R107 0 1
      885 JUMPIFNOT                        R107 ; [+8]
      886 GETIMPORT                        R106 K3 [require]
      888 GETTABLEKS                       R107 R0 K28 ["Hooks"]
      890 GETTABLEKS                       R107 R107 K146 ["usePersistentPlan"]
      892 CALL                             R106 1 1
      893 JUMP                             ; [+1]
      894 LOADNIL                          R106
      895 SETTABLEKS                       R106 R105 K146 ["usePersistentPlan"]
      897 SETTABLEKS                       R50 R105 K63 ["SystemReminders"]
      899 SETTABLEKS                       R105 R104 K28 ["Hooks"]
      901 GETTABLEKS                       R105 R17 K148 ["get"]
      903 CALL                             R105 0 1
      904 SETTABLEKS                       R105 R104 K123 ["ExternalHooks"]
      906 MOVE                             R106 R102
      907 CALL                             R106 0 1
      908 JUMPIFNOT                        R106 ; [+2]
      909 LOADNIL                          R105
      910 JUMP                             ; [+1]
      911 MOVE                             R105 R11
      912 SETTABLEKS                       R105 R104 K18 ["ContentWidgetRegistry"]
      914 SETTABLEKS                       R1 R104 K5 ["Accordion"]
      916 SETTABLEKS                       R4 R104 K11 ["Carousel"]
      918 SETTABLEKS                       R26 R104 K38 ["MainView"]
      920 SETTABLEKS                       R27 R104 K39 ["MarkdownText"]
      922 SETTABLEKS                       R45 R104 K58 ["ShimmerGradient"]
      924 SETTABLEKS                       R55 R104 K69 ["ToolMenuView"]
      926 SETTABLEKS                       R104 R103 K4 ["Components"]
      928 SETTABLEKS                       R59 R103 K70 ["Tools"]
      930 DUPTABLE                         R104 K149 [{"AnimationGen"}]
      931 DUPTABLE                         R105 K150 [{"AnimationGenConstants"}]
      932 SETTABLEKS                       R2 R105 K8 ["AnimationGenConstants"]
      934 SETTABLEKS                       R105 R104 K7 ["AnimationGen"]
      936 SETTABLEKS                       R104 R103 K6 ["Features"]
      938 SETTABLEKS                       R61 R103 K77 ["Types"]
      940 DUPTABLE                         R104 K157 [{"CLAUDE_API_KEY", "GEMINI_API_KEY", "OPENAI_API_KEY", "ASSISTANT_PROVIDER_KEYS", "ScopeTypes", "USE_ELEVATED_CAPABILITIES_KEY"}]
      941 GETTABLEKS                       R105 R61 K151 ["CLAUDE_API_KEY"]
      943 SETTABLEKS                       R105 R104 K151 ["CLAUDE_API_KEY"]
      945 GETTABLEKS                       R105 R61 K152 ["GEMINI_API_KEY"]
      947 SETTABLEKS                       R105 R104 K152 ["GEMINI_API_KEY"]
      949 GETTABLEKS                       R105 R61 K153 ["OPENAI_API_KEY"]
      951 SETTABLEKS                       R105 R104 K153 ["OPENAI_API_KEY"]
      953 GETTABLEKS                       R105 R61 K154 ["ASSISTANT_PROVIDER_KEYS"]
      955 SETTABLEKS                       R105 R104 K154 ["ASSISTANT_PROVIDER_KEYS"]
      957 GETTABLEKS                       R105 R61 K155 ["ScopeTypes"]
      959 SETTABLEKS                       R105 R104 K155 ["ScopeTypes"]
      961 GETTABLEKS                       R105 R8 K156 ["USE_ELEVATED_CAPABILITIES_KEY"]
      963 SETTABLEKS                       R105 R104 K156 ["USE_ELEVATED_CAPABILITIES_KEY"]
      965 SETTABLEKS                       R104 R103 K16 ["Constants"]
      967 DUPTABLE                         R104 K158 [{"CheckCodeSafety", "CommandExecution", "ConsoleOutput", "ContentWidgetRegistry", "DataModelType", "EvalController", "EvalFunctionRegistry", "ImageAttachmentUtils", "makeConversation", "MultiDataModelToolUtil", "MultiPlayersAgentClient", "MultiPlayersAgentServer", "OutputParser", "ServerStreamIdStore", "SpyableObject", "StreamEventUtils", "Time", "Tools", "ToolWidgetMappingRegistry", "truncateUtf8Safe", "VersionResolver"}]
      968 SETTABLEKS                       R5 R104 K13 ["CheckCodeSafety"]
      970 SETTABLEKS                       R6 R104 K14 ["CommandExecution"]
      972 SETTABLEKS                       R7 R104 K15 ["ConsoleOutput"]
      974 MOVE                             R106 R102
      975 CALL                             R106 0 1
      976 JUMPIFNOT                        R106 ; [+2]
      977 MOVE                             R105 R9
      978 JUMP                             ; [+1]
      979 LOADNIL                          R105
      980 SETTABLEKS                       R105 R104 K18 ["ContentWidgetRegistry"]
      982 SETTABLEKS                       R12 R104 K21 ["DataModelType"]
      984 SETTABLEKS                       R15 R104 K26 ["EvalController"]
      986 SETTABLEKS                       R16 R104 K27 ["EvalFunctionRegistry"]
      988 SETTABLEKS                       R21 R104 K33 ["ImageAttachmentUtils"]
      990 SETTABLEKS                       R66 R104 K82 ["makeConversation"]
      992 SETTABLEKS                       R31 R104 K43 ["MultiDataModelToolUtil"]
      994 SETTABLEKS                       R32 R104 K45 ["MultiPlayersAgentClient"]
      996 SETTABLEKS                       R33 R104 K46 ["MultiPlayersAgentServer"]
      998 SETTABLEKS                       R35 R104 K48 ["OutputParser"]
     1000 SETTABLEKS                       R42 R104 K55 ["ServerStreamIdStore"]
     1002 SETTABLEKS                       R47 R104 K60 ["SpyableObject"]
     1004 SETTABLEKS                       R48 R104 K61 ["StreamEventUtils"]
     1006 SETTABLEKS                       R54 R104 K68 ["Time"]
     1008 SETTABLEKS                       R57 R104 K70 ["Tools"]
     1010 MOVE                             R106 R102
     1011 CALL                             R106 0 1
     1012 JUMPIFNOT                        R106 ; [+2]
     1013 MOVE                             R105 R58
     1014 JUMP                             ; [+1]
     1015 LOADNIL                          R105
     1016 SETTABLEKS                       R105 R104 K73 ["ToolWidgetMappingRegistry"]
     1018 SETTABLEKS                       R68 R104 K84 ["truncateUtf8Safe"]
     1020 SETTABLEKS                       R63 R104 K79 ["VersionResolver"]
     1022 SETTABLEKS                       R104 R103 K119 ["Utils"]
     1024 SETTABLEKS                       R38 R103 K51 ["Persistence"]
     1026 SETTABLEKS                       R23 R103 K35 ["IntegrationManagement"]
     1028 SETTABLEKS                       R52 R103 K66 ["TestUtils"]
     1030 SETTABLEKS                       R51 R103 K64 ["TestIds"]
     1032 DUPTABLE                         R104 K160 [{"Claude", "Gemini", "CustomModelName", "OpenAI"}]
     1033 SETTABLEKS                       R97 R104 K95 ["Claude"]
     1035 SETTABLEKS                       R99 R104 K100 ["Gemini"]
     1037 SETTABLEKS                       R98 R104 K159 ["CustomModelName"]
     1039 SETTABLEKS                       R100 R104 K102 ["OpenAI"]
     1041 SETTABLEKS                       R104 R103 K120 ["APIKeys"]
     1043 DUPTABLE                         R104 K161 [{"Localization"}]
     1044 DUPTABLE                         R105 K162 [{"Translator"}]
     1045 SETTABLEKS                       R60 R105 K76 ["Translator"]
     1047 SETTABLEKS                       R105 R104 K75 ["Localization"]
     1049 SETTABLEKS                       R104 R103 K74 ["Resources"]
     1051 DUPTABLE                         R104 K163 [{"startGuest", "Environment", "LoadAssetHandlers", "RecordingHandlers"}]
     1052 SETTABLEKS                       R67 R104 K83 ["startGuest"]
     1054 SETTABLEKS                       R13 R104 K23 ["Environment"]
     1056 SETTABLEKS                       R25 R104 K37 ["LoadAssetHandlers"]
     1058 SETTABLEKS                       R40 R104 K53 ["RecordingHandlers"]
     1060 SETTABLEKS                       R104 R103 K22 ["Guest"]
     1062 SETTABLEKS                       R20 R103 K32 ["Flags"]
     1064 SETTABLEKS                       R62 R103 K78 ["UIToolRegistry"]
     1066 SETTABLEKS                       R41 R103 K54 ["Serializer"]
     1068 SETTABLEKS                       R46 R103 K59 ["Skills"]
     1070 SETTABLEKS                       R49 R103 K62 ["Subagents"]
     1072 MOVE                             R105 R101
     1073 CALL                             R105 0 1
     1074 JUMPIFNOT                        R105 ; [+6]
     1075 GETIMPORT                        R104 K3 [require]
     1077 GETTABLEKS                       R105 R0 K121 ["PersistentPlanRuntime"]
     1079 CALL                             R104 1 1
     1080 JUMP                             ; [+1]
     1081 LOADNIL                          R104
     1082 SETTABLEKS                       R104 R103 K121 ["PersistentPlanRuntime"]
     1084 RETURN                           R103 1

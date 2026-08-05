PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R2 K0 ["%*%*%*"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["SYSTEM_REMINDER_OPEN"]
        4 MOVE                             R5 R0
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K2 ["SYSTEM_REMINDER_CLOSE"]
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 4 1
       11 MOVE                             R1 R2
       12 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["VALID_ROLES"]
        7 GETTABLE                         R1 R2 R0
        8 JUMPIFNOT                        R1 ; [+1]
        9 RETURN                           R0 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 0 2
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Agent"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Plan"]
        8 SETLIST                          R0 R1 2 [1]
       10 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 64 0
       23 LOADK                            R4 K9 ["MCPClient"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          REF R4
       26 SETTABLEKS                       R5 R3 K10 ["setMcpClientIdentifier"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          REF R4
       30 SETTABLEKS                       R5 R3 K11 ["getMcpClientIdentifier"]
       32 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
       34 GETTABLEKS                       R5 R5 K13 ["assertNever"]
       36 SETTABLEKS                       R5 R3 K13 ["assertNever"]
       38 GETIMPORT                        R5 K16 [Font.new]
       40 LOADK                            R6 K17 ["rbxasset://fonts/families/BuilderMono.json"]
       41 GETIMPORT                        R7 K21 [Enum.FontWeight.Regular]
       43 GETIMPORT                        R8 K24 [Enum.FontStyle.Normal]
       45 CALL                             R5 3 1
       46 SETTABLEKS                       R5 R3 K25 ["CODE_FONT"]
       48 LOADK                            R5 K26 ["<system_reminder>"]
       49 SETTABLEKS                       R5 R3 K27 ["SYSTEM_REMINDER_OPEN"]
       51 LOADK                            R5 K28 ["</system_reminder>"]
       52 SETTABLEKS                       R5 R3 K29 ["SYSTEM_REMINDER_CLOSE"]
       54 DUPCLOSURE                       R5 K30 [PROTO_2]
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R5 R3 K31 ["getSystemReminder"]
       58 LOADK                            R5 K32 ["Default"]
       59 SETTABLEKS                       R5 R3 K33 ["DEFAULT_STUDIO_MODEL"]
       61 LOADK                            R5 K34 ["AssistantProviderKeys"]
       62 SETTABLEKS                       R5 R3 K35 ["ASSISTANT_PROVIDER_KEYS"]
       64 LOADK                            R5 K36 ["claudeapikey"]
       65 SETTABLEKS                       R5 R3 K37 ["CLAUDE_API_KEY"]
       67 LOADK                            R5 K38 ["geminiapikey"]
       68 SETTABLEKS                       R5 R3 K39 ["GEMINI_API_KEY"]
       70 LOADK                            R5 K40 ["openaiapikey"]
       71 SETTABLEKS                       R5 R3 K41 ["OPENAI_API_KEY"]
       73 LOADK                            R5 K42 ["AssistantProviderSettings"]
       74 SETTABLEKS                       R5 R3 K43 ["ASSISTANT_PROVIDER_SETTINGS"]
       76 LOADK                            R5 K44 ["AnthropicProviderEnabled"]
       77 SETTABLEKS                       R5 R3 K45 ["ANTHROPIC_PROVIDER_ENABLED"]
       79 LOADK                            R5 K46 ["OpenAIProviderEnabled"]
       80 SETTABLEKS                       R5 R3 K47 ["OPENAI_PROVIDER_ENABLED"]
       82 LOADK                            R5 K48 ["GeminiProviderEnabled"]
       83 SETTABLEKS                       R5 R3 K49 ["GEMINI_PROVIDER_ENABLED"]
       85 LOADK                            R5 K50 ["CurrentModel"]
       86 SETTABLEKS                       R5 R3 K51 ["CURRENT_MODEL"]
       88 DUPTABLE                         R5 K56 [{["Studio"] = "Studio", ["Claude"] = "Claude", ["Gemini"] = "Gemini", ["OpenAI"] = "OpenAI"}]
       89 SETTABLEKS                       R5 R3 K57 ["LLMProviderTypes"]
       91 DUPTABLE                         R5 K62 [{["Pending"] = "pending", ["Completed"] = "completed"}]
       92 SETTABLEKS                       R5 R3 K63 ["PlanTodoState"]
       94 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
       96 GETTABLEKS                       R5 R5 K64 ["ROLE"]
       98 SETTABLEKS                       R5 R3 K64 ["ROLE"]
      100 NEWTABLE                         R5 8 0
      102 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      104 GETTABLEKS                       R6 R6 K65 ["User"]
      106 LOADB                            R7 1
      107 SETTABLE                         R7 R5 R6
      108 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      110 GETTABLEKS                       R6 R6 K66 ["System"]
      112 LOADB                            R7 1
      113 SETTABLE                         R7 R5 R6
      114 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      116 GETTABLEKS                       R6 R6 K67 ["Assistant"]
      118 LOADB                            R7 1
      119 SETTABLE                         R7 R5 R6
      120 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      122 GETTABLEKS                       R6 R6 K68 ["Model"]
      124 LOADB                            R7 1
      125 SETTABLE                         R7 R5 R6
      126 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      128 GETTABLEKS                       R6 R6 K69 ["Function"]
      130 LOADB                            R7 1
      131 SETTABLE                         R7 R5 R6
      132 GETTABLEKS                       R6 R3 K64 ["ROLE"]
      134 GETTABLEKS                       R6 R6 K70 ["Tool"]
      136 LOADB                            R7 1
      137 SETTABLE                         R7 R5 R6
      138 SETTABLEKS                       R5 R3 K71 ["VALID_ROLES"]
      140 DUPCLOSURE                       R5 K72 [PROTO_3]
      141 CAPTURE                          VAL R3
      142 SETTABLEKS                       R5 R3 K73 ["roleFromString"]
      144 DUPTABLE                         R5 K82 [{["Disabled"] = "disabled", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Error"] = "error"}]
      145 SETTABLEKS                       R5 R3 K83 ["PersistenceLoadStates"]
      147 DUPTABLE                         R5 K86 [{["Threads"] = "Threads", ["Messages"] = "Messages"}]
      148 SETTABLEKS                       R5 R3 K87 ["ScopeTypes"]
      150 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
      152 GETTABLEKS                       R5 R5 K88 ["ClientErrorLiteral"]
      154 SETTABLEKS                       R5 R3 K88 ["ClientErrorLiteral"]
      156 DUPTABLE                         R5 K97 [{["Accepted"] = "accepted", ["Rejected"] = "rejected", ["Viewed"] = "viewed", ["Saved"] = "saved"}]
      157 SETTABLEKS                       R5 R3 K98 ["PlanDecision"]
      159 DUPTABLE                         R5 K102 [{["New"] = "new", ["Duplicate"] = "duplicate"}]
      160 SETTABLEKS                       R5 R3 K103 ["ThreadCreationReason"]
      162 DUPTABLE                         R5 K112 [{["FirstUserMessage"] = "first_user_message", ["LLMSummary"] = "llm_summary", ["DuplicateOrigin"] = "duplicate_origin", ["ManualRename"] = "manual_rename"}]
      163 SETTABLEKS                       R5 R3 K113 ["ThreadNamingSource"]
      165 DUPTABLE                         R5 K118 [{["UserDelete"] = "user_delete", ["UserConversationDelete"] = "user_conversation_delete"}]
      166 SETTABLEKS                       R5 R3 K119 ["DeletionReason"]
      168 DUPTABLE                         R5 K130 [{["MessageBranch"] = "message_branch", ["ThreadsMenu"] = "threads_menu", ["ThreadsMenuNew"] = "threads_menu_new", ["ClearConversation"] = "clear_conversation", ["RemoveThreadFallback"] = "remove_thread_fallback"}]
      169 SETTABLEKS                       R5 R3 K131 ["ThreadSwitchSource"]
      171 DUPTABLE                         R5 K138 [{["Load"] = "load", ["Save"] = "save", ["Delete"] = "delete"}]
      172 SETTABLEKS                       R5 R3 K139 ["PersistenceOperation"]
      174 DUPTABLE                         R5 K144 [{["Standard"] = "standard", ["ScriptChange"] = "script_change"}]
      175 SETTABLEKS                       R5 R3 K145 ["ConfirmationType"]
      177 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
      179 GETTABLEKS                       R5 R5 K146 ["AssistantMode"]
      181 DUPCLOSURE                       R6 K147 [PROTO_4]
      182 CAPTURE                          VAL R5
      183 SETTABLEKS                       R6 R3 K148 ["getAssistantModeOrdered"]
      185 SETTABLEKS                       R5 R3 K146 ["AssistantMode"]
      187 CLOSEUPVALS                      R4
      188 RETURN                           R3 1

PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADB                            R2 0
        1 LOADK                            R4 K0 ["Expected never type, got: %* with value: %*, %*"]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R7 R0
        4 GETIMPORT                        R6 K2 [typeof]
        6 CALL                             R6 1 1
        7 MOVE                             R7 R0
        8 GETIMPORT                        R8 K5 [debug.traceback]
       10 CALL                             R8 0 1
       11 NAMECALL                         R4 R4 K6 ["format"]
       13 CALL                             R4 4 1
       14 MOVE                             R3 R4
       15 FASTCALL2                        ASSERT R2 R3 ; [+3]
       17 GETIMPORT                        R1 K8 [assert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 1

PROTO_3:
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
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["PropertyRows"]
       20 GETTABLEKS                       R3 R3 K10 ["PropertyRowTypes"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 64 0
       25 LOADK                            R4 K11 ["MCPClient"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          REF R4
       28 SETTABLEKS                       R5 R3 K12 ["setMcpClientIdentifier"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          REF R4
       32 SETTABLEKS                       R5 R3 K13 ["getMcpClientIdentifier"]
       34 DUPCLOSURE                       R5 K14 [PROTO_2]
       35 SETTABLEKS                       R5 R3 K15 ["assertNever"]
       37 GETIMPORT                        R5 K18 [Font.new]
       39 LOADK                            R6 K19 ["rbxasset://fonts/families/BuilderMono.json"]
       40 GETIMPORT                        R7 K23 [Enum.FontWeight.Regular]
       42 GETIMPORT                        R8 K26 [Enum.FontStyle.Normal]
       44 CALL                             R5 3 1
       45 SETTABLEKS                       R5 R3 K27 ["CODE_FONT"]
       47 LOADK                            R5 K28 ["<system_reminder>"]
       48 SETTABLEKS                       R5 R3 K29 ["SYSTEM_REMINDER_OPEN"]
       50 LOADK                            R5 K30 ["</system_reminder>"]
       51 SETTABLEKS                       R5 R3 K31 ["SYSTEM_REMINDER_CLOSE"]
       53 DUPCLOSURE                       R5 K32 [PROTO_3]
       54 CAPTURE                          VAL R3
       55 SETTABLEKS                       R5 R3 K33 ["getSystemReminder"]
       57 LOADK                            R5 K34 ["Default"]
       58 SETTABLEKS                       R5 R3 K35 ["DEFAULT_STUDIO_MODEL"]
       60 LOADK                            R5 K36 ["AssistantProviderKeys"]
       61 SETTABLEKS                       R5 R3 K37 ["ASSISTANT_PROVIDER_KEYS"]
       63 LOADK                            R5 K38 ["claudeapikey"]
       64 SETTABLEKS                       R5 R3 K39 ["CLAUDE_API_KEY"]
       66 LOADK                            R5 K40 ["geminiapikey"]
       67 SETTABLEKS                       R5 R3 K41 ["GEMINI_API_KEY"]
       69 LOADK                            R5 K42 ["openaiapikey"]
       70 SETTABLEKS                       R5 R3 K43 ["OPENAI_API_KEY"]
       72 LOADK                            R5 K44 ["AssistantProviderSettings"]
       73 SETTABLEKS                       R5 R3 K45 ["ASSISTANT_PROVIDER_SETTINGS"]
       75 LOADK                            R5 K46 ["AnthropicProviderEnabled"]
       76 SETTABLEKS                       R5 R3 K47 ["ANTHROPIC_PROVIDER_ENABLED"]
       78 LOADK                            R5 K48 ["OpenAIProviderEnabled"]
       79 SETTABLEKS                       R5 R3 K49 ["OPENAI_PROVIDER_ENABLED"]
       81 LOADK                            R5 K50 ["GeminiProviderEnabled"]
       82 SETTABLEKS                       R5 R3 K51 ["GEMINI_PROVIDER_ENABLED"]
       84 LOADK                            R5 K52 ["CurrentModel"]
       85 SETTABLEKS                       R5 R3 K53 ["CURRENT_MODEL"]
       87 DUPTABLE                         R5 K58 [{["Studio"] = "Studio", ["Claude"] = "Claude", ["Gemini"] = "Gemini", ["OpenAI"] = "OpenAI"}]
       88 SETTABLEKS                       R5 R3 K59 ["LLMProviderTypes"]
       90 DUPTABLE                         R5 K64 [{["Pending"] = "pending", ["Completed"] = "completed"}]
       91 SETTABLEKS                       R5 R3 K65 ["PlanTodoState"]
       93 DUPTABLE                         R5 K78 [{["User"] = "user", ["System"] = "system", ["Assistant"] = "assistant", ["Model"] = "model", ["Function"] = "function", ["Tool"] = "tool"}]
       94 SETTABLEKS                       R5 R3 K79 ["ROLE"]
       96 NEWTABLE                         R5 8 0
       98 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      100 GETTABLEKS                       R6 R6 K66 ["User"]
      102 LOADB                            R7 1
      103 SETTABLE                         R7 R5 R6
      104 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      106 GETTABLEKS                       R6 R6 K68 ["System"]
      108 LOADB                            R7 1
      109 SETTABLE                         R7 R5 R6
      110 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      112 GETTABLEKS                       R6 R6 K70 ["Assistant"]
      114 LOADB                            R7 1
      115 SETTABLE                         R7 R5 R6
      116 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      118 GETTABLEKS                       R6 R6 K72 ["Model"]
      120 LOADB                            R7 1
      121 SETTABLE                         R7 R5 R6
      122 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      124 GETTABLEKS                       R6 R6 K74 ["Function"]
      126 LOADB                            R7 1
      127 SETTABLE                         R7 R5 R6
      128 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      130 GETTABLEKS                       R6 R6 K76 ["Tool"]
      132 LOADB                            R7 1
      133 SETTABLE                         R7 R5 R6
      134 SETTABLEKS                       R5 R3 K80 ["VALID_ROLES"]
      136 DUPTABLE                         R5 K89 [{["Disabled"] = "disabled", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Error"] = "error"}]
      137 SETTABLEKS                       R5 R3 K90 ["PersistenceLoadStates"]
      139 DUPTABLE                         R5 K93 [{["Threads"] = "Threads", ["Messages"] = "Messages"}]
      140 SETTABLEKS                       R5 R3 K94 ["ScopeTypes"]
      142 DUPTABLE                         R5 K107 [{["QuotaExceeded"] = "quota_exceeded", ["Timeout"] = "timeout", ["RequestFailed"] = "request_failed", ["ClientError"] = "client_error", ["InputDisabled"] = "input_disabled", ["TooManyRequest"] = "too_many_request"}]
      143 SETTABLEKS                       R5 R3 K108 ["ClientErrorLiteral"]
      145 DUPTABLE                         R5 K117 [{["Accepted"] = "accepted", ["Rejected"] = "rejected", ["Viewed"] = "viewed", ["Saved"] = "saved"}]
      146 SETTABLEKS                       R5 R3 K118 ["PlanDecision"]
      148 DUPTABLE                         R5 K122 [{["New"] = "new", ["Duplicate"] = "duplicate"}]
      149 SETTABLEKS                       R5 R3 K123 ["ThreadCreationReason"]
      151 DUPTABLE                         R5 K132 [{["FirstUserMessage"] = "first_user_message", ["LLMSummary"] = "llm_summary", ["DuplicateOrigin"] = "duplicate_origin", ["ManualRename"] = "manual_rename"}]
      152 SETTABLEKS                       R5 R3 K133 ["ThreadNamingSource"]
      154 DUPTABLE                         R5 K138 [{["UserDelete"] = "user_delete", ["UserConversationDelete"] = "user_conversation_delete"}]
      155 SETTABLEKS                       R5 R3 K139 ["DeletionReason"]
      157 DUPTABLE                         R5 K150 [{["MessageBranch"] = "message_branch", ["ThreadsMenu"] = "threads_menu", ["ThreadsMenuNew"] = "threads_menu_new", ["ClearConversation"] = "clear_conversation", ["RemoveThreadFallback"] = "remove_thread_fallback"}]
      158 SETTABLEKS                       R5 R3 K151 ["ThreadSwitchSource"]
      160 DUPTABLE                         R5 K158 [{["Load"] = "load", ["Save"] = "save", ["Delete"] = "delete"}]
      161 SETTABLEKS                       R5 R3 K159 ["PersistenceOperation"]
      163 DUPTABLE                         R5 K164 [{["Standard"] = "standard", ["ScriptChange"] = "script_change"}]
      164 SETTABLEKS                       R5 R3 K165 ["ConfirmationType"]
      166 DUPTABLE                         R5 K168 [{["Agent"] = "Agent", ["Plan"] = "Plan"}]
      167 DUPCLOSURE                       R6 K169 [PROTO_4]
      168 CAPTURE                          VAL R5
      169 SETTABLEKS                       R6 R3 K170 ["getAssistantModeOrdered"]
      171 SETTABLEKS                       R5 R3 K171 ["AssistantMode"]
      173 CLOSEUPVALS                      R4
      174 RETURN                           R3 1

PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R1 K0 ["%*%*%*"]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["SYSTEM_REMINDER_OPEN"]
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["SYSTEM_REMINDER_CLOSE"]
        8 NAMECALL                         R1 R1 K3 ["format"]
       10 CALL                             R1 4 1
       11 RETURN                           R1 1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{[1] = "resource", ["resource"]}]
        1 DUPTABLE                         R2 K6 [{"uri", "text", "mimeType"}]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K7 ["SYSTEM_REMINDER_RESOURCE_URI"]
        5 SETTABLEKS                       R3 R2 K3 ["uri"]
        7 SETTABLEKS                       R0 R2 K4 ["text"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["SYSTEM_REMINDER_RESOURCE_MIME"]
       12 SETTABLEKS                       R3 R2 K5 ["mimeType"]
       14 SETTABLEKS                       R2 R1 K1 ["resource"]
       16 RETURN                           R1 1

PROTO_4:
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

PROTO_5:
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
       58 LOADK                            R5 K32 ["system-reminder"]
       59 SETTABLEKS                       R5 R3 K33 ["SYSTEM_REMINDER_RESOURCE_URI"]
       61 LOADK                            R5 K34 ["system_reminder/v1"]
       62 SETTABLEKS                       R5 R3 K35 ["SYSTEM_REMINDER_RESOURCE_MIME"]
       64 DUPCLOSURE                       R5 K36 [PROTO_3]
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R5 R3 K37 ["getSystemReminderResourceBlock"]
       68 LOADK                            R5 K38 ["Default"]
       69 SETTABLEKS                       R5 R3 K39 ["DEFAULT_STUDIO_MODEL"]
       71 LOADK                            R5 K40 ["AssistantProviderKeys"]
       72 SETTABLEKS                       R5 R3 K41 ["ASSISTANT_PROVIDER_KEYS"]
       74 LOADK                            R5 K42 ["claudeapikey"]
       75 SETTABLEKS                       R5 R3 K43 ["CLAUDE_API_KEY"]
       77 LOADK                            R5 K44 ["geminiapikey"]
       78 SETTABLEKS                       R5 R3 K45 ["GEMINI_API_KEY"]
       80 LOADK                            R5 K46 ["openaiapikey"]
       81 SETTABLEKS                       R5 R3 K47 ["OPENAI_API_KEY"]
       83 LOADK                            R5 K48 ["AssistantProviderSettings"]
       84 SETTABLEKS                       R5 R3 K49 ["ASSISTANT_PROVIDER_SETTINGS"]
       86 LOADK                            R5 K50 ["AnthropicProviderEnabled"]
       87 SETTABLEKS                       R5 R3 K51 ["ANTHROPIC_PROVIDER_ENABLED"]
       89 LOADK                            R5 K52 ["OpenAIProviderEnabled"]
       90 SETTABLEKS                       R5 R3 K53 ["OPENAI_PROVIDER_ENABLED"]
       92 LOADK                            R5 K54 ["GeminiProviderEnabled"]
       93 SETTABLEKS                       R5 R3 K55 ["GEMINI_PROVIDER_ENABLED"]
       95 LOADK                            R5 K56 ["CurrentModel"]
       96 SETTABLEKS                       R5 R3 K57 ["CURRENT_MODEL"]
       98 DUPTABLE                         R5 K62 [{["Studio"] = "Studio", ["Claude"] = "Claude", ["Gemini"] = "Gemini", ["OpenAI"] = "OpenAI"}]
       99 SETTABLEKS                       R5 R3 K63 ["LLMProviderTypes"]
      101 DUPTABLE                         R5 K68 [{["Pending"] = "pending", ["Completed"] = "completed"}]
      102 SETTABLEKS                       R5 R3 K69 ["PlanTodoState"]
      104 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
      106 GETTABLEKS                       R5 R5 K70 ["ROLE"]
      108 SETTABLEKS                       R5 R3 K70 ["ROLE"]
      110 NEWTABLE                         R5 8 0
      112 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      114 GETTABLEKS                       R6 R6 K71 ["User"]
      116 LOADB                            R7 1
      117 SETTABLE                         R7 R5 R6
      118 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      120 GETTABLEKS                       R6 R6 K72 ["System"]
      122 LOADB                            R7 1
      123 SETTABLE                         R7 R5 R6
      124 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      126 GETTABLEKS                       R6 R6 K73 ["Assistant"]
      128 LOADB                            R7 1
      129 SETTABLE                         R7 R5 R6
      130 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      132 GETTABLEKS                       R6 R6 K74 ["Model"]
      134 LOADB                            R7 1
      135 SETTABLE                         R7 R5 R6
      136 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      138 GETTABLEKS                       R6 R6 K75 ["Function"]
      140 LOADB                            R7 1
      141 SETTABLE                         R7 R5 R6
      142 GETTABLEKS                       R6 R3 K70 ["ROLE"]
      144 GETTABLEKS                       R6 R6 K76 ["Tool"]
      146 LOADB                            R7 1
      147 SETTABLE                         R7 R5 R6
      148 SETTABLEKS                       R5 R3 K77 ["VALID_ROLES"]
      150 DUPCLOSURE                       R5 K78 [PROTO_4]
      151 CAPTURE                          VAL R3
      152 SETTABLEKS                       R5 R3 K79 ["roleFromString"]
      154 DUPTABLE                         R5 K88 [{["Disabled"] = "disabled", ["Loading"] = "loading", ["Loaded"] = "loaded", ["Error"] = "error"}]
      155 SETTABLEKS                       R5 R3 K89 ["PersistenceLoadStates"]
      157 DUPTABLE                         R5 K92 [{["Threads"] = "Threads", ["Messages"] = "Messages"}]
      158 SETTABLEKS                       R5 R3 K93 ["ScopeTypes"]
      160 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
      162 GETTABLEKS                       R5 R5 K94 ["ClientErrorLiteral"]
      164 SETTABLEKS                       R5 R3 K94 ["ClientErrorLiteral"]
      166 DUPTABLE                         R5 K103 [{["Accepted"] = "accepted", ["Rejected"] = "rejected", ["Viewed"] = "viewed", ["Saved"] = "saved"}]
      167 SETTABLEKS                       R5 R3 K104 ["PlanDecision"]
      169 DUPTABLE                         R5 K108 [{["New"] = "new", ["Duplicate"] = "duplicate"}]
      170 SETTABLEKS                       R5 R3 K109 ["ThreadCreationReason"]
      172 DUPTABLE                         R5 K118 [{["FirstUserMessage"] = "first_user_message", ["LLMSummary"] = "llm_summary", ["DuplicateOrigin"] = "duplicate_origin", ["ManualRename"] = "manual_rename"}]
      173 SETTABLEKS                       R5 R3 K119 ["ThreadNamingSource"]
      175 DUPTABLE                         R5 K124 [{["UserDelete"] = "user_delete", ["UserConversationDelete"] = "user_conversation_delete"}]
      176 SETTABLEKS                       R5 R3 K125 ["DeletionReason"]
      178 DUPTABLE                         R5 K136 [{["MessageBranch"] = "message_branch", ["ThreadsMenu"] = "threads_menu", ["ThreadsMenuNew"] = "threads_menu_new", ["ClearConversation"] = "clear_conversation", ["RemoveThreadFallback"] = "remove_thread_fallback"}]
      179 SETTABLEKS                       R5 R3 K137 ["ThreadSwitchSource"]
      181 DUPTABLE                         R5 K144 [{["Load"] = "load", ["Save"] = "save", ["Delete"] = "delete"}]
      182 SETTABLEKS                       R5 R3 K145 ["PersistenceOperation"]
      184 DUPTABLE                         R5 K150 [{["Standard"] = "standard", ["ScriptChange"] = "script_change"}]
      185 SETTABLEKS                       R5 R3 K151 ["ConfirmationType"]
      187 GETTABLEKS                       R5 R1 K12 ["StreamTypes"]
      189 GETTABLEKS                       R5 R5 K152 ["AssistantMode"]
      191 DUPCLOSURE                       R6 K153 [PROTO_5]
      192 CAPTURE                          VAL R5
      193 SETTABLEKS                       R6 R3 K154 ["getAssistantModeOrdered"]
      195 SETTABLEKS                       R5 R3 K152 ["AssistantMode"]
      197 CLOSEUPVALS                      R4
      198 RETURN                           R3 1

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
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["SYSTEM_REMINDER_OPEN"]
        4 MOVE                             R5 R0
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R6 R7 K2 ["SYSTEM_REMINDER_CLOSE"]
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 4 1
       11 MOVE                             R1 R2
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["PropertyRows"]
       20 GETTABLEKS                       R3 R4 K10 ["PropertyRowTypes"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 32 0
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
       87 DUPTABLE                         R5 K60 [{"User", "System", "Assistant", "Model", "Function", "Tool"}]
       88 LOADK                            R6 K61 ["user"]
       89 SETTABLEKS                       R6 R5 K54 ["User"]
       91 LOADK                            R6 K62 ["system"]
       92 SETTABLEKS                       R6 R5 K55 ["System"]
       94 LOADK                            R6 K63 ["assistant"]
       95 SETTABLEKS                       R6 R5 K56 ["Assistant"]
       97 LOADK                            R6 K64 ["model"]
       98 SETTABLEKS                       R6 R5 K57 ["Model"]
      100 LOADK                            R6 K65 ["function"]
      101 SETTABLEKS                       R6 R5 K58 ["Function"]
      103 LOADK                            R6 K66 ["tool"]
      104 SETTABLEKS                       R6 R5 K59 ["Tool"]
      106 SETTABLEKS                       R5 R3 K67 ["ROLE"]
      108 DUPTABLE                         R5 K70 [{"Conversation", "Thread"}]
      109 LOADK                            R6 K68 ["Conversation"]
      110 SETTABLEKS                       R6 R5 K68 ["Conversation"]
      112 LOADK                            R6 K69 ["Thread"]
      113 SETTABLEKS                       R6 R5 K69 ["Thread"]
      115 SETTABLEKS                       R5 R3 K71 ["SCOPE_TYPES"]
      117 DUPTABLE                         R5 K74 [{"New", "Duplicate"}]
      118 LOADK                            R6 K17 ["new"]
      119 SETTABLEKS                       R6 R5 K72 ["New"]
      121 LOADK                            R6 K75 ["duplicate"]
      122 SETTABLEKS                       R6 R5 K73 ["Duplicate"]
      124 SETTABLEKS                       R5 R3 K76 ["ThreadCreationReason"]
      126 DUPTABLE                         R5 K81 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      127 LOADK                            R6 K82 ["first_user_message"]
      128 SETTABLEKS                       R6 R5 K77 ["FirstUserMessage"]
      130 LOADK                            R6 K83 ["llm_summary"]
      131 SETTABLEKS                       R6 R5 K78 ["LLMSummary"]
      133 LOADK                            R6 K84 ["duplicate_origin"]
      134 SETTABLEKS                       R6 R5 K79 ["DuplicateOrigin"]
      136 LOADK                            R6 K85 ["manual_rename"]
      137 SETTABLEKS                       R6 R5 K80 ["ManualRename"]
      139 SETTABLEKS                       R5 R3 K86 ["ThreadNamingSource"]
      141 DUPTABLE                         R5 K89 [{"UserDelete", "UserConversationDelete"}]
      142 LOADK                            R6 K90 ["user_delete"]
      143 SETTABLEKS                       R6 R5 K87 ["UserDelete"]
      145 LOADK                            R6 K91 ["user_conversation_delete"]
      146 SETTABLEKS                       R6 R5 K88 ["UserConversationDelete"]
      148 SETTABLEKS                       R5 R3 K92 ["DeletionReason"]
      150 DUPTABLE                         R5 K98 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      151 LOADK                            R6 K99 ["message_branch"]
      152 SETTABLEKS                       R6 R5 K93 ["MessageBranch"]
      154 LOADK                            R6 K100 ["threads_menu"]
      155 SETTABLEKS                       R6 R5 K94 ["ThreadsMenu"]
      157 LOADK                            R6 K101 ["threads_menu_new"]
      158 SETTABLEKS                       R6 R5 K95 ["ThreadsMenuNew"]
      160 LOADK                            R6 K102 ["clear_conversation"]
      161 SETTABLEKS                       R6 R5 K96 ["ClearConversation"]
      163 LOADK                            R6 K103 ["remove_thread_fallback"]
      164 SETTABLEKS                       R6 R5 K97 ["RemoveThreadFallback"]
      166 SETTABLEKS                       R5 R3 K104 ["ThreadSwitchSource"]
      168 DUPTABLE                         R5 K108 [{"Load", "Save", "Delete"}]
      169 LOADK                            R6 K109 ["load"]
      170 SETTABLEKS                       R6 R5 K105 ["Load"]
      172 LOADK                            R6 K110 ["save"]
      173 SETTABLEKS                       R6 R5 K106 ["Save"]
      175 LOADK                            R6 K111 ["delete"]
      176 SETTABLEKS                       R6 R5 K107 ["Delete"]
      178 SETTABLEKS                       R5 R3 K112 ["PersistenceOperation"]
      180 DUPTABLE                         R5 K115 [{"Standard", "ScriptChange"}]
      181 LOADK                            R6 K116 ["standard"]
      182 SETTABLEKS                       R6 R5 K113 ["Standard"]
      184 LOADK                            R6 K117 ["script_change"]
      185 SETTABLEKS                       R6 R5 K114 ["ScriptChange"]
      187 SETTABLEKS                       R5 R3 K118 ["ConfirmationType"]
      189 DUPTABLE                         R5 K121 [{"Agent", "Test"}]
      190 LOADK                            R6 K119 ["Agent"]
      191 SETTABLEKS                       R6 R5 K119 ["Agent"]
      193 LOADK                            R6 K120 ["Test"]
      194 SETTABLEKS                       R6 R5 K120 ["Test"]
      196 NEWTABLE                         R6 0 2
      198 GETTABLEKS                       R7 R5 K119 ["Agent"]
      200 GETTABLEKS                       R8 R5 K120 ["Test"]
      202 SETLIST                          R6 R7 2 [1]
      204 SETTABLEKS                       R5 R3 K122 ["AssistantMode"]
      206 SETTABLEKS                       R6 R3 K123 ["AssistantModeOrdered"]
      208 CLOSEUPVALS                      R4
      209 RETURN                           R3 1

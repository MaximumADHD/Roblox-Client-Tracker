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
       14 NEWTABLE                         R2 32 0
       16 LOADK                            R3 K8 ["MCPClient"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          REF R3
       19 SETTABLEKS                       R4 R2 K9 ["setMcpClientIdentifier"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          REF R3
       23 SETTABLEKS                       R4 R2 K10 ["getMcpClientIdentifier"]
       25 DUPCLOSURE                       R4 K11 [PROTO_2]
       26 SETTABLEKS                       R4 R2 K12 ["assertNever"]
       28 GETIMPORT                        R4 K15 [Font.new]
       30 LOADK                            R5 K16 ["rbxasset://fonts/families/BuilderMono.json"]
       31 GETIMPORT                        R6 K20 [Enum.FontWeight.Regular]
       33 GETIMPORT                        R7 K23 [Enum.FontStyle.Normal]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R2 K24 ["CODE_FONT"]
       38 LOADK                            R4 K25 ["<system_reminder>"]
       39 SETTABLEKS                       R4 R2 K26 ["SYSTEM_REMINDER_OPEN"]
       41 LOADK                            R4 K27 ["</system_reminder>"]
       42 SETTABLEKS                       R4 R2 K28 ["SYSTEM_REMINDER_CLOSE"]
       44 DUPCLOSURE                       R4 K29 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R4 R2 K30 ["getSystemReminder"]
       48 LOADK                            R4 K31 ["Default"]
       49 SETTABLEKS                       R4 R2 K32 ["DEFAULT_STUDIO_MODEL"]
       51 LOADK                            R4 K33 ["AssistantProviderKeys"]
       52 SETTABLEKS                       R4 R2 K34 ["ASSISTANT_PROVIDER_KEYS"]
       54 LOADK                            R4 K35 ["claudeapikey"]
       55 SETTABLEKS                       R4 R2 K36 ["CLAUDE_API_KEY"]
       57 LOADK                            R4 K37 ["geminiapikey"]
       58 SETTABLEKS                       R4 R2 K38 ["GEMINI_API_KEY"]
       60 LOADK                            R4 K39 ["openaiapikey"]
       61 SETTABLEKS                       R4 R2 K40 ["OPENAI_API_KEY"]
       63 LOADK                            R4 K41 ["AssistantProviderSettings"]
       64 SETTABLEKS                       R4 R2 K42 ["ASSISTANT_PROVIDER_SETTINGS"]
       66 LOADK                            R4 K43 ["AnthropicProviderEnabled"]
       67 SETTABLEKS                       R4 R2 K44 ["ANTHROPIC_PROVIDER_ENABLED"]
       69 LOADK                            R4 K45 ["OpenAIProviderEnabled"]
       70 SETTABLEKS                       R4 R2 K46 ["OPENAI_PROVIDER_ENABLED"]
       72 LOADK                            R4 K47 ["GeminiProviderEnabled"]
       73 SETTABLEKS                       R4 R2 K48 ["GEMINI_PROVIDER_ENABLED"]
       75 LOADK                            R4 K49 ["CurrentModel"]
       76 SETTABLEKS                       R4 R2 K50 ["CURRENT_MODEL"]
       78 DUPTABLE                         R4 K57 [{"User", "System", "Assistant", "Model", "Function", "Tool"}]
       79 LOADK                            R5 K58 ["user"]
       80 SETTABLEKS                       R5 R4 K51 ["User"]
       82 LOADK                            R5 K59 ["system"]
       83 SETTABLEKS                       R5 R4 K52 ["System"]
       85 LOADK                            R5 K60 ["assistant"]
       86 SETTABLEKS                       R5 R4 K53 ["Assistant"]
       88 LOADK                            R5 K61 ["model"]
       89 SETTABLEKS                       R5 R4 K54 ["Model"]
       91 LOADK                            R5 K62 ["function"]
       92 SETTABLEKS                       R5 R4 K55 ["Function"]
       94 LOADK                            R5 K63 ["tool"]
       95 SETTABLEKS                       R5 R4 K56 ["Tool"]
       97 SETTABLEKS                       R4 R2 K64 ["ROLE"]
       99 DUPTABLE                         R4 K67 [{"Conversation", "Thread"}]
      100 LOADK                            R5 K65 ["Conversation"]
      101 SETTABLEKS                       R5 R4 K65 ["Conversation"]
      103 LOADK                            R5 K66 ["Thread"]
      104 SETTABLEKS                       R5 R4 K66 ["Thread"]
      106 SETTABLEKS                       R4 R2 K68 ["SCOPE_TYPES"]
      108 DUPTABLE                         R4 K71 [{"New", "Duplicate"}]
      109 LOADK                            R5 K14 ["new"]
      110 SETTABLEKS                       R5 R4 K69 ["New"]
      112 LOADK                            R5 K72 ["duplicate"]
      113 SETTABLEKS                       R5 R4 K70 ["Duplicate"]
      115 SETTABLEKS                       R4 R2 K73 ["ThreadCreationReason"]
      117 DUPTABLE                         R4 K78 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      118 LOADK                            R5 K79 ["first_user_message"]
      119 SETTABLEKS                       R5 R4 K74 ["FirstUserMessage"]
      121 LOADK                            R5 K80 ["llm_summary"]
      122 SETTABLEKS                       R5 R4 K75 ["LLMSummary"]
      124 LOADK                            R5 K81 ["duplicate_origin"]
      125 SETTABLEKS                       R5 R4 K76 ["DuplicateOrigin"]
      127 LOADK                            R5 K82 ["manual_rename"]
      128 SETTABLEKS                       R5 R4 K77 ["ManualRename"]
      130 SETTABLEKS                       R4 R2 K83 ["ThreadNamingSource"]
      132 DUPTABLE                         R4 K86 [{"UserDelete", "UserConversationDelete"}]
      133 LOADK                            R5 K87 ["user_delete"]
      134 SETTABLEKS                       R5 R4 K84 ["UserDelete"]
      136 LOADK                            R5 K88 ["user_conversation_delete"]
      137 SETTABLEKS                       R5 R4 K85 ["UserConversationDelete"]
      139 SETTABLEKS                       R4 R2 K89 ["DeletionReason"]
      141 DUPTABLE                         R4 K95 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      142 LOADK                            R5 K96 ["message_branch"]
      143 SETTABLEKS                       R5 R4 K90 ["MessageBranch"]
      145 LOADK                            R5 K97 ["threads_menu"]
      146 SETTABLEKS                       R5 R4 K91 ["ThreadsMenu"]
      148 LOADK                            R5 K98 ["threads_menu_new"]
      149 SETTABLEKS                       R5 R4 K92 ["ThreadsMenuNew"]
      151 LOADK                            R5 K99 ["clear_conversation"]
      152 SETTABLEKS                       R5 R4 K93 ["ClearConversation"]
      154 LOADK                            R5 K100 ["remove_thread_fallback"]
      155 SETTABLEKS                       R5 R4 K94 ["RemoveThreadFallback"]
      157 SETTABLEKS                       R4 R2 K101 ["ThreadSwitchSource"]
      159 DUPTABLE                         R4 K105 [{"Load", "Save", "Delete"}]
      160 LOADK                            R5 K106 ["load"]
      161 SETTABLEKS                       R5 R4 K102 ["Load"]
      163 LOADK                            R5 K107 ["save"]
      164 SETTABLEKS                       R5 R4 K103 ["Save"]
      166 LOADK                            R5 K108 ["delete"]
      167 SETTABLEKS                       R5 R4 K104 ["Delete"]
      169 SETTABLEKS                       R4 R2 K109 ["PersistenceOperation"]
      171 DUPTABLE                         R4 K112 [{"Standard", "ScriptChange"}]
      172 LOADK                            R5 K113 ["standard"]
      173 SETTABLEKS                       R5 R4 K110 ["Standard"]
      175 LOADK                            R5 K114 ["script_change"]
      176 SETTABLEKS                       R5 R4 K111 ["ScriptChange"]
      178 SETTABLEKS                       R4 R2 K115 ["ConfirmationType"]
      180 CLOSEUPVALS                      R3
      181 RETURN                           R2 1

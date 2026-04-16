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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantTestModeDropdown"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 32 0
       32 LOADK                            R5 K13 ["MCPClient"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          REF R5
       35 SETTABLEKS                       R6 R4 K14 ["setMcpClientIdentifier"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          REF R5
       39 SETTABLEKS                       R6 R4 K15 ["getMcpClientIdentifier"]
       41 DUPCLOSURE                       R6 K16 [PROTO_2]
       42 SETTABLEKS                       R6 R4 K17 ["assertNever"]
       44 GETIMPORT                        R6 K20 [Font.new]
       46 LOADK                            R7 K21 ["rbxasset://fonts/families/BuilderMono.json"]
       47 GETIMPORT                        R8 K25 [Enum.FontWeight.Regular]
       49 GETIMPORT                        R9 K28 [Enum.FontStyle.Normal]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R4 K29 ["CODE_FONT"]
       54 LOADK                            R6 K30 ["<system_reminder>"]
       55 SETTABLEKS                       R6 R4 K31 ["SYSTEM_REMINDER_OPEN"]
       57 LOADK                            R6 K32 ["</system_reminder>"]
       58 SETTABLEKS                       R6 R4 K33 ["SYSTEM_REMINDER_CLOSE"]
       60 DUPCLOSURE                       R6 K34 [PROTO_3]
       61 CAPTURE                          VAL R4
       62 SETTABLEKS                       R6 R4 K35 ["getSystemReminder"]
       64 LOADK                            R6 K36 ["Default"]
       65 SETTABLEKS                       R6 R4 K37 ["DEFAULT_STUDIO_MODEL"]
       67 LOADK                            R6 K38 ["AssistantProviderKeys"]
       68 SETTABLEKS                       R6 R4 K39 ["ASSISTANT_PROVIDER_KEYS"]
       70 LOADK                            R6 K40 ["claudeapikey"]
       71 SETTABLEKS                       R6 R4 K41 ["CLAUDE_API_KEY"]
       73 LOADK                            R6 K42 ["geminiapikey"]
       74 SETTABLEKS                       R6 R4 K43 ["GEMINI_API_KEY"]
       76 LOADK                            R6 K44 ["openaiapikey"]
       77 SETTABLEKS                       R6 R4 K45 ["OPENAI_API_KEY"]
       79 LOADK                            R6 K46 ["AssistantProviderSettings"]
       80 SETTABLEKS                       R6 R4 K47 ["ASSISTANT_PROVIDER_SETTINGS"]
       82 LOADK                            R6 K48 ["AnthropicProviderEnabled"]
       83 SETTABLEKS                       R6 R4 K49 ["ANTHROPIC_PROVIDER_ENABLED"]
       85 LOADK                            R6 K50 ["OpenAIProviderEnabled"]
       86 SETTABLEKS                       R6 R4 K51 ["OPENAI_PROVIDER_ENABLED"]
       88 LOADK                            R6 K52 ["GeminiProviderEnabled"]
       89 SETTABLEKS                       R6 R4 K53 ["GEMINI_PROVIDER_ENABLED"]
       91 LOADK                            R6 K54 ["CurrentModel"]
       92 SETTABLEKS                       R6 R4 K55 ["CURRENT_MODEL"]
       94 DUPTABLE                         R6 K60 [{"Studio", "Claude", "Gemini", "OpenAI"}]
       95 LOADK                            R7 K56 ["Studio"]
       96 SETTABLEKS                       R7 R6 K56 ["Studio"]
       98 LOADK                            R7 K57 ["Claude"]
       99 SETTABLEKS                       R7 R6 K57 ["Claude"]
      101 LOADK                            R7 K58 ["Gemini"]
      102 SETTABLEKS                       R7 R6 K58 ["Gemini"]
      104 LOADK                            R7 K59 ["OpenAI"]
      105 SETTABLEKS                       R7 R6 K59 ["OpenAI"]
      107 SETTABLEKS                       R6 R4 K61 ["LLMProviderTypes"]
      109 DUPTABLE                         R6 K68 [{"User", "System", "Assistant", "Model", "Function", "Tool"}]
      110 LOADK                            R7 K69 ["user"]
      111 SETTABLEKS                       R7 R6 K62 ["User"]
      113 LOADK                            R7 K70 ["system"]
      114 SETTABLEKS                       R7 R6 K63 ["System"]
      116 LOADK                            R7 K71 ["assistant"]
      117 SETTABLEKS                       R7 R6 K64 ["Assistant"]
      119 LOADK                            R7 K72 ["model"]
      120 SETTABLEKS                       R7 R6 K65 ["Model"]
      122 LOADK                            R7 K73 ["function"]
      123 SETTABLEKS                       R7 R6 K66 ["Function"]
      125 LOADK                            R7 K74 ["tool"]
      126 SETTABLEKS                       R7 R6 K67 ["Tool"]
      128 SETTABLEKS                       R6 R4 K75 ["ROLE"]
      130 DUPTABLE                         R6 K78 [{"Conversation", "Thread"}]
      131 LOADK                            R7 K76 ["Conversation"]
      132 SETTABLEKS                       R7 R6 K76 ["Conversation"]
      134 LOADK                            R7 K77 ["Thread"]
      135 SETTABLEKS                       R7 R6 K77 ["Thread"]
      137 SETTABLEKS                       R6 R4 K79 ["SCOPE_TYPES"]
      139 DUPTABLE                         R6 K82 [{"New", "Duplicate"}]
      140 LOADK                            R7 K19 ["new"]
      141 SETTABLEKS                       R7 R6 K80 ["New"]
      143 LOADK                            R7 K83 ["duplicate"]
      144 SETTABLEKS                       R7 R6 K81 ["Duplicate"]
      146 SETTABLEKS                       R6 R4 K84 ["ThreadCreationReason"]
      148 DUPTABLE                         R6 K89 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      149 LOADK                            R7 K90 ["first_user_message"]
      150 SETTABLEKS                       R7 R6 K85 ["FirstUserMessage"]
      152 LOADK                            R7 K91 ["llm_summary"]
      153 SETTABLEKS                       R7 R6 K86 ["LLMSummary"]
      155 LOADK                            R7 K92 ["duplicate_origin"]
      156 SETTABLEKS                       R7 R6 K87 ["DuplicateOrigin"]
      158 LOADK                            R7 K93 ["manual_rename"]
      159 SETTABLEKS                       R7 R6 K88 ["ManualRename"]
      161 SETTABLEKS                       R6 R4 K94 ["ThreadNamingSource"]
      163 DUPTABLE                         R6 K97 [{"UserDelete", "UserConversationDelete"}]
      164 LOADK                            R7 K98 ["user_delete"]
      165 SETTABLEKS                       R7 R6 K95 ["UserDelete"]
      167 LOADK                            R7 K99 ["user_conversation_delete"]
      168 SETTABLEKS                       R7 R6 K96 ["UserConversationDelete"]
      170 SETTABLEKS                       R6 R4 K100 ["DeletionReason"]
      172 DUPTABLE                         R6 K106 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      173 LOADK                            R7 K107 ["message_branch"]
      174 SETTABLEKS                       R7 R6 K101 ["MessageBranch"]
      176 LOADK                            R7 K108 ["threads_menu"]
      177 SETTABLEKS                       R7 R6 K102 ["ThreadsMenu"]
      179 LOADK                            R7 K109 ["threads_menu_new"]
      180 SETTABLEKS                       R7 R6 K103 ["ThreadsMenuNew"]
      182 LOADK                            R7 K110 ["clear_conversation"]
      183 SETTABLEKS                       R7 R6 K104 ["ClearConversation"]
      185 LOADK                            R7 K111 ["remove_thread_fallback"]
      186 SETTABLEKS                       R7 R6 K105 ["RemoveThreadFallback"]
      188 SETTABLEKS                       R6 R4 K112 ["ThreadSwitchSource"]
      190 DUPTABLE                         R6 K116 [{"Load", "Save", "Delete"}]
      191 LOADK                            R7 K117 ["load"]
      192 SETTABLEKS                       R7 R6 K113 ["Load"]
      194 LOADK                            R7 K118 ["save"]
      195 SETTABLEKS                       R7 R6 K114 ["Save"]
      197 LOADK                            R7 K119 ["delete"]
      198 SETTABLEKS                       R7 R6 K115 ["Delete"]
      200 SETTABLEKS                       R6 R4 K120 ["PersistenceOperation"]
      202 DUPTABLE                         R6 K123 [{"Standard", "ScriptChange"}]
      203 LOADK                            R7 K124 ["standard"]
      204 SETTABLEKS                       R7 R6 K121 ["Standard"]
      206 LOADK                            R7 K125 ["script_change"]
      207 SETTABLEKS                       R7 R6 K122 ["ScriptChange"]
      209 SETTABLEKS                       R6 R4 K126 ["ConfirmationType"]
      211 GETIMPORT                        R6 K5 [require]
      213 GETTABLEKS                       R8 R0 K11 ["Flags"]
      215 GETTABLEKS                       R7 R8 K127 ["FFlagAssistantPlanMode"]
      217 CALL                             R6 1 1
      218 DUPTABLE                         R7 K131 [{"Agent", "Test", "Plan"}]
      219 LOADK                            R8 K128 ["Agent"]
      220 SETTABLEKS                       R8 R7 K128 ["Agent"]
      222 LOADK                            R8 K129 ["Test"]
      223 SETTABLEKS                       R8 R7 K129 ["Test"]
      225 MOVE                             R9 R6
      226 CALL                             R9 0 1
      227 JUMPIFNOT                        R9 ; [+2]
      228 LOADK                            R8 K130 ["Plan"]
      229 JUMP                             ; [+1]
      230 LOADNIL                          R8
      231 SETTABLEKS                       R8 R7 K130 ["Plan"]
      233 NEWTABLE                         R8 0 1
      235 GETTABLEKS                       R9 R7 K128 ["Agent"]
      237 SETLIST                          R8 R9 1 [1]
      239 MOVE                             R9 R3
      240 CALL                             R9 0 1
      241 JUMPIFNOT                        R9 ; [+8]
      242 GETTABLEKS                       R11 R7 K129 ["Test"]
      244 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      246 MOVE                             R10 R8
      247 GETIMPORT                        R9 K134 [table.insert]
      249 CALL                             R9 2 0
      250 MOVE                             R9 R6
      251 CALL                             R9 0 1
      252 JUMPIFNOT                        R9 ; [+8]
      253 GETTABLEKS                       R11 R7 K130 ["Plan"]
      255 FASTCALL2                        TABLE_INSERT R8 R11 ; [+4]
      257 MOVE                             R10 R8
      258 GETIMPORT                        R9 K134 [table.insert]
      260 CALL                             R9 2 0
      261 SETTABLEKS                       R7 R4 K135 ["AssistantMode"]
      263 SETTABLEKS                       R8 R4 K136 ["AssistantModeOrdered"]
      265 CLOSEUPVALS                      R5
      266 RETURN                           R4 1

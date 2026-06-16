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
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Agent"]
        5 SETLIST                          R0 R1 1 [1]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["Plan"]
       13 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K4 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 1

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
       87 DUPTABLE                         R5 K58 [{"Studio", "Claude", "Gemini", "OpenAI"}]
       88 LOADK                            R6 K54 ["Studio"]
       89 SETTABLEKS                       R6 R5 K54 ["Studio"]
       91 LOADK                            R6 K55 ["Claude"]
       92 SETTABLEKS                       R6 R5 K55 ["Claude"]
       94 LOADK                            R6 K56 ["Gemini"]
       95 SETTABLEKS                       R6 R5 K56 ["Gemini"]
       97 LOADK                            R6 K57 ["OpenAI"]
       98 SETTABLEKS                       R6 R5 K57 ["OpenAI"]
      100 SETTABLEKS                       R5 R3 K59 ["LLMProviderTypes"]
      102 DUPTABLE                         R5 K62 [{"Pending", "Completed"}]
      103 LOADK                            R6 K63 ["pending"]
      104 SETTABLEKS                       R6 R5 K60 ["Pending"]
      106 LOADK                            R6 K64 ["completed"]
      107 SETTABLEKS                       R6 R5 K61 ["Completed"]
      109 SETTABLEKS                       R5 R3 K65 ["PlanTodoState"]
      111 DUPTABLE                         R5 K72 [{"User", "System", "Assistant", "Model", "Function", "Tool"}]
      112 LOADK                            R6 K73 ["user"]
      113 SETTABLEKS                       R6 R5 K66 ["User"]
      115 LOADK                            R6 K74 ["system"]
      116 SETTABLEKS                       R6 R5 K67 ["System"]
      118 LOADK                            R6 K75 ["assistant"]
      119 SETTABLEKS                       R6 R5 K68 ["Assistant"]
      121 LOADK                            R6 K76 ["model"]
      122 SETTABLEKS                       R6 R5 K69 ["Model"]
      124 LOADK                            R6 K77 ["function"]
      125 SETTABLEKS                       R6 R5 K70 ["Function"]
      127 LOADK                            R6 K78 ["tool"]
      128 SETTABLEKS                       R6 R5 K71 ["Tool"]
      130 SETTABLEKS                       R5 R3 K79 ["ROLE"]
      132 NEWTABLE                         R5 8 0
      134 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      136 GETTABLEKS                       R6 R6 K66 ["User"]
      138 LOADB                            R7 1
      139 SETTABLE                         R7 R5 R6
      140 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      142 GETTABLEKS                       R6 R6 K67 ["System"]
      144 LOADB                            R7 1
      145 SETTABLE                         R7 R5 R6
      146 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      148 GETTABLEKS                       R6 R6 K68 ["Assistant"]
      150 LOADB                            R7 1
      151 SETTABLE                         R7 R5 R6
      152 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      154 GETTABLEKS                       R6 R6 K69 ["Model"]
      156 LOADB                            R7 1
      157 SETTABLE                         R7 R5 R6
      158 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      160 GETTABLEKS                       R6 R6 K70 ["Function"]
      162 LOADB                            R7 1
      163 SETTABLE                         R7 R5 R6
      164 GETTABLEKS                       R6 R3 K79 ["ROLE"]
      166 GETTABLEKS                       R6 R6 K71 ["Tool"]
      168 LOADB                            R7 1
      169 SETTABLE                         R7 R5 R6
      170 SETTABLEKS                       R5 R3 K80 ["VALID_ROLES"]
      172 DUPTABLE                         R5 K85 [{"Disabled", "Loading", "Loaded", "Error"}]
      173 LOADK                            R6 K86 ["disabled"]
      174 SETTABLEKS                       R6 R5 K81 ["Disabled"]
      176 LOADK                            R6 K87 ["loading"]
      177 SETTABLEKS                       R6 R5 K82 ["Loading"]
      179 LOADK                            R6 K88 ["loaded"]
      180 SETTABLEKS                       R6 R5 K83 ["Loaded"]
      182 LOADK                            R6 K89 ["error"]
      183 SETTABLEKS                       R6 R5 K84 ["Error"]
      185 SETTABLEKS                       R5 R3 K90 ["PersistenceLoadStates"]
      187 DUPTABLE                         R5 K93 [{"Threads", "Messages"}]
      188 LOADK                            R6 K91 ["Threads"]
      189 SETTABLEKS                       R6 R5 K91 ["Threads"]
      191 LOADK                            R6 K92 ["Messages"]
      192 SETTABLEKS                       R6 R5 K92 ["Messages"]
      194 SETTABLEKS                       R5 R3 K94 ["ScopeTypes"]
      196 DUPTABLE                         R5 K101 [{"QuotaExceeded", "Timeout", "RequestFailed", "ClientError", "InputDisabled", "TooManyRequest"}]
      197 LOADK                            R6 K102 ["quota_exceeded"]
      198 SETTABLEKS                       R6 R5 K95 ["QuotaExceeded"]
      200 LOADK                            R6 K103 ["timeout"]
      201 SETTABLEKS                       R6 R5 K96 ["Timeout"]
      203 LOADK                            R6 K104 ["request_failed"]
      204 SETTABLEKS                       R6 R5 K97 ["RequestFailed"]
      206 LOADK                            R6 K105 ["client_error"]
      207 SETTABLEKS                       R6 R5 K98 ["ClientError"]
      209 LOADK                            R6 K106 ["input_disabled"]
      210 SETTABLEKS                       R6 R5 K99 ["InputDisabled"]
      212 LOADK                            R6 K107 ["too_many_request"]
      213 SETTABLEKS                       R6 R5 K100 ["TooManyRequest"]
      215 SETTABLEKS                       R5 R3 K108 ["ClientErrorLiteral"]
      217 DUPTABLE                         R5 K113 [{"Accepted", "Rejected", "Viewed", "Saved"}]
      218 LOADK                            R6 K114 ["accepted"]
      219 SETTABLEKS                       R6 R5 K109 ["Accepted"]
      221 LOADK                            R6 K115 ["rejected"]
      222 SETTABLEKS                       R6 R5 K110 ["Rejected"]
      224 LOADK                            R6 K116 ["viewed"]
      225 SETTABLEKS                       R6 R5 K111 ["Viewed"]
      227 LOADK                            R6 K117 ["saved"]
      228 SETTABLEKS                       R6 R5 K112 ["Saved"]
      230 SETTABLEKS                       R5 R3 K118 ["PlanDecision"]
      232 DUPTABLE                         R5 K121 [{"New", "Duplicate"}]
      233 LOADK                            R6 K17 ["new"]
      234 SETTABLEKS                       R6 R5 K119 ["New"]
      236 LOADK                            R6 K122 ["duplicate"]
      237 SETTABLEKS                       R6 R5 K120 ["Duplicate"]
      239 SETTABLEKS                       R5 R3 K123 ["ThreadCreationReason"]
      241 DUPTABLE                         R5 K128 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      242 LOADK                            R6 K129 ["first_user_message"]
      243 SETTABLEKS                       R6 R5 K124 ["FirstUserMessage"]
      245 LOADK                            R6 K130 ["llm_summary"]
      246 SETTABLEKS                       R6 R5 K125 ["LLMSummary"]
      248 LOADK                            R6 K131 ["duplicate_origin"]
      249 SETTABLEKS                       R6 R5 K126 ["DuplicateOrigin"]
      251 LOADK                            R6 K132 ["manual_rename"]
      252 SETTABLEKS                       R6 R5 K127 ["ManualRename"]
      254 SETTABLEKS                       R5 R3 K133 ["ThreadNamingSource"]
      256 DUPTABLE                         R5 K136 [{"UserDelete", "UserConversationDelete"}]
      257 LOADK                            R6 K137 ["user_delete"]
      258 SETTABLEKS                       R6 R5 K134 ["UserDelete"]
      260 LOADK                            R6 K138 ["user_conversation_delete"]
      261 SETTABLEKS                       R6 R5 K135 ["UserConversationDelete"]
      263 SETTABLEKS                       R5 R3 K139 ["DeletionReason"]
      265 DUPTABLE                         R5 K145 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      266 LOADK                            R6 K146 ["message_branch"]
      267 SETTABLEKS                       R6 R5 K140 ["MessageBranch"]
      269 LOADK                            R6 K147 ["threads_menu"]
      270 SETTABLEKS                       R6 R5 K141 ["ThreadsMenu"]
      272 LOADK                            R6 K148 ["threads_menu_new"]
      273 SETTABLEKS                       R6 R5 K142 ["ThreadsMenuNew"]
      275 LOADK                            R6 K149 ["clear_conversation"]
      276 SETTABLEKS                       R6 R5 K143 ["ClearConversation"]
      278 LOADK                            R6 K150 ["remove_thread_fallback"]
      279 SETTABLEKS                       R6 R5 K144 ["RemoveThreadFallback"]
      281 SETTABLEKS                       R5 R3 K151 ["ThreadSwitchSource"]
      283 DUPTABLE                         R5 K155 [{"Load", "Save", "Delete"}]
      284 LOADK                            R6 K156 ["load"]
      285 SETTABLEKS                       R6 R5 K152 ["Load"]
      287 LOADK                            R6 K157 ["save"]
      288 SETTABLEKS                       R6 R5 K153 ["Save"]
      290 LOADK                            R6 K158 ["delete"]
      291 SETTABLEKS                       R6 R5 K154 ["Delete"]
      293 SETTABLEKS                       R5 R3 K159 ["PersistenceOperation"]
      295 DUPTABLE                         R5 K162 [{"Standard", "ScriptChange"}]
      296 LOADK                            R6 K163 ["standard"]
      297 SETTABLEKS                       R6 R5 K160 ["Standard"]
      299 LOADK                            R6 K164 ["script_change"]
      300 SETTABLEKS                       R6 R5 K161 ["ScriptChange"]
      302 SETTABLEKS                       R5 R3 K165 ["ConfirmationType"]
      304 GETIMPORT                        R5 K5 [require]
      306 GETTABLEKS                       R6 R0 K166 ["Flags"]
      308 GETTABLEKS                       R6 R6 K167 ["FFlagAssistantPlanMode"]
      310 CALL                             R5 1 1
      311 DUPTABLE                         R6 K170 [{"Agent", "Plan"}]
      312 LOADK                            R7 K168 ["Agent"]
      313 SETTABLEKS                       R7 R6 K168 ["Agent"]
      315 LOADK                            R7 K169 ["Plan"]
      316 SETTABLEKS                       R7 R6 K169 ["Plan"]
      318 DUPCLOSURE                       R7 K171 [PROTO_4]
      319 CAPTURE                          VAL R6
      320 CAPTURE                          VAL R5
      321 SETTABLEKS                       R7 R3 K172 ["getAssistantModeOrdered"]
      323 SETTABLEKS                       R6 R3 K173 ["AssistantMode"]
      325 CLOSEUPVALS                      R4
      326 RETURN                           R3 1

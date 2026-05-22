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
       11 GETTABLEKS                       R3 R3 K1 ["Test"]
       13 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K4 [table.insert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 1
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K5 ["Plan"]
       25 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       27 MOVE                             R2 R0
       28 GETIMPORT                        R1 K4 [table.insert]
       30 CALL                             R1 2 0
       31 RETURN                           R0 1

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R4 K12 ["FFlagAssistantTestModeDropdown"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 64 0
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
      109 DUPTABLE                         R6 K64 [{"Pending", "Completed"}]
      110 LOADK                            R7 K65 ["pending"]
      111 SETTABLEKS                       R7 R6 K62 ["Pending"]
      113 LOADK                            R7 K66 ["completed"]
      114 SETTABLEKS                       R7 R6 K63 ["Completed"]
      116 SETTABLEKS                       R6 R4 K67 ["PlanTodoState"]
      118 DUPTABLE                         R6 K74 [{"User", "System", "Assistant", "Model", "Function", "Tool"}]
      119 LOADK                            R7 K75 ["user"]
      120 SETTABLEKS                       R7 R6 K68 ["User"]
      122 LOADK                            R7 K76 ["system"]
      123 SETTABLEKS                       R7 R6 K69 ["System"]
      125 LOADK                            R7 K77 ["assistant"]
      126 SETTABLEKS                       R7 R6 K70 ["Assistant"]
      128 LOADK                            R7 K78 ["model"]
      129 SETTABLEKS                       R7 R6 K71 ["Model"]
      131 LOADK                            R7 K79 ["function"]
      132 SETTABLEKS                       R7 R6 K72 ["Function"]
      134 LOADK                            R7 K80 ["tool"]
      135 SETTABLEKS                       R7 R6 K73 ["Tool"]
      137 SETTABLEKS                       R6 R4 K81 ["ROLE"]
      139 NEWTABLE                         R6 8 0
      141 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      143 GETTABLEKS                       R7 R7 K68 ["User"]
      145 LOADB                            R8 1
      146 SETTABLE                         R8 R6 R7
      147 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      149 GETTABLEKS                       R7 R7 K69 ["System"]
      151 LOADB                            R8 1
      152 SETTABLE                         R8 R6 R7
      153 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      155 GETTABLEKS                       R7 R7 K70 ["Assistant"]
      157 LOADB                            R8 1
      158 SETTABLE                         R8 R6 R7
      159 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      161 GETTABLEKS                       R7 R7 K71 ["Model"]
      163 LOADB                            R8 1
      164 SETTABLE                         R8 R6 R7
      165 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      167 GETTABLEKS                       R7 R7 K72 ["Function"]
      169 LOADB                            R8 1
      170 SETTABLE                         R8 R6 R7
      171 GETTABLEKS                       R7 R4 K81 ["ROLE"]
      173 GETTABLEKS                       R7 R7 K73 ["Tool"]
      175 LOADB                            R8 1
      176 SETTABLE                         R8 R6 R7
      177 SETTABLEKS                       R6 R4 K82 ["VALID_ROLES"]
      179 DUPTABLE                         R6 K87 [{"Disabled", "Loading", "Loaded", "Error"}]
      180 LOADK                            R7 K88 ["disabled"]
      181 SETTABLEKS                       R7 R6 K83 ["Disabled"]
      183 LOADK                            R7 K89 ["loading"]
      184 SETTABLEKS                       R7 R6 K84 ["Loading"]
      186 LOADK                            R7 K90 ["loaded"]
      187 SETTABLEKS                       R7 R6 K85 ["Loaded"]
      189 LOADK                            R7 K91 ["error"]
      190 SETTABLEKS                       R7 R6 K86 ["Error"]
      192 SETTABLEKS                       R6 R4 K92 ["PersistenceLoadStates"]
      194 DUPTABLE                         R6 K95 [{"Threads", "Messages"}]
      195 LOADK                            R7 K93 ["Threads"]
      196 SETTABLEKS                       R7 R6 K93 ["Threads"]
      198 LOADK                            R7 K94 ["Messages"]
      199 SETTABLEKS                       R7 R6 K94 ["Messages"]
      201 SETTABLEKS                       R6 R4 K96 ["ScopeTypes"]
      203 DUPTABLE                         R6 K103 [{"QuotaExceeded", "Timeout", "RequestFailed", "ClientError", "InputDisabled", "TooManyRequest"}]
      204 LOADK                            R7 K104 ["quota_exceeded"]
      205 SETTABLEKS                       R7 R6 K97 ["QuotaExceeded"]
      207 LOADK                            R7 K105 ["timeout"]
      208 SETTABLEKS                       R7 R6 K98 ["Timeout"]
      210 LOADK                            R7 K106 ["request_failed"]
      211 SETTABLEKS                       R7 R6 K99 ["RequestFailed"]
      213 LOADK                            R7 K107 ["client_error"]
      214 SETTABLEKS                       R7 R6 K100 ["ClientError"]
      216 LOADK                            R7 K108 ["input_disabled"]
      217 SETTABLEKS                       R7 R6 K101 ["InputDisabled"]
      219 LOADK                            R7 K109 ["too_many_request"]
      220 SETTABLEKS                       R7 R6 K102 ["TooManyRequest"]
      222 SETTABLEKS                       R6 R4 K110 ["ClientErrorLiteral"]
      224 DUPTABLE                         R6 K115 [{"Accepted", "Rejected", "Viewed", "Saved"}]
      225 LOADK                            R7 K116 ["accepted"]
      226 SETTABLEKS                       R7 R6 K111 ["Accepted"]
      228 LOADK                            R7 K117 ["rejected"]
      229 SETTABLEKS                       R7 R6 K112 ["Rejected"]
      231 LOADK                            R7 K118 ["viewed"]
      232 SETTABLEKS                       R7 R6 K113 ["Viewed"]
      234 LOADK                            R7 K119 ["saved"]
      235 SETTABLEKS                       R7 R6 K114 ["Saved"]
      237 SETTABLEKS                       R6 R4 K120 ["PlanDecision"]
      239 DUPTABLE                         R6 K123 [{"New", "Duplicate"}]
      240 LOADK                            R7 K19 ["new"]
      241 SETTABLEKS                       R7 R6 K121 ["New"]
      243 LOADK                            R7 K124 ["duplicate"]
      244 SETTABLEKS                       R7 R6 K122 ["Duplicate"]
      246 SETTABLEKS                       R6 R4 K125 ["ThreadCreationReason"]
      248 DUPTABLE                         R6 K130 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      249 LOADK                            R7 K131 ["first_user_message"]
      250 SETTABLEKS                       R7 R6 K126 ["FirstUserMessage"]
      252 LOADK                            R7 K132 ["llm_summary"]
      253 SETTABLEKS                       R7 R6 K127 ["LLMSummary"]
      255 LOADK                            R7 K133 ["duplicate_origin"]
      256 SETTABLEKS                       R7 R6 K128 ["DuplicateOrigin"]
      258 LOADK                            R7 K134 ["manual_rename"]
      259 SETTABLEKS                       R7 R6 K129 ["ManualRename"]
      261 SETTABLEKS                       R6 R4 K135 ["ThreadNamingSource"]
      263 DUPTABLE                         R6 K138 [{"UserDelete", "UserConversationDelete"}]
      264 LOADK                            R7 K139 ["user_delete"]
      265 SETTABLEKS                       R7 R6 K136 ["UserDelete"]
      267 LOADK                            R7 K140 ["user_conversation_delete"]
      268 SETTABLEKS                       R7 R6 K137 ["UserConversationDelete"]
      270 SETTABLEKS                       R6 R4 K141 ["DeletionReason"]
      272 DUPTABLE                         R6 K147 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      273 LOADK                            R7 K148 ["message_branch"]
      274 SETTABLEKS                       R7 R6 K142 ["MessageBranch"]
      276 LOADK                            R7 K149 ["threads_menu"]
      277 SETTABLEKS                       R7 R6 K143 ["ThreadsMenu"]
      279 LOADK                            R7 K150 ["threads_menu_new"]
      280 SETTABLEKS                       R7 R6 K144 ["ThreadsMenuNew"]
      282 LOADK                            R7 K151 ["clear_conversation"]
      283 SETTABLEKS                       R7 R6 K145 ["ClearConversation"]
      285 LOADK                            R7 K152 ["remove_thread_fallback"]
      286 SETTABLEKS                       R7 R6 K146 ["RemoveThreadFallback"]
      288 SETTABLEKS                       R6 R4 K153 ["ThreadSwitchSource"]
      290 DUPTABLE                         R6 K157 [{"Load", "Save", "Delete"}]
      291 LOADK                            R7 K158 ["load"]
      292 SETTABLEKS                       R7 R6 K154 ["Load"]
      294 LOADK                            R7 K159 ["save"]
      295 SETTABLEKS                       R7 R6 K155 ["Save"]
      297 LOADK                            R7 K160 ["delete"]
      298 SETTABLEKS                       R7 R6 K156 ["Delete"]
      300 SETTABLEKS                       R6 R4 K161 ["PersistenceOperation"]
      302 DUPTABLE                         R6 K164 [{"Standard", "ScriptChange"}]
      303 LOADK                            R7 K165 ["standard"]
      304 SETTABLEKS                       R7 R6 K162 ["Standard"]
      306 LOADK                            R7 K166 ["script_change"]
      307 SETTABLEKS                       R7 R6 K163 ["ScriptChange"]
      309 SETTABLEKS                       R6 R4 K167 ["ConfirmationType"]
      311 GETIMPORT                        R6 K5 [require]
      313 GETTABLEKS                       R7 R0 K11 ["Flags"]
      315 GETTABLEKS                       R7 R7 K168 ["FFlagAssistantPlanMode"]
      317 CALL                             R6 1 1
      318 DUPTABLE                         R7 K172 [{"Agent", "Test", "Plan"}]
      319 LOADK                            R8 K169 ["Agent"]
      320 SETTABLEKS                       R8 R7 K169 ["Agent"]
      322 LOADK                            R8 K170 ["Test"]
      323 SETTABLEKS                       R8 R7 K170 ["Test"]
      325 LOADK                            R8 K171 ["Plan"]
      326 SETTABLEKS                       R8 R7 K171 ["Plan"]
      328 DUPCLOSURE                       R8 K173 [PROTO_4]
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R3
      331 CAPTURE                          VAL R6
      332 SETTABLEKS                       R8 R4 K174 ["getAssistantModeOrdered"]
      334 SETTABLEKS                       R7 R4 K175 ["AssistantMode"]
      336 CLOSEUPVALS                      R5
      337 RETURN                           R4 1

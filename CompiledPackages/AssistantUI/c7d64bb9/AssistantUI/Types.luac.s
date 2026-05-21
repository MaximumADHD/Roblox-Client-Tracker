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
      130 NEWTABLE                         R6 8 0
      132 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      134 GETTABLEKS                       R7 R7 K62 ["User"]
      136 LOADB                            R8 1
      137 SETTABLE                         R8 R6 R7
      138 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      140 GETTABLEKS                       R7 R7 K63 ["System"]
      142 LOADB                            R8 1
      143 SETTABLE                         R8 R6 R7
      144 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      146 GETTABLEKS                       R7 R7 K64 ["Assistant"]
      148 LOADB                            R8 1
      149 SETTABLE                         R8 R6 R7
      150 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      152 GETTABLEKS                       R7 R7 K65 ["Model"]
      154 LOADB                            R8 1
      155 SETTABLE                         R8 R6 R7
      156 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      158 GETTABLEKS                       R7 R7 K66 ["Function"]
      160 LOADB                            R8 1
      161 SETTABLE                         R8 R6 R7
      162 GETTABLEKS                       R7 R4 K75 ["ROLE"]
      164 GETTABLEKS                       R7 R7 K67 ["Tool"]
      166 LOADB                            R8 1
      167 SETTABLE                         R8 R6 R7
      168 SETTABLEKS                       R6 R4 K76 ["VALID_ROLES"]
      170 DUPTABLE                         R6 K81 [{"Disabled", "Loading", "Loaded", "Error"}]
      171 LOADK                            R7 K82 ["disabled"]
      172 SETTABLEKS                       R7 R6 K77 ["Disabled"]
      174 LOADK                            R7 K83 ["loading"]
      175 SETTABLEKS                       R7 R6 K78 ["Loading"]
      177 LOADK                            R7 K84 ["loaded"]
      178 SETTABLEKS                       R7 R6 K79 ["Loaded"]
      180 LOADK                            R7 K85 ["error"]
      181 SETTABLEKS                       R7 R6 K80 ["Error"]
      183 SETTABLEKS                       R6 R4 K86 ["PersistenceLoadStates"]
      185 DUPTABLE                         R6 K89 [{"Threads", "Messages"}]
      186 LOADK                            R7 K87 ["Threads"]
      187 SETTABLEKS                       R7 R6 K87 ["Threads"]
      189 LOADK                            R7 K88 ["Messages"]
      190 SETTABLEKS                       R7 R6 K88 ["Messages"]
      192 SETTABLEKS                       R6 R4 K90 ["ScopeTypes"]
      194 DUPTABLE                         R6 K97 [{"QuotaExceeded", "Timeout", "RequestFailed", "ClientError", "InputDisabled", "TooManyRequest"}]
      195 LOADK                            R7 K98 ["quota_exceeded"]
      196 SETTABLEKS                       R7 R6 K91 ["QuotaExceeded"]
      198 LOADK                            R7 K99 ["timeout"]
      199 SETTABLEKS                       R7 R6 K92 ["Timeout"]
      201 LOADK                            R7 K100 ["request_failed"]
      202 SETTABLEKS                       R7 R6 K93 ["RequestFailed"]
      204 LOADK                            R7 K101 ["client_error"]
      205 SETTABLEKS                       R7 R6 K94 ["ClientError"]
      207 LOADK                            R7 K102 ["input_disabled"]
      208 SETTABLEKS                       R7 R6 K95 ["InputDisabled"]
      210 LOADK                            R7 K103 ["too_many_request"]
      211 SETTABLEKS                       R7 R6 K96 ["TooManyRequest"]
      213 SETTABLEKS                       R6 R4 K104 ["ClientErrorLiteral"]
      215 DUPTABLE                         R6 K107 [{"Accepted", "Rejected"}]
      216 LOADK                            R7 K108 ["accepted"]
      217 SETTABLEKS                       R7 R6 K105 ["Accepted"]
      219 LOADK                            R7 K109 ["rejected"]
      220 SETTABLEKS                       R7 R6 K106 ["Rejected"]
      222 SETTABLEKS                       R6 R4 K110 ["PlanDecision"]
      224 DUPTABLE                         R6 K113 [{"New", "Duplicate"}]
      225 LOADK                            R7 K19 ["new"]
      226 SETTABLEKS                       R7 R6 K111 ["New"]
      228 LOADK                            R7 K114 ["duplicate"]
      229 SETTABLEKS                       R7 R6 K112 ["Duplicate"]
      231 SETTABLEKS                       R6 R4 K115 ["ThreadCreationReason"]
      233 DUPTABLE                         R6 K120 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      234 LOADK                            R7 K121 ["first_user_message"]
      235 SETTABLEKS                       R7 R6 K116 ["FirstUserMessage"]
      237 LOADK                            R7 K122 ["llm_summary"]
      238 SETTABLEKS                       R7 R6 K117 ["LLMSummary"]
      240 LOADK                            R7 K123 ["duplicate_origin"]
      241 SETTABLEKS                       R7 R6 K118 ["DuplicateOrigin"]
      243 LOADK                            R7 K124 ["manual_rename"]
      244 SETTABLEKS                       R7 R6 K119 ["ManualRename"]
      246 SETTABLEKS                       R6 R4 K125 ["ThreadNamingSource"]
      248 DUPTABLE                         R6 K128 [{"UserDelete", "UserConversationDelete"}]
      249 LOADK                            R7 K129 ["user_delete"]
      250 SETTABLEKS                       R7 R6 K126 ["UserDelete"]
      252 LOADK                            R7 K130 ["user_conversation_delete"]
      253 SETTABLEKS                       R7 R6 K127 ["UserConversationDelete"]
      255 SETTABLEKS                       R6 R4 K131 ["DeletionReason"]
      257 DUPTABLE                         R6 K137 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      258 LOADK                            R7 K138 ["message_branch"]
      259 SETTABLEKS                       R7 R6 K132 ["MessageBranch"]
      261 LOADK                            R7 K139 ["threads_menu"]
      262 SETTABLEKS                       R7 R6 K133 ["ThreadsMenu"]
      264 LOADK                            R7 K140 ["threads_menu_new"]
      265 SETTABLEKS                       R7 R6 K134 ["ThreadsMenuNew"]
      267 LOADK                            R7 K141 ["clear_conversation"]
      268 SETTABLEKS                       R7 R6 K135 ["ClearConversation"]
      270 LOADK                            R7 K142 ["remove_thread_fallback"]
      271 SETTABLEKS                       R7 R6 K136 ["RemoveThreadFallback"]
      273 SETTABLEKS                       R6 R4 K143 ["ThreadSwitchSource"]
      275 DUPTABLE                         R6 K147 [{"Load", "Save", "Delete"}]
      276 LOADK                            R7 K148 ["load"]
      277 SETTABLEKS                       R7 R6 K144 ["Load"]
      279 LOADK                            R7 K149 ["save"]
      280 SETTABLEKS                       R7 R6 K145 ["Save"]
      282 LOADK                            R7 K150 ["delete"]
      283 SETTABLEKS                       R7 R6 K146 ["Delete"]
      285 SETTABLEKS                       R6 R4 K151 ["PersistenceOperation"]
      287 DUPTABLE                         R6 K154 [{"Standard", "ScriptChange"}]
      288 LOADK                            R7 K155 ["standard"]
      289 SETTABLEKS                       R7 R6 K152 ["Standard"]
      291 LOADK                            R7 K156 ["script_change"]
      292 SETTABLEKS                       R7 R6 K153 ["ScriptChange"]
      294 SETTABLEKS                       R6 R4 K157 ["ConfirmationType"]
      296 GETIMPORT                        R6 K5 [require]
      298 GETTABLEKS                       R7 R0 K11 ["Flags"]
      300 GETTABLEKS                       R7 R7 K158 ["FFlagAssistantPlanMode"]
      302 CALL                             R6 1 1
      303 DUPTABLE                         R7 K162 [{"Agent", "Test", "Plan"}]
      304 LOADK                            R8 K159 ["Agent"]
      305 SETTABLEKS                       R8 R7 K159 ["Agent"]
      307 LOADK                            R8 K160 ["Test"]
      308 SETTABLEKS                       R8 R7 K160 ["Test"]
      310 LOADK                            R8 K161 ["Plan"]
      311 SETTABLEKS                       R8 R7 K161 ["Plan"]
      313 DUPCLOSURE                       R8 K163 [PROTO_4]
      314 CAPTURE                          VAL R7
      315 CAPTURE                          VAL R3
      316 CAPTURE                          VAL R6
      317 SETTABLEKS                       R8 R4 K164 ["getAssistantModeOrdered"]
      319 SETTABLEKS                       R7 R4 K165 ["AssistantMode"]
      321 CLOSEUPVALS                      R5
      322 RETURN                           R4 1

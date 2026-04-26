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

PROTO_4:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Agent"]
        5 SETLIST                          R0 R1 1 [1]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K1 ["Test"]
       13 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K4 [table.insert]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 2
       20 CALL                             R1 0 1
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K5 ["Plan"]
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
      139 DUPTABLE                         R6 K82 [{"Accepted", "Rejected"}]
      140 LOADK                            R7 K83 ["accepted"]
      141 SETTABLEKS                       R7 R6 K80 ["Accepted"]
      143 LOADK                            R7 K84 ["rejected"]
      144 SETTABLEKS                       R7 R6 K81 ["Rejected"]
      146 SETTABLEKS                       R6 R4 K85 ["PlanDecision"]
      148 DUPTABLE                         R6 K88 [{"New", "Duplicate"}]
      149 LOADK                            R7 K19 ["new"]
      150 SETTABLEKS                       R7 R6 K86 ["New"]
      152 LOADK                            R7 K89 ["duplicate"]
      153 SETTABLEKS                       R7 R6 K87 ["Duplicate"]
      155 SETTABLEKS                       R6 R4 K90 ["ThreadCreationReason"]
      157 DUPTABLE                         R6 K95 [{"FirstUserMessage", "LLMSummary", "DuplicateOrigin", "ManualRename"}]
      158 LOADK                            R7 K96 ["first_user_message"]
      159 SETTABLEKS                       R7 R6 K91 ["FirstUserMessage"]
      161 LOADK                            R7 K97 ["llm_summary"]
      162 SETTABLEKS                       R7 R6 K92 ["LLMSummary"]
      164 LOADK                            R7 K98 ["duplicate_origin"]
      165 SETTABLEKS                       R7 R6 K93 ["DuplicateOrigin"]
      167 LOADK                            R7 K99 ["manual_rename"]
      168 SETTABLEKS                       R7 R6 K94 ["ManualRename"]
      170 SETTABLEKS                       R6 R4 K100 ["ThreadNamingSource"]
      172 DUPTABLE                         R6 K103 [{"UserDelete", "UserConversationDelete"}]
      173 LOADK                            R7 K104 ["user_delete"]
      174 SETTABLEKS                       R7 R6 K101 ["UserDelete"]
      176 LOADK                            R7 K105 ["user_conversation_delete"]
      177 SETTABLEKS                       R7 R6 K102 ["UserConversationDelete"]
      179 SETTABLEKS                       R6 R4 K106 ["DeletionReason"]
      181 DUPTABLE                         R6 K112 [{"MessageBranch", "ThreadsMenu", "ThreadsMenuNew", "ClearConversation", "RemoveThreadFallback"}]
      182 LOADK                            R7 K113 ["message_branch"]
      183 SETTABLEKS                       R7 R6 K107 ["MessageBranch"]
      185 LOADK                            R7 K114 ["threads_menu"]
      186 SETTABLEKS                       R7 R6 K108 ["ThreadsMenu"]
      188 LOADK                            R7 K115 ["threads_menu_new"]
      189 SETTABLEKS                       R7 R6 K109 ["ThreadsMenuNew"]
      191 LOADK                            R7 K116 ["clear_conversation"]
      192 SETTABLEKS                       R7 R6 K110 ["ClearConversation"]
      194 LOADK                            R7 K117 ["remove_thread_fallback"]
      195 SETTABLEKS                       R7 R6 K111 ["RemoveThreadFallback"]
      197 SETTABLEKS                       R6 R4 K118 ["ThreadSwitchSource"]
      199 DUPTABLE                         R6 K122 [{"Load", "Save", "Delete"}]
      200 LOADK                            R7 K123 ["load"]
      201 SETTABLEKS                       R7 R6 K119 ["Load"]
      203 LOADK                            R7 K124 ["save"]
      204 SETTABLEKS                       R7 R6 K120 ["Save"]
      206 LOADK                            R7 K125 ["delete"]
      207 SETTABLEKS                       R7 R6 K121 ["Delete"]
      209 SETTABLEKS                       R6 R4 K126 ["PersistenceOperation"]
      211 DUPTABLE                         R6 K129 [{"Standard", "ScriptChange"}]
      212 LOADK                            R7 K130 ["standard"]
      213 SETTABLEKS                       R7 R6 K127 ["Standard"]
      215 LOADK                            R7 K131 ["script_change"]
      216 SETTABLEKS                       R7 R6 K128 ["ScriptChange"]
      218 SETTABLEKS                       R6 R4 K132 ["ConfirmationType"]
      220 GETIMPORT                        R6 K5 [require]
      222 GETTABLEKS                       R8 R0 K11 ["Flags"]
      224 GETTABLEKS                       R7 R8 K133 ["FFlagAssistantPlanMode"]
      226 CALL                             R6 1 1
      227 DUPTABLE                         R7 K137 [{"Agent", "Test", "Plan"}]
      228 LOADK                            R8 K134 ["Agent"]
      229 SETTABLEKS                       R8 R7 K134 ["Agent"]
      231 LOADK                            R8 K135 ["Test"]
      232 SETTABLEKS                       R8 R7 K135 ["Test"]
      234 LOADK                            R8 K136 ["Plan"]
      235 SETTABLEKS                       R8 R7 K136 ["Plan"]
      237 DUPCLOSURE                       R8 K138 [PROTO_4]
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R3
      240 CAPTURE                          VAL R6
      241 SETTABLEKS                       R8 R4 K139 ["getAssistantModeOrdered"]
      243 SETTABLEKS                       R7 R4 K140 ["AssistantMode"]
      245 CLOSEUPVALS                      R5
      246 RETURN                           R4 1

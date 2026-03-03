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
        1 NEWTABLE                         R0 32 0
        3 LOADK                            R1 K0 ["MCPClient"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 SETTABLEKS                       R2 R0 K1 ["setMcpClientIdentifier"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          REF R1
       10 SETTABLEKS                       R2 R0 K2 ["getMcpClientIdentifier"]
       12 DUPCLOSURE                       R2 K3 [PROTO_2]
       13 SETTABLEKS                       R2 R0 K4 ["assertNever"]
       15 GETIMPORT                        R2 K7 [Font.new]
       17 LOADK                            R3 K8 ["rbxasset://fonts/families/BuilderMono.json"]
       18 GETIMPORT                        R4 K12 [Enum.FontWeight.Regular]
       20 GETIMPORT                        R5 K15 [Enum.FontStyle.Normal]
       22 CALL                             R2 3 1
       23 SETTABLEKS                       R2 R0 K16 ["CODE_FONT"]
       25 LOADK                            R2 K17 ["<system_reminder>"]
       26 SETTABLEKS                       R2 R0 K18 ["SYSTEM_REMINDER_OPEN"]
       28 LOADK                            R2 K19 ["</system_reminder>"]
       29 SETTABLEKS                       R2 R0 K20 ["SYSTEM_REMINDER_CLOSE"]
       31 DUPCLOSURE                       R2 K21 [PROTO_3]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R2 R0 K22 ["getSystemReminder"]
       35 LOADK                            R2 K23 ["Default"]
       36 SETTABLEKS                       R2 R0 K24 ["DEFAULT_STUDIO_MODEL"]
       38 LOADK                            R2 K25 ["AssistantProviderKeys"]
       39 SETTABLEKS                       R2 R0 K26 ["ASSISTANT_PROVIDER_KEYS"]
       41 LOADK                            R2 K27 ["claudeapikey"]
       42 SETTABLEKS                       R2 R0 K28 ["CLAUDE_API_KEY"]
       44 LOADK                            R2 K29 ["geminiapikey"]
       45 SETTABLEKS                       R2 R0 K30 ["GEMINI_API_KEY"]
       47 LOADK                            R2 K31 ["openaiapikey"]
       48 SETTABLEKS                       R2 R0 K32 ["OPENAI_API_KEY"]
       50 LOADK                            R2 K33 ["AssistantProviderSettings"]
       51 SETTABLEKS                       R2 R0 K34 ["ASSISTANT_PROVIDER_SETTINGS"]
       53 LOADK                            R2 K35 ["AnthropicProviderEnabled"]
       54 SETTABLEKS                       R2 R0 K36 ["ANTHROPIC_PROVIDER_ENABLED"]
       56 LOADK                            R2 K37 ["OpenAIProviderEnabled"]
       57 SETTABLEKS                       R2 R0 K38 ["OPENAI_PROVIDER_ENABLED"]
       59 LOADK                            R2 K39 ["GeminiProviderEnabled"]
       60 SETTABLEKS                       R2 R0 K40 ["GEMINI_PROVIDER_ENABLED"]
       62 LOADK                            R2 K41 ["CurrentModel"]
       63 SETTABLEKS                       R2 R0 K42 ["CURRENT_MODEL"]
       65 DUPTABLE                         R2 K45 [{"Conversation", "Thread"}]
       66 LOADK                            R3 K43 ["Conversation"]
       67 SETTABLEKS                       R3 R2 K43 ["Conversation"]
       69 LOADK                            R3 K44 ["Thread"]
       70 SETTABLEKS                       R3 R2 K44 ["Thread"]
       72 SETTABLEKS                       R2 R0 K46 ["SCOPE_TYPES"]
       74 DUPTABLE                         R2 K49 [{"Standard", "ScriptChange"}]
       75 LOADK                            R3 K50 ["standard"]
       76 SETTABLEKS                       R3 R2 K47 ["Standard"]
       78 LOADK                            R3 K51 ["script_change"]
       79 SETTABLEKS                       R3 R2 K48 ["ScriptChange"]
       81 SETTABLEKS                       R2 R0 K52 ["ConfirmationType"]
       83 CLOSEUPVALS                      R1
       84 RETURN                           R0 1

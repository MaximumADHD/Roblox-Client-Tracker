PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 10
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 JUMPIFEQKS                       R1 K1 ["ToolNames."] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 LOADN                            R3 11
       10 NAMECALL                         R1 R0 K0 ["sub"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLE                         R2 R3 R1
       15 JUMPIFNOT                        R2 ; [+1]
       16 RETURN                           R2 1
       17 LOADNIL                          R3
       18 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R4 1
        1 LOADN                            R5 10
        2 NAMECALL                         R2 R0 K0 ["sub"]
        4 CALL                             R2 3 1
        5 JUMPIFEQKS                       R2 K1 ["ToolNames."] ; [+3]
        7 LOADNIL                          R1
        8 JUMP                             ; [+10]
        9 LOADN                            R4 11
       10 NAMECALL                         R2 R0 K0 ["sub"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R4 0
       14 GETTABLE                         R3 R4 R2
       15 JUMPIFNOT                        R3 ; [+2]
       16 MOVE                             R1 R3
       17 JUMP                             ; [+1]
       18 LOADNIL                          R1
       19 JUMPIF                           R1 ; [+14]
       20 GETIMPORT                        R2 K3 [warn]
       22 LOADK                            R4 K4 ["ERR: No tool name found for token '%*'"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K5 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 CALL                             R2 1 0
       29 LOADK                            R3 K6 ["{"]
       30 MOVE                             R4 R0
       31 LOADK                            R5 K7 ["}"]
       32 CONCAT                           R2 R3 R5
       33 RETURN                           R2 1
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 LOADK                            R2 K0 ["{"]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K1 ["}"]
        9 CONCAT                           R1 R2 R4
       10 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["{(ToolNames%.[%a_][%w_]*)}"]
        1 DUPCLOSURE                       R5 K1 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R0 K2 ["gsub"]
        5 CALL                             R2 3 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 LOADK                            R5 K3 ["{([%w_]+)}"]
        8 NEWCLOSURE                       R6 P1
        9 CAPTURE                          VAL R1
       10 NAMECALL                         R3 R2 K2 ["gsub"]
       12 CALL                             R3 3 1
       13 MOVE                             R2 R3
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["FStringPrimGenMCPToolName"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K40 [{"AnimationGen", "CharacterNavigation", "CompleteTodoItems", "CreatorStoreInsert", "CreatorStoreSearch", "ExecuteLuau", "FileSearch", "FinalizePlan", "FromHistory", "GameTree", "GetConsoleOutput", "Grep", "GrepSearch", "HttpGet", "InsertFromMarketplace", "InspectInstance", "MaterialGen", "MeshGen", "MultiEdit", "PrimitiveGen", "QuestionAnswer", "ReadFile", "ScreenCapture", "Skill", "StartStopPlay", "StoreImage", "Subagent", "TestGame", "UploadImage", "UserKeyboardInput", "UserMouseInput", "WaitJobFinished"}]
       15 LOADK                            R3 K41 ["generate_animation"]
       16 SETTABLEKS                       R3 R2 K8 ["AnimationGen"]
       18 LOADK                            R3 K42 ["character_navigation"]
       19 SETTABLEKS                       R3 R2 K9 ["CharacterNavigation"]
       21 LOADK                            R3 K43 ["complete_todo_items"]
       22 SETTABLEKS                       R3 R2 K10 ["CompleteTodoItems"]
       24 LOADK                            R3 K44 ["insert_from_creator_store"]
       25 SETTABLEKS                       R3 R2 K11 ["CreatorStoreInsert"]
       27 LOADK                            R3 K45 ["search_creator_store"]
       28 SETTABLEKS                       R3 R2 K12 ["CreatorStoreSearch"]
       30 LOADK                            R3 K46 ["execute_luau"]
       31 SETTABLEKS                       R3 R2 K13 ["ExecuteLuau"]
       33 LOADK                            R3 K47 ["script_search"]
       34 SETTABLEKS                       R3 R2 K14 ["FileSearch"]
       36 LOADK                            R3 K48 ["finalize_plan"]
       37 SETTABLEKS                       R3 R2 K15 ["FinalizePlan"]
       39 LOADK                            R3 K49 ["from_history"]
       40 SETTABLEKS                       R3 R2 K16 ["FromHistory"]
       42 LOADK                            R3 K50 ["search_game_tree"]
       43 SETTABLEKS                       R3 R2 K17 ["GameTree"]
       45 LOADK                            R3 K51 ["get_console_output"]
       46 SETTABLEKS                       R3 R2 K18 ["GetConsoleOutput"]
       48 LOADK                            R3 K52 ["grep"]
       49 SETTABLEKS                       R3 R2 K19 ["Grep"]
       51 LOADK                            R3 K53 ["script_grep"]
       52 SETTABLEKS                       R3 R2 K20 ["GrepSearch"]
       54 LOADK                            R3 K54 ["http_get"]
       55 SETTABLEKS                       R3 R2 K21 ["HttpGet"]
       57 LOADK                            R3 K44 ["insert_from_creator_store"]
       58 SETTABLEKS                       R3 R2 K22 ["InsertFromMarketplace"]
       60 LOADK                            R3 K55 ["inspect_instance"]
       61 SETTABLEKS                       R3 R2 K23 ["InspectInstance"]
       63 LOADK                            R3 K56 ["generate_material"]
       64 SETTABLEKS                       R3 R2 K24 ["MaterialGen"]
       66 LOADK                            R3 K57 ["generate_mesh"]
       67 SETTABLEKS                       R3 R2 K25 ["MeshGen"]
       69 LOADK                            R3 K58 ["multi_edit"]
       70 SETTABLEKS                       R3 R2 K26 ["MultiEdit"]
       72 MOVE                             R3 R1
       73 CALL                             R3 0 1
       74 SETTABLEKS                       R3 R2 K27 ["PrimitiveGen"]
       76 LOADK                            R3 K59 ["ask_questions"]
       77 SETTABLEKS                       R3 R2 K28 ["QuestionAnswer"]
       79 LOADK                            R3 K60 ["script_read"]
       80 SETTABLEKS                       R3 R2 K29 ["ReadFile"]
       82 LOADK                            R3 K61 ["screen_capture"]
       83 SETTABLEKS                       R3 R2 K30 ["ScreenCapture"]
       85 LOADK                            R3 K62 ["skill"]
       86 SETTABLEKS                       R3 R2 K31 ["Skill"]
       88 LOADK                            R3 K63 ["start_stop_play"]
       89 SETTABLEKS                       R3 R2 K32 ["StartStopPlay"]
       91 LOADK                            R3 K64 ["store_image"]
       92 SETTABLEKS                       R3 R2 K33 ["StoreImage"]
       94 LOADK                            R3 K65 ["subagent"]
       95 SETTABLEKS                       R3 R2 K34 ["Subagent"]
       97 LOADK                            R3 K66 ["test_game"]
       98 SETTABLEKS                       R3 R2 K35 ["TestGame"]
      100 LOADK                            R3 K67 ["upload_image"]
      101 SETTABLEKS                       R3 R2 K36 ["UploadImage"]
      103 LOADK                            R3 K68 ["user_keyboard_input"]
      104 SETTABLEKS                       R3 R2 K37 ["UserKeyboardInput"]
      106 LOADK                            R3 K69 ["user_mouse_input"]
      107 SETTABLEKS                       R3 R2 K38 ["UserMouseInput"]
      109 LOADK                            R3 K70 ["wait_job_finished"]
      110 SETTABLEKS                       R3 R2 K39 ["WaitJobFinished"]
      112 DUPCLOSURE                       R3 K71 [PROTO_0]
      113 CAPTURE                          VAL R2
      114 DUPCLOSURE                       R4 K72 [PROTO_3]
      115 CAPTURE                          VAL R2
      116 SETTABLEKS                       R4 R2 K73 ["replaceTokens"]
      118 RETURN                           R2 1

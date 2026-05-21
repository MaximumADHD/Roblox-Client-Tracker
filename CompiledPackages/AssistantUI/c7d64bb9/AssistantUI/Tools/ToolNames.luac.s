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
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FStringPrimGenMCPToolName"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K40 [{"AnimationGen", "AssetInsert", "AssetSearch", "CharacterNavigation", "CompleteTodoItems", "CreatorStoreInsert", "CreatorStoreSearch", "ExecuteLuau", "FileSearch", "FinalizePlan", "FromHistory", "GameTree", "GetConsoleOutput", "GrepSearch", "HttpGet", "InsertFromMarketplace", "InspectInstance", "MaterialGen", "MeshGen", "MultiEdit", "PrimitiveGen", "QuestionAnswer", "ReadFile", "ScreenCapture", "Skill", "StartStopPlay", "StoreImage", "Subagent", "UploadImage", "UserKeyboardInput", "UserMouseInput", "WaitJobFinished"}]
       15 LOADK                            R3 K41 ["generate_animation"]
       16 SETTABLEKS                       R3 R2 K8 ["AnimationGen"]
       18 LOADK                            R3 K42 ["insert_asset"]
       19 SETTABLEKS                       R3 R2 K9 ["AssetInsert"]
       21 LOADK                            R3 K43 ["search_asset"]
       22 SETTABLEKS                       R3 R2 K10 ["AssetSearch"]
       24 LOADK                            R3 K44 ["character_navigation"]
       25 SETTABLEKS                       R3 R2 K11 ["CharacterNavigation"]
       27 LOADK                            R3 K45 ["complete_todo_items"]
       28 SETTABLEKS                       R3 R2 K12 ["CompleteTodoItems"]
       30 LOADK                            R3 K46 ["insert_from_creator_store"]
       31 SETTABLEKS                       R3 R2 K13 ["CreatorStoreInsert"]
       33 LOADK                            R3 K47 ["search_creator_store"]
       34 SETTABLEKS                       R3 R2 K14 ["CreatorStoreSearch"]
       36 LOADK                            R3 K48 ["execute_luau"]
       37 SETTABLEKS                       R3 R2 K15 ["ExecuteLuau"]
       39 LOADK                            R3 K49 ["script_search"]
       40 SETTABLEKS                       R3 R2 K16 ["FileSearch"]
       42 LOADK                            R3 K50 ["finalize_plan"]
       43 SETTABLEKS                       R3 R2 K17 ["FinalizePlan"]
       45 LOADK                            R3 K51 ["from_history"]
       46 SETTABLEKS                       R3 R2 K18 ["FromHistory"]
       48 LOADK                            R3 K52 ["search_game_tree"]
       49 SETTABLEKS                       R3 R2 K19 ["GameTree"]
       51 LOADK                            R3 K53 ["get_console_output"]
       52 SETTABLEKS                       R3 R2 K20 ["GetConsoleOutput"]
       54 LOADK                            R3 K54 ["script_grep"]
       55 SETTABLEKS                       R3 R2 K21 ["GrepSearch"]
       57 LOADK                            R3 K55 ["http_get"]
       58 SETTABLEKS                       R3 R2 K22 ["HttpGet"]
       60 LOADK                            R3 K46 ["insert_from_creator_store"]
       61 SETTABLEKS                       R3 R2 K23 ["InsertFromMarketplace"]
       63 LOADK                            R3 K56 ["inspect_instance"]
       64 SETTABLEKS                       R3 R2 K24 ["InspectInstance"]
       66 LOADK                            R3 K57 ["generate_material"]
       67 SETTABLEKS                       R3 R2 K25 ["MaterialGen"]
       69 LOADK                            R3 K58 ["generate_mesh"]
       70 SETTABLEKS                       R3 R2 K26 ["MeshGen"]
       72 LOADK                            R3 K59 ["multi_edit"]
       73 SETTABLEKS                       R3 R2 K27 ["MultiEdit"]
       75 MOVE                             R3 R1
       76 CALL                             R3 0 1
       77 SETTABLEKS                       R3 R2 K28 ["PrimitiveGen"]
       79 LOADK                            R3 K60 ["ask_questions"]
       80 SETTABLEKS                       R3 R2 K29 ["QuestionAnswer"]
       82 LOADK                            R3 K61 ["script_read"]
       83 SETTABLEKS                       R3 R2 K30 ["ReadFile"]
       85 LOADK                            R3 K62 ["screen_capture"]
       86 SETTABLEKS                       R3 R2 K31 ["ScreenCapture"]
       88 LOADK                            R3 K63 ["skill"]
       89 SETTABLEKS                       R3 R2 K32 ["Skill"]
       91 LOADK                            R3 K64 ["start_stop_play"]
       92 SETTABLEKS                       R3 R2 K33 ["StartStopPlay"]
       94 LOADK                            R3 K65 ["store_image"]
       95 SETTABLEKS                       R3 R2 K34 ["StoreImage"]
       97 LOADK                            R3 K66 ["subagent"]
       98 SETTABLEKS                       R3 R2 K35 ["Subagent"]
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

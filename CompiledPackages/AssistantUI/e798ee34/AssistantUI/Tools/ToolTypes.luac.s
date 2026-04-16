PROTO_0:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R2 K2 ["Calling unimplemented function %*"]
        3 GETUPVAL                         R4 0
        4 NAMECALL                         R2 R2 K3 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Guest"]
       18 GETTABLEKS                       R3 R4 K9 ["Environment"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["ExternalHooks"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["ModelContextProtocol"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K14 ["Components"]
       44 GETTABLEKS                       R7 R8 K15 ["UIToolRegistry"]
       46 CALL                             R6 1 1
       47 NEWTABLE                         R7 2 0
       49 DUPTABLE                         R8 K45 [{"ExecuteLuau", "FileSearch", "GameTree", "GrepSearch", "Grep", "InsertFromMarketplace", "CreatorStoreSearch", "CreatorStoreInsert", "InspectInstance", "MaterialGen", "MeshGen", "MultiEdit", "PrimitiveGen", "WaitJobFinished", "ReadFile", "ScreenCapture", "UploadImage", "TestGame", "StartStopPlay", "GetConsoleOutput", "UserKeyboardInput", "UserMouseInput", "CharacterNavigation", "Skill", "Subagent", "QuestionAnswer", "HttpGet", "FinalizePlan", "CompleteTodoItem"}]
       50 LOADK                            R9 K46 ["execute_luau"]
       51 SETTABLEKS                       R9 R8 K16 ["ExecuteLuau"]
       53 LOADK                            R9 K47 ["script_search"]
       54 SETTABLEKS                       R9 R8 K17 ["FileSearch"]
       56 LOADK                            R9 K48 ["search_game_tree"]
       57 SETTABLEKS                       R9 R8 K18 ["GameTree"]
       59 LOADK                            R9 K49 ["script_grep"]
       60 SETTABLEKS                       R9 R8 K19 ["GrepSearch"]
       62 LOADK                            R9 K50 ["grep"]
       63 SETTABLEKS                       R9 R8 K20 ["Grep"]
       65 LOADK                            R9 K51 ["insert_from_creator_store"]
       66 SETTABLEKS                       R9 R8 K21 ["InsertFromMarketplace"]
       68 LOADK                            R9 K52 ["search_creator_store"]
       69 SETTABLEKS                       R9 R8 K22 ["CreatorStoreSearch"]
       71 LOADK                            R9 K51 ["insert_from_creator_store"]
       72 SETTABLEKS                       R9 R8 K23 ["CreatorStoreInsert"]
       74 LOADK                            R9 K53 ["inspect_instance"]
       75 SETTABLEKS                       R9 R8 K24 ["InspectInstance"]
       77 LOADK                            R9 K54 ["generate_material"]
       78 SETTABLEKS                       R9 R8 K25 ["MaterialGen"]
       80 LOADK                            R9 K55 ["generate_mesh"]
       81 SETTABLEKS                       R9 R8 K26 ["MeshGen"]
       83 LOADK                            R9 K56 ["multi_edit"]
       84 SETTABLEKS                       R9 R8 K27 ["MultiEdit"]
       86 LOADK                            R9 K57 ["primitive_gen"]
       87 SETTABLEKS                       R9 R8 K28 ["PrimitiveGen"]
       89 LOADK                            R9 K58 ["wait_job_finished"]
       90 SETTABLEKS                       R9 R8 K29 ["WaitJobFinished"]
       92 LOADK                            R9 K59 ["script_read"]
       93 SETTABLEKS                       R9 R8 K30 ["ReadFile"]
       95 LOADK                            R9 K60 ["screen_capture"]
       96 SETTABLEKS                       R9 R8 K31 ["ScreenCapture"]
       98 LOADK                            R9 K61 ["upload_image"]
       99 SETTABLEKS                       R9 R8 K32 ["UploadImage"]
      101 LOADK                            R9 K62 ["test_game"]
      102 SETTABLEKS                       R9 R8 K33 ["TestGame"]
      104 LOADK                            R9 K63 ["start_stop_play"]
      105 SETTABLEKS                       R9 R8 K34 ["StartStopPlay"]
      107 LOADK                            R9 K64 ["get_console_output"]
      108 SETTABLEKS                       R9 R8 K35 ["GetConsoleOutput"]
      110 LOADK                            R9 K65 ["user_keyboard_input"]
      111 SETTABLEKS                       R9 R8 K36 ["UserKeyboardInput"]
      113 LOADK                            R9 K66 ["user_mouse_input"]
      114 SETTABLEKS                       R9 R8 K37 ["UserMouseInput"]
      116 LOADK                            R9 K67 ["character_navigation"]
      117 SETTABLEKS                       R9 R8 K38 ["CharacterNavigation"]
      119 LOADK                            R9 K68 ["skill"]
      120 SETTABLEKS                       R9 R8 K39 ["Skill"]
      122 LOADK                            R9 K69 ["subagent"]
      123 SETTABLEKS                       R9 R8 K40 ["Subagent"]
      125 LOADK                            R9 K70 ["ask_questions"]
      126 SETTABLEKS                       R9 R8 K41 ["QuestionAnswer"]
      128 LOADK                            R9 K71 ["http_get"]
      129 SETTABLEKS                       R9 R8 K42 ["HttpGet"]
      131 LOADK                            R9 K72 ["finalize_plan"]
      132 SETTABLEKS                       R9 R8 K43 ["FinalizePlan"]
      134 LOADK                            R9 K73 ["complete_todo_item"]
      135 SETTABLEKS                       R9 R8 K44 ["CompleteTodoItem"]
      137 SETTABLEKS                       R8 R7 K74 ["ToolNames"]
      139 DUPCLOSURE                       R8 K75 [PROTO_1]
      140 SETTABLEKS                       R8 R7 K76 ["createUnimplemented"]
      142 RETURN                           R7 1

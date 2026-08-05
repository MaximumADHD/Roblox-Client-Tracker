PROTO_0:
        0 LOADN                            R3 1
        1 LOADN                            R4 10
        2 NAMECALL                         R1 R0 K0 ["sub"]
        4 CALL                             R1 3 1
        5 JUMPIFEQKS                       R1 K1 ["ToolNames."] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETUPVAL                         R2 0
       10 LOADN                            R5 11
       11 NAMECALL                         R3 R0 K0 ["sub"]
       13 CALL                             R3 2 1
       14 GETTABLE                         R1 R2 R3
       15 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R4 1
        1 LOADN                            R5 10
        2 NAMECALL                         R2 R0 K0 ["sub"]
        4 CALL                             R2 3 1
        5 JUMPIFEQKS                       R2 K1 ["ToolNames."] ; [+3]
        7 LOADNIL                          R1
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R2 0
       10 LOADN                            R5 11
       11 NAMECALL                         R3 R0 K0 ["sub"]
       13 CALL                             R3 2 1
       14 GETTABLE                         R1 R2 R3
       15 JUMPIF                           R1 ; [+14]
       16 GETIMPORT                        R2 K3 [warn]
       18 LOADK                            R4 K4 ["ERR: No tool name found for token '%*'"]
       19 MOVE                             R6 R0
       20 NAMECALL                         R4 R4 K5 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 CALL                             R2 1 0
       25 LOADK                            R3 K6 ["{"]
       26 MOVE                             R4 R0
       27 LOADK                            R5 K7 ["}"]
       28 CONCAT                           R2 R3 R5
       29 RETURN                           R2 1
       30 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+4]
        3 LOADK                            R2 K0 ["{"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K1 ["}"]
        6 CONCAT                           R1 R2 R4
        7 RETURN                           R1 1

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
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 GETTABLEKS                       R2 R2 K7 ["EngineFlags"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 64 0
       16 LOADK                            R3 K8 ["generate_animation"]
       17 SETTABLEKS                       R3 R2 K9 ["AnimationGen"]
       19 LOADK                            R3 K10 ["insert_asset"]
       20 SETTABLEKS                       R3 R2 K11 ["AssetInsert"]
       22 LOADK                            R3 K12 ["search_asset"]
       23 SETTABLEKS                       R3 R2 K13 ["AssetSearch"]
       25 LOADK                            R3 K14 ["character_navigation"]
       26 SETTABLEKS                       R3 R2 K15 ["CharacterNavigation"]
       28 LOADK                            R3 K16 ["complete_todo_items"]
       29 SETTABLEKS                       R3 R2 K17 ["CompleteTodoItems"]
       31 LOADK                            R3 K18 ["create_skill"]
       32 SETTABLEKS                       R3 R2 K19 ["CreateSkill"]
       34 LOADK                            R3 K20 ["edit_skill"]
       35 SETTABLEKS                       R3 R2 K21 ["EditSkill"]
       37 LOADK                            R3 K22 ["insert_from_creator_store"]
       38 SETTABLEKS                       R3 R2 K23 ["CreatorStoreInsert"]
       40 LOADK                            R3 K24 ["search_creator_store"]
       41 SETTABLEKS                       R3 R2 K25 ["CreatorStoreSearch"]
       43 LOADK                            R3 K26 ["execute_luau"]
       44 SETTABLEKS                       R3 R2 K27 ["ExecuteLuau"]
       46 LOADK                            R3 K28 ["script_search"]
       47 SETTABLEKS                       R3 R2 K29 ["FileSearch"]
       49 LOADK                            R3 K30 ["finalize_plan"]
       50 SETTABLEKS                       R3 R2 K31 ["FinalizePlan"]
       52 LOADK                            R3 K32 ["from_history"]
       53 SETTABLEKS                       R3 R2 K33 ["FromHistory"]
       55 LOADK                            R3 K34 ["search_game_tree"]
       56 SETTABLEKS                       R3 R2 K35 ["GameTree"]
       58 LOADK                            R3 K36 ["get_console_output"]
       59 SETTABLEKS                       R3 R2 K37 ["GetConsoleOutput"]
       61 LOADK                            R3 K38 ["script_grep"]
       62 SETTABLEKS                       R3 R2 K39 ["GrepSearch"]
       64 LOADK                            R3 K40 ["http_get"]
       65 SETTABLEKS                       R3 R2 K41 ["HttpGet"]
       67 LOADK                            R3 K42 ["inspect_instance"]
       68 SETTABLEKS                       R3 R2 K43 ["InspectInstance"]
       70 LOADK                            R3 K44 ["generate_material"]
       71 SETTABLEKS                       R3 R2 K45 ["MaterialGen"]
       73 LOADK                            R3 K46 ["generate_mesh"]
       74 SETTABLEKS                       R3 R2 K47 ["MeshGen"]
       76 LOADK                            R3 K48 ["multi_edit"]
       77 SETTABLEKS                       R3 R2 K49 ["MultiEdit"]
       79 GETTABLEKS                       R3 R1 K50 ["FStringPrimGenMCPToolName"]
       81 SETTABLEKS                       R3 R2 K51 ["PrimitiveGen"]
       83 LOADK                            R3 K52 ["ask_questions"]
       84 SETTABLEKS                       R3 R2 K53 ["QuestionAnswer"]
       86 LOADK                            R3 K54 ["script_read"]
       87 SETTABLEKS                       R3 R2 K55 ["ReadFile"]
       89 LOADK                            R3 K56 ["screen_capture"]
       90 SETTABLEKS                       R3 R2 K57 ["ScreenCapture"]
       92 LOADK                            R3 K58 ["skill"]
       93 SETTABLEKS                       R3 R2 K59 ["Skill"]
       95 LOADK                            R3 K60 ["start_stop_play"]
       96 SETTABLEKS                       R3 R2 K61 ["StartStopPlay"]
       98 LOADK                            R3 K62 ["get_studio_state"]
       99 SETTABLEKS                       R3 R2 K63 ["GetStudioState"]
      101 LOADK                            R3 K64 ["start_multi_player_agents"]
      102 SETTABLEKS                       R3 R2 K65 ["StartMultiPlayerAgents"]
      104 LOADK                            R3 K66 ["stop_multi_player_agents"]
      105 SETTABLEKS                       R3 R2 K67 ["StopMultiPlayerAgents"]
      107 LOADK                            R3 K68 ["multi_player_agents_communication"]
      108 SETTABLEKS                       R3 R2 K69 ["MultiPlayerAgentsCommunication"]
      110 LOADK                            R3 K70 ["wait_for_multi_player_agents_communication"]
      111 SETTABLEKS                       R3 R2 K71 ["WaitForMultiPlayerAgentsCommunication"]
      113 LOADK                            R3 K72 ["store_image"]
      114 SETTABLEKS                       R3 R2 K73 ["StoreImage"]
      116 LOADK                            R3 K74 ["subagent"]
      117 SETTABLEKS                       R3 R2 K75 ["Subagent"]
      119 LOADK                            R3 K76 ["update_plan"]
      120 SETTABLEKS                       R3 R2 K77 ["UpdatePlan"]
      122 LOADK                            R3 K78 ["upload_image"]
      123 SETTABLEKS                       R3 R2 K79 ["UploadImage"]
      125 LOADK                            R3 K80 ["user_keyboard_input"]
      126 SETTABLEKS                       R3 R2 K81 ["UserKeyboardInput"]
      128 LOADK                            R3 K82 ["user_mouse_input"]
      129 SETTABLEKS                       R3 R2 K83 ["UserMouseInput"]
      131 LOADK                            R3 K84 ["wait_job_finished"]
      132 SETTABLEKS                       R3 R2 K85 ["WaitJobFinished"]
      134 LOADK                            R3 K86 ["video_capture"]
      135 SETTABLEKS                       R3 R2 K87 ["VideoCapture"]
      137 DUPCLOSURE                       R3 K88 [PROTO_0]
      138 CAPTURE                          VAL R2
      139 DUPCLOSURE                       R4 K89 [PROTO_3]
      140 CAPTURE                          VAL R2
      141 SETTABLEKS                       R4 R2 K90 ["replaceTokens"]
      143 GETIMPORT                        R4 K93 [table.freeze]
      145 MOVE                             R5 R2
      146 CALL                             R4 1 -1
      147 RETURN                           R4 -1

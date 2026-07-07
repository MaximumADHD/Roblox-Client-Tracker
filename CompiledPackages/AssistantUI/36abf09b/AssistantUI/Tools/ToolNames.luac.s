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
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 64 0
       14 LOADK                            R3 K7 ["generate_animation"]
       15 SETTABLEKS                       R3 R2 K8 ["AnimationGen"]
       17 LOADK                            R3 K9 ["insert_asset"]
       18 SETTABLEKS                       R3 R2 K10 ["AssetInsert"]
       20 LOADK                            R3 K11 ["search_asset"]
       21 SETTABLEKS                       R3 R2 K12 ["AssetSearch"]
       23 LOADK                            R3 K13 ["character_navigation"]
       24 SETTABLEKS                       R3 R2 K14 ["CharacterNavigation"]
       26 LOADK                            R3 K15 ["complete_todo_items"]
       27 SETTABLEKS                       R3 R2 K16 ["CompleteTodoItems"]
       29 LOADK                            R3 K17 ["create_skill"]
       30 SETTABLEKS                       R3 R2 K18 ["CreateSkill"]
       32 LOADK                            R3 K19 ["edit_skill"]
       33 SETTABLEKS                       R3 R2 K20 ["EditSkill"]
       35 LOADK                            R3 K21 ["insert_from_creator_store"]
       36 SETTABLEKS                       R3 R2 K22 ["CreatorStoreInsert"]
       38 LOADK                            R3 K23 ["search_creator_store"]
       39 SETTABLEKS                       R3 R2 K24 ["CreatorStoreSearch"]
       41 LOADK                            R3 K25 ["execute_luau"]
       42 SETTABLEKS                       R3 R2 K26 ["ExecuteLuau"]
       44 LOADK                            R3 K27 ["script_search"]
       45 SETTABLEKS                       R3 R2 K28 ["FileSearch"]
       47 LOADK                            R3 K29 ["finalize_plan"]
       48 SETTABLEKS                       R3 R2 K30 ["FinalizePlan"]
       50 LOADK                            R3 K31 ["from_history"]
       51 SETTABLEKS                       R3 R2 K32 ["FromHistory"]
       53 LOADK                            R3 K33 ["search_game_tree"]
       54 SETTABLEKS                       R3 R2 K34 ["GameTree"]
       56 LOADK                            R3 K35 ["get_console_output"]
       57 SETTABLEKS                       R3 R2 K36 ["GetConsoleOutput"]
       59 LOADK                            R3 K37 ["script_grep"]
       60 SETTABLEKS                       R3 R2 K38 ["GrepSearch"]
       62 LOADK                            R3 K39 ["http_get"]
       63 SETTABLEKS                       R3 R2 K40 ["HttpGet"]
       65 LOADK                            R3 K41 ["inspect_instance"]
       66 SETTABLEKS                       R3 R2 K42 ["InspectInstance"]
       68 LOADK                            R3 K43 ["generate_material"]
       69 SETTABLEKS                       R3 R2 K44 ["MaterialGen"]
       71 LOADK                            R3 K45 ["generate_mesh"]
       72 SETTABLEKS                       R3 R2 K46 ["MeshGen"]
       74 LOADK                            R3 K47 ["multi_edit"]
       75 SETTABLEKS                       R3 R2 K48 ["MultiEdit"]
       77 GETTABLEKS                       R3 R1 K49 ["FStringPrimGenMCPToolName"]
       79 SETTABLEKS                       R3 R2 K50 ["PrimitiveGen"]
       81 LOADK                            R3 K51 ["ask_questions"]
       82 SETTABLEKS                       R3 R2 K52 ["QuestionAnswer"]
       84 LOADK                            R3 K53 ["script_read"]
       85 SETTABLEKS                       R3 R2 K54 ["ReadFile"]
       87 LOADK                            R3 K55 ["screen_capture"]
       88 SETTABLEKS                       R3 R2 K56 ["ScreenCapture"]
       90 LOADK                            R3 K57 ["skill"]
       91 SETTABLEKS                       R3 R2 K58 ["Skill"]
       93 LOADK                            R3 K59 ["start_stop_play"]
       94 SETTABLEKS                       R3 R2 K60 ["StartStopPlay"]
       96 LOADK                            R3 K61 ["get_studio_state"]
       97 SETTABLEKS                       R3 R2 K62 ["GetStudioState"]
       99 LOADK                            R3 K63 ["start_multi_player_agents"]
      100 SETTABLEKS                       R3 R2 K64 ["StartMultiPlayerAgents"]
      102 LOADK                            R3 K65 ["stop_multi_player_agents"]
      103 SETTABLEKS                       R3 R2 K66 ["StopMultiPlayerAgents"]
      105 LOADK                            R3 K67 ["multi_player_agents_communication"]
      106 SETTABLEKS                       R3 R2 K68 ["MultiPlayerAgentsCommunication"]
      108 LOADK                            R3 K69 ["wait_for_multi_player_agents_communication"]
      109 SETTABLEKS                       R3 R2 K70 ["WaitForMultiPlayerAgentsCommunication"]
      111 LOADK                            R3 K71 ["store_image"]
      112 SETTABLEKS                       R3 R2 K72 ["StoreImage"]
      114 LOADK                            R3 K73 ["subagent"]
      115 SETTABLEKS                       R3 R2 K74 ["Subagent"]
      117 LOADK                            R3 K75 ["update_plan"]
      118 SETTABLEKS                       R3 R2 K76 ["UpdatePlan"]
      120 LOADK                            R3 K77 ["upload_image"]
      121 SETTABLEKS                       R3 R2 K78 ["UploadImage"]
      123 LOADK                            R3 K79 ["user_keyboard_input"]
      124 SETTABLEKS                       R3 R2 K80 ["UserKeyboardInput"]
      126 LOADK                            R3 K81 ["user_mouse_input"]
      127 SETTABLEKS                       R3 R2 K82 ["UserMouseInput"]
      129 LOADK                            R3 K83 ["wait_job_finished"]
      130 SETTABLEKS                       R3 R2 K84 ["WaitJobFinished"]
      132 LOADK                            R3 K85 ["video_capture"]
      133 SETTABLEKS                       R3 R2 K86 ["VideoCapture"]
      135 DUPCLOSURE                       R3 K87 [PROTO_0]
      136 CAPTURE                          VAL R2
      137 DUPCLOSURE                       R4 K88 [PROTO_3]
      138 CAPTURE                          VAL R2
      139 SETTABLEKS                       R4 R2 K89 ["replaceTokens"]
      141 GETIMPORT                        R4 K92 [table.freeze]
      143 MOVE                             R5 R2
      144 CALL                             R4 1 -1
      145 RETURN                           R4 -1

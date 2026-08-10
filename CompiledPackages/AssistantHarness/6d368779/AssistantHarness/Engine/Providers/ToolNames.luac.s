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
        1 NEWTABLE                         R0 64 0
        3 LOADK                            R1 K0 ["generate_animation"]
        4 SETTABLEKS                       R1 R0 K1 ["AnimationGen"]
        6 LOADK                            R1 K2 ["insert_asset"]
        7 SETTABLEKS                       R1 R0 K3 ["AssetInsert"]
        9 LOADK                            R1 K4 ["search_asset"]
       10 SETTABLEKS                       R1 R0 K5 ["AssetSearch"]
       12 LOADK                            R1 K6 ["auto_setup_avatar"]
       13 SETTABLEKS                       R1 R0 K7 ["AvatarAutoSetup"]
       15 LOADK                            R1 K8 ["character_navigation"]
       16 SETTABLEKS                       R1 R0 K9 ["CharacterNavigation"]
       18 LOADK                            R1 K10 ["complete_todo_items"]
       19 SETTABLEKS                       R1 R0 K11 ["CompleteTodoItems"]
       21 LOADK                            R1 K12 ["create_skill"]
       22 SETTABLEKS                       R1 R0 K13 ["CreateSkill"]
       24 LOADK                            R1 K14 ["insert_from_creator_store"]
       25 SETTABLEKS                       R1 R0 K15 ["CreatorStoreInsert"]
       27 LOADK                            R1 K16 ["search_creator_store"]
       28 SETTABLEKS                       R1 R0 K17 ["CreatorStoreSearch"]
       30 LOADK                            R1 K18 ["edit_skill"]
       31 SETTABLEKS                       R1 R0 K19 ["EditSkill"]
       33 LOADK                            R1 K20 ["execute_luau"]
       34 SETTABLEKS                       R1 R0 K21 ["ExecuteLuau"]
       36 LOADK                            R1 K22 ["script_search"]
       37 SETTABLEKS                       R1 R0 K23 ["FileSearch"]
       39 LOADK                            R1 K24 ["finalize_plan"]
       40 SETTABLEKS                       R1 R0 K25 ["FinalizePlan"]
       42 LOADK                            R1 K26 ["from_history"]
       43 SETTABLEKS                       R1 R0 K27 ["FromHistory"]
       45 LOADK                            R1 K28 ["search_game_tree"]
       46 SETTABLEKS                       R1 R0 K29 ["GameTree"]
       48 LOADK                            R1 K30 ["get_console_output"]
       49 SETTABLEKS                       R1 R0 K31 ["GetConsoleOutput"]
       51 LOADK                            R1 K32 ["get_studio_state"]
       52 SETTABLEKS                       R1 R0 K33 ["GetStudioState"]
       54 LOADK                            R1 K34 ["script_grep"]
       55 SETTABLEKS                       R1 R0 K35 ["GrepSearch"]
       57 LOADK                            R1 K36 ["http_get"]
       58 SETTABLEKS                       R1 R0 K37 ["HttpGet"]
       60 LOADK                            R1 K38 ["inspect_instance"]
       61 SETTABLEKS                       R1 R0 K39 ["InspectInstance"]
       63 LOADK                            R1 K40 ["run_as_job"]
       64 SETTABLEKS                       R1 R0 K41 ["JobRun"]
       66 LOADK                            R1 K42 ["wait_job_finished"]
       67 SETTABLEKS                       R1 R0 K43 ["JobWait"]
       69 LOADK                            R1 K44 ["generate_material"]
       70 SETTABLEKS                       R1 R0 K45 ["MaterialGen"]
       72 LOADK                            R1 K46 ["generate_mesh"]
       73 SETTABLEKS                       R1 R0 K47 ["MeshGen"]
       75 LOADK                            R1 K48 ["multi_edit"]
       76 SETTABLEKS                       R1 R0 K49 ["MultiEdit"]
       78 LOADK                            R1 K50 ["multi_player_agents_communication"]
       79 SETTABLEKS                       R1 R0 K51 ["MultiPlayerAgentsCommunication"]
       81 LOADK                            R1 K52 ["generate_procedural_model"]
       82 SETTABLEKS                       R1 R0 K53 ["PrimitiveGen"]
       84 LOADK                            R1 K54 ["ask_questions"]
       85 SETTABLEKS                       R1 R0 K55 ["QuestionAnswer"]
       87 LOADK                            R1 K56 ["script_read"]
       88 SETTABLEKS                       R1 R0 K57 ["ReadFile"]
       90 LOADK                            R1 K58 ["screen_capture"]
       91 SETTABLEKS                       R1 R0 K59 ["ScreenCapture"]
       93 LOADK                            R1 K60 ["skill"]
       94 SETTABLEKS                       R1 R0 K61 ["Skill"]
       96 LOADK                            R1 K62 ["start_multi_player_agents"]
       97 SETTABLEKS                       R1 R0 K63 ["StartMultiPlayerAgents"]
       99 LOADK                            R1 K64 ["start_stop_play"]
      100 SETTABLEKS                       R1 R0 K65 ["StartStopPlay"]
      102 LOADK                            R1 K66 ["stop_multi_player_agents"]
      103 SETTABLEKS                       R1 R0 K67 ["StopMultiPlayerAgents"]
      105 LOADK                            R1 K68 ["store_image"]
      106 SETTABLEKS                       R1 R0 K69 ["StoreImage"]
      108 LOADK                            R1 K70 ["subagent"]
      109 SETTABLEKS                       R1 R0 K71 ["Subagent"]
      111 LOADK                            R1 K72 ["update_plan"]
      112 SETTABLEKS                       R1 R0 K73 ["UpdatePlan"]
      114 LOADK                            R1 K74 ["upload_image"]
      115 SETTABLEKS                       R1 R0 K75 ["UploadImage"]
      117 LOADK                            R1 K76 ["user_keyboard_input"]
      118 SETTABLEKS                       R1 R0 K77 ["UserKeyboardInput"]
      120 LOADK                            R1 K78 ["user_mouse_input"]
      121 SETTABLEKS                       R1 R0 K79 ["UserMouseInput"]
      123 LOADK                            R1 K80 ["video_capture"]
      124 SETTABLEKS                       R1 R0 K81 ["VideoCapture"]
      126 LOADK                            R1 K82 ["wait_for_multi_player_agents_communication"]
      127 SETTABLEKS                       R1 R0 K83 ["WaitForMultiPlayerAgentsCommunication"]
      129 LOADK                            R1 K84 ["cloud_execute_luau"]
      130 SETTABLEKS                       R1 R0 K85 ["CloudExecuteLuau"]
      132 DUPCLOSURE                       R1 K86 [PROTO_0]
      133 CAPTURE                          VAL R0
      134 DUPCLOSURE                       R2 K87 [PROTO_3]
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R2 R0 K88 ["replaceTokens"]
      138 GETIMPORT                        R2 K91 [table.freeze]
      140 MOVE                             R3 R0
      141 CALL                             R2 1 -1
      142 RETURN                           R2 -1

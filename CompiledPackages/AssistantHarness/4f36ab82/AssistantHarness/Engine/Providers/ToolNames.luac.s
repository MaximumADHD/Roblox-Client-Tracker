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
       15 JUMPIF                           R1 ; [+13]
       16 GETIMPORT                        R2 K3 [warn]
       18 LOADK                            R3 K4 ["ERR: No tool name found for token '%*'"]
       19 MOVE                             R5 R0
       20 NAMECALL                         R3 R3 K5 ["format"]
       22 CALL                             R3 2 1
       23 CALL                             R2 1 0
       24 LOADK                            R3 K6 ["{"]
       25 MOVE                             R4 R0
       26 LOADK                            R5 K7 ["}"]
       27 CONCAT                           R2 R3 R5
       28 RETURN                           R2 1
       29 RETURN                           R1 1

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
        6 LOADK                            R1 K2 ["ask_for_input"]
        7 SETTABLEKS                       R1 R0 K3 ["AskInput"]
        9 LOADK                            R1 K4 ["insert_asset"]
       10 SETTABLEKS                       R1 R0 K5 ["AssetInsert"]
       12 LOADK                            R1 K6 ["search_asset"]
       13 SETTABLEKS                       R1 R0 K7 ["AssetSearch"]
       15 LOADK                            R1 K8 ["auto_setup_avatar"]
       16 SETTABLEKS                       R1 R0 K9 ["AvatarAutoSetup"]
       18 LOADK                            R1 K10 ["capture_plugin_gui"]
       19 SETTABLEKS                       R1 R0 K11 ["CapturePluginGui"]
       21 LOADK                            R1 K12 ["character_navigation"]
       22 SETTABLEKS                       R1 R0 K13 ["CharacterNavigation"]
       24 LOADK                            R1 K14 ["complete_todo_items"]
       25 SETTABLEKS                       R1 R0 K15 ["CompleteTodoItems"]
       27 LOADK                            R1 K16 ["create_skill"]
       28 SETTABLEKS                       R1 R0 K17 ["CreateSkill"]
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
       48 LOADK                            R1 K30 ["generate_layout"]
       49 SETTABLEKS                       R1 R0 K31 ["GenerateLayout"]
       51 LOADK                            R1 K32 ["get_console_output"]
       52 SETTABLEKS                       R1 R0 K33 ["GetConsoleOutput"]
       54 LOADK                            R1 K34 ["get_studio_state"]
       55 SETTABLEKS                       R1 R0 K35 ["GetStudioState"]
       57 LOADK                            R1 K36 ["script_grep"]
       58 SETTABLEKS                       R1 R0 K37 ["GrepSearch"]
       60 LOADK                            R1 K38 ["http_get"]
       61 SETTABLEKS                       R1 R0 K39 ["HttpGet"]
       63 LOADK                            R1 K40 ["inspect_instance"]
       64 SETTABLEKS                       R1 R0 K41 ["InspectInstance"]
       66 LOADK                            R1 K42 ["wait_job_finished"]
       67 SETTABLEKS                       R1 R0 K43 ["JobWait"]
       69 LOADK                            R1 K44 ["list_plugin_guis"]
       70 SETTABLEKS                       R1 R0 K45 ["ListPluginGuis"]
       72 LOADK                            R1 K46 ["list_roblox_studios"]
       73 SETTABLEKS                       R1 R0 K47 ["ListRobloxStudios"]
       75 LOADK                            R1 K48 ["generate_material"]
       76 SETTABLEKS                       R1 R0 K49 ["MaterialGen"]
       78 LOADK                            R1 K50 ["generate_mesh"]
       79 SETTABLEKS                       R1 R0 K51 ["MeshGen"]
       81 LOADK                            R1 K52 ["multi_edit"]
       82 SETTABLEKS                       R1 R0 K53 ["MultiEdit"]
       84 LOADK                            R1 K54 ["multi_player_agents_communication"]
       85 SETTABLEKS                       R1 R0 K55 ["MultiPlayerAgentsCommunication"]
       87 LOADK                            R1 K56 ["look"]
       88 SETTABLEKS                       R1 R0 K57 ["PlaytestLook"]
       90 LOADK                            R1 K58 ["generate_procedural_model"]
       91 SETTABLEKS                       R1 R0 K59 ["PrimitiveGen"]
       93 LOADK                            R1 K60 ["ask_questions"]
       94 SETTABLEKS                       R1 R0 K61 ["QuestionAnswer"]
       96 LOADK                            R1 K62 ["script_read"]
       97 SETTABLEKS                       R1 R0 K63 ["ReadFile"]
       99 LOADK                            R1 K64 ["screen_capture"]
      100 SETTABLEKS                       R1 R0 K65 ["ScreenCapture"]
      102 LOADK                            R1 K66 ["segment_mesh"]
      103 SETTABLEKS                       R1 R0 K67 ["SegmentMesh"]
      105 LOADK                            R1 K68 ["skill"]
      106 SETTABLEKS                       R1 R0 K69 ["Skill"]
      108 LOADK                            R1 K70 ["start_multi_player_agents"]
      109 SETTABLEKS                       R1 R0 K71 ["StartMultiPlayerAgents"]
      111 LOADK                            R1 K72 ["start_stop_play"]
      112 SETTABLEKS                       R1 R0 K73 ["StartStopPlay"]
      114 LOADK                            R1 K74 ["stop_multi_player_agents"]
      115 SETTABLEKS                       R1 R0 K75 ["StopMultiPlayerAgents"]
      117 LOADK                            R1 K76 ["store_image"]
      118 SETTABLEKS                       R1 R0 K77 ["StoreImage"]
      120 LOADK                            R1 K78 ["subagent"]
      121 SETTABLEKS                       R1 R0 K79 ["Subagent"]
      123 LOADK                            R1 K80 ["generate_texture"]
      124 SETTABLEKS                       R1 R0 K81 ["TextureGen"]
      126 LOADK                            R1 K82 ["update_plan"]
      127 SETTABLEKS                       R1 R0 K83 ["UpdatePlan"]
      129 LOADK                            R1 K84 ["upload_image"]
      130 SETTABLEKS                       R1 R0 K85 ["UploadImage"]
      132 LOADK                            R1 K86 ["user_keyboard_input"]
      133 SETTABLEKS                       R1 R0 K87 ["UserKeyboardInput"]
      135 LOADK                            R1 K88 ["user_mouse_input"]
      136 SETTABLEKS                       R1 R0 K89 ["UserMouseInput"]
      138 LOADK                            R1 K90 ["video_capture"]
      139 SETTABLEKS                       R1 R0 K91 ["VideoCapture"]
      141 LOADK                            R1 K92 ["wait_for_multi_player_agents_communication"]
      142 SETTABLEKS                       R1 R0 K93 ["WaitForMultiPlayerAgentsCommunication"]
      144 LOADK                            R1 K94 ["cloud_execute_luau"]
      145 SETTABLEKS                       R1 R0 K95 ["CloudExecuteLuau"]
      147 DUPCLOSURE                       R1 K96 [PROTO_0]
      148 CAPTURE                          VAL R0
      149 DUPCLOSURE                       R2 K97 [PROTO_3]
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R2 R0 K98 ["replaceTokens"]
      153 GETIMPORT                        R2 K101 [table.freeze]
      155 MOVE                             R3 R0
      156 CALL                             R2 1 -1
      157 RETURN                           R2 -1

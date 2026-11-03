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
       18 LOADK                            R1 K10 ["generate_avatar"]
       19 SETTABLEKS                       R1 R0 K11 ["AvatarGen"]
       21 LOADK                            R1 K12 ["capture_plugin_gui"]
       22 SETTABLEKS                       R1 R0 K13 ["CapturePluginGui"]
       24 LOADK                            R1 K14 ["character_navigation"]
       25 SETTABLEKS                       R1 R0 K15 ["CharacterNavigation"]
       27 LOADK                            R1 K16 ["complete_todo_items"]
       28 SETTABLEKS                       R1 R0 K17 ["CompleteTodoItems"]
       30 LOADK                            R1 K18 ["create_skill"]
       31 SETTABLEKS                       R1 R0 K19 ["CreateSkill"]
       33 LOADK                            R1 K20 ["edit_skill"]
       34 SETTABLEKS                       R1 R0 K21 ["EditSkill"]
       36 LOADK                            R1 K22 ["execute_luau"]
       37 SETTABLEKS                       R1 R0 K23 ["ExecuteLuau"]
       39 LOADK                            R1 K24 ["script_search"]
       40 SETTABLEKS                       R1 R0 K25 ["FileSearch"]
       42 LOADK                            R1 K26 ["finalize_plan"]
       43 SETTABLEKS                       R1 R0 K27 ["FinalizePlan"]
       45 LOADK                            R1 K28 ["from_history"]
       46 SETTABLEKS                       R1 R0 K29 ["FromHistory"]
       48 LOADK                            R1 K30 ["search_game_tree"]
       49 SETTABLEKS                       R1 R0 K31 ["GameTree"]
       51 LOADK                            R1 K32 ["generate_scene"]
       52 SETTABLEKS                       R1 R0 K33 ["GenerateScene"]
       54 LOADK                            R1 K34 ["get_console_output"]
       55 SETTABLEKS                       R1 R0 K35 ["GetConsoleOutput"]
       57 LOADK                            R1 K36 ["get_studio_state"]
       58 SETTABLEKS                       R1 R0 K37 ["GetStudioState"]
       60 LOADK                            R1 K38 ["script_grep"]
       61 SETTABLEKS                       R1 R0 K39 ["GrepSearch"]
       63 LOADK                            R1 K40 ["http_get"]
       64 SETTABLEKS                       R1 R0 K41 ["HttpGet"]
       66 LOADK                            R1 K42 ["inspect_instance"]
       67 SETTABLEKS                       R1 R0 K43 ["InspectInstance"]
       69 LOADK                            R1 K44 ["wait_job_finished"]
       70 SETTABLEKS                       R1 R0 K45 ["JobWait"]
       72 LOADK                            R1 K46 ["list_place"]
       73 SETTABLEKS                       R1 R0 K47 ["ListPlace"]
       75 LOADK                            R1 K48 ["list_plugin_guis"]
       76 SETTABLEKS                       R1 R0 K49 ["ListPluginGuis"]
       78 LOADK                            R1 K50 ["list_roblox_studios"]
       79 SETTABLEKS                       R1 R0 K51 ["ListRobloxStudios"]
       81 LOADK                            R1 K52 ["list_skills"]
       82 SETTABLEKS                       R1 R0 K53 ["ListSkills"]
       84 LOADK                            R1 K54 ["generate_material"]
       85 SETTABLEKS                       R1 R0 K55 ["MaterialGen"]
       87 LOADK                            R1 K56 ["generate_mesh"]
       88 SETTABLEKS                       R1 R0 K57 ["MeshGen"]
       90 LOADK                            R1 K58 ["multi_edit"]
       91 SETTABLEKS                       R1 R0 K59 ["MultiEdit"]
       93 LOADK                            R1 K60 ["multi_player_agents_communication"]
       94 SETTABLEKS                       R1 R0 K61 ["MultiPlayerAgentsCommunication"]
       96 LOADK                            R1 K62 ["open_cloud_invoke"]
       97 SETTABLEKS                       R1 R0 K63 ["OpenCloudInvoke"]
       99 LOADK                            R1 K64 ["look"]
      100 SETTABLEKS                       R1 R0 K65 ["PlaytestLook"]
      102 LOADK                            R1 K66 ["generate_procedural_model"]
      103 SETTABLEKS                       R1 R0 K67 ["PrimitiveGen"]
      105 LOADK                            R1 K68 ["ask_questions"]
      106 SETTABLEKS                       R1 R0 K69 ["QuestionAnswer"]
      108 LOADK                            R1 K70 ["script_read"]
      109 SETTABLEKS                       R1 R0 K71 ["ReadFile"]
      111 LOADK                            R1 K72 ["screen_capture"]
      112 SETTABLEKS                       R1 R0 K73 ["ScreenCapture"]
      114 LOADK                            R1 K74 ["segment_mesh"]
      115 SETTABLEKS                       R1 R0 K75 ["SegmentMesh"]
      117 LOADK                            R1 K76 ["skill"]
      118 SETTABLEKS                       R1 R0 K77 ["Skill"]
      120 LOADK                            R1 K78 ["start_multi_player_agents"]
      121 SETTABLEKS                       R1 R0 K79 ["StartMultiPlayerAgents"]
      123 LOADK                            R1 K80 ["start_stop_play"]
      124 SETTABLEKS                       R1 R0 K81 ["StartStopPlay"]
      126 LOADK                            R1 K82 ["stop_multi_player_agents"]
      127 SETTABLEKS                       R1 R0 K83 ["StopMultiPlayerAgents"]
      129 LOADK                            R1 K84 ["store_image"]
      130 SETTABLEKS                       R1 R0 K85 ["StoreImage"]
      132 LOADK                            R1 K86 ["subagent"]
      133 SETTABLEKS                       R1 R0 K87 ["Subagent"]
      135 LOADK                            R1 K88 ["generate_texture"]
      136 SETTABLEKS                       R1 R0 K89 ["TextureGen"]
      138 LOADK                            R1 K90 ["update_plan"]
      139 SETTABLEKS                       R1 R0 K91 ["UpdatePlan"]
      141 LOADK                            R1 K92 ["upload_image"]
      142 SETTABLEKS                       R1 R0 K93 ["UploadImage"]
      144 LOADK                            R1 K94 ["user_keyboard_input"]
      145 SETTABLEKS                       R1 R0 K95 ["UserKeyboardInput"]
      147 LOADK                            R1 K96 ["user_mouse_input"]
      148 SETTABLEKS                       R1 R0 K97 ["UserMouseInput"]
      150 LOADK                            R1 K98 ["video_capture"]
      151 SETTABLEKS                       R1 R0 K99 ["VideoCapture"]
      153 LOADK                            R1 K100 ["wait_for_multi_player_agents_communication"]
      154 SETTABLEKS                       R1 R0 K101 ["WaitForMultiPlayerAgentsCommunication"]
      156 LOADK                            R1 K102 ["cloud_execute_luau"]
      157 SETTABLEKS                       R1 R0 K103 ["CloudExecuteLuau"]
      159 DUPCLOSURE                       R1 K104 [PROTO_0]
      160 CAPTURE                          VAL R0
      161 DUPCLOSURE                       R2 K105 [PROTO_3]
      162 CAPTURE                          VAL R0
      163 SETTABLEKS                       R2 R0 K106 ["replaceTokens"]
      165 GETIMPORT                        R2 K109 [table.freeze]
      167 MOVE                             R3 R0
      168 CALL                             R2 1 -1
      169 RETURN                           R2 -1

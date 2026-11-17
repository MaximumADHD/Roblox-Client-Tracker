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
        3 LOADK                            R1 K0 ["open_plugin"]
        4 SETTABLEKS                       R1 R0 K1 ["OpenPlugin"]
        6 LOADK                            R1 K2 ["generate_animation"]
        7 SETTABLEKS                       R1 R0 K3 ["AnimationGen"]
        9 LOADK                            R1 K4 ["ask_for_input"]
       10 SETTABLEKS                       R1 R0 K5 ["AskInput"]
       12 LOADK                            R1 K6 ["insert_asset"]
       13 SETTABLEKS                       R1 R0 K7 ["AssetInsert"]
       15 LOADK                            R1 K8 ["asset_quality"]
       16 SETTABLEKS                       R1 R0 K9 ["AssetQuality"]
       18 LOADK                            R1 K10 ["search_asset"]
       19 SETTABLEKS                       R1 R0 K11 ["AssetSearch"]
       21 LOADK                            R1 K12 ["auto_setup_avatar"]
       22 SETTABLEKS                       R1 R0 K13 ["AvatarAutoSetup"]
       24 LOADK                            R1 K14 ["generate_avatar"]
       25 SETTABLEKS                       R1 R0 K15 ["AvatarGen"]
       27 LOADK                            R1 K16 ["capture_plugin_gui"]
       28 SETTABLEKS                       R1 R0 K17 ["CapturePluginGui"]
       30 LOADK                            R1 K18 ["character_navigation"]
       31 SETTABLEKS                       R1 R0 K19 ["CharacterNavigation"]
       33 LOADK                            R1 K20 ["complete_todo_items"]
       34 SETTABLEKS                       R1 R0 K21 ["CompleteTodoItems"]
       36 LOADK                            R1 K22 ["create_skill"]
       37 SETTABLEKS                       R1 R0 K23 ["CreateSkill"]
       39 LOADK                            R1 K24 ["edit_skill"]
       40 SETTABLEKS                       R1 R0 K25 ["EditSkill"]
       42 LOADK                            R1 K26 ["execute_luau"]
       43 SETTABLEKS                       R1 R0 K27 ["ExecuteLuau"]
       45 LOADK                            R1 K28 ["script_search"]
       46 SETTABLEKS                       R1 R0 K29 ["FileSearch"]
       48 LOADK                            R1 K30 ["finalize_plan"]
       49 SETTABLEKS                       R1 R0 K31 ["FinalizePlan"]
       51 LOADK                            R1 K32 ["from_history"]
       52 SETTABLEKS                       R1 R0 K33 ["FromHistory"]
       54 LOADK                            R1 K34 ["search_game_tree"]
       55 SETTABLEKS                       R1 R0 K35 ["GameTree"]
       57 LOADK                            R1 K36 ["generate_scene"]
       58 SETTABLEKS                       R1 R0 K37 ["GenerateScene"]
       60 LOADK                            R1 K38 ["get_console_output"]
       61 SETTABLEKS                       R1 R0 K39 ["GetConsoleOutput"]
       63 LOADK                            R1 K40 ["get_studio_state"]
       64 SETTABLEKS                       R1 R0 K41 ["GetStudioState"]
       66 LOADK                            R1 K42 ["script_grep"]
       67 SETTABLEKS                       R1 R0 K43 ["GrepSearch"]
       69 LOADK                            R1 K44 ["http_get"]
       70 SETTABLEKS                       R1 R0 K45 ["HttpGet"]
       72 LOADK                            R1 K46 ["inspect_instance"]
       73 SETTABLEKS                       R1 R0 K47 ["InspectInstance"]
       75 LOADK                            R1 K48 ["wait_job_finished"]
       76 SETTABLEKS                       R1 R0 K49 ["JobWait"]
       78 LOADK                            R1 K50 ["list_place"]
       79 SETTABLEKS                       R1 R0 K51 ["ListPlace"]
       81 LOADK                            R1 K52 ["list_plugin_actions"]
       82 SETTABLEKS                       R1 R0 K53 ["ListPluginActions"]
       84 LOADK                            R1 K54 ["list_plugin_guis"]
       85 SETTABLEKS                       R1 R0 K55 ["ListPluginGuis"]
       87 LOADK                            R1 K56 ["list_roblox_studios"]
       88 SETTABLEKS                       R1 R0 K57 ["ListRobloxStudios"]
       90 LOADK                            R1 K58 ["list_skills"]
       91 SETTABLEKS                       R1 R0 K59 ["ListSkills"]
       93 LOADK                            R1 K60 ["generate_material"]
       94 SETTABLEKS                       R1 R0 K61 ["MaterialGen"]
       96 LOADK                            R1 K62 ["generate_mesh"]
       97 SETTABLEKS                       R1 R0 K63 ["MeshGen"]
       99 LOADK                            R1 K64 ["multi_edit"]
      100 SETTABLEKS                       R1 R0 K65 ["MultiEdit"]
      102 LOADK                            R1 K66 ["multi_player_agents_communication"]
      103 SETTABLEKS                       R1 R0 K67 ["MultiPlayerAgentsCommunication"]
      105 LOADK                            R1 K68 ["open_cloud_invoke"]
      106 SETTABLEKS                       R1 R0 K69 ["OpenCloudInvoke"]
      108 LOADK                            R1 K70 ["look"]
      109 SETTABLEKS                       R1 R0 K71 ["PlaytestLook"]
      111 LOADK                            R1 K72 ["generate_procedural_model"]
      112 SETTABLEKS                       R1 R0 K73 ["PrimitiveGen"]
      114 LOADK                            R1 K74 ["ask_questions"]
      115 SETTABLEKS                       R1 R0 K75 ["QuestionAnswer"]
      117 LOADK                            R1 K76 ["script_read"]
      118 SETTABLEKS                       R1 R0 K77 ["ReadFile"]
      120 LOADK                            R1 K78 ["save_place"]
      121 SETTABLEKS                       R1 R0 K79 ["SavePlace"]
      123 LOADK                            R1 K80 ["screen_capture"]
      124 SETTABLEKS                       R1 R0 K81 ["ScreenCapture"]
      126 LOADK                            R1 K82 ["segment_mesh"]
      127 SETTABLEKS                       R1 R0 K83 ["SegmentMesh"]
      129 LOADK                            R1 K84 ["skill"]
      130 SETTABLEKS                       R1 R0 K85 ["Skill"]
      132 LOADK                            R1 K86 ["start_multi_player_agents"]
      133 SETTABLEKS                       R1 R0 K87 ["StartMultiPlayerAgents"]
      135 LOADK                            R1 K88 ["start_stop_play"]
      136 SETTABLEKS                       R1 R0 K89 ["StartStopPlay"]
      138 LOADK                            R1 K90 ["stop_multi_player_agents"]
      139 SETTABLEKS                       R1 R0 K91 ["StopMultiPlayerAgents"]
      141 LOADK                            R1 K92 ["store_image"]
      142 SETTABLEKS                       R1 R0 K93 ["StoreImage"]
      144 LOADK                            R1 K94 ["subagent"]
      145 SETTABLEKS                       R1 R0 K95 ["Subagent"]
      147 LOADK                            R1 K96 ["submit_feedback"]
      148 SETTABLEKS                       R1 R0 K97 ["SubmitFeedback"]
      150 LOADK                            R1 K98 ["generate_texture"]
      151 SETTABLEKS                       R1 R0 K99 ["TextureGen"]
      153 LOADK                            R1 K100 ["update_plan"]
      154 SETTABLEKS                       R1 R0 K101 ["UpdatePlan"]
      156 LOADK                            R1 K102 ["upload_image"]
      157 SETTABLEKS                       R1 R0 K103 ["UploadImage"]
      159 LOADK                            R1 K104 ["user_keyboard_input"]
      160 SETTABLEKS                       R1 R0 K105 ["UserKeyboardInput"]
      162 LOADK                            R1 K106 ["user_mouse_input"]
      163 SETTABLEKS                       R1 R0 K107 ["UserMouseInput"]
      165 LOADK                            R1 K108 ["video_capture"]
      166 SETTABLEKS                       R1 R0 K109 ["VideoCapture"]
      168 LOADK                            R1 K110 ["wait_for_multi_player_agents_communication"]
      169 SETTABLEKS                       R1 R0 K111 ["WaitForMultiPlayerAgentsCommunication"]
      171 LOADK                            R1 K112 ["cloud_execute_luau"]
      172 SETTABLEKS                       R1 R0 K113 ["CloudExecuteLuau"]
      174 DUPCLOSURE                       R1 K114 [PROTO_0]
      175 CAPTURE                          VAL R0
      176 DUPCLOSURE                       R2 K115 [PROTO_3]
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R2 R0 K116 ["replaceTokens"]
      180 GETIMPORT                        R2 K119 [table.freeze]
      182 MOVE                             R3 R0
      183 CALL                             R2 1 -1
      184 RETURN                           R2 -1

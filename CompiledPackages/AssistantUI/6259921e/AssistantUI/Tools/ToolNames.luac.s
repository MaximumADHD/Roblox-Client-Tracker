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
       31 LOADK                            R3 K18 ["insert_from_creator_store"]
       32 SETTABLEKS                       R3 R2 K19 ["CreatorStoreInsert"]
       34 LOADK                            R3 K20 ["search_creator_store"]
       35 SETTABLEKS                       R3 R2 K21 ["CreatorStoreSearch"]
       37 LOADK                            R3 K22 ["execute_luau"]
       38 SETTABLEKS                       R3 R2 K23 ["ExecuteLuau"]
       40 LOADK                            R3 K24 ["script_search"]
       41 SETTABLEKS                       R3 R2 K25 ["FileSearch"]
       43 LOADK                            R3 K26 ["finalize_plan"]
       44 SETTABLEKS                       R3 R2 K27 ["FinalizePlan"]
       46 LOADK                            R3 K28 ["from_history"]
       47 SETTABLEKS                       R3 R2 K29 ["FromHistory"]
       49 LOADK                            R3 K30 ["search_game_tree"]
       50 SETTABLEKS                       R3 R2 K31 ["GameTree"]
       52 LOADK                            R3 K32 ["get_console_output"]
       53 SETTABLEKS                       R3 R2 K33 ["GetConsoleOutput"]
       55 LOADK                            R3 K34 ["script_grep"]
       56 SETTABLEKS                       R3 R2 K35 ["GrepSearch"]
       58 LOADK                            R3 K36 ["http_get"]
       59 SETTABLEKS                       R3 R2 K37 ["HttpGet"]
       61 LOADK                            R3 K18 ["insert_from_creator_store"]
       62 SETTABLEKS                       R3 R2 K38 ["InsertFromMarketplace"]
       64 LOADK                            R3 K39 ["inspect_instance"]
       65 SETTABLEKS                       R3 R2 K40 ["InspectInstance"]
       67 LOADK                            R3 K41 ["generate_material"]
       68 SETTABLEKS                       R3 R2 K42 ["MaterialGen"]
       70 LOADK                            R3 K43 ["generate_mesh"]
       71 SETTABLEKS                       R3 R2 K44 ["MeshGen"]
       73 LOADK                            R3 K45 ["multi_edit"]
       74 SETTABLEKS                       R3 R2 K46 ["MultiEdit"]
       76 MOVE                             R3 R1
       77 CALL                             R3 0 1
       78 SETTABLEKS                       R3 R2 K47 ["PrimitiveGen"]
       80 LOADK                            R3 K48 ["ask_questions"]
       81 SETTABLEKS                       R3 R2 K49 ["QuestionAnswer"]
       83 LOADK                            R3 K50 ["script_read"]
       84 SETTABLEKS                       R3 R2 K51 ["ReadFile"]
       86 LOADK                            R3 K52 ["screen_capture"]
       87 SETTABLEKS                       R3 R2 K53 ["ScreenCapture"]
       89 LOADK                            R3 K54 ["skill"]
       90 SETTABLEKS                       R3 R2 K55 ["Skill"]
       92 LOADK                            R3 K56 ["start_stop_play"]
       93 SETTABLEKS                       R3 R2 K57 ["StartStopPlay"]
       95 LOADK                            R3 K58 ["store_image"]
       96 SETTABLEKS                       R3 R2 K59 ["StoreImage"]
       98 LOADK                            R3 K60 ["subagent"]
       99 SETTABLEKS                       R3 R2 K61 ["Subagent"]
      101 LOADK                            R3 K62 ["update_plan"]
      102 SETTABLEKS                       R3 R2 K63 ["UpdatePlan"]
      104 LOADK                            R3 K64 ["upload_image"]
      105 SETTABLEKS                       R3 R2 K65 ["UploadImage"]
      107 LOADK                            R3 K66 ["user_keyboard_input"]
      108 SETTABLEKS                       R3 R2 K67 ["UserKeyboardInput"]
      110 LOADK                            R3 K68 ["user_mouse_input"]
      111 SETTABLEKS                       R3 R2 K69 ["UserMouseInput"]
      113 LOADK                            R3 K70 ["wait_job_finished"]
      114 SETTABLEKS                       R3 R2 K71 ["WaitJobFinished"]
      116 DUPCLOSURE                       R3 K72 [PROTO_0]
      117 CAPTURE                          VAL R2
      118 DUPCLOSURE                       R4 K73 [PROTO_3]
      119 CAPTURE                          VAL R2
      120 SETTABLEKS                       R4 R2 K74 ["replaceTokens"]
      122 GETIMPORT                        R4 K77 [table.freeze]
      124 MOVE                             R5 R2
      125 CALL                             R4 1 -1
      126 RETURN                           R4 -1

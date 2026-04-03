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
       49 DUPTABLE                         R8 K38 [{"ExecuteLuau", "FileSearch", "GameTree", "GrepSearch", "Grep", "InsertFromMarketplace", "InspectInstance", "MaterialGen", "MeshGen", "MultiEdit", "PrimitiveGen", "ReadFile", "ScreenCapture", "UploadImage", "TestGame", "StartStopPlay", "GetConsoleOutput", "UserKeyboardInput", "UserMouseInput", "CharacterNavigation", "Skill", "Subagent"}]
       50 LOADK                            R9 K39 ["execute_luau"]
       51 SETTABLEKS                       R9 R8 K16 ["ExecuteLuau"]
       53 LOADK                            R9 K40 ["script_search"]
       54 SETTABLEKS                       R9 R8 K17 ["FileSearch"]
       56 LOADK                            R9 K41 ["search_game_tree"]
       57 SETTABLEKS                       R9 R8 K18 ["GameTree"]
       59 LOADK                            R9 K42 ["script_grep"]
       60 SETTABLEKS                       R9 R8 K19 ["GrepSearch"]
       62 LOADK                            R9 K43 ["grep"]
       63 SETTABLEKS                       R9 R8 K20 ["Grep"]
       65 LOADK                            R9 K44 ["insert_from_creator_store"]
       66 SETTABLEKS                       R9 R8 K21 ["InsertFromMarketplace"]
       68 LOADK                            R9 K45 ["inspect_instance"]
       69 SETTABLEKS                       R9 R8 K22 ["InspectInstance"]
       71 LOADK                            R9 K46 ["generate_material"]
       72 SETTABLEKS                       R9 R8 K23 ["MaterialGen"]
       74 LOADK                            R9 K47 ["generate_mesh"]
       75 SETTABLEKS                       R9 R8 K24 ["MeshGen"]
       77 LOADK                            R9 K48 ["multi_edit"]
       78 SETTABLEKS                       R9 R8 K25 ["MultiEdit"]
       80 LOADK                            R9 K49 ["primitive_gen"]
       81 SETTABLEKS                       R9 R8 K26 ["PrimitiveGen"]
       83 LOADK                            R9 K50 ["script_read"]
       84 SETTABLEKS                       R9 R8 K27 ["ReadFile"]
       86 LOADK                            R9 K51 ["screen_capture"]
       87 SETTABLEKS                       R9 R8 K28 ["ScreenCapture"]
       89 LOADK                            R9 K52 ["upload_image"]
       90 SETTABLEKS                       R9 R8 K29 ["UploadImage"]
       92 LOADK                            R9 K53 ["test_game"]
       93 SETTABLEKS                       R9 R8 K30 ["TestGame"]
       95 LOADK                            R9 K54 ["start_stop_play"]
       96 SETTABLEKS                       R9 R8 K31 ["StartStopPlay"]
       98 LOADK                            R9 K55 ["get_console_output"]
       99 SETTABLEKS                       R9 R8 K32 ["GetConsoleOutput"]
      101 LOADK                            R9 K56 ["user_keyboard_input"]
      102 SETTABLEKS                       R9 R8 K33 ["UserKeyboardInput"]
      104 LOADK                            R9 K57 ["user_mouse_input"]
      105 SETTABLEKS                       R9 R8 K34 ["UserMouseInput"]
      107 LOADK                            R9 K58 ["character_navigation"]
      108 SETTABLEKS                       R9 R8 K35 ["CharacterNavigation"]
      110 LOADK                            R9 K59 ["skill"]
      111 SETTABLEKS                       R9 R8 K36 ["Skill"]
      113 LOADK                            R9 K60 ["subagent"]
      114 SETTABLEKS                       R9 R8 K37 ["Subagent"]
      116 SETTABLEKS                       R8 R7 K61 ["ToolNames"]
      118 DUPCLOSURE                       R8 K62 [PROTO_1]
      119 SETTABLEKS                       R8 R7 K63 ["createUnimplemented"]
      121 RETURN                           R7 1

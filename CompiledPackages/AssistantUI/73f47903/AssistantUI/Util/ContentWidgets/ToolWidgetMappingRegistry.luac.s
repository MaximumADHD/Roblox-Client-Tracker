PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Type"]
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+28]
        8 GETUPVAL                         R5 2
        9 GETTABLE                         R4 R5 R0
       10 JUMPIFNOT                        R4 ; [+25]
       11 JUMPIFEQ                         R4 R3 ; [+24]
       13 GETUPVAL                         R7 3
       14 GETTABLE                         R6 R7 R0
       15 ORK                              R5 R6 K1 ["Unknown"]
       16 MOVE                             R6 R2
       17 JUMPIF                           R6 ; [+5]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K2 ["MappingSource"]
       21 GETTABLEKS                       R6 R6 K3 ["Hardcoded"]
       23 GETIMPORT                        R7 K5 [warn]
       25 LOADK                            R9 K6 ["[ToolWidgetMappingRegistry] Tool \"%*\" already mapped to \"%*\" (%*), overwriting with \"%*\" (%*)"]
       26 MOVE                             R11 R0
       27 MOVE                             R12 R4
       28 MOVE                             R13 R5
       29 MOVE                             R14 R1
       30 MOVE                             R15 R6
       31 NAMECALL                         R9 R9 K7 ["format"]
       33 CALL                             R9 6 1
       34 MOVE                             R8 R9
       35 CALL                             R7 1 0
       36 GETUPVAL                         R4 2
       37 SETTABLE                         R3 R4 R0
       38 GETUPVAL                         R4 3
       39 SETTABLE                         R2 R4 R0
       40 GETUPVAL                         R5 5
       41 GETTABLE                         R4 R5 R3
       42 JUMPIF                           R4 ; [+4]
       43 GETUPVAL                         R4 5
       44 NEWTABLE                         R5 0 0
       46 SETTABLE                         R5 R4 R3
       47 GETIMPORT                        R4 K10 [table.find]
       49 GETUPVAL                         R6 5
       50 GETTABLE                         R5 R6 R3
       51 MOVE                             R6 R0
       52 CALL                             R4 2 1
       53 JUMPIF                           R4 ; [+8]
       54 GETUPVAL                         R6 5
       55 GETTABLE                         R5 R6 R3
       56 FASTCALL2                        TABLE_INSERT R5 R0 ; [+4]
       58 MOVE                             R6 R0
       59 GETIMPORT                        R4 K12 [table.insert]
       61 CALL                             R4 2 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 GETIMPORT                        R1 K4 [table.sort]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 NEWTABLE                         R0 0 0
        8 SETUPVAL                         R0 2
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Components"]
       13 GETTABLEKS                       R3 R3 K7 ["ContentWidgets"]
       15 GETTABLEKS                       R3 R3 K8 ["GenericToolContentWidget"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Flags"]
       22 GETTABLEKS                       R4 R4 K10 ["FFlagDebugLogAssistantUI"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K13 [table.freeze]
       27 DUPTABLE                         R5 K16 [{["Hardcoded"] = "Hardcoded", ["FString"] = "FString"}]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R0 K17 ["MappingSource"]
       31 NEWTABLE                         R4 0 0
       33 NEWTABLE                         R5 0 0
       35 NEWTABLE                         R6 0 0
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          REF R4
       41 CAPTURE                          REF R6
       42 CAPTURE                          VAL R0
       43 CAPTURE                          REF R5
       44 SETTABLEKS                       R7 R0 K18 ["add"]
       46 NEWCLOSURE                       R7 P1
       47 CAPTURE                          REF R4
       48 SETTABLEKS                       R7 R0 K19 ["get"]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          REF R5
       52 SETTABLEKS                       R7 R0 K20 ["_getToolsForWidgetType"]
       54 NEWCLOSURE                       R7 P3
       55 CAPTURE                          REF R6
       56 SETTABLEKS                       R7 R0 K21 ["_getMappingSource"]
       58 NEWCLOSURE                       R7 P4
       59 CAPTURE                          REF R4
       60 SETTABLEKS                       R7 R0 K22 ["_getAllToolNames"]
       62 NEWCLOSURE                       R7 P5
       63 CAPTURE                          REF R4
       64 CAPTURE                          REF R5
       65 CAPTURE                          REF R6
       66 SETTABLEKS                       R7 R0 K23 ["clear"]
       68 CLOSEUPVALS                      R4
       69 RETURN                           R0 1

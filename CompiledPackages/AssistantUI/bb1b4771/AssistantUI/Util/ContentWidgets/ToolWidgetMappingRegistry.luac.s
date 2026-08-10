PROTO_0:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Type"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["FFlagDebugLogAssistantUI"]
        8 JUMPIFNOT                        R4 ; [+28]
        9 GETUPVAL                         R5 2
       10 GETTABLE                         R4 R5 R0
       11 JUMPIFNOT                        R4 ; [+25]
       12 JUMPIFEQ                         R4 R3 ; [+24]
       14 GETUPVAL                         R7 3
       15 GETTABLE                         R6 R7 R0
       16 ORK                              R5 R6 K2 ["Unknown"]
       17 MOVE                             R6 R2
       18 JUMPIF                           R6 ; [+5]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K3 ["MappingSource"]
       22 GETTABLEKS                       R6 R6 K4 ["Hardcoded"]
       24 GETIMPORT                        R7 K6 [warn]
       26 LOADK                            R9 K7 ["[ToolWidgetMappingRegistry] Tool \"%*\" already mapped to \"%*\" (%*), overwriting with \"%*\" (%*)"]
       27 MOVE                             R11 R0
       28 MOVE                             R12 R4
       29 MOVE                             R13 R5
       30 MOVE                             R14 R1
       31 MOVE                             R15 R6
       32 NAMECALL                         R9 R9 K8 ["format"]
       34 CALL                             R9 6 1
       35 MOVE                             R8 R9
       36 CALL                             R7 1 0
       37 GETUPVAL                         R4 2
       38 SETTABLE                         R3 R4 R0
       39 GETUPVAL                         R4 3
       40 SETTABLE                         R2 R4 R0
       41 GETUPVAL                         R5 5
       42 GETTABLE                         R4 R5 R3
       43 JUMPIF                           R4 ; [+4]
       44 GETUPVAL                         R4 5
       45 NEWTABLE                         R5 0 0
       47 SETTABLE                         R5 R4 R3
       48 GETIMPORT                        R4 K11 [table.find]
       50 GETUPVAL                         R6 5
       51 GETTABLE                         R5 R6 R3
       52 MOVE                             R6 R0
       53 CALL                             R4 2 1
       54 JUMPIF                           R4 ; [+8]
       55 GETUPVAL                         R6 5
       56 GETTABLE                         R5 R6 R3
       57 FASTCALL2                        TABLE_INSERT R5 R0 ; [+4]
       59 MOVE                             R6 R0
       60 GETIMPORT                        R4 K13 [table.insert]
       62 CALL                             R4 2 0
       63 RETURN                           R0 0

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
       11 GETTABLEKS                       R3 R1 K6 ["Flags"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Components"]
       18 GETTABLEKS                       R4 R4 K8 ["ContentWidgets"]
       20 GETTABLEKS                       R4 R4 K9 ["GenericToolContentWidget"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K12 [table.freeze]
       25 DUPTABLE                         R5 K15 [{["Hardcoded"] = "Hardcoded", ["FString"] = "FString"}]
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R4 R0 K16 ["MappingSource"]
       29 LOADK                            R4 K17 ["none"]
       30 SETTABLEKS                       R4 R0 K18 ["None"]
       32 NEWTABLE                         R4 0 0
       34 NEWTABLE                         R5 0 0
       36 NEWTABLE                         R6 0 0
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R2
       41 CAPTURE                          REF R4
       42 CAPTURE                          REF R6
       43 CAPTURE                          VAL R0
       44 CAPTURE                          REF R5
       45 SETTABLEKS                       R7 R0 K19 ["add"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          REF R4
       49 SETTABLEKS                       R7 R0 K20 ["get"]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          REF R5
       53 SETTABLEKS                       R7 R0 K21 ["_getToolsForWidgetType"]
       55 NEWCLOSURE                       R7 P3
       56 CAPTURE                          REF R6
       57 SETTABLEKS                       R7 R0 K22 ["_getMappingSource"]
       59 NEWCLOSURE                       R7 P4
       60 CAPTURE                          REF R4
       61 SETTABLEKS                       R7 R0 K23 ["_getAllToolNames"]
       63 NEWCLOSURE                       R7 P5
       64 CAPTURE                          REF R4
       65 CAPTURE                          REF R5
       66 CAPTURE                          REF R6
       67 SETTABLEKS                       R7 R0 K24 ["clear"]
       69 CLOSEUPVALS                      R4
       70 RETURN                           R0 1

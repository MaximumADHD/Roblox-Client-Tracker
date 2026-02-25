PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["users"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["users"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["users"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+13]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R0 R1 K3 ["deregisterSerializer"]
       21 GETUPVAL                         R1 2
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["MISSING_CONTENT_WIDGET"]
        5 JUMPIFNOTEQ                      R1 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R5 K2 ["Cannot register widget with reserved type: "]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K1 ["MISSING_CONTENT_WIDGET"]
       13 CONCAT                           R4 R5 R6
       14 FASTCALL2                        ASSERT R3 R4 ; [+3]
       16 GETIMPORT                        R2 K4 [assert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R3 1
       20 GETTABLE                         R2 R3 R1
       21 JUMPIFNOT                        R2 ; [+17]
       22 GETTABLEKS                       R5 R2 K5 ["component"]
       24 GETTABLEKS                       R6 R0 K6 ["ContentWidget"]
       26 JUMPIFEQ                         R5 R6 ; [+2]
       28 LOADB                            R4 0 +1
       29 LOADB                            R4 1
       30 LOADK                            R6 K7 ["Content widget already registered: "]
       31 MOVE                             R7 R1
       32 CONCAT                           R5 R6 R7
       33 FASTCALL2                        ASSERT R4 R5 ; [+3]
       35 GETIMPORT                        R3 K4 [assert]
       37 CALL                             R3 2 0
       38 JUMP                             ; [+24]
       39 DUPTABLE                         R3 K9 [{"component", "users"}]
       40 GETTABLEKS                       R4 R0 K6 ["ContentWidget"]
       42 SETTABLEKS                       R4 R3 K5 ["component"]
       44 LOADN                            R4 0
       45 SETTABLEKS                       R4 R3 K8 ["users"]
       47 MOVE                             R2 R3
       48 GETUPVAL                         R3 1
       49 SETTABLE                         R2 R3 R1
       50 GETUPVAL                         R3 2
       51 CALL                             R3 0 1
       52 JUMPIFNOT                        R3 ; [+10]
       53 GETTABLEKS                       R3 R0 K10 ["Serialization"]
       55 JUMPIFNOT                        R3 ; [+7]
       56 GETUPVAL                         R4 3
       57 GETTABLEKS                       R3 R4 K11 ["registerSerializer"]
       59 MOVE                             R4 R1
       60 GETTABLEKS                       R5 R0 K10 ["Serialization"]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R3 R2 K8 ["users"]
       65 ADDK                             R3 R3 K12 [1]
       66 SETTABLEKS                       R3 R2 K8 ["users"]
       68 NEWCLOSURE                       R3 P0
       69 CAPTURE                          REF R2
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U3
       74 CLOSEUPVALS                      R2
       75 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["registerWidget_DEPRECATED should not be used when FFlagAssistantRegisterWidgetsThroughTools is enabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R5 1
       10 GETTABLE                         R4 R5 R0
       11 NOT                              R3 R4
       12 LOADK                            R5 K3 ["Content widget already registered: "]
       13 MOVE                             R6 R0
       14 CONCAT                           R4 R5 R6
       15 FASTCALL2                        ASSERT R3 R4 ; [+3]
       17 GETIMPORT                        R2 K2 [assert]
       19 CALL                             R2 2 0
       20 GETUPVAL                         R2 1
       21 SETTABLE                         R1 R2 R0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["registerWidgetList should only be called when FFlagAssistantRegisterWidgetsThroughTools is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETIMPORT                        R1 K5 [table.create]
       10 LENGTH                           R2 R0
       11 CALL                             R1 1 1
       12 MOVE                             R2 R0
       13 LOADNIL                          R3
       14 LOADNIL                          R4
       15 FORGPREP                         R2
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R7 R8 K6 ["registerWidget"]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K8 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 2 ; [-13]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R1
       32 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["registerDefaultWidgets should only be called when FFlagAssistantRegisterWidgetsThroughTools is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETIMPORT                        R0 K4 [require]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K5 ["Components"]
       13 GETTABLEKS                       R2 R3 K6 ["ContentWidgets"]
       15 GETTABLEKS                       R1 R2 K7 ["TextContentWidget"]
       17 CALL                             R0 1 1
       18 GETIMPORT                        R1 K4 [require]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K5 ["Components"]
       23 GETTABLEKS                       R3 R4 K6 ["ContentWidgets"]
       25 GETTABLEKS                       R2 R3 K8 ["ThinkingContentWidget"]
       27 CALL                             R1 1 1
       28 GETIMPORT                        R2 K4 [require]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R5 R6 K5 ["Components"]
       33 GETTABLEKS                       R4 R5 K6 ["ContentWidgets"]
       35 GETTABLEKS                       R3 R4 K9 ["ToolConfirmationContentWidget"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K4 [require]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K5 ["Components"]
       43 GETTABLEKS                       R5 R6 K6 ["ContentWidgets"]
       45 GETTABLEKS                       R4 R5 K10 ["ErrorContentWidget"]
       47 CALL                             R3 1 1
       48 GETIMPORT                        R4 K4 [require]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K5 ["Components"]
       53 GETTABLEKS                       R6 R7 K6 ["ContentWidgets"]
       55 GETTABLEKS                       R5 R6 K11 ["GenericToolContentWidget"]
       57 CALL                             R4 1 1
       58 GETIMPORT                        R5 K4 [require]
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R8 R9 K5 ["Components"]
       63 GETTABLEKS                       R7 R8 K6 ["ContentWidgets"]
       65 GETTABLEKS                       R6 R7 K12 ["ImageContentWidget"]
       67 CALL                             R5 1 1
       68 NEWTABLE                         R6 0 6
       70 MOVE                             R7 R3
       71 MOVE                             R8 R4
       72 MOVE                             R9 R5
       73 MOVE                             R10 R0
       74 MOVE                             R11 R1
       75 MOVE                             R12 R2
       76 SETLIST                          R6 R7 6 [1]
       78 GETUPVAL                         R8 2
       79 GETTABLEKS                       R7 R8 K13 ["registerWidgetList"]
       81 MOVE                             R8 R6
       82 CALL                             R7 1 -1
       83 RETURN                           R7 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R1 K0 ["component"]
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R2 R1 K0 ["component"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K1 ["ContentWidget"]
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 1
       17 GETTABLE                         R1 R2 R0
       18 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["clear should only be called when FFlagAssistantRegisterWidgetsThroughTools is enabled"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 NEWTABLE                         R0 0 0
       10 SETUPVAL                         R0 1
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R5 R1 K6 ["Components"]
       13 GETTABLEKS                       R4 R5 K7 ["ContentWidgets"]
       15 GETTABLEKS                       R3 R4 K8 ["MissingContentWidget"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R1 K9 ["Parent"]
       22 GETTABLEKS                       R4 R5 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R1 K11 ["Util"]
       29 GETTABLEKS                       R6 R7 K12 ["Serializer"]
       31 GETTABLEKS                       R5 R6 K13 ["SerializerRegistry"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R7 R1 K14 ["Flags"]
       38 GETTABLEKS                       R6 R7 K15 ["FFlagAssistantPersistConversations"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R1 K14 ["Flags"]
       45 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantRegisterWidgetsThroughTools"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 0 0
       50 LOADK                            R8 K17 ["MISSING"]
       51 SETTABLEKS                       R8 R0 K18 ["MISSING_CONTENT_WIDGET"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          VAL R0
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R8 R0 K19 ["registerWidget"]
       60 NEWCLOSURE                       R8 P1
       61 CAPTURE                          VAL R6
       62 CAPTURE                          REF R7
       63 SETTABLEKS                       R8 R0 K20 ["registerWidget_DEPRECATED"]
       65 DUPCLOSURE                       R8 K21 [PROTO_4]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R0
       68 SETTABLEKS                       R8 R0 K22 ["registerWidgetList"]
       70 DUPCLOSURE                       R8 K23 [PROTO_5]
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R8 R0 K24 ["registerDefaultWidgets"]
       76 NEWCLOSURE                       R8 P4
       77 CAPTURE                          VAL R6
       78 CAPTURE                          REF R7
       79 CAPTURE                          VAL R2
       80 SETTABLEKS                       R8 R0 K25 ["get"]
       82 NEWCLOSURE                       R8 P5
       83 CAPTURE                          VAL R6
       84 CAPTURE                          REF R7
       85 SETTABLEKS                       R8 R0 K26 ["clear"]
       87 CLOSEUPVALS                      R7
       88 RETURN                           R0 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["users"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["users"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["users"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+5]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+39]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+15]
        6 GETTABLEKS                       R5 R2 K0 ["component"]
        8 JUMPIFEQ                         R5 R1 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 LOADK                            R6 K1 ["Content widget already registered: "]
       13 MOVE                             R7 R0
       14 CONCAT                           R5 R6 R7
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 JUMP                             ; [+9]
       21 DUPTABLE                         R3 K5 [{"component", "users"}]
       22 SETTABLEKS                       R1 R3 K0 ["component"]
       24 LOADN                            R4 0
       25 SETTABLEKS                       R4 R3 K4 ["users"]
       27 MOVE                             R2 R3
       28 GETUPVAL                         R3 1
       29 SETTABLE                         R2 R3 R0
       30 GETTABLEKS                       R3 R2 K4 ["users"]
       32 ADDK                             R3 R3 K6 [1]
       33 SETTABLEKS                       R3 R2 K4 ["users"]
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          REF R2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 CLOSEUPVALS                      R2
       40 RETURN                           R3 1
       41 CLOSEUPVALS                      R2
       42 GETUPVAL                         R5 1
       43 GETTABLE                         R4 R5 R0
       44 NOT                              R3 R4
       45 LOADK                            R5 K1 ["Content widget already registered: "]
       46 MOVE                             R6 R0
       47 CONCAT                           R4 R5 R6
       48 FASTCALL2                        ASSERT R3 R4 ; [+3]
       50 GETIMPORT                        R2 K3 [assert]
       52 CALL                             R2 2 0
       53 GETUPVAL                         R2 1
       54 SETTABLE                         R1 R2 R0
       55 LOADNIL                          R2
       56 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_3:
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
       19 GETTABLEKS                       R8 R6 K7 ["Type"]
       21 GETTABLEKS                       R9 R6 K8 ["ContentWidget"]
       23 CALL                             R7 2 1
       24 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       26 MOVE                             R9 R1
       27 MOVE                             R10 R7
       28 GETIMPORT                        R8 K10 [table.insert]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R2 2 ; [-16]
       33 NEWCLOSURE                       R2 P0
       34 CAPTURE                          VAL R1
       35 RETURN                           R2 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       27 GETTABLEKS                       R6 R1 K11 ["Flags"]
       29 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantRegisterWidgetsThroughTools"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 0 0
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          REF R5
       37 SETTABLEKS                       R6 R0 K13 ["registerWidget"]
       39 DUPCLOSURE                       R6 K14 [PROTO_3]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R6 R0 K15 ["registerWidgetList"]
       44 DUPCLOSURE                       R6 K16 [PROTO_4]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R6 R0 K17 ["registerDefaultWidgets"]
       50 NEWCLOSURE                       R6 P3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          REF R5
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R6 R0 K18 ["get"]
       56 NEWCLOSURE                       R6 P4
       57 CAPTURE                          VAL R4
       58 CAPTURE                          REF R5
       59 SETTABLEKS                       R6 R0 K19 ["clear"]
       61 CLOSEUPVALS                      R5
       62 RETURN                           R0 1

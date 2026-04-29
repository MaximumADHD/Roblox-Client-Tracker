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
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K3 ["registerWidget"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K5 [table.insert]
       19 CALL                             R8 2 0
       20 FORGLOOP                         R2 2 ; [-13]
       22 NEWCLOSURE                       R2 P0
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 0 8
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETUPVAL                         R6 5
        8 GETUPVAL                         R7 6
        9 GETUPVAL                         R8 7
       10 SETLIST                          R0 R1 8 [1]
       12 GETUPVAL                         R2 8
       13 GETTABLEKS                       R1 R2 K0 ["registerWidgetList"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R2 R1 K0 ["component"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R1 K0 ["component"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K1 ["ContentWidget"]
       12 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R4 K8 ["ErrorContentWidget"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R1 K6 ["Components"]
       22 GETTABLEKS                       R5 R6 K7 ["ContentWidgets"]
       24 GETTABLEKS                       R4 R5 K9 ["GenericToolContentWidget"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Components"]
       31 GETTABLEKS                       R6 R7 K7 ["ContentWidgets"]
       33 GETTABLEKS                       R5 R6 K10 ["ImageContentWidget"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R1 K6 ["Components"]
       40 GETTABLEKS                       R7 R8 K7 ["ContentWidgets"]
       42 GETTABLEKS                       R6 R7 K11 ["InputRequestedContentWidget"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R1 K6 ["Components"]
       49 GETTABLEKS                       R8 R9 K7 ["ContentWidgets"]
       51 GETTABLEKS                       R7 R8 K12 ["MissingContentWidget"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R9 R1 K13 ["Parent"]
       58 GETTABLEKS                       R8 R9 K14 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R11 R1 K6 ["Components"]
       65 GETTABLEKS                       R10 R11 K7 ["ContentWidgets"]
       67 GETTABLEKS                       R9 R10 K15 ["ScriptChangeConfirmationContentWidget"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R12 R1 K16 ["Util"]
       74 GETTABLEKS                       R11 R12 K17 ["Serializer"]
       76 GETTABLEKS                       R10 R11 K18 ["SerializerRegistry"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R13 R1 K6 ["Components"]
       83 GETTABLEKS                       R12 R13 K7 ["ContentWidgets"]
       85 GETTABLEKS                       R11 R12 K19 ["TextContentWidget"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R14 R1 K6 ["Components"]
       92 GETTABLEKS                       R13 R14 K7 ["ContentWidgets"]
       94 GETTABLEKS                       R12 R13 K20 ["ThinkingContentWidget"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R15 R1 K6 ["Components"]
      101 GETTABLEKS                       R14 R15 K7 ["ContentWidgets"]
      103 GETTABLEKS                       R13 R14 K21 ["ToolConfirmationContentWidget"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R15 R1 K22 ["Flags"]
      110 GETTABLEKS                       R14 R15 K23 ["FFlagAssistantMultipleChatPersistence"]
      112 CALL                             R13 1 1
      113 NEWTABLE                         R14 0 0
      115 LOADK                            R15 K24 ["MISSING"]
      116 SETTABLEKS                       R15 R0 K25 ["MISSING_CONTENT_WIDGET"]
      118 NEWCLOSURE                       R15 P0
      119 CAPTURE                          VAL R0
      120 CAPTURE                          REF R14
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R9
      123 SETTABLEKS                       R15 R0 K26 ["registerWidget"]
      125 DUPCLOSURE                       R15 K27 [PROTO_3]
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R15 R0 K28 ["registerWidgetList"]
      129 DUPCLOSURE                       R15 K29 [PROTO_4]
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R0
      139 SETTABLEKS                       R15 R0 K30 ["registerDefaultWidgets"]
      141 NEWCLOSURE                       R15 P3
      142 CAPTURE                          REF R14
      143 CAPTURE                          VAL R6
      144 SETTABLEKS                       R15 R0 K31 ["get"]
      146 NEWCLOSURE                       R15 P4
      147 CAPTURE                          REF R14
      148 SETTABLEKS                       R15 R0 K32 ["clear"]
      150 CLOSEUPVALS                      R14
      151 RETURN                           R0 1

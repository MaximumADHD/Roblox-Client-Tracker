PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["users"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["users"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["users"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+13]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+5]
       18 GETUPVAL                         R0 4
       19 GETTABLEKS                       R0 R0 K3 ["deregisterSerializer"]
       21 GETUPVAL                         R1 2
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["MISSING_CONTENT_WIDGET"]
        5 JUMPIFNOTEQ                      R1 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 LOADK                            R5 K2 ["Cannot register widget with reserved type: "]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K1 ["MISSING_CONTENT_WIDGET"]
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
       38 JUMP                             ; [+37]
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
       52 JUMPIFNOT                        R3 ; [+23]
       53 GETTABLEKS                       R3 R0 K10 ["Serialization"]
       55 JUMPIFNOT                        R3 ; [+8]
       56 GETUPVAL                         R3 3
       57 GETTABLEKS                       R3 R3 K11 ["registerSerializer"]
       59 MOVE                             R4 R1
       60 GETTABLEKS                       R5 R0 K10 ["Serialization"]
       62 CALL                             R3 2 0
       63 JUMP                             ; [+12]
       64 GETUPVAL                         R3 4
       65 CALL                             R3 0 1
       66 JUMPIFNOT                        R3 ; [+9]
       67 GETIMPORT                        R3 K13 [warn]
       69 LOADK                            R5 K14 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       70 MOVE                             R7 R1
       71 NAMECALL                         R5 R5 K15 ["format"]
       73 CALL                             R5 2 1
       74 MOVE                             R4 R5
       75 CALL                             R3 1 0
       76 GETTABLEKS                       R3 R2 K8 ["users"]
       78 ADDK                             R3 R3 K16 [1]
       79 SETTABLEKS                       R3 R2 K8 ["users"]
       81 NEWCLOSURE                       R3 P0
       82 CAPTURE                          REF R2
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U3
       87 CLOSEUPVALS                      R2
       88 RETURN                           R3 1

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
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R7 R7 K3 ["registerWidget"]
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
       12 GETUPVAL                         R1 8
       13 GETTABLEKS                       R1 R1 K0 ["registerWidgetList"]
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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["ContentWidget"]
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
       11 GETTABLEKS                       R3 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["React"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Util"]
       20 GETTABLEKS                       R4 R4 K9 ["Serializer"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Util"]
       27 GETTABLEKS                       R5 R5 K9 ["Serializer"]
       29 GETTABLEKS                       R5 R5 K10 ["SerializerTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K11 ["Components"]
       36 GETTABLEKS                       R6 R6 K12 ["ContentWidgets"]
       38 GETTABLEKS                       R6 R6 K13 ["ErrorContentWidget"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K11 ["Components"]
       45 GETTABLEKS                       R7 R7 K12 ["ContentWidgets"]
       47 GETTABLEKS                       R7 R7 K14 ["GenericToolContentWidget"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R1 K11 ["Components"]
       54 GETTABLEKS                       R8 R8 K12 ["ContentWidgets"]
       56 GETTABLEKS                       R8 R8 K15 ["ImageContentWidget"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R1 K11 ["Components"]
       63 GETTABLEKS                       R9 R9 K12 ["ContentWidgets"]
       65 GETTABLEKS                       R9 R9 K16 ["InputRequestedContentWidget"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R1 K11 ["Components"]
       72 GETTABLEKS                       R10 R10 K12 ["ContentWidgets"]
       74 GETTABLEKS                       R10 R10 K17 ["MissingContentWidget"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R11 R1 K11 ["Components"]
       81 GETTABLEKS                       R11 R11 K12 ["ContentWidgets"]
       83 GETTABLEKS                       R11 R11 K18 ["ScriptChangeConfirmationContentWidget"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R12 R1 K11 ["Components"]
       90 GETTABLEKS                       R12 R12 K12 ["ContentWidgets"]
       92 GETTABLEKS                       R12 R12 K19 ["TextContentWidget"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R13 R1 K11 ["Components"]
       99 GETTABLEKS                       R13 R13 K12 ["ContentWidgets"]
      101 GETTABLEKS                       R13 R13 K20 ["ThinkingContentWidget"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K5 [require]
      106 GETTABLEKS                       R14 R1 K11 ["Components"]
      108 GETTABLEKS                       R14 R14 K12 ["ContentWidgets"]
      110 GETTABLEKS                       R14 R14 K21 ["ToolConfirmationContentWidget"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K5 [require]
      115 GETTABLEKS                       R15 R1 K22 ["Flags"]
      117 GETTABLEKS                       R15 R15 K23 ["FFlagAssistantMultipleChatPersistence"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K5 [require]
      122 GETTABLEKS                       R16 R1 K22 ["Flags"]
      124 GETTABLEKS                       R16 R16 K24 ["FFlagDebugLogAssistantUI"]
      126 CALL                             R15 1 1
      127 NEWTABLE                         R16 0 0
      129 LOADK                            R17 K25 ["MISSING"]
      130 SETTABLEKS                       R17 R0 K26 ["MISSING_CONTENT_WIDGET"]
      132 NEWCLOSURE                       R17 P0
      133 CAPTURE                          VAL R0
      134 CAPTURE                          REF R16
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R15
      138 SETTABLEKS                       R17 R0 K27 ["registerWidget"]
      140 DUPCLOSURE                       R17 K28 [PROTO_3]
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R17 R0 K29 ["registerWidgetList"]
      144 DUPCLOSURE                       R17 K30 [PROTO_4]
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R13
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R0
      154 SETTABLEKS                       R17 R0 K31 ["registerDefaultWidgets"]
      156 NEWCLOSURE                       R17 P3
      157 CAPTURE                          REF R16
      158 CAPTURE                          VAL R9
      159 SETTABLEKS                       R17 R0 K32 ["get"]
      161 NEWCLOSURE                       R17 P4
      162 CAPTURE                          REF R16
      163 SETTABLEKS                       R17 R0 K33 ["clear"]
      165 CLOSEUPVALS                      R16
      166 RETURN                           R0 1

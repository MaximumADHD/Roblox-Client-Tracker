PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["users"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["users"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["users"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+10]
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R1 2
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R0 R1
       15 GETUPVAL                         R0 3
       16 GETTABLEKS                       R0 R0 K3 ["deregisterSerializer"]
       18 GETUPVAL                         R1 2
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

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
       38 JUMP                             ; [+31]
       39 DUPTABLE                         R3 K10 [{["component"], ["users"] = 0}]
       40 GETTABLEKS                       R4 R0 K6 ["ContentWidget"]
       42 SETTABLEKS                       R4 R3 K5 ["component"]
       44 MOVE                             R2 R3
       45 GETUPVAL                         R3 1
       46 SETTABLE                         R2 R3 R1
       47 GETTABLEKS                       R3 R0 K11 ["Serialization"]
       49 JUMPIFNOT                        R3 ; [+8]
       50 GETUPVAL                         R3 2
       51 GETTABLEKS                       R3 R3 K12 ["registerSerializer"]
       53 MOVE                             R4 R1
       54 GETTABLEKS                       R5 R0 K11 ["Serialization"]
       56 CALL                             R3 2 0
       57 JUMP                             ; [+12]
       58 GETUPVAL                         R3 3
       59 CALL                             R3 0 1
       60 JUMPIFNOT                        R3 ; [+9]
       61 GETIMPORT                        R3 K14 [warn]
       63 LOADK                            R5 K15 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       64 MOVE                             R7 R1
       65 NAMECALL                         R5 R5 K16 ["format"]
       67 CALL                             R5 2 1
       68 MOVE                             R4 R5
       69 CALL                             R3 1 0
       70 GETTABLEKS                       R3 R2 K8 ["users"]
       72 ADDK                             R3 R3 K17 [1]
       73 SETTABLEKS                       R3 R2 K8 ["users"]
       75 NEWCLOSURE                       R3 P0
       76 CAPTURE                          REF R2
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R1
       79 CAPTURE                          UPVAL U2
       80 CLOSEUPVALS                      R2
       81 RETURN                           R3 1

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
      117 GETTABLEKS                       R15 R15 K23 ["FFlagDebugLogAssistantUI"]
      119 CALL                             R14 1 1
      120 NEWTABLE                         R15 0 0
      122 LOADK                            R16 K24 ["MISSING"]
      123 SETTABLEKS                       R16 R0 K25 ["MISSING_CONTENT_WIDGET"]
      125 NEWCLOSURE                       R16 P0
      126 CAPTURE                          VAL R0
      127 CAPTURE                          REF R15
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R14
      130 SETTABLEKS                       R16 R0 K26 ["registerWidget"]
      132 DUPCLOSURE                       R16 K27 [PROTO_3]
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R16 R0 K28 ["registerWidgetList"]
      136 DUPCLOSURE                       R16 K29 [PROTO_4]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R16 R0 K30 ["registerDefaultWidgets"]
      148 NEWCLOSURE                       R16 P3
      149 CAPTURE                          REF R15
      150 CAPTURE                          VAL R9
      151 SETTABLEKS                       R16 R0 K31 ["get"]
      153 NEWCLOSURE                       R16 P4
      154 CAPTURE                          REF R15
      155 SETTABLEKS                       R16 R0 K32 ["clear"]
      157 CLOSEUPVALS                      R15
      158 RETURN                           R0 1

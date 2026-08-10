PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Type"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETTABLEKS                       R5 R0 K1 ["ContentWidget"]
        7 JUMPIFEQ                         R2 R5 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 LOADK                            R6 K2 ["Content widget already registered: "]
       12 MOVE                             R7 R1
       13 CONCAT                           R5 R6 R7
       14 FASTCALL2                        ASSERT R4 R5 ; [+3]
       16 GETIMPORT                        R3 K4 [assert]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K1 ["ContentWidget"]
       23 SETTABLE                         R4 R3 R1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantSplitToolsAndWidgets"]
       27 JUMPIFNOT                        R3 ; [+13]
       28 GETTABLEKS                       R3 R0 K6 ["StreamToolUse"]
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETUPVAL                         R3 2
       32 LOADB                            R4 1
       33 SETTABLE                         R4 R3 R1
       34 GETTABLEKS                       R3 R0 K7 ["AutoExpand"]
       36 JUMPIFNOT                        R3 ; [+4]
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R4 R0 K7 ["AutoExpand"]
       40 SETTABLE                         R4 R3 R1
       41 GETUPVAL                         R3 1
       42 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantSplitToolsAndWidgets"]
       44 JUMPIFNOT                        R3 ; [+8]
       45 GETUPVAL                         R3 4
       46 GETTABLEKS                       R3 R3 K8 ["registerSerializer"]
       48 MOVE                             R4 R1
       49 GETTABLEKS                       R5 R0 K9 ["Serialization"]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R3 R0 K9 ["Serialization"]
       55 JUMPIFNOT                        R3 ; [+8]
       56 GETUPVAL                         R3 4
       57 GETTABLEKS                       R3 R3 K8 ["registerSerializer"]
       59 MOVE                             R4 R1
       60 GETTABLEKS                       R5 R0 K9 ["Serialization"]
       62 CALL                             R3 2 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K10 ["FFlagDebugLogAssistantUI"]
       67 JUMPIFNOT                        R3 ; [+9]
       68 GETIMPORT                        R3 K12 [warn]
       70 LOADK                            R5 K13 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       71 MOVE                             R7 R1
       72 NAMECALL                         R5 R5 K14 ["format"]
       74 CALL                             R5 2 1
       75 MOVE                             R4 R5
       76 CALL                             R3 1 0
       77 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["ContentWidget"]
        7 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["needsStreamingToolUse should only be called when FFlagAssistantSplitToolsAndWidgets is enabled"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLE                         R2 R3 R0
       11 JUMPIFEQKB                       R2 TRUE ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["getAutoExpand should only be called when FFlagAssistantSplitToolsAndWidgets is enabled"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["deregisterSerializer"]
        7 MOVE                             R6 R3
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-6]
       11 NEWTABLE                         R0 0 0
       13 SETUPVAL                         R0 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K1 ["FFlagAssistantSplitToolsAndWidgets"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 NEWTABLE                         R0 0 0
       20 SETUPVAL                         R0 3
       21 NEWTABLE                         R0 0 0
       23 SETUPVAL                         R0 4
       24 RETURN                           R0 0

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
       20 GETTABLEKS                       R4 R4 K9 ["MissingContentWidget"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K10 ["Parent"]
       27 GETTABLEKS                       R5 R5 K11 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R1 K12 ["Util"]
       34 GETTABLEKS                       R6 R6 K13 ["Serializer"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R1 K12 ["Util"]
       41 GETTABLEKS                       R7 R7 K13 ["Serializer"]
       43 GETTABLEKS                       R7 R7 K14 ["SerializerTypes"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 0 0
       48 NEWTABLE                         R8 0 0
       50 NEWTABLE                         R9 0 0
       52 NEWCLOSURE                       R10 P0
       53 CAPTURE                          REF R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          REF R8
       56 CAPTURE                          REF R9
       57 CAPTURE                          VAL R5
       58 SETTABLEKS                       R10 R0 K15 ["add"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          REF R7
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R10 R0 K16 ["get"]
       65 NEWCLOSURE                       R10 P2
       66 CAPTURE                          VAL R2
       67 CAPTURE                          REF R8
       68 SETTABLEKS                       R10 R0 K17 ["needsStreamingToolUse"]
       70 NEWCLOSURE                       R10 P3
       71 CAPTURE                          VAL R2
       72 CAPTURE                          REF R9
       73 SETTABLEKS                       R10 R0 K18 ["getAutoExpand"]
       75 NEWCLOSURE                       R10 P4
       76 CAPTURE                          REF R7
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R2
       79 CAPTURE                          REF R8
       80 CAPTURE                          REF R9
       81 SETTABLEKS                       R10 R0 K19 ["clear"]
       83 CLOSEUPVALS                      R7
       84 RETURN                           R0 1

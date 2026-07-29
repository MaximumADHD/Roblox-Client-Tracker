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
       27 JUMPIFNOT                        R3 ; [+6]
       28 GETTABLEKS                       R3 R0 K6 ["StreamToolUse"]
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETUPVAL                         R3 2
       32 LOADB                            R4 1
       33 SETTABLE                         R4 R3 R1
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K5 ["FFlagAssistantSplitToolsAndWidgets"]
       37 JUMPIFNOT                        R3 ; [+8]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K7 ["registerSerializer"]
       41 MOVE                             R4 R1
       42 GETTABLEKS                       R5 R0 K8 ["Serialization"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0
       46 GETTABLEKS                       R3 R0 K8 ["Serialization"]
       48 JUMPIFNOT                        R3 ; [+8]
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R3 R3 K7 ["registerSerializer"]
       52 MOVE                             R4 R1
       53 GETTABLEKS                       R5 R0 K8 ["Serialization"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K9 ["FFlagDebugLogAssistantUI"]
       60 JUMPIFNOT                        R3 ; [+9]
       61 GETIMPORT                        R3 K11 [warn]
       63 LOADK                            R5 K12 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       64 MOVE                             R7 R1
       65 NAMECALL                         R5 R5 K13 ["format"]
       67 CALL                             R5 2 1
       68 MOVE                             R4 R5
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

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
       17 JUMPIFNOT                        R0 ; [+3]
       18 NEWTABLE                         R0 0 0
       20 SETUPVAL                         R0 3
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
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
       50 NEWCLOSURE                       R9 P0
       51 CAPTURE                          REF R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R5
       55 SETTABLEKS                       R9 R0 K15 ["add"]
       57 NEWCLOSURE                       R9 P1
       58 CAPTURE                          REF R7
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R9 R0 K16 ["get"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R8
       65 SETTABLEKS                       R9 R0 K17 ["needsStreamingToolUse"]
       67 NEWCLOSURE                       R9 P3
       68 CAPTURE                          REF R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R2
       71 CAPTURE                          REF R8
       72 SETTABLEKS                       R9 R0 K18 ["clear"]
       74 CLOSEUPVALS                      R7
       75 RETURN                           R0 1

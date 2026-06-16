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
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+34]
       27 GETUPVAL                         R3 2
       28 CALL                             R3 0 1
       29 JUMPIFNOT                        R3 ; [+8]
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K5 ["registerSerializer"]
       33 MOVE                             R4 R1
       34 GETTABLEKS                       R5 R0 K6 ["Serialization"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R3 R0 K6 ["Serialization"]
       40 JUMPIFNOT                        R3 ; [+8]
       41 GETUPVAL                         R3 3
       42 GETTABLEKS                       R3 R3 K5 ["registerSerializer"]
       44 MOVE                             R4 R1
       45 GETTABLEKS                       R5 R0 K6 ["Serialization"]
       47 CALL                             R3 2 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R3 4
       50 CALL                             R3 0 1
       51 JUMPIFNOT                        R3 ; [+9]
       52 GETIMPORT                        R3 K8 [warn]
       54 LOADK                            R5 K9 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       55 MOVE                             R7 R1
       56 NAMECALL                         R5 R5 K10 ["format"]
       58 CALL                             R5 2 1
       59 MOVE                             R4 R5
       60 CALL                             R3 1 0
       61 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["ContentWidget"]
        7 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+11]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 LOADNIL                          R2
        6 FORGPREP                         R0
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R5 R5 K0 ["deregisterSerializer"]
       10 MOVE                             R6 R3
       11 CALL                             R5 1 0
       12 FORGLOOP                         R0 2 ; [-6]
       14 NEWTABLE                         R0 0 0
       16 SETUPVAL                         R0 1
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
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
       38 GETTABLEKS                       R6 R6 K13 ["MissingContentWidget"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R1 K14 ["Flags"]
       45 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantMultipleChatPersistence"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K14 ["Flags"]
       52 GETTABLEKS                       R8 R8 K16 ["FFlagAssistantSplitToolsAndWidgets"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K5 [require]
       57 GETTABLEKS                       R9 R1 K14 ["Flags"]
       59 GETTABLEKS                       R9 R9 K17 ["FFlagDebugLogAssistantUI"]
       61 CALL                             R8 1 1
       62 NEWTABLE                         R9 0 0
       64 NEWCLOSURE                       R10 P0
       65 CAPTURE                          REF R9
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R10 R0 K18 ["add"]
       72 NEWCLOSURE                       R10 P1
       73 CAPTURE                          REF R9
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R10 R0 K19 ["get"]
       77 NEWCLOSURE                       R10 P2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          REF R9
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R10 R0 K20 ["clear"]
       83 CLOSEUPVALS                      R9
       84 RETURN                           R0 1

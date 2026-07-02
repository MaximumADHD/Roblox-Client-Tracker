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
       26 JUMPIFNOT                        R3 ; [+8]
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K5 ["registerSerializer"]
       30 MOVE                             R4 R1
       31 GETTABLEKS                       R5 R0 K6 ["Serialization"]
       33 CALL                             R3 2 0
       34 RETURN                           R0 0
       35 GETTABLEKS                       R3 R0 K6 ["Serialization"]
       37 JUMPIFNOT                        R3 ; [+8]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K5 ["registerSerializer"]
       41 MOVE                             R4 R1
       42 GETTABLEKS                       R5 R0 K6 ["Serialization"]
       44 CALL                             R3 2 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R3 3
       47 CALL                             R3 0 1
       48 JUMPIFNOT                        R3 ; [+9]
       49 GETIMPORT                        R3 K8 [warn]
       51 LOADK                            R5 K9 ["Content widget %* does not have a serializer registered. This may cause issues with chat persistence."]
       52 MOVE                             R7 R1
       53 NAMECALL                         R5 R5 K10 ["format"]
       55 CALL                             R5 2 1
       56 MOVE                             R4 R5
       57 CALL                             R3 1 0
       58 RETURN                           R0 0

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
       14 RETURN                           R0 0

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
       45 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantSplitToolsAndWidgets"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R1 K14 ["Flags"]
       52 GETTABLEKS                       R8 R8 K16 ["FFlagDebugLogAssistantUI"]
       54 CALL                             R7 1 1
       55 NEWTABLE                         R8 0 0
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R9 R0 K17 ["add"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          REF R8
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R9 R0 K18 ["get"]
       69 NEWCLOSURE                       R9 P2
       70 CAPTURE                          REF R8
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R9 R0 K19 ["clear"]
       74 CLOSEUPVALS                      R8
       75 RETURN                           R0 1

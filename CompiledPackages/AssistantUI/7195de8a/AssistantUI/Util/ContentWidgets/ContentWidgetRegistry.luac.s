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
       24 GETTABLEKS                       R3 R0 K5 ["StreamToolUse"]
       26 JUMPIFNOT                        R3 ; [+3]
       27 GETUPVAL                         R3 1
       28 LOADB                            R4 1
       29 SETTABLE                         R4 R3 R1
       30 GETTABLEKS                       R3 R0 K6 ["AutoExpand"]
       32 JUMPIFNOT                        R3 ; [+4]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R4 R0 K6 ["AutoExpand"]
       36 SETTABLE                         R4 R3 R1
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K7 ["registerSerializer"]
       40 MOVE                             R4 R1
       41 GETTABLEKS                       R5 R0 K8 ["Serialization"]
       43 CALL                             R3 2 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["ContentWidget"]
        7 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKB                       R2 TRUE ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

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
       14 NEWTABLE                         R0 0 0
       16 SETUPVAL                         R0 2
       17 NEWTABLE                         R0 0 0
       19 SETUPVAL                         R0 3
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Components"]
       13 GETTABLEKS                       R3 R3 K7 ["ContentWidgets"]
       15 GETTABLEKS                       R3 R3 K8 ["MissingContentWidget"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K9 ["Parent"]
       22 GETTABLEKS                       R4 R4 K10 ["React"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["Serializer"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 0 0
       34 NEWTABLE                         R6 0 0
       36 NEWTABLE                         R7 0 0
       38 NEWCLOSURE                       R8 P0
       39 CAPTURE                          REF R5
       40 CAPTURE                          REF R6
       41 CAPTURE                          REF R7
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R8 R0 K13 ["add"]
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          REF R5
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R0 K14 ["get"]
       50 NEWCLOSURE                       R8 P2
       51 CAPTURE                          REF R6
       52 SETTABLEKS                       R8 R0 K15 ["needsStreamingToolUse"]
       54 NEWCLOSURE                       R8 P3
       55 CAPTURE                          REF R7
       56 SETTABLEKS                       R8 R0 K16 ["getAutoExpand"]
       58 NEWCLOSURE                       R8 P4
       59 CAPTURE                          REF R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          REF R6
       62 CAPTURE                          REF R7
       63 SETTABLEKS                       R8 R0 K17 ["clear"]
       65 CLOSEUPVALS                      R5
       66 RETURN                           R0 1

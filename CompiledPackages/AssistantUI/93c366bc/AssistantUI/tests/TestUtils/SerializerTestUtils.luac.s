PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["serializeConversation"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R0 K1 ["threads"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K2 ["messages"]
       14 JUMPIFNOT                        R8 ; [+6]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K3 ["serializeMessages"]
       18 MOVE                             R10 R8
       19 CALL                             R9 1 1
       20 SETTABLE                         R9 R1 R6
       21 FORGLOOP                         R3 2 ; [-10]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K4 ["deserializeConversation"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 MOVE                             R3 R1
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R8 R9 K5 ["deserializeMessages"]
       35 MOVE                             R9 R6
       36 MOVE                             R10 R7
       37 CALL                             R8 2 1
       38 GETUPVAL                         R10 0
       39 GETTABLEKS                       R9 R10 K6 ["hydrateMessages"]
       41 MOVE                             R10 R8
       42 CALL                             R9 1 0
       43 FORGLOOP                         R3 2 ; [-12]
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Util"]
       13 GETTABLEKS                       R3 R4 K7 ["Serializer"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Types"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R0 K10 ["testHydrateAfterDeserialization"]
       25 RETURN                           R0 1

PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+5]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["getNextLayoutOrder"]
        6 CALL                             R3 0 1
        7 MOVE                             R2 R3
        8 DUPTABLE                         R3 K8 [{"messageId", "role", "contents", "contentCount", "LayoutOrder", "createdAt", "ephemeral"}]
        9 LOADK                            R5 K9 ["message_%*"]
       10 MOVE                             R7 R2
       11 NAMECALL                         R5 R5 K10 ["format"]
       13 CALL                             R5 2 1
       14 MOVE                             R4 R5
       15 SETTABLEKS                       R4 R3 K1 ["messageId"]
       17 SETTABLEKS                       R0 R3 K2 ["role"]
       19 JUMPIFNOT                        R1 ; [+10]
       20 NEWTABLE                         R4 1 0
       22 LOADK                            R6 K11 ["content_%*"]
       23 MOVE                             R8 R2
       24 NAMECALL                         R6 R6 K10 ["format"]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 SETTABLE                         R1 R4 R5
       29 JUMPIF                           R4 ; [+2]
       30 NEWTABLE                         R4 0 0
       32 SETTABLEKS                       R4 R3 K3 ["contents"]
       34 JUMPIFNOT                        R1 ; [+2]
       35 LOADN                            R4 1
       36 JUMP                             ; [+1]
       37 LOADN                            R4 0
       38 SETTABLEKS                       R4 R3 K4 ["contentCount"]
       40 ORK                              R4 R2 K12 [0]
       41 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       43 LOADN                            R4 0
       44 SETTABLEKS                       R4 R3 K6 ["createdAt"]
       46 LOADB                            R4 0
       47 SETTABLEKS                       R4 R3 K7 ["ephemeral"]
       49 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["MessageLayoutOrder"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R5 K10 ["FFlagAssistantPersistConversations"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1

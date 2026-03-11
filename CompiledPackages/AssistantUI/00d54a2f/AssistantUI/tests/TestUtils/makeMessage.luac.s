PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+5]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["getNextLayoutOrder"]
        6 CALL                             R3 0 1
        7 MOVE                             R2 R3
        8 LOADK                            R3 K1 [""]
        9 JUMPIFNOT                        R1 ; [+8]
       10 LOADK                            R4 K2 ["content_%*"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R4 R4 K3 ["format"]
       14 CALL                             R4 2 1
       15 MOVE                             R3 R4
       16 SETTABLEKS                       R3 R1 K4 ["contentId"]
       18 GETUPVAL                         R4 2
       19 ADDK                             R4 R4 K5 [1]
       20 SETUPVAL                         R4 2
       21 DUPTABLE                         R4 K13 [{"messageId", "ephemeral", "createdAt", "role", "contents", "contentCount", "LayoutOrder"}]
       22 LOADK                            R6 K14 ["message_%*"]
       23 MOVE                             R8 R2
       24 NAMECALL                         R6 R6 K3 ["format"]
       26 CALL                             R6 2 1
       27 MOVE                             R5 R6
       28 SETTABLEKS                       R5 R4 K6 ["messageId"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K7 ["ephemeral"]
       33 GETUPVAL                         R5 2
       34 SETTABLEKS                       R5 R4 K8 ["createdAt"]
       36 SETTABLEKS                       R0 R4 K9 ["role"]
       38 JUMPIFNOT                        R1 ; [+4]
       39 NEWTABLE                         R5 1 0
       41 SETTABLE                         R1 R5 R3
       42 JUMPIF                           R5 ; [+2]
       43 NEWTABLE                         R5 0 0
       45 SETTABLEKS                       R5 R4 K10 ["contents"]
       47 JUMPIFNOT                        R1 ; [+2]
       48 LOADN                            R5 1
       49 JUMP                             ; [+1]
       50 LOADN                            R5 0
       51 SETTABLEKS                       R5 R4 K11 ["contentCount"]
       53 ORK                              R5 R2 K15 [0]
       54 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       56 RETURN                           R4 1

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
       26 LOADN                            R4 0
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CAPTURE                          REF R4
       31 CLOSEUPVALS                      R4
       32 RETURN                           R5 1

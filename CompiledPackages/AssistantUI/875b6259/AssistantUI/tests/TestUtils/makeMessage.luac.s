PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+5]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K0 ["getNextLayoutOrder"]
        6 CALL                             R4 0 1
        7 MOVE                             R2 R4
        8 LOADK                            R5 K1 ["message_%*"]
        9 MOVE                             R7 R2
       10 NAMECALL                         R5 R5 K2 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 LOADK                            R5 K3 [""]
       15 JUMPIFNOT                        R1 ; [+23]
       16 GETUPVAL                         R6 0
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+12]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K4 ["getNextContentId"]
       22 DUPTABLE                         R7 K7 [{"threadId", "messageId"}]
       23 ORK                              R8 R3 K3 [""]
       24 SETTABLEKS                       R8 R7 K5 ["threadId"]
       26 SETTABLEKS                       R4 R7 K6 ["messageId"]
       28 CALL                             R6 1 1
       29 MOVE                             R5 R6
       30 JUMP                             ; [+6]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K8 ["DEPRECATED_getNextContentId"]
       34 LOADK                            R7 K9 ["Content-"]
       35 CALL                             R6 1 1
       36 MOVE                             R5 R6
       37 SETTABLEKS                       R5 R1 K10 ["contentId"]
       39 GETUPVAL                         R6 3
       40 ADDK                             R6 R6 K11 [1]
       41 SETUPVAL                         R6 3
       42 DUPTABLE                         R6 K21 [{"messageId", "ephemeral", "isDirty", "createdAt", "updatedAt", "role", "contents", "contentCountAdded", "contentCountLoaded", "LayoutOrder"}]
       43 SETTABLEKS                       R4 R6 K6 ["messageId"]
       45 LOADB                            R7 0
       46 SETTABLEKS                       R7 R6 K12 ["ephemeral"]
       48 LOADB                            R7 0
       49 SETTABLEKS                       R7 R6 K13 ["isDirty"]
       51 GETUPVAL                         R7 3
       52 SETTABLEKS                       R7 R6 K14 ["createdAt"]
       54 GETUPVAL                         R7 3
       55 SETTABLEKS                       R7 R6 K15 ["updatedAt"]
       57 SETTABLEKS                       R0 R6 K16 ["role"]
       59 JUMPIFNOT                        R1 ; [+4]
       60 NEWTABLE                         R7 1 0
       62 SETTABLE                         R1 R7 R5
       63 JUMPIF                           R7 ; [+2]
       64 NEWTABLE                         R7 0 0
       66 SETTABLEKS                       R7 R6 K17 ["contents"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 LOADN                            R7 1
       70 JUMP                             ; [+1]
       71 LOADN                            R7 0
       72 SETTABLEKS                       R7 R6 K18 ["contentCountAdded"]
       74 LOADN                            R7 0
       75 SETTABLEKS                       R7 R6 K19 ["contentCountLoaded"]
       77 ORK                              R7 R2 K22 [0]
       78 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
       80 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentIdGenerator"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["MessageLayoutOrder"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Flags"]
       30 GETTABLEKS                       R5 R5 K11 ["FFlagAssistantMultipleChatPersistence"]
       32 CALL                             R4 1 1
       33 LOADN                            R5 0
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R5
       39 CLOSEUPVALS                      R5
       40 RETURN                           R6 1

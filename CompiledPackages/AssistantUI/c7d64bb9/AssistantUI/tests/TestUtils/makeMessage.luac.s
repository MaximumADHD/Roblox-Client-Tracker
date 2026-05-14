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
       15 JUMPIFNOT                        R1 ; [+30]
       16 GETUPVAL                         R6 0
       17 CALL                             R6 0 1
       18 JUMPIFNOT                        R6 ; [+19]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K4 ["getNextContentId"]
       22 DUPTABLE                         R7 K8 [{"type", "threadId", "messageId"}]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K9 ["METADATA_TYPES"]
       26 GETTABLEKS                       R8 R8 K10 ["Content"]
       28 SETTABLEKS                       R8 R7 K5 ["type"]
       30 ORK                              R8 R3 K3 [""]
       31 SETTABLEKS                       R8 R7 K6 ["threadId"]
       33 SETTABLEKS                       R4 R7 K7 ["messageId"]
       35 CALL                             R6 1 1
       36 MOVE                             R5 R6
       37 JUMP                             ; [+6]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K11 ["DEPRECATED_getNextContentId"]
       41 LOADK                            R7 K12 ["Content-"]
       42 CALL                             R6 1 1
       43 MOVE                             R5 R6
       44 SETTABLEKS                       R5 R1 K13 ["contentId"]
       46 GETUPVAL                         R6 3
       47 ADDK                             R6 R6 K14 [1]
       48 SETUPVAL                         R6 3
       49 DUPTABLE                         R6 K24 [{"messageId", "ephemeral", "isDirty", "createdAt", "updatedAt", "role", "contents", "contentCountAdded", "contentCountLoaded", "LayoutOrder"}]
       50 SETTABLEKS                       R4 R6 K7 ["messageId"]
       52 LOADB                            R7 0
       53 SETTABLEKS                       R7 R6 K15 ["ephemeral"]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K16 ["isDirty"]
       58 GETUPVAL                         R7 3
       59 SETTABLEKS                       R7 R6 K17 ["createdAt"]
       61 GETUPVAL                         R7 3
       62 SETTABLEKS                       R7 R6 K18 ["updatedAt"]
       64 SETTABLEKS                       R0 R6 K19 ["role"]
       66 JUMPIFNOT                        R1 ; [+4]
       67 NEWTABLE                         R7 1 0
       69 SETTABLE                         R1 R7 R5
       70 JUMPIF                           R7 ; [+2]
       71 NEWTABLE                         R7 0 0
       73 SETTABLEKS                       R7 R6 K20 ["contents"]
       75 JUMPIFNOT                        R1 ; [+2]
       76 LOADN                            R7 1
       77 JUMP                             ; [+1]
       78 LOADN                            R7 0
       79 SETTABLEKS                       R7 R6 K21 ["contentCountAdded"]
       81 LOADN                            R7 0
       82 SETTABLEKS                       R7 R6 K22 ["contentCountLoaded"]
       84 ORK                              R7 R2 K25 [0]
       85 SETTABLEKS                       R7 R6 K23 ["LayoutOrder"]
       87 RETURN                           R6 1

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

PROTO_0:
        0 LOADK                            R5 K0 ["message_%*"]
        1 MOVE                             R7 R2
        2 NAMECALL                         R5 R5 K1 ["format"]
        4 CALL                             R5 2 1
        5 MOVE                             R4 R5
        6 LOADK                            R5 K2 [""]
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K3 ["getNextContentId"]
       11 DUPTABLE                         R7 K6 [{"threadId", "messageId"}]
       12 ORK                              R8 R3 K2 [""]
       13 SETTABLEKS                       R8 R7 K4 ["threadId"]
       15 SETTABLEKS                       R4 R7 K5 ["messageId"]
       17 CALL                             R6 1 1
       18 MOVE                             R5 R6
       19 SETTABLEKS                       R5 R1 K7 ["contentId"]
       21 GETUPVAL                         R6 1
       22 ADDK                             R6 R6 K8 [1]
       23 SETUPVAL                         R6 1
       24 DUPTABLE                         R6 K20 [{["messageId"], ["ephemeral"] = False, ["isDirty"] = False, ["createdAt"], ["updatedAt"], ["role"], ["contents"], ["contentCountAdded"], ["contentCountLoaded"] = 0, ["LayoutOrder"]}]
       25 SETTABLEKS                       R4 R6 K5 ["messageId"]
       27 GETUPVAL                         R7 1
       28 SETTABLEKS                       R7 R6 K12 ["createdAt"]
       30 GETUPVAL                         R7 1
       31 SETTABLEKS                       R7 R6 K13 ["updatedAt"]
       33 SETTABLEKS                       R0 R6 K14 ["role"]
       35 JUMPIFNOT                        R1 ; [+4]
       36 NEWTABLE                         R7 1 0
       38 SETTABLE                         R1 R7 R5
       39 JUMPIF                           R7 ; [+2]
       40 NEWTABLE                         R7 0 0
       42 SETTABLEKS                       R7 R6 K15 ["contents"]
       44 JUMPIFNOT                        R1 ; [+2]
       45 LOADN                            R7 1
       46 JUMP                             ; [+1]
       47 LOADN                            R7 0
       48 SETTABLEKS                       R7 R6 K16 ["contentCountAdded"]
       50 ORK                              R7 R2 K18 [0]
       51 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
       53 RETURN                           R6 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 LOADN                            R3 0
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          REF R3
       23 CLOSEUPVALS                      R3
       24 RETURN                           R4 1

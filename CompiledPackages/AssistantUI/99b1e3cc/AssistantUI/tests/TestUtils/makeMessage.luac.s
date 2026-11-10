PROTO_0:
        0 LOADK                            R4 K0 ["message_%*"]
        1 MOVE                             R6 R2
        2 NAMECALL                         R4 R4 K1 ["format"]
        4 CALL                             R4 2 1
        5 LOADK                            R5 K2 [""]
        6 JUMPIFNOT                        R1 ; [+13]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K3 ["getNextContentId"]
       10 DUPTABLE                         R7 K6 [{"threadId", "messageId"}]
       11 ORK                              R8 R3 K2 [""]
       12 SETTABLEKS                       R8 R7 K4 ["threadId"]
       14 SETTABLEKS                       R4 R7 K5 ["messageId"]
       16 CALL                             R6 1 1
       17 MOVE                             R5 R6
       18 SETTABLEKS                       R5 R1 K7 ["contentId"]
       20 GETUPVAL                         R6 1
       21 ADDK                             R6 R6 K8 [1]
       22 SETUPVAL                         R6 1
       23 DUPTABLE                         R6 K20 [{["messageId"], ["ephemeral"] = False, ["isDirty"] = False, ["createdAt"], ["updatedAt"], ["role"], ["contents"], ["contentCountAdded"], ["contentCountLoaded"] = 0, ["LayoutOrder"]}]
       24 SETTABLEKS                       R4 R6 K5 ["messageId"]
       26 GETUPVAL                         R7 1
       27 SETTABLEKS                       R7 R6 K12 ["createdAt"]
       29 GETUPVAL                         R7 1
       30 SETTABLEKS                       R7 R6 K13 ["updatedAt"]
       32 SETTABLEKS                       R0 R6 K14 ["role"]
       34 JUMPIFNOT                        R1 ; [+4]
       35 NEWTABLE                         R7 1 0
       37 SETTABLE                         R1 R7 R5
       38 JUMPIF                           R7 ; [+2]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K15 ["contents"]
       43 JUMPIFNOT                        R1 ; [+2]
       44 LOADN                            R7 1
       45 JUMP                             ; [+1]
       46 LOADN                            R7 0
       47 SETTABLEKS                       R7 R6 K16 ["contentCountAdded"]
       49 ORK                              R7 R2 K18 [0]
       50 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
       52 RETURN                           R6 1

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

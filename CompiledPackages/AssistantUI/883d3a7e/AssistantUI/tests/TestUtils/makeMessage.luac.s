PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getNextLayoutOrder"]
        3 CALL                             R2 0 1
        4 DUPTABLE                         R3 K6 [{"messageId", "role", "contents", "LayoutOrder", "startTimestamp"}]
        5 LOADK                            R5 K7 ["message_%*"]
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R5 K8 ["format"]
        9 CALL                             R5 2 1
       10 MOVE                             R4 R5
       11 SETTABLEKS                       R4 R3 K1 ["messageId"]
       13 SETTABLEKS                       R0 R3 K2 ["role"]
       15 JUMPIFNOT                        R1 ; [+10]
       16 NEWTABLE                         R4 1 0
       18 LOADK                            R6 K9 ["content_%*"]
       19 MOVE                             R8 R2
       20 NAMECALL                         R6 R6 K8 ["format"]
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 SETTABLE                         R1 R4 R5
       25 JUMPIF                           R4 ; [+2]
       26 NEWTABLE                         R4 0 0
       28 SETTABLEKS                       R4 R3 K3 ["contents"]
       30 SETTABLEKS                       R2 R3 K4 ["LayoutOrder"]
       32 LOADN                            R4 0
       33 SETTABLEKS                       R4 R3 K5 ["startTimestamp"]
       35 RETURN                           R3 1

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
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1

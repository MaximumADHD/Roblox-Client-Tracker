PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getUniqueTag"]
        6 LOADK                            R2 K1 ["Mesh"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1
       10 LOADK                            R2 K2 ["Assistant-%*"]
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K3 ["format"]
       14 CALL                             R2 2 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Tagging"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Flags"]
       23 GETTABLEKS                       R4 R4 K10 ["FFlagAssistantUseNewTags"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 DUPTABLE                         R5 K13 [{"getLinkTag"}]
       30 SETTABLEKS                       R4 R5 K12 ["getLinkTag"]
       32 RETURN                           R5 1

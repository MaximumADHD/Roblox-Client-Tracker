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
        9 GETTABLEKS                       R2 R0 K6 ["Features"]
       11 GETTABLEKS                       R2 R2 K7 ["Gen3dUtils"]
       13 GETTABLEKS                       R2 R2 K8 ["SegmentationEnums"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Tagging"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Flags"]
       32 GETTABLEKS                       R5 R5 K13 ["FFlagAssistantUseNewTags"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K14 [PROTO_0]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 DUPTABLE                         R6 K16 [{"getLinkTag"}]
       39 SETTABLEKS                       R5 R6 K15 ["getLinkTag"]
       41 RETURN                           R6 1

PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+4]
        2 LOADK                            R4 K0 ["LayerCollector"]
        3 NAMECALL                         R2 R0 K1 ["IsA"]
        5 CALL                             R2 2 1
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Focus.new: Expected a LayerCollector as the target."]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K9 [PROTO_0]
       19 LOADK                            R5 K10 ["Focus"]
       20 DUPTABLE                         R6 K12 [{"verifyNewItem"}]
       21 SETTABLEKS                       R2 R6 K11 ["verifyNewItem"]
       23 NAMECALL                         R3 R1 K13 ["createSimple"]
       25 CALL                             R3 3 -1
       26 RETURN                           R3 -1

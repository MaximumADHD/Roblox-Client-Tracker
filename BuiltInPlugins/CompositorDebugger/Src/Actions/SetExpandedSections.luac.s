PROTO_0:
        0 DUPTABLE                         R1 K1 [{"expandedSections"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+2]
        3 NEWTABLE                         R2 0 0
        5 SETTABLEKS                       R2 R1 K0 ["expandedSections"]
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Action"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 MOVE                             R4 R2
       26 GETIMPORT                        R5 K1 [script]
       28 GETTABLEKS                       R5 R5 K12 ["Name"]
       30 DUPCLOSURE                       R6 K13 [PROTO_0]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

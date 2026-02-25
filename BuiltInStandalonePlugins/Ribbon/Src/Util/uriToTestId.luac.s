PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["toString"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 LOADK                            R3 K4 [" "]
        8 LOADK                            R4 K5 ["_"]
        9 CALL                             R1 3 2
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["StudioUri"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

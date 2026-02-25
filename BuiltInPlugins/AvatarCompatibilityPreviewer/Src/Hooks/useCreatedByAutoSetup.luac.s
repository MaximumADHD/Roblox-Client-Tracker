PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R6 1
        3 GETTABLEKS                       R5 R6 K0 ["ATTRIBUTE_CREATED_BY_AUTO_SETUP"]
        5 CALL                             R3 2 1
        6 NOT                              R2 R3
        7 NOT                              R1 R2
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Hooks"]
       29 GETTABLEKS                       R4 R5 K11 ["useAttribute"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 RETURN                           R4 1

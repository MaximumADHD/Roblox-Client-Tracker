PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["Provider"]
       11 DUPTABLE                         R5 K4 [{"value"}]
       12 DUPTABLE                         R6 K7 [{"isHovered", "setIsHovered"}]
       13 SETTABLEKS                       R1 R6 K5 ["isHovered"]
       15 SETTABLEKS                       R2 R6 K6 ["setIsHovered"]
       17 SETTABLEKS                       R6 R5 K3 ["value"]
       19 GETTABLEKS                       R6 R0 K8 ["children"]
       21 CALL                             R3 3 -1
       22 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R3 K9 ["Contexts"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["PopoverContext"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1

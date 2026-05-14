PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["selectedMaterial"]
        5 CALL                             R1 1 2
        6 DUPTABLE                         R3 K4 [{"selectedMaterial", "setSelectedMaterial", "applySelectedMaterial"}]
        7 SETTABLEKS                       R1 R3 K1 ["selectedMaterial"]
        9 SETTABLEKS                       R2 R3 K2 ["setSelectedMaterial"]
       11 DUPCLOSURE                       R4 K5 [PROTO_0]
       12 SETTABLEKS                       R4 R3 K3 ["applySelectedMaterial"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K6 ["createElement"]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K7 ["Provider"]
       20 DUPTABLE                         R6 K9 [{"value"}]
       21 SETTABLEKS                       R3 R6 K8 ["value"]
       23 GETTABLEKS                       R7 R0 K10 ["children"]
       25 CALL                             R4 3 -1
       26 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"selectedMaterial"}]
        5 GETTABLEKS                       R4 R0 K1 ["selectedMaterial"]
        7 SETTABLEKS                       R4 R3 K1 ["selectedMaterial"]
        9 GETTABLEKS                       R4 R0 K3 ["children"]
       11 CALL                             R1 3 -1
       12 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PreviewContext"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 DUPCLOSURE                       R5 K12 [PROTO_2]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R4
       31 SETTABLEKS                       R5 R3 K13 ["BasicProvider"]
       33 RETURN                           R3 1

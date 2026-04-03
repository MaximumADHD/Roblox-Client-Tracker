PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ContextStack"]
        6 DUPTABLE                         R3 K3 [{"providers"}]
        7 NEWTABLE                         R4 0 1
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R6 2
       13 DUPTABLE                         R7 K7 [{"plugin", "selectedInstance", "updateContextFunction"}]
       14 GETTABLEKS                       R8 R0 K8 ["Plugin"]
       16 SETTABLEKS                       R8 R7 K4 ["plugin"]
       18 GETTABLEKS                       R8 R0 K5 ["selectedInstance"]
       20 SETTABLEKS                       R8 R7 K5 ["selectedInstance"]
       22 GETTABLEKS                       R8 R0 K9 ["UpdateContextFunction"]
       24 SETTABLEKS                       R8 R7 K6 ["updateContextFunction"]
       26 CALL                             R5 2 -1
       27 SETLIST                          R4 R5 -1 [1]
       29 SETTABLEKS                       R4 R3 K2 ["providers"]
       31 CALL                             R1 2 -1
       32 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["FaceControlEditorAssetProvider"]
       23 CALL                             R4 1 1
       24 DUPCLOSURE                       R5 K10 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1

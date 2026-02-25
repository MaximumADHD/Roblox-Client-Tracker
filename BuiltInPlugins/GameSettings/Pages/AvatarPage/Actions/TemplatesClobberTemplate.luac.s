PROTO_0:
        0 DUPTABLE                         R2 K2 [{"templateToClobber", "newTemplateModel"}]
        1 SETTABLEKS                       R0 R2 K0 ["templateToClobber"]
        3 SETTABLEKS                       R1 R2 K1 ["newTemplateModel"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Packages"]
       15 GETTABLEKS                       R4 R5 K6 ["Framework"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETTABLEKS                       R1 R2 K8 ["Action"]
       22 MOVE                             R2 R1
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R3 R4 K9 ["Name"]
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

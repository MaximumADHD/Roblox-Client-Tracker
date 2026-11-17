PROTO_0:
        0 DUPTABLE                         R1 K1 [{"reduceKeyframesDialogMode"}]
        1 MOVE                             R2 R0
        2 JUMPIF                           R2 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["REDUCE_KEYFRAMES_DIALOG_MODE"]
        6 GETTABLEKS                       R2 R2 K3 ["Hidden"]
        8 SETTABLEKS                       R2 R1 K0 ["reduceKeyframesDialogMode"]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Action"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Util"]
       20 GETTABLEKS                       R2 R2 K7 ["Constants"]
       22 CALL                             R1 1 1
       23 MOVE                             R2 R0
       24 GETIMPORT                        R3 K3 [script]
       26 GETTABLEKS                       R3 R3 K8 ["Name"]
       28 DUPCLOSURE                       R4 K9 [PROTO_0]
       29 CAPTURE                          VAL R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

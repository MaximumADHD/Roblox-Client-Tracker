PROTO_0:
        0 DUPTABLE                         R3 K3 [{"propertyName", "propertyValue", "transitionValue"}]
        1 SETTABLEKS                       R0 R3 K0 ["propertyName"]
        3 SETTABLEKS                       R1 R3 K1 ["propertyValue"]
        5 GETUPVAL                         R5 0
        6 JUMPIFNOT                        R5 ; [+2]
        7 MOVE                             R4 R2
        8 JUMP                             ; [+1]
        9 LOADNIL                          R4
       10 SETTABLEKS                       R4 R3 K2 ["transitionValue"]
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Types"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R1 K9 ["Util"]
       27 GETTABLEKS                       R3 R4 K10 ["Action"]
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Src"]
       33 GETTABLEKS                       R6 R7 K11 ["Flags"]
       35 GETTABLEKS                       R5 R6 K12 ["getFFlagStyleEditorSupportTransitions"]
       37 CALL                             R4 1 1
       38 CALL                             R4 0 1
       39 MOVE                             R5 R3
       40 GETIMPORT                        R7 K1 [script]
       42 GETTABLEKS                       R6 R7 K13 ["Name"]
       44 DUPCLOSURE                       R7 K14 [PROTO_0]
       45 CAPTURE                          VAL R4
       46 CALL                             R5 2 -1
       47 RETURN                           R5 -1

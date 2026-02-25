PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["StateTemplates"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R2 R0 K0 ["StateTemplates"]
        5 GETTABLEKS                       R1 R2 K1 ["templates"]
        7 JUMPIFNOT                        R1 ; [+10]
        8 GETTABLEKS                       R1 R0 K2 ["template"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETTABLEKS                       R3 R0 K0 ["StateTemplates"]
       13 GETTABLEKS                       R2 R3 K1 ["templates"]
       15 GETTABLEKS                       R3 R0 K2 ["template"]
       17 GETTABLE                         R1 R2 R3
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["makeCopy"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["getStateModelTemplate"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 -1
        9 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["StateModelTemplate"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K7 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K8 ["getStateModelTemplate"]
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R3 R2 K10 ["getStateModelTemplateCopy"]
       24 RETURN                           R2 1

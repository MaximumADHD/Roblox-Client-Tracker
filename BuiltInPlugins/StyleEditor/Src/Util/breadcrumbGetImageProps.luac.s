PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+6]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R1
        5 JUMPIFNOT                        R2 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K7 ["UI"]
       18 GETTABLEKS                       R2 R3 K8 ["Breadcrumb"]
       20 GETTABLEKS                       R3 R2 K9 ["GetSelectorIcon"]
       22 GETTABLEKS                       R5 R1 K10 ["SharedFlags"]
       24 GETTABLEKS                       R4 R5 K11 ["getFFlagDevFrameworkBreadcrumbAddDelimiterToImageLookup"]
       26 CALL                             R4 0 1
       27 NEWTABLE                         R5 4 0
       29 LOADB                            R6 1
       30 SETTABLEKS                       R6 R5 K12 ["."]
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K13 ["#"]
       35 LOADB                            R6 1
       36 SETTABLEKS                       R6 R5 K14 [":"]
       38 DUPCLOSURE                       R6 K15 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 RETURN                           R6 1

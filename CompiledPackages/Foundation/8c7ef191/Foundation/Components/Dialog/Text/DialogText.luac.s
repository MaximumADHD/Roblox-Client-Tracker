PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K6 [{"Text", "RichText", "tag", "LayoutOrder", "testId"}]
        9 GETTABLEKS                       R6 R0 K1 ["Text"]
       11 SETTABLEKS                       R6 R5 K1 ["Text"]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["RichText"]
       16 GETTABLEKS                       R6 R1 K7 ["contentText"]
       18 GETTABLEKS                       R6 R6 K3 ["tag"]
       20 SETTABLEKS                       R6 R5 K3 ["tag"]
       22 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       26 LOADK                            R7 K8 ["%*--text"]
       27 GETTABLEKS                       R9 R2 K5 ["testId"]
       29 NAMECALL                         R7 R7 K9 ["format"]
       31 CALL                             R7 2 1
       32 MOVE                             R6 R7
       33 SETTABLEKS                       R6 R5 K5 ["testId"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K11 ["useDialogVariants"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R5 R5 K11 ["useDialogVariants"]
       41 GETIMPORT                        R6 K6 [require]
       43 GETIMPORT                        R7 K1 [script]
       45 GETTABLEKS                       R7 R7 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K4 ["Parent"]
       49 GETTABLEKS                       R7 R7 K12 ["useDialog"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K13 [PROTO_0]
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 RETURN                           R7 1

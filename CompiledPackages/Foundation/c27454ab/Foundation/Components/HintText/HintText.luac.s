PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 DUPTABLE                         R6 K4 [{"Text", "tag", "ref"}]
        7 GETTABLEKS                       R7 R0 K5 ["text"]
        9 SETTABLEKS                       R7 R6 K1 ["Text"]
       11 NEWTABLE                         R7 4 0
       13 LOADB                            R8 1
       14 SETTABLEKS                       R8 R7 K6 ["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"]
       16 GETTABLEKS                       R9 R0 K7 ["hasError"]
       18 NOT                              R8 R9
       19 SETTABLEKS                       R8 R7 K8 ["content-default"]
       21 GETTABLEKS                       R8 R0 K7 ["hasError"]
       23 SETTABLEKS                       R8 R7 K9 ["content-action-alert"]
       25 SETTABLEKS                       R7 R6 K2 ["tag"]
       27 SETTABLEKS                       R1 R6 K3 ["ref"]
       29 CALL                             R4 2 -1
       30 CALL                             R2 -1 -1
       31 RETURN                           R2 -1

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
       30 GETTABLEKS                       R6 R0 K11 ["Utility"]
       32 GETTABLEKS                       R6 R6 K12 ["withCommonProps"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K13 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 GETTABLEKS                       R7 R2 K14 ["memo"]
       41 GETTABLEKS                       R8 R2 K15 ["forwardRef"]
       43 MOVE                             R9 R6
       44 CALL                             R8 1 -1
       45 CALL                             R7 -1 -1
       46 RETURN                           R7 -1

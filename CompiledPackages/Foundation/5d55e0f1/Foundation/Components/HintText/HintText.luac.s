PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 MOVE                             R5 R0
        6 DUPTABLE                         R6 K4 [{"Text", "tag", "ref"}]
        7 GETTABLEKS                       R7 R0 K5 ["text"]
        9 SETTABLEKS                       R7 R6 K1 ["Text"]
       11 NEWTABLE                         R7 4 0
       13 LOADB                            R8 1
       14 SETTABLEKS                       R8 R7 K6 ["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"]
       16 GETTABLEKS                       R8 R0 K7 ["hasError"]
       18 SETTABLEKS                       R8 R7 K8 ["content-action-alert"]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R8 R9 K9 ["FoundationInputFieldFixDisabled"]
       23 JUMPIFNOT                        R8 ; [+6]
       24 GETTABLEKS                       R8 R0 K10 ["isDisabled"]
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R9 R0 K7 ["hasError"]
       29 NOT                              R8 R9
       30 SETTABLEKS                       R8 R7 K11 ["content-muted"]
       32 GETUPVAL                         R10 3
       33 GETTABLEKS                       R9 R10 K9 ["FoundationInputFieldFixDisabled"]
       35 JUMPIFNOT                        R9 ; [+4]
       36 GETTABLEKS                       R9 R0 K10 ["isDisabled"]
       38 NOT                              R8 R9
       39 JUMPIFNOT                        R8 ; [+3]
       40 GETTABLEKS                       R9 R0 K7 ["hasError"]
       42 NOT                              R8 R9
       43 SETTABLEKS                       R8 R7 K12 ["content-default"]
       45 SETTABLEKS                       R7 R6 K2 ["tag"]
       47 SETTABLEKS                       R1 R6 K3 ["ref"]
       49 CALL                             R4 2 -1
       50 CALL                             R2 -1 -1
       51 RETURN                           R2 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R6 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Utility"]
       39 GETTABLEKS                       R7 R8 K13 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 DUPCLOSURE                       R7 K14 [PROTO_0]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 GETTABLEKS                       R8 R2 K15 ["memo"]
       49 GETTABLEKS                       R9 R2 K16 ["forwardRef"]
       51 MOVE                             R10 R7
       52 CALL                             R9 1 -1
       53 CALL                             R8 -1 -1
       54 RETURN                           R8 -1

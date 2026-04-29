PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K5 [{"text", "hasError", "isDisabled"}]
        7 GETTABLEKS                       R5 R1 K2 ["text"]
        9 SETTABLEKS                       R5 R4 K2 ["text"]
       11 GETTABLEKS                       R5 R1 K3 ["hasError"]
       13 SETTABLEKS                       R5 R4 K3 ["hasError"]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K6 ["FoundationInputFieldFixDisabled"]
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R5 R1 K4 ["isDisabled"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R5
       23 SETTABLEKS                       R5 R4 K4 ["isDisabled"]
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Utility"]
       18 GETTABLEKS                       R4 R5 K9 ["Flags"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["HintText"]
       27 CALL                             R4 1 1
       28 DUPCLOSURE                       R5 K12 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R3
       32 DUPTABLE                         R6 K16 [{"summary", "story", "controls"}]
       33 LOADK                            R7 K17 ["Helper text put below inputs"]
       34 SETTABLEKS                       R7 R6 K13 ["summary"]
       36 SETTABLEKS                       R5 R6 K14 ["story"]
       38 DUPTABLE                         R7 K21 [{"text", "hasError", "isDisabled"}]
       39 LOADK                            R8 K22 ["Helper text"]
       40 SETTABLEKS                       R8 R7 K18 ["text"]
       42 LOADB                            R8 0
       43 SETTABLEKS                       R8 R7 K19 ["hasError"]
       45 GETTABLEKS                       R9 R3 K23 ["FoundationInputFieldFixDisabled"]
       47 JUMPIFNOT                        R9 ; [+2]
       48 LOADB                            R8 0
       49 JUMP                             ; [+1]
       50 LOADNIL                          R8
       51 SETTABLEKS                       R8 R7 K20 ["isDisabled"]
       53 SETTABLEKS                       R7 R6 K15 ["controls"]
       55 RETURN                           R6 1

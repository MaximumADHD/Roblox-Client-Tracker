PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 DUPTABLE                         R4 K2 [{"overrideLocaleChangedSignal", "overrideLocaleId"}]
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K3 ["new"]
        7 CALL                             R5 0 1
        8 SETTABLEKS                       R5 R4 K0 ["overrideLocaleChangedSignal"]
       10 LOADN                            R5 1
       11 SETTABLEKS                       R5 R4 K1 ["overrideLocaleId"]
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETIMPORT                        R2 K1 [script]
       13 GETTABLEKS                       R2 R2 K4 ["Parent"]
       15 GETTABLEKS                       R2 R2 K7 ["Localization_stubbed"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Signal"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K10 ["Dash"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K11 ["join"]
       34 GETTABLEKS                       R5 R1 K12 ["new"]
       36 DUPCLOSURE                       R6 K13 [PROTO_0]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R1 K12 ["new"]
       42 RETURN                           R1 1

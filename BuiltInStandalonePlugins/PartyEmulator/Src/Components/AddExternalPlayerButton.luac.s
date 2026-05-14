PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Add External Player Clicked"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_0]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["createElement"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K3 ["Button"]
       11 DUPTABLE                         R5 K9 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
       12 LOADK                            R8 K10 ["Action"]
       13 LOADK                            R9 K11 ["AddExternalPlayer"]
       14 NAMECALL                         R6 R1 K12 ["getText"]
       16 CALL                             R6 3 1
       17 SETTABLEKS                       R6 R5 K4 ["text"]
       19 SETTABLEKS                       R2 R5 K5 ["onActivated"]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K13 ["Subtle"]
       24 SETTABLEKS                       R6 R5 K6 ["variant"]
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R6 R6 K14 ["Medium"]
       29 SETTABLEKS                       R6 R5 K7 ["size"]
       31 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       33 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       35 CALL                             R3 2 -1
       36 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PartyEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Enums"]
       23 GETTABLEKS                       R3 R3 K10 ["ButtonVariant"]
       25 GETTABLEKS                       R4 R2 K9 ["Enums"]
       27 GETTABLEKS                       R4 R4 K11 ["InputSize"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R0 K6 ["Packages"]
       33 GETTABLEKS                       R6 R6 K12 ["Framework"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R5 K13 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K14 ["Localization"]
       40 DUPCLOSURE                       R8 K15 [PROTO_1]
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 RETURN                           R8 1

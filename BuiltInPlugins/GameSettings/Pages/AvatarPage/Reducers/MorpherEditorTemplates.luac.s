PROTO_0:
        0 GETUPVAL                         R2 0
        1 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"templates"}]
        7 GETTABLEKS                       R5 R1 K4 ["templatesArrayToAdd"]
        9 SETTABLEKS                       R5 R4 K2 ["templates"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"templates"}]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K4 ["immutableSetExistingDictionaryEntry"]
       10 GETTABLEKS                       R6 R0 K2 ["templates"]
       12 GETTABLEKS                       R7 R1 K5 ["templateToClobber"]
       14 GETTABLEKS                       R8 R1 K6 ["newTemplateModel"]
       16 CALL                             R5 3 1
       17 SETTABLEKS                       R5 R4 K2 ["templates"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R4 K6 ["Cryo"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R5 K7 ["Rodux"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R0 K8 ["Util"]
       35 GETTABLEKS                       R5 R6 K9 ["UtilityFunctionsTable"]
       37 CALL                             R4 1 1
       38 DUPTABLE                         R5 K11 [{"templates"}]
       39 NEWTABLE                         R6 0 0
       41 SETTABLEKS                       R6 R5 K10 ["templates"]
       43 GETTABLEKS                       R6 R3 K12 ["createReducer"]
       45 MOVE                             R7 R5
       46 DUPTABLE                         R8 K16 [{"ResetStore", "TemplatesAdd", "TemplatesClobberTemplate"}]
       47 DUPCLOSURE                       R9 K17 [PROTO_0]
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R9 R8 K13 ["ResetStore"]
       51 DUPCLOSURE                       R9 K18 [PROTO_1]
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R9 R8 K14 ["TemplatesAdd"]
       55 DUPCLOSURE                       R9 K19 [PROTO_2]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 SETTABLEKS                       R9 R8 K15 ["TemplatesClobberTemplate"]
       60 CALL                             R6 2 -1
       61 RETURN                           R6 -1

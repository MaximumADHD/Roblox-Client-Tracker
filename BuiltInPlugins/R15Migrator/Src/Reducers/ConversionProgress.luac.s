PROTO_0:
        0 DUPTABLE                         R0 K4 [{[1] = False, ["experienceData"] = }]
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isSuccessfullyPublished"}]
        7 GETTABLEKS                       R5 R1 K2 ["isSuccessfullyPublished"]
        9 SETTABLEKS                       R5 R4 K2 ["isSuccessfullyPublished"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"experienceData"}]
        7 GETTABLEKS                       R5 R1 K2 ["experienceData"]
        9 JUMPIF                           R5 ; [+3]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["None"]
       13 SETTABLEKS                       R5 R4 K2 ["experienceData"]
       15 CALL                             R2 2 -1
       16 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["SuccessfullyPublished"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R6 R3 K11 ["SetExperienceData"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K12 [PROTO_0]
       38 GETTABLEKS                       R7 R1 K13 ["createReducer"]
       40 DUPTABLE                         R8 K18 [{["isSuccessfullyPublished"] = False, ["experienceData"] = }]
       41 NEWTABLE                         R9 2 0
       43 GETTABLEKS                       R10 R4 K19 ["name"]
       45 DUPCLOSURE                       R11 K20 [PROTO_1]
       46 CAPTURE                          VAL R2
       47 SETTABLE                         R11 R9 R10
       48 GETTABLEKS                       R10 R5 K19 ["name"]
       50 DUPCLOSURE                       R11 K21 [PROTO_2]
       51 CAPTURE                          VAL R2
       52 SETTABLE                         R11 R9 R10
       53 CALL                             R7 2 1
       54 RETURN                           R7 1

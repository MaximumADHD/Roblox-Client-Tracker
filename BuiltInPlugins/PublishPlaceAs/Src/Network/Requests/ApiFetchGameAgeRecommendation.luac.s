PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 DUPTABLE                         R2 K3 [{"minimumAgeByUniverse", "ratingByUniverse"}]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K1 ["minimumAgeByUniverse"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K2 ["ratingByUniverse"]
       14 GETIMPORT                        R3 K5 [pairs]
       16 GETTABLEKS                       R4 R1 K6 ["ageRecommendationDetailsByUniverse"]
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETTABLEKS                       R8 R7 K7 ["ageRecommendationDetails"]
       22 JUMPIFNOT                        R8 ; [+11]
       23 GETTABLEKS                       R9 R7 K7 ["ageRecommendationDetails"]
       25 GETTABLEKS                       R8 R9 K8 ["ageRecommendationSummary"]
       27 JUMPIFNOT                        R8 ; [+6]
       28 GETTABLEKS                       R10 R7 K7 ["ageRecommendationDetails"]
       30 GETTABLEKS                       R9 R10 K8 ["ageRecommendationSummary"]
       32 GETTABLEKS                       R8 R9 K9 ["ageRecommendation"]
       34 JUMPIFNOT                        R8 ; [+3]
       35 GETTABLEKS                       R9 R8 K10 ["minimumAge"]
       37 JUMPIF                           R9 ; [+1]
       38 LOADN                            R9 0
       39 JUMPIFNOT                        R8 ; [+3]
       40 GETTABLEKS                       R10 R8 K11 ["contentMaturity"]
       42 JUMPIF                           R10 ; [+1]
       43 LOADK                            R10 K12 ["unrated"]
       44 GETTABLEKS                       R11 R7 K13 ["universeId"]
       46 GETTABLEKS                       R12 R2 K1 ["minimumAgeByUniverse"]
       48 SETTABLE                         R9 R12 R11
       49 GETTABLEKS                       R12 R2 K2 ["ratingByUniverse"]
       51 SETTABLE                         R10 R12 R11
       52 FORGLOOP                         R3 2 ; [-33]
       54 RETURN                           R2 1

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"Url", "Method", "Body"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["BuildRobloxUrl"]
        4 LOADK                            R3 K5 ["apis"]
        5 LOADK                            R4 K6 ["experience-guidelines-service/v1beta1/multi-age-recommendation"]
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K0 ["Url"]
        9 LOADK                            R2 K7 ["POST"]
       10 SETTABLEKS                       R2 R1 K1 ["Method"]
       12 GETUPVAL                         R2 1
       13 DUPTABLE                         R4 K9 [{"universeIds"}]
       14 SETTABLEKS                       R0 R4 K8 ["universeIds"]
       16 NAMECALL                         R2 R2 K10 ["JSONEncode"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K2 ["Body"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K11 ["Request"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 1
       26 DUPCLOSURE                       R4 K12 [PROTO_0]
       27 CAPTURE                          UPVAL U1
       28 NAMECALL                         R2 R2 K13 ["andThen"]
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Network"]
       17 GETTABLEKS                       R2 R3 K7 ["Http"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K9 [game]
       22 LOADK                            R4 K10 ["HttpService"]
       23 NAMECALL                         R2 R2 K11 ["GetService"]
       25 CALL                             R2 2 1
       26 DUPCLOSURE                       R3 K12 [PROTO_1]
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R2
       29 RETURN                           R3 1

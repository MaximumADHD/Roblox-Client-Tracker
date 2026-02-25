PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assertNullableType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["table"]
        5 LOADK                            R4 K2 ["SetPublishInProgress arg"]
        6 CALL                             R1 3 0
        7 MOVE                             R1 R0
        8 JUMPIF                           R1 ; [+2]
        9 NEWTABLE                         R1 0 0
       11 GETTABLEKS                       R2 R1 K3 ["universe"]
       13 GETTABLEKS                       R3 R1 K4 ["place"]
       15 GETTABLEKS                       R4 R1 K5 ["isPublish"]
       17 GETTABLEKS                       R5 R1 K6 ["failCount"]
       19 GETTABLEKS                       R6 R1 K7 ["requestInFlight"]
       21 DUPTABLE                         R7 K9 [{"publishInProgress"}]
       22 DUPTABLE                         R8 K10 [{"universe", "place", "isPublish", "failCount", "requestInFlight"}]
       23 SETTABLEKS                       R2 R8 K3 ["universe"]
       25 SETTABLEKS                       R3 R8 K4 ["place"]
       27 SETTABLEKS                       R4 R8 K5 ["isPublish"]
       29 SETTABLEKS                       R5 R8 K6 ["failCount"]
       31 SETTABLEKS                       R6 R8 K7 ["requestInFlight"]
       33 SETTABLEKS                       R8 R7 K8 ["publishInProgress"]
       35 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["AssertType"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R4 R5 K2 ["Parent"]
       24 GETTABLEKS                       R3 R4 K8 ["Action"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R7 R0 K5 ["Src"]
       31 GETTABLEKS                       R6 R7 K6 ["Util"]
       33 GETTABLEKS                       R5 R6 K9 ["PublishPlaceAsUtilities"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R3 R4 K10 ["shouldShowDevPublishLocations"]
       38 MOVE                             R4 R2
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R5 R6 K11 ["Name"]
       43 DUPCLOSURE                       R6 K12 [PROTO_0]
       44 CAPTURE                          VAL R1
       45 CALL                             R4 2 -1
       46 RETURN                           R4 -1

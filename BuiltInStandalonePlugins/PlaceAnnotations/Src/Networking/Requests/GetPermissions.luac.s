PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["responseBody"]
        3 NAMECALL                         R1 R1 K1 ["JSONDecode"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["UNIVERSES_PERMISSIONS_URL"]
        4 GETTABLEKS                       R2 R2 K1 ["Prefix"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["UNIVERSES_PERMISSIONS_URL"]
        9 GETTABLEKS                       R3 R3 K2 ["Url"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 -1
       13 CALL                             R1 -1 1
       14 GETUPVAL                         R2 2
       15 DUPTABLE                         R4 K5 [{"Method", "Url", "Headers"}]
       16 LOADK                            R5 K6 ["GET"]
       17 SETTABLEKS                       R5 R4 K3 ["Method"]
       19 SETTABLEKS                       R1 R4 K2 ["Url"]
       21 GETUPVAL                         R5 3
       22 SETTABLEKS                       R5 R4 K4 ["Headers"]
       24 NAMECALL                         R2 R2 K7 ["request"]
       26 CALL                             R2 2 1
       27 DUPCLOSURE                       R4 K8 [PROTO_0]
       28 CAPTURE                          UPVAL U4
       29 NAMECALL                         R2 R2 K9 ["andThen"]
       31 CALL                             R2 2 1
       32 DUPCLOSURE                       R4 K10 [PROTO_1]
       33 NAMECALL                         R2 R2 K11 ["catch"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["Urls"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K8 ["Urls"]
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Networking"]
       24 GETTABLEKS                       R3 R3 K8 ["Urls"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R2 R2 K9 ["composeUrl"]
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K6 ["Src"]
       33 GETTABLEKS                       R4 R4 K10 ["Util"]
       35 GETTABLEKS                       R4 R4 K7 ["Networking"]
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K7 ["Networking"]
       40 GETTABLEKS                       R4 R3 K11 ["new"]
       42 DUPTABLE                         R5 K13 [{"isInternal"}]
       43 LOADB                            R6 1
       44 SETTABLEKS                       R6 R5 K12 ["isInternal"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K15 [game]
       49 LOADK                            R7 K16 ["HttpService"]
       50 NAMECALL                         R5 R5 K17 ["GetService"]
       52 CALL                             R5 2 1
       53 NEWTABLE                         R6 1 0
       55 LOADK                            R7 K18 ["application/json"]
       56 SETTABLEKS                       R7 R6 K19 ["Content-Type"]
       58 DUPCLOSURE                       R7 K20 [PROTO_2]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 RETURN                           R7 1

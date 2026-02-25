PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["BaseUrl"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["convertAssetTypeValueToEnum"]
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 GETIMPORT                        R4 K4 [string.format]
       10 LOADK                            R5 K5 ["%s/abusereport/asset?id=%s"]
       11 MOVE                             R6 R2
       12 GETUPVAL                         R7 2
       13 MOVE                             R9 R0
       14 NAMECALL                         R7 R7 K6 ["urlEncode"]
       16 CALL                             R7 2 -1
       17 CALL                             R4 -1 -1
       18 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETTABLEKS                       R4 R2 K8 ["Src"]
       23 GETTABLEKS                       R3 R4 K9 ["Util"]
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["AssetConfigConstants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K11 [require]
       32 GETTABLEKS                       R6 R3 K13 ["EnumConvert"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K14 [PROTO_0]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R1
       39 RETURN                           R6 1

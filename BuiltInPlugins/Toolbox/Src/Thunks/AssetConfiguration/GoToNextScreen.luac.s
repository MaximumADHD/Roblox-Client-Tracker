PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["screenFlowType"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K2 ["FLOW_TYPE"]
        8 GETTABLEKS                       R3 R4 K3 ["UPLOAD_FLOW"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+12]
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K4 ["SCREENS"]
       16 GETTABLEKS                       R5 R6 K5 ["ASSET_VALIDATION"]
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R0 K6 ["dispatch"]
       21 CALL                             R2 -1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K4 ["SCREENS"]
       27 GETTABLEKS                       R5 R6 K7 ["CONFIGURE_ASSET"]
       29 CALL                             R4 1 -1
       30 NAMECALL                         R2 R0 K6 ["dispatch"]
       32 CALL                             R2 -1 0
       33 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R2 R0 K3 ["Src"]
       13 GETTABLEKS                       R1 R2 K4 ["Actions"]
       15 GETIMPORT                        R2 K6 [require]
       17 GETTABLEKS                       R3 R1 K7 ["SetCurrentScreen"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R0 K3 ["Src"]
       22 GETTABLEKS                       R3 R4 K8 ["Util"]
       24 GETIMPORT                        R4 K6 [require]
       26 GETTABLEKS                       R5 R3 K9 ["AssetConfigConstants"]
       28 CALL                             R4 1 1
       29 DUPCLOSURE                       R5 K10 [PROTO_1]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 RETURN                           R5 1

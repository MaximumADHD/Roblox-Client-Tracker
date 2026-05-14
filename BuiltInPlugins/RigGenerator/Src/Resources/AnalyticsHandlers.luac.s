PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K5 [{"studioSid", "clientId", "placeId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K6 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K7 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R4 K9 [game]
       25 GETTABLEKS                       R4 R4 K10 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 1
       32 LOADK                            R5 K11 ["studio"]
       33 LOADK                            R6 K12 ["RigGenerator"]
       34 MOVE                             R7 R0
       35 MOVE                             R8 R2
       36 NAMECALL                         R3 R3 K13 ["SendEventDeferred"]
       38 CALL                             R3 5 0
       39 RETURN                           R0 0

PROTO_1:
        0 ORK                              R1 R1 K0 [1]
        1 GETUPVAL                         R2 0
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 NAMECALL                         R2 R2 K1 ["ReportCounter"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R3
        1 ORK                              R3 R3 K0 [1]
        2 GETUPVAL                         R4 0
        3 LOADK                            R6 K1 ["AvatarGeneratorRigInsert"]
        4 MOVE                             R7 R3
        5 NAMECALL                         R4 R4 K2 ["ReportCounter"]
        7 CALL                             R4 3 0
        8 GETUPVAL                         R3 1
        9 LOADK                            R4 K3 ["Rig Generated"]
       10 DUPTABLE                         R5 K7 [{"rigName", "rigType", "bodyShape"}]
       11 SETTABLEKS                       R0 R5 K4 ["rigName"]
       13 GETTABLEKS                       R6 R1 K8 ["Name"]
       15 SETTABLEKS                       R6 R5 K5 ["rigType"]
       17 SETTABLEKS                       R2 R5 K6 ["bodyShape"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["AvatarGeneratorMenuOpen"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["ReportCounter"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["AvatarGeneratorMenuClose"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["ReportCounter"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R0
        1 ORK                              R0 R0 K0 [1]
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K1 ["AvatarGeneratorMenuCloseManual"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["ReportCounter"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 DUPTABLE                         R3 K4 [{"rigInsert", "menuOpen", "menuClose", "menuCloseManual"}]
        6 NEWCLOSURE                       R4 P2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R4 R3 K0 ["rigInsert"]
       11 NEWCLOSURE                       R4 P3
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R4 R3 K1 ["menuOpen"]
       15 NEWCLOSURE                       R4 P4
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R4 R3 K2 ["menuClose"]
       19 NEWCLOSURE                       R4 P5
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R4 R3 K3 ["menuCloseManual"]
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_6]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1

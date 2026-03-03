PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["responseBody"]
        2 GETTABLEKS                       R1 R2 K1 ["groups"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Reimport failed to get groups: "]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K4 [tostring]
        7 CALL                             R4 1 1
        8 CONCAT                           R2 R3 R4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 NEWTABLE                         R2 0 0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["APIS"]
        3 GETTABLEKS                       R3 R4 K1 ["CreatorHomeApi"]
        5 GETTABLEKS                       R2 R3 K2 ["V1"]
        7 GETTABLEKS                       R1 R2 K3 ["groups"]
        9 LOADK                            R2 K4 ["StudioAssetManager"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R2 R1 K5 ["makeRequest"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R4 K6 [PROTO_0]
       15 NAMECALL                         R2 R2 K7 ["andThen"]
       17 CALL                             R2 2 1
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          VAL R0
       20 NEWCLOSURE                       R5 P2
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R2 R2 K7 ["andThen"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 1
        1 GETTABLEKS                       R2 R3 K0 ["RobloxAPI"]
        3 GETTABLEKS                       R1 R2 K1 ["new"]
        5 DUPTABLE                         R2 K3 [{"networking"}]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K4 ["Http"]
        9 GETTABLEKS                       R4 R5 K5 ["Networking"]
       11 GETTABLEKS                       R3 R4 K6 ["mock"]
       13 DUPTABLE                         R4 K8 [{"onRequest"}]
       14 SETTABLEKS                       R0 R4 K7 ["onRequest"]
       16 CALL                             R3 1 1
       17 SETTABLEKS                       R3 R2 K2 ["networking"]
       19 CALL                             R1 1 1
       20 SETUPVAL                         R1 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Networking"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["RobloxAPI"]
       16 GETTABLEKS                       R2 R3 K9 ["new"]
       18 CALL                             R2 0 1
       19 MOVE                             R3 R2
       20 NEWTABLE                         R4 4 0
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          REF R3
       24 SETTABLEKS                       R5 R4 K10 ["getGroupsAsync"]
       26 NEWCLOSURE                       R5 P1
       27 CAPTURE                          REF R3
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R5 R4 K11 ["reset"]
       31 NEWCLOSURE                       R5 P2
       32 CAPTURE                          REF R3
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R5 R4 K12 ["mock"]
       36 CLOSEUPVALS                      R3
       37 RETURN                           R4 1

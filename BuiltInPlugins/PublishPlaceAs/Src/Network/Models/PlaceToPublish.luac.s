PROTO_0:
        0 DUPTABLE                         R0 K4 [{"placeId", "universeId", "name", "description"}]
        1 LOADK                            R1 K5 [3262491642]
        2 SETTABLEKS                       R1 R0 K0 ["placeId"]
        4 LOADK                            R1 K6 [1177385430]
        5 SETTABLEKS                       R1 R0 K1 ["universeId"]
        7 LOADK                            R1 K7 ["test place to publish"]
        8 SETTABLEKS                       R1 R0 K2 ["name"]
       10 LOADK                            R1 K8 ["MOCK_DESCRIPTION"]
       11 SETTABLEKS                       R1 R0 K3 ["description"]
       13 RETURN                           R0 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADK                            R2 K0 ["Invalid data to PlaceToPublish"]
        3 RETURN                           R1 2
        4 GETTABLEKS                       R2 R0 K1 ["id"]
        6 FASTCALL1                        TYPE R2 ; [+2]
        7 GETIMPORT                        R1 K3 [type]
        9 CALL                             R1 1 1
       10 JUMPIFEQKS                       R1 K4 ["number"] ; [+4]
       12 LOADB                            R1 0
       13 LOADK                            R2 K5 ["Place.fromJsonData expects id to be a number"]
       14 RETURN                           R1 2
       15 GETTABLEKS                       R2 R0 K6 ["universeId"]
       17 FASTCALL1                        TYPE R2 ; [+2]
       18 GETIMPORT                        R1 K3 [type]
       20 CALL                             R1 1 1
       21 JUMPIFEQKS                       R1 K4 ["number"] ; [+4]
       23 LOADB                            R1 0
       24 LOADK                            R2 K7 ["Place.fromJsonData expects universeId to be a number"]
       25 RETURN                           R1 2
       26 GETTABLEKS                       R2 R0 K8 ["name"]
       28 FASTCALL1                        TYPE R2 ; [+2]
       29 GETIMPORT                        R1 K3 [type]
       31 CALL                             R1 1 1
       32 JUMPIFEQKS                       R1 K9 ["string"] ; [+4]
       34 LOADB                            R1 0
       35 LOADK                            R2 K10 ["Place.fromJsonData expects name to be a string"]
       36 RETURN                           R1 2
       37 GETTABLEKS                       R2 R0 K11 ["description"]
       39 FASTCALL1                        TYPE R2 ; [+2]
       40 GETIMPORT                        R1 K3 [type]
       42 CALL                             R1 1 1
       43 JUMPIFEQKS                       R1 K9 ["string"] ; [+4]
       45 LOADB                            R1 0
       46 LOADK                            R2 K12 ["Place.fromJsonData expects description to be a string"]
       47 RETURN                           R1 2
       48 LOADB                            R1 1
       49 DUPTABLE                         R2 K14 [{"name", "placeId", "universeId", "description"}]
       50 GETTABLEKS                       R3 R0 K8 ["name"]
       52 SETTABLEKS                       R3 R2 K8 ["name"]
       54 GETTABLEKS                       R3 R0 K1 ["id"]
       56 SETTABLEKS                       R3 R2 K13 ["placeId"]
       58 GETTABLEKS                       R3 R0 K6 ["universeId"]
       60 SETTABLEKS                       R3 R2 K6 ["universeId"]
       62 GETTABLEKS                       R3 R0 K11 ["description"]
       64 SETTABLEKS                       R3 R2 K11 ["description"]
       66 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["mock"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["fromJsonData"]
        9 RETURN                           R0 1

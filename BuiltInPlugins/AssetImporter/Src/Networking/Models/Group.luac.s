PROTO_0:
        0 DUPTABLE                         R0 K2 [{"id", "name"}]
        1 LOADK                            R1 K3 [13370420]
        2 SETTABLEKS                       R1 R0 K0 ["id"]
        4 LOADK                            R1 K4 ["RobloxLovers"]
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 FASTCALL1                        TYPE R2 ; [+2]
        3 GETIMPORT                        R1 K2 [type]
        5 CALL                             R1 1 1
        6 JUMPIFEQKS                       R1 K3 ["number"] ; [+4]
        8 LOADB                            R1 0
        9 LOADK                            R2 K4 ["Group.fromJsonData expects id to be a number"]
       10 RETURN                           R1 2
       11 GETTABLEKS                       R2 R0 K5 ["name"]
       13 FASTCALL1                        TYPE R2 ; [+2]
       14 GETIMPORT                        R1 K2 [type]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K6 ["string"] ; [+4]
       19 LOADB                            R1 0
       20 LOADK                            R2 K7 ["Group.fromJsonData expects name to be a string"]
       21 RETURN                           R1 2
       22 LOADB                            R1 1
       23 DUPTABLE                         R2 K8 [{"name", "id"}]
       24 GETTABLEKS                       R3 R0 K5 ["name"]
       26 SETTABLEKS                       R3 R2 K5 ["name"]
       28 GETTABLEKS                       R3 R0 K0 ["id"]
       30 SETTABLEKS                       R3 R2 K0 ["id"]
       32 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 2 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["mock"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K11 ["fromJsonData"]
       22 RETURN                           R2 1

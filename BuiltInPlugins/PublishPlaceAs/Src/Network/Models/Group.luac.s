PROTO_0:
        0 DUPTABLE                         R0 K2 [{"groupId", "name"}]
        1 LOADK                            R1 K3 [12341234]
        2 SETTABLEKS                       R1 R0 K0 ["groupId"]
        4 LOADK                            R1 K4 ["yeet"]
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
       23 DUPTABLE                         R2 K9 [{"name", "groupId"}]
       24 GETTABLEKS                       R3 R0 K5 ["name"]
       26 SETTABLEKS                       R3 R2 K5 ["name"]
       28 GETTABLEKS                       R3 R0 K0 ["id"]
       30 SETTABLEKS                       R3 R2 K8 ["groupId"]
       32 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["mock"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["fromJsonData"]
        9 RETURN                           R0 1

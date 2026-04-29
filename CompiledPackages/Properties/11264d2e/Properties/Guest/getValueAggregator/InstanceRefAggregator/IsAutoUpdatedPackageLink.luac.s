PROTO_0:
        0 LOADK                            R3 K0 ["PackageLink"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLEKS                       R1 R0 K2 ["AutoUpdate"]
        7 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["PackageLink"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 DUPCLOSURE                       R2 K2 [PROTO_1]
        6 RETURN                           R2 1
        7 LOADK                            R4 K3 ["AutoUpdate"]
        8 NAMECALL                         R2 R0 K4 ["GetPropertyChangedSignal"]
       10 CALL                             R2 2 1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K5 ["Connect"]
       14 CALL                             R2 2 1
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R2
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["FieldTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K8 [{"getValue", "watch"}]
       11 DUPCLOSURE                       R2 K9 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K6 ["getValue"]
       14 DUPCLOSURE                       R2 K10 [PROTO_3]
       15 SETTABLEKS                       R2 R1 K7 ["watch"]
       17 RETURN                           R1 1

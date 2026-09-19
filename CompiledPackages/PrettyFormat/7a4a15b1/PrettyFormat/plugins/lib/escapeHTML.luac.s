PROTO_0:
        0 LOADK                            R3 K0 ["<"]
        1 LOADK                            R4 K1 ["&lt;"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R3 K3 [">"]
        6 LOADK                            R4 K4 ["&gt;"]
        7 NAMECALL                         R1 R1 K2 ["gsub"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["default"]
        6 RETURN                           R0 1

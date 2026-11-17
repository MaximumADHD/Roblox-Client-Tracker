PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQ                         R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["find"]
        7 MOVE                             R3 R0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 2 1
       11 JUMPIFEQ                         R2 R1 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Dash"]
       18 CALL                             R3 1 1
       19 DUPTABLE                         R4 K13 [{["Invalid"] = "Invalid", ["Ad"] = "Ad", ["MaterialPack"] = "MaterialPack", ["Package"] = "Package"}]
       20 DUPCLOSURE                       R5 K14 [PROTO_1]
       21 CAPTURE                          VAL R3
       22 SETTABLEKS                       R5 R4 K15 ["contains"]
       24 RETURN                           R4 1

PROTO_0:
        0 LOADB                            R1 1
        1 JUMPIFEQKS                       R0 K0 ["Animation"] ; [+5]
        3 JUMPIFEQKS                       R0 K1 ["AnimationGraph"] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 RETURN                           R2 1

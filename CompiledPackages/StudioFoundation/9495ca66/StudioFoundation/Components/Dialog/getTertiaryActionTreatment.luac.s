PROTO_0:
        0 DUPTABLE                         R2 K2 [{"isIsolated", "variant"}]
        1 LOADB                            R3 0
        2 JUMPIFEQKNIL                     R0 ; [+8]
        4 LOADB                            R3 1
        5 JUMPIFEQKS                       R1 K3 ["Link"] ; [+5]
        7 JUMPIFEQKS                       R1 K4 ["Alert"] ; [+2]
        9 LOADB                            R3 0 +1
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K0 ["isIsolated"]
       13 MOVE                             R3 R1
       14 JUMPIF                           R3 ; [+7]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K5 ["Enums"]
       18 GETTABLEKS                       R3 R3 K6 ["ButtonVariant"]
       20 GETTABLEKS                       R3 R3 K7 ["Standard"]
       22 SETTABLEKS                       R3 R2 K1 ["variant"]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Types"]
       18 CALL                             R3 1 1
       19 DUPCLOSURE                       R4 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R4 1

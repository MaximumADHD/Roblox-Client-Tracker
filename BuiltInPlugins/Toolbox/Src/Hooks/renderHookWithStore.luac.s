PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["current"]
        6 LOADNIL                          R1
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 JUMPIFEQKNIL                     R2 ; [+16]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["createElement"]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["StoreProvider"]
       15 DUPTABLE                         R4 K3 [{"store"}]
       16 GETUPVAL                         R5 2
       17 SETTABLEKS                       R5 R4 K2 ["store"]
       19 DUPTABLE                         R5 K5 [{"Wrapper"}]
       20 SETTABLEKS                       R1 R5 K4 ["Wrapper"]
       22 CALL                             R2 3 1
       23 MOVE                             R1 R2
       24 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 JUMPIF                           R3 ; [+2]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R2 1 1
        7 NAMECALL                         R0 R0 K0 ["render"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 1
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R3 1 0
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R1
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 GETIMPORT                        R6 K2 [Instance.new]
       12 LOADK                            R7 K3 ["Frame"]
       13 CALL                             R6 1 1
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K4 ["createRoot"]
       17 MOVE                             R8 R6
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 3
       20 NEWCLOSURE                       R9 P2
       21 CAPTURE                          VAL R7
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R2
       24 CALL                             R8 1 0
       25 NEWCLOSURE                       R8 P3
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R7
       28 CAPTURE                          VAL R5
       29 NEWCLOSURE                       R9 P4
       30 CAPTURE                          VAL R7
       31 DUPTABLE                         R10 K8 [{"result", "rerender", "cleanup"}]
       32 SETTABLEKS                       R3 R10 K5 ["result"]
       34 SETTABLEKS                       R8 R10 K6 ["rerender"]
       36 SETTABLEKS                       R9 R10 K7 ["cleanup"]
       38 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactRodux"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["act"]
       30 DUPCLOSURE                       R5 K11 [PROTO_6]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1

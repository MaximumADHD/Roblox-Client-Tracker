PROTO_0:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLE                         R7 R1 R5
       11 JUMPIFEQ                         R7 R6 ; [+3]
       13 LOADB                            R7 0
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-6]
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_1:
        0 LENGTH                           R3 R1
        1 LENGTH                           R4 R0
        2 SUB                              R2 R3 R4
        3 LOADN                            R3 0
        4 JUMPIFNOTLE                      R2 R3 ; [+3]
        6 LOADB                            R3 0
        7 RETURN                           R3 1
        8 MOVE                             R3 R0
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 ADD                              R9 R2 R6
       13 GETTABLE                         R8 R1 R9
       14 JUMPIFEQ                         R8 R7 ; [+3]
       16 LOADB                            R8 0
       17 RETURN                           R8 1
       18 FORGLOOP                         R3 2 ; [-7]
       20 LOADB                            R3 1
       21 RETURN                           R3 1

PROTO_2:
        0 LENGTH                           R3 R0
        1 LENGTH                           R4 R1
        2 JUMPIFEQ                         R3 R4 ; [+3]
        4 LOADB                            R2 0
        5 JUMP                             ; [+12]
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLE                         R8 R1 R6
       11 JUMPIFEQ                         R8 R7 ; [+3]
       13 LOADB                            R2 0
       14 JUMP                             ; [+3]
       15 FORGLOOP                         R3 2 ; [-6]
       17 LOADB                            R2 1
       18 JUMPIFNOT                        R2 ; [+7]
       19 DUPTABLE                         R2 K1 [{"kind"}]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K2 ["Keep"]
       23 SETTABLEKS                       R3 R2 K0 ["kind"]
       25 RETURN                           R2 1
       26 LENGTH                           R4 R1
       27 LENGTH                           R5 R0
       28 SUB                              R3 R4 R5
       29 LOADN                            R4 0
       30 JUMPIFNOTLE                      R3 R4 ; [+3]
       32 LOADB                            R2 0
       33 JUMP                             ; [+13]
       34 MOVE                             R4 R0
       35 LOADNIL                          R5
       36 LOADNIL                          R6
       37 FORGPREP                         R4
       38 ADD                              R10 R3 R7
       39 GETTABLE                         R9 R1 R10
       40 JUMPIFEQ                         R9 R8 ; [+3]
       42 LOADB                            R2 0
       43 JUMP                             ; [+3]
       44 FORGLOOP                         R4 2 ; [-7]
       46 LOADB                            R2 1
       47 JUMPIFNOT                        R2 ; [+12]
       48 DUPTABLE                         R2 K4 [{"kind", "by"}]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R3 R3 K5 ["Shift"]
       52 SETTABLEKS                       R3 R2 K0 ["kind"]
       54 LENGTH                           R4 R1
       55 LENGTH                           R5 R0
       56 SUB                              R3 R4 R5
       57 SETTABLEKS                       R3 R2 K3 ["by"]
       59 RETURN                           R2 1
       60 DUPTABLE                         R2 K1 [{"kind"}]
       61 GETUPVAL                         R3 0
       62 GETTABLEKS                       R3 R3 K6 ["Reset"]
       64 SETTABLEKS                       R3 R2 K0 ["kind"]
       66 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1] = "keep", ["Shift"] = "shift", ["Reset"] = "reset"}]
        2 DUPCLOSURE                       R1 K7 [PROTO_0]
        3 DUPCLOSURE                       R2 K8 [PROTO_1]
        4 DUPCLOSURE                       R3 K9 [PROTO_2]
        5 CAPTURE                          VAL R0
        6 DUPTABLE                         R4 K12 [{"reconcile", "Kind"}]
        7 SETTABLEKS                       R3 R4 K10 ["reconcile"]
        9 SETTABLEKS                       R0 R4 K11 ["Kind"]
       11 RETURN                           R4 1

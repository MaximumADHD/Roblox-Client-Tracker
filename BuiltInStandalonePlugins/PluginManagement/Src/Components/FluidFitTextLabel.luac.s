PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["state"]
        3 GETTABLEKS                       R1 R2 K1 ["frameWidth"]
        5 GETTABLEKS                       R3 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R3 K3 ["X"]
        9 JUMPIFEQ                         R1 R2 ; [+12]
       11 GETUPVAL                         R1 0
       12 DUPTABLE                         R3 K4 [{"frameWidth"}]
       13 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
       15 GETTABLEKS                       R4 R5 K3 ["X"]
       17 SETTABLEKS                       R4 R3 K1 ["frameWidth"]
       19 NAMECALL                         R1 R1 K5 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"frameWidth"}]
        1 LOADN                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["frameWidth"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["resizeContainer"]
       10 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["LayoutOrder"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["Dictionary"]
        7 GETTABLEKS                       R2 R3 K3 ["join"]
        9 GETTABLEKS                       R3 R0 K0 ["props"]
       11 DUPTABLE                         R4 K6 [{"maximumWidth", "width"}]
       12 GETTABLEKS                       R6 R0 K7 ["state"]
       14 GETTABLEKS                       R5 R6 K8 ["frameWidth"]
       16 SETTABLEKS                       R5 R4 K4 ["maximumWidth"]
       18 GETIMPORT                        R5 K11 [UDim.new]
       20 LOADN                            R6 1
       21 LOADN                            R7 0
       22 CALL                             R5 2 1
       23 SETTABLEKS                       R5 R4 K5 ["width"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K12 ["createElement"]
       29 GETUPVAL                         R4 2
       30 NEWTABLE                         R5 4 0
       32 LOADN                            R6 1
       33 SETTABLEKS                       R6 R5 K13 ["BackgroundTransparency"]
       35 SETTABLEKS                       R1 R5 K1 ["LayoutOrder"]
       37 GETIMPORT                        R6 K11 [UDim.new]
       39 LOADN                            R7 1
       40 LOADN                            R8 0
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R5 K5 ["width"]
       44 GETUPVAL                         R8 1
       45 GETTABLEKS                       R7 R8 K14 ["Change"]
       47 GETTABLEKS                       R6 R7 K15 ["AbsoluteSize"]
       49 GETTABLEKS                       R7 R0 K16 ["resizeContainer"]
       51 SETTABLE                         R7 R5 R6
       52 DUPTABLE                         R6 K18 [{"Text"}]
       53 GETUPVAL                         R8 1
       54 GETTABLEKS                       R7 R8 K12 ["createElement"]
       56 GETUPVAL                         R8 3
       57 MOVE                             R9 R2
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K17 ["Text"]
       61 CALL                             R3 3 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["FitFrame"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["FitFrameVertical"]
       32 GETTABLEKS                       R5 R3 K10 ["FitTextLabel"]
       34 GETTABLEKS                       R6 R2 K11 ["Component"]
       36 LOADK                            R8 K12 ["FluidFitTextLabel"]
       37 NAMECALL                         R6 R6 K13 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K14 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K15 ["init"]
       43 DUPCLOSURE                       R7 K16 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R7 R6 K17 ["render"]
       50 RETURN                           R6 1

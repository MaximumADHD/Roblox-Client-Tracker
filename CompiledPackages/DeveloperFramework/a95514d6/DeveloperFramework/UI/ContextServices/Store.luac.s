PROTO_0:
        0 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 ["Store.new: Expected a Rodux store."]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 DUPTABLE                         R1 K4 [{"store"}]
        8 SETTABLEKS                       R0 R1 K3 ["store"]
       10 GETUPVAL                         R4 0
       11 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       13 MOVE                             R3 R1
       14 GETIMPORT                        R2 K6 [setmetatable]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["StoreProvider"]
        6 DUPTABLE                         R4 K3 [{"store"}]
        7 GETTABLEKS                       R5 R0 K2 ["store"]
        9 SETTABLEKS                       R5 R4 K2 ["store"]
       11 MOVE                             R5 R1
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R6 R0 K2 ["UI"]
       27 GETTABLEKS                       R5 R6 K9 ["ContextServices"]
       29 GETTABLEKS                       R4 R5 K10 ["ContextItem"]
       31 CALL                             R3 1 1
       32 LOADK                            R6 K11 ["Store"]
       33 NAMECALL                         R4 R3 K12 ["extend"]
       35 CALL                             R4 2 1
       36 DUPCLOSURE                       R5 K13 [PROTO_0]
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R5 R4 K14 ["new"]
       40 DUPCLOSURE                       R5 K15 [PROTO_1]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R5 R4 K16 ["getProvider"]
       45 RETURN                           R4 1

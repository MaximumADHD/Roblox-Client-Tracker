PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Listener", "FocusedElement", "FocusedElementChangedSignal"}]
        1 GETIMPORT                        R1 K6 [Instance.new]
        3 LOADK                            R2 K7 ["Frame"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["Listener"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["FocusedElement"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K8 ["Event"]
       13 SETTABLEKS                       R1 R0 K2 ["FocusedElementChangedSignal"]
       15 GETTABLEKS                       R1 R0 K0 ["Listener"]
       17 GETIMPORT                        R2 K11 [UDim2.fromScale]
       19 LOADN                            R3 1
       20 LOADN                            R4 1
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R1 K12 ["Size"]
       24 GETTABLEKS                       R1 R0 K0 ["Listener"]
       26 LOADN                            R2 1
       27 SETTABLEKS                       R2 R1 K13 ["BackgroundTransparency"]
       29 GETUPVAL                         R3 1
       30 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K15 [setmetatable]
       35 CALL                             R1 2 0
       36 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Listener"]
        2 GETTABLEKS                       R2 R2 K1 ["Parent"]
        4 JUMPIFEQ                         R2 R1 ; [+5]
        6 GETTABLEKS                       R2 R0 K0 ["Listener"]
        8 SETTABLEKS                       R1 R2 K1 ["Parent"]
       10 RETURN                           R0 0

PROTO_2:
        0 SETTABLEKS                       R1 R0 K0 ["FocusedElement"]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["Fire"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["FocusedElement"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R2 K9 ["ContextItem"]
       18 LOADK                            R5 K10 ["MouseListenerContext"]
       19 NAMECALL                         R3 R2 K11 ["extend"]
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K14 [Instance.new]
       24 LOADK                            R5 K15 ["BindableEvent"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K16 [PROTO_0]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R5 R3 K13 ["new"]
       31 DUPCLOSURE                       R5 K17 [PROTO_1]
       32 SETTABLEKS                       R5 R3 K18 ["setFocus"]
       34 DUPCLOSURE                       R5 K19 [PROTO_2]
       35 CAPTURE                          VAL R4
       36 SETTABLEKS                       R5 R3 K20 ["SetFocusedElement"]
       38 DUPCLOSURE                       R5 K21 [PROTO_3]
       39 SETTABLEKS                       R5 R3 K22 ["GetFocusedElement"]
       41 RETURN                           R3 1

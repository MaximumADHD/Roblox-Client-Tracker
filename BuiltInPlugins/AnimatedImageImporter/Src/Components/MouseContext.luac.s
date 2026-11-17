PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"isLeftMouseDown", "setLeftMouseDown"}]
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["isLeftMouseDown"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["setLeftMouseDown"]
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 0
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["createElement"]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K3 ["Provider"]
       19 DUPTABLE                         R5 K5 [{"value"}]
       20 SETTABLEKS                       R2 R5 K4 ["value"]
       22 GETTABLEKS                       R6 R0 K6 ["children"]
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["setLeftMouseDown"]
        9 LOADB                            R3 1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["setLeftMouseDown"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useCallback"]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R3 0 1
       12 MOVE                             R4 R0
       13 SETLIST                          R3 R4 1 [1]
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K1 ["useCallback"]
       19 NEWCLOSURE                       R3 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R4 0 1
       23 MOVE                             R5 R0
       24 SETLIST                          R4 R5 1 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K2 ["createElement"]
       30 LOADK                            R4 K3 ["Frame"]
       31 NEWTABLE                         R5 8 0
       33 LOADB                            R6 0
       34 SETTABLEKS                       R6 R5 K4 ["Active"]
       36 LOADN                            R6 1
       37 SETTABLEKS                       R6 R5 K5 ["BackgroundTransparency"]
       39 GETIMPORT                        R6 K8 [UDim2.fromScale]
       41 LOADN                            R7 1
       42 LOADN                            R8 1
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K9 ["Size"]
       46 LOADK                            R6 K10 [1000000]
       47 SETTABLEKS                       R6 R5 K11 ["ZIndex"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K12 ["Event"]
       52 GETTABLEKS                       R6 R6 K13 ["InputBegan"]
       54 SETTABLE                         R1 R5 R6
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K12 ["Event"]
       58 GETTABLEKS                       R6 R6 K14 ["InputEnded"]
       60 SETTABLE                         R2 R5 R6
       61 CALL                             R3 2 -1
       62 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{"isLeftMouseDown", "setLeftMouseDown"}]
       15 DUPCLOSURE                       R3 K11 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K8 ["isLeftMouseDown"]
       18 DUPCLOSURE                       R3 K12 [PROTO_1]
       19 SETTABLEKS                       R3 R2 K9 ["setLeftMouseDown"]
       21 GETTABLEKS                       R3 R1 K13 ["createContext"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 LOADK                            R4 K14 ["MouseContext"]
       26 SETTABLEKS                       R4 R3 K15 ["displayName"]
       28 DUPCLOSURE                       R4 K16 [PROTO_5]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 DUPCLOSURE                       R5 K17 [PROTO_8]
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 DUPTABLE                         R6 K21 [{"Context", "Provider", "Tracker"}]
       35 SETTABLEKS                       R3 R6 K18 ["Context"]
       37 SETTABLEKS                       R4 R6 K19 ["Provider"]
       39 SETTABLEKS                       R5 R6 K20 ["Tracker"]
       41 RETURN                           R6 1

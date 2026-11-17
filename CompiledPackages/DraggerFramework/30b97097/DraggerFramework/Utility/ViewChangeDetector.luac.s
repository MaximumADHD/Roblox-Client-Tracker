PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 DUPTABLE                         R3 K5 [{"_mouse", "_lastCameraCFrame", "_lastMouseX", "_lastMouseY"}]
        4 SETTABLEKS                       R0 R3 K1 ["_mouse"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R4 R1 K6 ["CFrame"]
        9 JUMPIF                           R4 ; [+3]
       10 GETIMPORT                        R4 K8 [CFrame.new]
       12 CALL                             R4 0 1
       13 SETTABLEKS                       R4 R3 K2 ["_lastCameraCFrame"]
       15 GETTABLEKS                       R4 R0 K9 ["X"]
       17 SETTABLEKS                       R4 R3 K3 ["_lastMouseX"]
       19 GETTABLEKS                       R4 R0 K10 ["Y"]
       21 SETTABLEKS                       R4 R3 K4 ["_lastMouseY"]
       23 GETUPVAL                         R4 1
       24 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       26 GETIMPORT                        R2 K12 [setmetatable]
       28 CALL                             R2 2 1
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentCamera"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K1 ["_mouse"]
        8 GETTABLEKS                       R3 R0 K2 ["_lastCameraCFrame"]
       10 GETTABLEKS                       R4 R1 K3 ["CFrame"]
       12 JUMPIFNOTEQ                      R3 R4 ; [+13]
       14 GETTABLEKS                       R3 R0 K4 ["_lastMouseX"]
       16 GETTABLEKS                       R4 R2 K5 ["X"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+7]
       20 GETTABLEKS                       R3 R0 K6 ["_lastMouseY"]
       22 GETTABLEKS                       R4 R2 K7 ["Y"]
       24 JUMPIFEQ                         R3 R4 ; [+15]
       26 GETTABLEKS                       R3 R1 K3 ["CFrame"]
       28 SETTABLEKS                       R3 R0 K2 ["_lastCameraCFrame"]
       30 GETTABLEKS                       R3 R2 K5 ["X"]
       32 SETTABLEKS                       R3 R0 K4 ["_lastMouseX"]
       34 GETTABLEKS                       R3 R2 K7 ["Y"]
       36 SETTABLEKS                       R3 R0 K6 ["_lastMouseY"]
       38 LOADB                            R3 1
       39 RETURN                           R3 1
       40 LOADB                            R3 0
       41 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 4 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 SETTABLEKS                       R2 R1 K6 ["new"]
       16 DUPCLOSURE                       R2 K7 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K8 ["poll"]
       20 RETURN                           R1 1

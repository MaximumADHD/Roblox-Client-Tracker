PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CurrentCamera"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CurrentCamera"]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["Workspace"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 NEWTABLE                         R2 4 0
       15 SETTABLEKS                       R2 R2 K7 ["__index"]
       17 DUPCLOSURE                       R3 K8 [PROTO_0]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K9 ["new"]
       22 DUPCLOSURE                       R3 K10 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K11 ["poll"]
       26 RETURN                           R2 1

PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Mirrored", "Sharp"}]
        1 GETTABLEKS                       R3 R0 K3 ["LeftTangent"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R5 R0 K4 ["RightTangent"]
        6 CALL                             R4 1 1
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K0 ["Mirrored"]
       13 LOADB                            R2 1
       14 GETTABLEKS                       R3 R0 K3 ["LeftTangent"]
       16 GETIMPORT                        R4 K7 [UDim2.new]
       18 CALL                             R4 0 1
       19 JUMPIFEQ                         R3 R4 ; [+10]
       21 GETTABLEKS                       R3 R0 K4 ["RightTangent"]
       23 GETIMPORT                        R4 K7 [UDim2.new]
       25 CALL                             R4 0 1
       26 JUMPIFEQ                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 SETTABLEKS                       R2 R1 K1 ["Sharp"]
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PathEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["getUDim2Inverse"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K10 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1

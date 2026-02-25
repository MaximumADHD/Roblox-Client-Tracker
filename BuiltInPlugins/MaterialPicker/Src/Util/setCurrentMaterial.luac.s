PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 JUMPIFNOT                        R3 ; [+10]
        4 MOVE                             R6 R2
        5 FASTCALL1                        TOSTRING R3 ; [+3]
        6 MOVE                             R8 R3
        7 GETIMPORT                        R7 K1 [tostring]
        9 CALL                             R7 1 1
       10 NAMECALL                         R4 R1 K2 ["SetCurrentMaterial"]
       12 CALL                             R4 3 0
       13 RETURN                           R0 0
       14 MOVE                             R6 R2
       15 LOADK                            R7 K3 [""]
       16 NAMECALL                         R4 R1 K2 ["SetCurrentMaterial"]
       18 CALL                             R4 3 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R3 K9 ["parseMaterial"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

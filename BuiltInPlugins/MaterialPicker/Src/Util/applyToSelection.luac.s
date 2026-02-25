PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R5 R0
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFNOTEQKS                    R4 K2 ["Instance"] ; [+11]
        9 LOADK                            R6 K3 ["MaterialVariant"]
       10 NAMECALL                         R4 R0 K4 ["IsA"]
       12 CALL                             R4 2 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETTABLEKS                       R3 R0 K5 ["BaseMaterial"]
       16 GETTABLEKS                       R2 R0 K6 ["Name"]
       18 JUMP                             ; [+1]
       19 MOVE                             R3 R0
       20 NAMECALL                         R4 R1 K7 ["Get"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 MOVE                             R6 R4
       25 MOVE                             R7 R3
       26 MOVE                             R8 R2
       27 CALL                             R5 3 0
       28 RETURN                           R0 0

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
       16 GETTABLEKS                       R2 R3 K9 ["applyToInstances"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

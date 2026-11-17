PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getHandle"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LOADK                            R4 K1 ["BaseWrap"]
        9 NAMECALL                         R2 R1 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R2 2 1
       12 JUMPIFNOT                        R2 ; [+10]
       13 LOADK                            R5 K3 ["WrapLayer"]
       14 NAMECALL                         R3 R2 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 JUMPIFNOT                        R3 ; [+5]
       18 GETTABLEKS                       R3 R2 K5 ["ReferenceMeshId"]
       20 JUMPIFEQKS                       R3 K6 [""] ; [+2]
       22 RETURN                           R1 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getHandle"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+2]
        6 LOADNIL                          R2
        7 JUMP                             ; [+17]
        8 LOADK                            R6 K1 ["BaseWrap"]
        9 NAMECALL                         R4 R3 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R4 2 1
       12 JUMPIFNOT                        R4 ; [+11]
       13 LOADK                            R7 K3 ["WrapLayer"]
       14 NAMECALL                         R5 R4 K4 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+6]
       18 GETTABLEKS                       R5 R4 K5 ["ReferenceMeshId"]
       20 JUMPIFEQKS                       R5 K6 [""] ; [+3]
       22 MOVE                             R2 R3
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 JUMPIFNOT                        R2 ; [+5]
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R0 K7 ["createMannequinForClothing"]
       29 CALL                             R3 2 -1
       30 RETURN                           R3 -1
       31 NAMECALL                         R3 R0 K8 ["createMannequinModel"]
       33 CALL                             R3 1 -1
       34 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["AvatarToolsShared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R2 R2 K8 ["AccessoryAndBodyToolShared"]
       20 GETTABLEKS                       R2 R2 K9 ["ItemCharacteristics"]
       22 DUPCLOSURE                       R3 K10 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 DUPCLOSURE                       R4 K11 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 RETURN                           R4 1

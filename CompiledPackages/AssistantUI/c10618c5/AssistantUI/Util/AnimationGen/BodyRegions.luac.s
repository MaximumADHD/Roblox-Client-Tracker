PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIFEQKNIL                     R1 ; [+16]
        3 LOADK                            R4 K0 ["Pose"]
        4 NAMECALL                         R2 R1 K1 ["IsA"]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R4 R1 K2 ["Name"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADK                            R2 K3 ["upper"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R1 R1 K4 ["Parent"]
       17 JUMPBACK                         ; [-17]
       18 LOADK                            R2 K5 ["lower"]
       19 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R2 K1 ["GetDescendants"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K2 ["Pose"]
        8 NAMECALL                         R8 R7 K3 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+10]
       12 GETUPVAL                         R8 0
       13 GETTABLEKS                       R8 R8 K4 ["ofPose"]
       15 MOVE                             R9 R7
       16 CALL                             R8 1 1
       17 JUMPIFEQ                         R8 R1 ; [+4]
       19 LOADN                            R8 0
       20 SETTABLEKS                       R8 R7 K5 ["Weight"]
       22 FORGLOOP                         R3 2 ; [-16]
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K9 [{[1] = True, ["Head"] = True, ["LeftUpperArm"] = True, ["LeftLowerArm"] = True, ["LeftHand"] = True, ["RightUpperArm"] = True, ["RightLowerArm"] = True, ["RightHand"] = True}]
        4 DUPCLOSURE                       R2 K10 [PROTO_0]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K11 ["ofPose"]
        8 DUPCLOSURE                       R2 K12 [PROTO_1]
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K13 ["mask"]
       12 RETURN                           R0 1

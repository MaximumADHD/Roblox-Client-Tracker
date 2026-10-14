PROTO_0:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 NAMECALL                         R3 R0 K0 ["GetDescendants"]
        4 CALL                             R3 1 3
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K1 ["Name"]
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R8
       10 JUMPIFNOT                        R9 ; [+1]
       11 ADDK                             R1 R1 K2 [1]
       12 GETUPVAL                         R10 1
       13 GETTABLE                         R9 R10 R8
       14 JUMPIFNOT                        R9 ; [+1]
       15 ADDK                             R2 R2 K2 [1]
       16 FORGLOOP                         R3 2 ; [-11]
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R1 ; [+3]
       21 LOADK                            R3 K3 ["R15"]
       22 RETURN                           R3 1
       23 LOADN                            R3 0
       24 JUMPIFNOTLT                      R3 R2 ; [+3]
       26 LOADK                            R3 K4 ["R6"]
       27 RETURN                           R3 1
       28 LOADK                            R3 K3 ["R15"]
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K15 [{[1] = True, ["UpperTorso"] = True, ["LeftUpperArm"] = True, ["LeftLowerArm"] = True, ["LeftHand"] = True, ["RightUpperArm"] = True, ["RightLowerArm"] = True, ["RightHand"] = True, ["LeftUpperLeg"] = True, ["LeftLowerLeg"] = True, ["LeftFoot"] = True, ["RightUpperLeg"] = True, ["RightLowerLeg"] = True, ["RightFoot"] = True}]
        2 NEWTABLE                         R1 8 0
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K16 ["Torso"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K17 ["Left Arm"]
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K18 ["Right Arm"]
       13 LOADB                            R2 1
       14 SETTABLEKS                       R2 R1 K19 ["Left Leg"]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K20 ["Right Leg"]
       19 DUPCLOSURE                       R2 K21 [PROTO_0]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1

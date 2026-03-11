PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.AssetType.LeftArm]
        2 JUMPIFNOTEQ                      R1 R0 ; [+9]
        4 NEWTABLE                         R1 0 3
        6 LOADK                            R2 K4 ["LeftUpperArm"]
        7 LOADK                            R3 K5 ["LeftLowerArm"]
        8 LOADK                            R4 K6 ["LeftHand"]
        9 SETLIST                          R1 R2 3 [1]
       11 RETURN                           R1 1
       12 GETIMPORT                        R1 K8 [Enum.AssetType.RightArm]
       14 JUMPIFNOTEQ                      R1 R0 ; [+9]
       16 NEWTABLE                         R1 0 3
       18 LOADK                            R2 K9 ["RightUpperArm"]
       19 LOADK                            R3 K10 ["RightLowerArm"]
       20 LOADK                            R4 K11 ["RightHand"]
       21 SETLIST                          R1 R2 3 [1]
       23 RETURN                           R1 1
       24 GETIMPORT                        R1 K13 [Enum.AssetType.LeftLeg]
       26 JUMPIFNOTEQ                      R1 R0 ; [+9]
       28 NEWTABLE                         R1 0 3
       30 LOADK                            R2 K14 ["LeftUpperLeg"]
       31 LOADK                            R3 K15 ["LeftLowerLeg"]
       32 LOADK                            R4 K16 ["LeftFoot"]
       33 SETLIST                          R1 R2 3 [1]
       35 RETURN                           R1 1
       36 GETIMPORT                        R1 K18 [Enum.AssetType.RightLeg]
       38 JUMPIFNOTEQ                      R1 R0 ; [+9]
       40 NEWTABLE                         R1 0 3
       42 LOADK                            R2 K19 ["RightUpperLeg"]
       43 LOADK                            R3 K20 ["RightLowerLeg"]
       44 LOADK                            R4 K21 ["RightFoot"]
       45 SETLIST                          R1 R2 3 [1]
       47 RETURN                           R1 1
       48 GETIMPORT                        R1 K23 [Enum.AssetType.DynamicHead]
       50 JUMPIFNOTEQ                      R1 R0 ; [+7]
       52 NEWTABLE                         R1 0 1
       54 LOADK                            R2 K24 ["Head"]
       55 SETLIST                          R1 R2 1 [1]
       57 RETURN                           R1 1
       58 GETIMPORT                        R1 K26 [Enum.AssetType.Torso]
       60 JUMPIFNOTEQ                      R1 R0 ; [+8]
       62 NEWTABLE                         R1 0 2
       64 LOADK                            R2 K27 ["LowerTorso"]
       65 LOADK                            R3 K28 ["UpperTorso"]
       66 SETLIST                          R1 R2 2 [1]
       68 RETURN                           R1 1
       69 LOADB                            R2 0
       70 FASTCALL2K                       ASSERT R2 K29 ; [+4]
       72 LOADK                            R3 K29 ["Invalid asset type"]
       73 GETIMPORT                        R1 K31 [assert]
       75 CALL                             R1 2 0
       76 NEWTABLE                         R1 0 0
       78 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1

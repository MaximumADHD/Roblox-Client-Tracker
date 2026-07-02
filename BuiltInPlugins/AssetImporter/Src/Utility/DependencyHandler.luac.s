PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.NormalId.Top]
        2 JUMPIFEQ                         R0 R1 ; [+5]
        4 GETIMPORT                        R1 K5 [Enum.NormalId.Bottom]
        6 JUMPIFNOTEQ                      R0 R1 ; [+3]
        8 DUPTABLE                         R1 K7 [{["Top"] = True, ["Bottom"] = True}]
        9 RETURN                           R1 1
       10 GETIMPORT                        R1 K9 [Enum.NormalId.Right]
       12 JUMPIFEQ                         R0 R1 ; [+5]
       14 GETIMPORT                        R1 K11 [Enum.NormalId.Left]
       16 JUMPIFNOTEQ                      R0 R1 ; [+3]
       18 DUPTABLE                         R1 K12 [{["Right"] = True, ["Left"] = True}]
       19 RETURN                           R1 1
       20 DUPTABLE                         R1 K15 [{["Front"] = True, ["Back"] = True}]
       21 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 GETUPVAL                         R7 0
        8 MOVE                             R8 R1
        9 GETUPVAL                         R9 1
       10 MOVE                             R10 R6
       11 CALL                             R9 1 1
       12 CALL                             R7 2 0
       13 FORGLOOP                         R2 2 ; [-7]
       15 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 2 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 1
        4 JUMPIF                           R3 ; [+3]
        5 LOADB                            R3 1
        6 SETTABLEKS                       R3 R2 K0 ["CustomHumanoid"]
        8 NAMECALL                         R3 R1 K1 ["IsAvatar"]
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+3]
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K2 ["R15"]
       15 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R4 0
        4 GETTABLE                         R3 R4 R0
        5 MOVE                             R4 R1
        6 MOVE                             R5 R2
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["assign"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Src"]
       20 GETTABLEKS                       R4 R4 K10 ["Flags"]
       22 GETTABLEKS                       R4 R4 K11 ["getFFlagCustomHumanoidEnabled"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_0]
       26 DUPCLOSURE                       R5 K13 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R6 K14 [PROTO_2]
       30 CAPTURE                          VAL R3
       31 DUPTABLE                         R7 K18 [{"WorldForward", "WorldUp", "RigType"}]
       32 SETTABLEKS                       R5 R7 K15 ["WorldForward"]
       34 SETTABLEKS                       R5 R7 K16 ["WorldUp"]
       36 SETTABLEKS                       R6 R7 K17 ["RigType"]
       38 DUPCLOSURE                       R8 K19 [PROTO_3]
       39 CAPTURE                          VAL R7
       40 RETURN                           R8 1

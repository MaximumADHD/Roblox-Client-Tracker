PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["State"]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Tried to update the state without it existing."]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K0 ["State"]
       12 SETTABLEKS                       R0 R1 K4 ["Percent"]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SmoothVoxelsUpgraderService"]
        3 NAMECALL                         R2 R2 K1 ["Start"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K0 ["SmoothVoxelsUpgraderService"]
        9 GETTABLEKS                       R2 R3 K2 ["Status"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R2 R2 K3 ["Connect"]
       15 CALL                             R2 2 0
       16 DUPTABLE                         R2 K5 [{"Percent"}]
       17 LOADN                            R3 0
       18 SETTABLEKS                       R3 R2 K4 ["Percent"]
       20 SETTABLEKS                       R2 R0 K6 ["State"]
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R0 K0 ["State"]
       10 GETUPVAL                         R3 0
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K4 ["Terrain"]
       14 JUMPIFNOT                        R4 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K4 ["Terrain"]
       18 NAMECALL                         R4 R4 K5 ["CanSmoothVoxelsBeUpgraded"]
       20 CALL                             R4 1 1
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R4 R2 K6 ["Percent"]
       24 LOADN                            R5 1
       25 JUMPIFLT                         R4 R5 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 GETTABLEKS                       R4 R2 K6 ["Percent"]
       31 RETURN                           R3 2

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SmoothVoxelsUpgraderService"]
        3 NAMECALL                         R0 R0 K1 ["Cancel"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K2 ["Terrain"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["Terrain"]
       14 NAMECALL                         R1 R1 K3 ["CanSmoothVoxelsBeUpgraded"]
       16 CALL                             R1 1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ChangeHistoryService"]
        3 LOADK                            R2 K1 ["Upgrade Smooth Voxels"]
        4 NAMECALL                         R0 R0 K2 ["SetWaypoint"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["Terrain"]
       11 JUMPIFNOT                        R1 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K3 ["Terrain"]
       15 NAMECALL                         R1 R1 K4 ["CanSmoothVoxelsBeUpgraded"]
       17 CALL                             R1 1 1
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 NEWCLOSURE                       R5 P1
        3 CAPTURE                          VAL R3
        4 CAPTURE                          VAL R2
        5 NEWCLOSURE                       R6 P2
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 NEWCLOSURE                       R7 P3
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 GETUPVAL                         R9 0
       12 GETTABLEKS                       R8 R9 K0 ["new"]
       14 DUPTABLE                         R9 K8 [{"AllowCancel", "Description", "Name", "OnCancel", "OnFinish", "OnStart", "OnStep"}]
       15 LOADB                            R10 1
       16 SETTABLEKS                       R10 R9 K1 ["AllowCancel"]
       18 SETTABLEKS                       R1 R9 K2 ["Description"]
       20 SETTABLEKS                       R0 R9 K3 ["Name"]
       22 SETTABLEKS                       R6 R9 K4 ["OnCancel"]
       24 SETTABLEKS                       R7 R9 K5 ["OnFinish"]
       26 SETTABLEKS                       R4 R9 K6 ["OnStart"]
       28 SETTABLEKS                       R5 R9 K7 ["OnStep"]
       30 CALL                             R8 1 -1
       31 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Operations"]
       15 GETTABLEKS                       R2 R3 K9 ["BaseOperation"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_5]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1

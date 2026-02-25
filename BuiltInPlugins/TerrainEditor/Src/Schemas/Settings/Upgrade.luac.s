PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+26]
        5 DUPTABLE                         R7 K2 [{"Id", "Schema"}]
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R8 R9 K3 ["SmoothVoxels"]
        9 SETTABLEKS                       R8 R7 K0 ["Id"]
       11 DUPTABLE                         R8 K6 [{"Id", "Type", "URL"}]
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R9 R10 K3 ["SmoothVoxels"]
       15 SETTABLEKS                       R9 R8 K0 ["Id"]
       17 LOADK                            R9 K7 ["Upgrade"]
       18 SETTABLEKS                       R9 R8 K4 ["Type"]
       20 GETUPVAL                         R9 2
       21 SETTABLEKS                       R9 R8 K5 ["URL"]
       23 SETTABLEKS                       R8 R7 K1 ["Schema"]
       25 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K10 [table.insert]
       30 CALL                             R5 2 0
       31 GETUPVAL                         R5 3
       32 MOVE                             R6 R0
       33 MOVE                             R7 R4
       34 DUPTABLE                         R8 K14 [{"Category", "Data", "Overrides"}]
       35 GETUPVAL                         R9 4
       36 SETTABLEKS                       R9 R8 K11 ["Category"]
       38 SETTABLEKS                       R1 R8 K12 ["Data"]
       40 SETTABLEKS                       R3 R8 K13 ["Overrides"]
       42 CALL                             R5 3 -1
       43 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["ApplyById"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Category"]
       25 GETTABLEKS                       R4 R2 K11 ["Storage"]
       27 GETTABLEKS                       R5 R2 K12 ["UpgradeSettings"]
       29 GETTABLEKS                       R6 R3 K12 ["UpgradeSettings"]
       31 GETIMPORT                        R7 K14 [game]
       33 LOADK                            R9 K15 ["SmoothVoxels_LearnMoreUrl"]
       34 NAMECALL                         R7 R7 K16 ["GetFastString"]
       36 CALL                             R7 2 1
       37 GETIMPORT                        R8 K5 [require]
       39 GETTABLEKS                       R11 R0 K6 ["Src"]
       41 GETTABLEKS                       R10 R11 K17 ["Flags"]
       43 GETTABLEKS                       R9 R10 K18 ["getFFlagSmoothVoxels_Tooling"]
       45 CALL                             R8 1 1
       46 NEWTABLE                         R9 2 0
       48 NEWTABLE                         R10 1 0
       50 GETTABLEKS                       R11 R5 K19 ["SmoothVoxels"]
       52 MOVE                             R13 R8
       53 CALL                             R13 0 1
       54 JUMPIFNOT                        R13 ; [+3]
       55 GETTABLEKS                       R12 R4 K20 ["LocalSession"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R12
       59 SETTABLE                         R12 R10 R11
       60 SETTABLEKS                       R10 R9 K11 ["Storage"]
       62 DUPCLOSURE                       R10 K21 [PROTO_0]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R10 R9 K22 ["Generator"]
       70 RETURN                           R9 1

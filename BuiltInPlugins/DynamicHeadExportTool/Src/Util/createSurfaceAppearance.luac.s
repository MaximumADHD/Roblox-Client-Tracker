PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%d+$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETIMPORT                        R1 K5 [string.format]
        8 LOADK                            R2 K6 ["rbxassetid://%s"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 RETURN                           R0 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["PluginReducer"]
        5 GETTABLEKS                       R2 R1 K2 ["colorMap"]
        7 GETTABLEKS                       R3 R1 K3 ["metalnessMap"]
        9 GETTABLEKS                       R4 R1 K4 ["normalMap"]
       11 GETTABLEKS                       R5 R1 K5 ["roughnessMap"]
       13 JUMPIFNOTEQKS                    R2 K6 [""] ; [+9]
       15 JUMPIFNOTEQKS                    R3 K6 [""] ; [+7]
       17 JUMPIFNOTEQKS                    R4 K6 [""] ; [+5]
       19 JUMPIFNOTEQKS                    R5 K6 [""] ; [+3]
       21 LOADNIL                          R6
       22 RETURN                           R6 1
       23 GETIMPORT                        R6 K9 [Instance.new]
       25 LOADK                            R7 K10 ["SurfaceAppearance"]
       26 CALL                             R6 1 1
       27 GETIMPORT                        R8 K13 [string.match]
       29 MOVE                             R9 R2
       30 LOADK                            R10 K14 ["^%d+$"]
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+6]
       33 GETIMPORT                        R7 K16 [string.format]
       35 LOADK                            R8 K17 ["rbxassetid://%s"]
       36 MOVE                             R9 R2
       37 CALL                             R7 2 1
       38 JUMP                             ; [+1]
       39 MOVE                             R7 R2
       40 SETTABLEKS                       R7 R6 K18 ["ColorMap"]
       42 GETIMPORT                        R8 K13 [string.match]
       44 MOVE                             R9 R3
       45 LOADK                            R10 K14 ["^%d+$"]
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+6]
       48 GETIMPORT                        R7 K16 [string.format]
       50 LOADK                            R8 K17 ["rbxassetid://%s"]
       51 MOVE                             R9 R3
       52 CALL                             R7 2 1
       53 JUMP                             ; [+1]
       54 MOVE                             R7 R3
       55 SETTABLEKS                       R7 R6 K19 ["MetalnessMap"]
       57 GETIMPORT                        R8 K13 [string.match]
       59 MOVE                             R9 R4
       60 LOADK                            R10 K14 ["^%d+$"]
       61 CALL                             R8 2 1
       62 JUMPIFNOT                        R8 ; [+6]
       63 GETIMPORT                        R7 K16 [string.format]
       65 LOADK                            R8 K17 ["rbxassetid://%s"]
       66 MOVE                             R9 R4
       67 CALL                             R7 2 1
       68 JUMP                             ; [+1]
       69 MOVE                             R7 R4
       70 SETTABLEKS                       R7 R6 K20 ["NormalMap"]
       72 GETIMPORT                        R8 K13 [string.match]
       74 MOVE                             R9 R5
       75 LOADK                            R10 K14 ["^%d+$"]
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+6]
       78 GETIMPORT                        R7 K16 [string.format]
       80 LOADK                            R8 K17 ["rbxassetid://%s"]
       81 MOVE                             R9 R5
       82 CALL                             R7 2 1
       83 JUMP                             ; [+1]
       84 MOVE                             R7 R5
       85 SETTABLEKS                       R7 R6 K21 ["RoughnessMap"]
       87 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 RETURN                           R1 1

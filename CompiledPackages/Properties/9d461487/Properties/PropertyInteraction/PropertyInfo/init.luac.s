PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Enum"] ; [+9]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["fromEnumType"]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K2 ["Static"]
        7 LOADK                            R5 K3 ["Axis"]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1
       10 JUMPIFNOTEQKS                    R0 K4 ["DynamicEnum"] ; [+9]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["fromEnumType"]
       15 MOVE                             R3 R1
       16 LOADK                            R4 K5 ["Dynamic"]
       17 LOADK                            R5 K6 ["CollisionGroup"]
       18 CALL                             R2 3 -1
       19 RETURN                           R2 -1
       20 JUMPIFNOTEQKS                    R0 K7 ["InstanceRef"] ; [+8]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K8 ["fromInstanceRefType"]
       25 MOVE                             R3 R1
       26 LOADK                            R4 K9 ["Instance"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1
       29 JUMPIFNOTEQKS                    R0 K10 ["Content"] ; [+9]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K11 ["fromContentType"]
       34 MOVE                             R3 R1
       35 GETIMPORT                        R4 K14 [Enum.AssetType.Animation]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 JUMPIFNOTEQKS                    R0 K15 ["CombinedColor"] ; [+9]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K16 ["fromCombinedColor"]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K17 ["Color3"]
       46 LOADB                            R5 1
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1
       49 JUMPIFNOTEQKS                    R0 K18 ["CombinedColorSequence"] ; [+8]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K19 ["fromCombinedColorSequence"]
       54 MOVE                             R3 R1
       55 LOADB                            R4 1
       56 CALL                             R2 2 -1
       57 RETURN                           R2 -1
       58 LOADNIL                          R2
       59 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+10]
        6 GETIMPORT                        R3 K1 [error]
        8 LOADK                            R5 K2 ["%* is not supported in the PropertyInfo.fromType, please use the custom info function"]
        9 MOVE                             R7 R0
       10 NAMECALL                         R5 R5 K3 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 CALL                             R3 1 0
       15 DUPTABLE                         R3 K6 [{"type", "readonly"}]
       16 SETTABLEKS                       R0 R3 K4 ["type"]
       18 SETTABLEKS                       R1 R3 K5 ["readonly"]
       20 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 LOADB                            R3 0
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+3]
        5 DUPTABLE                         R1 K3 [{[1], ["readonly"] = False}]
        6 SETTABLEKS                       R0 R1 K0 ["type"]
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 8 0
       14 GETIMPORT                        R3 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K7 ["fromInstanceRefType"]
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R2 K7 ["fromInstanceRefType"]
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K8 ["fromEnumType"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R3 R2 K8 ["fromEnumType"]
       32 GETIMPORT                        R3 K5 [require]
       34 GETIMPORT                        R4 K1 [script]
       36 GETTABLEKS                       R4 R4 K9 ["fromContentType"]
       38 CALL                             R3 1 1
       39 SETTABLEKS                       R3 R2 K9 ["fromContentType"]
       41 GETIMPORT                        R3 K5 [require]
       43 GETIMPORT                        R4 K1 [script]
       45 GETTABLEKS                       R4 R4 K10 ["fromCombinedColor"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R2 K10 ["fromCombinedColor"]
       50 GETIMPORT                        R3 K5 [require]
       52 GETIMPORT                        R4 K1 [script]
       54 GETTABLEKS                       R4 R4 K11 ["fromCombinedColorSequence"]
       56 CALL                             R3 1 1
       57 SETTABLEKS                       R3 R2 K11 ["fromCombinedColorSequence"]
       59 GETIMPORT                        R3 K5 [require]
       61 GETIMPORT                        R4 K1 [script]
       63 GETTABLEKS                       R4 R4 K12 ["fromNumber"]
       65 CALL                             R3 1 1
       66 SETTABLEKS                       R3 R2 K12 ["fromNumber"]
       68 DUPCLOSURE                       R3 K13 [PROTO_0]
       69 CAPTURE                          VAL R2
       70 DUPCLOSURE                       R4 K14 [PROTO_1]
       71 CAPTURE                          VAL R3
       72 SETTABLEKS                       R4 R2 K15 ["fromType"]
       74 DUPCLOSURE                       R4 K16 [PROTO_2]
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R2 K17 ["fromTypePlaceHolder"]
       78 RETURN                           R2 1

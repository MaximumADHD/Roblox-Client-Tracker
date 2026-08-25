PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromEnumType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Static"]
        5 LOADK                            R4 K2 ["Axis"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromEnumType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Dynamic"]
        5 LOADK                            R4 K2 ["CollisionGroup"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromInstanceRefType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Instance"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromContentType"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K4 [Enum.AssetType.Animation]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromCombinedColor"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Color3"]
        5 LOADB                            R4 1
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fromCombinedColorSequence"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["PropertyTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["createFromType"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K8 ["createFromTypePlaceHolder"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 8 0
       28 GETIMPORT                        R5 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K9 ["fromInstanceRefType"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K9 ["fromInstanceRefType"]
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K10 ["fromEnumType"]
       43 CALL                             R5 1 1
       44 SETTABLEKS                       R5 R4 K10 ["fromEnumType"]
       46 GETIMPORT                        R5 K5 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K11 ["fromContentType"]
       52 CALL                             R5 1 1
       53 SETTABLEKS                       R5 R4 K11 ["fromContentType"]
       55 GETIMPORT                        R5 K5 [require]
       57 GETIMPORT                        R6 K1 [script]
       59 GETTABLEKS                       R6 R6 K12 ["fromCombinedColor"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R4 K12 ["fromCombinedColor"]
       64 GETIMPORT                        R5 K5 [require]
       66 GETIMPORT                        R6 K1 [script]
       68 GETTABLEKS                       R6 R6 K13 ["fromCombinedColorSequence"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K13 ["fromCombinedColorSequence"]
       73 DUPTABLE                         R5 K20 [{"Enum", "DynamicEnum", "InstanceRef", "Content", "CombinedColor", "CombinedColorSequence"}]
       74 DUPCLOSURE                       R6 K21 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 SETTABLEKS                       R6 R5 K14 ["Enum"]
       78 DUPCLOSURE                       R6 K22 [PROTO_1]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R6 R5 K15 ["DynamicEnum"]
       82 DUPCLOSURE                       R6 K23 [PROTO_2]
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R6 R5 K16 ["InstanceRef"]
       86 DUPCLOSURE                       R6 K24 [PROTO_3]
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R6 R5 K17 ["Content"]
       90 DUPCLOSURE                       R6 K25 [PROTO_4]
       91 CAPTURE                          VAL R4
       92 SETTABLEKS                       R6 R5 K18 ["CombinedColor"]
       94 DUPCLOSURE                       R6 K26 [PROTO_5]
       95 CAPTURE                          VAL R4
       96 SETTABLEKS                       R6 R5 K19 ["CombinedColorSequence"]
       98 MOVE                             R6 R2
       99 MOVE                             R7 R5
      100 CALL                             R6 1 1
      101 SETTABLEKS                       R6 R4 K27 ["fromType"]
      103 MOVE                             R6 R3
      104 MOVE                             R7 R5
      105 CALL                             R6 1 1
      106 SETTABLEKS                       R6 R4 K28 ["fromTypePlaceHolder"]
      108 RETURN                           R4 1

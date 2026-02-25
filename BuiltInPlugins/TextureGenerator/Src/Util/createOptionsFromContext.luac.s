PROTO_0:
        0 DUPTABLE                         R1 K2 [{"promptMasking", "smartUVUnwrap"}]
        1 GETTABLEKS                       R2 R0 K0 ["promptMasking"]
        3 SETTABLEKS                       R2 R1 K0 ["promptMasking"]
        5 GETTABLEKS                       R2 R0 K1 ["smartUVUnwrap"]
        7 SETTABLEKS                       R2 R1 K1 ["smartUVUnwrap"]
        9 GETTABLEKS                       R2 R0 K3 ["randomizeSeed"]
       11 JUMPIF                           R2 ; [+4]
       12 GETTABLEKS                       R2 R0 K4 ["seed"]
       14 SETTABLEKS                       R2 R1 K4 ["seed"]
       16 GETTABLEKS                       R2 R0 K5 ["rotation"]
       18 GETIMPORT                        R4 K8 [CFrame.new]
       20 CALL                             R4 0 -1
       21 NAMECALL                         R2 R2 K9 ["FuzzyEq"]
       23 CALL                             R2 -1 1
       24 JUMPIF                           R2 ; [+26]
       25 GETTABLEKS                       R2 R0 K5 ["rotation"]
       27 NAMECALL                         R2 R2 K10 ["ToEulerAnglesYXZ"]
       29 CALL                             R2 1 3
       30 FASTCALL1                        MATH_DEG R2 ; [+3]
       31 MOVE                             R7 R2
       32 GETIMPORT                        R6 K13 [math.deg]
       34 CALL                             R6 1 1
       35 FASTCALL1                        MATH_DEG R3 ; [+3]
       36 MOVE                             R8 R3
       37 GETIMPORT                        R7 K13 [math.deg]
       39 CALL                             R7 1 1
       40 FASTCALL1                        MATH_DEG R4 ; [+3]
       41 MOVE                             R9 R4
       42 GETIMPORT                        R8 K13 [math.deg]
       44 CALL                             R8 1 1
       45 FASTCALL                         VECTOR ; [+2]
       46 GETIMPORT                        R5 K15 [Vector3.new]
       48 CALL                             R5 3 1
       49 SETTABLEKS                       R5 R1 K5 ["rotation"]
       51 GETUPVAL                         R2 0
       52 CALL                             R2 0 1
       53 JUMPIFNOT                        R2 ; [+22]
       54 GETTABLEKS                       R2 R0 K16 ["artStyle"]
       56 JUMPIFEQKS                       R2 K17 [""] ; [+19]
       58 GETIMPORT                        R2 K20 [string.gsub]
       60 GETTABLEKS                       R3 R0 K16 ["artStyle"]
       62 LOADK                            R4 K21 ["rbxassetid://"]
       63 LOADK                            R5 K17 [""]
       64 CALL                             R2 3 1
       65 FASTCALL1                        TONUMBER R2 ; [+3]
       66 MOVE                             R4 R2
       67 GETIMPORT                        R3 K23 [tonumber]
       69 CALL                             R3 1 1
       70 SETTABLEKS                       R3 R1 K16 ["artStyle"]
       72 GETTABLEKS                       R3 R0 K24 ["strength"]
       74 SETTABLEKS                       R3 R1 K24 ["strength"]
       76 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["OptionsContext"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R6 R0 K4 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K7 [require]
       30 GETTABLEKS                       R8 R0 K4 ["Src"]
       32 GETTABLEKS                       R7 R8 K11 ["Flags"]
       34 GETTABLEKS                       R6 R7 K12 ["getFFlagTextureGeneratorArtStyle"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K13 [PROTO_0]
       38 CAPTURE                          VAL R5
       39 RETURN                           R6 1

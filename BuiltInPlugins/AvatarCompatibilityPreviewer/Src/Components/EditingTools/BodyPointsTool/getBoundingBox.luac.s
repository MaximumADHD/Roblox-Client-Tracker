PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["selectedPoints"]
        2 LENGTH                           R1 R2
        3 JUMPIFNOTEQKN                    R1 K1 [0] ; [+13]
        5 GETIMPORT                        R1 K4 [CFrame.new]
        7 CALL                             R1 0 1
        8 FASTCALL                         VECTOR ; [+2]
        9 GETIMPORT                        R2 K6 [Vector3.new]
       11 CALL                             R2 0 1
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R3 K6 [Vector3.new]
       15 CALL                             R3 0 1
       16 RETURN                           R1 3
       17 LOADK                            R1 K7 [∞]
       18 LOADK                            R2 K8 [-∞]
       19 LOADK                            R3 K7 [∞]
       20 LOADK                            R4 K8 [-∞]
       21 LOADK                            R5 K7 [∞]
       22 LOADK                            R6 K8 [-∞]
       23 GETTABLEKS                       R8 R0 K9 ["worldModel"]
       25 GETTABLEKS                       R7 R8 K10 ["PrimaryPart"]
       27 GETTABLEKS                       R8 R0 K0 ["selectedPoints"]
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 GETTABLEKS                       R13 R12 K11 ["getCFrame"]
       34 CALL                             R13 0 1
       35 NAMECALL                         R13 R13 K12 ["GetComponents"]
       37 CALL                             R13 1 3
       38 FASTCALL2                        MATH_MIN R1 R13 ; [+5]
       40 MOVE                             R17 R1
       41 MOVE                             R18 R13
       42 GETIMPORT                        R16 K15 [math.min]
       44 CALL                             R16 2 1
       45 MOVE                             R1 R16
       46 FASTCALL2                        MATH_MAX R2 R13 ; [+5]
       48 MOVE                             R17 R2
       49 MOVE                             R18 R13
       50 GETIMPORT                        R16 K17 [math.max]
       52 CALL                             R16 2 1
       53 MOVE                             R2 R16
       54 FASTCALL2                        MATH_MIN R3 R14 ; [+5]
       56 MOVE                             R17 R3
       57 MOVE                             R18 R14
       58 GETIMPORT                        R16 K15 [math.min]
       60 CALL                             R16 2 1
       61 MOVE                             R3 R16
       62 FASTCALL2                        MATH_MAX R4 R14 ; [+5]
       64 MOVE                             R17 R4
       65 MOVE                             R18 R14
       66 GETIMPORT                        R16 K17 [math.max]
       68 CALL                             R16 2 1
       69 MOVE                             R4 R16
       70 FASTCALL2                        MATH_MIN R5 R15 ; [+5]
       72 MOVE                             R17 R5
       73 MOVE                             R18 R15
       74 GETIMPORT                        R16 K15 [math.min]
       76 CALL                             R16 2 1
       77 MOVE                             R5 R16
       78 FASTCALL2                        MATH_MAX R6 R15 ; [+5]
       80 MOVE                             R17 R6
       81 MOVE                             R18 R15
       82 GETIMPORT                        R16 K17 [math.max]
       84 CALL                             R16 2 1
       85 MOVE                             R6 R16
       86 FORGLOOP                         R8 2 ; [-55]
       88 LOADK                            R10 K18 [0.5]
       89 ADD                              R11 R1 R2
       90 MUL                              R9 R10 R11
       91 LOADK                            R11 K18 [0.5]
       92 ADD                              R12 R3 R4
       93 MUL                              R10 R11 R12
       94 LOADK                            R12 K18 [0.5]
       95 ADD                              R13 R5 R6
       96 MUL                              R11 R12 R13
       97 FASTCALL                         VECTOR ; [+2]
       98 GETIMPORT                        R8 K6 [Vector3.new]
      100 CALL                             R8 3 1
      101 GETTABLEKS                       R10 R7 K2 ["CFrame"]
      103 GETTABLEKS                       R13 R7 K2 ["CFrame"]
      105 GETTABLEKS                       R12 R13 K19 ["Rotation"]
      107 MUL                              R11 R12 R8
      108 ADD                              R9 R10 R11
      109 FASTCALL                         VECTOR ; [+2]
      110 GETIMPORT                        R10 K6 [Vector3.new]
      112 CALL                             R10 0 1
      113 FASTCALL                         VECTOR ; [+2]
      114 GETIMPORT                        R11 K6 [Vector3.new]
      116 CALL                             R11 0 1
      117 RETURN                           R9 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R6 R0 K6 ["Src"]
       11 GETTABLEKS                       R5 R6 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["EditingTools"]
       15 GETTABLEKS                       R3 R4 K9 ["BodyPointsTool"]
       17 GETTABLEKS                       R2 R3 K10 ["Types"]
       19 CALL                             R1 1 1
       20 DUPCLOSURE                       R2 K11 [PROTO_0]
       21 RETURN                           R2 1

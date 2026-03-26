PROTO_0:
        0 MOVE                             R7 R3
        1 NAMECALL                         R5 R0 K0 ["FindFirstChild"]
        3 CALL                             R5 2 1
        4 MOVE                             R6 R2
        5 JUMPIFNOT                        R1 ; [+27]
        6 MOVE                             R9 R1
        7 NAMECALL                         R7 R0 K0 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K1 ["getRigAttachmentToParent"]
       13 GETUPVAL                         R9 1
       14 MOVE                             R10 R3
       15 CALL                             R8 2 1
       16 MOVE                             R11 R8
       17 NAMECALL                         R9 R7 K0 ["FindFirstChild"]
       19 CALL                             R9 2 1
       20 MOVE                             R12 R8
       21 NAMECALL                         R10 R5 K0 ["FindFirstChild"]
       23 CALL                             R10 2 1
       24 GETTABLEKS                       R12 R9 K2 ["CFrame"]
       26 MUL                              R11 R6 R12
       27 GETTABLEKS                       R12 R10 K2 ["CFrame"]
       29 NAMECALL                         R12 R12 K3 ["Inverse"]
       31 CALL                             R12 1 1
       32 MUL                              R6 R11 R12
       33 SETTABLEKS                       R6 R5 K2 ["CFrame"]
       35 GETTABLEKS                       R7 R4 K4 ["children"]
       37 JUMPIFNOT                        R7 ; [+14]
       38 GETTABLEKS                       R7 R4 K4 ["children"]
       40 LOADNIL                          R8
       41 LOADNIL                          R9
       42 FORGPREP                         R7
       43 GETUPVAL                         R12 2
       44 MOVE                             R13 R0
       45 MOVE                             R14 R3
       46 MOVE                             R15 R6
       47 MOVE                             R16 R10
       48 MOVE                             R17 R11
       49 CALL                             R12 5 0
       50 FORGLOOP                         R7 2 ; [-8]
       52 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R5 0 0
        2 GETIMPORT                        R6 K3 [Enum.AssetType.DynamicHead]
        4 JUMPIFNOTEQ                      R6 R3 ; [+27]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K4 ["calculateBounds"]
        9 MOVE                             R7 R3
       10 MOVE                             R8 R2
       11 GETIMPORT                        R9 K7 [CFrame.new]
       13 CALL                             R9 0 1
       14 MOVE                             R10 R5
       15 MOVE                             R11 R4
       16 CALL                             R6 5 0
       17 GETIMPORT                        R6 K7 [CFrame.new]
       19 CALL                             R6 0 1
       20 SETTABLEKS                       R6 R0 K5 ["CFrame"]
       22 GETIMPORT                        R6 K7 [CFrame.new]
       24 CALL                             R6 0 1
       25 SETTABLEKS                       R6 R1 K5 ["CFrame"]
       27 GETTABLEKS                       R6 R1 K8 ["Size"]
       29 SETTABLEKS                       R6 R0 K8 ["Size"]
       31 JUMP                             ; [+125]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K9 ["assetHierarchy"]
       35 GETTABLE                         R6 R7 R3
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K10 ["traverseHierarchy"]
       39 LOADNIL                          R8
       40 MOVE                             R9 R2
       41 MOVE                             R10 R3
       42 LOADNIL                          R11
       43 GETIMPORT                        R12 K7 [CFrame.new]
       45 CALL                             R12 0 1
       46 GETTABLEKS                       R13 R6 K11 ["root"]
       48 MOVE                             R14 R6
       49 MOVE                             R15 R5
       50 MOVE                             R16 R4
       51 CALL                             R7 9 0
       52 NEWCLOSURE                       R7 P0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R7
       56 MOVE                             R8 R7
       57 MOVE                             R9 R1
       58 LOADNIL                          R10
       59 GETIMPORT                        R11 K7 [CFrame.new]
       61 CALL                             R11 0 1
       62 GETTABLEKS                       R12 R6 K11 ["root"]
       64 MOVE                             R13 R6
       65 CALL                             R8 5 0
       66 FASTCALL                         VECTOR ; [+2]
       67 GETIMPORT                        R8 K13 [Vector3.new]
       69 CALL                             R8 0 1
       70 FASTCALL                         VECTOR ; [+2]
       71 GETIMPORT                        R9 K13 [Vector3.new]
       73 CALL                             R9 0 1
       74 GETTABLEKS                       R10 R5 K14 ["maxOverall"]
       76 JUMPIFNOT                        R10 ; [+3]
       77 GETTABLEKS                       R8 R5 K14 ["maxOverall"]
       79 JUMP                             ; [+5]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R10 K13 [Vector3.new]
       83 CALL                             R10 0 1
       84 MOVE                             R8 R10
       85 GETTABLEKS                       R10 R5 K15 ["minOverall"]
       87 JUMPIFNOT                        R10 ; [+3]
       88 GETTABLEKS                       R9 R5 K15 ["minOverall"]
       90 JUMP                             ; [+5]
       91 FASTCALL                         VECTOR ; [+2]
       92 GETIMPORT                        R10 K13 [Vector3.new]
       94 CALL                             R10 0 1
       95 MOVE                             R9 R10
       96 GETTABLEKS                       R10 R5 K15 ["minOverall"]
       98 JUMPIFEQKNIL                     R10 ; [+5]
      100 GETTABLEKS                       R10 R5 K14 ["maxOverall"]
      102 JUMPIFNOTEQKNIL                  R10 ; [+3]
      104 LOADB                            R10 0
      105 RETURN                           R10 1
      106 GETTABLEKS                       R12 R8 K16 ["X"]
      108 GETTABLEKS                       R13 R9 K16 ["X"]
      110 SUB                              R11 R12 R13
      111 GETTABLEKS                       R13 R8 K17 ["Y"]
      113 GETTABLEKS                       R14 R9 K17 ["Y"]
      115 SUB                              R12 R13 R14
      116 GETTABLEKS                       R14 R8 K18 ["Z"]
      118 GETTABLEKS                       R15 R9 K18 ["Z"]
      120 SUB                              R13 R14 R15
      121 FASTCALL                         VECTOR ; [+2]
      122 GETIMPORT                        R10 K13 [Vector3.new]
      124 CALL                             R10 3 1
      125 SETTABLEKS                       R10 R0 K8 ["Size"]
      127 GETTABLEKS                       R12 R9 K16 ["X"]
      129 GETTABLEKS                       R15 R0 K8 ["Size"]
      131 GETTABLEKS                       R14 R15 K16 ["X"]
      133 DIVK                             R13 R14 K19 [2]
      134 ADD                              R11 R12 R13
      135 GETTABLEKS                       R13 R9 K17 ["Y"]
      137 GETTABLEKS                       R16 R0 K8 ["Size"]
      139 GETTABLEKS                       R15 R16 K17 ["Y"]
      141 DIVK                             R14 R15 K19 [2]
      142 ADD                              R12 R13 R14
      143 GETTABLEKS                       R14 R9 K18 ["Z"]
      145 GETTABLEKS                       R17 R0 K8 ["Size"]
      147 GETTABLEKS                       R16 R17 K18 ["Z"]
      149 DIVK                             R15 R16 K19 [2]
      150 ADD                              R13 R14 R15
      151 FASTCALL                         VECTOR ; [+2]
      152 GETIMPORT                        R10 K13 [Vector3.new]
      154 CALL                             R10 3 1
      155 SETTABLEKS                       R10 R0 K20 ["Position"]
      157 LOADB                            R6 1
      158 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["AssetTraversalUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K9 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 RETURN                           R4 1

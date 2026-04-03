PROTO_0:
        0 MOVE                             R7 R3
        1 NAMECALL                         R5 R0 K0 ["FindFirstChild"]
        3 CALL                             R5 2 1
        4 MOVE                             R6 R2
        5 JUMPIFNOT                        R1 ; [+37]
        6 MOVE                             R9 R1
        7 NAMECALL                         R7 R0 K0 ["FindFirstChild"]
        9 CALL                             R7 2 1
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K1 ["getRigAttachmentToParent"]
       13 GETUPVAL                         R9 1
       14 MOVE                             R10 R3
       15 CALL                             R8 2 1
       16 MOVE                             R11 R8
       17 GETUPVAL                         R13 2
       18 GETTABLEKS                       R12 R13 K2 ["checkFlagEnabledForAllowHrd"]
       20 CALL                             R12 0 -1
       21 NAMECALL                         R9 R7 K0 ["FindFirstChild"]
       23 CALL                             R9 -1 1
       24 MOVE                             R12 R8
       25 GETUPVAL                         R14 2
       26 GETTABLEKS                       R13 R14 K2 ["checkFlagEnabledForAllowHrd"]
       28 CALL                             R13 0 -1
       29 NAMECALL                         R10 R5 K0 ["FindFirstChild"]
       31 CALL                             R10 -1 1
       32 GETUPVAL                         R12 3
       33 MOVE                             R13 R9
       34 CALL                             R12 1 1
       35 MUL                              R11 R6 R12
       36 GETUPVAL                         R12 3
       37 MOVE                             R13 R10
       38 CALL                             R12 1 1
       39 NAMECALL                         R12 R12 K3 ["Inverse"]
       41 CALL                             R12 1 1
       42 MUL                              R6 R11 R12
       43 SETTABLEKS                       R6 R5 K4 ["CFrame"]
       45 GETTABLEKS                       R7 R4 K5 ["children"]
       47 JUMPIFNOT                        R7 ; [+14]
       48 GETTABLEKS                       R7 R4 K5 ["children"]
       50 LOADNIL                          R8
       51 LOADNIL                          R9
       52 FORGPREP                         R7
       53 GETUPVAL                         R12 4
       54 MOVE                             R13 R0
       55 MOVE                             R14 R3
       56 MOVE                             R15 R6
       57 MOVE                             R16 R10
       58 MOVE                             R17 R11
       59 CALL                             R12 5 0
       60 FORGLOOP                         R7 2 ; [-8]
       62 RETURN                           R0 0

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
       31 JUMP                             ; [+146]
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
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R7
       58 GETIMPORT                        R8 K7 [CFrame.new]
       60 CALL                             R8 0 1
       61 GETTABLEKS                       R9 R6 K11 ["root"]
       63 MOVE                             R12 R9
       64 NAMECALL                         R10 R1 K12 ["FindFirstChild"]
       66 CALL                             R10 2 1
       67 MOVE                             R11 R8
       68 SETTABLEKS                       R11 R10 K5 ["CFrame"]
       70 GETTABLEKS                       R12 R6 K13 ["children"]
       72 JUMPIFNOT                        R12 ; [+14]
       73 GETTABLEKS                       R12 R6 K13 ["children"]
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 FORGPREP                         R12
       78 MOVE                             R17 R7
       79 MOVE                             R18 R1
       80 MOVE                             R19 R9
       81 MOVE                             R20 R11
       82 MOVE                             R21 R15
       83 MOVE                             R22 R16
       84 CALL                             R17 5 0
       85 FORGLOOP                         R12 2 ; [-8]
       87 FASTCALL                         VECTOR ; [+2]
       88 GETIMPORT                        R8 K15 [Vector3.new]
       90 CALL                             R8 0 1
       91 FASTCALL                         VECTOR ; [+2]
       92 GETIMPORT                        R9 K15 [Vector3.new]
       94 CALL                             R9 0 1
       95 GETTABLEKS                       R10 R5 K16 ["maxOverall"]
       97 JUMPIFNOT                        R10 ; [+3]
       98 GETTABLEKS                       R8 R5 K16 ["maxOverall"]
      100 JUMP                             ; [+5]
      101 FASTCALL                         VECTOR ; [+2]
      102 GETIMPORT                        R10 K15 [Vector3.new]
      104 CALL                             R10 0 1
      105 MOVE                             R8 R10
      106 GETTABLEKS                       R10 R5 K17 ["minOverall"]
      108 JUMPIFNOT                        R10 ; [+3]
      109 GETTABLEKS                       R9 R5 K17 ["minOverall"]
      111 JUMP                             ; [+5]
      112 FASTCALL                         VECTOR ; [+2]
      113 GETIMPORT                        R10 K15 [Vector3.new]
      115 CALL                             R10 0 1
      116 MOVE                             R9 R10
      117 GETTABLEKS                       R10 R5 K17 ["minOverall"]
      119 JUMPIFEQKNIL                     R10 ; [+5]
      121 GETTABLEKS                       R10 R5 K16 ["maxOverall"]
      123 JUMPIFNOTEQKNIL                  R10 ; [+3]
      125 LOADB                            R10 0
      126 RETURN                           R10 1
      127 GETTABLEKS                       R12 R8 K18 ["X"]
      129 GETTABLEKS                       R13 R9 K18 ["X"]
      131 SUB                              R11 R12 R13
      132 GETTABLEKS                       R13 R8 K19 ["Y"]
      134 GETTABLEKS                       R14 R9 K19 ["Y"]
      136 SUB                              R12 R13 R14
      137 GETTABLEKS                       R14 R8 K20 ["Z"]
      139 GETTABLEKS                       R15 R9 K20 ["Z"]
      141 SUB                              R13 R14 R15
      142 FASTCALL                         VECTOR ; [+2]
      143 GETIMPORT                        R10 K15 [Vector3.new]
      145 CALL                             R10 3 1
      146 SETTABLEKS                       R10 R0 K8 ["Size"]
      148 GETTABLEKS                       R12 R9 K18 ["X"]
      150 GETTABLEKS                       R15 R0 K8 ["Size"]
      152 GETTABLEKS                       R14 R15 K18 ["X"]
      154 DIVK                             R13 R14 K21 [2]
      155 ADD                              R11 R12 R13
      156 GETTABLEKS                       R13 R9 K19 ["Y"]
      158 GETTABLEKS                       R16 R0 K8 ["Size"]
      160 GETTABLEKS                       R15 R16 K19 ["Y"]
      162 DIVK                             R14 R15 K21 [2]
      163 ADD                              R12 R13 R14
      164 GETTABLEKS                       R14 R9 K20 ["Z"]
      166 GETTABLEKS                       R17 R0 K8 ["Size"]
      168 GETTABLEKS                       R16 R17 K20 ["Z"]
      170 DIVK                             R15 R16 K21 [2]
      171 ADD                              R13 R14 R15
      172 FASTCALL                         VECTOR ; [+2]
      173 GETIMPORT                        R10 K15 [Vector3.new]
      175 CALL                             R10 3 1
      176 SETTABLEKS                       R10 R0 K22 ["Position"]
      178 LOADB                            R6 1
      179 RETURN                           R6 1

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
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K5 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["R15plusUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["getAttachmentCFrameInPartSpace"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K11 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1

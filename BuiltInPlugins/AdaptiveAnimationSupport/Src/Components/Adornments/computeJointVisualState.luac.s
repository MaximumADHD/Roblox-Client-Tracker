PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ToHSV"]
        3 CALL                             R0 1 3
        4 GETIMPORT                        R3 K3 [Color3.fromHSV]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MULK                             R6 R2 K4 [0.6]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_1:
        0 JUMPIFEQ                         R1 R0 ; [+2]
        2 LOADB                            R7 0 +1
        3 LOADB                            R7 1
        4 LOADB                            R8 1
        5 GETTABLEKS                       R9 R0 K0 ["Name"]
        7 JUMPIFEQ                         R2 R9 ; [+7]
        9 GETTABLEKS                       R9 R0 K0 ["Name"]
       11 JUMPIFEQ                         R3 R9 ; [+2]
       13 LOADB                            R8 0 +1
       14 LOADB                            R8 1
       15 GETTABLE                         R10 R4 R0
       16 JUMPIFEQKB                       R10 TRUE ; [+2]
       18 LOADB                            R9 0 +1
       19 LOADB                            R9 1
       20 GETUPVAL                         R11 0
       21 CALL                             R11 0 1
       22 JUMPIFNOT                        R11 ; [+7]
       23 JUMPIFNOT                        R5 ; [+4]
       24 LOADB                            R10 1
       25 GETTABLE                         R11 R5 R0
       26 JUMPIFEQKB                       R11 TRUE ; [+4]
       28 LOADB                            R10 0
       29 JUMP                             ; [+1]
       30 LOADB                            R10 0
       31 LOADNIL                          R11
       32 GETUPVAL                         R12 0
       33 CALL                             R12 0 1
       34 JUMPIFNOT                        R12 ; [+62]
       35 JUMPIFNOT                        R6 ; [+61]
       36 JUMPIFNOT                        R7 ; [+9]
       37 GETTABLEKS                       R12 R6 K1 ["Color"]
       39 GETTABLEKS                       R12 R12 K2 ["Extended"]
       41 GETTABLEKS                       R12 R12 K3 ["Blue"]
       43 GETTABLEKS                       R12 R12 K4 ["Blue_700"]
       45 JUMP                             ; [+48]
       46 JUMPIFNOT                        R8 ; [+19]
       47 JUMPIFNOT                        R9 ; [+9]
       48 GETTABLEKS                       R12 R6 K1 ["Color"]
       50 GETTABLEKS                       R12 R12 K2 ["Extended"]
       52 GETTABLEKS                       R12 R12 K5 ["Orange"]
       54 GETTABLEKS                       R12 R12 K6 ["Orange_200"]
       56 JUMP                             ; [+37]
       57 GETTABLEKS                       R12 R6 K1 ["Color"]
       59 GETTABLEKS                       R12 R12 K2 ["Extended"]
       61 GETTABLEKS                       R12 R12 K7 ["Gray"]
       63 GETTABLEKS                       R12 R12 K8 ["Gray_200"]
       65 JUMP                             ; [+28]
       66 JUMPIFNOT                        R9 ; [+9]
       67 GETTABLEKS                       R12 R6 K1 ["Color"]
       69 GETTABLEKS                       R12 R12 K2 ["Extended"]
       71 GETTABLEKS                       R12 R12 K5 ["Orange"]
       73 GETTABLEKS                       R12 R12 K9 ["Orange_700"]
       75 JUMP                             ; [+18]
       76 JUMPIFNOT                        R10 ; [+9]
       77 GETTABLEKS                       R12 R6 K1 ["Color"]
       79 GETTABLEKS                       R12 R12 K2 ["Extended"]
       81 GETTABLEKS                       R12 R12 K5 ["Orange"]
       83 GETTABLEKS                       R12 R12 K10 ["Orange_900"]
       85 JUMP                             ; [+8]
       86 GETTABLEKS                       R12 R6 K1 ["Color"]
       88 GETTABLEKS                       R12 R12 K2 ["Extended"]
       90 GETTABLEKS                       R12 R12 K7 ["Gray"]
       92 GETTABLEKS                       R12 R12 K11 ["Gray_600"]
       94 GETTABLEKS                       R11 R12 K12 ["Color3"]
       96 JUMP                             ; [+40]
       97 JUMPIFNOT                        R7 ; [+6]
       98 GETUPVAL                         R12 1
       99 GETTABLEKS                       R12 R12 K13 ["Colors"]
      101 GETTABLEKS                       R11 R12 K14 ["BONE_SELECTED"]
      103 JUMP                             ; [+33]
      104 JUMPIFNOT                        R8 ; [+13]
      105 JUMPIFNOT                        R9 ; [+6]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K13 ["Colors"]
      109 GETTABLEKS                       R11 R12 K15 ["BONE_MAPPED_HOVER"]
      111 JUMP                             ; [+25]
      112 GETUPVAL                         R12 1
      113 GETTABLEKS                       R12 R12 K13 ["Colors"]
      115 GETTABLEKS                       R11 R12 K16 ["BONE_UNMAPPED_HOVER"]
      117 JUMP                             ; [+19]
      118 JUMPIFNOT                        R9 ; [+6]
      119 GETUPVAL                         R12 1
      120 GETTABLEKS                       R12 R12 K13 ["Colors"]
      122 GETTABLEKS                       R11 R12 K17 ["BONE_MAPPED"]
      124 JUMP                             ; [+12]
      125 JUMPIFNOT                        R10 ; [+6]
      126 GETUPVAL                         R12 1
      127 GETTABLEKS                       R12 R12 K13 ["Colors"]
      129 GETTABLEKS                       R11 R12 K18 ["BONE_OTHER_MAPPED"]
      131 JUMP                             ; [+5]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R12 R12 K13 ["Colors"]
      135 GETTABLEKS                       R11 R12 K19 ["BONE_UNMAPPED"]
      137 GETUPVAL                         R13 0
      138 CALL                             R13 0 1
      139 JUMPIFNOT                        R13 ; [+11]
      140 NAMECALL                         R13 R11 K20 ["ToHSV"]
      142 CALL                             R13 1 3
      143 GETIMPORT                        R16 K22 [Color3.fromHSV]
      145 MOVE                             R17 R13
      146 MOVE                             R18 R14
      147 MULK                             R19 R15 K23 [0.6]
      148 CALL                             R16 3 1
      149 MOVE                             R12 R16
      150 JUMP                             ; [+5]
      151 GETUPVAL                         R12 1
      152 GETTABLEKS                       R12 R12 K13 ["Colors"]
      154 GETTABLEKS                       R12 R12 K24 ["BONE_EDGE"]
      156 DUPTABLE                         R13 K31 [{"color", "edgeColor", "isSelected", "isHovered", "isMapped", "isOtherMapped"}]
      157 SETTABLEKS                       R11 R13 K25 ["color"]
      159 SETTABLEKS                       R12 R13 K26 ["edgeColor"]
      161 SETTABLEKS                       R7 R13 K27 ["isSelected"]
      163 SETTABLEKS                       R8 R13 K28 ["isHovered"]
      165 SETTABLEKS                       R9 R13 K29 ["isMapped"]
      167 SETTABLEKS                       R10 R13 K30 ["isOtherMapped"]
      169 CLOSEUPVALS                      R11
      170 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Resources"]
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAdaptiveAnimationHandRigQoL"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R2
       35 RETURN                           R4 1

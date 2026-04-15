PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["GetComponents"]
        2 CALL                             R1 1 12
        3 JUMPIFNOTEQ                      R1 R1 ; [+23]
        5 JUMPIFNOTEQ                      R2 R2 ; [+21]
        7 JUMPIFNOTEQ                      R3 R3 ; [+19]
        9 JUMPIFNOTEQ                      R4 R4 ; [+17]
       11 JUMPIFNOTEQ                      R5 R5 ; [+15]
       13 JUMPIFNOTEQ                      R6 R6 ; [+13]
       15 JUMPIFNOTEQ                      R7 R7 ; [+11]
       17 JUMPIFNOTEQ                      R8 R8 ; [+9]
       19 JUMPIFNOTEQ                      R9 R9 ; [+7]
       21 JUMPIFNOTEQ                      R10 R10 ; [+5]
       23 JUMPIFNOTEQ                      R11 R11 ; [+3]
       25 JUMPIFEQ                         R12 R12 ; [+11]
       27 GETIMPORT                        R13 K2 [error]
       29 LOADK                            R15 K3 ["Bad CFrame: "]
       30 FASTCALL1                        TOSTRING R0 ; [+3]
       31 MOVE                             R17 R0
       32 GETIMPORT                        R16 K5 [tostring]
       34 CALL                             R16 1 1
       35 CONCAT                           R14 R15 R16
       36 CALL                             R13 1 0
       37 FASTCALL1                        MATH_ABS R1 ; [+3]
       38 MOVE                             R16 R1
       39 GETIMPORT                        R15 K8 [math.abs]
       41 CALL                             R15 1 1
       42 FASTCALL1                        MATH_ABS R2 ; [+3]
       43 MOVE                             R17 R2
       44 GETIMPORT                        R16 K8 [math.abs]
       46 CALL                             R16 1 1
       47 ADD                              R14 R15 R16
       48 FASTCALL1                        MATH_ABS R3 ; [+3]
       49 MOVE                             R16 R3
       50 GETIMPORT                        R15 K8 [math.abs]
       52 CALL                             R15 1 1
       53 ADD                              R13 R14 R15
       54 LOADN                            R14 48
       55 JUMPIFNOTLT                      R14 R13 ; [+11]
       57 GETIMPORT                        R13 K2 [error]
       59 LOADK                            R15 K9 ["Big CFrame: "]
       60 FASTCALL1                        TOSTRING R0 ; [+3]
       61 MOVE                             R17 R0
       62 GETIMPORT                        R16 K5 [tostring]
       64 CALL                             R16 1 1
       65 CONCAT                           R14 R15 R16
       66 CALL                             R13 1 0
       67 GETTABLEKS                       R13 R0 K10 ["RightVector"]
       69 GETTABLEKS                       R14 R0 K11 ["UpVector"]
       71 GETTABLEKS                       R15 R0 K12 ["LookVector"]
       73 MOVE                             R19 R14
       74 NAMECALL                         R17 R13 K13 ["Dot"]
       76 CALL                             R17 2 1
       77 FASTCALL1                        MATH_ABS R17 ; [+2]
       78 GETIMPORT                        R16 K8 [math.abs]
       80 CALL                             R16 1 1
       81 LOADK                            R17 K14 [0.001]
       82 JUMPIFLT                         R17 R16 ; [+23]
       84 MOVE                             R19 R15
       85 NAMECALL                         R17 R14 K13 ["Dot"]
       87 CALL                             R17 2 1
       88 FASTCALL1                        MATH_ABS R17 ; [+2]
       89 GETIMPORT                        R16 K8 [math.abs]
       91 CALL                             R16 1 1
       92 LOADK                            R17 K14 [0.001]
       93 JUMPIFLT                         R17 R16 ; [+12]
       95 MOVE                             R19 R13
       96 NAMECALL                         R17 R15 K13 ["Dot"]
       98 CALL                             R17 2 1
       99 FASTCALL1                        MATH_ABS R17 ; [+2]
      100 GETIMPORT                        R16 K8 [math.abs]
      102 CALL                             R16 1 1
      103 LOADK                            R17 K14 [0.001]
      104 JUMPIFNOTLT                      R17 R16 ; [+11]
      106 GETIMPORT                        R16 K2 [error]
      108 LOADK                            R18 K15 ["Non orthogonal CFrame: "]
      109 FASTCALL1                        TOSTRING R0 ; [+3]
      110 MOVE                             R20 R0
      111 GETIMPORT                        R19 K5 [tostring]
      113 CALL                             R19 1 1
      114 CONCAT                           R17 R18 R19
      115 CALL                             R16 1 0
      116 GETTABLEKS                       R18 R13 K17 ["Magnitude"]
      118 SUBRK                            R17 R16 K18 ["Non unitary units: "]
      119 FASTCALL1                        MATH_ABS R17 ; [+2]
      120 GETIMPORT                        R16 K8 [math.abs]
      122 CALL                             R16 1 1
      123 LOADK                            R17 K14 [0.001]
      124 JUMPIFLT                         R17 R16 ; [+21]
      126 GETTABLEKS                       R18 R14 K17 ["Magnitude"]
      128 SUBRK                            R17 R16 K18 ["Non unitary units: "]
      129 FASTCALL1                        MATH_ABS R17 ; [+2]
      130 GETIMPORT                        R16 K8 [math.abs]
      132 CALL                             R16 1 1
      133 LOADK                            R17 K14 [0.001]
      134 JUMPIFLT                         R17 R16 ; [+11]
      136 GETTABLEKS                       R18 R15 K17 ["Magnitude"]
      138 SUBRK                            R17 R16 K18 ["Non unitary units: "]
      139 FASTCALL1                        MATH_ABS R17 ; [+2]
      140 GETIMPORT                        R16 K8 [math.abs]
      142 CALL                             R16 1 1
      143 LOADK                            R17 K14 [0.001]
      144 JUMPIFNOTLT                      R17 R16 ; [+11]
      146 GETIMPORT                        R16 K2 [error]
      148 LOADK                            R18 K18 ["Non unitary units: "]
      149 FASTCALL1                        TOSTRING R0 ; [+3]
      150 MOVE                             R20 R0
      151 GETIMPORT                        R19 K5 [tostring]
      153 CALL                             R19 1 1
      154 CONCAT                           R17 R18 R19
      155 CALL                             R16 1 0
      156 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1

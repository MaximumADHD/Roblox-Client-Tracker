PROTO_0:
        0 LOADN                            R5 0
        1 LOADN                            R6 0
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R10 R0
        6 GETIMPORT                        R9 K1 [type]
        8 CALL                             R9 1 1
        9 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+5]
       11 GETTABLEKS                       R5 R0 K3 ["offset"]
       13 GETTABLEKS                       R7 R0 K4 ["position"]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R10 R1
       17 GETIMPORT                        R9 K1 [type]
       19 CALL                             R9 1 1
       20 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+5]
       22 GETTABLEKS                       R6 R1 K3 ["offset"]
       24 GETTABLEKS                       R8 R1 K4 ["position"]
       26 MOVE                             R9 R6
       27 ORK                              R10 R4 K5 [0]
       28 ADD                              R11 R5 R10
       29 LOADN                            R12 0
       30 GETUPVAL                         R14 0
       31 GETTABLEKS                       R13 R14 K6 ["Center"]
       33 JUMPIFNOTEQ                      R8 R13 ; [+4]
       35 LOADK                            R12 K7 [0.5]
       36 LOADN                            R6 0
       37 JUMP                             ; [+7]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K8 ["End"]
       41 JUMPIFNOTEQ                      R8 R13 ; [+3]
       43 LOADN                            R12 1
       44 MINUS                            R6 R6
       45 LOADNIL                          R13
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 GETUPVAL                         R17 1
       49 GETTABLEKS                       R16 R17 K9 ["Top"]
       51 JUMPIFNOTEQ                      R7 R16 ; [+20]
       53 GETIMPORT                        R16 K12 [Vector2.new]
       55 MOVE                             R17 R6
       56 MINUS                            R18 R11
       57 CALL                             R16 2 1
       58 MOVE                             R13 R16
       59 GETIMPORT                        R16 K12 [Vector2.new]
       61 MOVE                             R17 R12
       62 LOADN                            R18 0
       63 CALL                             R16 2 1
       64 MOVE                             R14 R16
       65 GETIMPORT                        R16 K12 [Vector2.new]
       67 MOVE                             R17 R12
       68 LOADN                            R18 1
       69 CALL                             R16 2 1
       70 MOVE                             R15 R16
       71 JUMP                             ; [+71]
       72 GETUPVAL                         R17 1
       73 GETTABLEKS                       R16 R17 K13 ["Bottom"]
       75 JUMPIFNOTEQ                      R7 R16 ; [+20]
       77 GETIMPORT                        R16 K12 [Vector2.new]
       79 MOVE                             R17 R6
       80 MOVE                             R18 R11
       81 CALL                             R16 2 1
       82 MOVE                             R13 R16
       83 GETIMPORT                        R16 K12 [Vector2.new]
       85 MOVE                             R17 R12
       86 LOADN                            R18 1
       87 CALL                             R16 2 1
       88 MOVE                             R14 R16
       89 GETIMPORT                        R16 K12 [Vector2.new]
       91 MOVE                             R17 R12
       92 LOADN                            R18 0
       93 CALL                             R16 2 1
       94 MOVE                             R15 R16
       95 JUMP                             ; [+47]
       96 GETUPVAL                         R17 1
       97 GETTABLEKS                       R16 R17 K14 ["Left"]
       99 JUMPIFNOTEQ                      R7 R16 ; [+20]
      101 GETIMPORT                        R16 K12 [Vector2.new]
      103 MINUS                            R17 R11
      104 MOVE                             R18 R6
      105 CALL                             R16 2 1
      106 MOVE                             R13 R16
      107 GETIMPORT                        R16 K12 [Vector2.new]
      109 LOADN                            R17 0
      110 MOVE                             R18 R12
      111 CALL                             R16 2 1
      112 MOVE                             R14 R16
      113 GETIMPORT                        R16 K12 [Vector2.new]
      115 LOADN                            R17 1
      116 MOVE                             R18 R12
      117 CALL                             R16 2 1
      118 MOVE                             R15 R16
      119 JUMP                             ; [+23]
      120 GETUPVAL                         R17 1
      121 GETTABLEKS                       R16 R17 K15 ["Right"]
      123 JUMPIFNOTEQ                      R7 R16 ; [+19]
      125 GETIMPORT                        R16 K12 [Vector2.new]
      127 MOVE                             R17 R11
      128 MOVE                             R18 R6
      129 CALL                             R16 2 1
      130 MOVE                             R13 R16
      131 GETIMPORT                        R16 K12 [Vector2.new]
      133 LOADN                            R17 1
      134 MOVE                             R18 R12
      135 CALL                             R16 2 1
      136 MOVE                             R14 R16
      137 GETIMPORT                        R16 K12 [Vector2.new]
      139 LOADN                            R17 0
      140 MOVE                             R18 R12
      141 CALL                             R16 2 1
      142 MOVE                             R15 R16
      143 ORK                              R16 R3 K5 [0]
      144 LOADN                            R17 0
      145 JUMPIFNOTLT                      R17 R16 ; [+34]
      147 LOADB                            R17 1
      148 GETUPVAL                         R19 1
      149 GETTABLEKS                       R18 R19 K9 ["Top"]
      151 JUMPIFEQ                         R7 R18 ; [+8]
      153 GETUPVAL                         R19 1
      154 GETTABLEKS                       R18 R19 K13 ["Bottom"]
      156 JUMPIFEQ                         R7 R18 ; [+2]
      158 LOADB                            R17 0 +1
      159 LOADB                            R17 1
      160 MULK                             R18 R16 K16 [2]
      161 MULK                             R19 R16 K16 [2]
      162 JUMPIFNOT                        R17 ; [+3]
      163 ADD                              R18 R18 R9
      164 ADD                              R19 R19 R11
      165 JUMP                             ; [+2]
      166 ADD                              R18 R18 R11
      167 ADD                              R19 R19 R9
      168 GETIMPORT                        R20 K12 [Vector2.new]
      170 GETTABLEKS                       R23 R15 K17 ["X"]
      172 MUL                              R22 R23 R18
      173 SUB                              R21 R22 R16
      174 GETTABLEKS                       R24 R15 K18 ["Y"]
      176 MUL                              R23 R24 R19
      177 SUB                              R22 R23 R16
      178 CALL                             R20 2 1
      179 ADD                              R13 R13 R20
      180 JUMPIFNOT                        R2 ; [+3]
      181 MOVE                             R13 R2
      182 GETIMPORT                        R14 K20 [Vector2.zero]
      184 DUPTABLE                         R17 K23 [{"targetAnchorPoint", "subjectAnchorPoint", "offset"}]
      185 SETTABLEKS                       R14 R17 K21 ["targetAnchorPoint"]
      187 SETTABLEKS                       R15 R17 K22 ["subjectAnchorPoint"]
      189 SETTABLEKS                       R13 R17 K3 ["offset"]
      191 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["PopoverAlign"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["PopoverSide"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Providers"]
       25 GETTABLEKS                       R5 R6 K10 ["StudioPanels"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_0]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 RETURN                           R4 1

PROTO_0:
        0 LOADN                            R3 0
        1 LOADN                            R4 0
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R8 R0
        6 GETIMPORT                        R7 K1 [typeof]
        8 CALL                             R7 1 1
        9 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+5]
       11 GETTABLEKS                       R3 R0 K3 ["offset"]
       13 GETTABLEKS                       R5 R0 K4 ["position"]
       15 FASTCALL1                        TYPEOF R1 ; [+3]
       16 MOVE                             R8 R1
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+5]
       22 GETTABLEKS                       R4 R1 K3 ["offset"]
       24 GETTABLEKS                       R6 R1 K4 ["position"]
       26 LOADN                            R7 0
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K5 ["Center"]
       30 JUMPIFNOTEQ                      R6 R8 ; [+4]
       32 LOADK                            R7 K6 [0.5]
       33 LOADN                            R4 0
       34 JUMP                             ; [+7]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R8 R9 K7 ["End"]
       38 JUMPIFNOTEQ                      R6 R8 ; [+3]
       40 LOADN                            R7 1
       41 MINUS                            R4 R4
       42 LOADNIL                          R8
       43 LOADNIL                          R9
       44 LOADNIL                          R10
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R11 R12 K8 ["Top"]
       48 JUMPIFNOTEQ                      R5 R11 ; [+20]
       50 GETIMPORT                        R11 K11 [Vector2.new]
       52 MOVE                             R12 R4
       53 MINUS                            R13 R3
       54 CALL                             R11 2 1
       55 MOVE                             R8 R11
       56 GETIMPORT                        R11 K11 [Vector2.new]
       58 MOVE                             R12 R7
       59 LOADN                            R13 0
       60 CALL                             R11 2 1
       61 MOVE                             R9 R11
       62 GETIMPORT                        R11 K11 [Vector2.new]
       64 MOVE                             R12 R7
       65 LOADN                            R13 1
       66 CALL                             R11 2 1
       67 MOVE                             R10 R11
       68 JUMP                             ; [+71]
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R11 R12 K12 ["Bottom"]
       72 JUMPIFNOTEQ                      R5 R11 ; [+20]
       74 GETIMPORT                        R11 K11 [Vector2.new]
       76 MOVE                             R12 R4
       77 MOVE                             R13 R3
       78 CALL                             R11 2 1
       79 MOVE                             R8 R11
       80 GETIMPORT                        R11 K11 [Vector2.new]
       82 MOVE                             R12 R7
       83 LOADN                            R13 1
       84 CALL                             R11 2 1
       85 MOVE                             R9 R11
       86 GETIMPORT                        R11 K11 [Vector2.new]
       88 MOVE                             R12 R7
       89 LOADN                            R13 0
       90 CALL                             R11 2 1
       91 MOVE                             R10 R11
       92 JUMP                             ; [+47]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R11 R12 K13 ["Left"]
       96 JUMPIFNOTEQ                      R5 R11 ; [+20]
       98 GETIMPORT                        R11 K11 [Vector2.new]
      100 MINUS                            R12 R3
      101 MOVE                             R13 R4
      102 CALL                             R11 2 1
      103 MOVE                             R8 R11
      104 GETIMPORT                        R11 K11 [Vector2.new]
      106 LOADN                            R12 0
      107 MOVE                             R13 R7
      108 CALL                             R11 2 1
      109 MOVE                             R9 R11
      110 GETIMPORT                        R11 K11 [Vector2.new]
      112 LOADN                            R12 1
      113 MOVE                             R13 R7
      114 CALL                             R11 2 1
      115 MOVE                             R10 R11
      116 JUMP                             ; [+23]
      117 GETUPVAL                         R12 1
      118 GETTABLEKS                       R11 R12 K14 ["Right"]
      120 JUMPIFNOTEQ                      R5 R11 ; [+19]
      122 GETIMPORT                        R11 K11 [Vector2.new]
      124 MOVE                             R12 R3
      125 MOVE                             R13 R4
      126 CALL                             R11 2 1
      127 MOVE                             R8 R11
      128 GETIMPORT                        R11 K11 [Vector2.new]
      130 LOADN                            R12 1
      131 MOVE                             R13 R7
      132 CALL                             R11 2 1
      133 MOVE                             R9 R11
      134 GETIMPORT                        R11 K11 [Vector2.new]
      136 LOADN                            R12 0
      137 MOVE                             R13 R7
      138 CALL                             R11 2 1
      139 MOVE                             R10 R11
      140 JUMPIFNOT                        R2 ; [+7]
      141 MOVE                             R8 R2
      142 GETIMPORT                        R11 K11 [Vector2.new]
      144 LOADN                            R12 0
      145 LOADN                            R13 0
      146 CALL                             R11 2 1
      147 MOVE                             R9 R11
      148 DUPTABLE                         R11 K17 [{"targetAnchorPoint", "subjectAnchorPoint", "offset"}]
      149 SETTABLEKS                       R9 R11 K15 ["targetAnchorPoint"]
      151 SETTABLEKS                       R10 R11 K16 ["subjectAnchorPoint"]
      153 SETTABLEKS                       R8 R11 K3 ["offset"]
      155 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioFoundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R4 R2 K8 ["Enums"]
       16 GETTABLEKS                       R3 R4 K9 ["PopoverAlign"]
       18 GETTABLEKS                       R5 R2 K8 ["Enums"]
       20 GETTABLEKS                       R4 R5 K10 ["PopoverSide"]
       22 GETIMPORT                        R5 K6 [require]
       24 GETTABLEKS                       R6 R0 K11 ["Types"]
       26 CALL                             R5 1 1
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 RETURN                           R6 1

PROTO_0:
        0 LOADN                            R5 2
        1 MOVE                             R9 R1
        2 NAMECALL                         R7 R0 K0 ["Dot"]
        4 CALL                             R7 2 1
        5 MOVE                             R10 R1
        6 NAMECALL                         R8 R1 K0 ["Dot"]
        8 CALL                             R8 2 1
        9 DIV                              R6 R7 R8
       10 MUL                              R4 R5 R6
       11 MUL                              R3 R4 R1
       12 SUB                              R2 R0 R3
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R3
        5 RETURN                           R3 1
        6 GETTABLE                         R3 R2 R1
        7 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADNIL                          R2
        5 JUMP                             ; [+1]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R5 R0
       13 NAMECALL                         R3 R3 K0 ["getMeshOriginWorld"]
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQKNIL                  R3 ; [+3]
       18 LOADNIL                          R4
       19 RETURN                           R4 1
       20 MOVE                             R6 R2
       21 NAMECALL                         R4 R3 K1 ["PointToWorldSpace"]
       23 CALL                             R4 2 -1
       24 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+3]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K0 ["targetName"]
        7 GETTABLEKS                       R3 R0 K1 ["vertex"]
        9 GETUPVAL                         R6 1
       10 GETTABLE                         R5 R6 R2
       11 JUMPIFNOTEQKNIL                  R5 ; [+3]
       13 LOADNIL                          R4
       14 JUMP                             ; [+1]
       15 GETTABLE                         R4 R5 R3
       16 JUMPIFNOTEQKNIL                  R4 ; [+3]
       18 LOADNIL                          R1
       19 JUMP                             ; [+14]
       20 GETUPVAL                         R5 2
       21 MOVE                             R7 R2
       22 NAMECALL                         R5 R5 K2 ["getMeshOriginWorld"]
       24 CALL                             R5 2 1
       25 JUMPIFNOTEQKNIL                  R5 ; [+3]
       27 LOADNIL                          R1
       28 JUMP                             ; [+5]
       29 MOVE                             R8 R4
       30 NAMECALL                         R6 R5 K3 ["PointToWorldSpace"]
       32 CALL                             R6 2 1
       33 MOVE                             R1 R6
       34 JUMPIFNOTEQKNIL                  R1 ; [+3]
       36 LOADB                            R2 1
       37 RETURN                           R2 1
       38 GETUPVAL                         R2 3
       39 GETUPVAL                         R5 3
       40 GETUPVAL                         R7 0
       41 NAMECALL                         R5 R5 K4 ["PointToObjectSpace"]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K5 ["RightVector"]
       47 LOADN                            R9 2
       48 MOVE                             R13 R6
       49 NAMECALL                         R11 R5 K6 ["Dot"]
       51 CALL                             R11 2 1
       52 MOVE                             R14 R6
       53 NAMECALL                         R12 R6 K6 ["Dot"]
       55 CALL                             R12 2 1
       56 DIV                              R10 R11 R12
       57 MUL                              R8 R9 R10
       58 MUL                              R7 R8 R6
       59 SUB                              R4 R5 R7
       60 NAMECALL                         R2 R2 K3 ["PointToWorldSpace"]
       62 CALL                             R2 2 1
       63 SUB                              R4 R1 R2
       64 GETTABLEKS                       R3 R4 K7 ["Magnitude"]
       66 LOADK                            R4 K8 [0.2]
       67 JUMPIFNOTLT                      R4 R3 ; [+3]
       69 LOADB                            R4 0
       70 RETURN                           R4 1
       71 LOADB                            R4 1
       72 RETURN                           R4 1

PROTO_4:
        0 NEWTABLE                         R5 0 0
        2 NEWCLOSURE                       R6 P0
        3 CAPTURE                          VAL R2
        4 NEWCLOSURE                       R7 P1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 MOVE                             R8 R1
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 GETTABLE                         R13 R0 R11
       12 JUMPIFEQKNIL                     R13 ; [+133]
       14 MOVE                             R14 R12
       15 LOADNIL                          R15
       16 LOADNIL                          R16
       17 FORGPREP                         R14
       18 GETTABLE                         R19 R13 R17
       19 JUMPIFEQKNIL                     R19 ; [+124]
       21 LOADN                            R20 0
       22 JUMPIFLE                         R18 R20 ; [+121]
       24 GETTABLE                         R22 R2 R11
       25 JUMPIFNOTEQKNIL                  R22 ; [+3]
       27 LOADNIL                          R21
       28 JUMP                             ; [+1]
       29 GETTABLE                         R21 R22 R17
       30 JUMPIFNOTEQKNIL                  R21 ; [+3]
       32 LOADNIL                          R20
       33 JUMP                             ; [+13]
       34 MOVE                             R24 R11
       35 NAMECALL                         R22 R3 K0 ["getMeshOriginWorld"]
       37 CALL                             R22 2 1
       38 JUMPIFNOTEQKNIL                  R22 ; [+3]
       40 LOADNIL                          R20
       41 JUMP                             ; [+5]
       42 MOVE                             R25 R21
       43 NAMECALL                         R23 R22 K1 ["PointToWorldSpace"]
       45 CALL                             R23 2 1
       46 MOVE                             R20 R23
       47 NEWCLOSURE                       R21 P2
       48 CAPTURE                          VAL R20
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 MOVE                             R22 R19
       53 LOADNIL                          R23
       54 LOADNIL                          R24
       55 FORGPREP                         R22
       56 GETTABLEKS                       R28 R26 K2 ["targetName"]
       58 GETTABLE                         R27 R5 R28
       59 JUMPIFNOTEQKNIL                  R27 ; [+6]
       61 NEWTABLE                         R27 0 0
       63 GETTABLEKS                       R28 R26 K2 ["targetName"]
       65 SETTABLE                         R27 R5 R28
       66 GETTABLEKS                       R29 R26 K3 ["vertex"]
       68 GETTABLE                         R28 R27 R29
       69 JUMPIFNOTEQKNIL                  R28 ; [+72]
       71 JUMPIFNOTEQKNIL                  R20 ; [+3]
       73 LOADB                            R28 1
       74 JUMP                             ; [+62]
       75 GETTABLEKS                       R30 R26 K2 ["targetName"]
       77 GETTABLEKS                       R31 R26 K3 ["vertex"]
       79 GETTABLE                         R33 R2 R30
       80 JUMPIFNOTEQKNIL                  R33 ; [+3]
       82 LOADNIL                          R32
       83 JUMP                             ; [+1]
       84 GETTABLE                         R32 R33 R31
       85 JUMPIFNOTEQKNIL                  R32 ; [+3]
       87 LOADNIL                          R29
       88 JUMP                             ; [+13]
       89 MOVE                             R35 R30
       90 NAMECALL                         R33 R3 K0 ["getMeshOriginWorld"]
       92 CALL                             R33 2 1
       93 JUMPIFNOTEQKNIL                  R33 ; [+3]
       95 LOADNIL                          R29
       96 JUMP                             ; [+5]
       97 MOVE                             R36 R32
       98 NAMECALL                         R34 R33 K1 ["PointToWorldSpace"]
      100 CALL                             R34 2 1
      101 MOVE                             R29 R34
      102 JUMPIFNOTEQKNIL                  R29 ; [+3]
      104 LOADB                            R28 1
      105 JUMP                             ; [+31]
      106 MOVE                             R35 R20
      107 NAMECALL                         R33 R4 K4 ["PointToObjectSpace"]
      109 CALL                             R33 2 1
      110 GETTABLEKS                       R34 R4 K5 ["RightVector"]
      112 LOADN                            R37 2
      113 MOVE                             R41 R34
      114 NAMECALL                         R39 R33 K6 ["Dot"]
      116 CALL                             R39 2 1
      117 MOVE                             R42 R34
      118 NAMECALL                         R40 R34 K6 ["Dot"]
      120 CALL                             R40 2 1
      121 DIV                              R38 R39 R40
      122 MUL                              R36 R37 R38
      123 MUL                              R35 R36 R34
      124 SUB                              R32 R33 R35
      125 NAMECALL                         R30 R4 K1 ["PointToWorldSpace"]
      127 CALL                             R30 2 1
      128 SUB                              R32 R29 R30
      129 GETTABLEKS                       R31 R32 K7 ["Magnitude"]
      131 LOADK                            R32 K8 [0.2]
      132 JUMPIFNOTLT                      R32 R31 ; [+3]
      134 LOADB                            R28 0
      135 JUMP                             ; [+1]
      136 LOADB                            R28 1
      137 JUMPIFNOT                        R28 ; [+4]
      138 GETTABLEKS                       R28 R26 K3 ["vertex"]
      140 MINUS                            R29 R18
      141 SETTABLE                         R29 R27 R28
      142 FORGLOOP                         R22 2 ; [-87]
      144 FORGLOOP                         R14 2 ; [-127]
      146 FORGLOOP                         R8 2 ; [-136]
      148 MOVE                             R8 R5
      149 LOADNIL                          R9
      150 LOADNIL                          R10
      151 FORGPREP                         R8
      152 GETTABLE                         R13 R1 R11
      153 JUMPIFNOTEQKNIL                  R13 ; [+4]
      155 NEWTABLE                         R13 0 0
      157 SETTABLE                         R13 R1 R11
      158 MOVE                             R14 R12
      159 LOADNIL                          R15
      160 LOADNIL                          R16
      161 FORGPREP                         R14
      162 GETTABLE                         R19 R13 R17
      163 JUMPIFNOTEQKNIL                  R19 ; [+2]
      165 SETTABLE                         R18 R13 R17
      166 FORGLOOP                         R14 2 ; [-5]
      168 FORGLOOP                         R8 2 ; [-17]
      170 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["MeshEditingContexts"]
       16 GETTABLEKS                       R3 R4 K8 ["MeshEditingContextBase"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 DUPCLOSURE                       R4 K10 [PROTO_4]
       21 RETURN                           R4 1

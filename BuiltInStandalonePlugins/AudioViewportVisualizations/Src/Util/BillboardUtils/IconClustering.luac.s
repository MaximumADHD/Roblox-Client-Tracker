PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["center"]
        2 GETTABLEKS                       R4 R1 K0 ["center"]
        4 SUB                              R2 R3 R4
        5 GETTABLEKS                       R5 R2 K1 ["X"]
        7 GETTABLEKS                       R6 R2 K1 ["X"]
        9 MUL                              R4 R5 R6
       10 GETTABLEKS                       R6 R2 K2 ["Y"]
       12 GETTABLEKS                       R7 R2 K2 ["Y"]
       14 MUL                              R5 R6 R7
       15 ADD                              R3 R4 R5
       16 LOADN                            R4 4
       17 JUMPIFNOTLE                      R3 R4 ; [+3]
       19 LOADB                            R4 1
       20 RETURN                           R4 1
       21 LOADB                            R4 1
       22 GETTABLEKS                       R5 R0 K3 ["cameraDistance"]
       24 JUMPIFEQKNIL                     R5 ; [+8]
       26 GETTABLEKS                       R5 R0 K3 ["cameraDistance"]
       28 LOADN                            R6 100
       29 JUMPIFLE                         R6 R5 ; [+2]
       31 LOADB                            R4 0 +1
       32 LOADB                            R4 1
       33 LOADB                            R5 1
       34 GETTABLEKS                       R6 R1 K3 ["cameraDistance"]
       36 JUMPIFEQKNIL                     R6 ; [+8]
       38 GETTABLEKS                       R6 R1 K3 ["cameraDistance"]
       40 LOADN                            R7 100
       41 JUMPIFLE                         R7 R6 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 MOVE                             R6 R4
       46 JUMPIFNOT                        R6 ; [+9]
       47 MOVE                             R6 R5
       48 JUMPIFNOT                        R6 ; [+7]
       49 GETUPVAL                         R8 0
       50 GETUPVAL                         R9 0
       51 MUL                              R7 R8 R9
       52 JUMPIFLT                         R3 R7 ; [+2]
       54 LOADB                            R6 0 +1
       55 LOADB                            R6 1
       56 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQ                         R1 R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 0
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R0
        8 GETTABLE                         R2 R3 R4
        9 SETTABLE                         R2 R1 R0
       10 GETUPVAL                         R1 0
       11 GETTABLE                         R0 R1 R0
       12 JUMPBACK                         ; [-13]
       13 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEKS                       R3 R3 K0 ["center"]
        4 GETTABLEKS                       R3 R3 K1 ["X"]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R1
        8 GETTABLEKS                       R4 R4 K0 ["center"]
       10 GETTABLEKS                       R4 R4 K1 ["X"]
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 SETTABLE                         R4 R1 R4
        7 FORNLOOP                         R2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 GETIMPORT                        R3 K2 [table.create]
       12 LENGTH                           R4 R0
       13 CALL                             R3 1 1
       14 LOADN                            R6 1
       15 LENGTH                           R4 R0
       16 LOADN                            R5 1
       17 FORNPREP                         R4
       18 GETTABLE                         R7 R0 R6
       19 GETTABLEKS                       R7 R7 K3 ["center"]
       21 GETTABLEKS                       R7 R7 K4 ["X"]
       23 JUMPIFNOTEQ                      R7 R7 ; [+8]
       25 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
       27 MOVE                             R9 R3
       28 MOVE                             R10 R6
       29 GETIMPORT                        R8 K6 [table.insert]
       31 CALL                             R8 2 0
       32 FORNLOOP                         R4
       33 GETIMPORT                        R4 K8 [table.sort]
       35 MOVE                             R5 R3
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 CALL                             R4 2 0
       39 LOADN                            R6 1
       40 LENGTH                           R4 R3
       41 LOADN                            R5 1
       42 FORNPREP                         R4
       43 GETTABLE                         R7 R3 R6
       44 ADDK                             R10 R6 K9 [1]
       45 LENGTH                           R8 R3
       46 LOADN                            R9 1
       47 FORNPREP                         R8
       48 GETTABLE                         R11 R3 R10
       49 GETTABLE                         R13 R0 R11
       50 GETTABLEKS                       R13 R13 K3 ["center"]
       52 GETTABLEKS                       R13 R13 K4 ["X"]
       54 GETTABLE                         R14 R0 R7
       55 GETTABLEKS                       R14 R14 K3 ["center"]
       57 GETTABLEKS                       R14 R14 K4 ["X"]
       59 SUB                              R12 R13 R14
       60 GETUPVAL                         R13 0
       61 JUMPIFLT                         R13 R12 ; [+30]
       63 MOVE                             R12 R7
       64 GETTABLE                         R14 R1 R12
       65 JUMPIFEQ                         R14 R12 ; [+6]
       67 GETTABLE                         R15 R1 R12
       68 GETTABLE                         R14 R1 R15
       69 SETTABLE                         R14 R1 R12
       70 GETTABLE                         R12 R1 R12
       71 JUMPBACK                         ; [-8]
       72 MOVE                             R13 R11
       73 GETTABLE                         R14 R1 R13
       74 JUMPIFEQ                         R14 R13 ; [+6]
       76 GETTABLE                         R15 R1 R13
       77 GETTABLE                         R14 R1 R15
       78 SETTABLE                         R14 R1 R13
       79 GETTABLE                         R13 R1 R13
       80 JUMPBACK                         ; [-8]
       81 JUMPIFEQ                         R12 R13 ; [+9]
       83 GETUPVAL                         R14 1
       84 GETTABLEKS                       R14 R14 K10 ["iconsOverlap"]
       86 GETTABLE                         R15 R0 R7
       87 GETTABLE                         R16 R0 R11
       88 CALL                             R14 2 1
       89 JUMPIFNOT                        R14 ; [+1]
       90 SETTABLE                         R13 R1 R12
       91 FORNLOOP                         R8
       92 FORNLOOP                         R4
       93 NEWTABLE                         R4 0 0
       95 NEWTABLE                         R5 0 0
       97 LOADN                            R8 1
       98 LENGTH                           R6 R0
       99 LOADN                            R7 1
      100 FORNPREP                         R6
      101 MOVE                             R9 R8
      102 GETTABLE                         R10 R1 R9
      103 JUMPIFEQ                         R10 R9 ; [+6]
      105 GETTABLE                         R11 R1 R9
      106 GETTABLE                         R10 R1 R11
      107 SETTABLE                         R10 R1 R9
      108 GETTABLE                         R9 R1 R9
      109 JUMPBACK                         ; [-8]
      110 GETTABLE                         R10 R5 R9
      111 JUMPIF                           R10 ; [+11]
      112 NEWTABLE                         R11 0 0
      114 SETTABLE                         R11 R5 R9
      115 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
      117 MOVE                             R13 R4
      118 MOVE                             R14 R11
      119 GETIMPORT                        R12 K6 [table.insert]
      121 CALL                             R12 2 0
      122 MOVE                             R10 R11
      123 FASTCALL2                        TABLE_INSERT R10 R8 ; [+5]
      125 MOVE                             R12 R10
      126 MOVE                             R13 R8
      127 GETIMPORT                        R11 K6 [table.insert]
      129 CALL                             R11 2 0
      130 FORNLOOP                         R6
      131 RETURN                           R4 1

PROTO_4:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETIMPORT                        R2 K3 [Vector2.zero]
        7 MOVE                             R3 R1
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLE                         R8 R0 R7
       12 GETTABLEKS                       R8 R8 K4 ["center"]
       14 ADD                              R2 R2 R8
       15 FORGLOOP                         R3 2 ; [-5]
       17 LENGTH                           R4 R1
       18 DIV                              R3 R2 R4
       19 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Billboard"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 GETTABLEKS                       R4 R1 K10 ["ICON_SIZE"]
       20 DIVK                             R3 R4 K9 [2]
       21 DUPCLOSURE                       R4 K11 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 SETTABLEKS                       R4 R2 K12 ["iconsOverlap"]
       25 DUPCLOSURE                       R4 K13 [PROTO_3]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 SETTABLEKS                       R4 R2 K14 ["findClusters"]
       30 DUPCLOSURE                       R4 K15 [PROTO_4]
       31 SETTABLEKS                       R4 R2 K16 ["centroid"]
       33 RETURN                           R2 1

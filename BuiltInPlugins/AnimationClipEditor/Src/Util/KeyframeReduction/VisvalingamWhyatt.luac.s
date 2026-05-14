PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["remove"]
        4 CALL                             R1 2 0
        5 NAMECALL                         R1 R0 K1 ["updateArea"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K2 ["push"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_1:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 3
        2 JUMPIFNOTLT                      R1 R2 ; [+17]
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEN                        R9 R6 1
       11 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       13 MOVE                             R8 R1
       14 GETIMPORT                        R7 K2 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 2 ; [-8]
       19 RETURN                           R1 1
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["new"]
       23 CALL                             R1 0 1
       24 LOADNIL                          R2
       25 LOADN                            R5 2
       26 LENGTH                           R6 R0
       27 SUBK                             R3 R6 K4 [1]
       28 LOADN                            R4 1
       29 FORNPREP                         R3
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K3 ["new"]
       33 SUBK                             R8 R5 K4 [1]
       34 GETTABLE                         R7 R0 R8
       35 GETTABLE                         R8 R0 R5
       36 ADDK                             R10 R5 K4 [1]
       37 GETTABLE                         R9 R0 R10
       38 CALL                             R6 3 1
       39 NAMECALL                         R7 R6 K5 ["updateArea"]
       41 CALL                             R7 1 0
       42 SETTABLEKS                       R2 R6 K6 ["prev"]
       44 GETTABLEKS                       R7 R6 K6 ["prev"]
       46 JUMPIFNOT                        R7 ; [+4]
       47 GETTABLEKS                       R7 R6 K6 ["prev"]
       49 SETTABLEKS                       R6 R7 K7 ["next"]
       51 MOVE                             R9 R6
       52 NAMECALL                         R7 R1 K8 ["push"]
       54 CALL                             R7 2 0
       55 MOVE                             R2 R6
       56 FORNLOOP                         R3
       57 NEWCLOSURE                       R3 P0
       58 CAPTURE                          VAL R1
       59 GETIMPORT                        R4 K10 [table.create]
       61 LENGTH                           R5 R0
       62 CALL                             R4 1 1
       63 GETTABLEN                        R6 R0 1
       64 GETTABLEN                        R5 R6 1
       65 SETTABLEN                        R5 R4 1
       66 LENGTH                           R7 R0
       67 GETTABLE                         R6 R0 R7
       68 GETTABLEN                        R5 R6 1
       69 SETTABLEN                        R5 R4 2
       70 LENGTH                           R5 R0
       71 NAMECALL                         R6 R1 K11 ["pop"]
       73 CALL                             R6 1 1
       74 JUMPIFNOT                        R6 ; [+66]
       75 GETTABLEKS                       R8 R6 K12 ["b"]
       77 GETTABLEN                        R7 R8 1
       78 SETTABLE                         R7 R4 R5
       79 SUBK                             R5 R5 K4 [1]
       80 GETTABLEKS                       R7 R6 K6 ["prev"]
       82 JUMPIFNOT                        R7 ; [+25]
       83 GETTABLEKS                       R7 R6 K6 ["prev"]
       85 GETTABLEKS                       R8 R6 K7 ["next"]
       87 SETTABLEKS                       R8 R7 K7 ["next"]
       89 GETTABLEKS                       R7 R6 K6 ["prev"]
       91 GETTABLEKS                       R8 R6 K13 ["c"]
       93 SETTABLEKS                       R8 R7 K13 ["c"]
       95 GETTABLEKS                       R7 R6 K6 ["prev"]
       97 MOVE                             R10 R7
       98 NAMECALL                         R8 R1 K14 ["remove"]
      100 CALL                             R8 2 0
      101 NAMECALL                         R8 R7 K5 ["updateArea"]
      103 CALL                             R8 1 0
      104 MOVE                             R10 R7
      105 NAMECALL                         R8 R1 K8 ["push"]
      107 CALL                             R8 2 0
      108 GETTABLEKS                       R7 R6 K7 ["next"]
      110 JUMPIFNOT                        R7 ; [+25]
      111 GETTABLEKS                       R7 R6 K7 ["next"]
      113 GETTABLEKS                       R8 R6 K6 ["prev"]
      115 SETTABLEKS                       R8 R7 K6 ["prev"]
      117 GETTABLEKS                       R7 R6 K7 ["next"]
      119 GETTABLEKS                       R8 R6 K15 ["a"]
      121 SETTABLEKS                       R8 R7 K15 ["a"]
      123 GETTABLEKS                       R7 R6 K7 ["next"]
      125 MOVE                             R10 R7
      126 NAMECALL                         R8 R1 K14 ["remove"]
      128 CALL                             R8 2 0
      129 NAMECALL                         R8 R7 K5 ["updateArea"]
      131 CALL                             R8 1 0
      132 MOVE                             R10 R7
      133 NAMECALL                         R8 R1 K8 ["push"]
      135 CALL                             R8 2 0
      136 NAMECALL                         R7 R1 K11 ["pop"]
      138 CALL                             R7 1 1
      139 MOVE                             R6 R7
      140 JUMPBACK                         ; [-67]
      141 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["MinHeap"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["Triangle"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["Types"]
       19 CALL                             R3 1 1
       20 DUPCLOSURE                       R4 K8 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R4 1

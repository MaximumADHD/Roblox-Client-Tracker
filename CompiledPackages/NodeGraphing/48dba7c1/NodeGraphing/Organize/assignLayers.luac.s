PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["nodeIds"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R9 R0 K1 ["inAdj"]
        9 GETTABLE                         R8 R9 R6
       10 LENGTH                           R7 R8
       11 SETTABLE                         R7 R1 R6
       12 FORGLOOP                         R2 2 ; [-6]
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 GETTABLEKS                       R4 R0 K0 ["nodeIds"]
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLE                         R9 R1 R8
       24 JUMPIFNOTEQKN                    R9 K2 [0] ; [+10]
       26 LOADN                            R9 0
       27 SETTABLE                         R9 R2 R8
       28 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       30 MOVE                             R10 R3
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K5 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R4 2 ; [-13]
       37 LOADN                            R4 1
       38 LENGTH                           R5 R3
       39 JUMPIFNOTLE                      R4 R5 ; [+34]
       41 GETTABLE                         R5 R3 R4
       42 ADDK                             R4 R4 K6 [1]
       43 GETTABLEKS                       R9 R0 K7 ["outAdj"]
       45 GETTABLE                         R6 R9 R5
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 GETTABLE                         R12 R2 R5
       50 ADDK                             R11 R12 K6 [1]
       51 GETTABLE                         R12 R2 R10
       52 JUMPIFEQKNIL                     R12 ; [+4]
       54 GETTABLE                         R12 R2 R10
       55 JUMPIFNOTLT                      R12 R11 ; [+2]
       57 SETTABLE                         R11 R2 R10
       58 GETTABLE                         R12 R1 R10
       59 SUBK                             R12 R12 K6 [1]
       60 SETTABLE                         R12 R1 R10
       61 GETTABLE                         R12 R1 R10
       62 JUMPIFNOTEQKN                    R12 K2 [0] ; [+8]
       64 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       66 MOVE                             R13 R3
       67 MOVE                             R14 R10
       68 GETIMPORT                        R12 K5 [table.insert]
       70 CALL                             R12 2 0
       71 FORGLOOP                         R6 2 ; [-23]
       73 JUMPBACK                         ; [-36]
       74 GETTABLEKS                       R5 R0 K0 ["nodeIds"]
       76 LOADNIL                          R6
       77 LOADNIL                          R7
       78 FORGPREP                         R5
       79 GETTABLE                         R10 R2 R9
       80 JUMPIFNOTEQKNIL                  R10 ; [+3]
       82 LOADN                            R10 0
       83 SETTABLE                         R10 R2 R9
       84 FORGLOOP                         R5 2 ; [-6]
       86 LENGTH                           R7 R3
       87 LOADN                            R5 1
       88 LOADN                            R6 -1
       89 FORNPREP                         R5
       90 GETTABLE                         R8 R3 R7
       91 GETTABLEKS                       R10 R0 K7 ["outAdj"]
       93 GETTABLE                         R9 R10 R8
       94 LENGTH                           R10 R9
       95 LOADN                            R11 0
       96 JUMPIFNOTLT                      R11 R10 ; [+18]
       98 LOADK                            R10 K8 [∞]
       99 MOVE                             R11 R9
      100 LOADNIL                          R12
      101 LOADNIL                          R13
      102 FORGPREP                         R11
      103 GETTABLE                         R18 R2 R15
      104 FASTCALL2                        MATH_MIN R10 R18 ; [+4]
      106 MOVE                             R17 R10
      107 GETIMPORT                        R16 K11 [math.min]
      109 CALL                             R16 2 1
      110 MOVE                             R10 R16
      111 FORGLOOP                         R11 2 ; [-9]
      113 SUBK                             R11 R10 K6 [1]
      114 SETTABLE                         R11 R2 R8
      115 FORNLOOP                         R5
      116 LOADN                            R5 0
      117 GETTABLEKS                       R6 R0 K0 ["nodeIds"]
      119 LOADNIL                          R7
      120 LOADNIL                          R8
      121 FORGPREP                         R6
      122 GETTABLE                         R13 R2 R10
      123 FASTCALL2                        MATH_MAX R5 R13 ; [+4]
      125 MOVE                             R12 R5
      126 GETIMPORT                        R11 K13 [math.max]
      128 CALL                             R11 2 1
      129 MOVE                             R5 R11
      130 FORGLOOP                         R6 2 ; [-9]
      132 NEWTABLE                         R6 0 0
      134 LOADN                            R9 1
      135 ADDK                             R7 R5 K6 [1]
      136 LOADN                            R8 1
      137 FORNPREP                         R7
      138 NEWTABLE                         R10 0 0
      140 SETTABLE                         R10 R6 R9
      141 FORNLOOP                         R7
      142 GETTABLEKS                       R7 R0 K0 ["nodeIds"]
      144 LOADNIL                          R8
      145 LOADNIL                          R9
      146 FORGPREP                         R7
      147 GETTABLE                         R15 R2 R11
      148 ADDK                             R14 R15 K6 [1]
      149 GETTABLE                         R13 R6 R14
      150 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      152 MOVE                             R14 R11
      153 GETIMPORT                        R12 K5 [table.insert]
      155 CALL                             R12 2 0
      156 FORGLOOP                         R7 2 ; [-10]
      158 DUPTABLE                         R7 K17 [{"layerOf", "layers", "maxLayer"}]
      159 SETTABLEKS                       R2 R7 K14 ["layerOf"]
      161 SETTABLEKS                       R6 R7 K15 ["layers"]
      163 SETTABLEKS                       R5 R7 K16 ["maxLayer"]
      165 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1

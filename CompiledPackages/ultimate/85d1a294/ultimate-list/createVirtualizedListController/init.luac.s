PROTO_0:
        0 GETUPVAL                         R3 0
        1 IDIV                             R2 R3 R0
        2 ADDK                             R1 R2 K0 [1]
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 ADD                              R4 R5 R6
        6 IDIV                             R3 R4 R0
        7 ADDK                             R2 R3 K0 [1]
        8 FASTCALL2                        VECTOR R1 R2 ; [+5]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 GETIMPORT                        R3 K3 [Vector3.new]
       14 CALL                             R3 2 1
       15 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getAmountPerNonDominantInGrid"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 1
        7 GETUPVAL                         R3 2
        8 JUMPIFNOTEQKS                    R3 K1 ["x"] ; [+6]
       10 GETTABLEKS                       R2 R0 K2 ["X"]
       12 GETTABLEKS                       R2 R2 K3 ["Offset"]
       14 JUMP                             ; [+11]
       15 GETUPVAL                         R3 2
       16 JUMPIFNOTEQKS                    R3 K4 ["y"] ; [+6]
       18 GETTABLEKS                       R2 R0 K5 ["Y"]
       20 GETTABLEKS                       R2 R2 K3 ["Offset"]
       22 JUMP                             ; [+3]
       23 GETUPVAL                         R2 3
       24 GETUPVAL                         R3 2
       25 CALL                             R2 1 1
       26 LOADN                            R4 1
       27 GETUPVAL                         R7 4
       28 IDIV                             R6 R7 R2
       29 MUL                              R5 R6 R1
       30 ADD                              R3 R4 R5
       31 LOADN                            R6 1
       32 GETUPVAL                         R9 4
       33 GETUPVAL                         R10 5
       34 ADD                              R8 R9 R10
       35 IDIV                             R7 R8 R2
       36 ADD                              R5 R6 R7
       37 MUL                              R4 R5 R1
       38 GETUPVAL                         R5 6
       39 LOADK                            R6 K6 ["getIndexRangeInView: amountPerNonDominant = %d, scrollAxis = %d, dominantSize = %d. Going from %d to %d"]
       40 MOVE                             R7 R1
       41 GETUPVAL                         R8 4
       42 MOVE                             R9 R2
       43 MOVE                             R10 R3
       44 MOVE                             R11 R4
       45 CALL                             R5 6 0
       46 FASTCALL2                        VECTOR R3 R4 ; [+5]
       48 MOVE                             R6 R3
       49 MOVE                             R7 R4
       50 GETIMPORT                        R5 K9 [Vector3.new]
       52 CALL                             R5 2 1
       53 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["type"]
        3 JUMPIFNOTEQKS                    R0 K1 ["consistentUDim2"] ; [+7]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["udim2"]
        9 CALL                             R0 1 1
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K0 ["type"]
       14 JUMPIFNOTEQKS                    R0 K3 ["consistentSize"] ; [+21]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K4 ["size"]
       19 GETUPVAL                         R4 2
       20 IDIV                             R3 R4 R1
       21 ADDK                             R2 R3 K5 [1]
       22 GETUPVAL                         R6 2
       23 GETUPVAL                         R7 3
       24 ADD                              R5 R6 R7
       25 IDIV                             R4 R5 R1
       26 ADDK                             R3 R4 K5 [1]
       27 FASTCALL2                        VECTOR R2 R3 ; [+5]
       29 MOVE                             R5 R2
       30 MOVE                             R6 R3
       31 GETIMPORT                        R4 K8 [Vector3.new]
       33 CALL                             R4 2 1
       34 MOVE                             R0 R4
       35 RETURN                           R0 1
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K0 ["type"]
       39 JUMPIFNOTEQKS                    R0 K9 ["getter"] ; [+11]
       41 GETUPVAL                         R0 4
       42 GETUPVAL                         R1 5
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K10 ["callback"]
       46 GETUPVAL                         R3 2
       47 GETUPVAL                         R4 3
       48 GETUPVAL                         R5 6
       49 CALL                             R0 5 -1
       50 RETURN                           R0 -1
       51 GETUPVAL                         R0 0
       52 GETTABLEKS                       R0 R0 K0 ["type"]
       54 JUMPIFNOTEQKS                    R0 K11 ["spaced"] ; [+97]
       56 GETUPVAL                         R0 0
       57 GETTABLEKS                       R0 R0 K12 ["inner"]
       59 GETTABLEKS                       R0 R0 K0 ["type"]
       61 JUMPIFNOTEQKS                    R0 K3 ["consistentSize"] ; [+27]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K12 ["inner"]
       66 GETTABLEKS                       R2 R2 K4 ["size"]
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K13 ["spacing"]
       71 ADD                              R1 R2 R3
       72 GETUPVAL                         R4 2
       73 IDIV                             R3 R4 R1
       74 ADDK                             R2 R3 K5 [1]
       75 GETUPVAL                         R6 2
       76 GETUPVAL                         R7 3
       77 ADD                              R5 R6 R7
       78 IDIV                             R4 R5 R1
       79 ADDK                             R3 R4 K5 [1]
       80 FASTCALL2                        VECTOR R2 R3 ; [+5]
       82 MOVE                             R5 R2
       83 MOVE                             R6 R3
       84 GETIMPORT                        R4 K8 [Vector3.new]
       86 CALL                             R4 2 1
       87 MOVE                             R0 R4
       88 RETURN                           R0 1
       89 GETUPVAL                         R0 0
       90 GETTABLEKS                       R0 R0 K12 ["inner"]
       92 GETTABLEKS                       R0 R0 K0 ["type"]
       94 JUMPIFNOTEQKS                    R0 K1 ["consistentUDim2"] ; [+29]
       96 GETUPVAL                         R0 1
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K12 ["inner"]
      100 GETTABLEKS                       R2 R2 K2 ["udim2"]
      102 GETIMPORT                        R3 K16 [UDim2.fromOffset]
      104 GETUPVAL                         R5 6
      105 JUMPIFNOTEQKS                    R5 K17 ["x"] ; [+5]
      107 GETUPVAL                         R4 0
      108 GETTABLEKS                       R4 R4 K13 ["spacing"]
      110 JUMP                             ; [+1]
      111 LOADN                            R4 0
      112 GETUPVAL                         R6 6
      113 JUMPIFNOTEQKS                    R6 K18 ["y"] ; [+5]
      115 GETUPVAL                         R5 0
      116 GETTABLEKS                       R5 R5 K13 ["spacing"]
      118 JUMP                             ; [+1]
      119 LOADN                            R5 0
      120 CALL                             R3 2 1
      121 ADD                              R1 R2 R3
      122 CALL                             R0 1 1
      123 RETURN                           R0 1
      124 GETUPVAL                         R0 0
      125 GETTABLEKS                       R0 R0 K12 ["inner"]
      127 GETTABLEKS                       R0 R0 K0 ["type"]
      129 JUMPIFEQKS                       R0 K11 ["spaced"] ; [+8]
      131 GETUPVAL                         R0 0
      132 GETTABLEKS                       R0 R0 K12 ["inner"]
      134 GETTABLEKS                       R0 R0 K0 ["type"]
      136 JUMPIFNOTEQKS                    R0 K9 ["getter"] ; [+6]
      138 GETIMPORT                        R0 K20 [error]
      140 LOADK                            R1 K21 ["Unsupported spaced dimensions"]
      141 CALL                             R0 1 0
      142 RETURN                           R0 0
      143 GETUPVAL                         R0 7
      144 GETUPVAL                         R1 0
      145 GETTABLEKS                       R1 R1 K12 ["inner"]
      147 GETTABLEKS                       R1 R1 K0 ["type"]
      149 CALL                             R0 1 -1
      150 RETURN                           R0 -1
      151 RETURN                           R0 0
      152 GETUPVAL                         R0 7
      153 GETUPVAL                         R1 0
      154 GETTABLEKS                       R1 R1 K0 ["type"]
      156 CALL                             R0 1 -1
      157 RETURN                           R0 -1
      158 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R3
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 1 ; [-3]
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["offsetBoundaries"]
        3 JUMPIFEQKNIL                     R0 ; [+38]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["offsetBoundaries"]
        8 GETTABLEKS                       R0 R0 K1 ["X"]
       10 GETUPVAL                         R1 1
       11 JUMPIFNOTLE                      R0 R1 ; [+30]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["offsetBoundaries"]
       16 GETTABLEKS                       R0 R0 K2 ["Y"]
       18 GETUPVAL                         R2 2
       19 GETUPVAL                         R3 1
       20 ADD                              R1 R2 R3
       21 JUMPIFNOTLE                      R1 R0 ; [+20]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K3 ["windowSize"]
       26 GETUPVAL                         R1 3
       27 JUMPIFNOTEQ                      R0 R1 ; [+14]
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K4 ["dataSource"]
       32 GETUPVAL                         R1 4
       33 JUMPIFNOTEQ                      R0 R1 ; [+8]
       35 GETUPVAL                         R0 0
       36 GETTABLEKS                       R0 R0 K5 ["lastDimensions"]
       38 GETUPVAL                         R1 5
       39 JUMPIFNOTEQ                      R0 R1 ; [+2]
       41 RETURN                           R0 0
       42 GETUPVAL                         R0 6
       43 CALL                             R0 0 1
       44 GETUPVAL                         R1 7
       45 GETTABLEKS                       R1 R1 K6 ["getByRange"]
       47 GETUPVAL                         R2 4
       48 MOVE                             R3 R0
       49 CALL                             R1 2 1
       50 LENGTH                           R2 R1
       51 JUMPIFNOTEQKN                    R2 K7 [0] ; [+46]
       53 GETUPVAL                         R2 8
       54 LOADK                            R3 K8 ["View changed, but no items in list"]
       55 CALL                             R2 1 0
       56 DUPTABLE                         R2 K12 [{"range", "canvasSize", "windowSize", "lastDimensions", "cachedLastResult", "offsetBoundaries", "dataSource"}]
       57 SETTABLEKS                       R0 R2 K9 ["range"]
       59 GETIMPORT                        R3 K15 [UDim2.new]
       61 CALL                             R3 0 1
       62 SETTABLEKS                       R3 R2 K10 ["canvasSize"]
       64 GETUPVAL                         R3 3
       65 SETTABLEKS                       R3 R2 K3 ["windowSize"]
       67 GETUPVAL                         R3 5
       68 SETTABLEKS                       R3 R2 K5 ["lastDimensions"]
       70 NEWTABLE                         R3 0 0
       72 SETTABLEKS                       R3 R2 K11 ["cachedLastResult"]
       74 GETUPVAL                         R4 1
       75 GETUPVAL                         R6 2
       76 GETUPVAL                         R7 1
       77 ADD                              R5 R6 R7
       78 FASTCALL2                        VECTOR R4 R5 ; [+3]
       80 GETIMPORT                        R3 K17 [Vector3.new]
       82 CALL                             R3 2 1
       83 SETTABLEKS                       R3 R2 K0 ["offsetBoundaries"]
       85 GETUPVAL                         R3 4
       86 SETTABLEKS                       R3 R2 K4 ["dataSource"]
       88 SETUPVAL                         R2 0
       89 GETUPVAL                         R2 9
       90 LOADNIL                          R3
       91 LOADNIL                          R4
       92 FORGPREP                         R2
       93 MOVE                             R7 R5
       94 CALL                             R7 0 0
       95 FORGLOOP                         R2 1 ; [-3]
       97 RETURN                           R0 0
       98 GETUPVAL                         R2 10
       99 GETTABLEKS                       R2 R2 K18 ["getUDimRect"]
      101 GETUPVAL                         R3 5
      102 GETTABLEN                        R4 R1 1
      103 GETTABLEKS                       R5 R0 K1 ["X"]
      105 GETUPVAL                         R6 3
      106 GETUPVAL                         R7 11
      107 CALL                             R2 5 1
      108 GETUPVAL                         R3 10
      109 GETTABLEKS                       R3 R3 K18 ["getUDimRect"]
      111 GETUPVAL                         R4 5
      112 LENGTH                           R6 R1
      113 GETTABLE                         R5 R1 R6
      114 GETTABLEKS                       R6 R0 K2 ["Y"]
      116 GETUPVAL                         R7 3
      117 GETUPVAL                         R8 11
      118 CALL                             R3 5 1
      119 GETUPVAL                         R4 8
      120 LOADK                            R5 K19 ["View changed: %d..%d (scroll axis: %d, window axis: %d, offset boundaries: %* - %*)"]
      121 GETTABLEKS                       R6 R0 K1 ["X"]
      123 GETTABLEKS                       R7 R0 K2 ["Y"]
      125 GETUPVAL                         R8 1
      126 GETUPVAL                         R9 2
      127 GETUPVAL                         R10 0
      128 GETTABLEKS                       R10 R10 K0 ["offsetBoundaries"]
      130 JUMPIFNOT                        R10 ; [+5]
      131 GETUPVAL                         R10 0
      132 GETTABLEKS                       R10 R10 K0 ["offsetBoundaries"]
      134 GETTABLEKS                       R10 R10 K1 ["X"]
      136 GETUPVAL                         R11 0
      137 GETTABLEKS                       R11 R11 K0 ["offsetBoundaries"]
      139 JUMPIFNOT                        R11 ; [+5]
      140 GETUPVAL                         R11 0
      141 GETTABLEKS                       R11 R11 K0 ["offsetBoundaries"]
      143 GETTABLEKS                       R11 R11 K2 ["Y"]
      145 CALL                             R4 7 0
      146 DUPTABLE                         R4 K12 [{"range", "canvasSize", "windowSize", "lastDimensions", "cachedLastResult", "offsetBoundaries", "dataSource"}]
      147 SETTABLEKS                       R0 R4 K9 ["range"]
      149 GETUPVAL                         R5 10
      150 GETTABLEKS                       R5 R5 K20 ["getCanvasSize"]
      152 GETUPVAL                         R6 5
      153 GETUPVAL                         R7 4
      154 GETUPVAL                         R8 3
      155 GETUPVAL                         R9 11
      156 CALL                             R5 4 1
      157 SETTABLEKS                       R5 R4 K10 ["canvasSize"]
      159 GETUPVAL                         R5 3
      160 SETTABLEKS                       R5 R4 K3 ["windowSize"]
      162 GETUPVAL                         R5 5
      163 SETTABLEKS                       R5 R4 K5 ["lastDimensions"]
      165 SETTABLEKS                       R1 R4 K11 ["cachedLastResult"]
      167 GETUPVAL                         R7 11
      168 JUMPIFNOTEQKS                    R7 K21 ["x"] ; [+8]
      170 GETTABLEKS                       R6 R2 K22 ["position"]
      172 GETTABLEKS                       R6 R6 K1 ["X"]
      174 GETTABLEKS                       R6 R6 K23 ["Offset"]
      176 JUMP                             ; [+13]
      177 GETUPVAL                         R7 11
      178 JUMPIFNOTEQKS                    R7 K24 ["y"] ; [+8]
      180 GETTABLEKS                       R6 R2 K22 ["position"]
      182 GETTABLEKS                       R6 R6 K2 ["Y"]
      184 GETTABLEKS                       R6 R6 K23 ["Offset"]
      186 JUMP                             ; [+3]
      187 GETUPVAL                         R6 12
      188 GETUPVAL                         R7 11
      189 CALL                             R6 1 1
      190 GETUPVAL                         R8 11
      191 JUMPIFNOTEQKS                    R8 K21 ["x"] ; [+15]
      193 GETTABLEKS                       R8 R3 K22 ["position"]
      195 GETTABLEKS                       R8 R8 K1 ["X"]
      197 GETTABLEKS                       R8 R8 K23 ["Offset"]
      199 GETTABLEKS                       R9 R3 K25 ["size"]
      201 GETTABLEKS                       R9 R9 K1 ["X"]
      203 GETTABLEKS                       R9 R9 K23 ["Offset"]
      205 ADD                              R7 R8 R9
      206 JUMP                             ; [+20]
      207 GETUPVAL                         R8 11
      208 JUMPIFNOTEQKS                    R8 K24 ["y"] ; [+15]
      210 GETTABLEKS                       R8 R3 K22 ["position"]
      212 GETTABLEKS                       R8 R8 K2 ["Y"]
      214 GETTABLEKS                       R8 R8 K23 ["Offset"]
      216 GETTABLEKS                       R9 R3 K25 ["size"]
      218 GETTABLEKS                       R9 R9 K2 ["Y"]
      220 GETTABLEKS                       R9 R9 K23 ["Offset"]
      222 ADD                              R7 R8 R9
      223 JUMP                             ; [+3]
      224 GETUPVAL                         R7 12
      225 GETUPVAL                         R8 11
      226 CALL                             R7 1 1
      227 FASTCALL2                        VECTOR R6 R7 ; [+3]
      229 GETIMPORT                        R5 K17 [Vector3.new]
      231 CALL                             R5 2 1
      232 SETTABLEKS                       R5 R4 K0 ["offsetBoundaries"]
      234 GETUPVAL                         R5 4
      235 SETTABLEKS                       R5 R4 K4 ["dataSource"]
      237 SETUPVAL                         R4 0
      238 GETUPVAL                         R4 9
      239 LOADNIL                          R5
      240 LOADNIL                          R6
      241 FORGPREP                         R4
      242 MOVE                             R9 R7
      243 CALL                             R9 0 0
      244 FORGLOOP                         R4 1 ; [-3]
      246 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["type"]
        3 GETTABLEKS                       R4 R0 K0 ["type"]
        5 JUMPIFEQ                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       11 LOADK                            R3 K1 ["Data source type changed, you must keep it the same"]
       12 GETIMPORT                        R1 K3 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["equals"]
       18 GETUPVAL                         R2 0
       19 MOVE                             R3 R0
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+1]
       22 RETURN                           R0 0
       23 SETUPVAL                         R0 0
       24 GETUPVAL                         R1 2
       25 CALL                             R1 0 0
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["equals"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R0 0
        8 SETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["getDominantAxis"]
        8 MOVE                             R2 R0
        9 GETUPVAL                         R3 3
       10 CALL                             R1 2 1
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R1 4
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cachedLastResult"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canvasSize"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["range"]
        3 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R3 K8 [{[1], ["canvasSize"], ["windowSize"], ["lastDimensions"], ["scrollSizeAxis"] = 0, ["cachedLastResult"], ["dataSource"]}]
        1 FASTCALL                         VECTOR ; [+2]
        2 GETIMPORT                        R4 K11 [Vector3.new]
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["range"]
        7 GETIMPORT                        R4 K13 [UDim2.new]
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K1 ["canvasSize"]
       12 GETIMPORT                        R4 K15 [Vector2.new]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K2 ["windowSize"]
       17 SETTABLEKS                       R1 R3 K3 ["lastDimensions"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K6 ["cachedLastResult"]
       23 SETTABLEKS                       R0 R3 K7 ["dataSource"]
       25 LOADN                            R4 0
       26 LOADN                            R5 0
       27 GETIMPORT                        R6 K15 [Vector2.new]
       29 CALL                             R6 0 1
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          REF R4
       32 CAPTURE                          REF R5
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          REF R6
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          REF R4
       39 CAPTURE                          REF R5
       40 CAPTURE                          UPVAL U2
       41 NEWCLOSURE                       R9 P2
       42 CAPTURE                          REF R1
       43 CAPTURE                          VAL R8
       44 CAPTURE                          REF R4
       45 CAPTURE                          REF R5
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          REF R0
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U1
       50 NEWTABLE                         R10 0 0
       52 NEWCLOSURE                       R11 P3
       53 CAPTURE                          VAL R10
       54 NEWCLOSURE                       R12 P4
       55 CAPTURE                          REF R3
       56 CAPTURE                          REF R4
       57 CAPTURE                          REF R5
       58 CAPTURE                          REF R6
       59 CAPTURE                          REF R0
       60 CAPTURE                          REF R1
       61 CAPTURE                          VAL R9
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R10
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U1
       68 NEWCLOSURE                       R13 P5
       69 CAPTURE                          REF R4
       70 CAPTURE                          VAL R12
       71 NEWCLOSURE                       R14 P6
       72 CAPTURE                          REF R0
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R12
       75 NEWCLOSURE                       R15 P7
       76 CAPTURE                          UPVAL U0
       77 CAPTURE                          REF R1
       78 CAPTURE                          VAL R12
       79 NEWCLOSURE                       R16 P8
       80 CAPTURE                          REF R6
       81 CAPTURE                          REF R5
       82 CAPTURE                          UPVAL U0
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 NEWCLOSURE                       R17 P9
       86 CAPTURE                          REF R6
       87 NEWCLOSURE                       R18 P10
       88 CAPTURE                          REF R3
       89 NEWCLOSURE                       R19 P11
       90 CAPTURE                          REF R3
       91 NEWCLOSURE                       R20 P12
       92 CAPTURE                          REF R3
       93 NEWCLOSURE                       R21 P13
       94 CAPTURE                          VAL R10
       95 GETTABLEKS                       R23 R0 K16 ["type"]
       97 JUMPIFNOTEQKS                    R23 K17 ["mutableSource"] ; [+8]
       99 GETTABLEKS                       R22 R0 K18 ["methods"]
      101 GETTABLEKS                       R22 R22 K19 ["bindToChanged"]
      103 MOVE                             R23 R12
      104 CALL                             R22 1 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R22
      107 NEWCLOSURE                       R23 P14
      108 CAPTURE                          VAL R22
      109 DUPTABLE                         R24 K30 [{"setScrollAxis", "setDataSource", "setDimensions", "setWindowSize", "getWindowSize", "get", "getCanvasSize", "getRange", "bindToUpdate", "destroy"}]
      110 SETTABLEKS                       R13 R24 K20 ["setScrollAxis"]
      112 SETTABLEKS                       R14 R24 K21 ["setDataSource"]
      114 SETTABLEKS                       R15 R24 K22 ["setDimensions"]
      116 SETTABLEKS                       R16 R24 K23 ["setWindowSize"]
      118 SETTABLEKS                       R17 R24 K24 ["getWindowSize"]
      120 SETTABLEKS                       R18 R24 K25 ["get"]
      122 SETTABLEKS                       R19 R24 K26 ["getCanvasSize"]
      124 SETTABLEKS                       R20 R24 K27 ["getRange"]
      126 SETTABLEKS                       R21 R24 K28 ["bindToUpdate"]
      128 SETTABLEKS                       R23 R24 K29 ["destroy"]
      130 CLOSEUPVALS                      R0
      131 RETURN                           R24 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["DataSources"]
       11 GETTABLEKS                       R2 R2 K7 ["DataSourceMethods"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["DataSources"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Dimensions"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K5 [require]
       26 GETTABLEKS                       R5 R0 K8 ["Dimensions"]
       28 GETTABLEKS                       R5 R5 K9 ["DimensionsMethods"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K5 [require]
       33 GETIMPORT                        R6 K1 [script]
       35 GETTABLEKS                       R6 R6 K10 ["binarySearchIndexRangeInView"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K11 ["Util"]
       42 GETTABLEKS                       R7 R7 K12 ["createDebugLogger"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Util"]
       49 GETTABLEKS                       R8 R8 K13 ["exhaustiveMatch"]
       51 CALL                             R7 1 1
       52 MOVE                             R8 R6
       53 LOADK                            R9 K14 ["createVirtualizedListController"]
       54 CALL                             R8 1 1
       55 DUPCLOSURE                       R9 K15 [PROTO_16]
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 RETURN                           R9 1

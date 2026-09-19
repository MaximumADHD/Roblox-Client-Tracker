PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["BLACK"]
        6 LOADK                            R4 K1 [0.1]
        7 NAMECALL                         R1 R0 K2 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["Z_AXIS"]
       14 JUMPIFNOTEQ                      R0 R1 ; [+8]
       16 GETIMPORT                        R1 K6 [Color3.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADK                            R4 K7 [0.6]
       21 CALL                             R1 3 -1
       22 RETURN                           R1 -1
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R3 R3 K0 ["BLACK"]
       26 LOADK                            R4 K8 [0.2]
       27 NAMECALL                         R1 R0 K2 ["Lerp"]
       29 CALL                             R1 3 -1
       30 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"X", "Y", "Z", "V"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["X_AXIS"]
        4 SETTABLEKS                       R2 R1 K0 ["X"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K6 ["Y_AXIS"]
        9 SETTABLEKS                       R2 R1 K1 ["Y"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K7 ["Z_AXIS"]
       14 SETTABLEKS                       R2 R1 K2 ["Z"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K8 ["V_AXIS"]
       19 SETTABLEKS                       R2 R1 K3 ["V"]
       21 GETTABLE                         R2 R1 R0
       22 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+73]
        3 JUMPIFNOT                        R0 ; [+72]
        4 GETTABLEKS                       R2 R0 K0 ["getXAxisColor"]
        6 FASTCALL1                        TYPE R2 ; [+2]
        7 GETIMPORT                        R1 K2 [type]
        9 CALL                             R1 1 1
       10 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+65]
       12 GETTABLEKS                       R2 R0 K4 ["getYAxisColor"]
       14 FASTCALL1                        TYPE R2 ; [+2]
       15 GETIMPORT                        R1 K2 [type]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+57]
       20 GETTABLEKS                       R2 R0 K5 ["getZAxisColor"]
       22 FASTCALL1                        TYPE R2 ; [+2]
       23 GETIMPORT                        R1 K2 [type]
       25 CALL                             R1 1 1
       26 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+49]
       28 GETTABLEKS                       R2 R0 K6 ["getVAxisColor"]
       30 FASTCALL1                        TYPE R2 ; [+2]
       31 GETIMPORT                        R1 K2 [type]
       33 CALL                             R1 1 1
       34 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+41]
       36 GETUPVAL                         R1 1
       37 NAMECALL                         R2 R0 K0 ["getXAxisColor"]
       39 CALL                             R2 1 1
       40 JUMPIF                           R2 ; [+3]
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K7 ["X_AXIS"]
       44 SETTABLEKS                       R2 R1 K7 ["X_AXIS"]
       46 GETUPVAL                         R1 1
       47 NAMECALL                         R2 R0 K4 ["getYAxisColor"]
       49 CALL                             R2 1 1
       50 JUMPIF                           R2 ; [+3]
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K8 ["Y_AXIS"]
       54 SETTABLEKS                       R2 R1 K8 ["Y_AXIS"]
       56 GETUPVAL                         R1 1
       57 NAMECALL                         R2 R0 K5 ["getZAxisColor"]
       59 CALL                             R2 1 1
       60 JUMPIF                           R2 ; [+3]
       61 GETUPVAL                         R2 1
       62 GETTABLEKS                       R2 R2 K9 ["Z_AXIS"]
       64 SETTABLEKS                       R2 R1 K9 ["Z_AXIS"]
       66 GETUPVAL                         R1 1
       67 NAMECALL                         R2 R0 K6 ["getVAxisColor"]
       69 CALL                             R2 1 1
       70 JUMPIF                           R2 ; [+3]
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K10 ["V_AXIS"]
       74 SETTABLEKS                       R2 R1 K10 ["V_AXIS"]
       76 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["WHITE"]
        3 LOADK                            R4 K1 [0.1]
        4 NAMECALL                         R1 R0 K2 ["Lerp"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Flags"]
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagNextGenDraggers"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 16 0
       16 GETIMPORT                        R3 K9 [Color3.new]
       18 LOADN                            R4 1
       19 LOADN                            R5 1
       20 LOADN                            R6 1
       21 CALL                             R3 3 1
       22 SETTABLEKS                       R3 R2 K10 ["WHITE"]
       24 GETIMPORT                        R3 K9 [Color3.new]
       26 LOADN                            R4 0
       27 LOADN                            R5 0
       28 LOADN                            R6 0
       29 CALL                             R3 3 1
       30 SETTABLEKS                       R3 R2 K11 ["BLACK"]
       32 MOVE                             R3 R1
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+69]
       35 GETIMPORT                        R3 K13 [Color3.fromHex]
       37 GETIMPORT                        R4 K16 [string.format]
       39 LOADK                            R5 K17 ["%06X"]
       40 GETIMPORT                        R6 K19 [game]
       42 LOADK                            R8 K20 ["rbxRed"]
       43 NAMECALL                         R6 R6 K21 ["GetFastInt"]
       45 CALL                             R6 2 -1
       46 CALL                             R4 -1 -1
       47 CALL                             R3 -1 1
       48 GETIMPORT                        R4 K13 [Color3.fromHex]
       50 GETIMPORT                        R5 K16 [string.format]
       52 LOADK                            R6 K17 ["%06X"]
       53 GETIMPORT                        R7 K19 [game]
       55 LOADK                            R9 K22 ["rbxGreen"]
       56 NAMECALL                         R7 R7 K21 ["GetFastInt"]
       58 CALL                             R7 2 -1
       59 CALL                             R5 -1 -1
       60 CALL                             R4 -1 1
       61 GETIMPORT                        R5 K13 [Color3.fromHex]
       63 GETIMPORT                        R6 K16 [string.format]
       65 LOADK                            R7 K17 ["%06X"]
       66 GETIMPORT                        R8 K19 [game]
       68 LOADK                            R10 K23 ["rbxBlue"]
       69 NAMECALL                         R8 R8 K21 ["GetFastInt"]
       71 CALL                             R8 2 -1
       72 CALL                             R6 -1 -1
       73 CALL                             R5 -1 1
       74 GETIMPORT                        R6 K13 [Color3.fromHex]
       76 GETIMPORT                        R7 K16 [string.format]
       78 LOADK                            R8 K17 ["%06X"]
       79 GETIMPORT                        R9 K19 [game]
       81 LOADK                            R11 K24 ["rbxWhite"]
       82 NAMECALL                         R9 R9 K21 ["GetFastInt"]
       84 CALL                             R9 2 -1
       85 CALL                             R7 -1 -1
       86 CALL                             R6 -1 1
       87 GETIMPORT                        R7 K9 [Color3.new]
       89 LOADK                            R8 K25 [0.5]
       90 LOADK                            R9 K25 [0.5]
       91 LOADK                            R10 K25 [0.5]
       92 CALL                             R7 3 1
       93 SETTABLEKS                       R7 R2 K26 ["GRAY"]
       95 SETTABLEKS                       R3 R2 K27 ["X_AXIS"]
       97 SETTABLEKS                       R4 R2 K28 ["Y_AXIS"]
       99 SETTABLEKS                       R5 R2 K29 ["Z_AXIS"]
      101 SETTABLEKS                       R6 R2 K30 ["V_AXIS"]
      103 JUMP                             ; [+32]
      104 GETIMPORT                        R3 K9 [Color3.new]
      106 LOADK                            R4 K31 [0.7]
      107 LOADK                            R5 K31 [0.7]
      108 LOADK                            R6 K31 [0.7]
      109 CALL                             R3 3 1
      110 SETTABLEKS                       R3 R2 K26 ["GRAY"]
      112 GETIMPORT                        R3 K9 [Color3.new]
      114 LOADN                            R4 1
      115 LOADN                            R5 0
      116 LOADN                            R6 0
      117 CALL                             R3 3 1
      118 SETTABLEKS                       R3 R2 K27 ["X_AXIS"]
      120 GETIMPORT                        R3 K9 [Color3.new]
      122 LOADN                            R4 0
      123 LOADN                            R5 1
      124 LOADN                            R6 0
      125 CALL                             R3 3 1
      126 SETTABLEKS                       R3 R2 K28 ["Y_AXIS"]
      128 GETIMPORT                        R3 K9 [Color3.new]
      130 LOADK                            R4 K32 [0.15]
      131 LOADK                            R5 K32 [0.15]
      132 LOADN                            R6 1
      133 CALL                             R3 3 1
      134 SETTABLEKS                       R3 R2 K29 ["Z_AXIS"]
      136 GETIMPORT                        R3 K9 [Color3.new]
      138 LOADN                            R4 1
      139 LOADN                            R5 1
      140 LOADN                            R6 1
      141 CALL                             R3 3 1
      142 SETTABLEKS                       R3 R2 K33 ["WeldJoint"]
      144 GETIMPORT                        R3 K9 [Color3.new]
      146 LOADN                            R4 0
      147 LOADN                            R5 0
      148 LOADN                            R6 1
      149 CALL                             R3 3 1
      150 SETTABLEKS                       R3 R2 K34 ["RotatingJoint"]
      152 GETIMPORT                        R3 K9 [Color3.new]
      154 LOADN                            R4 1
      155 LOADN                            R5 0
      156 LOADN                            R6 0
      157 CALL                             R3 3 1
      158 SETTABLEKS                       R3 R2 K35 ["InvalidJoint"]
      160 GETIMPORT                        R3 K9 [Color3.new]
      162 LOADN                            R4 1
      163 LOADN                            R5 1
      164 LOADN                            R6 0
      165 CALL                             R3 3 1
      166 SETTABLEKS                       R3 R2 K36 ["SizeLimitReached"]
      168 DUPCLOSURE                       R3 K37 [PROTO_0]
      169 CAPTURE                          VAL R1
      170 CAPTURE                          VAL R2
      171 SETTABLEKS                       R3 R2 K38 ["makeDimmed"]
      173 DUPCLOSURE                       R3 K39 [PROTO_1]
      174 CAPTURE                          VAL R2
      175 SETTABLEKS                       R3 R2 K40 ["get"]
      177 DUPCLOSURE                       R3 K41 [PROTO_2]
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R2
      180 SETTABLEKS                       R3 R2 K42 ["init"]
      182 DUPCLOSURE                       R3 K43 [PROTO_3]
      183 CAPTURE                          VAL R2
      184 SETTABLEKS                       R3 R2 K44 ["makeHighlighted"]
      186 RETURN                           R2 1

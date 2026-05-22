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
       11 GETUPVAL                         R1 2
       12 JUMPIFNOT                        R1 ; [+12]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K3 ["Z_AXIS"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+8]
       18 GETIMPORT                        R1 K6 [Color3.new]
       20 LOADN                            R2 0
       21 LOADN                            R3 0
       22 LOADK                            R4 K7 [0.6]
       23 CALL                             R1 3 -1
       24 RETURN                           R1 -1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K0 ["BLACK"]
       28 GETUPVAL                         R5 2
       29 JUMPIFNOT                        R5 ; [+2]
       30 LOADK                            R4 K8 [0.2]
       31 JUMP                             ; [+1]
       32 LOADK                            R4 K9 [0.3]
       33 NAMECALL                         R1 R0 K2 ["Lerp"]
       35 CALL                             R1 3 -1
       36 RETURN                           R1 -1

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
       11 GETTABLEKS                       R2 R2 K6 ["getFFlagDraggerImprovements"]
       13 CALL                             R1 1 1
       14 CALL                             R1 0 1
       15 GETIMPORT                        R2 K4 [require]
       17 GETTABLEKS                       R3 R0 K5 ["Flags"]
       19 GETTABLEKS                       R3 R3 K7 ["getFFlagNextGenDraggers"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 16 0
       24 GETIMPORT                        R4 K10 [Color3.new]
       26 LOADN                            R5 1
       27 LOADN                            R6 1
       28 LOADN                            R7 1
       29 CALL                             R4 3 1
       30 SETTABLEKS                       R4 R3 K11 ["WHITE"]
       32 GETIMPORT                        R4 K10 [Color3.new]
       34 LOADN                            R5 0
       35 LOADN                            R6 0
       36 LOADN                            R7 0
       37 CALL                             R4 3 1
       38 SETTABLEKS                       R4 R3 K12 ["BLACK"]
       40 MOVE                             R4 R2
       41 CALL                             R4 0 1
       42 JUMPIFNOT                        R4 ; [+69]
       43 GETIMPORT                        R4 K14 [Color3.fromHex]
       45 GETIMPORT                        R5 K17 [string.format]
       47 LOADK                            R6 K18 ["%06X"]
       48 GETIMPORT                        R7 K20 [game]
       50 LOADK                            R9 K21 ["rbxRed"]
       51 NAMECALL                         R7 R7 K22 ["GetFastInt"]
       53 CALL                             R7 2 -1
       54 CALL                             R5 -1 -1
       55 CALL                             R4 -1 1
       56 GETIMPORT                        R5 K14 [Color3.fromHex]
       58 GETIMPORT                        R6 K17 [string.format]
       60 LOADK                            R7 K18 ["%06X"]
       61 GETIMPORT                        R8 K20 [game]
       63 LOADK                            R10 K23 ["rbxGreen"]
       64 NAMECALL                         R8 R8 K22 ["GetFastInt"]
       66 CALL                             R8 2 -1
       67 CALL                             R6 -1 -1
       68 CALL                             R5 -1 1
       69 GETIMPORT                        R6 K14 [Color3.fromHex]
       71 GETIMPORT                        R7 K17 [string.format]
       73 LOADK                            R8 K18 ["%06X"]
       74 GETIMPORT                        R9 K20 [game]
       76 LOADK                            R11 K24 ["rbxBlue"]
       77 NAMECALL                         R9 R9 K22 ["GetFastInt"]
       79 CALL                             R9 2 -1
       80 CALL                             R7 -1 -1
       81 CALL                             R6 -1 1
       82 GETIMPORT                        R7 K14 [Color3.fromHex]
       84 GETIMPORT                        R8 K17 [string.format]
       86 LOADK                            R9 K18 ["%06X"]
       87 GETIMPORT                        R10 K20 [game]
       89 LOADK                            R12 K25 ["rbxWhite"]
       90 NAMECALL                         R10 R10 K22 ["GetFastInt"]
       92 CALL                             R10 2 -1
       93 CALL                             R8 -1 -1
       94 CALL                             R7 -1 1
       95 GETIMPORT                        R8 K10 [Color3.new]
       97 LOADK                            R9 K26 [0.5]
       98 LOADK                            R10 K26 [0.5]
       99 LOADK                            R11 K26 [0.5]
      100 CALL                             R8 3 1
      101 SETTABLEKS                       R8 R3 K27 ["GRAY"]
      103 SETTABLEKS                       R4 R3 K28 ["X_AXIS"]
      105 SETTABLEKS                       R5 R3 K29 ["Y_AXIS"]
      107 SETTABLEKS                       R6 R3 K30 ["Z_AXIS"]
      109 SETTABLEKS                       R7 R3 K31 ["V_AXIS"]
      111 JUMP                             ; [+40]
      112 GETIMPORT                        R4 K10 [Color3.new]
      114 LOADK                            R5 K32 [0.7]
      115 LOADK                            R6 K32 [0.7]
      116 LOADK                            R7 K32 [0.7]
      117 CALL                             R4 3 1
      118 SETTABLEKS                       R4 R3 K27 ["GRAY"]
      120 GETIMPORT                        R4 K10 [Color3.new]
      122 LOADN                            R5 1
      123 LOADN                            R6 0
      124 LOADN                            R7 0
      125 CALL                             R4 3 1
      126 SETTABLEKS                       R4 R3 K28 ["X_AXIS"]
      128 GETIMPORT                        R4 K10 [Color3.new]
      130 LOADN                            R5 0
      131 LOADN                            R6 1
      132 LOADN                            R7 0
      133 CALL                             R4 3 1
      134 SETTABLEKS                       R4 R3 K29 ["Y_AXIS"]
      136 JUMPIFNOT                        R1 ; [+7]
      137 GETIMPORT                        R4 K10 [Color3.new]
      139 LOADK                            R5 K33 [0.15]
      140 LOADK                            R6 K33 [0.15]
      141 LOADN                            R7 1
      142 CALL                             R4 3 1
      143 JUMP                             ; [+6]
      144 GETIMPORT                        R4 K10 [Color3.new]
      146 LOADN                            R5 0
      147 LOADN                            R6 0
      148 LOADN                            R7 1
      149 CALL                             R4 3 1
      150 SETTABLEKS                       R4 R3 K30 ["Z_AXIS"]
      152 GETIMPORT                        R4 K10 [Color3.new]
      154 LOADN                            R5 1
      155 LOADN                            R6 1
      156 LOADN                            R7 1
      157 CALL                             R4 3 1
      158 SETTABLEKS                       R4 R3 K34 ["WeldJoint"]
      160 GETIMPORT                        R4 K10 [Color3.new]
      162 LOADN                            R5 0
      163 LOADN                            R6 0
      164 LOADN                            R7 1
      165 CALL                             R4 3 1
      166 SETTABLEKS                       R4 R3 K35 ["RotatingJoint"]
      168 GETIMPORT                        R4 K10 [Color3.new]
      170 LOADN                            R5 1
      171 LOADN                            R6 0
      172 LOADN                            R7 0
      173 CALL                             R4 3 1
      174 SETTABLEKS                       R4 R3 K36 ["InvalidJoint"]
      176 GETIMPORT                        R4 K10 [Color3.new]
      178 LOADN                            R5 1
      179 LOADN                            R6 1
      180 LOADN                            R7 0
      181 CALL                             R4 3 1
      182 SETTABLEKS                       R4 R3 K37 ["SizeLimitReached"]
      184 DUPCLOSURE                       R4 K38 [PROTO_0]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R1
      188 SETTABLEKS                       R4 R3 K39 ["makeDimmed"]
      190 DUPCLOSURE                       R4 K40 [PROTO_1]
      191 CAPTURE                          VAL R3
      192 SETTABLEKS                       R4 R3 K41 ["get"]
      194 DUPCLOSURE                       R4 K42 [PROTO_2]
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R3
      197 SETTABLEKS                       R4 R3 K43 ["init"]
      199 DUPCLOSURE                       R4 K44 [PROTO_3]
      200 CAPTURE                          VAL R3
      201 SETTABLEKS                       R4 R3 K45 ["makeHighlighted"]
      203 RETURN                           R3 1

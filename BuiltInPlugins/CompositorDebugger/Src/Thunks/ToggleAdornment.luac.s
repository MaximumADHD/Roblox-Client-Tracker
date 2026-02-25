PROTO_0:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFEQKNIL                     R0 ; [+5]
        8 GETTABLEKS                       R7 R6 K0 ["count"]
       10 JUMPIFNOTLT                      R7 R0 ; [+4]
       12 GETTABLEKS                       R0 R6 K0 ["count"]
       14 MOVE                             R1 R5
       15 FORGLOOP                         R2 2 ; [-10]
       17 GETUPVAL                         R3 0
       18 GETTABLE                         R2 R3 R1
       19 GETTABLEKS                       R3 R2 K0 ["count"]
       21 ADDK                             R3 R3 K1 [1]
       22 SETTABLEKS                       R3 R2 K0 ["count"]
       24 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["count"]
        2 SUBK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["count"]
        5 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["getState"]
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K1 ["Status"]
        5 GETTABLEKS                       R1 R2 K2 ["Actor"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R5 R0 K0 ["getState"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R4 R5 K1 ["Status"]
       13 GETTABLEKS                       R3 R4 K3 ["Adornments"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R2 R4
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETUPVAL                         R5 1
       20 GETTABLE                         R4 R2 R5
       21 GETTABLEKS                       R3 R4 K4 ["enabled"]
       23 JUMPIF                           R3 ; [+30]
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 GETUPVAL                         R5 3
       27 GETTABLE                         R4 R5 R3
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R6 K7 [{"enabled", "colorEntry", "index"}]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K4 ["enabled"]
       33 SETTABLEKS                       R4 R6 K5 ["colorEntry"]
       35 SETTABLEKS                       R3 R6 K6 ["index"]
       37 SETTABLE                         R6 R2 R5
       38 GETUPVAL                         R7 1
       39 GETTABLE                         R6 R2 R7
       40 GETTABLEKS                       R5 R6 K8 ["gizmo"]
       42 JUMPIF                           R5 ; [+25]
       43 GETUPVAL                         R6 1
       44 GETTABLE                         R5 R2 R6
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R6 R7 K9 ["new"]
       48 MOVE                             R7 R1
       49 GETUPVAL                         R8 1
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K8 ["gizmo"]
       53 JUMP                             ; [+14]
       54 GETUPVAL                         R5 1
       55 GETTABLE                         R4 R2 R5
       56 GETTABLEKS                       R3 R4 K5 ["colorEntry"]
       58 GETTABLEKS                       R4 R3 K10 ["count"]
       60 SUBK                             R4 R4 K11 [1]
       61 SETTABLEKS                       R4 R3 K10 ["count"]
       63 GETUPVAL                         R4 1
       64 GETTABLE                         R3 R2 R4
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R3 K4 ["enabled"]
       68 GETUPVAL                         R5 5
       69 MOVE                             R6 R2
       70 CALL                             R5 1 -1
       71 NAMECALL                         R3 R0 K12 ["dispatch"]
       73 CALL                             R3 -1 0
       74 GETUPVAL                         R5 6
       75 CALL                             R5 0 -1
       76 NAMECALL                         R3 R0 K12 ["dispatch"]
       78 CALL                             R3 -1 0
       79 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["copy"]
       16 GETTABLEKS                       R4 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R4 K10 ["Actions"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["SetAdornments"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R6 R0 K9 ["Src"]
       27 GETTABLEKS                       R5 R6 K12 ["Thunks"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R5 K13 ["RenderAdornments"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K15 ["Gizmo"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R11 R0 K9 ["Src"]
       47 GETTABLEKS                       R10 R11 K16 ["Types"]
       49 CALL                             R9 1 1
       50 NEWTABLE                         R10 0 11
       52 DUPTABLE                         R11 K19 [{"color", "count"}]
       53 GETIMPORT                        R12 K22 [Color3.fromHex]
       55 LOADK                            R13 K23 ["#FDEBAC"]
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K17 ["color"]
       59 LOADN                            R12 0
       60 SETTABLEKS                       R12 R11 K18 ["count"]
       62 DUPTABLE                         R12 K19 [{"color", "count"}]
       63 GETIMPORT                        R13 K22 [Color3.fromHex]
       65 LOADK                            R14 K24 ["#FFAE3E"]
       66 CALL                             R13 1 1
       67 SETTABLEKS                       R13 R12 K17 ["color"]
       69 LOADN                            R13 0
       70 SETTABLEKS                       R13 R12 K18 ["count"]
       72 DUPTABLE                         R13 K19 [{"color", "count"}]
       73 GETIMPORT                        R14 K22 [Color3.fromHex]
       75 LOADK                            R15 K25 ["#F98B58"]
       76 CALL                             R14 1 1
       77 SETTABLEKS                       R14 R13 K17 ["color"]
       79 LOADN                            R14 0
       80 SETTABLEKS                       R14 R13 K18 ["count"]
       82 DUPTABLE                         R14 K19 [{"color", "count"}]
       83 GETIMPORT                        R15 K22 [Color3.fromHex]
       85 LOADK                            R16 K26 ["#FF62C0"]
       86 CALL                             R15 1 1
       87 SETTABLEKS                       R15 R14 K17 ["color"]
       89 LOADN                            R15 0
       90 SETTABLEKS                       R15 R14 K18 ["count"]
       92 DUPTABLE                         R15 K19 [{"color", "count"}]
       93 GETIMPORT                        R16 K22 [Color3.fromHex]
       95 LOADK                            R17 K27 ["#D65AFC"]
       96 CALL                             R16 1 1
       97 SETTABLEKS                       R16 R15 K17 ["color"]
       99 LOADN                            R16 0
      100 SETTABLEKS                       R16 R15 K18 ["count"]
      102 DUPTABLE                         R16 K19 [{"color", "count"}]
      103 GETIMPORT                        R17 K22 [Color3.fromHex]
      105 LOADK                            R18 K28 ["#1AC8FF"]
      106 CALL                             R17 1 1
      107 SETTABLEKS                       R17 R16 K17 ["color"]
      109 LOADN                            R17 0
      110 SETTABLEKS                       R17 R16 K18 ["count"]
      112 DUPTABLE                         R17 K19 [{"color", "count"}]
      113 GETIMPORT                        R18 K22 [Color3.fromHex]
      115 LOADK                            R19 K29 ["#3BF2B1"]
      116 CALL                             R18 1 1
      117 SETTABLEKS                       R18 R17 K17 ["color"]
      119 LOADN                            R18 0
      120 SETTABLEKS                       R18 R17 K18 ["count"]
      122 DUPTABLE                         R18 K19 [{"color", "count"}]
      123 GETIMPORT                        R19 K22 [Color3.fromHex]
      125 LOADK                            R20 K30 ["#0ADE52"]
      126 CALL                             R19 1 1
      127 SETTABLEKS                       R19 R18 K17 ["color"]
      129 LOADN                            R19 0
      130 SETTABLEKS                       R19 R18 K18 ["count"]
      132 DUPTABLE                         R19 K19 [{"color", "count"}]
      133 GETIMPORT                        R20 K22 [Color3.fromHex]
      135 LOADK                            R21 K31 ["#95FF0F"]
      136 CALL                             R20 1 1
      137 SETTABLEKS                       R20 R19 K17 ["color"]
      139 LOADN                            R20 0
      140 SETTABLEKS                       R20 R19 K18 ["count"]
      142 DUPTABLE                         R20 K19 [{"color", "count"}]
      143 GETIMPORT                        R21 K22 [Color3.fromHex]
      145 LOADK                            R22 K32 ["#DBFF66"]
      146 CALL                             R21 1 1
      147 SETTABLEKS                       R21 R20 K17 ["color"]
      149 LOADN                            R21 0
      150 SETTABLEKS                       R21 R20 K18 ["count"]
      152 DUPTABLE                         R21 K19 [{"color", "count"}]
      153 GETIMPORT                        R22 K22 [Color3.fromHex]
      155 LOADK                            R23 K33 ["#FBFF3E"]
      156 CALL                             R22 1 1
      157 SETTABLEKS                       R22 R21 K17 ["color"]
      159 LOADN                            R22 0
      160 SETTABLEKS                       R22 R21 K18 ["count"]
      162 SETLIST                          R10 R11 11 [1]
      164 DUPCLOSURE                       R11 K34 [PROTO_0]
      165 CAPTURE                          VAL R10
      166 DUPCLOSURE                       R12 K35 [PROTO_1]
      167 DUPCLOSURE                       R13 K36 [PROTO_3]
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R10
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R6
      174 RETURN                           R13 1

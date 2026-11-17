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
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["Status"]
        5 GETTABLEKS                       R1 R1 K2 ["Actor"]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R3 R0 K0 ["getState"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R3 R3 K1 ["Status"]
       13 GETTABLEKS                       R3 R3 K3 ["Adornments"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 1
       17 GETTABLE                         R3 R2 R4
       18 JUMPIFNOT                        R3 ; [+5]
       19 GETUPVAL                         R4 1
       20 GETTABLE                         R3 R2 R4
       21 GETTABLEKS                       R3 R3 K4 ["enabled"]
       23 JUMPIF                           R3 ; [+27]
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 GETUPVAL                         R5 3
       27 GETTABLE                         R4 R5 R3
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R6 K8 [{["enabled"] = True, ["colorEntry"], ["index"]}]
       30 SETTABLEKS                       R4 R6 K6 ["colorEntry"]
       32 SETTABLEKS                       R3 R6 K7 ["index"]
       34 SETTABLE                         R6 R2 R5
       35 GETUPVAL                         R6 1
       36 GETTABLE                         R5 R2 R6
       37 GETTABLEKS                       R5 R5 K9 ["gizmo"]
       39 JUMPIF                           R5 ; [+25]
       40 GETUPVAL                         R6 1
       41 GETTABLE                         R5 R2 R6
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K10 ["new"]
       45 MOVE                             R7 R1
       46 GETUPVAL                         R8 1
       47 CALL                             R6 2 1
       48 SETTABLEKS                       R6 R5 K9 ["gizmo"]
       50 JUMP                             ; [+14]
       51 GETUPVAL                         R4 1
       52 GETTABLE                         R3 R2 R4
       53 GETTABLEKS                       R3 R3 K6 ["colorEntry"]
       55 GETTABLEKS                       R4 R3 K11 ["count"]
       57 SUBK                             R4 R4 K12 [1]
       58 SETTABLEKS                       R4 R3 K11 ["count"]
       60 GETUPVAL                         R4 1
       61 GETTABLE                         R3 R2 R4
       62 LOADB                            R4 0
       63 SETTABLEKS                       R4 R3 K4 ["enabled"]
       65 GETUPVAL                         R5 5
       66 MOVE                             R6 R2
       67 CALL                             R5 1 -1
       68 NAMECALL                         R3 R0 K13 ["dispatch"]
       70 CALL                             R3 -1 0
       71 GETUPVAL                         R5 6
       72 CALL                             R5 0 -1
       73 NAMECALL                         R3 R0 K13 ["dispatch"]
       75 CALL                             R3 -1 0
       76 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["copy"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Actions"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R5 R3 K11 ["SetAdornments"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R0 K9 ["Src"]
       27 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R5 K13 ["RenderAdornments"]
       33 CALL                             R6 1 1
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R7 K14 ["Util"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R7 K15 ["Gizmo"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R10 R0 K9 ["Src"]
       47 GETTABLEKS                       R10 R10 K16 ["Types"]
       49 CALL                             R9 1 1
       50 NEWTABLE                         R10 0 11
       52 DUPTABLE                         R11 K20 [{["color"], ["count"] = 0}]
       53 GETIMPORT                        R12 K23 [Color3.fromHex]
       55 LOADK                            R13 K24 ["#FDEBAC"]
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K17 ["color"]
       59 DUPTABLE                         R12 K20 [{["color"], ["count"] = 0}]
       60 GETIMPORT                        R13 K23 [Color3.fromHex]
       62 LOADK                            R14 K25 ["#FFAE3E"]
       63 CALL                             R13 1 1
       64 SETTABLEKS                       R13 R12 K17 ["color"]
       66 DUPTABLE                         R13 K20 [{["color"], ["count"] = 0}]
       67 GETIMPORT                        R14 K23 [Color3.fromHex]
       69 LOADK                            R15 K26 ["#F98B58"]
       70 CALL                             R14 1 1
       71 SETTABLEKS                       R14 R13 K17 ["color"]
       73 DUPTABLE                         R14 K20 [{["color"], ["count"] = 0}]
       74 GETIMPORT                        R15 K23 [Color3.fromHex]
       76 LOADK                            R16 K27 ["#FF62C0"]
       77 CALL                             R15 1 1
       78 SETTABLEKS                       R15 R14 K17 ["color"]
       80 DUPTABLE                         R15 K20 [{["color"], ["count"] = 0}]
       81 GETIMPORT                        R16 K23 [Color3.fromHex]
       83 LOADK                            R17 K28 ["#D65AFC"]
       84 CALL                             R16 1 1
       85 SETTABLEKS                       R16 R15 K17 ["color"]
       87 DUPTABLE                         R16 K20 [{["color"], ["count"] = 0}]
       88 GETIMPORT                        R17 K23 [Color3.fromHex]
       90 LOADK                            R18 K29 ["#1AC8FF"]
       91 CALL                             R17 1 1
       92 SETTABLEKS                       R17 R16 K17 ["color"]
       94 DUPTABLE                         R17 K20 [{["color"], ["count"] = 0}]
       95 GETIMPORT                        R18 K23 [Color3.fromHex]
       97 LOADK                            R19 K30 ["#3BF2B1"]
       98 CALL                             R18 1 1
       99 SETTABLEKS                       R18 R17 K17 ["color"]
      101 DUPTABLE                         R18 K20 [{["color"], ["count"] = 0}]
      102 GETIMPORT                        R19 K23 [Color3.fromHex]
      104 LOADK                            R20 K31 ["#0ADE52"]
      105 CALL                             R19 1 1
      106 SETTABLEKS                       R19 R18 K17 ["color"]
      108 DUPTABLE                         R19 K20 [{["color"], ["count"] = 0}]
      109 GETIMPORT                        R20 K23 [Color3.fromHex]
      111 LOADK                            R21 K32 ["#95FF0F"]
      112 CALL                             R20 1 1
      113 SETTABLEKS                       R20 R19 K17 ["color"]
      115 DUPTABLE                         R20 K20 [{["color"], ["count"] = 0}]
      116 GETIMPORT                        R21 K23 [Color3.fromHex]
      118 LOADK                            R22 K33 ["#DBFF66"]
      119 CALL                             R21 1 1
      120 SETTABLEKS                       R21 R20 K17 ["color"]
      122 DUPTABLE                         R21 K20 [{["color"], ["count"] = 0}]
      123 GETIMPORT                        R22 K23 [Color3.fromHex]
      125 LOADK                            R23 K34 ["#FBFF3E"]
      126 CALL                             R22 1 1
      127 SETTABLEKS                       R22 R21 K17 ["color"]
      129 SETLIST                          R10 R11 11 [1]
      131 DUPCLOSURE                       R11 K35 [PROTO_0]
      132 CAPTURE                          VAL R10
      133 DUPCLOSURE                       R12 K36 [PROTO_1]
      134 DUPCLOSURE                       R13 K37 [PROTO_3]
      135 CAPTURE                          VAL R2
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R6
      141 RETURN                           R13 1

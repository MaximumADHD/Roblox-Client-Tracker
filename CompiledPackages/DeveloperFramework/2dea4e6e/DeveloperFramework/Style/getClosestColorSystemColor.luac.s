PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["R"]
        2 GETTABLEKS                       R3 R0 K1 ["G"]
        4 GETTABLEKS                       R4 R0 K2 ["B"]
        6 GETTABLEKS                       R5 R1 K0 ["R"]
        8 GETTABLEKS                       R6 R1 K1 ["G"]
       10 GETTABLEKS                       R7 R1 K2 ["B"]
       12 SUB                              R12 R2 R5
       13 POWK                             R11 R12 K3 [2]
       14 SUB                              R13 R3 R6
       15 POWK                             R12 R13 K3 [2]
       16 ADD                              R10 R11 R12
       17 SUB                              R12 R4 R7
       18 POWK                             R11 R12 K3 [2]
       19 ADD                              R9 R10 R11
       20 FASTCALL1                        MATH_SQRT R9 ; [+2]
       21 GETIMPORT                        R8 K6 [math.sqrt]
       23 CALL                             R8 1 1
       24 RETURN                           R8 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["ToHex"]
        3 CALL                             R3 1 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFEQKNIL                     R1 ; [+13]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R3 R0 K0 ["ToHex"]
       10 CALL                             R3 1 1
       11 GETTABLE                         R1 R2 R3
       12 GETTABLEKS                       R2 R1 K1 ["color"]
       14 GETTABLEKS                       R3 R1 K2 ["category"]
       16 GETTABLEKS                       R4 R1 K3 ["value"]
       18 RETURN                           R2 3
       19 LOADNIL                          R1
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 LOADK                            R4 K4 [∞]
       23 GETUPVAL                         R5 1
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 JUMPIFEQKS                       R8 K5 ["Turquoise"] ; [+56]
       29 MOVE                             R10 R9
       30 LOADNIL                          R11
       31 LOADNIL                          R12
       32 FORGPREP                         R10
       33 JUMPIFNOTEQ                      R0 R14 ; [+17]
       35 GETUPVAL                         R15 0
       36 NAMECALL                         R16 R0 K0 ["ToHex"]
       38 CALL                             R16 1 1
       39 DUPTABLE                         R17 K6 [{"color", "category", "value"}]
       40 SETTABLEKS                       R0 R17 K1 ["color"]
       42 SETTABLEKS                       R8 R17 K2 ["category"]
       44 SETTABLEKS                       R13 R17 K3 ["value"]
       46 SETTABLE                         R17 R15 R16
       47 MOVE                             R15 R0
       48 MOVE                             R16 R8
       49 MOVE                             R17 R13
       50 RETURN                           R15 3
       51 GETTABLEKS                       R16 R0 K7 ["R"]
       53 GETTABLEKS                       R17 R0 K8 ["G"]
       55 GETTABLEKS                       R18 R0 K9 ["B"]
       57 GETTABLEKS                       R19 R14 K7 ["R"]
       59 GETTABLEKS                       R20 R14 K8 ["G"]
       61 GETTABLEKS                       R21 R14 K9 ["B"]
       63 SUB                              R26 R16 R19
       64 POWK                             R25 R26 K10 [2]
       65 SUB                              R27 R17 R20
       66 POWK                             R26 R27 K10 [2]
       67 ADD                              R24 R25 R26
       68 SUB                              R26 R18 R21
       69 POWK                             R25 R26 K10 [2]
       70 ADD                              R23 R24 R25
       71 FASTCALL1                        MATH_SQRT R23 ; [+2]
       72 GETIMPORT                        R22 K13 [math.sqrt]
       74 CALL                             R22 1 1
       75 MOVE                             R15 R22
       76 JUMPIFNOTLT                      R15 R4 ; [+5]
       78 MOVE                             R4 R15
       79 MOVE                             R1 R14
       80 MOVE                             R2 R8
       81 MOVE                             R3 R13
       82 FORGLOOP                         R10 2 ; [-50]
       84 FORGLOOP                         R5 2 ; [-58]
       86 GETUPVAL                         R5 0
       87 NAMECALL                         R6 R0 K0 ["ToHex"]
       89 CALL                             R6 1 1
       90 DUPTABLE                         R7 K6 [{"color", "category", "value"}]
       91 SETTABLEKS                       R1 R7 K1 ["color"]
       93 SETTABLEKS                       R2 R7 K2 ["category"]
       95 SETTABLEKS                       R3 R7 K3 ["value"]
       97 SETTABLE                         R7 R5 R6
       98 RETURN                           R1 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["ColorSystem"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K5 ["ColorSystem"]
       18 GETTABLEKS                       R2 R2 K6 ["ColorSystem_Deprecated"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K7 [PROTO_0]
       22 NEWTABLE                         R3 0 0
       24 MOVE                             R4 R1
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 MOVE                             R9 R8
       29 LOADNIL                          R10
       30 LOADNIL                          R11
       31 FORGPREP                         R9
       32 NAMECALL                         R14 R13 K8 ["ToHex"]
       34 CALL                             R14 1 1
       35 DUPTABLE                         R15 K12 [{"color", "category", "value"}]
       36 GETTABLE                         R17 R0 R7
       37 GETTABLE                         R16 R17 R12
       38 SETTABLEKS                       R16 R15 K9 ["color"]
       40 SETTABLEKS                       R7 R15 K10 ["category"]
       42 SETTABLEKS                       R12 R15 K11 ["value"]
       44 SETTABLE                         R15 R3 R14
       45 FORGLOOP                         R9 2 ; [-14]
       47 FORGLOOP                         R4 2 ; [-20]
       49 GETTABLEKS                       R5 R0 K13 ["Gray"]
       51 GETTABLEN                        R4 R5 110
       52 GETTABLEKS                       R6 R0 K13 ["Gray"]
       54 GETTABLEN                        R5 R6 100
       55 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
       56 SETTABLEKS                       R4 R6 K9 ["color"]
       58 LOADK                            R7 K13 ["Gray"]
       59 SETTABLEKS                       R7 R6 K10 ["category"]
       61 LOADK                            R7 K14 ["Surface_100"]
       62 SETTABLEKS                       R7 R6 K11 ["value"]
       64 SETTABLEKS                       R6 R3 K15 ["222222"]
       66 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
       67 SETTABLEKS                       R4 R6 K9 ["color"]
       69 LOADK                            R7 K13 ["Gray"]
       70 SETTABLEKS                       R7 R6 K10 ["category"]
       72 LOADK                            R7 K14 ["Surface_100"]
       73 SETTABLEKS                       R7 R6 K11 ["value"]
       75 SETTABLEKS                       R6 R3 K16 ["252525"]
       77 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
       78 SETTABLEKS                       R4 R6 K9 ["color"]
       80 LOADK                            R7 K13 ["Gray"]
       81 SETTABLEKS                       R7 R6 K10 ["category"]
       83 LOADK                            R7 K14 ["Surface_100"]
       84 SETTABLEKS                       R7 R6 K11 ["value"]
       86 SETTABLEKS                       R6 R3 K17 ["292929"]
       88 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
       89 SETTABLEKS                       R4 R6 K9 ["color"]
       91 LOADK                            R7 K13 ["Gray"]
       92 SETTABLEKS                       R7 R6 K10 ["category"]
       94 LOADK                            R7 K14 ["Surface_100"]
       95 SETTABLEKS                       R7 R6 K11 ["value"]
       97 SETTABLEKS                       R6 R3 K18 ["2c2c2c"]
       99 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
      100 SETTABLEKS                       R4 R6 K9 ["color"]
      102 LOADK                            R7 K13 ["Gray"]
      103 SETTABLEKS                       R7 R6 K10 ["category"]
      105 LOADK                            R7 K14 ["Surface_100"]
      106 SETTABLEKS                       R7 R6 K11 ["value"]
      108 SETTABLEKS                       R6 R3 K19 ["2e2e2e"]
      110 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
      111 SETTABLEKS                       R5 R6 K9 ["color"]
      113 LOADK                            R7 K13 ["Gray"]
      114 SETTABLEKS                       R7 R6 K10 ["category"]
      116 LOADK                            R7 K20 ["Surface_200"]
      117 SETTABLEKS                       R7 R6 K11 ["value"]
      119 SETTABLEKS                       R6 R3 K21 ["353535"]
      121 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
      122 SETTABLEKS                       R5 R6 K9 ["color"]
      124 LOADK                            R7 K13 ["Gray"]
      125 SETTABLEKS                       R7 R6 K10 ["category"]
      127 LOADK                            R7 K20 ["Surface_200"]
      128 SETTABLEKS                       R7 R6 K11 ["value"]
      130 SETTABLEKS                       R6 R3 K22 ["3b3b3b"]
      132 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
      133 GETIMPORT                        R7 K25 [Color3.fromHex]
      135 LOADK                            R8 K26 ["1b2859"]
      136 CALL                             R7 1 1
      137 SETTABLEKS                       R7 R6 K9 ["color"]
      139 LOADK                            R7 K27 ["FoundationMigration"]
      140 SETTABLEKS                       R7 R6 K10 ["category"]
      142 LOADK                            R7 K28 ["MutedAction"]
      143 SETTABLEKS                       R7 R6 K11 ["value"]
      145 SETTABLEKS                       R6 R3 K26 ["1b2859"]
      147 DUPTABLE                         R6 K12 [{"color", "category", "value"}]
      148 GETIMPORT                        R7 K25 [Color3.fromHex]
      150 LOADK                            R8 K29 ["c5d1ff"]
      151 CALL                             R7 1 1
      152 SETTABLEKS                       R7 R6 K9 ["color"]
      154 LOADK                            R7 K27 ["FoundationMigration"]
      155 SETTABLEKS                       R7 R6 K10 ["category"]
      157 LOADK                            R7 K28 ["MutedAction"]
      158 SETTABLEKS                       R7 R6 K11 ["value"]
      160 SETTABLEKS                       R6 R3 K29 ["c5d1ff"]
      162 DUPCLOSURE                       R6 K30 [PROTO_1]
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R0
      165 RETURN                           R6 1

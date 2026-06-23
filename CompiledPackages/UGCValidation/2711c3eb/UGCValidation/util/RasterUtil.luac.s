PROTO_0:
        0 MOVE                             R5 R2
        1 NAMECALL                         R3 R0 K0 ["Dot"]
        3 CALL                             R3 2 1
        4 MOVE                             R6 R2
        5 NAMECALL                         R4 R1 K0 ["Dot"]
        7 CALL                             R4 2 1
        8 GETIMPORT                        R5 K3 [Vector2.new]
       10 MOVE                             R6 R3
       11 MOVE                             R7 R4
       12 CALL                             R5 2 -1
       13 RETURN                           R5 -1

PROTO_1:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["Dot"]
        3 CALL                             R3 2 1
        4 LOADN                            R4 0
        5 JUMPIFLT                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["Dot"]
        3 CALL                             R3 2 1
        4 LOADN                            R4 0
        5 JUMPIFLT                         R3 R4 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_3:
        0 GETTABLEN                        R5 R0 1
        1 GETTABLEN                        R6 R0 2
        2 GETTABLEN                        R7 R0 3
        3 GETIMPORT                        R9 K2 [CFrame.new]
        5 MOVE                             R10 R3
        6 CALL                             R9 1 1
        7 NAMECALL                         R9 R9 K3 ["Inverse"]
        9 CALL                             R9 1 1
       10 MUL                              R8 R9 R5
       11 GETIMPORT                        R10 K2 [CFrame.new]
       13 MOVE                             R11 R3
       14 CALL                             R10 1 1
       15 NAMECALL                         R10 R10 K3 ["Inverse"]
       17 CALL                             R10 1 1
       18 MUL                              R9 R10 R6
       19 GETIMPORT                        R11 K2 [CFrame.new]
       21 MOVE                             R12 R3
       22 CALL                             R11 1 1
       23 NAMECALL                         R11 R11 K3 ["Inverse"]
       25 CALL                             R11 1 1
       26 MUL                              R10 R11 R7
       27 DIVK                             R11 R4 K4 [2]
       28 ADD                              R13 R8 R11
       29 DIV                              R12 R13 R4
       30 ADD                              R14 R9 R11
       31 DIV                              R13 R14 R4
       32 ADD                              R15 R10 R11
       33 DIV                              R14 R15 R4
       34 GETTABLEKS                       R17 R2 K5 ["axis1"]
       36 GETTABLEKS                       R18 R2 K6 ["axis2"]
       38 MOVE                             R21 R12
       39 NAMECALL                         R19 R17 K7 ["Dot"]
       41 CALL                             R19 2 1
       42 MOVE                             R22 R12
       43 NAMECALL                         R20 R18 K7 ["Dot"]
       45 CALL                             R20 2 1
       46 GETIMPORT                        R21 K9 [Vector2.new]
       48 MOVE                             R22 R19
       49 MOVE                             R23 R20
       50 CALL                             R21 2 1
       51 MOVE                             R16 R21
       52 GETIMPORT                        R18 K9 [Vector2.new]
       54 LOADN                            R19 1
       55 LOADN                            R20 1
       56 CALL                             R18 2 1
       57 SUB                              R17 R1 R18
       58 MUL                              R15 R16 R17
       59 GETTABLEKS                       R18 R2 K5 ["axis1"]
       61 GETTABLEKS                       R19 R2 K6 ["axis2"]
       63 MOVE                             R22 R13
       64 NAMECALL                         R20 R18 K7 ["Dot"]
       66 CALL                             R20 2 1
       67 MOVE                             R23 R13
       68 NAMECALL                         R21 R19 K7 ["Dot"]
       70 CALL                             R21 2 1
       71 GETIMPORT                        R22 K9 [Vector2.new]
       73 MOVE                             R23 R20
       74 MOVE                             R24 R21
       75 CALL                             R22 2 1
       76 MOVE                             R17 R22
       77 GETIMPORT                        R19 K9 [Vector2.new]
       79 LOADN                            R20 1
       80 LOADN                            R21 1
       81 CALL                             R19 2 1
       82 SUB                              R18 R1 R19
       83 MUL                              R16 R17 R18
       84 GETTABLEKS                       R19 R2 K5 ["axis1"]
       86 GETTABLEKS                       R20 R2 K6 ["axis2"]
       88 MOVE                             R23 R14
       89 NAMECALL                         R21 R19 K7 ["Dot"]
       91 CALL                             R21 2 1
       92 MOVE                             R24 R14
       93 NAMECALL                         R22 R20 K7 ["Dot"]
       95 CALL                             R22 2 1
       96 GETIMPORT                        R23 K9 [Vector2.new]
       98 MOVE                             R24 R21
       99 MOVE                             R25 R22
      100 CALL                             R23 2 1
      101 MOVE                             R18 R23
      102 GETIMPORT                        R20 K9 [Vector2.new]
      104 LOADN                            R21 1
      105 LOADN                            R22 1
      106 CALL                             R20 2 1
      107 SUB                              R19 R1 R20
      108 MUL                              R17 R18 R19
      109 RETURN                           R15 3

PROTO_4:
        0 GETUPVAL                         R6 0
        1 DUPTABLE                         R8 K1 [{"Size"}]
        2 SETTABLEKS                       R1 R8 K0 ["Size"]
        4 NAMECALL                         R6 R6 K2 ["CreateEditableImage"]
        6 CALL                             R6 2 1
        7 MOVE                             R7 R0
        8 LOADNIL                          R8
        9 LOADNIL                          R9
       10 FORGPREP                         R7
       11 GETTABLEKS                       R13 R11 K3 ["normal"]
       13 GETTABLEKS                       R14 R2 K3 ["normal"]
       15 MOVE                             R17 R14
       16 NAMECALL                         R15 R13 K4 ["Dot"]
       18 CALL                             R15 2 1
       19 LOADN                            R16 0
       20 JUMPIFLT                         R15 R16 ; [+2]
       22 LOADB                            R12 0 +1
       23 LOADB                            R12 1
       24 JUMPIFNOT                        R12 ; [+25]
       25 GETUPVAL                         R12 1
       26 GETTABLEKS                       R13 R11 K5 ["orderedVerts"]
       28 GETTABLEKS                       R14 R6 K0 ["Size"]
       30 MOVE                             R15 R2
       31 MOVE                             R16 R3
       32 MOVE                             R17 R4
       33 CALL                             R12 5 3
       34 MOVE                             R17 R12
       35 MOVE                             R18 R13
       36 MOVE                             R19 R14
       37 GETIMPORT                        R20 K8 [Color3.new]
       39 LOADN                            R21 1
       40 LOADN                            R22 1
       41 LOADN                            R23 1
       42 CALL                             R20 3 1
       43 LOADN                            R21 0
       44 NAMECALL                         R15 R6 K9 ["DrawTriangle"]
       46 CALL                             R15 6 0
       47 GETUPVAL                         R15 2
       48 MOVE                             R16 R5
       49 CALL                             R15 1 0
       50 FORGLOOP                         R7 2 ; [-40]
       52 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["tryYield"]
       26 CALL                             R3 1 1
       27 NEWTABLE                         R4 2 0
       29 DUPCLOSURE                       R5 K12 [PROTO_0]
       30 DUPCLOSURE                       R6 K13 [PROTO_1]
       31 DUPCLOSURE                       R7 K14 [PROTO_2]
       32 SETTABLEKS                       R7 R4 K15 ["shouldRenderTriangle_UNIT_TEST"]
       34 DUPCLOSURE                       R7 K16 [PROTO_3]
       35 DUPCLOSURE                       R8 K17 [PROTO_4]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R8 R4 K18 ["rasterMesh"]
       41 RETURN                           R4 1

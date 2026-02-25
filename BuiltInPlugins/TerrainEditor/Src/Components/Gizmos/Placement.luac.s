PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["join"]
        3 NEWTABLE                         R1 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["BrushSettings"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K2 ["Value"]
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["BrushSettings"]
        3 GETTABLE                         R3 R0 R4
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K1 ["State"]
        7 GETTABLE                         R2 R3 R4
        8 GETTABLEKS                       R1 R2 K2 ["Position"]
       10 GETUPVAL                         R3 2
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K3 ["TerrainType"]
       14 GETTABLE                         R2 R3 R4
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K4 ["current"]
       18 JUMPIF                           R3 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R3 R4 K5 ["Volcano"]
       23 JUMPIFEQ                         R2 R3 ; [+11]
       25 GETUPVAL                         R4 5
       26 GETTABLEKS                       R3 R4 K6 ["Mountain"]
       28 JUMPIFEQ                         R2 R3 ; [+6]
       30 GETUPVAL                         R4 5
       31 GETTABLEKS                       R3 R4 K7 ["Mesa"]
       33 JUMPIFNOTEQ                      R2 R3 ; [+38]
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R3 R4 K8 ["Save"]
       38 NEWTABLE                         R4 1 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K9 ["BuildSettings"]
       43 NEWTABLE                         R6 1 0
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R7 R8 K10 ["Transform"]
       48 GETIMPORT                        R8 K13 [CFrame.new]
       50 LOADN                            R11 0
       51 GETUPVAL                         R15 7
       52 GETTABLEKS                       R14 R15 K15 ["Y"]
       54 DIVK                             R13 R14 K14 [2]
       55 LOADN                            R15 2
       56 GETUPVAL                         R17 8
       57 GETTABLEKS                       R16 R17 K16 ["VoxelResolution"]
       59 MUL                              R14 R15 R16
       60 SUB                              R12 R13 R14
       61 LOADN                            R13 0
       62 FASTCALL                         VECTOR ; [+2]
       63 GETIMPORT                        R10 K18 [Vector3.new]
       65 CALL                             R10 3 1
       66 ADD                              R9 R1 R10
       67 CALL                             R8 1 1
       68 SETTABLE                         R8 R6 R7
       69 SETTABLE                         R6 R4 R5
       70 CALL                             R3 1 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R4 5
       73 GETTABLEKS                       R3 R4 K19 ["Crater"]
       75 JUMPIFNOTEQ                      R2 R3 ; [+38]
       77 GETUPVAL                         R4 6
       78 GETTABLEKS                       R3 R4 K8 ["Save"]
       80 NEWTABLE                         R4 1 0
       82 GETUPVAL                         R6 0
       83 GETTABLEKS                       R5 R6 K9 ["BuildSettings"]
       85 NEWTABLE                         R6 1 0
       87 GETUPVAL                         R8 3
       88 GETTABLEKS                       R7 R8 K10 ["Transform"]
       90 GETIMPORT                        R8 K13 [CFrame.new]
       92 LOADN                            R11 0
       93 GETUPVAL                         R15 7
       94 GETTABLEKS                       R14 R15 K15 ["Y"]
       96 DIVK                             R13 R14 K14 [2]
       97 LOADN                            R15 3
       98 GETUPVAL                         R17 8
       99 GETTABLEKS                       R16 R17 K16 ["VoxelResolution"]
      101 MUL                              R14 R15 R16
      102 SUB                              R12 R13 R14
      103 LOADN                            R13 0
      104 FASTCALL                         VECTOR ; [+2]
      105 GETIMPORT                        R10 K18 [Vector3.new]
      107 CALL                             R10 3 1
      108 SUB                              R9 R1 R10
      109 CALL                             R8 1 1
      110 SETTABLE                         R8 R6 R7
      111 SETTABLE                         R6 R4 R5
      112 CALL                             R3 1 0
      113 RETURN                           R0 0
      114 GETUPVAL                         R4 5
      115 GETTABLEKS                       R3 R4 K20 ["Lake"]
      117 JUMPIFNOTEQ                      R2 R3 ; [+32]
      119 GETUPVAL                         R4 6
      120 GETTABLEKS                       R3 R4 K8 ["Save"]
      122 NEWTABLE                         R4 1 0
      124 GETUPVAL                         R6 0
      125 GETTABLEKS                       R5 R6 K9 ["BuildSettings"]
      127 NEWTABLE                         R6 1 0
      129 GETUPVAL                         R8 3
      130 GETTABLEKS                       R7 R8 K10 ["Transform"]
      132 GETIMPORT                        R8 K13 [CFrame.new]
      134 LOADN                            R11 0
      135 GETUPVAL                         R14 7
      136 GETTABLEKS                       R13 R14 K15 ["Y"]
      138 DIVK                             R12 R13 K14 [2]
      139 LOADN                            R13 0
      140 FASTCALL                         VECTOR ; [+2]
      141 GETIMPORT                        R10 K18 [Vector3.new]
      143 CALL                             R10 3 1
      144 SUB                              R9 R1 R10
      145 CALL                             R8 1 1
      146 SETTABLE                         R8 R6 R7
      147 SETTABLE                         R6 R4 R5
      148 CALL                             R3 1 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R4 6
      151 GETTABLEKS                       R3 R4 K8 ["Save"]
      153 NEWTABLE                         R4 1 0
      155 GETUPVAL                         R6 0
      156 GETTABLEKS                       R5 R6 K9 ["BuildSettings"]
      158 NEWTABLE                         R6 1 0
      160 GETUPVAL                         R8 3
      161 GETTABLEKS                       R7 R8 K10 ["Transform"]
      163 GETIMPORT                        R8 K13 [CFrame.new]
      165 MOVE                             R9 R1
      166 CALL                             R8 1 1
      167 SETTABLE                         R8 R6 R7
      168 SETTABLE                         R6 R4 R5
      169 CALL                             R3 1 0
      170 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Save"]
        7 NEWTABLE                         R1 1 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["BuildSettings"]
       12 NEWTABLE                         R3 1 0
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R4 R5 K3 ["PlacementMode"]
       17 LOADB                            R5 0
       18 SETTABLE                         R5 R3 R4
       19 SETTABLE                         R3 R1 R2
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["BuildSettings"]
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["PlacementMode"]
        9 GETTABLE                         R2 R1 R3
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R3
       12 RETURN                           R3 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K3 ["Size"]
       16 GETTABLE                         R3 R1 R4
       17 GETUPVAL                         R4 2
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R6 0 1
       24 GETTABLEKS                       R7 R0 K0 ["Value"]
       26 SETLIST                          R6 R7 1 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 4
       30 LOADB                            R6 1
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 5
       33 CALL                             R6 0 1
       34 GETUPVAL                         R7 6
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          UPVAL U0
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R5
       41 CAPTURE                          UPVAL U8
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U9
       45 NEWTABLE                         R9 0 3
       47 GETTABLEKS                       R10 R0 K4 ["Save"]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R12 R13 K5 ["TerrainType"]
       52 GETTABLE                         R11 R1 R12
       53 MOVE                             R12 R3
       54 SETLIST                          R9 R10 3 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R9 10
       58 GETTABLEKS                       R8 R9 K6 ["use"]
       60 CALL                             R8 0 1
       61 GETUPVAL                         R9 11
       62 GETTABLEKS                       R10 R8 K7 ["MouseDownAction"]
       64 NEWCLOSURE                       R11 P2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U1
       69 NEWTABLE                         R12 0 1
       71 GETTABLEKS                       R13 R0 K4 ["Save"]
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R9 3 0
       76 GETUPVAL                         R9 12
       77 GETTABLEKS                       R10 R0 K8 ["Tool"]
       79 MOVE                             R11 R4
       80 MOVE                             R12 R7
       81 CALL                             R9 3 2
       82 GETUPVAL                         R12 13
       83 GETTABLEKS                       R11 R12 K9 ["createElement"]
       85 GETUPVAL                         R12 14
       86 DUPTABLE                         R13 K16 [{"Adornee", "AlwaysOnTop", "Color", "LineThickness", "Size", "Transform", "Transparency"}]
       87 SETTABLEKS                       R6 R13 K10 ["Adornee"]
       89 LOADB                            R14 1
       90 SETTABLEKS                       R14 R13 K11 ["AlwaysOnTop"]
       92 GETTABLEKS                       R15 R0 K17 ["Schema"]
       94 GETTABLEKS                       R14 R15 K12 ["Color"]
       96 JUMPIF                           R14 ; [+6]
       97 GETIMPORT                        R14 K20 [Color3.new]
       99 LOADN                            R15 1
      100 LOADN                            R16 1
      101 LOADN                            R17 1
      102 CALL                             R14 3 1
      103 SETTABLEKS                       R14 R13 K12 ["Color"]
      105 LOADK                            R14 K21 [0.1]
      106 SETTABLEKS                       R14 R13 K13 ["LineThickness"]
      108 GETTABLEKS                       R15 R3 K22 ["X"]
      110 LOADN                            R16 0
      111 GETTABLEKS                       R17 R3 K23 ["Z"]
      113 FASTCALL                         VECTOR ; [+2]
      114 GETIMPORT                        R14 K25 [Vector3.new]
      116 CALL                             R14 3 1
      117 SETTABLEKS                       R14 R13 K3 ["Size"]
      119 GETIMPORT                        R14 K27 [CFrame.new]
      121 GETTABLEKS                       R15 R9 K28 ["Position"]
      123 CALL                             R14 1 1
      124 SETTABLEKS                       R14 R13 K14 ["Transform"]
      126 LOADK                            R14 K29 [0.9]
      127 SETTABLEKS                       R14 R13 K15 ["Transparency"]
      129 CALL                             R11 2 -1
      130 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       23 GETTABLEKS                       R4 R2 K10 ["useMemo"]
       25 GETTABLEKS                       R5 R2 K11 ["useRef"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R9 R0 K12 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Hooks"]
       33 GETTABLEKS                       R7 R8 K14 ["useEventConnection"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R10 R0 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Hooks"]
       42 GETTABLEKS                       R8 R9 K15 ["useRaycast"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K13 ["Hooks"]
       51 GETTABLEKS                       R9 R10 K16 ["useTerrain"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K17 ["Resources"]
       60 GETTABLEKS                       R10 R11 K18 ["Constants"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K12 ["Src"]
       67 GETTABLEKS                       R12 R13 K19 ["Controllers"]
       69 GETTABLEKS                       R11 R12 K20 ["ShortcutController"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETTABLEKS                       R15 R0 K12 ["Src"]
       76 GETTABLEKS                       R14 R15 K21 ["Components"]
       78 GETTABLEKS                       R13 R14 K22 ["Gizmos"]
       80 GETTABLEKS                       R12 R13 K23 ["Box"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R14 R0 K12 ["Src"]
       87 GETTABLEKS                       R13 R14 K24 ["Types"]
       89 CALL                             R12 1 1
       90 GETTABLEKS                       R13 R12 K25 ["BrushSettings"]
       92 GETTABLEKS                       R14 R12 K26 ["BuildSettings"]
       94 GETTABLEKS                       R15 R12 K27 ["Category"]
       96 GETTABLEKS                       R16 R12 K28 ["TerrainType"]
       98 DUPCLOSURE                       R17 K29 [PROTO_3]
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R11
      114 RETURN                           R17 1

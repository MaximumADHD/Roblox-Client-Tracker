PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 JUMPIFNOT                        R4 ; [+2]
        3 LOADN                            R3 1
        4 JUMP                             ; [+1]
        5 LOADN                            R3 0
        6 GETTABLEKS                       R5 R0 K1 ["Y"]
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADN                            R4 1
       10 JUMP                             ; [+1]
       11 LOADN                            R4 0
       12 ADD                              R2 R3 R4
       13 GETTABLEKS                       R4 R0 K2 ["Z"]
       15 JUMPIFNOT                        R4 ; [+2]
       16 LOADN                            R3 1
       17 JUMP                             ; [+1]
       18 LOADN                            R3 0
       19 ADD                              R1 R2 R3
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 LOADN                            R2 1
        4 JUMP                             ; [+1]
        5 LOADN                            R2 0
        6 GETTABLEKS                       R4 R0 K1 ["Y"]
        8 JUMPIFNOT                        R4 ; [+2]
        9 LOADN                            R3 1
       10 JUMP                             ; [+1]
       11 LOADN                            R3 0
       12 GETTABLEKS                       R5 R0 K2 ["Z"]
       14 JUMPIFNOT                        R5 ; [+2]
       15 LOADN                            R4 1
       16 JUMP                             ; [+1]
       17 LOADN                            R4 0
       18 FASTCALL                         VECTOR ; [+2]
       19 GETIMPORT                        R1 K5 [Vector3.new]
       21 CALL                             R1 3 1
       22 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R2 K0 [{1, 1, 1}]
        1 GETGLOBAL                        R3 K1 ["getNormal"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 SUB                              R1 R2 R3
        6 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Z"]
        2 GETTABLEKS                       R3 R0 K1 ["X"]
        4 GETTABLEKS                       R4 R0 K2 ["Y"]
        6 FASTCALL                         VECTOR ; [+2]
        7 GETIMPORT                        R1 K5 [Vector3.new]
        9 CALL                             R1 3 1
       10 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R1 K0 [∞]
        1 GETIMPORT                        R2 K2 [pairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 GETTABLEKS                       R9 R6 K3 ["size"]
        8 GETTABLEKS                       R9 R9 K4 ["Magnitude"]
       10 FASTCALL2                        MATH_MIN R1 R9 ; [+4]
       12 MOVE                             R8 R1
       13 GETIMPORT                        R7 K7 [math.min]
       15 CALL                             R7 2 1
       16 MOVE                             R1 R7
       17 FORGLOOP                         R2 2 ; [-12]
       19 RETURN                           R1 1

PROTO_5:
        0 LOADN                            R1 10
        1 JUMPIFNOTLT                      R0 R1 ; [+2]
        3 RETURN                           R0 1
        4 LOADN                            R1 110
        5 JUMPIFNOTLT                      R0 R1 ; [+7]
        7 LOADN                            R2 10
        8 SUBK                             R5 R0 K2 [10]
        9 DIVK                             R4 R5 K1 [100]
       10 MULK                             R3 R4 K0 [12]
       11 ADD                              R1 R2 R3
       12 RETURN                           R1 1
       13 LOADN                            R1 22
       14 RETURN                           R1 1

PROTO_6:
        0 MULK                             R5 R4 K0 [0.05]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K1 ["createElement"]
        4 LOADK                            R7 K2 ["SphereHandleAdornment"]
        5 DUPTABLE                         R8 K9 [{["Adornee"], ["Radius"], ["Color3"], ["CFrame"], ["ZIndex"] = 0}]
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R9 R9 K10 ["Terrain"]
        9 SETTABLEKS                       R9 R8 K3 ["Adornee"]
       11 SETTABLEKS                       R5 R8 K4 ["Radius"]
       13 GETUPVAL                         R9 2
       14 SETTABLEKS                       R9 R8 K5 ["Color3"]
       16 GETIMPORT                        R9 K12 [CFrame.new]
       18 MOVE                             R10 R3
       19 CALL                             R9 1 1
       20 SETTABLEKS                       R9 R8 K6 ["CFrame"]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R0 K13 ["SphereNormal"]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K1 ["createElement"]
       28 LOADK                            R7 K2 ["SphereHandleAdornment"]
       29 DUPTABLE                         R8 K18 [{["Adornee"], ["Radius"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.3, ["Color3"], ["CFrame"], ["ZIndex"] = 0}]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K10 ["Terrain"]
       33 SETTABLEKS                       R9 R8 K3 ["Adornee"]
       35 SETTABLEKS                       R5 R8 K4 ["Radius"]
       37 GETUPVAL                         R9 2
       38 SETTABLEKS                       R9 R8 K5 ["Color3"]
       40 GETIMPORT                        R9 K12 [CFrame.new]
       42 MOVE                             R10 R3
       43 CALL                             R9 1 1
       44 SETTABLEKS                       R9 R8 K6 ["CFrame"]
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R0 K19 ["SphereOnTop"]
       49 RETURN                           R0 0

PROTO_7:
        0 MUL                              R7 R2 R4
        1 GETTABLEKS                       R7 R7 K1 ["Magnitude"]
        3 ADDK                             R6 R7 K0 [1]
        4 MOVE                             R9 R4
        5 NAMECALL                         R7 R1 K2 ["VectorToWorldSpace"]
        7 CALL                             R7 2 1
        8 LOADK                            R10 K3 [0.5]
        9 MUL                              R9 R10 R6
       10 MUL                              R8 R9 R7
       11 MOVE                             R11 R3
       12 NAMECALL                         R9 R1 K4 ["PointToObjectSpace"]
       14 CALL                             R9 2 1
       15 MOVE                             R11 R4
       16 NAMECALL                         R9 R9 K5 ["Dot"]
       18 CALL                             R9 2 1
       19 MUL                              R10 R9 R7
       20 SUB                              R3 R3 R10
       21 SUB                              R10 R3 R8
       22 GETIMPORT                        R11 K8 [CFrame.lookAt]
       24 MOVE                             R12 R3
       25 MOVE                             R13 R10
       26 CALL                             R11 2 1
       27 LOADK                            R13 K9 [0.01]
       28 MUL                              R12 R13 R5
       29 GETUPVAL                         R13 0
       30 GETTABLEKS                       R13 R13 K10 ["createElement"]
       32 LOADK                            R14 K11 ["CylinderHandleAdornment"]
       33 DUPTABLE                         R15 K17 [{["Adornee"], ["Height"], ["Radius"], ["Color3"], ["CFrame"], ["ZIndex"] = 1}]
       34 GETUPVAL                         R16 1
       35 GETTABLEKS                       R16 R16 K18 ["Terrain"]
       37 SETTABLEKS                       R16 R15 K12 ["Adornee"]
       39 SETTABLEKS                       R6 R15 K13 ["Height"]
       41 SETTABLEKS                       R12 R15 K14 ["Radius"]
       43 GETUPVAL                         R16 2
       44 SETTABLEKS                       R16 R15 K15 ["Color3"]
       46 SETTABLEKS                       R11 R15 K6 ["CFrame"]
       48 CALL                             R13 2 1
       49 SETTABLEKS                       R13 R0 K19 ["MainLineNormal"]
       51 GETUPVAL                         R13 0
       52 GETTABLEKS                       R13 R13 K10 ["createElement"]
       54 LOADK                            R14 K11 ["CylinderHandleAdornment"]
       55 DUPTABLE                         R15 K24 [{["Adornee"], ["Height"], ["Radius"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.3, ["Color3"], ["CFrame"], ["ZIndex"] = 1}]
       56 GETUPVAL                         R16 1
       57 GETTABLEKS                       R16 R16 K18 ["Terrain"]
       59 SETTABLEKS                       R16 R15 K12 ["Adornee"]
       61 SETTABLEKS                       R6 R15 K13 ["Height"]
       63 SETTABLEKS                       R12 R15 K14 ["Radius"]
       65 GETUPVAL                         R16 2
       66 SETTABLEKS                       R16 R15 K15 ["Color3"]
       68 SETTABLEKS                       R11 R15 K6 ["CFrame"]
       70 CALL                             R13 2 1
       71 SETTABLEKS                       R13 R0 K25 ["MainLineOnTop"]
       73 LOADK                            R14 K26 [0.03]
       74 MUL                              R13 R14 R5
       75 LOADK                            R15 K27 [0.1]
       76 MUL                              R14 R15 R5
       77 LOADK                            R16 K28 [0.0325]
       78 MUL                              R15 R16 R5
       79 GETIMPORT                        R16 K30 [CFrame.new]
       81 LOADN                            R17 0
       82 LOADN                            R18 0
       83 MULK                             R21 R6 K3 [0.5]
       84 ADD                              R20 R21 R14
       85 SUB                              R19 R20 R15
       86 CALL                             R16 3 1
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R17 R17 K10 ["createElement"]
       90 LOADK                            R18 K31 ["ConeHandleAdornment"]
       91 DUPTABLE                         R19 K32 [{["Adornee"], ["Height"], ["Radius"], ["Color3"], ["ZIndex"] = 1, ["CFrame"]}]
       92 GETUPVAL                         R20 1
       93 GETTABLEKS                       R20 R20 K18 ["Terrain"]
       95 SETTABLEKS                       R20 R19 K12 ["Adornee"]
       97 SETTABLEKS                       R14 R19 K13 ["Height"]
       99 SETTABLEKS                       R13 R19 K14 ["Radius"]
      101 GETUPVAL                         R20 2
      102 SETTABLEKS                       R20 R19 K15 ["Color3"]
      104 MUL                              R20 R11 R16
      105 SETTABLEKS                       R20 R19 K6 ["CFrame"]
      107 CALL                             R17 2 1
      108 SETTABLEKS                       R17 R0 K33 ["Cone1"]
      110 GETUPVAL                         R17 0
      111 GETTABLEKS                       R17 R17 K10 ["createElement"]
      113 LOADK                            R18 K31 ["ConeHandleAdornment"]
      114 DUPTABLE                         R19 K32 [{["Adornee"], ["Height"], ["Radius"], ["Color3"], ["ZIndex"] = 1, ["CFrame"]}]
      115 GETUPVAL                         R20 1
      116 GETTABLEKS                       R20 R20 K18 ["Terrain"]
      118 SETTABLEKS                       R20 R19 K12 ["Adornee"]
      120 SETTABLEKS                       R14 R19 K13 ["Height"]
      122 SETTABLEKS                       R13 R19 K14 ["Radius"]
      124 GETUPVAL                         R20 2
      125 SETTABLEKS                       R20 R19 K15 ["Color3"]
      127 GETUPVAL                         R22 3
      128 MUL                              R21 R11 R22
      129 MUL                              R20 R21 R16
      130 SETTABLEKS                       R20 R19 K6 ["CFrame"]
      132 CALL                             R17 2 1
      133 SETTABLEKS                       R17 R0 K34 ["Cone2"]
      135 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R6 K0 [{1, 1, 1}]
        1 SUB                              R5 R6 R4
        2 MOVE                             R8 R3
        3 NAMECALL                         R6 R1 K1 ["PointToObjectSpace"]
        5 CALL                             R6 2 1
        6 LOADK                            R9 K2 [{1.001, 1.001, 1.001}]
        7 MUL                              R8 R4 R9
        8 MUL                              R7 R6 R8
        9 LOADK                            R9 K0 [{1, 1, 1}]
       10 ADD                              R8 R2 R9
       11 MUL                              R2 R8 R5
       12 GETIMPORT                        R8 K5 [CFrame.new]
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 MUL                              R1 R1 R8
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K6 ["createElement"]
       20 LOADK                            R9 K7 ["BoxHandleAdornment"]
       21 DUPTABLE                         R10 K15 [{["Adornee"], ["Size"], ["CFrame"], ["Transparency"] = 0.3, ["Color3"], ["ZIndex"] = 0}]
       22 GETUPVAL                         R11 1
       23 GETTABLEKS                       R11 R11 K16 ["Terrain"]
       25 SETTABLEKS                       R11 R10 K8 ["Adornee"]
       27 SETTABLEKS                       R2 R10 K9 ["Size"]
       29 SETTABLEKS                       R1 R10 K3 ["CFrame"]
       31 GETUPVAL                         R11 2
       32 SETTABLEKS                       R11 R10 K12 ["Color3"]
       34 CALL                             R8 2 1
       35 SETTABLEKS                       R8 R0 K17 ["Plane"]
       37 GETGLOBAL                        R8 K18 ["rotateVector"]
       39 MOVE                             R9 R4
       40 CALL                             R8 1 1
       41 GETGLOBAL                        R9 K18 ["rotateVector"]
       43 MOVE                             R10 R8
       44 CALL                             R9 1 1
       45 LOADN                            R12 1
       46 LOADN                            R10 4
       47 LOADN                            R11 1
       48 FORNPREP                         R10
       49 MUL                              R13 R9 R2
       50 GETTABLEKS                       R13 R13 K19 ["Magnitude"]
       52 LOADK                            R15 K20 [0.5]
       53 MUL                              R16 R8 R2
       54 GETTABLEKS                       R16 R16 K19 ["Magnitude"]
       56 MUL                              R14 R15 R16
       57 LOADK                            R16 K21 ["Line"]
       58 MOVE                             R17 R12
       59 CONCAT                           R15 R16 R17
       60 GETUPVAL                         R16 0
       61 GETTABLEKS                       R16 R16 K6 ["createElement"]
       63 LOADK                            R17 K22 ["LineHandleAdornment"]
       64 DUPTABLE                         R18 K28 [{["Adornee"], ["Length"], ["CFrame"], ["AlwaysOnTop"] = True, ["Thickness"] = 3, ["Color3"], ["ZIndex"] = 0}]
       65 GETUPVAL                         R19 1
       66 GETTABLEKS                       R19 R19 K16 ["Terrain"]
       68 SETTABLEKS                       R19 R18 K8 ["Adornee"]
       70 SETTABLEKS                       R13 R18 K23 ["Length"]
       72 GETIMPORT                        R21 K30 [CFrame.fromMatrix]
       74 GETUPVAL                         R22 3
       75 MOVE                             R23 R8
       76 MOVE                             R24 R4
       77 CALL                             R21 3 1
       78 MUL                              R20 R1 R21
       79 GETIMPORT                        R21 K5 [CFrame.new]
       81 MOVE                             R22 R14
       82 LOADN                            R23 0
       83 LOADK                            R25 K20 [0.5]
       84 MUL                              R24 R25 R13
       85 CALL                             R21 3 1
       86 MUL                              R19 R20 R21
       87 SETTABLEKS                       R19 R18 K3 ["CFrame"]
       89 GETUPVAL                         R19 2
       90 SETTABLEKS                       R19 R18 K12 ["Color3"]
       92 CALL                             R16 2 1
       93 SETTABLE                         R16 R0 R15
       94 MOVE                             R15 R9
       95 MINUS                            R9 R8
       96 MOVE                             R8 R15
       97 FORNLOOP                         R10
       98 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K1 [pairs]
        2 GETUPVAL                         R4 0
        3 CALL                             R3 1 3
        4 FORGPREP_NEXT                    R3
        5 GETTABLEN                        R11 R7 1
        6 MUL                              R10 R2 R11
        7 NAMECALL                         R8 R1 K2 ["PointToWorldSpace"]
        9 CALL                             R8 2 1
       10 GETTABLEN                        R12 R7 2
       11 MUL                              R11 R2 R12
       12 NAMECALL                         R9 R1 K2 ["PointToWorldSpace"]
       14 CALL                             R9 2 1
       15 GETUPVAL                         R11 1
       16 GETTABLE                         R10 R11 R6
       17 GETUPVAL                         R11 2
       18 GETTABLEKS                       R11 R11 K3 ["createElement"]
       20 LOADK                            R12 K4 ["LineHandleAdornment"]
       21 DUPTABLE                         R13 K13 [{["Adornee"], ["ZIndex"] = 0, ["Thickness"] = 1, ["Length"], ["CFrame"], ["Color3"]}]
       22 GETUPVAL                         R14 3
       23 GETTABLEKS                       R14 R14 K14 ["Terrain"]
       25 SETTABLEKS                       R14 R13 K5 ["Adornee"]
       27 SUB                              R14 R9 R8
       28 GETTABLEKS                       R14 R14 K15 ["Magnitude"]
       30 SETTABLEKS                       R14 R13 K10 ["Length"]
       32 GETIMPORT                        R14 K17 [CFrame.lookAt]
       34 MOVE                             R15 R8
       35 MOVE                             R16 R9
       36 CALL                             R14 2 1
       37 SETTABLEKS                       R14 R13 K11 ["CFrame"]
       39 GETUPVAL                         R14 4
       40 SETTABLEKS                       R14 R13 K12 ["Color3"]
       42 CALL                             R11 2 1
       43 SETTABLE                         R11 R0 R10
       44 FORGLOOP                         R3 2 ; [-40]
       46 RETURN                           R0 0

PROTO_10:
        0 LENGTH                           R5 R0
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+3]
        3 LOADNIL                          R5
        4 RETURN                           R5 1
        5 LOADNIL                          R5
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K1 ["Local"]
        9 JUMPIFNOTEQ                      R1 R6 ; [+13]
       11 GETUPVAL                         R6 1
       12 JUMPIFNOT                        R4 ; [+6]
       13 NEWTABLE                         R7 0 1
       15 MOVE                             R8 R4
       16 SETLIST                          R7 R8 1 [1]
       18 JUMPIF                           R7 ; [+1]
       19 MOVE                             R7 R0
       20 CALL                             R6 1 1
       21 MOVE                             R5 R6
       22 JUMP                             ; [+4]
       23 GETIMPORT                        R6 K4 [CFrame.new]
       25 CALL                             R6 0 1
       26 MOVE                             R5 R6
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K5 ["fromObjectsComputeAll"]
       30 MOVE                             R7 R0
       31 MOVE                             R8 R5
       32 CALL                             R6 2 3
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 JUMPIFNOT                        R4 ; [+14]
       36 GETTABLE                         R11 R8 R4
       37 GETTABLEKS                       R14 R11 K6 ["offset"]
       39 NAMECALL                         R12 R5 K7 ["PointToWorldSpace"]
       41 CALL                             R12 2 1
       42 MOVE                             R9 R12
       43 GETTABLEKS                       R14 R11 K8 ["size"]
       45 NAMECALL                         R12 R5 K9 ["VectorToWorldSpace"]
       47 CALL                             R12 2 1
       48 MOVE                             R10 R12
       49 JUMP                             ; [+10]
       50 MOVE                             R13 R6
       51 NAMECALL                         R11 R5 K7 ["PointToWorldSpace"]
       53 CALL                             R11 2 1
       54 MOVE                             R9 R11
       55 MOVE                             R13 R7
       56 NAMECALL                         R11 R5 K9 ["VectorToWorldSpace"]
       58 CALL                             R11 2 1
       59 MOVE                             R10 R11
       60 LOADNIL                          R11
       61 GETUPVAL                         R12 3
       62 GETTABLEKS                       R12 R12 K10 ["Min"]
       64 JUMPIFNOTEQ                      R3 R12 ; [+5]
       66 LOADK                            R13 K11 [0.5]
       67 MUL                              R12 R13 R10
       68 SUB                              R11 R9 R12
       69 JUMP                             ; [+10]
       70 GETUPVAL                         R12 3
       71 GETTABLEKS                       R12 R12 K12 ["Max"]
       73 JUMPIFNOTEQ                      R3 R12 ; [+5]
       75 LOADK                            R13 K11 [0.5]
       76 MUL                              R12 R13 R10
       77 ADD                              R11 R9 R12
       78 JUMP                             ; [+1]
       79 MOVE                             R11 R9
       80 GETTABLEKS                       R15 R2 K13 ["X"]
       82 JUMPIFNOT                        R15 ; [+2]
       83 LOADN                            R14 1
       84 JUMP                             ; [+1]
       85 LOADN                            R14 0
       86 GETTABLEKS                       R16 R2 K14 ["Y"]
       88 JUMPIFNOT                        R16 ; [+2]
       89 LOADN                            R15 1
       90 JUMP                             ; [+1]
       91 LOADN                            R15 0
       92 ADD                              R13 R14 R15
       93 GETTABLEKS                       R15 R2 K15 ["Z"]
       95 JUMPIFNOT                        R15 ; [+2]
       96 LOADN                            R14 1
       97 JUMP                             ; [+1]
       98 LOADN                            R14 0
       99 ADD                              R12 R13 R14
      100 GETIMPORT                        R14 K4 [CFrame.new]
      102 MOVE                             R15 R6
      103 CALL                             R14 1 1
      104 MUL                              R13 R5 R14
      105 NEWTABLE                         R14 0 0
      107 JUMPIFNOTEQKN                    R12 K16 [3] ; [+15]
      109 GETUPVAL                         R15 4
      110 MOVE                             R16 R14
      111 MOVE                             R17 R13
      112 MOVE                             R18 R7
      113 MOVE                             R19 R11
      114 GETGLOBAL                        R20 K17 ["getModifiedSize"]
      116 GETGLOBAL                        R21 K18 ["getSmallestObjectSize"]
      118 MOVE                             R22 R8
      119 CALL                             R21 1 -1
      120 CALL                             R20 -1 -1
      121 CALL                             R15 -1 0
      122 JUMP                             ; [+32]
      123 JUMPIFNOTEQKN                    R12 K19 [2] ; [+19]
      125 GETUPVAL                         R15 5
      126 MOVE                             R16 R14
      127 MOVE                             R17 R13
      128 MOVE                             R18 R7
      129 MOVE                             R19 R11
      130 GETGLOBAL                        R20 K20 ["getDirection"]
      132 MOVE                             R21 R2
      133 CALL                             R20 1 1
      134 GETGLOBAL                        R21 K17 ["getModifiedSize"]
      136 GETGLOBAL                        R22 K18 ["getSmallestObjectSize"]
      138 MOVE                             R23 R8
      139 CALL                             R22 1 -1
      140 CALL                             R21 -1 -1
      141 CALL                             R15 -1 0
      142 JUMP                             ; [+12]
      143 JUMPIFNOTEQKN                    R12 K21 [1] ; [+11]
      145 GETUPVAL                         R15 6
      146 MOVE                             R16 R14
      147 MOVE                             R17 R13
      148 MOVE                             R18 R7
      149 MOVE                             R19 R11
      150 GETGLOBAL                        R20 K22 ["getNormal"]
      152 MOVE                             R21 R2
      153 CALL                             R20 1 -1
      154 CALL                             R15 -1 0
      155 GETUPVAL                         R15 7
      156 MOVE                             R16 R14
      157 MOVE                             R17 R13
      158 MOVE                             R18 R7
      159 CALL                             R15 3 0
      160 GETUPVAL                         R15 8
      161 GETTABLEKS                       R15 R15 K23 ["createFragment"]
      163 MOVE                             R16 R14
      164 CALL                             R15 1 -1
      165 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R1 K9 ["Packages"]
       24 GETTABLEKS                       R3 R3 K11 ["DraggerFramework"]
       26 GETIMPORT                        R4 K8 [require]
       28 GETTABLEKS                       R5 R3 K12 ["Utility"]
       30 GETTABLEKS                       R5 R5 K13 ["BoundingBox"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K8 [require]
       35 GETTABLEKS                       R6 R1 K14 ["Src"]
       37 GETTABLEKS                       R6 R6 K12 ["Utility"]
       39 GETTABLEKS                       R6 R6 K15 ["AlignmentMode"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K8 [require]
       44 GETTABLEKS                       R7 R1 K14 ["Src"]
       46 GETTABLEKS                       R7 R7 K12 ["Utility"]
       48 GETTABLEKS                       R7 R7 K16 ["AlignmentSpace"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K8 [require]
       53 GETTABLEKS                       R8 R1 K14 ["Src"]
       55 GETTABLEKS                       R8 R8 K12 ["Utility"]
       57 GETTABLEKS                       R8 R8 K17 ["getDefaultBasisForObjects"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K20 [Color3.fromRGB]
       62 LOADN                            R9 253
       63 LOADN                            R10 244
       64 LOADN                            R11 161
       65 CALL                             R8 3 1
       66 FASTCALL                         VECTOR ; [+2]
       67 GETIMPORT                        R9 K23 [Vector3.new]
       69 CALL                             R9 0 1
       70 GETIMPORT                        R10 K26 [CFrame.fromMatrix]
       72 MOVE                             R11 R9
       73 LOADK                            R12 K27 [{-1, 0, 0}]
       74 LOADK                            R13 K28 [{0, 1, 0}]
       75 CALL                             R10 3 1
       76 NEWTABLE                         R11 0 8
       78 LOADK                            R12 K29 [{0.5, 0.5, 0.5}]
       79 LOADK                            R13 K30 [{-0.5, 0.5, 0.5}]
       80 LOADK                            R14 K31 [{-0.5, -0.5, 0.5}]
       81 LOADK                            R15 K32 [{0.5, -0.5, 0.5}]
       82 LOADK                            R16 K33 [{0.5, 0.5, -0.5}]
       83 LOADK                            R17 K34 [{-0.5, 0.5, -0.5}]
       84 LOADK                            R18 K35 [{-0.5, -0.5, -0.5}]
       85 LOADK                            R19 K36 [{0.5, -0.5, -0.5}]
       86 SETLIST                          R11 R12 8 [1]
       88 NEWTABLE                         R12 0 12
       90 NEWTABLE                         R13 0 2
       92 GETTABLEN                        R14 R11 1
       93 GETTABLEN                        R15 R11 2
       94 SETLIST                          R13 R14 2 [1]
       96 NEWTABLE                         R14 0 2
       98 GETTABLEN                        R15 R11 2
       99 GETTABLEN                        R16 R11 3
      100 SETLIST                          R14 R15 2 [1]
      102 NEWTABLE                         R15 0 2
      104 GETTABLEN                        R16 R11 3
      105 GETTABLEN                        R17 R11 4
      106 SETLIST                          R15 R16 2 [1]
      108 NEWTABLE                         R16 0 2
      110 GETTABLEN                        R17 R11 4
      111 GETTABLEN                        R18 R11 1
      112 SETLIST                          R16 R17 2 [1]
      114 NEWTABLE                         R17 0 2
      116 GETTABLEN                        R18 R11 5
      117 GETTABLEN                        R19 R11 6
      118 SETLIST                          R17 R18 2 [1]
      120 NEWTABLE                         R18 0 2
      122 GETTABLEN                        R19 R11 6
      123 GETTABLEN                        R20 R11 7
      124 SETLIST                          R18 R19 2 [1]
      126 NEWTABLE                         R19 0 2
      128 GETTABLEN                        R20 R11 7
      129 GETTABLEN                        R21 R11 8
      130 SETLIST                          R19 R20 2 [1]
      132 NEWTABLE                         R20 0 2
      134 GETTABLEN                        R21 R11 8
      135 GETTABLEN                        R22 R11 5
      136 SETLIST                          R20 R21 2 [1]
      138 NEWTABLE                         R21 0 2
      140 GETTABLEN                        R22 R11 1
      141 GETTABLEN                        R23 R11 5
      142 SETLIST                          R21 R22 2 [1]
      144 NEWTABLE                         R22 0 2
      146 GETTABLEN                        R23 R11 2
      147 GETTABLEN                        R24 R11 6
      148 SETLIST                          R22 R23 2 [1]
      150 NEWTABLE                         R23 0 2
      152 GETTABLEN                        R24 R11 3
      153 GETTABLEN                        R25 R11 7
      154 SETLIST                          R23 R24 2 [1]
      156 NEWTABLE                         R24 0 2
      158 GETTABLEN                        R25 R11 4
      159 GETTABLEN                        R26 R11 8
      160 SETLIST                          R24 R25 2 [1]
      162 SETLIST                          R12 R13 12 [1]
      164 DUPCLOSURE                       R13 K37 [PROTO_0]
      165 DUPCLOSURE                       R14 K38 [PROTO_1]
      166 SETGLOBAL                        R14 K39 ["getNormal"]
      168 DUPCLOSURE                       R14 K40 [PROTO_2]
      169 SETGLOBAL                        R14 K41 ["getDirection"]
      171 DUPCLOSURE                       R14 K42 [PROTO_3]
      172 SETGLOBAL                        R14 K43 ["rotateVector"]
      174 DUPCLOSURE                       R14 K44 [PROTO_4]
      175 SETGLOBAL                        R14 K45 ["getSmallestObjectSize"]
      177 DUPCLOSURE                       R14 K46 [PROTO_5]
      178 SETGLOBAL                        R14 K47 ["getModifiedSize"]
      180 DUPCLOSURE                       R14 K48 [PROTO_6]
      181 CAPTURE                          VAL R2
      182 CAPTURE                          VAL R0
      183 CAPTURE                          VAL R8
      184 DUPCLOSURE                       R15 K49 [PROTO_7]
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R0
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R10
      189 DUPCLOSURE                       R16 K50 [PROTO_8]
      190 CAPTURE                          VAL R2
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R9
      194 NEWTABLE                         R17 0 12
      196 LOADK                            R18 K51 ["EdgeA"]
      197 LOADK                            R19 K52 ["EdgeB"]
      198 LOADK                            R20 K53 ["EdgeC"]
      199 LOADK                            R21 K54 ["EdgeD"]
      200 LOADK                            R22 K55 ["EdgeE"]
      201 LOADK                            R23 K56 ["EdgeF"]
      202 LOADK                            R24 K57 ["EdgeG"]
      203 LOADK                            R25 K58 ["EdgeH"]
      204 LOADK                            R26 K59 ["EdgeI"]
      205 LOADK                            R27 K60 ["EdgeJ"]
      206 LOADK                            R28 K61 ["EdgeK"]
      207 LOADK                            R29 K62 ["EdgeL"]
      208 SETLIST                          R17 R18 12 [1]
      210 DUPCLOSURE                       R18 K63 [PROTO_9]
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R17
      213 CAPTURE                          VAL R2
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R8
      216 DUPCLOSURE                       R19 K64 [PROTO_10]
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R5
      221 CAPTURE                          VAL R14
      222 CAPTURE                          VAL R15
      223 CAPTURE                          VAL R16
      224 CAPTURE                          VAL R18
      225 CAPTURE                          VAL R2
      226 RETURN                           R19 1

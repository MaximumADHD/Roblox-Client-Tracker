PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 SETTABLEKS                       R3 R1 K0 ["Text"]
        4 GETIMPORT                        R5 K3 [UDim2.new]
        6 LOADN                            R6 0
        7 GETTABLEKS                       R8 R1 K4 ["TextBounds"]
        9 GETTABLEKS                       R7 R8 K5 ["X"]
       11 LOADN                            R8 0
       12 GETTABLEKS                       R10 R1 K4 ["TextBounds"]
       14 GETTABLEKS                       R9 R10 K6 ["Y"]
       16 CALL                             R5 4 1
       17 SETTABLEKS                       R5 R1 K7 ["Size"]
       19 GETIMPORT                        R5 K3 [UDim2.new]
       21 LOADN                            R6 0
       22 LOADN                            R7 3
       23 LOADN                            R8 0
       24 LOADN                            R9 0
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R1 K8 ["Position"]
       28 JUMPIFNOTEQKN                    R4 K9 [1] ; [+3]
       30 LOADK                            R5 K10 ["studs"]
       31 JUMP                             ; [+1]
       32 LOADK                            R5 K11 ["o"]
       33 SETTABLEKS                       R5 R2 K0 ["Text"]
       35 GETIMPORT                        R5 K3 [UDim2.new]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R2 K4 ["TextBounds"]
       40 GETTABLEKS                       R7 R8 K5 ["X"]
       42 LOADN                            R8 0
       43 GETTABLEKS                       R10 R2 K4 ["TextBounds"]
       45 GETTABLEKS                       R9 R10 K6 ["Y"]
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R2 K7 ["Size"]
       50 GETIMPORT                        R5 K3 [UDim2.new]
       52 LOADN                            R6 0
       53 GETTABLEKS                       R9 R1 K4 ["TextBounds"]
       55 GETTABLEKS                       R8 R9 K5 ["X"]
       57 ADDK                             R7 R8 K12 [4]
       58 LOADN                            R8 0
       59 JUMPIFNOTEQKN                    R4 K9 [1] ; [+3]
       61 LOADN                            R9 7
       62 JUMP                             ; [+1]
       63 LOADN                            R9 0
       64 CALL                             R5 4 1
       65 SETTABLEKS                       R5 R2 K8 ["Position"]
       67 GETIMPORT                        R5 K3 [UDim2.new]
       69 LOADN                            R6 0
       70 GETTABLEKS                       R10 R1 K4 ["TextBounds"]
       72 GETTABLEKS                       R9 R10 K5 ["X"]
       74 GETTABLEKS                       R11 R2 K4 ["TextBounds"]
       76 GETTABLEKS                       R10 R11 K5 ["X"]
       78 ADD                              R8 R9 R10
       79 ADDK                             R7 R8 K13 [7]
       80 LOADN                            R8 0
       81 GETTABLEKS                       R11 R1 K4 ["TextBounds"]
       83 GETTABLEKS                       R10 R11 K6 ["Y"]
       85 ADDK                             R9 R10 K14 [2]
       86 CALL                             R5 4 1
       87 SETTABLEKS                       R5 R0 K7 ["Size"]
       89 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R12 K2 [CFrame.new]
        2 MOVE                             R13 R6
        3 MOVE                             R14 R5
        4 CALL                             R12 2 1
        5 SUB                              R11 R12 R6
        6 ADD                              R10 R11 R5
        7 SUB                              R13 R6 R5
        8 GETTABLEKS                       R12 R13 K3 ["unit"]
       10 GETTABLEKS                       R13 R0 K4 ["Height"]
       12 MUL                              R11 R12 R13
       13 ADD                              R9 R10 R11
       14 ADD                              R8 R9 R7
       15 SETTABLEKS                       R8 R0 K0 ["CFrame"]
       17 GETIMPORT                        R12 K2 [CFrame.new]
       19 MOVE                             R13 R5
       20 MOVE                             R14 R6
       21 CALL                             R12 2 1
       22 SUB                              R11 R12 R5
       23 ADD                              R10 R11 R6
       24 SUB                              R13 R6 R5
       25 GETTABLEKS                       R12 R13 K3 ["unit"]
       27 GETTABLEKS                       R13 R1 K4 ["Height"]
       29 MUL                              R11 R12 R13
       30 SUB                              R9 R10 R11
       31 ADD                              R8 R9 R7
       32 SETTABLEKS                       R8 R1 K0 ["CFrame"]
       34 GETIMPORT                        R8 K2 [CFrame.new]
       36 ADD                              R9 R5 R7
       37 ADD                              R10 R6 R7
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R2 K0 ["CFrame"]
       41 SUB                              R9 R5 R6
       42 GETTABLEKS                       R8 R9 K5 ["magnitude"]
       44 SETTABLEKS                       R8 R2 K6 ["Length"]
       46 GETIMPORT                        R8 K2 [CFrame.new]
       48 MOVE                             R9 R5
       49 ADD                              R10 R5 R7
       50 CALL                             R8 2 1
       51 SETTABLEKS                       R8 R3 K0 ["CFrame"]
       53 GETTABLEKS                       R8 R7 K5 ["magnitude"]
       55 SETTABLEKS                       R8 R3 K6 ["Length"]
       57 GETIMPORT                        R8 K2 [CFrame.new]
       59 MOVE                             R9 R6
       60 ADD                              R10 R6 R7
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R4 K0 ["CFrame"]
       64 GETTABLEKS                       R8 R7 K5 ["magnitude"]
       66 SETTABLEKS                       R8 R4 K6 ["Length"]
       68 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K1 ["RecycleObjects"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K2 [{"CFrame", "Image"}]
        2 GETUPVAL                         R4 1
        3 GETIMPORT                        R7 K4 [CFrame.Angles]
        5 GETUPVAL                         R9 2
        6 JUMPIFNOT                        R9 ; [+2]
        7 LOADK                            R8 K5 [3.14159265358979]
        8 JUMP                             ; [+1]
        9 LOADN                            R8 0
       10 LOADN                            R9 0
       11 GETUPVAL                         R12 3
       12 GETUPVAL                         R13 4
       13 MUL                              R11 R12 R13
       14 FASTCALL1                        MATH_RAD R11 ; [+2]
       15 GETIMPORT                        R10 K8 [math.rad]
       17 CALL                             R10 1 1
       18 CALL                             R7 3 1
       19 GETIMPORT                        R8 K10 [CFrame.new]
       21 GETUPVAL                         R12 5
       22 MINUS                            R11 R12
       23 MULK                             R10 R11 K11 [0.5]
       24 GETUPVAL                         R12 5
       25 MULK                             R11 R12 K11 [0.5]
       26 LOADN                            R12 0
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R9 K13 [Vector3.new]
       30 CALL                             R9 3 1
       31 CALL                             R8 1 1
       32 MUL                              R6 R7 R8
       33 NAMECALL                         R4 R4 K14 ["toWorldSpace"]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K0 ["CFrame"]
       38 SETTABLEKS                       R0 R3 K1 ["Image"]
       40 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       42 GETIMPORT                        R1 K17 [table.insert]
       44 CALL                             R1 2 0
       45 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKN                    R2 K0 [0] ; [+16]
        2 GETUPVAL                         R3 0
        3 NAMECALL                         R3 R3 K1 ["GetChildren"]
        5 CALL                             R3 1 1
        6 LENGTH                           R4 R3
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+6]
       10 GETUPVAL                         R4 1
       11 MOVE                             R6 R3
       12 NAMECALL                         R4 R4 K2 ["RecycleObjects"]
       14 CALL                             R4 2 0
       15 CLOSEUPVALS                      R1
       16 RETURN                           R0 0
       17 FASTCALL1                        MATH_ABS R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R4 K5 [math.abs]
       21 CALL                             R4 1 1
       22 DIV                              R3 R2 R4
       23 GETIMPORT                        R12 K7 [game]
       25 GETTABLEKS                       R11 R12 K8 ["Workspace"]
       27 GETTABLEKS                       R10 R11 K9 ["CurrentCamera"]
       29 GETTABLEKS                       R9 R10 K10 ["CFrame"]
       31 GETTABLEKS                       R8 R9 K11 ["Position"]
       33 NAMECALL                         R6 R0 K12 ["pointToObjectSpace"]
       35 CALL                             R6 2 1
       36 GETTABLEKS                       R5 R6 K13 ["Z"]
       38 LOADN                            R6 0
       39 JUMPIFLT                         R6 R5 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 JUMPIFNOT                        R4 ; [+1]
       44 MULK                             R3 R3 K14 [-1]
       45 GETUPVAL                         R5 2
       46 JUMPIF                           R5 ; [+17]
       47 LOADN                            R5 0
       48 JUMPIFNOTLT                      R5 R3 ; [+8]
       50 FASTCALL1                        MATH_FLOOR R2 ; [+3]
       51 MOVE                             R6 R2
       52 GETIMPORT                        R5 K16 [math.floor]
       54 CALL                             R5 1 1
       55 MOVE                             R2 R5
       56 JUMP                             ; [+6]
       57 FASTCALL1                        MATH_CEIL R2 ; [+3]
       58 MOVE                             R6 R2
       59 GETIMPORT                        R5 K18 [math.ceil]
       61 CALL                             R5 1 1
       62 MOVE                             R2 R5
       63 MULK                             R1 R1 K19 [1.15]
       64 FASTCALL1                        MATH_ABS R2 ; [+3]
       65 MOVE                             R6 R2
       66 GETIMPORT                        R5 K5 [math.abs]
       68 CALL                             R5 1 1
       69 NEWTABLE                         R6 0 0
       71 NEWCLOSURE                       R7 P0
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          REF R5
       76 CAPTURE                          REF R3
       77 CAPTURE                          REF R1
       78 LOADN                            R8 90
       79 JUMPIFNOTLE                      R8 R5 ; [+13]
       81 LOADN                            R8 0
       82 JUMPIFNOTLT                      R3 R8 ; [+2]
       84 SUBK                             R5 R5 K20 [90]
       85 MOVE                             R8 R7
       86 LOADK                            R9 K21 ["rbxasset://textures/transformNinetyDegrees.png"]
       87 CALL                             R8 1 0
       88 LOADN                            R8 0
       89 JUMPIFNOTLT                      R8 R3 ; [+2]
       91 SUBK                             R5 R5 K20 [90]
       92 JUMPBACK                         ; [-15]
       93 GETUPVAL                         R8 2
       94 JUMPIFNOT                        R8 ; [+15]
       95 LOADK                            R8 K22 [22.5]
       96 JUMPIFNOTLE                      R8 R5 ; [+13]
       98 LOADN                            R8 0
       99 JUMPIFNOTLT                      R3 R8 ; [+2]
      101 SUBK                             R5 R5 K22 [22.5]
      102 MOVE                             R8 R7
      103 LOADK                            R9 K23 ["rbxasset://textures/transformTwentyTwoDegrees.png"]
      104 CALL                             R8 1 0
      105 LOADN                            R8 0
      106 JUMPIFNOTLT                      R8 R3 ; [+2]
      108 SUBK                             R5 R5 K22 [22.5]
      109 JUMPBACK                         ; [-17]
      110 LOADN                            R8 5
      111 JUMPIFNOTLE                      R8 R5 ; [+13]
      113 LOADN                            R8 0
      114 JUMPIFNOTLT                      R3 R8 ; [+2]
      116 SUBK                             R5 R5 K24 [5]
      117 MOVE                             R8 R7
      118 LOADK                            R9 K25 ["rbxasset://textures/transformFiveDegrees.png"]
      119 CALL                             R8 1 0
      120 LOADN                            R8 0
      121 JUMPIFNOTLT                      R8 R3 ; [+2]
      123 SUBK                             R5 R5 K24 [5]
      124 JUMPBACK                         ; [-15]
      125 LOADN                            R8 1
      126 JUMPIFNOTLE                      R8 R5 ; [+13]
      128 LOADN                            R8 0
      129 JUMPIFNOTLT                      R3 R8 ; [+2]
      131 SUBK                             R5 R5 K26 [1]
      132 MOVE                             R8 R7
      133 LOADK                            R9 K27 ["rbxasset://textures/transformOneDegree.png"]
      134 CALL                             R8 1 0
      135 LOADN                            R8 0
      136 JUMPIFNOTLT                      R8 R3 ; [+2]
      138 SUBK                             R5 R5 K26 [1]
      139 JUMPBACK                         ; [-15]
      140 GETUPVAL                         R8 1
      141 LOADK                            R10 K28 ["ImageHandleAdornment"]
      142 LENGTH                           R11 R6
      143 GETUPVAL                         R12 0
      144 NAMECALL                         R8 R8 K29 ["Allocate"]
      146 CALL                             R8 4 1
      147 GETIMPORT                        R9 K31 [ipairs]
      149 MOVE                             R10 R6
      150 CALL                             R9 1 3
      151 FORGPREP_INEXT                   R9
      152 GETTABLE                         R14 R8 R12
      153 GETUPVAL                         R15 3
      154 SETTABLEKS                       R15 R14 K32 ["Adornee"]
      156 LOADN                            R15 1
      157 SETTABLEKS                       R15 R14 K33 ["ZIndex"]
      159 LOADB                            R15 1
      160 SETTABLEKS                       R15 R14 K34 ["AlwaysOnTop"]
      162 GETIMPORT                        R15 K37 [Vector2.new]
      164 MOVE                             R16 R1
      165 MOVE                             R17 R1
      166 CALL                             R15 2 1
      167 SETTABLEKS                       R15 R14 K38 ["Size"]
      169 GETIMPORT                        R15 K40 [Color3.new]
      171 LOADN                            R16 1
      172 LOADN                            R17 0
      173 LOADN                            R18 0
      174 CALL                             R15 3 1
      175 SETTABLEKS                       R15 R14 K39 ["Color3"]
      177 LOADK                            R15 K41 [0.6]
      178 SETTABLEKS                       R15 R14 K42 ["Transparency"]
      180 GETTABLEKS                       R15 R13 K10 ["CFrame"]
      182 SETTABLEKS                       R15 R14 K10 ["CFrame"]
      184 GETTABLEKS                       R15 R13 K43 ["Image"]
      186 SETTABLEKS                       R15 R14 K43 ["Image"]
      188 FORGLOOP                         R9 2 [inext] ; [-37]
      190 CLOSEUPVALS                      R1
      191 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R3 1
        1 SETUPVAL                         R3 0
        2 DIVK                             R3 R1 K0 [10]
        3 DIVK                             R4 R3 K1 [2]
        4 LOADN                            R7 1
        5 LOADN                            R5 72
        6 LOADN                            R6 1
        7 FORNPREP                         R5
        8 GETUPVAL                         R9 1
        9 GETTABLE                         R8 R9 R7
       10 SUBK                             R11 R7 K3 [1]
       11 MODK                             R10 R11 K2 [9]
       12 JUMPIFNOTEQKN                    R10 K4 [0] ; [+3]
       14 MOVE                             R9 R3
       15 JUMPIF                           R9 ; [+1]
       16 MOVE                             R9 R4
       17 SETTABLEKS                       R9 R8 K5 ["Length"]
       19 SUBK                             R9 R7 K3 [1]
       20 MULK                             R8 R9 K6 [5]
       21 FASTCALL1                        MATH_RAD R8 ; [+3]
       22 MOVE                             R13 R8
       23 GETIMPORT                        R12 K9 [math.rad]
       25 CALL                             R12 1 1
       26 FASTCALL1                        MATH_COS R12 ; [+2]
       27 GETIMPORT                        R11 K11 [math.cos]
       29 CALL                             R11 1 1
       30 FASTCALL1                        MATH_RAD R8 ; [+3]
       31 MOVE                             R14 R8
       32 GETIMPORT                        R13 K9 [math.rad]
       34 CALL                             R13 1 1
       35 FASTCALL1                        MATH_SIN R13 ; [+2]
       36 GETIMPORT                        R12 K13 [math.sin]
       38 CALL                             R12 1 1
       39 LOADN                            R13 0
       40 FASTCALL                         VECTOR ; [+2]
       41 GETIMPORT                        R10 K16 [Vector3.new]
       43 CALL                             R10 3 1
       44 MUL                              R9 R10 R1
       45 GETUPVAL                         R11 1
       46 GETTABLE                         R10 R11 R7
       47 GETUPVAL                         R12 2
       48 JUMPIFNOT                        R12 ; [+2]
       49 LOADK                            R11 K17 [0.4]
       50 JUMP                             ; [+1]
       51 LOADN                            R11 0
       52 SETTABLEKS                       R11 R10 K18 ["Transparency"]
       54 GETUPVAL                         R11 1
       55 GETTABLE                         R10 R11 R7
       56 GETIMPORT                        R13 K20 [CFrame.new]
       58 MOVE                             R14 R9
       59 MULK                             R15 R9 K1 [2]
       60 CALL                             R13 2 -1
       61 NAMECALL                         R11 R0 K21 ["toWorldSpace"]
       63 CALL                             R11 -1 1
       64 SETTABLEKS                       R11 R10 K19 ["CFrame"]
       66 FORNLOOP                         R5
       67 LOADN                            R7 73
       68 LOADN                            R5 88
       69 LOADN                            R6 1
       70 FORNPREP                         R5
       71 GETUPVAL                         R9 1
       72 GETTABLE                         R8 R9 R7
       73 SETTABLEKS                       R3 R8 K5 ["Length"]
       75 SUBK                             R9 R7 K23 [73]
       76 MULK                             R8 R9 K22 [22.5]
       77 FASTCALL1                        MATH_RAD R8 ; [+3]
       78 MOVE                             R13 R8
       79 GETIMPORT                        R12 K9 [math.rad]
       81 CALL                             R12 1 1
       82 FASTCALL1                        MATH_COS R12 ; [+2]
       83 GETIMPORT                        R11 K11 [math.cos]
       85 CALL                             R11 1 1
       86 FASTCALL1                        MATH_RAD R8 ; [+3]
       87 MOVE                             R14 R8
       88 GETIMPORT                        R13 K9 [math.rad]
       90 CALL                             R13 1 1
       91 FASTCALL1                        MATH_SIN R13 ; [+2]
       92 GETIMPORT                        R12 K13 [math.sin]
       94 CALL                             R12 1 1
       95 LOADN                            R13 0
       96 FASTCALL                         VECTOR ; [+2]
       97 GETIMPORT                        R10 K16 [Vector3.new]
       99 CALL                             R10 3 1
      100 MUL                              R9 R10 R1
      101 GETUPVAL                         R11 1
      102 GETTABLE                         R10 R11 R7
      103 GETUPVAL                         R12 2
      104 JUMPIFNOT                        R12 ; [+2]
      105 LOADN                            R11 0
      106 JUMP                             ; [+1]
      107 LOADK                            R11 K17 [0.4]
      108 SETTABLEKS                       R11 R10 K18 ["Transparency"]
      110 GETUPVAL                         R11 1
      111 GETTABLE                         R10 R11 R7
      112 GETIMPORT                        R13 K20 [CFrame.new]
      114 MOVE                             R14 R9
      115 MULK                             R15 R9 K24 [0.5]
      116 CALL                             R13 2 -1
      117 NAMECALL                         R11 R0 K21 ["toWorldSpace"]
      119 CALL                             R11 -1 1
      120 SETTABLEKS                       R11 R10 K19 ["CFrame"]
      122 FORNLOOP                         R5
      123 SETUPVAL                         R0 3
      124 SETUPVAL                         R1 4
      125 SETUPVAL                         R2 5
      126 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 1
        2 GETIMPORT                        R4 K2 [CFrame.new]
        4 LOADK                            R5 K3 [{0, 0.3, 0}]
        5 LOADK                            R6 K4 [{0, 2, 0}]
        6 CALL                             R4 2 -1
        7 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
        9 CALL                             R2 -1 1
       10 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       12 GETUPVAL                         R2 0
       13 GETTABLEN                        R1 R2 2
       14 GETIMPORT                        R4 K2 [CFrame.new]
       16 LOADK                            R5 K6 [{0, -0.3, 0}]
       17 LOADK                            R6 K7 [{0, -2, 0}]
       18 CALL                             R4 2 -1
       19 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
       21 CALL                             R2 -1 1
       22 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       24 GETUPVAL                         R2 0
       25 GETTABLEN                        R1 R2 3
       26 GETIMPORT                        R4 K2 [CFrame.new]
       28 LOADK                            R5 K8 [{0.3, 0, 0}]
       29 LOADK                            R6 K9 [{2, 0, 0}]
       30 CALL                             R4 2 -1
       31 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
       33 CALL                             R2 -1 1
       34 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       36 GETUPVAL                         R2 0
       37 GETTABLEN                        R1 R2 4
       38 GETIMPORT                        R4 K2 [CFrame.new]
       40 LOADK                            R5 K10 [{-0.3, 0, 0}]
       41 LOADK                            R6 K11 [{-2, 0, 0}]
       42 CALL                             R4 2 -1
       43 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
       45 CALL                             R2 -1 1
       46 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       48 GETUPVAL                         R2 0
       49 GETTABLEN                        R1 R2 5
       50 GETIMPORT                        R4 K2 [CFrame.new]
       52 LOADK                            R5 K12 [{0, 0, 0.3}]
       53 LOADK                            R6 K13 [{0, 0, 2}]
       54 CALL                             R4 2 -1
       55 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
       57 CALL                             R2 -1 1
       58 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       60 GETUPVAL                         R2 0
       61 GETTABLEN                        R1 R2 6
       62 GETIMPORT                        R4 K2 [CFrame.new]
       64 LOADK                            R5 K14 [{0, 0, -0.3}]
       65 LOADK                            R6 K15 [{0, 0, -2}]
       66 CALL                             R4 2 -1
       67 NAMECALL                         R2 R0 K5 ["toWorldSpace"]
       69 CALL                             R2 -1 1
       70 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       72 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R0
        5 GETTABLEN                        R2 R3 2
        6 GETTABLEKS                       R1 R2 K0 ["Visible"]
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K1 ["getButtonState"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K2 ["Enum"]
       15 GETTABLEKS                       R3 R4 K3 ["Key"]
       17 GETTABLEKS                       R2 R3 K4 ["MOUSE_BUTTON1"]
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 3
       23 JUMPIFNOTEQ                      R0 R1 ; [+3]
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 4
       27 GETUPVAL                         R1 3
       28 JUMPIFNOTLE                      R1 R0 ; [+5]
       30 GETUPVAL                         R1 3
       31 JUMPIFEQKN                       R1 K5 [0] ; [+2]
       33 RETURN                           R0 0
       34 JUMPIFNOTEQKN                    R0 K6 [14] ; [+4]
       36 LOADB                            R1 1
       37 SETUPVAL                         R1 5
       38 JUMP                             ; [+36]
       39 GETUPVAL                         R1 6
       40 JUMPIF                           R1 ; [+34]
       41 GETUPVAL                         R3 1
       42 GETTABLE                         R2 R3 R0
       43 GETTABLEN                        R1 R2 2
       44 GETUPVAL                         R5 1
       45 GETTABLE                         R4 R5 R0
       46 GETTABLEN                        R3 R4 4
       47 GETTABLEN                        R2 R3 1
       48 SETTABLEKS                       R2 R1 K7 ["Color3"]
       50 GETUPVAL                         R3 1
       51 GETTABLE                         R2 R3 R0
       52 GETTABLEN                        R1 R2 2
       53 GETUPVAL                         R5 1
       54 GETTABLE                         R4 R5 R0
       55 GETTABLEN                        R3 R4 4
       56 GETTABLEN                        R2 R3 2
       57 SETTABLEKS                       R2 R1 K8 ["Transparency"]
       59 GETUPVAL                         R2 7
       60 GETTABLE                         R1 R2 R0
       61 JUMPIFNOT                        R1 ; [+13]
       62 GETUPVAL                         R2 7
       63 GETTABLE                         R1 R2 R0
       64 GETUPVAL                         R5 1
       65 GETTABLE                         R4 R5 R0
       66 GETTABLEN                        R3 R4 4
       67 GETTABLEN                        R2 R3 1
       68 SETTABLEKS                       R2 R1 K7 ["Color3"]
       70 GETUPVAL                         R2 7
       71 GETTABLE                         R1 R2 R0
       72 LOADK                            R2 K9 [0.2]
       73 SETTABLEKS                       R2 R1 K8 ["Transparency"]
       75 SETUPVAL                         R0 3
       76 LOADB                            R1 1
       77 SETUPVAL                         R1 4
       78 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEN                        R1 R2 2
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R4 R5 R0
        5 GETTABLEN                        R3 R4 5
        6 GETTABLEN                        R2 R3 1
        7 SETTABLEKS                       R2 R1 K0 ["Color3"]
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R3 R0
       11 GETTABLEN                        R1 R2 2
       12 GETUPVAL                         R5 0
       13 GETTABLE                         R4 R5 R0
       14 GETTABLEN                        R3 R4 5
       15 GETTABLEN                        R2 R3 2
       16 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       18 GETUPVAL                         R2 1
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOT                        R1 ; [+15]
       21 GETUPVAL                         R2 1
       22 GETTABLE                         R1 R2 R0
       23 GETIMPORT                        R2 K3 [Color3.new]
       25 LOADN                            R3 0
       26 LOADN                            R4 0
       27 LOADN                            R5 0
       28 CALL                             R2 3 1
       29 SETTABLEKS                       R2 R1 K0 ["Color3"]
       31 GETUPVAL                         R2 1
       32 GETTABLE                         R1 R2 R0
       33 LOADK                            R2 K4 [0.7]
       34 SETTABLEKS                       R2 R1 K1 ["Transparency"]
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+3]
        6 LOADB                            R1 0
        7 SETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K0 ["getButtonState"]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R4 R5 K1 ["Enum"]
       14 GETTABLEKS                       R3 R4 K2 ["Key"]
       16 GETTABLEKS                       R2 R3 K3 ["MOUSE_BUTTON1"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+1]
       20 RETURN                           R0 0
       21 JUMPIFNOTEQKN                    R0 K4 [14] ; [+4]
       23 LOADB                            R1 0
       24 SETUPVAL                         R1 4
       25 JUMP                             ; [+36]
       26 GETUPVAL                         R3 5
       27 GETTABLE                         R2 R3 R0
       28 GETTABLEN                        R1 R2 2
       29 GETUPVAL                         R5 5
       30 GETTABLE                         R4 R5 R0
       31 GETTABLEN                        R3 R4 5
       32 GETTABLEN                        R2 R3 1
       33 SETTABLEKS                       R2 R1 K5 ["Color3"]
       35 GETUPVAL                         R3 5
       36 GETTABLE                         R2 R3 R0
       37 GETTABLEN                        R1 R2 2
       38 GETUPVAL                         R5 5
       39 GETTABLE                         R4 R5 R0
       40 GETTABLEN                        R3 R4 5
       41 GETTABLEN                        R2 R3 2
       42 SETTABLEKS                       R2 R1 K6 ["Transparency"]
       44 GETUPVAL                         R2 6
       45 GETTABLE                         R1 R2 R0
       46 JUMPIFNOT                        R1 ; [+15]
       47 GETUPVAL                         R2 6
       48 GETTABLE                         R1 R2 R0
       49 GETIMPORT                        R2 K8 [Color3.new]
       51 LOADN                            R3 0
       52 LOADN                            R4 0
       53 LOADN                            R5 0
       54 CALL                             R2 3 1
       55 SETTABLEKS                       R2 R1 K5 ["Color3"]
       57 GETUPVAL                         R2 6
       58 GETTABLE                         R1 R2 R0
       59 LOADK                            R2 K9 [0.7]
       60 SETTABLEKS                       R2 R1 K6 ["Transparency"]
       62 LOADN                            R1 0
       63 GETIMPORT                        R2 K11 [pairs]
       65 GETUPVAL                         R3 0
       66 CALL                             R2 1 3
       67 FORGPREP_NEXT                    R2
       68 JUMPIFNOT                        R6 ; [+1]
       69 MOVE                             R1 R5
       70 FORGLOOP                         R2 2 ; [-3]
       72 LOADN                            R2 0
       73 SETUPVAL                         R2 1
       74 JUMPIFEQKN                       R1 K12 [0] ; [+10]
       76 JUMPIFNOTEQKN                    R1 K4 [14] ; [+5]
       78 GETUPVAL                         R2 0
       79 LOADNIL                          R3
       80 SETTABLEN                        R3 R2 14
       81 RETURN                           R0 0
       82 GETUPVAL                         R2 7
       83 MOVE                             R3 R1
       84 CALL                             R2 1 0
       85 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+11]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTEQKN                    R1 K4 [14] ; [+6]
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETUPVAL                         R2 2
       12 NOT                              R1 R2
       13 SETUPVAL                         R1 2
       14 LOADB                            R1 0
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_12:
        0 JUMPIFNOTEQKNIL                  R4 ; [+2]
        2 LOADN                            R4 0
        3 GETIMPORT                        R5 K2 [Instance.new]
        5 LOADK                            R6 K3 ["BoxHandleAdornment"]
        6 GETUPVAL                         R7 0
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R0 R5 K4 ["SizeRelativeOffset"]
       10 SETTABLEKS                       R1 R5 K5 ["Size"]
       12 SETTABLEKS                       R2 R5 K6 ["Color3"]
       14 SETTABLEKS                       R3 R5 K7 ["AlwaysOnTop"]
       16 SETTABLEKS                       R4 R5 K8 ["ZIndex"]
       18 RETURN                           R5 1

PROTO_13:
        0 GETIMPORT                        R8 K2 [Instance.new]
        2 LOADK                            R9 K3 ["ImageHandleAdornment"]
        3 GETUPVAL                         R10 0
        4 CALL                             R8 2 1
        5 SETTABLEKS                       R7 R8 K4 ["Image"]
        7 SETTABLEKS                       R0 R8 K5 ["SizeRelativeOffset"]
        9 SETTABLEKS                       R1 R8 K6 ["Size"]
       11 SETTABLEKS                       R5 R8 K7 ["CFrame"]
       13 GETTABLEN                        R9 R2 1
       14 SETTABLEKS                       R9 R8 K8 ["Color3"]
       16 SETTABLEKS                       R4 R8 K9 ["ZIndex"]
       18 GETTABLEN                        R9 R2 2
       19 SETTABLEKS                       R9 R8 K10 ["Transparency"]
       21 SETTABLEKS                       R3 R8 K11 ["AlwaysOnTop"]
       23 SETTABLEKS                       R6 R8 K12 ["Visible"]
       25 RETURN                           R8 1

PROTO_14:
        0 GETIMPORT                        R6 K2 [Instance.new]
        2 LOADK                            R7 K3 ["ConeHandleAdornment"]
        3 GETUPVAL                         R8 0
        4 CALL                             R6 2 1
        5 SETTABLEKS                       R0 R6 K4 ["SizeRelativeOffset"]
        7 SETTABLEKS                       R5 R6 K5 ["CFrame"]
        9 GETTABLEKS                       R7 R1 K6 ["X"]
       11 SETTABLEKS                       R7 R6 K7 ["Height"]
       13 GETTABLEKS                       R7 R1 K8 ["Y"]
       15 SETTABLEKS                       R7 R6 K9 ["Radius"]
       17 GETTABLEN                        R7 R2 1
       18 SETTABLEKS                       R7 R6 K10 ["Color3"]
       20 SETTABLEKS                       R4 R6 K11 ["ZIndex"]
       22 SETTABLEKS                       R3 R6 K12 ["AlwaysOnTop"]
       24 RETURN                           R6 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["NextGenDraggersEnabledFeature"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_24:
        0 JUMPIFNOTEQKNIL                  R7 ; [+5]
        2 GETIMPORT                        R9 K2 [CFrame.new]
        4 CALL                             R9 0 1
        5 MOVE                             R7 R9
        6 JUMPIFNOTEQKN                    R0 K3 [0] ; [+80]
        8 GETTABLEN                        R10 R3 1
        9 LOADN                            R11 2
       10 JUMPIFNOTEQKNIL                  R11 ; [+2]
       12 LOADN                            R11 0
       13 GETIMPORT                        R12 K5 [Instance.new]
       15 LOADK                            R13 K6 ["BoxHandleAdornment"]
       16 GETUPVAL                         R14 0
       17 CALL                             R12 2 1
       18 SETTABLEKS                       R6 R12 K7 ["SizeRelativeOffset"]
       20 SETTABLEKS                       R4 R12 K8 ["Size"]
       22 SETTABLEKS                       R10 R12 K9 ["Color3"]
       24 LOADB                            R13 1
       25 SETTABLEKS                       R13 R12 K10 ["AlwaysOnTop"]
       27 SETTABLEKS                       R11 R12 K11 ["ZIndex"]
       29 MOVE                             R9 R12
       30 GETUPVAL                         R11 1
       31 LOADN                            R12 1
       32 JUMPIFNOTEQKNIL                  R12 ; [+2]
       34 LOADN                            R12 0
       35 GETIMPORT                        R13 K5 [Instance.new]
       37 LOADK                            R14 K6 ["BoxHandleAdornment"]
       38 GETUPVAL                         R15 0
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R6 R13 K7 ["SizeRelativeOffset"]
       42 SETTABLEKS                       R4 R13 K8 ["Size"]
       44 SETTABLEKS                       R11 R13 K9 ["Color3"]
       46 LOADB                            R14 1
       47 SETTABLEKS                       R14 R13 K10 ["AlwaysOnTop"]
       49 SETTABLEKS                       R12 R13 K11 ["ZIndex"]
       51 MOVE                             R10 R13
       52 LOADK                            R11 K12 [0.7]
       53 SETTABLEKS                       R11 R10 K13 ["Transparency"]
       55 GETTABLEKS                       R11 R9 K14 ["MouseEnter"]
       57 NEWCLOSURE                       R13 P0
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R1
       60 NAMECALL                         R11 R11 K15 ["connect"]
       62 CALL                             R11 2 0
       63 GETTABLEKS                       R11 R9 K16 ["MouseLeave"]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R1
       68 NAMECALL                         R11 R11 K15 ["connect"]
       70 CALL                             R11 2 0
       71 GETUPVAL                         R11 4
       72 NEWTABLE                         R12 0 7
       74 MOVE                             R13 R9
       75 MOVE                             R14 R9
       76 MOVE                             R15 R1
       77 MOVE                             R16 R2
       78 MOVE                             R17 R3
       79 MOVE                             R18 R4
       80 MOVE                             R19 R5
       81 SETLIST                          R12 R13 7 [1]
       83 SETTABLE                         R12 R11 R1
       84 GETUPVAL                         R11 5
       85 SETTABLE                         R10 R11 R1
       86 RETURN                           R0 0
       87 JUMPIFNOTEQKN                    R0 K17 [1] ; [+102]
       89 GETTABLEN                        R10 R3 1
       90 LOADN                            R11 3
       91 JUMPIFNOTEQKNIL                  R11 ; [+2]
       93 LOADN                            R11 0
       94 GETIMPORT                        R12 K5 [Instance.new]
       96 LOADK                            R13 K6 ["BoxHandleAdornment"]
       97 GETUPVAL                         R14 0
       98 CALL                             R12 2 1
       99 SETTABLEKS                       R6 R12 K7 ["SizeRelativeOffset"]
      101 SETTABLEKS                       R5 R12 K8 ["Size"]
      103 SETTABLEKS                       R10 R12 K9 ["Color3"]
      105 LOADB                            R13 1
      106 SETTABLEKS                       R13 R12 K10 ["AlwaysOnTop"]
      108 SETTABLEKS                       R11 R12 K11 ["ZIndex"]
      110 MOVE                             R9 R12
      111 GETUPVAL                         R11 1
      112 LOADN                            R12 2
      113 JUMPIFNOTEQKNIL                  R12 ; [+2]
      115 LOADN                            R12 0
      116 GETIMPORT                        R13 K5 [Instance.new]
      118 LOADK                            R14 K6 ["BoxHandleAdornment"]
      119 GETUPVAL                         R15 0
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R6 R13 K7 ["SizeRelativeOffset"]
      123 SETTABLEKS                       R4 R13 K8 ["Size"]
      125 SETTABLEKS                       R11 R13 K9 ["Color3"]
      127 LOADB                            R14 1
      128 SETTABLEKS                       R14 R13 K10 ["AlwaysOnTop"]
      130 SETTABLEKS                       R12 R13 K11 ["ZIndex"]
      132 MOVE                             R10 R13
      133 GETUPVAL                         R12 1
      134 LOADN                            R13 1
      135 JUMPIFNOTEQKNIL                  R13 ; [+2]
      137 LOADN                            R13 0
      138 GETIMPORT                        R14 K5 [Instance.new]
      140 LOADK                            R15 K6 ["BoxHandleAdornment"]
      141 GETUPVAL                         R16 0
      142 CALL                             R14 2 1
      143 SETTABLEKS                       R6 R14 K7 ["SizeRelativeOffset"]
      145 SETTABLEKS                       R4 R14 K8 ["Size"]
      147 SETTABLEKS                       R12 R14 K9 ["Color3"]
      149 LOADB                            R15 1
      150 SETTABLEKS                       R15 R14 K10 ["AlwaysOnTop"]
      152 SETTABLEKS                       R13 R14 K11 ["ZIndex"]
      154 MOVE                             R11 R14
      155 LOADK                            R12 K12 [0.7]
      156 SETTABLEKS                       R12 R11 K13 ["Transparency"]
      158 GETTABLEKS                       R12 R10 K14 ["MouseEnter"]
      160 NEWCLOSURE                       R14 P2
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          VAL R1
      163 NAMECALL                         R12 R12 K15 ["connect"]
      165 CALL                             R12 2 0
      166 GETTABLEKS                       R12 R10 K16 ["MouseLeave"]
      168 NEWCLOSURE                       R14 P3
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          VAL R1
      171 NAMECALL                         R12 R12 K15 ["connect"]
      173 CALL                             R12 2 0
      174 GETUPVAL                         R12 4
      175 NEWTABLE                         R13 0 7
      177 MOVE                             R14 R10
      178 MOVE                             R15 R9
      179 MOVE                             R16 R1
      180 MOVE                             R17 R2
      181 MOVE                             R18 R3
      182 MOVE                             R19 R4
      183 MOVE                             R20 R5
      184 SETLIST                          R13 R14 7 [1]
      186 SETTABLE                         R13 R12 R1
      187 GETUPVAL                         R12 5
      188 SETTABLE                         R11 R12 R1
      189 RETURN                           R0 0
      190 JUMPIFNOTEQKN                    R0 K18 [2] ; [+92]
      192 MOVE                             R10 R7
      193 GETIMPORT                        R11 K5 [Instance.new]
      195 LOADK                            R12 K19 ["ConeHandleAdornment"]
      196 GETUPVAL                         R13 0
      197 CALL                             R11 2 1
      198 SETTABLEKS                       R6 R11 K7 ["SizeRelativeOffset"]
      200 SETTABLEKS                       R10 R11 K0 ["CFrame"]
      202 GETTABLEKS                       R12 R5 K20 ["X"]
      204 SETTABLEKS                       R12 R11 K21 ["Height"]
      206 GETTABLEKS                       R12 R5 K22 ["Y"]
      208 SETTABLEKS                       R12 R11 K23 ["Radius"]
      210 GETTABLEN                        R12 R3 1
      211 SETTABLEKS                       R12 R11 K9 ["Color3"]
      213 LOADN                            R12 2
      214 SETTABLEKS                       R12 R11 K11 ["ZIndex"]
      216 LOADB                            R12 1
      217 SETTABLEKS                       R12 R11 K10 ["AlwaysOnTop"]
      219 MOVE                             R9 R11
      220 NEWTABLE                         R11 0 2
      222 GETUPVAL                         R12 1
      223 LOADN                            R13 0
      224 SETLIST                          R11 R12 2 [1]
      226 LOADK                            R13 K24 [{0, 0.05, 0}]
      227 SUB                              R12 R7 R13
      228 GETIMPORT                        R13 K5 [Instance.new]
      230 LOADK                            R14 K19 ["ConeHandleAdornment"]
      231 GETUPVAL                         R15 0
      232 CALL                             R13 2 1
      233 SETTABLEKS                       R6 R13 K7 ["SizeRelativeOffset"]
      235 SETTABLEKS                       R12 R13 K0 ["CFrame"]
      237 GETTABLEKS                       R14 R4 K20 ["X"]
      239 SETTABLEKS                       R14 R13 K21 ["Height"]
      241 GETTABLEKS                       R14 R4 K22 ["Y"]
      243 SETTABLEKS                       R14 R13 K23 ["Radius"]
      245 GETTABLEN                        R14 R11 1
      246 SETTABLEKS                       R14 R13 K9 ["Color3"]
      248 LOADN                            R14 1
      249 SETTABLEKS                       R14 R13 K11 ["ZIndex"]
      251 LOADB                            R14 1
      252 SETTABLEKS                       R14 R13 K10 ["AlwaysOnTop"]
      254 MOVE                             R10 R13
      255 GETTABLEKS                       R11 R10 K14 ["MouseEnter"]
      257 DUPCLOSURE                       R13 K25 [PROTO_20]
      258 CAPTURE                          UPVAL U2
      259 NAMECALL                         R11 R11 K15 ["connect"]
      261 CALL                             R11 2 0
      262 GETTABLEKS                       R11 R10 K16 ["MouseLeave"]
      264 DUPCLOSURE                       R13 K26 [PROTO_21]
      265 CAPTURE                          UPVAL U3
      266 NAMECALL                         R11 R11 K15 ["connect"]
      268 CALL                             R11 2 0
      269 GETUPVAL                         R11 4
      270 NEWTABLE                         R12 0 7
      272 MOVE                             R13 R10
      273 MOVE                             R14 R9
      274 MOVE                             R15 R1
      275 MOVE                             R16 R2
      276 MOVE                             R17 R3
      277 MOVE                             R18 R4
      278 MOVE                             R19 R5
      279 SETLIST                          R12 R13 7 [1]
      281 SETTABLE                         R12 R11 R1
      282 RETURN                           R0 0
      283 JUMPIFNOTEQKN                    R0 K27 [3] ; [+101]
      285 MOVE                             R10 R7
      286 GETIMPORT                        R11 K5 [Instance.new]
      288 LOADK                            R12 K28 ["ImageHandleAdornment"]
      289 GETUPVAL                         R13 0
      290 CALL                             R11 2 1
      291 SETTABLEKS                       R8 R11 K29 ["Image"]
      293 SETTABLEKS                       R6 R11 K7 ["SizeRelativeOffset"]
      295 SETTABLEKS                       R4 R11 K8 ["Size"]
      297 SETTABLEKS                       R10 R11 K0 ["CFrame"]
      299 GETTABLEN                        R12 R3 1
      300 SETTABLEKS                       R12 R11 K9 ["Color3"]
      302 LOADN                            R12 6
      303 SETTABLEKS                       R12 R11 K11 ["ZIndex"]
      305 GETTABLEN                        R12 R3 2
      306 SETTABLEKS                       R12 R11 K13 ["Transparency"]
      308 LOADB                            R12 1
      309 SETTABLEKS                       R12 R11 K10 ["AlwaysOnTop"]
      311 LOADB                            R12 1
      312 SETTABLEKS                       R12 R11 K30 ["Visible"]
      314 MOVE                             R9 R11
      315 NEWTABLE                         R11 0 2
      317 GETUPVAL                         R12 1
      318 LOADN                            R13 0
      319 SETLIST                          R11 R12 2 [1]
      321 MOVE                             R12 R7
      322 GETIMPORT                        R13 K5 [Instance.new]
      324 LOADK                            R14 K28 ["ImageHandleAdornment"]
      325 GETUPVAL                         R15 0
      326 CALL                             R13 2 1
      327 SETTABLEKS                       R8 R13 K29 ["Image"]
      329 SETTABLEKS                       R6 R13 K7 ["SizeRelativeOffset"]
      331 SETTABLEKS                       R5 R13 K8 ["Size"]
      333 SETTABLEKS                       R12 R13 K0 ["CFrame"]
      335 GETTABLEN                        R14 R11 1
      336 SETTABLEKS                       R14 R13 K9 ["Color3"]
      338 LOADN                            R14 2
      339 SETTABLEKS                       R14 R13 K11 ["ZIndex"]
      341 GETTABLEN                        R14 R11 2
      342 SETTABLEKS                       R14 R13 K13 ["Transparency"]
      344 LOADB                            R14 1
      345 SETTABLEKS                       R14 R13 K10 ["AlwaysOnTop"]
      347 LOADB                            R14 0
      348 SETTABLEKS                       R14 R13 K30 ["Visible"]
      350 MOVE                             R10 R13
      351 JUMPIFNOTEQKN                    R1 K31 [12] ; [+4]
      353 LOADK                            R11 K32 ["R_XY"]
      354 SETTABLEKS                       R11 R9 K33 ["Name"]
      356 GETTABLEKS                       R11 R9 K14 ["MouseEnter"]
      358 NEWCLOSURE                       R13 P6
      359 CAPTURE                          UPVAL U2
      360 CAPTURE                          VAL R1
      361 NAMECALL                         R11 R11 K15 ["connect"]
      363 CALL                             R11 2 0
      364 GETTABLEKS                       R11 R9 K16 ["MouseLeave"]
      366 NEWCLOSURE                       R13 P7
      367 CAPTURE                          UPVAL U3
      368 CAPTURE                          VAL R1
      369 NAMECALL                         R11 R11 K15 ["connect"]
      371 CALL                             R11 2 0
      372 GETUPVAL                         R11 4
      373 NEWTABLE                         R12 0 7
      375 MOVE                             R13 R10
      376 MOVE                             R14 R9
      377 MOVE                             R15 R1
      378 MOVE                             R16 R2
      379 MOVE                             R17 R3
      380 MOVE                             R18 R4
      381 MOVE                             R19 R5
      382 SETLIST                          R12 R13 7 [1]
      384 SETTABLE                         R12 R11 R1
      385 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEN                        R1 R0 14
        3 GETUPVAL                         R3 1
        4 GETTABLEN                        R2 R3 14
        5 GETTABLEN                        R1 R2 2
        6 GETTABLEKS                       R0 R1 K0 ["Visible"]
        8 JUMPIFNOT                        R0 ; [+32]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K1 ["getButtonState"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K2 ["Enum"]
       15 GETTABLEKS                       R2 R3 K3 ["Key"]
       17 GETTABLEKS                       R1 R2 K4 ["MOUSE_BUTTON1"]
       19 CALL                             R0 1 1
       20 JUMPIFNOT                        R0 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 3
       23 JUMPIFNOTEQKN                    R0 K5 [14] ; [+3]
       25 LOADB                            R0 1
       26 SETUPVAL                         R0 4
       27 LOADN                            R0 14
       28 GETUPVAL                         R1 3
       29 JUMPIFNOTLE                      R1 R0 ; [+5]
       31 GETUPVAL                         R0 3
       32 JUMPIFEQKN                       R0 K6 [0] ; [+2]
       34 RETURN                           R0 0
       35 LOADB                            R0 1
       36 SETUPVAL                         R0 5
       37 LOADN                            R0 14
       38 SETUPVAL                         R0 3
       39 LOADB                            R0 1
       40 SETUPVAL                         R0 4
       41 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 14
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+11]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTEQKN                    R1 K4 [14] ; [+6]
        9 GETUPVAL                         R1 1
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETUPVAL                         R2 2
       12 NOT                              R1 R2
       13 SETUPVAL                         R1 2
       14 LOADB                            R1 0
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 2
        2 LOADN                            R2 1
        3 NEWTABLE                         R3 0 2
        5 GETUPVAL                         R4 1
        6 LOADN                            R5 0
        7 SETLIST                          R3 R4 2 [1]
        9 NEWTABLE                         R4 0 2
       11 GETUPVAL                         R5 2
       12 LOADN                            R6 0
       13 SETLIST                          R4 R5 2 [1]
       15 LOADK                            R5 K0 [{0.8, 0.3, 0}]
       16 LOADK                            R6 K1 [{0.6, 0.21, 0}]
       17 LOADK                            R7 K2 [{0, 1, 0}]
       18 GETIMPORT                        R8 K5 [CFrame.new]
       20 LOADK                            R9 K6 [{0, 3.05, 0}]
       21 LOADK                            R10 K7 [{0, 5, 0}]
       22 CALL                             R8 2 -1
       23 CALL                             R0 -1 0
       24 GETUPVAL                         R0 0
       25 LOADN                            R1 0
       26 LOADN                            R2 2
       27 NEWTABLE                         R3 0 2
       29 GETUPVAL                         R4 1
       30 LOADN                            R5 0
       31 SETLIST                          R3 R4 2 [1]
       33 NEWTABLE                         R4 0 2
       35 GETUPVAL                         R5 3
       36 LOADN                            R6 0
       37 SETLIST                          R4 R5 2 [1]
       39 LOADK                            R5 K8 [{0.1, 0.1, 0.1}]
       40 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
       41 LOADK                            R7 K9 [{1, -1, 0}]
       42 CALL                             R0 7 0
       43 GETUPVAL                         R0 0
       44 LOADN                            R1 0
       45 LOADN                            R2 3
       46 NEWTABLE                         R3 0 2
       48 GETUPVAL                         R4 1
       49 LOADN                            R5 0
       50 SETLIST                          R3 R4 2 [1]
       52 NEWTABLE                         R4 0 2
       54 GETUPVAL                         R5 3
       55 LOADN                            R6 0
       56 SETLIST                          R4 R5 2 [1]
       58 LOADK                            R5 K8 [{0.1, 0.1, 0.1}]
       59 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
       60 LOADK                            R7 K10 [{-1, -1, 0}]
       61 CALL                             R0 7 0
       62 GETUPVAL                         R0 0
       63 LOADN                            R1 0
       64 LOADN                            R2 4
       65 NEWTABLE                         R3 0 2
       67 GETUPVAL                         R4 1
       68 LOADN                            R5 0
       69 SETLIST                          R3 R4 2 [1]
       71 NEWTABLE                         R4 0 2
       73 GETUPVAL                         R5 3
       74 LOADN                            R6 0
       75 SETLIST                          R4 R5 2 [1]
       77 LOADK                            R5 K8 [{0.1, 0.1, 0.1}]
       78 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
       79 LOADK                            R7 K11 [{0, -1, 1}]
       80 CALL                             R0 7 0
       81 GETUPVAL                         R0 0
       82 LOADN                            R1 0
       83 LOADN                            R2 5
       84 NEWTABLE                         R3 0 2
       86 GETUPVAL                         R4 1
       87 LOADN                            R5 0
       88 SETLIST                          R3 R4 2 [1]
       90 NEWTABLE                         R4 0 2
       92 GETUPVAL                         R5 3
       93 LOADN                            R6 0
       94 SETLIST                          R4 R5 2 [1]
       96 LOADK                            R5 K8 [{0.1, 0.1, 0.1}]
       97 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
       98 LOADK                            R7 K12 [{0, -1, -1}]
       99 CALL                             R0 7 0
      100 GETUPVAL                         R0 0
      101 LOADN                            R1 1
      102 LOADN                            R2 7
      103 NEWTABLE                         R3 0 2
      105 GETUPVAL                         R4 1
      106 LOADN                            R5 0
      107 SETLIST                          R3 R4 2 [1]
      109 NEWTABLE                         R4 0 2
      111 GETUPVAL                         R5 4
      112 LOADN                            R6 0
      113 SETLIST                          R4 R5 2 [1]
      115 LOADK                            R5 K13 [{0.15, 0.15, 0.15}]
      116 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
      117 LOADK                            R7 K14 [{1, -1, 1}]
      118 CALL                             R0 7 0
      119 GETUPVAL                         R0 0
      120 LOADN                            R1 1
      121 LOADN                            R2 8
      122 NEWTABLE                         R3 0 2
      124 GETUPVAL                         R4 1
      125 LOADN                            R5 0
      126 SETLIST                          R3 R4 2 [1]
      128 NEWTABLE                         R4 0 2
      130 GETUPVAL                         R5 4
      131 LOADN                            R6 0
      132 SETLIST                          R4 R5 2 [1]
      134 LOADK                            R5 K13 [{0.15, 0.15, 0.15}]
      135 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
      136 LOADK                            R7 K15 [{1, -1, -1}]
      137 CALL                             R0 7 0
      138 GETUPVAL                         R0 0
      139 LOADN                            R1 1
      140 LOADN                            R2 9
      141 NEWTABLE                         R3 0 2
      143 GETUPVAL                         R4 1
      144 LOADN                            R5 0
      145 SETLIST                          R3 R4 2 [1]
      147 NEWTABLE                         R4 0 2
      149 GETUPVAL                         R5 4
      150 LOADN                            R6 0
      151 SETLIST                          R4 R5 2 [1]
      153 LOADK                            R5 K13 [{0.15, 0.15, 0.15}]
      154 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
      155 LOADK                            R7 K16 [{-1, -1, 1}]
      156 CALL                             R0 7 0
      157 GETUPVAL                         R0 0
      158 LOADN                            R1 1
      159 LOADN                            R2 10
      160 NEWTABLE                         R3 0 2
      162 GETUPVAL                         R4 1
      163 LOADN                            R5 0
      164 SETLIST                          R3 R4 2 [1]
      166 NEWTABLE                         R4 0 2
      168 GETUPVAL                         R5 4
      169 LOADN                            R6 0
      170 SETLIST                          R4 R5 2 [1]
      172 LOADK                            R5 K13 [{0.15, 0.15, 0.15}]
      173 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
      174 LOADK                            R7 K17 [{-1, -1, -1}]
      175 CALL                             R0 7 0
      176 GETUPVAL                         R0 0
      177 LOADN                            R1 1
      178 LOADN                            R2 6
      179 NEWTABLE                         R3 0 2
      181 GETUPVAL                         R4 1
      182 LOADN                            R5 0
      183 SETLIST                          R3 R4 2 [1]
      185 NEWTABLE                         R4 0 2
      187 GETUPVAL                         R5 4
      188 LOADN                            R6 0
      189 SETLIST                          R4 R5 2 [1]
      191 LOADK                            R5 K13 [{0.15, 0.15, 0.15}]
      192 LOADK                            R6 K8 [{0.1, 0.1, 0.1}]
      193 LOADK                            R7 K2 [{0, 1, 0}]
      194 CALL                             R0 7 0
      195 GETUPVAL                         R0 0
      196 LOADN                            R1 3
      197 LOADN                            R2 11
      198 NEWTABLE                         R3 0 2
      200 GETUPVAL                         R4 5
      201 LOADN                            R5 0
      202 SETLIST                          R3 R4 2 [1]
      204 NEWTABLE                         R4 0 2
      206 GETUPVAL                         R5 5
      207 LOADK                            R6 K18 [0.3]
      208 SETLIST                          R4 R5 2 [1]
      210 GETIMPORT                        R5 K20 [Vector2.new]
      212 LOADN                            R6 1
      213 LOADN                            R7 1
      214 CALL                             R5 2 1
      215 GETIMPORT                        R6 K20 [Vector2.new]
      217 LOADN                            R7 1
      218 LOADN                            R8 1
      219 CALL                             R6 2 1
      220 LOADK                            R7 K21 [{-1, 1, -1}]
      221 GETIMPORT                        R8 K5 [CFrame.new]
      223 LOADK                            R9 K22 [{0, 0, 0}]
      224 LOADK                            R10 K23 [{0, 0, 1}]
      225 CALL                             R8 2 1
      226 LOADK                            R9 K24 ["rbxasset://textures/rotationArrow.png"]
      227 CALL                             R0 9 0
      228 GETUPVAL                         R0 0
      229 LOADN                            R1 3
      230 LOADN                            R2 12
      231 NEWTABLE                         R3 0 2
      233 GETUPVAL                         R4 6
      234 LOADN                            R5 0
      235 SETLIST                          R3 R4 2 [1]
      237 NEWTABLE                         R4 0 2
      239 GETUPVAL                         R5 6
      240 LOADK                            R6 K18 [0.3]
      241 SETLIST                          R4 R5 2 [1]
      243 GETIMPORT                        R5 K20 [Vector2.new]
      245 LOADN                            R6 1
      246 LOADN                            R7 1
      247 CALL                             R5 2 1
      248 GETIMPORT                        R6 K20 [Vector2.new]
      250 LOADN                            R7 1
      251 LOADN                            R8 1
      252 CALL                             R6 2 1
      253 LOADK                            R7 K25 [{-1, 1, 1}]
      254 GETIMPORT                        R8 K5 [CFrame.new]
      256 LOADK                            R9 K22 [{0, 0, 0}]
      257 LOADK                            R10 K2 [{0, 1, 0}]
      258 CALL                             R8 2 1
      259 LOADK                            R9 K24 ["rbxasset://textures/rotationArrow.png"]
      260 CALL                             R0 9 0
      261 GETUPVAL                         R0 0
      262 LOADN                            R1 3
      263 LOADN                            R2 13
      264 NEWTABLE                         R3 0 2
      266 GETUPVAL                         R4 7
      267 LOADN                            R5 0
      268 SETLIST                          R3 R4 2 [1]
      270 NEWTABLE                         R4 0 2
      272 GETUPVAL                         R5 7
      273 LOADK                            R6 K18 [0.3]
      274 SETLIST                          R4 R5 2 [1]
      276 GETIMPORT                        R5 K20 [Vector2.new]
      278 LOADN                            R6 1
      279 LOADN                            R7 1
      280 CALL                             R5 2 1
      281 GETIMPORT                        R6 K20 [Vector2.new]
      283 LOADN                            R7 1
      284 LOADN                            R8 1
      285 CALL                             R6 2 1
      286 LOADK                            R7 K26 [{1, 1, 1}]
      287 GETIMPORT                        R8 K5 [CFrame.new]
      289 LOADK                            R9 K22 [{0, 0, 0}]
      290 LOADK                            R10 K27 [{1, 0, 0}]
      291 CALL                             R8 2 1
      292 LOADK                            R9 K24 ["rbxasset://textures/rotationArrow.png"]
      293 CALL                             R0 9 0
      294 GETIMPORT                        R0 K29 [Instance.new]
      296 LOADK                            R1 K30 ["ScreenGui"]
      297 GETUPVAL                         R2 9
      298 CALL                             R0 2 1
      299 SETUPVAL                         R0 8
      300 GETUPVAL                         R0 8
      301 LOADK                            R1 K31 ["PrecisionDraggerGui"]
      302 SETTABLEKS                       R1 R0 K32 ["Name"]
      304 GETIMPORT                        R0 K29 [Instance.new]
      306 LOADK                            R1 K33 ["ImageLabel"]
      307 GETUPVAL                         R2 8
      308 CALL                             R0 2 1
      309 LOADK                            R1 K34 ["rbxasset://textures/whiteCircle.png"]
      310 SETTABLEKS                       R1 R0 K35 ["Image"]
      312 LOADN                            R1 1
      313 SETTABLEKS                       R1 R0 K36 ["BackgroundTransparency"]
      315 LOADN                            R1 0
      316 SETTABLEKS                       R1 R0 K37 ["BorderSizePixel"]
      318 GETUPVAL                         R1 10
      319 SETTABLEKS                       R1 R0 K38 ["ImageColor3"]
      321 GETIMPORT                        R1 K40 [UDim2.new]
      323 LOADN                            R2 0
      324 LOADN                            R3 80
      325 LOADN                            R4 0
      326 LOADN                            R5 80
      327 CALL                             R1 4 1
      328 SETTABLEKS                       R1 R0 K41 ["Size"]
      330 GETIMPORT                        R1 K40 [UDim2.new]
      332 LOADN                            R2 0
      333 LOADN                            R3 5
      334 LOADN                            R4 0
      335 LOADN                            R5 5
      336 CALL                             R1 4 1
      337 SETTABLEKS                       R1 R0 K42 ["Position"]
      339 LOADK                            R1 K43 [0.5]
      340 SETTABLEKS                       R1 R0 K44 ["ImageTransparency"]
      342 GETTABLEKS                       R1 R0 K45 ["MouseEnter"]
      344 NEWCLOSURE                       R3 P0
      345 CAPTURE                          UPVAL U11
      346 CAPTURE                          UPVAL U12
      347 CAPTURE                          UPVAL U13
      348 CAPTURE                          UPVAL U14
      349 CAPTURE                          UPVAL U15
      350 CAPTURE                          UPVAL U16
      351 NAMECALL                         R1 R1 K46 ["connect"]
      353 CALL                             R1 2 0
      354 GETTABLEKS                       R1 R0 K47 ["MouseLeave"]
      356 DUPCLOSURE                       R3 K48 [PROTO_26]
      357 CAPTURE                          UPVAL U17
      358 NAMECALL                         R1 R1 K46 ["connect"]
      360 CALL                             R1 2 0
      361 GETTABLEKS                       R1 R0 K49 ["InputBegan"]
      363 NEWCLOSURE                       R3 P2
      364 CAPTURE                          UPVAL U18
      365 NAMECALL                         R1 R1 K46 ["connect"]
      367 CALL                             R1 2 0
      368 GETTABLEKS                       R1 R0 K50 ["InputEnded"]
      370 NEWCLOSURE                       R3 P3
      371 CAPTURE                          UPVAL U14
      372 CAPTURE                          UPVAL U18
      373 CAPTURE                          UPVAL U19
      374 NAMECALL                         R1 R1 K46 ["connect"]
      376 CALL                             R1 2 0
      377 GETUPVAL                         R1 12
      378 NEWTABLE                         R2 0 7
      380 MOVE                             R3 R0
      381 MOVE                             R4 R0
      382 LOADN                            R5 14
      383 NEWTABLE                         R6 0 2
      385 GETUPVAL                         R7 20
      386 LOADN                            R8 0
      387 SETLIST                          R6 R7 2 [1]
      389 NEWTABLE                         R7 0 2
      391 GETUPVAL                         R8 10
      392 LOADK                            R9 K43 [0.5]
      393 SETLIST                          R7 R8 2 [1]
      395 GETIMPORT                        R8 K20 [Vector2.new]
      397 LOADN                            R9 1
      398 LOADN                            R10 1
      399 CALL                             R8 2 1
      400 GETIMPORT                        R9 K20 [Vector2.new]
      402 LOADN                            R10 1
      403 LOADN                            R11 1
      404 CALL                             R9 2 -1
      405 SETLIST                          R2 R3 -1 [1]
      407 SETTABLEN                        R2 R1 14
      408 GETUPVAL                         R1 21
      409 GETIMPORT                        R2 K29 [Instance.new]
      411 LOADK                            R3 K51 ["LineHandleAdornment"]
      412 GETUPVAL                         R4 9
      413 CALL                             R2 2 1
      414 SETTABLEN                        R2 R1 1
      415 GETUPVAL                         R2 21
      416 GETTABLEN                        R1 R2 1
      417 LOADB                            R2 0
      418 SETTABLEKS                       R2 R1 K52 ["Visible"]
      420 GETUPVAL                         R2 21
      421 GETTABLEN                        R1 R2 1
      422 GETUPVAL                         R2 7
      423 SETTABLEKS                       R2 R1 K53 ["Color3"]
      425 GETUPVAL                         R2 21
      426 GETTABLEN                        R1 R2 1
      427 LOADN                            R2 3
      428 SETTABLEKS                       R2 R1 K54 ["Thickness"]
      430 GETUPVAL                         R2 21
      431 GETTABLEN                        R1 R2 1
      432 LOADN                            R2 5
      433 SETTABLEKS                       R2 R1 K55 ["ZIndex"]
      435 GETUPVAL                         R1 21
      436 GETUPVAL                         R3 21
      437 GETTABLEN                        R2 R3 1
      438 NAMECALL                         R2 R2 K56 ["Clone"]
      440 CALL                             R2 1 1
      441 SETTABLEN                        R2 R1 2
      442 GETUPVAL                         R2 21
      443 GETTABLEN                        R1 R2 2
      444 GETUPVAL                         R2 9
      445 SETTABLEKS                       R2 R1 K57 ["Parent"]
      447 GETUPVAL                         R2 21
      448 GETTABLEN                        R1 R2 2
      449 GETUPVAL                         R2 6
      450 SETTABLEKS                       R2 R1 K53 ["Color3"]
      452 GETUPVAL                         R1 21
      453 GETUPVAL                         R3 21
      454 GETTABLEN                        R2 R3 1
      455 NAMECALL                         R2 R2 K56 ["Clone"]
      457 CALL                             R2 1 1
      458 SETTABLEN                        R2 R1 3
      459 GETUPVAL                         R2 21
      460 GETTABLEN                        R1 R2 3
      461 GETUPVAL                         R2 9
      462 SETTABLEKS                       R2 R1 K57 ["Parent"]
      464 GETUPVAL                         R2 21
      465 GETTABLEN                        R1 R2 3
      466 GETUPVAL                         R2 5
      467 SETTABLEKS                       R2 R1 K53 ["Color3"]
      469 GETUPVAL                         R1 22
      470 JUMPIF                           R1 ; [+386]
      471 GETIMPORT                        R1 K29 [Instance.new]
      473 LOADK                            R2 K58 ["Frame"]
      474 GETUPVAL                         R3 8
      475 CALL                             R1 2 1
      476 SETUPVAL                         R1 23
      477 GETUPVAL                         R1 23
      478 LOADB                            R2 0
      479 SETTABLEKS                       R2 R1 K52 ["Visible"]
      481 GETUPVAL                         R1 23
      482 LOADK                            R2 K59 ["MeasureFrame"]
      483 SETTABLEKS                       R2 R1 K32 ["Name"]
      485 GETUPVAL                         R1 23
      486 LOADK                            R2 K60 [0.45]
      487 SETTABLEKS                       R2 R1 K36 ["BackgroundTransparency"]
      489 GETUPVAL                         R1 23
      490 LOADN                            R2 0
      491 SETTABLEKS                       R2 R1 K37 ["BorderSizePixel"]
      493 GETUPVAL                         R1 23
      494 GETUPVAL                         R2 4
      495 SETTABLEKS                       R2 R1 K61 ["BackgroundColor3"]
      497 GETUPVAL                         R1 23
      498 NAMECALL                         R1 R1 K56 ["Clone"]
      500 CALL                             R1 1 1
      501 SETUPVAL                         R1 24
      502 GETUPVAL                         R1 24
      503 GETUPVAL                         R2 8
      504 SETTABLEKS                       R2 R1 K57 ["Parent"]
      506 GETIMPORT                        R1 K29 [Instance.new]
      508 LOADK                            R2 K62 ["TextLabel"]
      509 GETUPVAL                         R3 23
      510 CALL                             R1 2 1
      511 SETUPVAL                         R1 25
      512 GETUPVAL                         R1 25
      513 LOADK                            R2 K63 ["MeasureLabel"]
      514 SETTABLEKS                       R2 R1 K32 ["Name"]
      516 GETUPVAL                         R1 25
      517 GETIMPORT                        R2 K67 [Enum.Font.ArialBold]
      519 SETTABLEKS                       R2 R1 K65 ["Font"]
      521 GETUPVAL                         R1 25
      522 GETIMPORT                        R2 K70 [Enum.FontSize.Size24]
      524 SETTABLEKS                       R2 R1 K68 ["FontSize"]
      526 GETUPVAL                         R1 25
      527 LOADN                            R2 1
      528 SETTABLEKS                       R2 R1 K36 ["BackgroundTransparency"]
      530 GETUPVAL                         R1 25
      531 LOADN                            R2 0
      532 SETTABLEKS                       R2 R1 K37 ["BorderSizePixel"]
      534 GETUPVAL                         R1 25
      535 NAMECALL                         R1 R1 K56 ["Clone"]
      537 CALL                             R1 1 1
      538 SETUPVAL                         R1 26
      539 GETUPVAL                         R1 26
      540 GETUPVAL                         R2 24
      541 SETTABLEKS                       R2 R1 K57 ["Parent"]
      543 GETIMPORT                        R1 K29 [Instance.new]
      545 LOADK                            R2 K62 ["TextLabel"]
      546 GETUPVAL                         R3 23
      547 CALL                             R1 2 1
      548 SETUPVAL                         R1 27
      549 GETUPVAL                         R1 27
      550 LOADK                            R2 K71 ["UnitLabel"]
      551 SETTABLEKS                       R2 R1 K32 ["Name"]
      553 GETUPVAL                         R1 27
      554 GETIMPORT                        R2 K67 [Enum.Font.ArialBold]
      556 SETTABLEKS                       R2 R1 K65 ["Font"]
      558 GETUPVAL                         R1 27
      559 GETIMPORT                        R2 K73 [Enum.FontSize.Size14]
      561 SETTABLEKS                       R2 R1 K68 ["FontSize"]
      563 GETUPVAL                         R1 27
      564 LOADN                            R2 1
      565 SETTABLEKS                       R2 R1 K36 ["BackgroundTransparency"]
      567 GETUPVAL                         R1 27
      568 LOADN                            R2 0
      569 SETTABLEKS                       R2 R1 K37 ["BorderSizePixel"]
      571 GETUPVAL                         R1 27
      572 NAMECALL                         R1 R1 K56 ["Clone"]
      574 CALL                             R1 1 1
      575 SETUPVAL                         R1 28
      576 GETUPVAL                         R1 28
      577 GETUPVAL                         R2 24
      578 SETTABLEKS                       R2 R1 K57 ["Parent"]
      580 GETIMPORT                        R1 K29 [Instance.new]
      582 LOADK                            R2 K74 ["Part"]
      583 GETIMPORT                        R4 K76 [game]
      585 GETTABLEKS                       R3 R4 K77 ["CoreGui"]
      587 CALL                             R1 2 1
      588 SETUPVAL                         R1 22
      589 GETUPVAL                         R1 22
      590 LOADB                            R2 1
      591 SETTABLEKS                       R2 R1 K78 ["Anchored"]
      593 GETUPVAL                         R1 22
      594 GETIMPORT                        R2 K5 [CFrame.new]
      596 CALL                             R2 0 1
      597 SETTABLEKS                       R2 R1 K3 ["CFrame"]
      599 GETUPVAL                         R1 29
      600 GETIMPORT                        R2 K29 [Instance.new]
      602 LOADK                            R3 K51 ["LineHandleAdornment"]
      603 GETUPVAL                         R4 9
      604 CALL                             R2 2 1
      605 SETTABLEN                        R2 R1 1
      606 GETUPVAL                         R2 29
      607 GETTABLEN                        R1 R2 1
      608 LOADB                            R2 0
      609 SETTABLEKS                       R2 R1 K52 ["Visible"]
      611 GETUPVAL                         R2 29
      612 GETTABLEN                        R1 R2 1
      613 GETUPVAL                         R2 10
      614 SETTABLEKS                       R2 R1 K53 ["Color3"]
      616 GETUPVAL                         R2 29
      617 GETTABLEN                        R1 R2 1
      618 GETUPVAL                         R2 22
      619 SETTABLEKS                       R2 R1 K79 ["Adornee"]
      621 GETUPVAL                         R2 29
      622 GETTABLEN                        R1 R2 1
      623 LOADB                            R2 1
      624 SETTABLEKS                       R2 R1 K80 ["AlwaysOnTop"]
      626 GETUPVAL                         R2 29
      627 GETTABLEN                        R1 R2 1
      628 LOADN                            R2 5
      629 SETTABLEKS                       R2 R1 K55 ["ZIndex"]
      631 GETUPVAL                         R1 29
      632 GETUPVAL                         R3 29
      633 GETTABLEN                        R2 R3 1
      634 NAMECALL                         R2 R2 K56 ["Clone"]
      636 CALL                             R2 1 1
      637 SETTABLEN                        R2 R1 2
      638 GETUPVAL                         R2 29
      639 GETTABLEN                        R1 R2 2
      640 GETUPVAL                         R2 9
      641 SETTABLEKS                       R2 R1 K57 ["Parent"]
      643 GETUPVAL                         R1 29
      644 GETUPVAL                         R3 29
      645 GETTABLEN                        R2 R3 1
      646 NAMECALL                         R2 R2 K56 ["Clone"]
      648 CALL                             R2 1 1
      649 SETTABLEN                        R2 R1 3
      650 GETUPVAL                         R2 29
      651 GETTABLEN                        R1 R2 3
      652 GETUPVAL                         R2 9
      653 SETTABLEKS                       R2 R1 K57 ["Parent"]
      655 GETUPVAL                         R1 29
      656 GETUPVAL                         R3 29
      657 GETTABLEN                        R2 R3 1
      658 NAMECALL                         R2 R2 K56 ["Clone"]
      660 CALL                             R2 1 1
      661 SETTABLEN                        R2 R1 4
      662 GETUPVAL                         R2 29
      663 GETTABLEN                        R1 R2 4
      664 GETUPVAL                         R2 9
      665 SETTABLEKS                       R2 R1 K57 ["Parent"]
      667 GETUPVAL                         R1 29
      668 GETUPVAL                         R3 29
      669 GETTABLEN                        R2 R3 1
      670 NAMECALL                         R2 R2 K56 ["Clone"]
      672 CALL                             R2 1 1
      673 SETTABLEN                        R2 R1 5
      674 GETUPVAL                         R2 29
      675 GETTABLEN                        R1 R2 5
      676 GETUPVAL                         R2 9
      677 SETTABLEKS                       R2 R1 K57 ["Parent"]
      679 GETUPVAL                         R1 29
      680 GETUPVAL                         R3 29
      681 GETTABLEN                        R2 R3 1
      682 NAMECALL                         R2 R2 K56 ["Clone"]
      684 CALL                             R2 1 1
      685 SETTABLEN                        R2 R1 6
      686 GETUPVAL                         R2 29
      687 GETTABLEN                        R1 R2 6
      688 GETUPVAL                         R2 9
      689 SETTABLEKS                       R2 R1 K57 ["Parent"]
      691 GETUPVAL                         R1 30
      692 GETUPVAL                         R3 29
      693 GETTABLEN                        R2 R3 1
      694 NAMECALL                         R2 R2 K56 ["Clone"]
      696 CALL                             R2 1 1
      697 SETTABLEN                        R2 R1 1
      698 GETUPVAL                         R2 30
      699 GETTABLEN                        R1 R2 1
      700 GETUPVAL                         R2 2
      701 SETTABLEKS                       R2 R1 K53 ["Color3"]
      703 GETUPVAL                         R2 30
      704 GETTABLEN                        R1 R2 1
      705 GETUPVAL                         R2 9
      706 SETTABLEKS                       R2 R1 K57 ["Parent"]
      708 GETUPVAL                         R2 30
      709 GETTABLEN                        R1 R2 1
      710 LOADN                            R2 2
      711 SETTABLEKS                       R2 R1 K54 ["Thickness"]
      713 GETUPVAL                         R2 30
      714 GETTABLEN                        R1 R2 1
      715 LOADK                            R2 K81 [0.6]
      716 SETTABLEKS                       R2 R1 K82 ["Length"]
      718 LOADN                            R3 2
      719 LOADN                            R1 6
      720 LOADN                            R2 1
      721 FORNPREP                         R1
      722 GETUPVAL                         R4 30
      723 GETUPVAL                         R6 30
      724 GETTABLEN                        R5 R6 1
      725 NAMECALL                         R5 R5 K56 ["Clone"]
      727 CALL                             R5 1 1
      728 SETTABLE                         R5 R4 R3
      729 GETUPVAL                         R5 30
      730 GETTABLE                         R4 R5 R3
      731 GETUPVAL                         R5 9
      732 SETTABLEKS                       R5 R4 K57 ["Parent"]
      734 FORNLOOP                         R1
      735 GETUPVAL                         R1 31
      736 GETIMPORT                        R2 K29 [Instance.new]
      738 LOADK                            R3 K83 ["ConeHandleAdornment"]
      739 GETUPVAL                         R4 9
      740 CALL                             R2 2 1
      741 SETTABLEN                        R2 R1 1
      742 GETUPVAL                         R2 31
      743 GETTABLEN                        R1 R2 1
      744 LOADB                            R2 0
      745 SETTABLEKS                       R2 R1 K52 ["Visible"]
      747 GETUPVAL                         R2 31
      748 GETTABLEN                        R1 R2 1
      749 GETUPVAL                         R2 10
      750 SETTABLEKS                       R2 R1 K53 ["Color3"]
      752 GETUPVAL                         R2 31
      753 GETTABLEN                        R1 R2 1
      754 GETUPVAL                         R2 22
      755 SETTABLEKS                       R2 R1 K79 ["Adornee"]
      757 GETUPVAL                         R2 31
      758 GETTABLEN                        R1 R2 1
      759 LOADK                            R2 K43 [0.5]
      760 SETTABLEKS                       R2 R1 K84 ["Height"]
      762 GETUPVAL                         R2 31
      763 GETTABLEN                        R1 R2 1
      764 LOADK                            R2 K85 [0.1]
      765 SETTABLEKS                       R2 R1 K86 ["Radius"]
      767 GETUPVAL                         R2 31
      768 GETTABLEN                        R1 R2 1
      769 LOADB                            R2 1
      770 SETTABLEKS                       R2 R1 K80 ["AlwaysOnTop"]
      772 GETUPVAL                         R2 31
      773 GETTABLEN                        R1 R2 1
      774 LOADN                            R2 5
      775 SETTABLEKS                       R2 R1 K55 ["ZIndex"]
      777 GETUPVAL                         R1 31
      778 GETUPVAL                         R3 31
      779 GETTABLEN                        R2 R3 1
      780 NAMECALL                         R2 R2 K56 ["Clone"]
      782 CALL                             R2 1 1
      783 SETTABLEN                        R2 R1 2
      784 GETUPVAL                         R2 31
      785 GETTABLEN                        R1 R2 2
      786 GETUPVAL                         R2 9
      787 SETTABLEKS                       R2 R1 K57 ["Parent"]
      789 GETUPVAL                         R1 31
      790 GETUPVAL                         R3 31
      791 GETTABLEN                        R2 R3 1
      792 NAMECALL                         R2 R2 K56 ["Clone"]
      794 CALL                             R2 1 1
      795 SETTABLEN                        R2 R1 3
      796 GETUPVAL                         R2 31
      797 GETTABLEN                        R1 R2 3
      798 GETUPVAL                         R2 9
      799 SETTABLEKS                       R2 R1 K57 ["Parent"]
      801 GETUPVAL                         R1 31
      802 GETUPVAL                         R3 31
      803 GETTABLEN                        R2 R3 1
      804 NAMECALL                         R2 R2 K56 ["Clone"]
      806 CALL                             R2 1 1
      807 SETTABLEN                        R2 R1 4
      808 GETUPVAL                         R2 31
      809 GETTABLEN                        R1 R2 4
      810 GETUPVAL                         R2 9
      811 SETTABLEKS                       R2 R1 K57 ["Parent"]
      813 GETUPVAL                         R1 32
      814 GETIMPORT                        R2 K29 [Instance.new]
      816 LOADK                            R3 K33 ["ImageLabel"]
      817 GETUPVAL                         R4 8
      818 CALL                             R2 2 1
      819 SETTABLEN                        R2 R1 1
      820 GETUPVAL                         R2 32
      821 GETTABLEN                        R1 R2 1
      822 LOADB                            R2 0
      823 SETTABLEKS                       R2 R1 K52 ["Visible"]
      825 GETUPVAL                         R2 32
      826 GETTABLEN                        R1 R2 1
      827 LOADN                            R2 1
      828 SETTABLEKS                       R2 R1 K36 ["BackgroundTransparency"]
      830 GETUPVAL                         R2 32
      831 GETTABLEN                        R1 R2 1
      832 LOADN                            R2 0
      833 SETTABLEKS                       R2 R1 K37 ["BorderSizePixel"]
      835 GETUPVAL                         R2 32
      836 GETTABLEN                        R1 R2 1
      837 LOADK                            R2 K87 ["rbxasset://textures/gradient.png"]
      838 SETTABLEKS                       R2 R1 K35 ["Image"]
      840 LOADN                            R3 2
      841 LOADN                            R1 8
      842 LOADN                            R2 1
      843 FORNPREP                         R1
      844 GETUPVAL                         R4 32
      845 GETUPVAL                         R6 32
      846 GETTABLEN                        R5 R6 1
      847 NAMECALL                         R5 R5 K56 ["Clone"]
      849 CALL                             R5 1 1
      850 SETTABLE                         R5 R4 R3
      851 GETUPVAL                         R5 32
      852 GETTABLE                         R4 R5 R3
      853 GETUPVAL                         R5 8
      854 SETTABLEKS                       R5 R4 K57 ["Parent"]
      856 FORNLOOP                         R1
      857 LOADN                            R3 1
      858 LOADN                            R1 88
      859 LOADN                            R2 1
      860 FORNPREP                         R1
      861 GETIMPORT                        R4 K29 [Instance.new]
      863 LOADK                            R5 K51 ["LineHandleAdornment"]
      864 GETUPVAL                         R6 9
      865 CALL                             R4 2 1
      866 LOADB                            R5 0
      867 SETTABLEKS                       R5 R4 K52 ["Visible"]
      869 GETUPVAL                         R5 22
      870 SETTABLEKS                       R5 R4 K79 ["Adornee"]
      872 LOADB                            R5 1
      873 SETTABLEKS                       R5 R4 K80 ["AlwaysOnTop"]
      875 LOADN                            R5 2
      876 SETTABLEKS                       R5 R4 K55 ["ZIndex"]
      878 GETUPVAL                         R5 10
      879 SETTABLEKS                       R5 R4 K53 ["Color3"]
      881 LOADN                            R5 2
      882 SETTABLEKS                       R5 R4 K54 ["Thickness"]
      884 GETUPVAL                         R6 33
      885 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
      887 MOVE                             R7 R4
      888 GETIMPORT                        R5 K90 [table.insert]
      890 CALL                             R5 2 0
      891 FORNLOOP                         R1
      892 GETIMPORT                        R1 K29 [Instance.new]
      894 LOADK                            R2 K51 ["LineHandleAdornment"]
      895 GETUPVAL                         R3 9
      896 CALL                             R1 2 1
      897 LOADN                            R2 2
      898 SETTABLEKS                       R2 R1 K82 ["Length"]
      900 GETUPVAL                         R2 10
      901 SETTABLEKS                       R2 R1 K53 ["Color3"]
      903 LOADK                            R2 K2 [{0, 1, 0}]
      904 SETTABLEKS                       R2 R1 K91 ["SizeRelativeOffset"]
      906 GETIMPORT                        R2 K5 [CFrame.new]
      908 LOADK                            R3 K92 [{0, -1, 0}]
      909 LOADK                            R4 K92 [{0, -1, 0}]
      910 CALL                             R2 2 1
      911 SETTABLEKS                       R2 R1 K3 ["CFrame"]
      913 LOADN                            R2 2
      914 SETTABLEKS                       R2 R1 K54 ["Thickness"]
      916 GETUPVAL                         R2 34
      917 SETTABLEN                        R1 R2 1
      918 GETUPVAL                         R2 34
      919 NAMECALL                         R3 R1 K56 ["Clone"]
      921 CALL                             R3 1 1
      922 SETTABLEN                        R3 R2 2
      923 GETUPVAL                         R3 34
      924 GETTABLEN                        R2 R3 2
      925 GETUPVAL                         R3 9
      926 SETTABLEKS                       R3 R2 K57 ["Parent"]
      928 GETUPVAL                         R2 34
      929 NAMECALL                         R3 R1 K56 ["Clone"]
      931 CALL                             R3 1 1
      932 SETTABLEN                        R3 R2 3
      933 GETUPVAL                         R3 34
      934 GETTABLEN                        R2 R3 3
      935 GETUPVAL                         R3 9
      936 SETTABLEKS                       R3 R2 K57 ["Parent"]
      938 GETUPVAL                         R2 34
      939 NAMECALL                         R3 R1 K56 ["Clone"]
      941 CALL                             R3 1 1
      942 SETTABLEN                        R3 R2 4
      943 GETUPVAL                         R3 34
      944 GETTABLEN                        R2 R3 4
      945 GETUPVAL                         R3 9
      946 SETTABLEKS                       R3 R2 K57 ["Parent"]
      948 LOADB                            R2 1
      949 SETUPVAL                         R2 35
      950 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEN                        R2 R3 1
        3 SETTABLEKS                       R1 R2 K0 ["Visible"]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R0
        7 GETTABLEN                        R2 R3 2
        8 SETTABLEKS                       R1 R2 K0 ["Visible"]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R2 R3 R0
       15 SETTABLEKS                       R1 R2 K0 ["Visible"]
       17 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOT                        R1 ; [+11]
        1 GETIMPORT                        R2 K2 [UDim2.new]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R4 R1 K3 ["X"]
        6 LOADN                            R5 0
        7 GETTABLEKS                       R6 R1 K4 ["Y"]
        9 CALL                             R2 4 1
       10 SETTABLEKS                       R2 R0 K5 ["Position"]
       12 RETURN                           R0 0

PROTO_32:
        0 JUMPIFNOT                        R2 ; [+11]
        1 GETIMPORT                        R3 K2 [UDim2.new]
        3 LOADN                            R4 0
        4 GETTABLEKS                       R5 R2 K3 ["X"]
        6 LOADN                            R6 0
        7 GETTABLEKS                       R7 R2 K4 ["Y"]
        9 CALL                             R3 4 1
       10 SETTABLEKS                       R3 R0 K5 ["Position"]
       12 SETTABLEKS                       R1 R0 K6 ["Visible"]
       14 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 1
        2 SETTABLEKS                       R0 R1 K0 ["Visible"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R1 R2 2
        6 SETTABLEKS                       R0 R1 K0 ["Visible"]
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R1 R2 3
       10 SETTABLEKS                       R0 R1 K0 ["Visible"]
       12 GETUPVAL                         R2 1
       13 GETTABLEN                        R1 R2 1
       14 SETTABLEKS                       R0 R1 K0 ["Visible"]
       16 GETUPVAL                         R2 1
       17 GETTABLEN                        R1 R2 2
       18 SETTABLEKS                       R0 R1 K0 ["Visible"]
       20 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 4
        2 SETTABLEKS                       R0 R1 K0 ["Visible"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R1 R2 5
        6 SETTABLEKS                       R0 R1 K0 ["Visible"]
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R1 R2 6
       10 SETTABLEKS                       R0 R1 K0 ["Visible"]
       12 GETUPVAL                         R2 1
       13 GETTABLEN                        R1 R2 3
       14 SETTABLEKS                       R0 R1 K0 ["Visible"]
       16 GETUPVAL                         R2 1
       17 GETTABLEN                        R1 R2 4
       18 SETTABLEKS                       R0 R1 K0 ["Visible"]
       20 RETURN                           R0 0

PROTO_35:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 SETTABLEKS                       R0 R5 K2 ["Visible"]
        7 FORGLOOP                         R1 2 [inext] ; [-3]
        9 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R1 R2 1
        2 SETTABLEKS                       R0 R1 K0 ["Visible"]
        4 GETUPVAL                         R2 0
        5 GETTABLEN                        R1 R2 2
        6 SETTABLEKS                       R0 R1 K0 ["Visible"]
        8 GETUPVAL                         R2 0
        9 GETTABLEN                        R1 R2 3
       10 SETTABLEKS                       R0 R1 K0 ["Visible"]
       12 GETUPVAL                         R2 0
       13 GETTABLEN                        R1 R2 4
       14 SETTABLEKS                       R0 R1 K0 ["Visible"]
       16 GETUPVAL                         R2 0
       17 GETTABLEN                        R1 R2 5
       18 SETTABLEKS                       R0 R1 K0 ["Visible"]
       20 GETUPVAL                         R2 0
       21 GETTABLEN                        R1 R2 6
       22 SETTABLEKS                       R0 R1 K0 ["Visible"]
       24 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 GETTABLEN                        R2 R3 1
        3 SETTABLEKS                       R1 R2 K0 ["Adornee"]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R0
        7 GETTABLEN                        R2 R3 2
        8 SETTABLEKS                       R1 R2 K0 ["Adornee"]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R0
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R2 R3 R0
       15 SETTABLEKS                       R1 R2 K0 ["Adornee"]
       17 RETURN                           R0 0

PROTO_38:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 SETTABLEKS                       R0 R5 K2 ["Visible"]
        7 FORGLOOP                         R1 2 [inext] ; [-3]
        9 GETUPVAL                         R3 1
       10 GETTABLEN                        R2 R3 14
       11 GETTABLEN                        R1 R2 1
       12 SETTABLEKS                       R0 R1 K2 ["Visible"]
       14 GETUPVAL                         R3 1
       15 GETTABLEN                        R2 R3 14
       16 GETTABLEN                        R1 R2 2
       17 SETTABLEKS                       R0 R1 K2 ["Visible"]
       19 GETUPVAL                         R2 2
       20 GETTABLEN                        R1 R2 14
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETUPVAL                         R2 2
       23 GETTABLEN                        R1 R2 14
       24 SETTABLEKS                       R0 R1 K2 ["Visible"]
       26 LOADN                            R3 1
       27 GETUPVAL                         R4 3
       28 LENGTH                           R1 R4
       29 LOADN                            R2 1
       30 FORNPREP                         R1
       31 GETUPVAL                         R5 3
       32 GETTABLE                         R4 R5 R3
       33 SETTABLEKS                       R0 R4 K2 ["Visible"]
       35 FORNLOOP                         R1
       36 RETURN                           R0 0

PROTO_39:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 3
        4 FORGPREP_INEXT                   R1
        5 SETTABLEKS                       R0 R5 K2 ["Adornee"]
        7 FORGLOOP                         R1 2 [inext] ; [-3]
        9 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 1
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Visible"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 1
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Visible"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 1
       15 SETTABLEKS                       R0 R1 K0 ["Visible"]
       17 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 1
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Adornee"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 1
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 1
       15 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       17 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 2
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Visible"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 2
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Visible"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 2
       15 SETTABLEKS                       R0 R1 K0 ["Visible"]
       17 GETUPVAL                         R3 0
       18 GETTABLEN                        R2 R3 3
       19 GETTABLEN                        R1 R2 1
       20 SETTABLEKS                       R0 R1 K0 ["Visible"]
       22 GETUPVAL                         R3 0
       23 GETTABLEN                        R2 R3 3
       24 GETTABLEN                        R1 R2 2
       25 SETTABLEKS                       R0 R1 K0 ["Visible"]
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R1 R2 3
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R2 1
       31 GETTABLEN                        R1 R2 3
       32 SETTABLEKS                       R0 R1 K0 ["Visible"]
       34 GETUPVAL                         R3 0
       35 GETTABLEN                        R2 R3 4
       36 GETTABLEN                        R1 R2 1
       37 SETTABLEKS                       R0 R1 K0 ["Visible"]
       39 GETUPVAL                         R3 0
       40 GETTABLEN                        R2 R3 4
       41 GETTABLEN                        R1 R2 2
       42 SETTABLEKS                       R0 R1 K0 ["Visible"]
       44 GETUPVAL                         R2 1
       45 GETTABLEN                        R1 R2 4
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R2 1
       48 GETTABLEN                        R1 R2 4
       49 SETTABLEKS                       R0 R1 K0 ["Visible"]
       51 GETUPVAL                         R3 0
       52 GETTABLEN                        R2 R3 5
       53 GETTABLEN                        R1 R2 1
       54 SETTABLEKS                       R0 R1 K0 ["Visible"]
       56 GETUPVAL                         R3 0
       57 GETTABLEN                        R2 R3 5
       58 GETTABLEN                        R1 R2 2
       59 SETTABLEKS                       R0 R1 K0 ["Visible"]
       61 GETUPVAL                         R2 1
       62 GETTABLEN                        R1 R2 5
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R2 1
       65 GETTABLEN                        R1 R2 5
       66 SETTABLEKS                       R0 R1 K0 ["Visible"]
       68 GETUPVAL                         R3 0
       69 GETTABLEN                        R2 R3 6
       70 GETTABLEN                        R1 R2 1
       71 SETTABLEKS                       R0 R1 K0 ["Visible"]
       73 GETUPVAL                         R3 0
       74 GETTABLEN                        R2 R3 6
       75 GETTABLEN                        R1 R2 2
       76 SETTABLEKS                       R0 R1 K0 ["Visible"]
       78 GETUPVAL                         R2 1
       79 GETTABLEN                        R1 R2 6
       80 JUMPIFNOT                        R1 ; [+4]
       81 GETUPVAL                         R2 1
       82 GETTABLEN                        R1 R2 6
       83 SETTABLEKS                       R0 R1 K0 ["Visible"]
       85 GETUPVAL                         R3 0
       86 GETTABLEN                        R2 R3 7
       87 GETTABLEN                        R1 R2 1
       88 SETTABLEKS                       R0 R1 K0 ["Visible"]
       90 GETUPVAL                         R3 0
       91 GETTABLEN                        R2 R3 7
       92 GETTABLEN                        R1 R2 2
       93 SETTABLEKS                       R0 R1 K0 ["Visible"]
       95 GETUPVAL                         R2 1
       96 GETTABLEN                        R1 R2 7
       97 JUMPIFNOT                        R1 ; [+4]
       98 GETUPVAL                         R2 1
       99 GETTABLEN                        R1 R2 7
      100 SETTABLEKS                       R0 R1 K0 ["Visible"]
      102 GETUPVAL                         R3 0
      103 GETTABLEN                        R2 R3 8
      104 GETTABLEN                        R1 R2 1
      105 SETTABLEKS                       R0 R1 K0 ["Visible"]
      107 GETUPVAL                         R3 0
      108 GETTABLEN                        R2 R3 8
      109 GETTABLEN                        R1 R2 2
      110 SETTABLEKS                       R0 R1 K0 ["Visible"]
      112 GETUPVAL                         R2 1
      113 GETTABLEN                        R1 R2 8
      114 JUMPIFNOT                        R1 ; [+4]
      115 GETUPVAL                         R2 1
      116 GETTABLEN                        R1 R2 8
      117 SETTABLEKS                       R0 R1 K0 ["Visible"]
      119 GETUPVAL                         R3 0
      120 GETTABLEN                        R2 R3 9
      121 GETTABLEN                        R1 R2 1
      122 SETTABLEKS                       R0 R1 K0 ["Visible"]
      124 GETUPVAL                         R3 0
      125 GETTABLEN                        R2 R3 9
      126 GETTABLEN                        R1 R2 2
      127 SETTABLEKS                       R0 R1 K0 ["Visible"]
      129 GETUPVAL                         R2 1
      130 GETTABLEN                        R1 R2 9
      131 JUMPIFNOT                        R1 ; [+4]
      132 GETUPVAL                         R2 1
      133 GETTABLEN                        R1 R2 9
      134 SETTABLEKS                       R0 R1 K0 ["Visible"]
      136 GETUPVAL                         R3 0
      137 GETTABLEN                        R2 R3 10
      138 GETTABLEN                        R1 R2 1
      139 SETTABLEKS                       R0 R1 K0 ["Visible"]
      141 GETUPVAL                         R3 0
      142 GETTABLEN                        R2 R3 10
      143 GETTABLEN                        R1 R2 2
      144 SETTABLEKS                       R0 R1 K0 ["Visible"]
      146 GETUPVAL                         R2 1
      147 GETTABLEN                        R1 R2 10
      148 JUMPIFNOT                        R1 ; [+4]
      149 GETUPVAL                         R2 1
      150 GETTABLEN                        R1 R2 10
      151 SETTABLEKS                       R0 R1 K0 ["Visible"]
      153 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 2
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Adornee"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 2
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 2
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 2
       15 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       17 GETUPVAL                         R3 0
       18 GETTABLEN                        R2 R3 3
       19 GETTABLEN                        R1 R2 1
       20 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       22 GETUPVAL                         R3 0
       23 GETTABLEN                        R2 R3 3
       24 GETTABLEN                        R1 R2 2
       25 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R1 R2 3
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R2 1
       31 GETTABLEN                        R1 R2 3
       32 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       34 GETUPVAL                         R3 0
       35 GETTABLEN                        R2 R3 4
       36 GETTABLEN                        R1 R2 1
       37 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       39 GETUPVAL                         R3 0
       40 GETTABLEN                        R2 R3 4
       41 GETTABLEN                        R1 R2 2
       42 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       44 GETUPVAL                         R2 1
       45 GETTABLEN                        R1 R2 4
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R2 1
       48 GETTABLEN                        R1 R2 4
       49 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       51 GETUPVAL                         R3 0
       52 GETTABLEN                        R2 R3 5
       53 GETTABLEN                        R1 R2 1
       54 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       56 GETUPVAL                         R3 0
       57 GETTABLEN                        R2 R3 5
       58 GETTABLEN                        R1 R2 2
       59 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       61 GETUPVAL                         R2 1
       62 GETTABLEN                        R1 R2 5
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R2 1
       65 GETTABLEN                        R1 R2 5
       66 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       68 GETUPVAL                         R3 0
       69 GETTABLEN                        R2 R3 6
       70 GETTABLEN                        R1 R2 1
       71 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       73 GETUPVAL                         R3 0
       74 GETTABLEN                        R2 R3 6
       75 GETTABLEN                        R1 R2 2
       76 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       78 GETUPVAL                         R2 1
       79 GETTABLEN                        R1 R2 6
       80 JUMPIFNOT                        R1 ; [+4]
       81 GETUPVAL                         R2 1
       82 GETTABLEN                        R1 R2 6
       83 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       85 GETUPVAL                         R3 0
       86 GETTABLEN                        R2 R3 7
       87 GETTABLEN                        R1 R2 1
       88 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       90 GETUPVAL                         R3 0
       91 GETTABLEN                        R2 R3 7
       92 GETTABLEN                        R1 R2 2
       93 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       95 GETUPVAL                         R2 1
       96 GETTABLEN                        R1 R2 7
       97 JUMPIFNOT                        R1 ; [+4]
       98 GETUPVAL                         R2 1
       99 GETTABLEN                        R1 R2 7
      100 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      102 GETUPVAL                         R3 0
      103 GETTABLEN                        R2 R3 8
      104 GETTABLEN                        R1 R2 1
      105 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      107 GETUPVAL                         R3 0
      108 GETTABLEN                        R2 R3 8
      109 GETTABLEN                        R1 R2 2
      110 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      112 GETUPVAL                         R2 1
      113 GETTABLEN                        R1 R2 8
      114 JUMPIFNOT                        R1 ; [+4]
      115 GETUPVAL                         R2 1
      116 GETTABLEN                        R1 R2 8
      117 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      119 GETUPVAL                         R3 0
      120 GETTABLEN                        R2 R3 9
      121 GETTABLEN                        R1 R2 1
      122 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      124 GETUPVAL                         R3 0
      125 GETTABLEN                        R2 R3 9
      126 GETTABLEN                        R1 R2 2
      127 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      129 GETUPVAL                         R2 1
      130 GETTABLEN                        R1 R2 9
      131 JUMPIFNOT                        R1 ; [+4]
      132 GETUPVAL                         R2 1
      133 GETTABLEN                        R1 R2 9
      134 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      136 GETUPVAL                         R3 0
      137 GETTABLEN                        R2 R3 10
      138 GETTABLEN                        R1 R2 1
      139 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      141 GETUPVAL                         R3 0
      142 GETTABLEN                        R2 R3 10
      143 GETTABLEN                        R1 R2 2
      144 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      146 GETUPVAL                         R2 1
      147 GETTABLEN                        R1 R2 10
      148 JUMPIFNOT                        R1 ; [+4]
      149 GETUPVAL                         R2 1
      150 GETTABLEN                        R1 R2 10
      151 SETTABLEKS                       R0 R1 K0 ["Adornee"]
      153 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 11
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Visible"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 11
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Visible"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 11
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 11
       15 SETTABLEKS                       R0 R1 K0 ["Visible"]
       17 GETUPVAL                         R3 0
       18 GETTABLEN                        R2 R3 12
       19 GETTABLEN                        R1 R2 1
       20 SETTABLEKS                       R0 R1 K0 ["Visible"]
       22 GETUPVAL                         R3 0
       23 GETTABLEN                        R2 R3 12
       24 GETTABLEN                        R1 R2 2
       25 SETTABLEKS                       R0 R1 K0 ["Visible"]
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R1 R2 12
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R2 1
       31 GETTABLEN                        R1 R2 12
       32 SETTABLEKS                       R0 R1 K0 ["Visible"]
       34 GETUPVAL                         R3 0
       35 GETTABLEN                        R2 R3 13
       36 GETTABLEN                        R1 R2 1
       37 SETTABLEKS                       R0 R1 K0 ["Visible"]
       39 GETUPVAL                         R3 0
       40 GETTABLEN                        R2 R3 13
       41 GETTABLEN                        R1 R2 2
       42 SETTABLEKS                       R0 R1 K0 ["Visible"]
       44 GETUPVAL                         R2 1
       45 GETTABLEN                        R1 R2 13
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R2 1
       48 GETTABLEN                        R1 R2 13
       49 SETTABLEKS                       R0 R1 K0 ["Visible"]
       51 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 11
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Adornee"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 11
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 11
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 11
       15 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       17 GETUPVAL                         R3 0
       18 GETTABLEN                        R2 R3 12
       19 GETTABLEN                        R1 R2 1
       20 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       22 GETUPVAL                         R3 0
       23 GETTABLEN                        R2 R3 12
       24 GETTABLEN                        R1 R2 2
       25 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R1 R2 12
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R2 1
       31 GETTABLEN                        R1 R2 12
       32 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       34 GETUPVAL                         R3 0
       35 GETTABLEN                        R2 R3 13
       36 GETTABLEN                        R1 R2 1
       37 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       39 GETUPVAL                         R3 0
       40 GETTABLEN                        R2 R3 13
       41 GETTABLEN                        R1 R2 2
       42 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       44 GETUPVAL                         R2 1
       45 GETTABLEN                        R1 R2 13
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R2 1
       48 GETTABLEN                        R1 R2 13
       49 SETTABLEKS                       R0 R1 K0 ["Adornee"]
       51 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 1
        4 LENGTH                           R1 R0
        5 LOADN                            R2 0
        6 JUMPIFNOTLT                      R2 R1 ; [+6]
        8 GETUPVAL                         R1 1
        9 MOVE                             R3 R0
       10 NAMECALL                         R1 R1 K1 ["RecycleObjects"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_47:
        0 JUMPIFNOT                        R4 ; [+16]
        1 NEWTABLE                         R5 0 5
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 MOVE                             R8 R2
        6 MOVE                             R9 R3
        7 MOVE                             R10 R4
        8 SETLIST                          R5 R6 5 [1]
       10 GETUPVAL                         R7 0
       11 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       13 MOVE                             R8 R5
       14 GETIMPORT                        R6 K2 [table.insert]
       16 CALL                             R6 2 0
       17 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 GETUPVAL                         R1 1
        3 LOADK                            R3 K0 ["LineHandleAdornment"]
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K1 ["Allocate"]
        8 CALL                             R1 4 1
        9 MOVE                             R4 R0
       10 LOADN                            R2 1
       11 LOADN                            R3 255
       12 FORNPREP                         R2
       13 GETUPVAL                         R6 0
       14 GETTABLE                         R5 R6 R4
       15 GETUPVAL                         R6 0
       16 LOADNIL                          R7
       17 SETTABLE                         R7 R6 R4
       18 FASTCALL1                        TABLE_UNPACK R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K3 [unpack]
       22 CALL                             R6 1 5
       23 GETTABLE                         R11 R1 R4
       24 GETTABLEKS                       R12 R10 K4 ["CFrame"]
       26 MOVE                             R14 R6
       27 NAMECALL                         R12 R12 K5 ["pointToObjectSpace"]
       29 CALL                             R12 2 1
       30 GETTABLEKS                       R13 R10 K4 ["CFrame"]
       32 MOVE                             R15 R7
       33 NAMECALL                         R13 R13 K5 ["pointToObjectSpace"]
       35 CALL                             R13 2 1
       36 SUB                              R14 R13 R12
       37 GETTABLEKS                       R15 R14 K6 ["Magnitude"]
       39 SETTABLEKS                       R15 R11 K7 ["Length"]
       41 GETIMPORT                        R15 K9 [CFrame.new]
       43 MOVE                             R16 R12
       44 MOVE                             R17 R13
       45 CALL                             R15 2 1
       46 SETTABLEKS                       R15 R11 K4 ["CFrame"]
       48 GETUPVAL                         R16 3
       49 GETTABLEKS                       R15 R16 K10 ["smoothstep"]
       51 LOADN                            R16 0
       52 LOADN                            R17 1
       53 GETUPVAL                         R18 4
       54 CALL                             R15 3 1
       55 GETUPVAL                         R17 3
       56 GETTABLEKS                       R16 R17 K11 ["colorAdd"]
       58 GETUPVAL                         R18 3
       59 GETTABLEKS                       R17 R18 K12 ["colorMultiply"]
       61 GETUPVAL                         R18 5
       62 MOVE                             R19 R15
       63 CALL                             R17 2 1
       64 GETUPVAL                         R19 3
       65 GETTABLEKS                       R18 R19 K12 ["colorMultiply"]
       67 GETUPVAL                         R19 6
       68 SUBRK                            R20 R13 K15 ["Transparency"]
       69 CALL                             R18 2 -1
       70 CALL                             R16 -1 1
       71 SETTABLEKS                       R16 R11 K14 ["Color3"]
       73 SETTABLEKS                       R8 R11 K15 ["Transparency"]
       75 MULK                             R18 R9 K16 [1.2]
       76 MUL                              R17 R18 R15
       77 SUBRK                            R19 R13 K15 ["Transparency"]
       78 MUL                              R18 R9 R19
       79 ADD                              R16 R17 R18
       80 SETTABLEKS                       R16 R11 K17 ["Thickness"]
       82 LOADN                            R16 1
       83 SETTABLEKS                       R16 R11 K18 ["ZIndex"]
       85 SETTABLEKS                       R10 R11 K19 ["Adornee"]
       87 FORNLOOP                         R2
       88 RETURN                           R0 0

PROTO_49:
        0 SUB                              R5 R2 R1
        1 GETTABLEKS                       R4 R5 K1 ["magnitude"]
        3 ADDK                             R3 R4 K0 [1]
        4 ADD                              R5 R1 R2
        5 MULK                             R4 R5 K2 [0.5]
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R0
        8 GETTABLEKS                       R9 R2 K3 ["Y"]
       10 GETTABLEKS                       R10 R1 K3 ["Y"]
       12 SUB                              R8 R9 R10
       13 GETTABLEKS                       R10 R2 K4 ["X"]
       15 GETTABLEKS                       R11 R1 K4 ["X"]
       17 SUB                              R9 R10 R11
       18 FASTCALL2                        MATH_ATAN2 R8 R9 ; [+3]
       20 GETIMPORT                        R7 K7 [math.atan2]
       22 CALL                             R7 2 1
       23 FASTCALL1                        MATH_DEG R7 ; [+2]
       24 GETIMPORT                        R6 K9 [math.deg]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K10 ["Rotation"]
       29 GETUPVAL                         R6 0
       30 GETTABLE                         R5 R6 R0
       31 GETIMPORT                        R6 K13 [UDim2.new]
       33 LOADN                            R7 0
       34 MOVE                             R8 R3
       35 LOADN                            R9 0
       36 LOADN                            R10 3
       37 CALL                             R6 4 1
       38 SETTABLEKS                       R6 R5 K14 ["Size"]
       40 GETUPVAL                         R6 0
       41 GETTABLE                         R5 R6 R0
       42 GETIMPORT                        R6 K13 [UDim2.new]
       44 LOADN                            R7 0
       45 GETTABLEKS                       R9 R4 K4 ["X"]
       47 MULK                             R10 R3 K2 [0.5]
       48 SUB                              R8 R9 R10
       49 LOADN                            R9 0
       50 GETTABLEKS                       R10 R4 K3 ["Y"]
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R5 K15 ["Position"]
       55 GETUPVAL                         R6 0
       56 GETTABLE                         R5 R6 R0
       57 LOADB                            R6 1
       58 SETTABLEKS                       R6 R5 K16 ["Visible"]
       60 RETURN                           R0 0

PROTO_50:
        0 GETIMPORT                        R3 K1 [game]
        2 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R2 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R1 K4 ["ViewportSize"]
        8 GETTABLEKS                       R6 R0 K5 ["p"]
       10 MINUS                            R5 R6
       11 GETTABLEKS                       R7 R1 K6 ["CoordinateFrame"]
       13 GETTABLEKS                       R6 R7 K5 ["p"]
       15 ADD                              R4 R5 R6
       16 GETTABLEKS                       R12 R2 K10 ["x"]
       18 MULK                             R11 R12 K7 [0.5]
       19 GETTABLEKS                       R13 R2 K11 ["y"]
       21 MULK                             R12 R13 K7 [0.5]
       22 NAMECALL                         R9 R1 K12 ["ScreenPointToRay"]
       24 CALL                             R9 3 1
       25 GETTABLEKS                       R8 R9 K13 ["Direction"]
       27 MULK                             R7 R8 K9 [60]
       28 MULK                             R6 R7 K8 [10]
       29 MULK                             R5 R6 K7 [0.5]
       30 ADD                              R3 R4 R5
       31 LOADK                            R7 K14 [{-10, 0, -10}]
       32 NAMECALL                         R5 R0 K15 ["pointToWorldSpace"]
       34 CALL                             R5 2 1
       35 ADD                              R4 R5 R3
       36 LOADK                            R8 K16 [{10, 0, -10}]
       37 NAMECALL                         R6 R0 K15 ["pointToWorldSpace"]
       39 CALL                             R6 2 1
       40 ADD                              R5 R6 R3
       41 LOADK                            R9 K17 [{-10, 0, 10}]
       42 NAMECALL                         R7 R0 K15 ["pointToWorldSpace"]
       44 CALL                             R7 2 1
       45 ADD                              R6 R7 R3
       46 LOADK                            R10 K18 [{10, 0, 10}]
       47 NAMECALL                         R8 R0 K15 ["pointToWorldSpace"]
       49 CALL                             R8 2 1
       50 ADD                              R7 R8 R3
       51 MOVE                             R10 R4
       52 NAMECALL                         R8 R1 K19 ["WorldToScreenPoint"]
       54 CALL                             R8 2 1
       55 MOVE                             R11 R5
       56 NAMECALL                         R9 R1 K19 ["WorldToScreenPoint"]
       58 CALL                             R9 2 1
       59 MOVE                             R12 R6
       60 NAMECALL                         R10 R1 K19 ["WorldToScreenPoint"]
       62 CALL                             R10 2 1
       63 MOVE                             R13 R7
       64 NAMECALL                         R11 R1 K19 ["WorldToScreenPoint"]
       66 CALL                             R11 2 1
       67 SUB                              R14 R8 R11
       68 GETTABLEKS                       R13 R14 K20 ["Magnitude"]
       70 SUB                              R15 R9 R10
       71 GETTABLEKS                       R14 R15 K20 ["Magnitude"]
       73 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       75 GETIMPORT                        R12 K23 [math.max]
       77 CALL                             R12 2 1
       78 DIVRK                            R13 R24 K12 ["ScreenPointToRay"]
       79 MULK                             R14 R2 K7 [0.5]
       80 GETTABLEKS                       R16 R14 K10 ["x"]
       82 GETTABLEKS                       R17 R14 K11 ["y"]
       84 LOADN                            R18 0
       85 FASTCALL                         VECTOR ; [+2]
       86 GETIMPORT                        R15 K27 [Vector3.new]
       88 CALL                             R15 3 1
       89 GETIMPORT                        R17 K29 [Vector2.new]
       91 LOADN                            R18 45
       92 LOADN                            R19 45
       93 CALL                             R17 2 1
       94 GETIMPORT                        R18 K29 [Vector2.new]
       96 GETTABLEKS                       R19 R14 K10 ["x"]
       98 GETTABLEKS                       R20 R14 K11 ["y"]
      100 CALL                             R18 2 1
      101 SUB                              R16 R17 R18
      102 SUB                              R18 R8 R15
      103 MUL                              R17 R18 R13
      104 ADD                              R8 R15 R17
      105 SUB                              R18 R9 R15
      106 MUL                              R17 R18 R13
      107 ADD                              R9 R15 R17
      108 SUB                              R18 R10 R15
      109 MUL                              R17 R18 R13
      110 ADD                              R10 R15 R17
      111 SUB                              R18 R11 R15
      112 MUL                              R17 R18 R13
      113 ADD                              R11 R15 R17
      114 GETIMPORT                        R17 K29 [Vector2.new]
      116 GETTABLEKS                       R19 R8 K10 ["x"]
      118 GETTABLEKS                       R20 R16 K30 ["X"]
      120 ADD                              R18 R19 R20
      121 GETTABLEKS                       R20 R8 K11 ["y"]
      123 GETTABLEKS                       R21 R16 K31 ["Y"]
      125 ADD                              R19 R20 R21
      126 CALL                             R17 2 1
      127 GETIMPORT                        R18 K29 [Vector2.new]
      129 GETTABLEKS                       R20 R9 K10 ["x"]
      131 GETTABLEKS                       R21 R16 K30 ["X"]
      133 ADD                              R19 R20 R21
      134 GETTABLEKS                       R21 R9 K11 ["y"]
      136 GETTABLEKS                       R22 R16 K31 ["Y"]
      138 ADD                              R20 R21 R22
      139 CALL                             R18 2 1
      140 GETIMPORT                        R19 K29 [Vector2.new]
      142 GETTABLEKS                       R21 R10 K10 ["x"]
      144 GETTABLEKS                       R22 R16 K30 ["X"]
      146 ADD                              R20 R21 R22
      147 GETTABLEKS                       R22 R10 K11 ["y"]
      149 GETTABLEKS                       R23 R16 K31 ["Y"]
      151 ADD                              R21 R22 R23
      152 CALL                             R19 2 1
      153 GETIMPORT                        R20 K29 [Vector2.new]
      155 GETTABLEKS                       R22 R11 K10 ["x"]
      157 GETTABLEKS                       R23 R16 K30 ["X"]
      159 ADD                              R21 R22 R23
      160 GETTABLEKS                       R23 R11 K11 ["y"]
      162 GETTABLEKS                       R24 R16 K31 ["Y"]
      164 ADD                              R22 R23 R24
      165 CALL                             R20 2 1
      166 MULK                             R23 R17 K33 [2]
      167 DIVK                             R22 R23 K32 [3]
      168 DIVK                             R23 R18 K32 [3]
      169 ADD                              R21 R22 R23
      170 MULK                             R24 R18 K33 [2]
      171 DIVK                             R23 R24 K32 [3]
      172 DIVK                             R24 R17 K32 [3]
      173 ADD                              R22 R23 R24
      174 MULK                             R25 R17 K33 [2]
      175 DIVK                             R24 R25 K32 [3]
      176 DIVK                             R25 R19 K32 [3]
      177 ADD                              R23 R24 R25
      178 MULK                             R26 R19 K33 [2]
      179 DIVK                             R25 R26 K32 [3]
      180 DIVK                             R26 R17 K32 [3]
      181 ADD                              R24 R25 R26
      182 MULK                             R27 R18 K33 [2]
      183 DIVK                             R26 R27 K32 [3]
      184 DIVK                             R27 R20 K32 [3]
      185 ADD                              R25 R26 R27
      186 MULK                             R28 R20 K33 [2]
      187 DIVK                             R27 R28 K32 [3]
      188 DIVK                             R28 R18 K32 [3]
      189 ADD                              R26 R27 R28
      190 MULK                             R29 R19 K33 [2]
      191 DIVK                             R28 R29 K32 [3]
      192 DIVK                             R29 R20 K32 [3]
      193 ADD                              R27 R28 R29
      194 MULK                             R30 R20 K33 [2]
      195 DIVK                             R29 R30 K32 [3]
      196 DIVK                             R30 R19 K32 [3]
      197 ADD                              R28 R29 R30
      198 GETUPVAL                         R29 0
      199 LOADN                            R30 1
      200 MOVE                             R31 R17
      201 MOVE                             R32 R18
      202 CALL                             R29 3 0
      203 GETUPVAL                         R29 0
      204 LOADN                            R30 2
      205 MOVE                             R31 R18
      206 MOVE                             R32 R20
      207 CALL                             R29 3 0
      208 GETUPVAL                         R29 0
      209 LOADN                            R30 3
      210 MOVE                             R31 R20
      211 MOVE                             R32 R19
      212 CALL                             R29 3 0
      213 GETUPVAL                         R29 0
      214 LOADN                            R30 4
      215 MOVE                             R31 R19
      216 MOVE                             R32 R17
      217 CALL                             R29 3 0
      218 GETUPVAL                         R29 0
      219 LOADN                            R30 5
      220 MOVE                             R31 R21
      221 MOVE                             R32 R27
      222 CALL                             R29 3 0
      223 GETUPVAL                         R29 0
      224 LOADN                            R30 6
      225 MOVE                             R31 R22
      226 MOVE                             R32 R28
      227 CALL                             R29 3 0
      228 GETUPVAL                         R29 0
      229 LOADN                            R30 7
      230 MOVE                             R31 R23
      231 MOVE                             R32 R25
      232 CALL                             R29 3 0
      233 GETUPVAL                         R29 0
      234 LOADN                            R30 8
      235 MOVE                             R31 R24
      236 MOVE                             R32 R26
      237 CALL                             R29 3 0
      238 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 2
        2 GETUPVAL                         R4 1
        3 GETTABLEN                        R3 R4 1
        4 GETTABLEKS                       R2 R3 K0 ["Visible"]
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 2
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 1
       11 GETTABLEN                        R3 R4 1
       12 GETTABLEKS                       R2 R3 K1 ["Adornee"]
       14 GETTABLEKS                       R4 R2 K3 ["Size"]
       16 DIVK                             R3 R4 K2 [2]
       17 NEWTABLE                         R4 0 2
       19 NEWTABLE                         R5 0 2
       21 GETUPVAL                         R7 3
       22 GETTABLEKS                       R6 R7 K4 ["getMouseLocation"]
       24 CALL                             R6 0 1
       25 GETTABLEKS                       R9 R2 K5 ["CFrame"]
       27 LOADN                            R12 0
       28 MINUS                            R13 R1
       29 LOADN                            R14 0
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R11 K8 [Vector3.new]
       33 CALL                             R11 3 1
       34 NAMECALL                         R9 R9 K9 ["pointToWorldSpace"]
       36 CALL                             R9 2 1
       37 SUB                              R8 R6 R9
       38 GETTABLEKS                       R7 R8 K10 ["Magnitude"]
       40 GETIMPORT                        R12 K11 [CFrame.new]
       42 GETTABLEKS                       R13 R2 K5 ["CFrame"]
       44 MINUS                            R15 R3
       45 NAMECALL                         R13 R13 K9 ["pointToWorldSpace"]
       47 CALL                             R13 2 -1
       48 CALL                             R12 -1 -1
       49 NAMECALL                         R10 R0 K12 ["toObjectSpace"]
       51 CALL                             R10 -1 1
       52 GETTABLEKS                       R9 R10 K13 ["p"]
       54 LOADK                            R10 K14 [{1, 0, 1}]
       55 MUL                              R8 R9 R10
       56 GETIMPORT                        R13 K11 [CFrame.new]
       58 GETTABLEKS                       R14 R2 K5 ["CFrame"]
       60 MOVE                             R16 R3
       61 NAMECALL                         R14 R14 K9 ["pointToWorldSpace"]
       63 CALL                             R14 2 -1
       64 CALL                             R13 -1 -1
       65 NAMECALL                         R11 R0 K12 ["toObjectSpace"]
       67 CALL                             R11 -1 1
       68 GETTABLEKS                       R10 R11 K13 ["p"]
       70 LOADK                            R11 K14 [{1, 0, 1}]
       71 MUL                              R9 R10 R11
       72 GETTABLEKS                       R12 R8 K15 ["x"]
       74 GETTABLEKS                       R13 R9 K15 ["x"]
       76 FASTCALL2                        MATH_MIN R12 R13 ; [+3]
       78 GETIMPORT                        R11 K18 [math.min]
       80 CALL                             R11 2 1
       81 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       82 GETIMPORT                        R10 K20 [math.floor]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R13 R8 K15 ["x"]
       87 GETTABLEKS                       R14 R9 K15 ["x"]
       89 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       91 GETIMPORT                        R12 K22 [math.max]
       93 CALL                             R12 2 1
       94 FASTCALL1                        MATH_CEIL R12 ; [+2]
       95 GETIMPORT                        R11 K24 [math.ceil]
       97 CALL                             R11 1 1
       98 GETTABLEKS                       R14 R8 K25 ["z"]
      100 GETTABLEKS                       R15 R9 K25 ["z"]
      102 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      104 GETIMPORT                        R13 K18 [math.min]
      106 CALL                             R13 2 1
      107 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      108 GETIMPORT                        R12 K20 [math.floor]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R15 R8 K25 ["z"]
      113 GETTABLEKS                       R16 R9 K25 ["z"]
      115 FASTCALL2                        MATH_MAX R15 R16 ; [+3]
      117 GETIMPORT                        R14 K22 [math.max]
      119 CALL                             R14 2 1
      120 FASTCALL1                        MATH_CEIL R14 ; [+2]
      121 GETIMPORT                        R13 K24 [math.ceil]
      123 CALL                             R13 1 1
      124 LOADN                            R14 0
      125 SETTABLEN                        R14 R4 1
      126 LOADN                            R14 0
      127 SETTABLEN                        R14 R5 1
      128 LOADK                            R17 K27 [-0.02]
      129 MUL                              R16 R17 R7
      130 ADDK                             R15 R16 K26 [1]
      131 ADDK                             R14 R15 K26 [1]
      132 LOADK                            R18 K29 [-0.00666666666666667]
      133 MUL                              R17 R18 R7
      134 ADDK                             R16 R17 K28 [1.66666666666667]
      135 ADDK                             R15 R16 K26 [1]
      136 FASTCALL2K                       MATH_MIN R14 K30 ; [+5]
      138 MOVE                             R18 R14
      139 LOADK                            R19 K30 [0.9]
      140 GETIMPORT                        R17 K18 [math.min]
      142 CALL                             R17 2 1
      143 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
      145 LOADK                            R18 K31 [0]
      146 GETIMPORT                        R16 K22 [math.max]
      148 CALL                             R16 2 1
      149 MOVE                             R14 R16
      150 FASTCALL2K                       MATH_MIN R15 K26 ; [+5]
      152 MOVE                             R18 R15
      153 LOADK                            R19 K26 [1]
      154 GETIMPORT                        R17 K18 [math.min]
      156 CALL                             R17 2 1
      157 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
      159 LOADK                            R18 K31 [0]
      160 GETIMPORT                        R16 K22 [math.max]
      162 CALL                             R16 2 1
      163 MOVE                             R15 R16
      164 GETUPVAL                         R16 2
      165 JUMPIFNOT                        R16 ; [+31]
      166 GETUPVAL                         R16 4
      167 NAMECALL                         R16 R16 K32 ["GetChildren"]
      169 CALL                             R16 1 1
      170 LENGTH                           R17 R16
      171 LOADN                            R18 0
      172 JUMPIFNOTLT                      R18 R17 ; [+6]
      174 GETUPVAL                         R17 5
      175 MOVE                             R19 R16
      176 NAMECALL                         R17 R17 K33 ["RecycleObjects"]
      178 CALL                             R17 2 0
      179 GETIMPORT                        R16 K35 [ipairs]
      181 GETUPVAL                         R17 1
      182 CALL                             R16 1 3
      183 FORGPREP_INEXT                   R16
      184 LOADB                            R21 0
      185 SETTABLEKS                       R21 R20 K0 ["Visible"]
      187 FORGLOOP                         R16 2 [inext] ; [-4]
      189 GETUPVAL                         R16 6
      190 JUMPIFNOT                        R16 ; [+495]
      191 GETUPVAL                         R16 7
      192 GETUPVAL                         R17 6
      193 GETUPVAL                         R18 8
      194 GETUPVAL                         R19 9
      195 CALL                             R16 3 0
      196 JUMP                             ; [+489]
      197 GETUPVAL                         R17 1
      198 GETTABLEN                        R16 R17 1
      199 LOADK                            R17 K36 [{1, -1, 1}]
      200 SETTABLEKS                       R17 R16 K37 ["SizeRelativeOffset"]
      202 GETUPVAL                         R17 1
      203 GETTABLEN                        R16 R17 1
      204 GETIMPORT                        R17 K11 [CFrame.new]
      206 LOADK                            R18 K38 [{0, 0, 0}]
      207 LOADK                            R19 K39 [{-1, 0, 0}]
      208 CALL                             R17 2 1
      209 SETTABLEKS                       R17 R16 K5 ["CFrame"]
      211 GETUPVAL                         R17 1
      212 GETTABLEN                        R16 R17 1
      213 GETUPVAL                         R21 1
      214 GETTABLEN                        R20 R21 1
      215 GETTABLEKS                       R19 R20 K1 ["Adornee"]
      217 GETTABLEKS                       R18 R19 K3 ["Size"]
      219 GETTABLEKS                       R17 R18 K40 ["X"]
      221 SETTABLEKS                       R17 R16 K41 ["Length"]
      223 GETUPVAL                         R17 1
      224 GETTABLEN                        R16 R17 2
      225 LOADK                            R17 K42 [{1, -1, -1}]
      226 SETTABLEKS                       R17 R16 K37 ["SizeRelativeOffset"]
      228 GETUPVAL                         R17 1
      229 GETTABLEN                        R16 R17 2
      230 GETIMPORT                        R17 K11 [CFrame.new]
      232 LOADK                            R18 K38 [{0, 0, 0}]
      233 LOADK                            R19 K43 [{0, 0, 1}]
      234 CALL                             R17 2 1
      235 SETTABLEKS                       R17 R16 K5 ["CFrame"]
      237 GETUPVAL                         R17 1
      238 GETTABLEN                        R16 R17 2
      239 GETUPVAL                         R21 1
      240 GETTABLEN                        R20 R21 1
      241 GETTABLEKS                       R19 R20 K1 ["Adornee"]
      243 GETTABLEKS                       R18 R19 K3 ["Size"]
      245 GETTABLEKS                       R17 R18 K44 ["Z"]
      247 SETTABLEKS                       R17 R16 K41 ["Length"]
      249 GETUPVAL                         R17 1
      250 GETTABLEN                        R16 R17 3
      251 LOADK                            R17 K45 [{-1, -1, 1}]
      252 SETTABLEKS                       R17 R16 K37 ["SizeRelativeOffset"]
      254 GETUPVAL                         R17 1
      255 GETTABLEN                        R16 R17 3
      256 GETIMPORT                        R17 K11 [CFrame.new]
      258 LOADK                            R18 K38 [{0, 0, 0}]
      259 LOADK                            R19 K46 [{0, 0, -1}]
      260 CALL                             R17 2 1
      261 SETTABLEKS                       R17 R16 K5 ["CFrame"]
      263 GETUPVAL                         R17 1
      264 GETTABLEN                        R16 R17 3
      265 GETUPVAL                         R21 1
      266 GETTABLEN                        R20 R21 1
      267 GETTABLEKS                       R19 R20 K1 ["Adornee"]
      269 GETTABLEKS                       R18 R19 K3 ["Size"]
      271 GETTABLEKS                       R17 R18 K44 ["Z"]
      273 SETTABLEKS                       R17 R16 K41 ["Length"]
      275 GETUPVAL                         R17 1
      276 GETTABLEN                        R16 R17 4
      277 LOADK                            R17 K47 [{-1, -1, -1}]
      278 SETTABLEKS                       R17 R16 K37 ["SizeRelativeOffset"]
      280 GETUPVAL                         R17 1
      281 GETTABLEN                        R16 R17 4
      282 GETIMPORT                        R17 K11 [CFrame.new]
      284 LOADK                            R18 K38 [{0, 0, 0}]
      285 LOADK                            R19 K48 [{1, 0, 0}]
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R16 K5 ["CFrame"]
      289 GETUPVAL                         R17 1
      290 GETTABLEN                        R16 R17 4
      291 GETUPVAL                         R21 1
      292 GETTABLEN                        R20 R21 1
      293 GETTABLEKS                       R19 R20 K1 ["Adornee"]
      295 GETTABLEKS                       R18 R19 K3 ["Size"]
      297 GETTABLEKS                       R17 R18 K40 ["X"]
      299 SETTABLEKS                       R17 R16 K41 ["Length"]
      301 SUBK                             R18 R12 K49 [4]
      302 ADDK                             R16 R13 K49 [4]
      303 LOADN                            R17 1
      304 FORNPREP                         R16
      305 LOADN                            R19 0
      306 SUBK                             R20 R10 K49 [4]
      307 SETTABLE                         R20 R4 R19
      308 SETTABLEN                        R18 R4 2
      309 LOADN                            R19 0
      310 ADDK                             R20 R11 K49 [4]
      311 SETTABLE                         R20 R5 R19
      312 SETTABLEN                        R18 R5 2
      313 MODK                             R20 R18 K49 [4]
      314 JUMPIFEQKN                       R20 K31 [0] ; [+2]
      316 LOADB                            R19 0 +1
      317 LOADB                            R19 1
      318 LOADB                            R20 1
      319 MODK                             R21 R18 K50 [16]
      320 JUMPIFEQKN                       R21 K31 [0] ; [+10]
      322 LOADB                            R20 1
      323 SUBK                             R21 R12 K49 [4]
      324 JUMPIFEQ                         R18 R21 ; [+6]
      326 ADDK                             R21 R13 K49 [4]
      327 JUMPIFEQ                         R18 R21 ; [+2]
      329 LOADB                            R20 0 +1
      330 LOADB                            R20 1
      331 JUMPIFNOT                        R20 ; [+2]
      332 LOADN                            R22 1
      333 JUMP                             ; [+4]
      334 JUMPIFNOT                        R19 ; [+2]
      335 MOVE                             R22 R15
      336 JUMPIF                           R22 ; [+1]
      337 MOVE                             R22 R14
      338 SUBRK                            R21 R26 K22 [math.max]
      339 LOADN                            R23 0
      340 GETTABLE                         R22 R4 R23
      341 LOADN                            R24 0
      342 GETTABLE                         R23 R5 R24
      343 JUMPIFNOTLE                      R22 R23 ; [+55]
      345 GETTABLEN                        R22 R4 1
      346 GETTABLEN                        R23 R5 1
      347 JUMPIFNOTLE                      R22 R23 ; [+51]
      349 GETTABLEN                        R22 R4 2
      350 GETTABLEN                        R23 R5 2
      351 JUMPIFNOTLE                      R22 R23 ; [+47]
      353 LOADN                            R22 1
      354 JUMPIFNOTLT                      R21 R22 ; [+44]
      356 LOADN                            R26 0
      357 GETTABLE                         R25 R4 R26
      358 GETTABLEN                        R26 R4 1
      359 GETTABLEN                        R27 R4 2
      360 FASTCALL                         VECTOR ; [+2]
      361 GETIMPORT                        R24 K8 [Vector3.new]
      363 CALL                             R24 3 1
      364 NAMECALL                         R22 R0 K9 ["pointToWorldSpace"]
      366 CALL                             R22 2 1
      367 LOADN                            R27 0
      368 GETTABLE                         R26 R5 R27
      369 GETTABLEN                        R27 R5 1
      370 GETTABLEN                        R28 R5 2
      371 FASTCALL                         VECTOR ; [+2]
      372 GETIMPORT                        R25 K8 [Vector3.new]
      374 CALL                             R25 3 1
      375 NAMECALL                         R23 R0 K9 ["pointToWorldSpace"]
      377 CALL                             R23 2 1
      378 JUMPIFNOT                        R19 ; [+2]
      379 LOADK                            R24 K51 [1.8]
      380 JUMP                             ; [+1]
      381 LOADK                            R24 K52 [1.5]
      382 JUMPIFNOT                        R2 ; [+16]
      383 NEWTABLE                         R25 0 5
      385 MOVE                             R26 R22
      386 MOVE                             R27 R23
      387 MOVE                             R28 R21
      388 MOVE                             R29 R24
      389 MOVE                             R30 R2
      390 SETLIST                          R25 R26 5 [1]
      392 GETUPVAL                         R27 10
      393 FASTCALL2                        TABLE_INSERT R27 R25 ; [+4]
      395 MOVE                             R28 R25
      396 GETIMPORT                        R26 K55 [table.insert]
      398 CALL                             R26 2 0
      399 FORNLOOP                         R16
      400 SUBK                             R18 R10 K49 [4]
      401 ADDK                             R16 R11 K49 [4]
      402 LOADN                            R17 1
      403 FORNPREP                         R16
      404 LOADN                            R19 0
      405 SETTABLE                         R18 R4 R19
      406 SUBK                             R19 R12 K49 [4]
      407 SETTABLEN                        R19 R4 2
      408 LOADN                            R19 0
      409 SETTABLE                         R18 R5 R19
      410 ADDK                             R19 R13 K49 [4]
      411 SETTABLEN                        R19 R5 2
      412 MODK                             R20 R18 K49 [4]
      413 JUMPIFEQKN                       R20 K31 [0] ; [+2]
      415 LOADB                            R19 0 +1
      416 LOADB                            R19 1
      417 LOADB                            R20 1
      418 MODK                             R21 R18 K50 [16]
      419 JUMPIFEQKN                       R21 K31 [0] ; [+10]
      421 LOADB                            R20 1
      422 SUBK                             R21 R10 K49 [4]
      423 JUMPIFEQ                         R18 R21 ; [+6]
      425 ADDK                             R21 R11 K49 [4]
      426 JUMPIFEQ                         R18 R21 ; [+2]
      428 LOADB                            R20 0 +1
      429 LOADB                            R20 1
      430 JUMPIFNOT                        R20 ; [+2]
      431 LOADN                            R22 1
      432 JUMP                             ; [+4]
      433 JUMPIFNOT                        R19 ; [+2]
      434 MOVE                             R22 R15
      435 JUMPIF                           R22 ; [+1]
      436 MOVE                             R22 R14
      437 SUBRK                            R21 R26 K22 [math.max]
      438 LOADN                            R23 0
      439 GETTABLE                         R22 R4 R23
      440 LOADN                            R24 0
      441 GETTABLE                         R23 R5 R24
      442 JUMPIFNOTLE                      R22 R23 ; [+55]
      444 GETTABLEN                        R22 R4 1
      445 GETTABLEN                        R23 R5 1
      446 JUMPIFNOTLE                      R22 R23 ; [+51]
      448 GETTABLEN                        R22 R4 2
      449 GETTABLEN                        R23 R5 2
      450 JUMPIFNOTLE                      R22 R23 ; [+47]
      452 LOADN                            R22 1
      453 JUMPIFNOTLT                      R21 R22 ; [+44]
      455 LOADN                            R26 0
      456 GETTABLE                         R25 R4 R26
      457 GETTABLEN                        R26 R4 1
      458 GETTABLEN                        R27 R4 2
      459 FASTCALL                         VECTOR ; [+2]
      460 GETIMPORT                        R24 K8 [Vector3.new]
      462 CALL                             R24 3 1
      463 NAMECALL                         R22 R0 K9 ["pointToWorldSpace"]
      465 CALL                             R22 2 1
      466 LOADN                            R27 0
      467 GETTABLE                         R26 R5 R27
      468 GETTABLEN                        R27 R5 1
      469 GETTABLEN                        R28 R5 2
      470 FASTCALL                         VECTOR ; [+2]
      471 GETIMPORT                        R25 K8 [Vector3.new]
      473 CALL                             R25 3 1
      474 NAMECALL                         R23 R0 K9 ["pointToWorldSpace"]
      476 CALL                             R23 2 1
      477 JUMPIFNOT                        R19 ; [+2]
      478 LOADK                            R24 K51 [1.8]
      479 JUMP                             ; [+1]
      480 LOADK                            R24 K52 [1.5]
      481 JUMPIFNOT                        R2 ; [+16]
      482 NEWTABLE                         R25 0 5
      484 MOVE                             R26 R22
      485 MOVE                             R27 R23
      486 MOVE                             R28 R21
      487 MOVE                             R29 R24
      488 MOVE                             R30 R2
      489 SETLIST                          R25 R26 5 [1]
      491 GETUPVAL                         R27 10
      492 FASTCALL2                        TABLE_INSERT R27 R25 ; [+4]
      494 MOVE                             R28 R25
      495 GETIMPORT                        R26 K55 [table.insert]
      497 CALL                             R26 2 0
      498 FORNLOOP                         R16
      499 GETTABLEKS                       R21 R2 K5 ["CFrame"]
      501 LOADK                            R24 K56 [{-1, 0, -1}]
      502 MUL                              R23 R3 R24
      503 NAMECALL                         R21 R21 K9 ["pointToWorldSpace"]
      505 CALL                             R21 2 -1
      506 NAMECALL                         R19 R0 K57 ["pointToObjectSpace"]
      508 CALL                             R19 -1 1
      509 LOADK                            R20 K14 [{1, 0, 1}]
      510 MUL                              R18 R19 R20
      511 NAMECALL                         R16 R0 K9 ["pointToWorldSpace"]
      513 CALL                             R16 2 1
      514 GETTABLEKS                       R22 R2 K5 ["CFrame"]
      516 LOADK                            R25 K58 [{-1, 0, 1}]
      517 MUL                              R24 R3 R25
      518 NAMECALL                         R22 R22 K9 ["pointToWorldSpace"]
      520 CALL                             R22 2 -1
      521 NAMECALL                         R20 R0 K57 ["pointToObjectSpace"]
      523 CALL                             R20 -1 1
      524 LOADK                            R21 K14 [{1, 0, 1}]
      525 MUL                              R19 R20 R21
      526 NAMECALL                         R17 R0 K9 ["pointToWorldSpace"]
      528 CALL                             R17 2 1
      529 GETTABLEKS                       R23 R2 K5 ["CFrame"]
      531 LOADK                            R26 K59 [{1, 0, -1}]
      532 MUL                              R25 R3 R26
      533 NAMECALL                         R23 R23 K9 ["pointToWorldSpace"]
      535 CALL                             R23 2 -1
      536 NAMECALL                         R21 R0 K57 ["pointToObjectSpace"]
      538 CALL                             R21 -1 1
      539 LOADK                            R22 K14 [{1, 0, 1}]
      540 MUL                              R20 R21 R22
      541 NAMECALL                         R18 R0 K9 ["pointToWorldSpace"]
      543 CALL                             R18 2 1
      544 GETTABLEKS                       R24 R2 K5 ["CFrame"]
      546 LOADK                            R27 K14 [{1, 0, 1}]
      547 MUL                              R26 R3 R27
      548 NAMECALL                         R24 R24 K9 ["pointToWorldSpace"]
      550 CALL                             R24 2 -1
      551 NAMECALL                         R22 R0 K57 ["pointToObjectSpace"]
      553 CALL                             R22 -1 1
      554 LOADK                            R23 K14 [{1, 0, 1}]
      555 MUL                              R21 R22 R23
      556 NAMECALL                         R19 R0 K9 ["pointToWorldSpace"]
      558 CALL                             R19 2 1
      559 JUMPIFNOT                        R2 ; [+16]
      560 NEWTABLE                         R20 0 5
      562 MOVE                             R21 R16
      563 MOVE                             R22 R17
      564 LOADN                            R23 0
      565 LOADN                            R24 2
      566 MOVE                             R25 R2
      567 SETLIST                          R20 R21 5 [1]
      569 GETUPVAL                         R22 10
      570 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      572 MOVE                             R23 R20
      573 GETIMPORT                        R21 K55 [table.insert]
      575 CALL                             R21 2 0
      576 JUMPIFNOT                        R2 ; [+16]
      577 NEWTABLE                         R20 0 5
      579 MOVE                             R21 R18
      580 MOVE                             R22 R19
      581 LOADN                            R23 0
      582 LOADN                            R24 2
      583 MOVE                             R25 R2
      584 SETLIST                          R20 R21 5 [1]
      586 GETUPVAL                         R22 10
      587 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      589 MOVE                             R23 R20
      590 GETIMPORT                        R21 K55 [table.insert]
      592 CALL                             R21 2 0
      593 JUMPIFNOT                        R2 ; [+16]
      594 NEWTABLE                         R20 0 5
      596 MOVE                             R21 R16
      597 MOVE                             R22 R18
      598 LOADN                            R23 0
      599 LOADN                            R24 2
      600 MOVE                             R25 R2
      601 SETLIST                          R20 R21 5 [1]
      603 GETUPVAL                         R22 10
      604 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      606 MOVE                             R23 R20
      607 GETIMPORT                        R21 K55 [table.insert]
      609 CALL                             R21 2 0
      610 JUMPIFNOT                        R2 ; [+16]
      611 NEWTABLE                         R20 0 5
      613 MOVE                             R21 R17
      614 MOVE                             R22 R19
      615 LOADN                            R23 0
      616 LOADN                            R24 2
      617 MOVE                             R25 R2
      618 SETLIST                          R20 R21 5 [1]
      620 GETUPVAL                         R22 10
      621 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      623 MOVE                             R23 R20
      624 GETIMPORT                        R21 K55 [table.insert]
      626 CALL                             R21 2 0
      627 GETUPVAL                         R21 5
      628 LOADK                            R23 K60 ["BoxHandleAdornment"]
      629 LOADN                            R24 1
      630 GETUPVAL                         R25 4
      631 NAMECALL                         R21 R21 K61 ["Allocate"]
      633 CALL                             R21 4 1
      634 GETTABLEN                        R20 R21 1
      635 MOVE                             R24 R6
      636 NAMECALL                         R22 R0 K57 ["pointToObjectSpace"]
      638 CALL                             R22 2 1
      639 GETTABLEKS                       R21 R22 K62 ["y"]
      641 GETTABLEKS                       R24 R2 K3 ["Size"]
      643 LOADK                            R25 K14 [{1, 0, 1}]
      644 MUL                              R23 R24 R25
      645 LOADN                            R25 0
      646 DIVK                             R27 R21 K64 [20]
      647 MULK                             R26 R27 K63 [0.005]
      648 LOADN                            R27 0
      649 FASTCALL                         VECTOR ; [+2]
      650 GETIMPORT                        R24 K8 [Vector3.new]
      652 CALL                             R24 3 1
      653 ADD                              R22 R23 R24
      654 SETTABLEKS                       R22 R20 K3 ["Size"]
      656 GETTABLEKS                       R24 R2 K5 ["CFrame"]
      658 NAMECALL                         R22 R0 K12 ["toObjectSpace"]
      660 CALL                             R22 2 1
      661 GETTABLEKS                       R23 R2 K5 ["CFrame"]
      663 GETTABLEKS                       R29 R22 K13 ["p"]
      665 LOADK                            R30 K65 [{0, 1, 0}]
      666 MUL                              R28 R29 R30
      667 SUB                              R27 R22 R28
      668 NAMECALL                         R25 R0 K66 ["toWorldSpace"]
      670 CALL                             R25 2 -1
      671 NAMECALL                         R23 R23 K12 ["toObjectSpace"]
      673 CALL                             R23 -1 1
      674 SETTABLEKS                       R23 R20 K5 ["CFrame"]
      676 GETUPVAL                         R23 11
      677 SETTABLEKS                       R23 R20 K67 ["Color3"]
      679 LOADK                            R23 K68 [0.5]
      680 SETTABLEKS                       R23 R20 K69 ["Transparency"]
      682 SETTABLEKS                       R2 R20 K1 ["Adornee"]
      684 GETUPVAL                         R23 12
      685 CALL                             R23 0 0
      686 GETUPVAL                         R16 13
      687 GETTABLEKS                       R17 R2 K5 ["CFrame"]
      689 CALL                             R16 1 0
      690 RETURN                           R0 0

PROTO_52:
        0 JUMPIFNOT                        R0 ; [+40]
        1 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        3 JUMPIFNOT                        R1 ; [+37]
        4 GETTABLEKS                       R1 R0 K0 ["Adornee"]
        6 LOADK                            R4 K1 ["Model"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+11]
       11 LOADK                            R4 K3 ["Workspace"]
       12 NAMECALL                         R2 R1 K2 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+6]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K4 ["convertToPart"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 1
       21 MOVE                             R1 R2
       22 GETTABLEKS                       R2 R1 K5 ["CFrame"]
       24 GETTABLEKS                       R4 R0 K5 ["CFrame"]
       26 MUL                              R3 R2 R4
       27 GETTABLEKS                       R9 R0 K7 ["SizeRelativeOffset"]
       29 GETTABLEKS                       R10 R1 K8 ["Size"]
       31 MUL                              R8 R9 R10
       32 MULK                             R7 R8 K6 [0.5]
       33 NAMECALL                         R5 R2 K9 ["pointToWorldSpace"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R6 R2 K10 ["p"]
       38 SUB                              R4 R5 R6
       39 ADD                              R5 R3 R4
       40 RETURN                           R5 1
       41 GETIMPORT                        R1 K12 [CFrame.new]
       43 CALL                             R1 0 -1
       44 RETURN                           R1 -1

PROTO_53:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R1 1
        6 GETTABLEN                        R0 R1 11
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R0 R1 K0 ["getButtonState"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["Enum"]
       15 GETTABLEKS                       R2 R3 K2 ["Key"]
       17 GETTABLEKS                       R1 R2 K3 ["MOUSE_BUTTON1"]
       19 CALL                             R0 1 1
       20 GETIMPORT                        R1 K5 [game]
       22 LOADK                            R3 K6 ["Selection"]
       23 NAMECALL                         R1 R1 K7 ["GetService"]
       25 CALL                             R1 2 1
       26 NAMECALL                         R1 R1 K8 ["Get"]
       28 CALL                             R1 1 1
       29 LENGTH                           R2 R1
       30 LOADN                            R3 0
       31 JUMPIFNOTLE                      R2 R3 ; [+139]
       33 GETUPVAL                         R4 1
       34 GETTABLEN                        R3 R4 1
       35 GETTABLEN                        R2 R3 1
       36 LOADB                            R3 0
       37 SETTABLEKS                       R3 R2 K9 ["Visible"]
       39 GETUPVAL                         R4 1
       40 GETTABLEN                        R3 R4 1
       41 GETTABLEN                        R2 R3 2
       42 LOADB                            R3 0
       43 SETTABLEKS                       R3 R2 K9 ["Visible"]
       45 GETUPVAL                         R3 3
       46 GETTABLEN                        R2 R3 1
       47 JUMPIFNOT                        R2 ; [+5]
       48 GETUPVAL                         R3 3
       49 GETTABLEN                        R2 R3 1
       50 LOADB                            R3 0
       51 SETTABLEKS                       R3 R2 K9 ["Visible"]
       53 GETIMPORT                        R2 K11 [ipairs]
       55 GETUPVAL                         R3 4
       56 CALL                             R2 1 3
       57 FORGPREP_INEXT                   R2
       58 LOADB                            R7 0
       59 SETTABLEKS                       R7 R6 K9 ["Visible"]
       61 FORGLOOP                         R2 2 [inext] ; [-4]
       63 GETUPVAL                         R4 1
       64 GETTABLEN                        R3 R4 14
       65 GETTABLEN                        R2 R3 1
       66 LOADB                            R3 0
       67 SETTABLEKS                       R3 R2 K9 ["Visible"]
       69 GETUPVAL                         R4 1
       70 GETTABLEN                        R3 R4 14
       71 GETTABLEN                        R2 R3 2
       72 LOADB                            R3 0
       73 SETTABLEKS                       R3 R2 K9 ["Visible"]
       75 GETUPVAL                         R3 3
       76 GETTABLEN                        R2 R3 14
       77 JUMPIFNOT                        R2 ; [+5]
       78 GETUPVAL                         R3 3
       79 GETTABLEN                        R2 R3 14
       80 LOADB                            R3 0
       81 SETTABLEKS                       R3 R2 K9 ["Visible"]
       83 LOADN                            R4 1
       84 GETUPVAL                         R5 5
       85 LENGTH                           R2 R5
       86 LOADN                            R3 1
       87 FORNPREP                         R2
       88 GETUPVAL                         R6 5
       89 GETTABLE                         R5 R6 R4
       90 LOADB                            R6 0
       91 SETTABLEKS                       R6 R5 K9 ["Visible"]
       93 FORNLOOP                         R2
       94 GETUPVAL                         R4 1
       95 GETTABLEN                        R3 R4 11
       96 GETTABLEN                        R2 R3 1
       97 LOADB                            R3 0
       98 SETTABLEKS                       R3 R2 K9 ["Visible"]
      100 GETUPVAL                         R4 1
      101 GETTABLEN                        R3 R4 11
      102 GETTABLEN                        R2 R3 2
      103 LOADB                            R3 0
      104 SETTABLEKS                       R3 R2 K9 ["Visible"]
      106 GETUPVAL                         R3 3
      107 GETTABLEN                        R2 R3 11
      108 JUMPIFNOT                        R2 ; [+5]
      109 GETUPVAL                         R3 3
      110 GETTABLEN                        R2 R3 11
      111 LOADB                            R3 0
      112 SETTABLEKS                       R3 R2 K9 ["Visible"]
      114 GETUPVAL                         R4 1
      115 GETTABLEN                        R3 R4 12
      116 GETTABLEN                        R2 R3 1
      117 LOADB                            R3 0
      118 SETTABLEKS                       R3 R2 K9 ["Visible"]
      120 GETUPVAL                         R4 1
      121 GETTABLEN                        R3 R4 12
      122 GETTABLEN                        R2 R3 2
      123 LOADB                            R3 0
      124 SETTABLEKS                       R3 R2 K9 ["Visible"]
      126 GETUPVAL                         R3 3
      127 GETTABLEN                        R2 R3 12
      128 JUMPIFNOT                        R2 ; [+5]
      129 GETUPVAL                         R3 3
      130 GETTABLEN                        R2 R3 12
      131 LOADB                            R3 0
      132 SETTABLEKS                       R3 R2 K9 ["Visible"]
      134 GETUPVAL                         R4 1
      135 GETTABLEN                        R3 R4 13
      136 GETTABLEN                        R2 R3 1
      137 LOADB                            R3 0
      138 SETTABLEKS                       R3 R2 K9 ["Visible"]
      140 GETUPVAL                         R4 1
      141 GETTABLEN                        R3 R4 13
      142 GETTABLEN                        R2 R3 2
      143 LOADB                            R3 0
      144 SETTABLEKS                       R3 R2 K9 ["Visible"]
      146 GETUPVAL                         R3 3
      147 GETTABLEN                        R2 R3 13
      148 JUMPIFNOT                        R2 ; [+5]
      149 GETUPVAL                         R3 3
      150 GETTABLEN                        R2 R3 13
      151 LOADB                            R3 0
      152 SETTABLEKS                       R3 R2 K9 ["Visible"]
      154 GETUPVAL                         R2 6
      155 LOADB                            R3 0
      156 CALL                             R2 1 0
      157 GETUPVAL                         R2 7
      158 NAMECALL                         R2 R2 K12 ["GetChildren"]
      160 CALL                             R2 1 1
      161 LENGTH                           R3 R2
      162 LOADN                            R4 0
      163 JUMPIFNOTLT                      R4 R3 ; [+6]
      165 GETUPVAL                         R3 8
      166 MOVE                             R5 R2
      167 NAMECALL                         R3 R3 K13 ["RecycleObjects"]
      169 CALL                             R3 2 0
      170 RETURN                           R0 0
      171 GETUPVAL                         R5 1
      172 GETTABLEN                        R4 R5 11
      173 GETTABLEN                        R3 R4 1
      174 GETTABLEKS                       R2 R3 K14 ["Adornee"]
      176 JUMPIF                           R2 ; [+1]
      177 RETURN                           R0 0
      178 LOADB                            R2 0
      179 GETIMPORT                        R3 K11 [ipairs]
      181 MOVE                             R4 R1
      182 CALL                             R3 1 3
      183 FORGPREP_INEXT                   R3
      184 LOADK                            R10 K15 ["PVInstance"]
      185 NAMECALL                         R8 R7 K16 ["IsA"]
      187 CALL                             R8 2 1
      188 JUMPIFNOT                        R8 ; [+12]
      189 LOADK                            R10 K17 ["Workspace"]
      190 NAMECALL                         R8 R7 K16 ["IsA"]
      192 CALL                             R8 2 1
      193 JUMPIF                           R8 ; [+7]
      194 LOADK                            R10 K18 ["Terrain"]
      195 NAMECALL                         R8 R7 K16 ["IsA"]
      197 CALL                             R8 2 1
      198 JUMPIF                           R8 ; [+2]
      199 LOADB                            R2 1
      200 JUMP                             ; [+2]
      201 FORGLOOP                         R3 2 [inext] ; [-18]
      203 JUMPIF                           R2 ; [+125]
      204 GETUPVAL                         R5 1
      205 GETTABLEN                        R4 R5 1
      206 GETTABLEN                        R3 R4 1
      207 LOADB                            R4 0
      208 SETTABLEKS                       R4 R3 K9 ["Visible"]
      210 GETUPVAL                         R5 1
      211 GETTABLEN                        R4 R5 1
      212 GETTABLEN                        R3 R4 2
      213 LOADB                            R4 0
      214 SETTABLEKS                       R4 R3 K9 ["Visible"]
      216 GETUPVAL                         R4 3
      217 GETTABLEN                        R3 R4 1
      218 JUMPIFNOT                        R3 ; [+5]
      219 GETUPVAL                         R4 3
      220 GETTABLEN                        R3 R4 1
      221 LOADB                            R4 0
      222 SETTABLEKS                       R4 R3 K9 ["Visible"]
      224 GETIMPORT                        R3 K11 [ipairs]
      226 GETUPVAL                         R4 4
      227 CALL                             R3 1 3
      228 FORGPREP_INEXT                   R3
      229 LOADB                            R8 0
      230 SETTABLEKS                       R8 R7 K9 ["Visible"]
      232 FORGLOOP                         R3 2 [inext] ; [-4]
      234 GETUPVAL                         R5 1
      235 GETTABLEN                        R4 R5 14
      236 GETTABLEN                        R3 R4 1
      237 LOADB                            R4 0
      238 SETTABLEKS                       R4 R3 K9 ["Visible"]
      240 GETUPVAL                         R5 1
      241 GETTABLEN                        R4 R5 14
      242 GETTABLEN                        R3 R4 2
      243 LOADB                            R4 0
      244 SETTABLEKS                       R4 R3 K9 ["Visible"]
      246 GETUPVAL                         R4 3
      247 GETTABLEN                        R3 R4 14
      248 JUMPIFNOT                        R3 ; [+5]
      249 GETUPVAL                         R4 3
      250 GETTABLEN                        R3 R4 14
      251 LOADB                            R4 0
      252 SETTABLEKS                       R4 R3 K9 ["Visible"]
      254 LOADN                            R5 1
      255 GETUPVAL                         R6 5
      256 LENGTH                           R3 R6
      257 LOADN                            R4 1
      258 FORNPREP                         R3
      259 GETUPVAL                         R7 5
      260 GETTABLE                         R6 R7 R5
      261 LOADB                            R7 0
      262 SETTABLEKS                       R7 R6 K9 ["Visible"]
      264 FORNLOOP                         R3
      265 GETUPVAL                         R5 1
      266 GETTABLEN                        R4 R5 11
      267 GETTABLEN                        R3 R4 1
      268 LOADB                            R4 0
      269 SETTABLEKS                       R4 R3 K9 ["Visible"]
      271 GETUPVAL                         R5 1
      272 GETTABLEN                        R4 R5 11
      273 GETTABLEN                        R3 R4 2
      274 LOADB                            R4 0
      275 SETTABLEKS                       R4 R3 K9 ["Visible"]
      277 GETUPVAL                         R4 3
      278 GETTABLEN                        R3 R4 11
      279 JUMPIFNOT                        R3 ; [+5]
      280 GETUPVAL                         R4 3
      281 GETTABLEN                        R3 R4 11
      282 LOADB                            R4 0
      283 SETTABLEKS                       R4 R3 K9 ["Visible"]
      285 GETUPVAL                         R5 1
      286 GETTABLEN                        R4 R5 12
      287 GETTABLEN                        R3 R4 1
      288 LOADB                            R4 0
      289 SETTABLEKS                       R4 R3 K9 ["Visible"]
      291 GETUPVAL                         R5 1
      292 GETTABLEN                        R4 R5 12
      293 GETTABLEN                        R3 R4 2
      294 LOADB                            R4 0
      295 SETTABLEKS                       R4 R3 K9 ["Visible"]
      297 GETUPVAL                         R4 3
      298 GETTABLEN                        R3 R4 12
      299 JUMPIFNOT                        R3 ; [+5]
      300 GETUPVAL                         R4 3
      301 GETTABLEN                        R3 R4 12
      302 LOADB                            R4 0
      303 SETTABLEKS                       R4 R3 K9 ["Visible"]
      305 GETUPVAL                         R5 1
      306 GETTABLEN                        R4 R5 13
      307 GETTABLEN                        R3 R4 1
      308 LOADB                            R4 0
      309 SETTABLEKS                       R4 R3 K9 ["Visible"]
      311 GETUPVAL                         R5 1
      312 GETTABLEN                        R4 R5 13
      313 GETTABLEN                        R3 R4 2
      314 LOADB                            R4 0
      315 SETTABLEKS                       R4 R3 K9 ["Visible"]
      317 GETUPVAL                         R4 3
      318 GETTABLEN                        R3 R4 13
      319 JUMPIFNOT                        R3 ; [+5]
      320 GETUPVAL                         R4 3
      321 GETTABLEN                        R3 R4 13
      322 LOADB                            R4 0
      323 SETTABLEKS                       R4 R3 K9 ["Visible"]
      325 GETUPVAL                         R3 6
      326 LOADB                            R4 0
      327 CALL                             R3 1 0
      328 RETURN                           R0 0
      329 JUMPIFNOT                        R0 ; [+399]
      330 GETUPVAL                         R3 9
      331 JUMPIFEQKN                       R3 K19 [11] ; [+7]
      333 GETUPVAL                         R3 9
      334 JUMPIFEQKN                       R3 K20 [12] ; [+4]
      336 GETUPVAL                         R3 9
      337 JUMPIFNOTEQKN                    R3 K21 [13] ; [+85]
      339 GETUPVAL                         R5 1
      340 GETTABLEN                        R4 R5 11
      341 GETTABLEN                        R3 R4 1
      342 LOADB                            R4 0
      343 SETTABLEKS                       R4 R3 K9 ["Visible"]
      345 GETUPVAL                         R5 1
      346 GETTABLEN                        R4 R5 11
      347 GETTABLEN                        R3 R4 2
      348 LOADB                            R4 0
      349 SETTABLEKS                       R4 R3 K9 ["Visible"]
      351 GETUPVAL                         R4 3
      352 GETTABLEN                        R3 R4 11
      353 JUMPIFNOT                        R3 ; [+5]
      354 GETUPVAL                         R4 3
      355 GETTABLEN                        R3 R4 11
      356 LOADB                            R4 0
      357 SETTABLEKS                       R4 R3 K9 ["Visible"]
      359 GETUPVAL                         R5 1
      360 GETTABLEN                        R4 R5 12
      361 GETTABLEN                        R3 R4 1
      362 LOADB                            R4 0
      363 SETTABLEKS                       R4 R3 K9 ["Visible"]
      365 GETUPVAL                         R5 1
      366 GETTABLEN                        R4 R5 12
      367 GETTABLEN                        R3 R4 2
      368 LOADB                            R4 0
      369 SETTABLEKS                       R4 R3 K9 ["Visible"]
      371 GETUPVAL                         R4 3
      372 GETTABLEN                        R3 R4 12
      373 JUMPIFNOT                        R3 ; [+5]
      374 GETUPVAL                         R4 3
      375 GETTABLEN                        R3 R4 12
      376 LOADB                            R4 0
      377 SETTABLEKS                       R4 R3 K9 ["Visible"]
      379 GETUPVAL                         R5 1
      380 GETTABLEN                        R4 R5 13
      381 GETTABLEN                        R3 R4 1
      382 LOADB                            R4 0
      383 SETTABLEKS                       R4 R3 K9 ["Visible"]
      385 GETUPVAL                         R5 1
      386 GETTABLEN                        R4 R5 13
      387 GETTABLEN                        R3 R4 2
      388 LOADB                            R4 0
      389 SETTABLEKS                       R4 R3 K9 ["Visible"]
      391 GETUPVAL                         R4 3
      392 GETTABLEN                        R3 R4 13
      393 JUMPIFNOT                        R3 ; [+5]
      394 GETUPVAL                         R4 3
      395 GETTABLEN                        R3 R4 13
      396 LOADB                            R4 0
      397 SETTABLEKS                       R4 R3 K9 ["Visible"]
      399 GETUPVAL                         R3 6
      400 LOADB                            R4 0
      401 CALL                             R3 1 0
      402 GETUPVAL                         R5 1
      403 GETTABLEN                        R4 R5 1
      404 GETTABLEN                        R3 R4 1
      405 LOADB                            R4 0
      406 SETTABLEKS                       R4 R3 K9 ["Visible"]
      408 GETUPVAL                         R5 1
      409 GETTABLEN                        R4 R5 1
      410 GETTABLEN                        R3 R4 2
      411 LOADB                            R4 0
      412 SETTABLEKS                       R4 R3 K9 ["Visible"]
      414 GETUPVAL                         R4 3
      415 GETTABLEN                        R3 R4 1
      416 JUMPIFNOT                        R3 ; [+502]
      417 GETUPVAL                         R4 3
      418 GETTABLEN                        R3 R4 1
      419 LOADB                            R4 0
      420 SETTABLEKS                       R4 R3 K9 ["Visible"]
      422 JUMP                             ; [+496]
      423 GETUPVAL                         R3 9
      424 JUMPIFEQKN                       R3 K22 [2] ; [+25]
      426 GETUPVAL                         R3 9
      427 JUMPIFEQKN                       R3 K23 [3] ; [+22]
      429 GETUPVAL                         R3 9
      430 JUMPIFEQKN                       R3 K24 [4] ; [+19]
      432 GETUPVAL                         R3 9
      433 JUMPIFEQKN                       R3 K25 [5] ; [+16]
      435 GETUPVAL                         R3 9
      436 JUMPIFEQKN                       R3 K26 [6] ; [+13]
      438 GETUPVAL                         R3 9
      439 JUMPIFEQKN                       R3 K27 [7] ; [+10]
      441 GETUPVAL                         R3 9
      442 JUMPIFEQKN                       R3 K28 [8] ; [+7]
      444 GETUPVAL                         R3 9
      445 JUMPIFEQKN                       R3 K29 [9] ; [+4]
      447 GETUPVAL                         R3 9
      448 JUMPIFNOTEQKN                    R3 K30 [10] ; [+106]
      450 GETUPVAL                         R5 1
      451 GETTABLEN                        R4 R5 11
      452 GETTABLEN                        R3 R4 1
      453 LOADB                            R4 0
      454 SETTABLEKS                       R4 R3 K9 ["Visible"]
      456 GETUPVAL                         R5 1
      457 GETTABLEN                        R4 R5 11
      458 GETTABLEN                        R3 R4 2
      459 LOADB                            R4 0
      460 SETTABLEKS                       R4 R3 K9 ["Visible"]
      462 GETUPVAL                         R4 3
      463 GETTABLEN                        R3 R4 11
      464 JUMPIFNOT                        R3 ; [+5]
      465 GETUPVAL                         R4 3
      466 GETTABLEN                        R3 R4 11
      467 LOADB                            R4 0
      468 SETTABLEKS                       R4 R3 K9 ["Visible"]
      470 GETUPVAL                         R5 1
      471 GETTABLEN                        R4 R5 12
      472 GETTABLEN                        R3 R4 1
      473 LOADB                            R4 0
      474 SETTABLEKS                       R4 R3 K9 ["Visible"]
      476 GETUPVAL                         R5 1
      477 GETTABLEN                        R4 R5 12
      478 GETTABLEN                        R3 R4 2
      479 LOADB                            R4 0
      480 SETTABLEKS                       R4 R3 K9 ["Visible"]
      482 GETUPVAL                         R4 3
      483 GETTABLEN                        R3 R4 12
      484 JUMPIFNOT                        R3 ; [+5]
      485 GETUPVAL                         R4 3
      486 GETTABLEN                        R3 R4 12
      487 LOADB                            R4 0
      488 SETTABLEKS                       R4 R3 K9 ["Visible"]
      490 GETUPVAL                         R5 1
      491 GETTABLEN                        R4 R5 13
      492 GETTABLEN                        R3 R4 1
      493 LOADB                            R4 0
      494 SETTABLEKS                       R4 R3 K9 ["Visible"]
      496 GETUPVAL                         R5 1
      497 GETTABLEN                        R4 R5 13
      498 GETTABLEN                        R3 R4 2
      499 LOADB                            R4 0
      500 SETTABLEKS                       R4 R3 K9 ["Visible"]
      502 GETUPVAL                         R4 3
      503 GETTABLEN                        R3 R4 13
      504 JUMPIFNOT                        R3 ; [+5]
      505 GETUPVAL                         R4 3
      506 GETTABLEN                        R3 R4 13
      507 LOADB                            R4 0
      508 SETTABLEKS                       R4 R3 K9 ["Visible"]
      510 GETUPVAL                         R5 1
      511 GETTABLEN                        R4 R5 1
      512 GETTABLEN                        R3 R4 1
      513 LOADB                            R4 0
      514 SETTABLEKS                       R4 R3 K9 ["Visible"]
      516 GETUPVAL                         R5 1
      517 GETTABLEN                        R4 R5 1
      518 GETTABLEN                        R3 R4 2
      519 LOADB                            R4 0
      520 SETTABLEKS                       R4 R3 K9 ["Visible"]
      522 GETUPVAL                         R4 3
      523 GETTABLEN                        R3 R4 1
      524 JUMPIFNOT                        R3 ; [+5]
      525 GETUPVAL                         R4 3
      526 GETTABLEN                        R3 R4 1
      527 LOADB                            R4 0
      528 SETTABLEKS                       R4 R3 K9 ["Visible"]
      530 GETUPVAL                         R3 6
      531 LOADB                            R4 0
      532 CALL                             R3 1 0
      533 GETUPVAL                         R3 9
      534 GETUPVAL                         R6 1
      535 GETTABLE                         R5 R6 R3
      536 GETTABLEN                        R4 R5 1
      537 LOADB                            R5 1
      538 SETTABLEKS                       R5 R4 K9 ["Visible"]
      540 GETUPVAL                         R6 1
      541 GETTABLE                         R5 R6 R3
      542 GETTABLEN                        R4 R5 2
      543 LOADB                            R5 1
      544 SETTABLEKS                       R5 R4 K9 ["Visible"]
      546 GETUPVAL                         R5 3
      547 GETTABLE                         R4 R5 R3
      548 JUMPIFNOT                        R4 ; [+370]
      549 GETUPVAL                         R5 3
      550 GETTABLE                         R4 R5 R3
      551 LOADB                            R5 1
      552 SETTABLEKS                       R5 R4 K9 ["Visible"]
      554 JUMP                             ; [+364]
      555 GETUPVAL                         R3 9
      556 JUMPIFNOTEQKN                    R3 K31 [1] ; [+85]
      558 GETUPVAL                         R5 1
      559 GETTABLEN                        R4 R5 1
      560 GETTABLEN                        R3 R4 1
      561 LOADB                            R4 1
      562 SETTABLEKS                       R4 R3 K9 ["Visible"]
      564 GETUPVAL                         R5 1
      565 GETTABLEN                        R4 R5 1
      566 GETTABLEN                        R3 R4 2
      567 LOADB                            R4 1
      568 SETTABLEKS                       R4 R3 K9 ["Visible"]
      570 GETUPVAL                         R4 3
      571 GETTABLEN                        R3 R4 1
      572 JUMPIFNOT                        R3 ; [+5]
      573 GETUPVAL                         R4 3
      574 GETTABLEN                        R3 R4 1
      575 LOADB                            R4 1
      576 SETTABLEKS                       R4 R3 K9 ["Visible"]
      578 GETUPVAL                         R5 1
      579 GETTABLEN                        R4 R5 11
      580 GETTABLEN                        R3 R4 1
      581 LOADB                            R4 0
      582 SETTABLEKS                       R4 R3 K9 ["Visible"]
      584 GETUPVAL                         R5 1
      585 GETTABLEN                        R4 R5 11
      586 GETTABLEN                        R3 R4 2
      587 LOADB                            R4 0
      588 SETTABLEKS                       R4 R3 K9 ["Visible"]
      590 GETUPVAL                         R4 3
      591 GETTABLEN                        R3 R4 11
      592 JUMPIFNOT                        R3 ; [+5]
      593 GETUPVAL                         R4 3
      594 GETTABLEN                        R3 R4 11
      595 LOADB                            R4 0
      596 SETTABLEKS                       R4 R3 K9 ["Visible"]
      598 GETUPVAL                         R5 1
      599 GETTABLEN                        R4 R5 12
      600 GETTABLEN                        R3 R4 1
      601 LOADB                            R4 0
      602 SETTABLEKS                       R4 R3 K9 ["Visible"]
      604 GETUPVAL                         R5 1
      605 GETTABLEN                        R4 R5 12
      606 GETTABLEN                        R3 R4 2
      607 LOADB                            R4 0
      608 SETTABLEKS                       R4 R3 K9 ["Visible"]
      610 GETUPVAL                         R4 3
      611 GETTABLEN                        R3 R4 12
      612 JUMPIFNOT                        R3 ; [+5]
      613 GETUPVAL                         R4 3
      614 GETTABLEN                        R3 R4 12
      615 LOADB                            R4 0
      616 SETTABLEKS                       R4 R3 K9 ["Visible"]
      618 GETUPVAL                         R5 1
      619 GETTABLEN                        R4 R5 13
      620 GETTABLEN                        R3 R4 1
      621 LOADB                            R4 0
      622 SETTABLEKS                       R4 R3 K9 ["Visible"]
      624 GETUPVAL                         R5 1
      625 GETTABLEN                        R4 R5 13
      626 GETTABLEN                        R3 R4 2
      627 LOADB                            R4 0
      628 SETTABLEKS                       R4 R3 K9 ["Visible"]
      630 GETUPVAL                         R4 3
      631 GETTABLEN                        R3 R4 13
      632 JUMPIFNOT                        R3 ; [+5]
      633 GETUPVAL                         R4 3
      634 GETTABLEN                        R3 R4 13
      635 LOADB                            R4 0
      636 SETTABLEKS                       R4 R3 K9 ["Visible"]
      638 GETUPVAL                         R3 6
      639 LOADB                            R4 0
      640 CALL                             R3 1 0
      641 JUMP                             ; [+277]
      642 GETUPVAL                         R3 9
      643 JUMPIFNOTEQKN                    R3 K32 [14] ; [+275]
      645 GETUPVAL                         R5 1
      646 GETTABLEN                        R4 R5 11
      647 GETTABLEN                        R3 R4 1
      648 LOADB                            R4 0
      649 SETTABLEKS                       R4 R3 K9 ["Visible"]
      651 GETUPVAL                         R5 1
      652 GETTABLEN                        R4 R5 11
      653 GETTABLEN                        R3 R4 2
      654 LOADB                            R4 0
      655 SETTABLEKS                       R4 R3 K9 ["Visible"]
      657 GETUPVAL                         R4 3
      658 GETTABLEN                        R3 R4 11
      659 JUMPIFNOT                        R3 ; [+5]
      660 GETUPVAL                         R4 3
      661 GETTABLEN                        R3 R4 11
      662 LOADB                            R4 0
      663 SETTABLEKS                       R4 R3 K9 ["Visible"]
      665 GETUPVAL                         R5 1
      666 GETTABLEN                        R4 R5 12
      667 GETTABLEN                        R3 R4 1
      668 LOADB                            R4 0
      669 SETTABLEKS                       R4 R3 K9 ["Visible"]
      671 GETUPVAL                         R5 1
      672 GETTABLEN                        R4 R5 12
      673 GETTABLEN                        R3 R4 2
      674 LOADB                            R4 0
      675 SETTABLEKS                       R4 R3 K9 ["Visible"]
      677 GETUPVAL                         R4 3
      678 GETTABLEN                        R3 R4 12
      679 JUMPIFNOT                        R3 ; [+5]
      680 GETUPVAL                         R4 3
      681 GETTABLEN                        R3 R4 12
      682 LOADB                            R4 0
      683 SETTABLEKS                       R4 R3 K9 ["Visible"]
      685 GETUPVAL                         R5 1
      686 GETTABLEN                        R4 R5 13
      687 GETTABLEN                        R3 R4 1
      688 LOADB                            R4 0
      689 SETTABLEKS                       R4 R3 K9 ["Visible"]
      691 GETUPVAL                         R5 1
      692 GETTABLEN                        R4 R5 13
      693 GETTABLEN                        R3 R4 2
      694 LOADB                            R4 0
      695 SETTABLEKS                       R4 R3 K9 ["Visible"]
      697 GETUPVAL                         R4 3
      698 GETTABLEN                        R3 R4 13
      699 JUMPIFNOT                        R3 ; [+5]
      700 GETUPVAL                         R4 3
      701 GETTABLEN                        R3 R4 13
      702 LOADB                            R4 0
      703 SETTABLEKS                       R4 R3 K9 ["Visible"]
      705 GETUPVAL                         R5 1
      706 GETTABLEN                        R4 R5 1
      707 GETTABLEN                        R3 R4 1
      708 LOADB                            R4 0
      709 SETTABLEKS                       R4 R3 K9 ["Visible"]
      711 GETUPVAL                         R5 1
      712 GETTABLEN                        R4 R5 1
      713 GETTABLEN                        R3 R4 2
      714 LOADB                            R4 0
      715 SETTABLEKS                       R4 R3 K9 ["Visible"]
      717 GETUPVAL                         R4 3
      718 GETTABLEN                        R3 R4 1
      719 JUMPIFNOT                        R3 ; [+5]
      720 GETUPVAL                         R4 3
      721 GETTABLEN                        R3 R4 1
      722 LOADB                            R4 0
      723 SETTABLEKS                       R4 R3 K9 ["Visible"]
      725 GETUPVAL                         R3 6
      726 LOADB                            R4 0
      727 CALL                             R3 1 0
      728 JUMP                             ; [+190]
      729 GETUPVAL                         R3 10
      730 JUMPIF                           R3 ; [+188]
      731 GETUPVAL                         R5 1
      732 GETTABLEN                        R4 R5 11
      733 GETTABLEN                        R3 R4 1
      734 LOADB                            R4 1
      735 SETTABLEKS                       R4 R3 K9 ["Visible"]
      737 GETUPVAL                         R5 1
      738 GETTABLEN                        R4 R5 11
      739 GETTABLEN                        R3 R4 2
      740 LOADB                            R4 1
      741 SETTABLEKS                       R4 R3 K9 ["Visible"]
      743 GETUPVAL                         R4 3
      744 GETTABLEN                        R3 R4 11
      745 JUMPIFNOT                        R3 ; [+5]
      746 GETUPVAL                         R4 3
      747 GETTABLEN                        R3 R4 11
      748 LOADB                            R4 1
      749 SETTABLEKS                       R4 R3 K9 ["Visible"]
      751 GETUPVAL                         R5 1
      752 GETTABLEN                        R4 R5 12
      753 GETTABLEN                        R3 R4 1
      754 LOADB                            R4 1
      755 SETTABLEKS                       R4 R3 K9 ["Visible"]
      757 GETUPVAL                         R5 1
      758 GETTABLEN                        R4 R5 12
      759 GETTABLEN                        R3 R4 2
      760 LOADB                            R4 1
      761 SETTABLEKS                       R4 R3 K9 ["Visible"]
      763 GETUPVAL                         R4 3
      764 GETTABLEN                        R3 R4 12
      765 JUMPIFNOT                        R3 ; [+5]
      766 GETUPVAL                         R4 3
      767 GETTABLEN                        R3 R4 12
      768 LOADB                            R4 1
      769 SETTABLEKS                       R4 R3 K9 ["Visible"]
      771 GETUPVAL                         R5 1
      772 GETTABLEN                        R4 R5 13
      773 GETTABLEN                        R3 R4 1
      774 LOADB                            R4 1
      775 SETTABLEKS                       R4 R3 K9 ["Visible"]
      777 GETUPVAL                         R5 1
      778 GETTABLEN                        R4 R5 13
      779 GETTABLEN                        R3 R4 2
      780 LOADB                            R4 1
      781 SETTABLEKS                       R4 R3 K9 ["Visible"]
      783 GETUPVAL                         R4 3
      784 GETTABLEN                        R3 R4 13
      785 JUMPIFNOT                        R3 ; [+5]
      786 GETUPVAL                         R4 3
      787 GETTABLEN                        R3 R4 13
      788 LOADB                            R4 1
      789 SETTABLEKS                       R4 R3 K9 ["Visible"]
      791 GETUPVAL                         R5 1
      792 GETTABLEN                        R4 R5 1
      793 GETTABLEN                        R3 R4 1
      794 LOADB                            R4 1
      795 SETTABLEKS                       R4 R3 K9 ["Visible"]
      797 GETUPVAL                         R5 1
      798 GETTABLEN                        R4 R5 1
      799 GETTABLEN                        R3 R4 2
      800 LOADB                            R4 1
      801 SETTABLEKS                       R4 R3 K9 ["Visible"]
      803 GETUPVAL                         R4 3
      804 GETTABLEN                        R3 R4 1
      805 JUMPIFNOT                        R3 ; [+5]
      806 GETUPVAL                         R4 3
      807 GETTABLEN                        R3 R4 1
      808 LOADB                            R4 1
      809 SETTABLEKS                       R4 R3 K9 ["Visible"]
      811 LENGTH                           R3 R1
      812 JUMPIFNOTEQKN                    R3 K31 [1] ; [+106]
      814 GETTABLEN                        R3 R1 1
      815 LOADK                            R5 K33 ["BasePart"]
      816 NAMECALL                         R3 R3 K16 ["IsA"]
      818 CALL                             R3 2 1
      819 JUMPIFNOT                        R3 ; [+99]
      820 GETUPVAL                         R3 6
      821 LOADB                            R4 1
      822 CALL                             R3 1 0
      823 GETTABLEN                        R3 R1 1
      824 LOADK                            R5 K34 ["Part"]
      825 NAMECALL                         R3 R3 K16 ["IsA"]
      827 CALL                             R3 2 1
      828 JUMPIFNOT                        R3 ; [+90]
      829 GETTABLEN                        R4 R1 1
      830 GETTABLEKS                       R3 R4 K35 ["Shape"]
      832 GETIMPORT                        R4 K38 [Enum.PartType.Ball]
      834 JUMPIFNOTEQ                      R3 R4 ; [+84]
      836 GETUPVAL                         R5 1
      837 GETTABLEN                        R4 R5 11
      838 GETTABLEN                        R3 R4 1
      839 LOADB                            R4 0
      840 SETTABLEKS                       R4 R3 K9 ["Visible"]
      842 GETUPVAL                         R5 1
      843 GETTABLEN                        R4 R5 11
      844 GETTABLEN                        R3 R4 2
      845 LOADB                            R4 0
      846 SETTABLEKS                       R4 R3 K9 ["Visible"]
      848 GETUPVAL                         R4 3
      849 GETTABLEN                        R3 R4 11
      850 JUMPIFNOT                        R3 ; [+5]
      851 GETUPVAL                         R4 3
      852 GETTABLEN                        R3 R4 11
      853 LOADB                            R4 0
      854 SETTABLEKS                       R4 R3 K9 ["Visible"]
      856 GETUPVAL                         R5 1
      857 GETTABLEN                        R4 R5 12
      858 GETTABLEN                        R3 R4 1
      859 LOADB                            R4 0
      860 SETTABLEKS                       R4 R3 K9 ["Visible"]
      862 GETUPVAL                         R5 1
      863 GETTABLEN                        R4 R5 12
      864 GETTABLEN                        R3 R4 2
      865 LOADB                            R4 0
      866 SETTABLEKS                       R4 R3 K9 ["Visible"]
      868 GETUPVAL                         R4 3
      869 GETTABLEN                        R3 R4 12
      870 JUMPIFNOT                        R3 ; [+5]
      871 GETUPVAL                         R4 3
      872 GETTABLEN                        R3 R4 12
      873 LOADB                            R4 0
      874 SETTABLEKS                       R4 R3 K9 ["Visible"]
      876 GETUPVAL                         R5 1
      877 GETTABLEN                        R4 R5 13
      878 GETTABLEN                        R3 R4 1
      879 LOADB                            R4 0
      880 SETTABLEKS                       R4 R3 K9 ["Visible"]
      882 GETUPVAL                         R5 1
      883 GETTABLEN                        R4 R5 13
      884 GETTABLEN                        R3 R4 2
      885 LOADB                            R4 0
      886 SETTABLEKS                       R4 R3 K9 ["Visible"]
      888 GETUPVAL                         R4 3
      889 GETTABLEN                        R3 R4 13
      890 JUMPIFNOT                        R3 ; [+5]
      891 GETUPVAL                         R4 3
      892 GETTABLEN                        R3 R4 13
      893 LOADB                            R4 0
      894 SETTABLEKS                       R4 R3 K9 ["Visible"]
      896 GETUPVAL                         R3 6
      897 LOADB                            R4 0
      898 CALL                             R3 1 0
      899 GETUPVAL                         R5 1
      900 GETTABLEN                        R4 R5 6
      901 GETTABLEN                        R3 R4 1
      902 LOADB                            R4 1
      903 SETTABLEKS                       R4 R3 K9 ["Visible"]
      905 GETUPVAL                         R5 1
      906 GETTABLEN                        R4 R5 6
      907 GETTABLEN                        R3 R4 2
      908 LOADB                            R4 1
      909 SETTABLEKS                       R4 R3 K9 ["Visible"]
      911 GETUPVAL                         R4 3
      912 GETTABLEN                        R3 R4 6
      913 JUMPIFNOT                        R3 ; [+5]
      914 GETUPVAL                         R4 3
      915 GETTABLEN                        R3 R4 6
      916 LOADB                            R4 1
      917 SETTABLEKS                       R4 R3 K9 ["Visible"]
      919 GETUPVAL                         R6 1
      920 GETTABLEN                        R5 R6 11
      921 GETTABLEN                        R4 R5 1
      922 GETTABLEKS                       R3 R4 K14 ["Adornee"]
      924 GETIMPORT                        R8 K5 [game]
      926 GETTABLEKS                       R7 R8 K17 ["Workspace"]
      928 GETTABLEKS                       R6 R7 K39 ["CurrentCamera"]
      930 GETTABLEKS                       R5 R6 K40 ["CoordinateFrame"]
      932 GETTABLEKS                       R4 R5 K41 ["p"]
      934 GETTABLEKS                       R6 R3 K42 ["CFrame"]
      936 MOVE                             R8 R4
      937 NAMECALL                         R6 R6 K43 ["pointToObjectSpace"]
      939 CALL                             R6 2 1
      940 GETTABLEKS                       R5 R6 K44 ["Unit"]
      942 GETTABLEKS                       R9 R5 K45 ["X"]
      944 FASTCALL1                        MATH_ABS R9 ; [+2]
      945 GETIMPORT                        R8 K48 [math.abs]
      947 CALL                             R8 1 1
      948 GETTABLEKS                       R10 R5 K49 ["Y"]
      950 FASTCALL1                        MATH_ABS R10 ; [+2]
      951 GETIMPORT                        R9 K48 [math.abs]
      953 CALL                             R9 1 1
      954 GETTABLEKS                       R11 R5 K50 ["Z"]
      956 FASTCALL1                        MATH_ABS R11 ; [+2]
      957 GETIMPORT                        R10 K48 [math.abs]
      959 CALL                             R10 1 1
      960 FASTCALL                         VECTOR ; [+2]
      961 GETIMPORT                        R7 K53 [Vector3.new]
      963 CALL                             R7 3 1
      964 DIV                              R6 R5 R7
      965 GETTABLEKS                       R9 R6 K45 ["X"]
      967 GETTABLEKS                       R10 R6 K45 ["X"]
      969 JUMPIFNOTEQ                      R9 R10 ; [+4]
      971 GETTABLEKS                       R8 R6 K45 ["X"]
      973 JUMPIF                           R8 ; [+1]
      974 LOADN                            R8 1
      975 GETTABLEKS                       R10 R6 K49 ["Y"]
      977 GETTABLEKS                       R11 R6 K49 ["Y"]
      979 JUMPIFNOTEQ                      R10 R11 ; [+4]
      981 GETTABLEKS                       R9 R6 K49 ["Y"]
      983 JUMPIF                           R9 ; [+1]
      984 LOADN                            R9 1
      985 GETTABLEKS                       R11 R6 K50 ["Z"]
      987 GETTABLEKS                       R12 R6 K50 ["Z"]
      989 JUMPIFNOTEQ                      R11 R12 ; [+4]
      991 GETTABLEKS                       R10 R6 K50 ["Z"]
      993 JUMPIF                           R10 ; [+1]
      994 LOADN                            R10 1
      995 FASTCALL                         VECTOR ; [+2]
      996 GETIMPORT                        R7 K53 [Vector3.new]
      998 CALL                             R7 3 1
      999 MOVE                             R6 R7
     1000 GETUPVAL                         R12 1
     1001 GETTABLEN                        R11 R12 1
     1002 GETTABLEN                        R10 R11 1
     1003 GETTABLEKS                       R9 R10 K14 ["Adornee"]
     1005 GETTABLEKS                       R8 R9 K42 ["CFrame"]
     1007 MOVE                             R10 R4
     1008 NAMECALL                         R8 R8 K43 ["pointToObjectSpace"]
     1010 CALL                             R8 2 1
     1011 GETTABLEKS                       R7 R8 K44 ["Unit"]
     1013 GETTABLEKS                       R11 R7 K45 ["X"]
     1015 FASTCALL1                        MATH_ABS R11 ; [+2]
     1016 GETIMPORT                        R10 K48 [math.abs]
     1018 CALL                             R10 1 1
     1019 GETTABLEKS                       R12 R7 K49 ["Y"]
     1021 FASTCALL1                        MATH_ABS R12 ; [+2]
     1022 GETIMPORT                        R11 K48 [math.abs]
     1024 CALL                             R11 1 1
     1025 GETTABLEKS                       R13 R7 K50 ["Z"]
     1027 FASTCALL1                        MATH_ABS R13 ; [+2]
     1028 GETIMPORT                        R12 K48 [math.abs]
     1030 CALL                             R12 1 1
     1031 FASTCALL                         VECTOR ; [+2]
     1032 GETIMPORT                        R9 K53 [Vector3.new]
     1034 CALL                             R9 3 1
     1035 DIV                              R8 R7 R9
     1036 GETTABLEKS                       R13 R3 K42 ["CFrame"]
     1038 MOVE                             R15 R4
     1039 NAMECALL                         R13 R13 K43 ["pointToObjectSpace"]
     1041 CALL                             R13 2 1
     1042 GETTABLEKS                       R12 R13 K56 ["Magnitude"]
     1044 DIVK                             R11 R12 K55 [15]
     1045 FASTCALL2K                       MATH_MAX R11 K31 ; [+4]
     1047 LOADK                            R12 K31 [1]
     1048 GETIMPORT                        R10 K58 [math.max]
     1050 CALL                             R10 2 1
     1051 MULK                             R9 R10 K54 [0.35]
     1052 JUMPIF                           R0 ; [+133]
     1053 GETUPVAL                         R12 1
     1054 GETTABLEN                        R11 R12 1
     1055 GETTABLEN                        R10 R11 1
     1056 LOADN                            R12 0
     1057 GETTABLEKS                       R13 R8 K49 ["Y"]
     1059 LOADN                            R14 0
     1060 FASTCALL                         VECTOR ; [+2]
     1061 GETIMPORT                        R11 K53 [Vector3.new]
     1063 CALL                             R11 3 1
     1064 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1066 GETUPVAL                         R12 1
     1067 GETTABLEN                        R11 R12 1
     1068 GETTABLEN                        R10 R11 1
     1069 GETIMPORT                        R11 K60 [CFrame.new]
     1071 LOADN                            R13 0
     1072 GETTABLEKS                       R17 R8 K49 ["Y"]
     1074 MUL                              R16 R17 R9
     1075 MULK                             R15 R16 K22 [2]
     1076 DIVK                             R14 R15 K54 [0.35]
     1077 LOADN                            R15 0
     1078 FASTCALL                         VECTOR ; [+2]
     1079 GETIMPORT                        R12 K53 [Vector3.new]
     1081 CALL                             R12 3 1
     1082 LOADN                            R14 0
     1083 GETTABLEKS                       R19 R8 K49 ["Y"]
     1085 MUL                              R18 R19 R9
     1086 MULK                             R17 R18 K22 [2]
     1087 DIVK                             R16 R17 K54 [0.35]
     1088 GETTABLEKS                       R17 R8 K49 ["Y"]
     1090 ADD                              R15 R16 R17
     1091 LOADN                            R16 0
     1092 FASTCALL                         VECTOR ; [+2]
     1093 GETIMPORT                        R13 K53 [Vector3.new]
     1095 CALL                             R13 3 1
     1096 CALL                             R11 2 1
     1097 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1099 GETUPVAL                         R12 1
     1100 GETTABLEN                        R11 R12 1
     1101 GETTABLEN                        R10 R11 2
     1102 LOADN                            R12 0
     1103 GETTABLEKS                       R13 R8 K49 ["Y"]
     1105 LOADN                            R14 0
     1106 FASTCALL                         VECTOR ; [+2]
     1107 GETIMPORT                        R11 K53 [Vector3.new]
     1109 CALL                             R11 3 1
     1110 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1112 GETUPVAL                         R12 1
     1113 GETTABLEN                        R11 R12 1
     1114 GETTABLEN                        R10 R11 2
     1115 GETUPVAL                         R15 1
     1116 GETTABLEN                        R14 R15 1
     1117 GETTABLEN                        R13 R14 1
     1118 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1120 LOADN                            R14 0
     1121 GETUPVAL                         R21 1
     1122 GETTABLEN                        R20 R21 1
     1123 GETTABLEN                        R19 R20 1
     1124 GETTABLEKS                       R18 R19 K61 ["Height"]
     1126 DIVK                             R17 R18 K22 [2]
     1127 GETUPVAL                         R22 1
     1128 GETTABLEN                        R21 R22 1
     1129 GETTABLEN                        R20 R21 2
     1130 GETTABLEKS                       R19 R20 K61 ["Height"]
     1132 DIVK                             R18 R19 K62 [1.75]
     1133 SUB                              R16 R17 R18
     1134 GETTABLEKS                       R17 R8 K49 ["Y"]
     1136 MUL                              R15 R16 R17
     1137 LOADN                            R16 0
     1138 FASTCALL                         VECTOR ; [+2]
     1139 GETIMPORT                        R13 K53 [Vector3.new]
     1141 CALL                             R13 3 1
     1142 ADD                              R11 R12 R13
     1143 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1145 GETTABLEKS                       R10 R6 K49 ["Y"]
     1147 SETUPVAL                         R10 11
     1148 GETUPVAL                         R12 1
     1149 GETTABLEN                        R11 R12 6
     1150 GETTABLEN                        R10 R11 1
     1151 LOADN                            R12 0
     1152 GETTABLEKS                       R13 R6 K49 ["Y"]
     1154 LOADN                            R14 0
     1155 FASTCALL                         VECTOR ; [+2]
     1156 GETIMPORT                        R11 K53 [Vector3.new]
     1158 CALL                             R11 3 1
     1159 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1161 GETUPVAL                         R12 1
     1162 GETTABLEN                        R11 R12 6
     1163 GETTABLEN                        R10 R11 2
     1164 LOADN                            R12 0
     1165 GETTABLEKS                       R13 R6 K49 ["Y"]
     1167 LOADN                            R14 0
     1168 FASTCALL                         VECTOR ; [+2]
     1169 GETIMPORT                        R11 K53 [Vector3.new]
     1171 CALL                             R11 3 1
     1172 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1174 GETUPVAL                         R11 3
     1175 GETTABLEN                        R10 R11 6
     1176 LOADN                            R12 0
     1177 GETTABLEKS                       R13 R6 K49 ["Y"]
     1179 LOADN                            R14 0
     1180 FASTCALL                         VECTOR ; [+2]
     1181 GETIMPORT                        R11 K53 [Vector3.new]
     1183 CALL                             R11 3 1
     1184 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1186 GETUPVAL                         R12 1
     1187 GETTABLEN                        R11 R12 11
     1188 GETTABLEN                        R10 R11 2
     1189 GETTABLEKS                       R12 R6 K45 ["X"]
     1191 GETTABLEKS                       R13 R6 K49 ["Y"]
     1193 GETTABLEKS                       R15 R6 K50 ["Z"]
     1195 MINUS                            R14 R15
     1196 FASTCALL                         VECTOR ; [+2]
     1197 GETIMPORT                        R11 K53 [Vector3.new]
     1199 CALL                             R11 3 1
     1200 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1202 GETUPVAL                         R12 1
     1203 GETTABLEN                        R11 R12 11
     1204 GETTABLEN                        R10 R11 2
     1205 GETIMPORT                        R11 K60 [CFrame.new]
     1207 GETTABLEKS                       R14 R6 K45 ["X"]
     1209 MUL                              R13 R14 R9
     1210 GETTABLEKS                       R15 R6 K49 ["Y"]
     1212 MUL                              R14 R15 R9
     1213 LOADN                            R15 0
     1214 FASTCALL                         VECTOR ; [+2]
     1215 GETIMPORT                        R12 K53 [Vector3.new]
     1217 CALL                             R12 3 1
     1218 GETTABLEKS                       R15 R6 K45 ["X"]
     1220 MUL                              R14 R15 R9
     1221 GETTABLEKS                       R16 R6 K49 ["Y"]
     1223 MUL                              R15 R16 R9
     1224 GETTABLEKS                       R16 R6 K50 ["Z"]
     1226 FASTCALL                         VECTOR ; [+2]
     1227 GETIMPORT                        R13 K53 [Vector3.new]
     1229 CALL                             R13 3 1
     1230 CALL                             R11 2 1
     1231 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1233 GETUPVAL                         R12 1
     1234 GETTABLEN                        R11 R12 11
     1235 GETTABLEN                        R10 R11 2
     1236 GETUPVAL                         R15 1
     1237 GETTABLEN                        R14 R15 11
     1238 GETTABLEN                        R13 R14 2
     1239 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1241 GETIMPORT                        R13 K64 [CFrame.Angles]
     1243 LOADN                            R14 0
     1244 LOADN                            R15 0
     1245 GETTABLEKS                       R20 R6 K45 ["X"]
     1247 LOADN                            R21 0
     1248 JUMPIFNOTLT                      R21 R20 ; [+3]
     1250 LOADK                            R19 K65 [1.5707963267949]
     1251 JUMP                             ; [+1]
     1252 LOADN                            R19 0
     1253 GETTABLEKS                       R21 R6 K49 ["Y"]
     1255 LOADN                            R22 0
     1256 JUMPIFNOTLT                      R22 R21 ; [+3]
     1258 LOADN                            R20 0
     1259 JUMP                             ; [+1]
     1260 LOADK                            R20 K65 [1.5707963267949]
     1261 ADD                              R18 R19 R20
     1262 GETTABLEKS                       R20 R6 K50 ["Z"]
     1264 LOADN                            R21 0
     1265 JUMPIFNOTLT                      R21 R20 ; [+3]
     1267 LOADN                            R19 0
     1268 JUMP                             ; [+8]
     1269 GETTABLEKS                       R20 R6 K49 ["Y"]
     1271 LOADN                            R21 0
     1272 JUMPIFNOTLT                      R21 R20 ; [+3]
     1274 LOADK                            R19 K66 [-1.5707963267949]
     1275 JUMP                             ; [+1]
     1276 LOADK                            R19 K65 [1.5707963267949]
     1277 ADD                              R17 R18 R19
     1278 GETTABLEKS                       R19 R6 K45 ["X"]
     1280 LOADN                            R20 0
     1281 JUMPIFNOTLT                      R20 R19 ; [+3]
     1283 LOADN                            R18 1
     1284 JUMP                             ; [+1]
     1285 LOADN                            R18 255
     1286 MUL                              R16 R17 R18
     1287 CALL                             R13 3 1
     1288 MUL                              R11 R12 R13
     1289 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1291 GETUPVAL                         R11 12
     1292 GETTABLEN                        R10 R11 3
     1293 LOADB                            R11 0
     1294 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1296 GETUPVAL                         R12 1
     1297 GETTABLEN                        R11 R12 11
     1298 GETTABLEN                        R10 R11 1
     1299 LOADB                            R11 0
     1300 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1302 GETUPVAL                         R10 9
     1303 JUMPIFNOTEQKN                    R10 K19 [11] ; [+81]
     1305 GETTABLEKS                       R12 R3 K67 ["Size"]
     1307 GETTABLEKS                       R11 R12 K50 ["Z"]
     1309 ADDK                             R10 R11 K22 [2]
     1310 GETUPVAL                         R12 12
     1311 GETTABLEN                        R11 R12 3
     1312 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1314 GETUPVAL                         R12 12
     1315 GETTABLEN                        R11 R12 3
     1316 GETIMPORT                        R12 K60 [CFrame.new]
     1318 LOADN                            R14 0
     1319 LOADN                            R15 0
     1320 MULK                             R16 R10 K68 [0.5]
     1321 FASTCALL                         VECTOR ; [+2]
     1322 GETIMPORT                        R13 K53 [Vector3.new]
     1324 CALL                             R13 3 1
     1325 CALL                             R12 1 1
     1326 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1328 GETUPVAL                         R12 12
     1329 GETTABLEN                        R11 R12 3
     1330 SETTABLEKS                       R10 R11 K69 ["Length"]
     1332 GETUPVAL                         R12 12
     1333 GETTABLEN                        R11 R12 3
     1334 LOADB                            R12 1
     1335 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1337 JUMPIF                           R0 ; [+47]
     1338 GETUPVAL                         R13 1
     1339 GETTABLEN                        R12 R13 11
     1340 GETTABLEN                        R11 R12 1
     1341 GETUPVAL                         R15 1
     1342 GETTABLEN                        R14 R15 11
     1343 GETTABLEN                        R13 R14 2
     1344 GETTABLEKS                       R12 R13 K59 ["SizeRelativeOffset"]
     1346 SETTABLEKS                       R12 R11 K59 ["SizeRelativeOffset"]
     1348 GETUPVAL                         R13 1
     1349 GETTABLEN                        R12 R13 11
     1350 GETTABLEN                        R11 R12 1
     1351 GETUPVAL                         R15 1
     1352 GETTABLEN                        R14 R15 11
     1353 GETTABLEN                        R13 R14 2
     1354 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1356 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1358 GETUPVAL                         R13 1
     1359 GETTABLEN                        R12 R13 11
     1360 GETTABLEN                        R11 R12 1
     1361 LOADB                            R12 1
     1362 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1364 GETUPVAL                         R13 1
     1365 GETTABLEN                        R12 R13 11
     1366 GETTABLEN                        R11 R12 2
     1367 GETUPVAL                         R16 1
     1368 GETTABLEN                        R15 R16 11
     1369 GETTABLEN                        R14 R15 2
     1370 GETTABLEKS                       R13 R14 K42 ["CFrame"]
     1372 LOADN                            R15 0
     1373 LOADN                            R16 0
     1374 GETTABLEKS                       R19 R6 K50 ["Z"]
     1376 MULK                             R18 R19 K70 [0.075]
     1377 MUL                              R17 R18 R9
     1378 FASTCALL                         VECTOR ; [+2]
     1379 GETIMPORT                        R14 K53 [Vector3.new]
     1381 CALL                             R14 3 1
     1382 ADD                              R12 R13 R14
     1383 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1385 GETUPVAL                         R12 1
     1386 GETTABLEN                        R11 R12 12
     1387 GETTABLEN                        R10 R11 2
     1388 GETTABLEKS                       R12 R6 K45 ["X"]
     1390 GETTABLEKS                       R14 R6 K49 ["Y"]
     1392 MINUS                            R13 R14
     1393 GETTABLEKS                       R14 R6 K50 ["Z"]
     1395 FASTCALL                         VECTOR ; [+2]
     1396 GETIMPORT                        R11 K53 [Vector3.new]
     1398 CALL                             R11 3 1
     1399 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1401 GETUPVAL                         R12 1
     1402 GETTABLEN                        R11 R12 12
     1403 GETTABLEN                        R10 R11 2
     1404 GETIMPORT                        R11 K60 [CFrame.new]
     1406 GETTABLEKS                       R14 R6 K45 ["X"]
     1408 ADDK                             R15 R9 K71 [0.2]
     1409 MUL                              R13 R14 R15
     1410 LOADN                            R14 0
     1411 GETTABLEKS                       R16 R6 K50 ["Z"]
     1413 ADDK                             R17 R9 K71 [0.2]
     1414 MUL                              R15 R16 R17
     1415 FASTCALL                         VECTOR ; [+2]
     1416 GETIMPORT                        R12 K53 [Vector3.new]
     1418 CALL                             R12 3 1
     1419 GETTABLEKS                       R15 R6 K45 ["X"]
     1421 ADDK                             R16 R9 K71 [0.2]
     1422 MUL                              R14 R15 R16
     1423 GETTABLEKS                       R15 R6 K49 ["Y"]
     1425 GETTABLEKS                       R17 R6 K50 ["Z"]
     1427 ADDK                             R18 R9 K71 [0.2]
     1428 MUL                              R16 R17 R18
     1429 FASTCALL                         VECTOR ; [+2]
     1430 GETIMPORT                        R13 K53 [Vector3.new]
     1432 CALL                             R13 3 1
     1433 CALL                             R11 2 1
     1434 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1436 GETUPVAL                         R12 1
     1437 GETTABLEN                        R11 R12 12
     1438 GETTABLEN                        R10 R11 2
     1439 GETUPVAL                         R15 1
     1440 GETTABLEN                        R14 R15 12
     1441 GETTABLEN                        R13 R14 2
     1442 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1444 GETIMPORT                        R13 K64 [CFrame.Angles]
     1446 LOADN                            R14 0
     1447 LOADN                            R15 0
     1448 GETTABLEKS                       R21 R6 K45 ["X"]
     1450 LOADN                            R22 0
     1451 JUMPIFNOTLT                      R22 R21 ; [+3]
     1453 LOADK                            R20 K65 [1.5707963267949]
     1454 JUMP                             ; [+1]
     1455 LOADN                            R20 0
     1456 GETTABLEKS                       R22 R6 K50 ["Z"]
     1458 LOADN                            R23 0
     1459 JUMPIFNOTLT                      R23 R22 ; [+3]
     1461 LOADK                            R21 K65 [1.5707963267949]
     1462 JUMP                             ; [+1]
     1463 LOADN                            R21 0
     1464 ADD                              R19 R20 R21
     1465 GETTABLEKS                       R21 R6 K49 ["Y"]
     1467 LOADN                            R22 0
     1468 JUMPIFNOTLT                      R22 R21 ; [+3]
     1470 LOADN                            R20 0
     1471 JUMP                             ; [+8]
     1472 GETTABLEKS                       R21 R6 K50 ["Z"]
     1474 LOADN                            R22 0
     1475 JUMPIFNOTLT                      R22 R21 ; [+3]
     1477 LOADK                            R20 K66 [-1.5707963267949]
     1478 JUMP                             ; [+1]
     1479 LOADK                            R20 K65 [1.5707963267949]
     1480 ADD                              R18 R19 R20
     1481 GETTABLEKS                       R20 R6 K45 ["X"]
     1483 LOADN                            R21 0
     1484 JUMPIFNOTLT                      R21 R20 ; [+3]
     1486 LOADN                            R19 1
     1487 JUMP                             ; [+1]
     1488 LOADN                            R19 255
     1489 MUL                              R17 R18 R19
     1490 SUBK                             R16 R17 K65 [1.5707963267949]
     1491 CALL                             R13 3 1
     1492 MUL                              R11 R12 R13
     1493 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1495 GETUPVAL                         R11 12
     1496 GETTABLEN                        R10 R11 2
     1497 LOADB                            R11 0
     1498 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1500 GETUPVAL                         R12 1
     1501 GETTABLEN                        R11 R12 12
     1502 GETTABLEN                        R10 R11 1
     1503 LOADB                            R11 0
     1504 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1506 GETUPVAL                         R10 9
     1507 JUMPIFNOTEQKN                    R10 K20 [12] ; [+89]
     1509 GETTABLEKS                       R12 R3 K67 ["Size"]
     1511 GETTABLEKS                       R11 R12 K49 ["Y"]
     1513 ADDK                             R10 R11 K22 [2]
     1514 GETUPVAL                         R12 12
     1515 GETTABLEN                        R11 R12 2
     1516 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1518 GETUPVAL                         R12 12
     1519 GETTABLEN                        R11 R12 2
     1520 GETIMPORT                        R13 K60 [CFrame.new]
     1522 LOADN                            R15 0
     1523 MINUS                            R17 R10
     1524 MULK                             R16 R17 K68 [0.5]
     1525 LOADN                            R17 0
     1526 FASTCALL                         VECTOR ; [+2]
     1527 GETIMPORT                        R14 K53 [Vector3.new]
     1529 CALL                             R14 3 1
     1530 CALL                             R13 1 1
     1531 GETIMPORT                        R14 K64 [CFrame.Angles]
     1533 LOADK                            R15 K65 [1.5707963267949]
     1534 LOADN                            R16 0
     1535 LOADN                            R17 0
     1536 CALL                             R14 3 1
     1537 MUL                              R12 R13 R14
     1538 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1540 GETUPVAL                         R12 12
     1541 GETTABLEN                        R11 R12 2
     1542 SETTABLEKS                       R10 R11 K69 ["Length"]
     1544 GETUPVAL                         R12 12
     1545 GETTABLEN                        R11 R12 2
     1546 LOADB                            R12 1
     1547 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1549 JUMPIF                           R0 ; [+47]
     1550 GETUPVAL                         R13 1
     1551 GETTABLEN                        R12 R13 12
     1552 GETTABLEN                        R11 R12 1
     1553 GETUPVAL                         R15 1
     1554 GETTABLEN                        R14 R15 12
     1555 GETTABLEN                        R13 R14 2
     1556 GETTABLEKS                       R12 R13 K59 ["SizeRelativeOffset"]
     1558 SETTABLEKS                       R12 R11 K59 ["SizeRelativeOffset"]
     1560 GETUPVAL                         R13 1
     1561 GETTABLEN                        R12 R13 12
     1562 GETTABLEN                        R11 R12 1
     1563 GETUPVAL                         R15 1
     1564 GETTABLEN                        R14 R15 12
     1565 GETTABLEN                        R13 R14 2
     1566 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1568 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1570 GETUPVAL                         R13 1
     1571 GETTABLEN                        R12 R13 12
     1572 GETTABLEN                        R11 R12 1
     1573 LOADB                            R12 1
     1574 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1576 GETUPVAL                         R13 1
     1577 GETTABLEN                        R12 R13 12
     1578 GETTABLEN                        R11 R12 2
     1579 GETUPVAL                         R16 1
     1580 GETTABLEN                        R15 R16 12
     1581 GETTABLEN                        R14 R15 2
     1582 GETTABLEKS                       R13 R14 K42 ["CFrame"]
     1584 LOADN                            R15 0
     1585 GETTABLEKS                       R18 R6 K49 ["Y"]
     1587 MULK                             R17 R18 K70 [0.075]
     1588 MUL                              R16 R17 R9
     1589 LOADN                            R17 0
     1590 FASTCALL                         VECTOR ; [+2]
     1591 GETIMPORT                        R14 K53 [Vector3.new]
     1593 CALL                             R14 3 1
     1594 ADD                              R12 R13 R14
     1595 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1597 GETUPVAL                         R12 1
     1598 GETTABLEN                        R11 R12 13
     1599 GETTABLEN                        R10 R11 2
     1600 GETTABLEKS                       R13 R6 K45 ["X"]
     1602 MINUS                            R12 R13
     1603 GETTABLEKS                       R13 R6 K49 ["Y"]
     1605 GETTABLEKS                       R14 R6 K50 ["Z"]
     1607 FASTCALL                         VECTOR ; [+2]
     1608 GETIMPORT                        R11 K53 [Vector3.new]
     1610 CALL                             R11 3 1
     1611 SETTABLEKS                       R11 R10 K59 ["SizeRelativeOffset"]
     1613 GETUPVAL                         R12 1
     1614 GETTABLEN                        R11 R12 13
     1615 GETTABLEN                        R10 R11 2
     1616 GETIMPORT                        R11 K60 [CFrame.new]
     1618 LOADN                            R13 0
     1619 GETTABLEKS                       R15 R6 K49 ["Y"]
     1621 MUL                              R14 R15 R9
     1622 GETTABLEKS                       R16 R6 K50 ["Z"]
     1624 MUL                              R15 R16 R9
     1625 FASTCALL                         VECTOR ; [+2]
     1626 GETIMPORT                        R12 K53 [Vector3.new]
     1628 CALL                             R12 3 1
     1629 GETTABLEKS                       R14 R6 K45 ["X"]
     1631 GETTABLEKS                       R16 R6 K49 ["Y"]
     1633 MUL                              R15 R16 R9
     1634 GETTABLEKS                       R17 R6 K50 ["Z"]
     1636 MUL                              R16 R17 R9
     1637 FASTCALL                         VECTOR ; [+2]
     1638 GETIMPORT                        R13 K53 [Vector3.new]
     1640 CALL                             R13 3 1
     1641 CALL                             R11 2 1
     1642 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1644 GETUPVAL                         R12 1
     1645 GETTABLEN                        R11 R12 13
     1646 GETTABLEN                        R10 R11 2
     1647 GETUPVAL                         R15 1
     1648 GETTABLEN                        R14 R15 13
     1649 GETTABLEN                        R13 R14 2
     1650 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1652 GETIMPORT                        R13 K64 [CFrame.Angles]
     1654 LOADN                            R14 0
     1655 LOADN                            R15 0
     1656 GETTABLEKS                       R20 R6 K50 ["Z"]
     1658 LOADN                            R21 0
     1659 JUMPIFNOTLT                      R21 R20 ; [+3]
     1661 LOADK                            R19 K65 [1.5707963267949]
     1662 JUMP                             ; [+1]
     1663 LOADN                            R19 0
     1664 GETTABLEKS                       R21 R6 K49 ["Y"]
     1666 LOADN                            R22 0
     1667 JUMPIFNOTLT                      R22 R21 ; [+3]
     1669 LOADN                            R20 0
     1670 JUMP                             ; [+1]
     1671 LOADK                            R20 K65 [1.5707963267949]
     1672 ADD                              R18 R19 R20
     1673 GETTABLEKS                       R20 R6 K45 ["X"]
     1675 LOADN                            R21 0
     1676 JUMPIFNOTLT                      R21 R20 ; [+10]
     1678 GETTABLEKS                       R20 R6 K49 ["Y"]
     1680 LOADN                            R21 0
     1681 JUMPIFNOTLT                      R21 R20 ; [+3]
     1683 LOADK                            R19 K66 [-1.5707963267949]
     1684 JUMP                             ; [+3]
     1685 LOADK                            R19 K65 [1.5707963267949]
     1686 JUMP                             ; [+1]
     1687 LOADN                            R19 0
     1688 ADD                              R17 R18 R19
     1689 GETTABLEKS                       R19 R6 K50 ["Z"]
     1691 LOADN                            R20 0
     1692 JUMPIFNOTLT                      R20 R19 ; [+3]
     1694 LOADN                            R18 1
     1695 JUMP                             ; [+1]
     1696 LOADN                            R18 255
     1697 MUL                              R16 R17 R18
     1698 CALL                             R13 3 1
     1699 MUL                              R11 R12 R13
     1700 SETTABLEKS                       R11 R10 K42 ["CFrame"]
     1702 GETUPVAL                         R11 12
     1703 GETTABLEN                        R10 R11 1
     1704 LOADB                            R11 0
     1705 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1707 GETUPVAL                         R12 1
     1708 GETTABLEN                        R11 R12 13
     1709 GETTABLEN                        R10 R11 1
     1710 LOADB                            R11 0
     1711 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1713 GETUPVAL                         R10 9
     1714 JUMPIFNOTEQKN                    R10 K21 [13] ; [+88]
     1716 GETTABLEKS                       R12 R3 K67 ["Size"]
     1718 GETTABLEKS                       R11 R12 K45 ["X"]
     1720 ADDK                             R10 R11 K22 [2]
     1721 GETUPVAL                         R12 12
     1722 GETTABLEN                        R11 R12 1
     1723 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1725 GETUPVAL                         R12 12
     1726 GETTABLEN                        R11 R12 1
     1727 GETIMPORT                        R13 K60 [CFrame.new]
     1729 MULK                             R15 R10 K68 [0.5]
     1730 LOADN                            R16 0
     1731 LOADN                            R17 0
     1732 FASTCALL                         VECTOR ; [+2]
     1733 GETIMPORT                        R14 K53 [Vector3.new]
     1735 CALL                             R14 3 1
     1736 CALL                             R13 1 1
     1737 GETIMPORT                        R14 K64 [CFrame.Angles]
     1739 LOADN                            R15 0
     1740 LOADK                            R16 K65 [1.5707963267949]
     1741 LOADN                            R17 0
     1742 CALL                             R14 3 1
     1743 MUL                              R12 R13 R14
     1744 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1746 GETUPVAL                         R12 12
     1747 GETTABLEN                        R11 R12 1
     1748 SETTABLEKS                       R10 R11 K69 ["Length"]
     1750 GETUPVAL                         R12 12
     1751 GETTABLEN                        R11 R12 1
     1752 LOADB                            R12 1
     1753 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1755 JUMPIF                           R0 ; [+47]
     1756 GETUPVAL                         R13 1
     1757 GETTABLEN                        R12 R13 13
     1758 GETTABLEN                        R11 R12 1
     1759 GETUPVAL                         R15 1
     1760 GETTABLEN                        R14 R15 13
     1761 GETTABLEN                        R13 R14 2
     1762 GETTABLEKS                       R12 R13 K59 ["SizeRelativeOffset"]
     1764 SETTABLEKS                       R12 R11 K59 ["SizeRelativeOffset"]
     1766 GETUPVAL                         R13 1
     1767 GETTABLEN                        R12 R13 13
     1768 GETTABLEN                        R11 R12 1
     1769 GETUPVAL                         R15 1
     1770 GETTABLEN                        R14 R15 13
     1771 GETTABLEN                        R13 R14 2
     1772 GETTABLEKS                       R12 R13 K42 ["CFrame"]
     1774 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1776 GETUPVAL                         R13 1
     1777 GETTABLEN                        R12 R13 13
     1778 GETTABLEN                        R11 R12 1
     1779 LOADB                            R12 1
     1780 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1782 GETUPVAL                         R13 1
     1783 GETTABLEN                        R12 R13 13
     1784 GETTABLEN                        R11 R12 2
     1785 GETUPVAL                         R16 1
     1786 GETTABLEN                        R15 R16 13
     1787 GETTABLEN                        R14 R15 2
     1788 GETTABLEKS                       R13 R14 K42 ["CFrame"]
     1790 GETTABLEKS                       R17 R6 K45 ["X"]
     1792 MULK                             R16 R17 K70 [0.075]
     1793 MUL                              R15 R16 R9
     1794 LOADN                            R16 0
     1795 LOADN                            R17 0
     1796 FASTCALL                         VECTOR ; [+2]
     1797 GETIMPORT                        R14 K53 [Vector3.new]
     1799 CALL                             R14 3 1
     1800 ADD                              R12 R13 R14
     1801 SETTABLEKS                       R12 R11 K42 ["CFrame"]
     1803 GETIMPORT                        R10 K73 [pairs]
     1805 GETUPVAL                         R11 1
     1806 CALL                             R10 1 3
     1807 FORGPREP_NEXT                    R10
     1808 JUMPIFNOTEQKN                    R13 K32 [14] ; [+2]
     1810 JUMP                             ; [+157]
     1811 GETUPVAL                         R16 13
     1812 GETTABLEN                        R17 R14 2
     1813 CALL                             R16 1 1
     1814 GETTABLEKS                       R15 R16 K41 ["p"]
     1816 GETTABLEN                        R16 R14 1
     1817 LOADK                            R18 K74 ["BoxHandleAdornment"]
     1818 NAMECALL                         R16 R16 K16 ["IsA"]
     1820 CALL                             R16 2 1
     1821 JUMPIFNOT                        R16 ; [+74]
     1822 SUB                              R19 R15 R4
     1823 GETTABLEKS                       R18 R19 K56 ["Magnitude"]
     1825 DIVK                             R17 R18 K30 [10]
     1826 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1828 LOADK                            R18 K31 [1]
     1829 GETIMPORT                        R16 K58 [math.max]
     1831 CALL                             R16 2 1
     1832 GETTABLEN                        R17 R14 1
     1833 GETTABLEN                        R19 R14 6
     1834 MUL                              R18 R19 R16
     1835 SETTABLEKS                       R18 R17 K67 ["Size"]
     1837 GETTABLEN                        R17 R14 2
     1838 GETTABLEN                        R19 R14 7
     1839 MUL                              R18 R19 R16
     1840 SETTABLEKS                       R18 R17 K67 ["Size"]
     1842 GETUPVAL                         R18 3
     1843 GETTABLE                         R17 R18 R13
     1844 JUMPIFNOT                        R17 ; [+6]
     1845 GETUPVAL                         R18 3
     1846 GETTABLE                         R17 R18 R13
     1847 GETTABLEN                        R19 R14 6
     1848 MUL                              R18 R19 R16
     1849 SETTABLEKS                       R18 R17 K67 ["Size"]
     1851 GETUPVAL                         R19 13
     1852 GETTABLEN                        R20 R14 1
     1853 CALL                             R19 1 1
     1854 GETTABLEKS                       R18 R19 K41 ["p"]
     1856 SUB                              R17 R18 R4
     1857 GETIMPORT                        R18 K76 [Ray.new]
     1859 MOVE                             R19 R4
     1860 MOVE                             R20 R17
     1861 CALL                             R18 2 1
     1862 GETIMPORT                        R20 K5 [game]
     1864 GETTABLEKS                       R19 R20 K17 ["Workspace"]
     1866 MOVE                             R21 R18
     1867 NAMECALL                         R19 R19 K77 ["FindPartOnRay"]
     1869 CALL                             R19 2 2
     1870 SUB                              R22 R20 R4
     1871 GETTABLEKS                       R21 R22 K78 ["magnitude"]
     1873 GETTABLEKS                       R23 R17 K78 ["magnitude"]
     1875 SUBK                             R22 R23 K71 [0.2]
     1876 JUMPIFNOTLE                      R22 R21 ; [+10]
     1878 GETTABLEN                        R21 R14 1
     1879 LOADB                            R22 1
     1880 SETTABLEKS                       R22 R21 K79 ["AlwaysOnTop"]
     1882 GETTABLEN                        R21 R14 2
     1883 LOADB                            R22 1
     1884 SETTABLEKS                       R22 R21 K79 ["AlwaysOnTop"]
     1886 JUMP                             ; [+81]
     1887 GETTABLEN                        R21 R14 1
     1888 LOADB                            R22 0
     1889 SETTABLEKS                       R22 R21 K79 ["AlwaysOnTop"]
     1891 GETTABLEN                        R21 R14 2
     1892 LOADB                            R22 0
     1893 SETTABLEKS                       R22 R21 K79 ["AlwaysOnTop"]
     1895 JUMP                             ; [+72]
     1896 GETTABLEN                        R16 R14 1
     1897 LOADK                            R18 K80 ["ConeHandleAdornment"]
     1898 NAMECALL                         R16 R16 K16 ["IsA"]
     1900 CALL                             R16 2 1
     1901 JUMPIFNOT                        R16 ; [+39]
     1902 SUB                              R19 R15 R4
     1903 GETTABLEKS                       R18 R19 K56 ["Magnitude"]
     1905 DIVK                             R17 R18 K55 [15]
     1906 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1908 LOADK                            R18 K31 [1]
     1909 GETIMPORT                        R16 K58 [math.max]
     1911 CALL                             R16 2 1
     1912 GETTABLEN                        R17 R14 1
     1913 GETTABLEN                        R20 R14 6
     1914 GETTABLEKS                       R19 R20 K45 ["X"]
     1916 MUL                              R18 R19 R16
     1917 SETTABLEKS                       R18 R17 K61 ["Height"]
     1919 GETTABLEN                        R17 R14 1
     1920 GETTABLEN                        R20 R14 6
     1921 GETTABLEKS                       R19 R20 K49 ["Y"]
     1923 MUL                              R18 R19 R16
     1924 SETTABLEKS                       R18 R17 K81 ["Radius"]
     1926 GETTABLEN                        R17 R14 2
     1927 GETTABLEN                        R20 R14 7
     1928 GETTABLEKS                       R19 R20 K45 ["X"]
     1930 MUL                              R18 R19 R16
     1931 SETTABLEKS                       R18 R17 K61 ["Height"]
     1933 GETTABLEN                        R17 R14 2
     1934 GETTABLEN                        R20 R14 7
     1935 GETTABLEKS                       R19 R20 K49 ["Y"]
     1937 MUL                              R18 R19 R16
     1938 SETTABLEKS                       R18 R17 K81 ["Radius"]
     1940 JUMP                             ; [+27]
     1941 GETTABLEN                        R16 R14 1
     1942 LOADK                            R18 K82 ["ImageHandleAdornment"]
     1943 NAMECALL                         R16 R16 K16 ["IsA"]
     1945 CALL                             R16 2 1
     1946 JUMPIFNOT                        R16 ; [+21]
     1947 SUB                              R20 R15 R4
     1948 GETTABLEKS                       R19 R20 K56 ["Magnitude"]
     1950 DIVK                             R18 R19 K83 [30]
     1951 ADDK                             R17 R18 K31 [1]
     1952 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1954 LOADK                            R18 K31 [1]
     1955 GETIMPORT                        R16 K58 [math.max]
     1957 CALL                             R16 2 1
     1958 GETTABLEN                        R17 R14 1
     1959 GETTABLEN                        R19 R14 6
     1960 MUL                              R18 R19 R16
     1961 SETTABLEKS                       R18 R17 K67 ["Size"]
     1963 GETTABLEN                        R17 R14 2
     1964 GETTABLEN                        R19 R14 7
     1965 MUL                              R18 R19 R16
     1966 SETTABLEKS                       R18 R17 K67 ["Size"]
     1968 FORGLOOP                         R10 2 ; [-161]
     1970 LOADNIL                          R10
     1971 GETUPVAL                         R11 14
     1972 JUMPIF                           R11 ; [+2]
     1973 GETUPVAL                         R11 10
     1974 JUMPIFNOT                        R11 ; [+22]
     1975 GETUPVAL                         R11 15
     1976 LOADN                            R12 1
     1977 JUMPIFNOTLT                      R11 R12 ; [+40]
     1979 GETUPVAL                         R13 15
     1980 ADDK                             R12 R13 K84 [0.1]
     1981 FASTCALL2K                       MATH_MIN R12 K31 ; [+4]
     1983 LOADK                            R13 K31 [1]
     1984 GETIMPORT                        R11 K86 [math.min]
     1986 CALL                             R11 2 1
     1987 SETUPVAL                         R11 15
     1988 GETUPVAL                         R12 16
     1989 GETTABLEKS                       R11 R12 K87 ["smoothstep"]
     1991 LOADN                            R12 0
     1992 LOADN                            R13 1
     1993 GETUPVAL                         R14 15
     1994 CALL                             R11 3 1
     1995 MOVE                             R10 R11
     1996 JUMP                             ; [+21]
     1997 GETUPVAL                         R11 15
     1998 LOADN                            R12 0
     1999 JUMPIFNOTLT                      R12 R11 ; [+18]
     2001 GETUPVAL                         R13 15
     2002 SUBK                             R12 R13 K84 [0.1]
     2003 FASTCALL2K                       MATH_MAX R12 K88 ; [+4]
     2005 LOADK                            R13 K88 [0]
     2006 GETIMPORT                        R11 K58 [math.max]
     2008 CALL                             R11 2 1
     2009 SETUPVAL                         R11 15
     2010 GETUPVAL                         R12 16
     2011 GETTABLEKS                       R11 R12 K87 ["smoothstep"]
     2013 LOADN                            R12 0
     2014 LOADN                            R13 1
     2015 GETUPVAL                         R14 15
     2016 CALL                             R11 3 1
     2017 MOVE                             R10 R11
     2018 JUMPIFNOT                        R10 ; [+71]
     2019 GETUPVAL                         R12 16
     2020 GETTABLEKS                       R11 R12 K89 ["colorMultiply"]
     2022 GETUPVAL                         R15 1
     2023 GETTABLEN                        R14 R15 14
     2024 GETTABLEN                        R13 R14 4
     2025 GETTABLEN                        R12 R13 1
     2026 MOVE                             R13 R10
     2027 CALL                             R11 2 1
     2028 GETUPVAL                         R13 16
     2029 GETTABLEKS                       R12 R13 K89 ["colorMultiply"]
     2031 GETUPVAL                         R16 1
     2032 GETTABLEN                        R15 R16 14
     2033 GETTABLEN                        R14 R15 5
     2034 GETTABLEN                        R13 R14 1
     2035 SUBRK                            R14 R31 K10 ["ipairs"]
     2036 CALL                             R12 2 1
     2037 GETUPVAL                         R15 1
     2038 GETTABLEN                        R14 R15 14
     2039 GETTABLEN                        R13 R14 2
     2040 GETUPVAL                         R15 16
     2041 GETTABLEKS                       R14 R15 K90 ["colorAdd"]
     2043 MOVE                             R15 R11
     2044 MOVE                             R16 R12
     2045 CALL                             R14 2 1
     2046 SETTABLEKS                       R14 R13 K91 ["ImageColor3"]
     2048 GETUPVAL                         R15 1
     2049 GETTABLEN                        R14 R15 14
     2050 GETTABLEN                        R13 R14 2
     2051 GETUPVAL                         R19 1
     2052 GETTABLEN                        R18 R19 14
     2053 GETTABLEN                        R17 R18 4
     2054 GETTABLEN                        R16 R17 2
     2055 MUL                              R15 R10 R16
     2056 SUBRK                            R17 R31 K10 ["ipairs"]
     2057 GETUPVAL                         R21 1
     2058 GETTABLEN                        R20 R21 14
     2059 GETTABLEN                        R19 R20 5
     2060 GETTABLEN                        R18 R19 2
     2061 MUL                              R16 R17 R18
     2062 ADD                              R14 R15 R16
     2063 SETTABLEKS                       R14 R13 K92 ["ImageTransparency"]
     2065 LOADN                            R15 1
     2066 LOADN                            R13 8
     2067 LOADN                            R14 1
     2068 FORNPREP                         R13
     2069 GETUPVAL                         R17 5
     2070 GETTABLE                         R16 R17 R15
     2071 GETUPVAL                         R18 16
     2072 GETTABLEKS                       R17 R18 K90 ["colorAdd"]
     2074 GETUPVAL                         R19 16
     2075 GETTABLEKS                       R18 R19 K89 ["colorMultiply"]
     2077 GETUPVAL                         R19 17
     2078 MOVE                             R20 R10
     2079 CALL                             R18 2 1
     2080 GETUPVAL                         R20 16
     2081 GETTABLEKS                       R19 R20 K89 ["colorMultiply"]
     2083 GETUPVAL                         R20 18
     2084 SUBRK                            R21 R31 K10 ["ipairs"]
     2085 CALL                             R19 2 -1
     2086 CALL                             R17 -1 1
     2087 SETTABLEKS                       R17 R16 K91 ["ImageColor3"]
     2089 FORNLOOP                         R13
     2090 GETUPVAL                         R11 10
     2091 JUMPIFNOT                        R11 ; [+12]
     2092 GETUPVAL                         R13 1
     2093 GETTABLEN                        R12 R13 14
     2094 GETTABLEN                        R11 R12 2
     2095 GETUPVAL                         R12 19
     2096 SETTABLEKS                       R12 R11 K91 ["ImageColor3"]
     2098 GETUPVAL                         R13 1
     2099 GETTABLEN                        R12 R13 14
     2100 GETTABLEN                        R11 R12 2
     2101 LOADN                            R12 0
     2102 SETTABLEKS                       R12 R11 K92 ["ImageTransparency"]
     2104 GETUPVAL                         R11 20
     2105 CALL                             R11 0 0
     2106 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_55:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_57:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEN                        R4 R5 1
        3 GETUPVAL                         R6 1
        4 GETTABLEN                        R5 R6 2
        5 GETUPVAL                         R7 2
        6 GETTABLEN                        R6 R7 1
        7 GETUPVAL                         R8 2
        8 GETTABLEN                        R7 R8 2
        9 GETUPVAL                         R9 2
       10 GETTABLEN                        R8 R9 3
       11 MOVE                             R9 R0
       12 MOVE                             R10 R1
       13 MOVE                             R11 R2
       14 CALL                             R3 8 0
       15 SUB                              R4 R0 R1
       16 GETTABLEKS                       R3 R4 K0 ["magnitude"]
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 4
       20 GETUPVAL                         R6 5
       21 GETUPVAL                         R7 6
       22 GETIMPORT                        R8 K3 [string.format]
       24 LOADK                            R9 K4 ["%.2f"]
       25 MOVE                             R10 R3
       26 CALL                             R8 2 1
       27 LOADN                            R9 1
       28 CALL                             R4 5 0
       29 GETUPVAL                         R5 2
       30 GETTABLEN                        R4 R5 1
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["Visible"]
       34 GETUPVAL                         R5 2
       35 GETTABLEN                        R4 R5 2
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K5 ["Visible"]
       39 GETUPVAL                         R5 2
       40 GETTABLEN                        R4 R5 3
       41 LOADB                            R5 1
       42 SETTABLEKS                       R5 R4 K5 ["Visible"]
       44 GETUPVAL                         R5 1
       45 GETTABLEN                        R4 R5 1
       46 LOADB                            R5 1
       47 SETTABLEKS                       R5 R4 K5 ["Visible"]
       49 GETUPVAL                         R5 1
       50 GETTABLEN                        R4 R5 2
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R4 K5 ["Visible"]
       54 ADD                              R6 R0 R1
       55 DIVK                             R5 R6 K6 [2]
       56 ADD                              R4 R5 R2
       57 GETUPVAL                         R5 4
       58 GETIMPORT                        R8 K8 [game]
       60 GETTABLEKS                       R7 R8 K9 ["Workspace"]
       62 GETTABLEKS                       R6 R7 K10 ["CurrentCamera"]
       64 MOVE                             R8 R4
       65 NAMECALL                         R6 R6 K11 ["WorldToScreenPoint"]
       67 CALL                             R6 2 1
       68 JUMPIFNOT                        R6 ; [+11]
       69 GETIMPORT                        R7 K14 [UDim2.new]
       71 LOADN                            R8 0
       72 GETTABLEKS                       R9 R6 K15 ["X"]
       74 LOADN                            R10 0
       75 GETTABLEKS                       R11 R6 K16 ["Y"]
       77 CALL                             R7 4 1
       78 SETTABLEKS                       R7 R5 K17 ["Position"]
       80 LOADB                            R7 1
       81 SETTABLEKS                       R7 R5 K5 ["Visible"]
       83 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEN                        R4 R5 3
        3 GETUPVAL                         R6 1
        4 GETTABLEN                        R5 R6 4
        5 GETUPVAL                         R7 2
        6 GETTABLEN                        R6 R7 4
        7 GETUPVAL                         R8 2
        8 GETTABLEN                        R7 R8 5
        9 GETUPVAL                         R9 2
       10 GETTABLEN                        R8 R9 6
       11 MOVE                             R9 R0
       12 MOVE                             R10 R1
       13 MOVE                             R11 R2
       14 CALL                             R3 8 0
       15 SUB                              R4 R0 R1
       16 GETTABLEKS                       R3 R4 K0 ["magnitude"]
       18 GETUPVAL                         R4 3
       19 GETUPVAL                         R5 4
       20 GETUPVAL                         R6 5
       21 GETUPVAL                         R7 6
       22 GETIMPORT                        R8 K3 [string.format]
       24 LOADK                            R9 K4 ["%.2f"]
       25 MOVE                             R10 R3
       26 CALL                             R8 2 1
       27 LOADN                            R9 1
       28 CALL                             R4 5 0
       29 GETUPVAL                         R5 2
       30 GETTABLEN                        R4 R5 4
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K5 ["Visible"]
       34 GETUPVAL                         R5 2
       35 GETTABLEN                        R4 R5 5
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K5 ["Visible"]
       39 GETUPVAL                         R5 2
       40 GETTABLEN                        R4 R5 6
       41 LOADB                            R5 1
       42 SETTABLEKS                       R5 R4 K5 ["Visible"]
       44 GETUPVAL                         R5 1
       45 GETTABLEN                        R4 R5 3
       46 LOADB                            R5 1
       47 SETTABLEKS                       R5 R4 K5 ["Visible"]
       49 GETUPVAL                         R5 1
       50 GETTABLEN                        R4 R5 4
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R4 K5 ["Visible"]
       54 ADD                              R6 R0 R1
       55 DIVK                             R5 R6 K6 [2]
       56 ADD                              R4 R5 R2
       57 GETUPVAL                         R5 4
       58 GETIMPORT                        R8 K8 [game]
       60 GETTABLEKS                       R7 R8 K9 ["Workspace"]
       62 GETTABLEKS                       R6 R7 K10 ["CurrentCamera"]
       64 MOVE                             R8 R4
       65 NAMECALL                         R6 R6 K11 ["WorldToScreenPoint"]
       67 CALL                             R6 2 1
       68 JUMPIFNOT                        R6 ; [+11]
       69 GETIMPORT                        R7 K14 [UDim2.new]
       71 LOADN                            R8 0
       72 GETTABLEKS                       R9 R6 K15 ["X"]
       74 LOADN                            R10 0
       75 GETTABLEKS                       R11 R6 K16 ["Y"]
       77 CALL                             R7 4 1
       78 SETTABLEKS                       R7 R5 K17 ["Position"]
       80 LOADB                            R7 1
       81 SETTABLEKS                       R7 R5 K5 ["Visible"]
       83 RETURN                           R0 0

PROTO_60:
        0 GETTABLEKS                       R7 R0 K0 ["p"]
        2 SUB                              R6 R7 R3
        3 GETTABLEKS                       R5 R6 K1 ["magnitude"]
        5 JUMPIFLT                         R5 R1 ; [+2]
        7 LOADB                            R4 0 +1
        8 LOADB                            R4 1
        9 SETUPVAL                         R4 0
       10 GETUPVAL                         R4 0
       11 JUMPIF                           R4 ; [+6]
       12 FASTCALL1                        MATH_FLOOR R2 ; [+3]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K4 [math.floor]
       16 CALL                             R4 1 1
       17 MOVE                             R2 R4
       18 LOADN                            R4 180
       19 JUMPIFNOTLT                      R4 R2 ; [+3]
       21 SUBK                             R2 R2 K5 [360]
       22 JUMP                             ; [+4]
       23 LOADN                            R4 76
       24 JUMPIFNOTLT                      R2 R4 ; [+2]
       26 ADDK                             R2 R2 K5 [360]
       27 GETUPVAL                         R4 1
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 MOVE                             R7 R2
       31 CALL                             R4 3 0
       32 GETIMPORT                        R4 K7 [ipairs]
       34 GETUPVAL                         R5 2
       35 CALL                             R4 1 3
       36 FORGPREP_INEXT                   R4
       37 LOADB                            R9 1
       38 SETTABLEKS                       R9 R8 K8 ["Visible"]
       40 FORGLOOP                         R4 2 [inext] ; [-4]
       42 GETUPVAL                         R4 3
       43 GETUPVAL                         R5 4
       44 GETUPVAL                         R6 5
       45 GETUPVAL                         R7 6
       46 GETIMPORT                        R8 K11 [string.format]
       48 GETUPVAL                         R10 0
       49 JUMPIFNOT                        R10 ; [+2]
       50 LOADK                            R9 K12 ["%.1f"]
       51 JUMP                             ; [+1]
       52 LOADK                            R9 K13 ["%d"]
       53 MINUS                            R10 R2
       54 CALL                             R8 2 1
       55 LOADN                            R9 2
       56 CALL                             R4 5 0
       57 GETIMPORT                        R6 K16 [CFrame.Angles]
       59 LOADN                            R7 0
       60 LOADN                            R8 0
       61 ADDK                             R10 R2 K17 [180]
       62 FASTCALL1                        MATH_RAD R10 ; [+2]
       63 GETIMPORT                        R9 K19 [math.rad]
       65 CALL                             R9 1 1
       66 CALL                             R6 3 1
       67 MUL                              R5 R0 R6
       68 GETIMPORT                        R7 K21 [CFrame.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 0
       72 FASTCALL3                        VECTOR R1 R10 R11
       74 MOVE                             R9 R1
       75 GETIMPORT                        R8 K23 [Vector3.new]
       77 CALL                             R8 3 1
       78 CALL                             R7 1 -1
       79 NAMECALL                         R5 R5 K24 ["toWorldSpace"]
       81 CALL                             R5 -1 1
       82 GETTABLEKS                       R4 R5 K0 ["p"]
       84 GETUPVAL                         R5 4
       85 GETIMPORT                        R8 K26 [game]
       87 GETTABLEKS                       R7 R8 K27 ["Workspace"]
       89 GETTABLEKS                       R6 R7 K28 ["CurrentCamera"]
       91 MOVE                             R8 R4
       92 NAMECALL                         R6 R6 K29 ["WorldToScreenPoint"]
       94 CALL                             R6 2 1
       95 JUMPIFNOT                        R6 ; [+11]
       96 GETIMPORT                        R7 K31 [UDim2.new]
       98 LOADN                            R8 0
       99 GETTABLEKS                       R9 R6 K32 ["X"]
      101 LOADN                            R10 0
      102 GETTABLEKS                       R11 R6 K33 ["Y"]
      104 CALL                             R7 4 1
      105 SETTABLEKS                       R7 R5 K34 ["Position"]
      107 LOADB                            R7 1
      108 SETTABLEKS                       R7 R5 K8 ["Visible"]
      110 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEN                        R1 R2 1
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R1 K0 ["Visible"]
        8 GETUPVAL                         R2 1
        9 GETTABLEN                        R1 R2 2
       10 LOADB                            R2 1
       11 SETTABLEKS                       R2 R1 K0 ["Visible"]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 3
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K0 ["Visible"]
       18 GETUPVAL                         R2 1
       19 GETTABLEN                        R1 R2 4
       20 LOADB                            R2 1
       21 SETTABLEKS                       R2 R1 K0 ["Visible"]
       23 GETUPVAL                         R2 1
       24 GETTABLEN                        R1 R2 5
       25 LOADB                            R2 1
       26 SETTABLEKS                       R2 R1 K0 ["Visible"]
       28 GETUPVAL                         R2 1
       29 GETTABLEN                        R1 R2 6
       30 LOADB                            R2 1
       31 SETTABLEKS                       R2 R1 K0 ["Visible"]
       33 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Visible"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["Visible"]
        8 GETUPVAL                         R1 2
        9 GETTABLEN                        R0 R1 1
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K0 ["Visible"]
       13 GETUPVAL                         R1 2
       14 GETTABLEN                        R0 R1 2
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K0 ["Visible"]
       18 GETUPVAL                         R1 2
       19 GETTABLEN                        R0 R1 3
       20 LOADB                            R1 0
       21 SETTABLEKS                       R1 R0 K0 ["Visible"]
       23 GETUPVAL                         R1 3
       24 GETTABLEN                        R0 R1 1
       25 LOADB                            R1 0
       26 SETTABLEKS                       R1 R0 K0 ["Visible"]
       28 GETUPVAL                         R1 3
       29 GETTABLEN                        R0 R1 2
       30 LOADB                            R1 0
       31 SETTABLEKS                       R1 R0 K0 ["Visible"]
       33 GETUPVAL                         R1 2
       34 GETTABLEN                        R0 R1 4
       35 LOADB                            R1 0
       36 SETTABLEKS                       R1 R0 K0 ["Visible"]
       38 GETUPVAL                         R1 2
       39 GETTABLEN                        R0 R1 5
       40 LOADB                            R1 0
       41 SETTABLEKS                       R1 R0 K0 ["Visible"]
       43 GETUPVAL                         R1 2
       44 GETTABLEN                        R0 R1 6
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K0 ["Visible"]
       48 GETUPVAL                         R1 3
       49 GETTABLEN                        R0 R1 3
       50 LOADB                            R1 0
       51 SETTABLEKS                       R1 R0 K0 ["Visible"]
       53 GETUPVAL                         R1 3
       54 GETTABLEN                        R0 R1 4
       55 LOADB                            R1 0
       56 SETTABLEKS                       R1 R0 K0 ["Visible"]
       58 GETIMPORT                        R0 K2 [ipairs]
       60 GETUPVAL                         R1 4
       61 CALL                             R0 1 3
       62 FORGPREP_INEXT                   R0
       63 LOADB                            R5 0
       64 SETTABLEKS                       R5 R4 K0 ["Visible"]
       66 FORGLOOP                         R0 2 [inext] ; [-4]
       68 GETUPVAL                         R1 5
       69 GETTABLEN                        R0 R1 1
       70 LOADB                            R1 0
       71 SETTABLEKS                       R1 R0 K0 ["Visible"]
       73 GETUPVAL                         R1 5
       74 GETTABLEN                        R0 R1 2
       75 LOADB                            R1 0
       76 SETTABLEKS                       R1 R0 K0 ["Visible"]
       78 GETUPVAL                         R1 5
       79 GETTABLEN                        R0 R1 3
       80 LOADB                            R1 0
       81 SETTABLEKS                       R1 R0 K0 ["Visible"]
       83 GETUPVAL                         R1 5
       84 GETTABLEN                        R0 R1 4
       85 LOADB                            R1 0
       86 SETTABLEKS                       R1 R0 K0 ["Visible"]
       88 GETUPVAL                         R1 5
       89 GETTABLEN                        R0 R1 5
       90 LOADB                            R1 0
       91 SETTABLEKS                       R1 R0 K0 ["Visible"]
       93 GETUPVAL                         R1 5
       94 GETTABLEN                        R0 R1 6
       95 LOADB                            R1 0
       96 SETTABLEKS                       R1 R0 K0 ["Visible"]
       98 GETUPVAL                         R0 6
       99 NAMECALL                         R0 R0 K3 ["GetChildren"]
      101 CALL                             R0 1 1
      102 LENGTH                           R1 R0
      103 LOADN                            R2 0
      104 JUMPIFNOTLT                      R2 R1 ; [+6]
      106 GETUPVAL                         R1 7
      107 MOVE                             R3 R0
      108 NAMECALL                         R1 R1 K4 ["RecycleObjects"]
      110 CALL                             R1 2 0
      111 LOADB                            R0 0
      112 SETUPVAL                         R0 8
      113 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R3 0
        1 GETTABLEN                        R2 R3 11
        2 GETTABLEN                        R1 R2 1
        3 SETTABLEKS                       R0 R1 K0 ["Visible"]
        5 GETUPVAL                         R3 0
        6 GETTABLEN                        R2 R3 11
        7 GETTABLEN                        R1 R2 2
        8 SETTABLEKS                       R0 R1 K0 ["Visible"]
       10 GETUPVAL                         R2 1
       11 GETTABLEN                        R1 R2 11
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R2 1
       14 GETTABLEN                        R1 R2 11
       15 SETTABLEKS                       R0 R1 K0 ["Visible"]
       17 GETUPVAL                         R3 0
       18 GETTABLEN                        R2 R3 12
       19 GETTABLEN                        R1 R2 1
       20 SETTABLEKS                       R0 R1 K0 ["Visible"]
       22 GETUPVAL                         R3 0
       23 GETTABLEN                        R2 R3 12
       24 GETTABLEN                        R1 R2 2
       25 SETTABLEKS                       R0 R1 K0 ["Visible"]
       27 GETUPVAL                         R2 1
       28 GETTABLEN                        R1 R2 12
       29 JUMPIFNOT                        R1 ; [+4]
       30 GETUPVAL                         R2 1
       31 GETTABLEN                        R1 R2 12
       32 SETTABLEKS                       R0 R1 K0 ["Visible"]
       34 GETUPVAL                         R3 0
       35 GETTABLEN                        R2 R3 13
       36 GETTABLEN                        R1 R2 1
       37 SETTABLEKS                       R0 R1 K0 ["Visible"]
       39 GETUPVAL                         R3 0
       40 GETTABLEN                        R2 R3 13
       41 GETTABLEN                        R1 R2 2
       42 SETTABLEKS                       R0 R1 K0 ["Visible"]
       44 GETUPVAL                         R2 1
       45 GETTABLEN                        R1 R2 13
       46 JUMPIFNOT                        R1 ; [+4]
       47 GETUPVAL                         R2 1
       48 GETTABLEN                        R1 R2 13
       49 SETTABLEKS                       R0 R1 K0 ["Visible"]
       51 GETUPVAL                         R3 0
       52 GETTABLEN                        R2 R3 1
       53 GETTABLEN                        R1 R2 1
       54 SETTABLEKS                       R0 R1 K0 ["Visible"]
       56 GETUPVAL                         R3 0
       57 GETTABLEN                        R2 R3 1
       58 GETTABLEN                        R1 R2 2
       59 SETTABLEKS                       R0 R1 K0 ["Visible"]
       61 GETUPVAL                         R2 1
       62 GETTABLEN                        R1 R2 1
       63 JUMPIFNOT                        R1 ; [+4]
       64 GETUPVAL                         R2 1
       65 GETTABLEN                        R1 R2 1
       66 SETTABLEKS                       R0 R1 K0 ["Visible"]
       68 GETUPVAL                         R1 2
       69 MOVE                             R2 R0
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 GETIMPORT                        R2 K2 [Color3.new]
        7 LOADN                            R3 0
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 CALL                             R2 3 1
       11 SETTABLEKS                       R2 R1 K0 ["Color3"]
       13 GETUPVAL                         R2 0
       14 GETTABLE                         R1 R2 R0
       15 LOADK                            R2 K3 [0.7]
       16 SETTABLEKS                       R2 R1 K4 ["Transparency"]
       18 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_66:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R0 1
        2 RETURN                           R0 0

PROTO_67:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K1 [pairs]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 3
        6 FORGPREP_NEXT                    R0
        7 GETTABLEN                        R5 R4 1
        8 NAMECALL                         R5 R5 K2 ["Destroy"]
       10 CALL                             R5 1 0
       11 GETTABLEN                        R5 R4 2
       12 JUMPIFNOT                        R5 ; [+4]
       13 GETTABLEN                        R5 R4 2
       14 NAMECALL                         R5 R5 K2 ["Destroy"]
       16 CALL                             R5 1 0
       17 FORGLOOP                         R0 2 ; [-11]
       19 NEWTABLE                         R0 0 0
       21 SETUPVAL                         R0 1
       22 GETIMPORT                        R0 K1 [pairs]
       24 GETUPVAL                         R1 2
       25 CALL                             R0 1 3
       26 FORGPREP_NEXT                    R0
       27 NAMECALL                         R5 R4 K2 ["Destroy"]
       29 CALL                             R5 1 0
       30 FORGLOOP                         R0 2 ; [-4]
       32 NEWTABLE                         R0 0 0
       34 SETUPVAL                         R0 2
       35 GETIMPORT                        R0 K1 [pairs]
       37 GETUPVAL                         R1 3
       38 CALL                             R0 1 3
       39 FORGPREP_NEXT                    R0
       40 NAMECALL                         R5 R4 K2 ["Destroy"]
       42 CALL                             R5 1 0
       43 FORGLOOP                         R0 2 ; [-4]
       45 NEWTABLE                         R0 0 0
       47 SETUPVAL                         R0 3
       48 GETIMPORT                        R0 K1 [pairs]
       50 GETUPVAL                         R1 4
       51 CALL                             R0 1 3
       52 FORGPREP_NEXT                    R0
       53 NAMECALL                         R5 R4 K2 ["Destroy"]
       55 CALL                             R5 1 0
       56 FORGLOOP                         R0 2 ; [-4]
       58 NEWTABLE                         R0 0 0
       60 SETUPVAL                         R0 4
       61 GETIMPORT                        R0 K1 [pairs]
       63 GETUPVAL                         R1 5
       64 CALL                             R0 1 3
       65 FORGPREP_NEXT                    R0
       66 NAMECALL                         R5 R4 K2 ["Destroy"]
       68 CALL                             R5 1 0
       69 FORGLOOP                         R0 2 ; [-4]
       71 NEWTABLE                         R0 0 0
       73 SETUPVAL                         R0 5
       74 GETIMPORT                        R0 K1 [pairs]
       76 GETUPVAL                         R1 6
       77 CALL                             R0 1 3
       78 FORGPREP_NEXT                    R0
       79 NAMECALL                         R5 R4 K2 ["Destroy"]
       81 CALL                             R5 1 0
       82 FORGLOOP                         R0 2 ; [-4]
       84 NEWTABLE                         R0 0 0
       86 SETUPVAL                         R0 6
       87 GETIMPORT                        R0 K1 [pairs]
       89 GETUPVAL                         R1 7
       90 CALL                             R0 1 3
       91 FORGPREP_NEXT                    R0
       92 NAMECALL                         R5 R4 K2 ["Destroy"]
       94 CALL                             R5 1 0
       95 FORGLOOP                         R0 2 ; [-4]
       97 NEWTABLE                         R0 0 0
       99 SETUPVAL                         R0 7
      100 GETIMPORT                        R0 K1 [pairs]
      102 GETUPVAL                         R1 8
      103 CALL                             R0 1 3
      104 FORGPREP_NEXT                    R0
      105 NAMECALL                         R5 R4 K2 ["Destroy"]
      107 CALL                             R5 1 0
      108 FORGLOOP                         R0 2 ; [-4]
      110 NEWTABLE                         R0 0 0
      112 SETUPVAL                         R0 8
      113 GETUPVAL                         R0 9
      114 NAMECALL                         R0 R0 K2 ["Destroy"]
      116 CALL                             R0 1 0
      117 LOADNIL                          R0
      118 SETUPVAL                         R0 9
      119 GETIMPORT                        R0 K1 [pairs]
      121 GETUPVAL                         R1 10
      122 CALL                             R0 1 3
      123 FORGPREP_NEXT                    R0
      124 LOADNIL                          R5
      125 SETTABLEKS                       R5 R4 K3 ["Parent"]
      127 FORGLOOP                         R0 2 ; [-4]
      129 GETUPVAL                         R0 11
      130 NAMECALL                         R0 R0 K2 ["Destroy"]
      132 CALL                             R0 1 0
      133 LOADNIL                          R0
      134 SETUPVAL                         R0 11
      135 GETUPVAL                         R0 12
      136 NAMECALL                         R0 R0 K4 ["GetChildren"]
      138 CALL                             R0 1 1
      139 LENGTH                           R1 R0
      140 LOADN                            R2 0
      141 JUMPIFNOTLT                      R2 R1 ; [+6]
      143 GETUPVAL                         R1 13
      144 MOVE                             R3 R0
      145 NAMECALL                         R1 R1 K5 ["RecycleObjects"]
      147 CALL                             R1 2 0
      148 RETURN                           R0 0

PROTO_68:
        0 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+61]
        4 GETUPVAL                         R0 2
        5 JUMPIFEQKN                       R0 K0 [0] ; [+59]
        7 GETUPVAL                         R0 2
        8 JUMPIFNOTEQKN                    R0 K1 [14] ; [+4]
       10 LOADB                            R0 0
       11 SETUPVAL                         R0 3
       12 JUMP                             ; [+41]
       13 GETUPVAL                         R2 4
       14 GETUPVAL                         R3 2
       15 GETTABLE                         R1 R2 R3
       16 GETTABLEN                        R0 R1 2
       17 GETUPVAL                         R4 4
       18 GETUPVAL                         R5 2
       19 GETTABLE                         R3 R4 R5
       20 GETTABLEN                        R2 R3 5
       21 GETTABLEN                        R1 R2 1
       22 SETTABLEKS                       R1 R0 K2 ["Color3"]
       24 GETUPVAL                         R2 4
       25 GETUPVAL                         R3 2
       26 GETTABLE                         R1 R2 R3
       27 GETTABLEN                        R0 R1 2
       28 GETUPVAL                         R4 4
       29 GETUPVAL                         R5 2
       30 GETTABLE                         R3 R4 R5
       31 GETTABLEN                        R2 R3 5
       32 GETTABLEN                        R1 R2 2
       33 SETTABLEKS                       R1 R0 K3 ["Transparency"]
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R2 5
       37 GETTABLE                         R1 R2 R0
       38 JUMPIFNOT                        R1 ; [+15]
       39 GETUPVAL                         R2 5
       40 GETTABLE                         R1 R2 R0
       41 GETIMPORT                        R2 K5 [Color3.new]
       43 LOADN                            R3 0
       44 LOADN                            R4 0
       45 LOADN                            R5 0
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K2 ["Color3"]
       49 GETUPVAL                         R2 5
       50 GETTABLE                         R1 R2 R0
       51 LOADK                            R2 K6 [0.7]
       52 SETTABLEKS                       R2 R1 K3 ["Transparency"]
       54 LOADN                            R0 0
       55 SETUPVAL                         R0 2
       56 GETIMPORT                        R0 K8 [pairs]
       58 GETUPVAL                         R1 6
       59 CALL                             R0 1 3
       60 FORGPREP_NEXT                    R0
       61 SETUPVAL                         R3 2
       62 JUMP                             ; [+2]
       63 FORGLOOP                         R0 2 ; [-3]
       65 GETUPVAL                         R0 2
       66 JUMPIFEQKN                       R0 K1 [14] ; [+5]
       68 LOADB                            R0 0
       69 SETUPVAL                         R0 7
       70 LOADB                            R0 0
       71 SETUPVAL                         R0 3
       72 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 14
        2 JUMPIF                           R0 ; [+2]
        3 LOADB                            R0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 1
        6 GETTABLEN                        R1 R2 14
        7 GETTABLEN                        R0 R1 1
        8 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
       10 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
       12 DIVK                             R3 R4 K1 [2]
       13 SUB                              R1 R2 R3
       14 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
       16 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
       18 DIVK                             R4 R5 K1 [2]
       19 ADD                              R2 R3 R4
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K3 ["getMouse"]
       23 CALL                             R3 0 1
       24 GETTABLEKS                       R4 R3 K4 ["X"]
       26 GETTABLEKS                       R5 R3 K5 ["Y"]
       28 GETTABLEKS                       R6 R1 K4 ["X"]
       30 JUMPIFLT                         R4 R6 ; [+5]
       32 GETTABLEKS                       R6 R2 K4 ["X"]
       34 JUMPIFNOTLT                      R6 R4 ; [+3]
       36 LOADB                            R6 0
       37 RETURN                           R6 1
       38 LOADB                            R6 0
       39 GETTABLEKS                       R7 R1 K5 ["Y"]
       41 JUMPIFNOTLT                      R7 R5 ; [+7]
       43 GETTABLEKS                       R7 R2 K5 ["Y"]
       45 JUMPIFLT                         R5 R7 ; [+2]
       47 LOADB                            R6 0 +1
       48 LOADB                            R6 1
       49 RETURN                           R6 1

PROTO_72:
        0 LOADN                            R2 1
        1 LOADN                            R0 13
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 GETTABLEN                        R3 R4 2
        7 GETUPVAL                         R7 0
        8 GETTABLE                         R6 R7 R2
        9 GETTABLEN                        R5 R6 5
       10 GETTABLEN                        R4 R5 1
       11 SETTABLEKS                       R4 R3 K0 ["Color3"]
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R2
       15 GETTABLEN                        R3 R4 2
       16 GETUPVAL                         R7 0
       17 GETTABLE                         R6 R7 R2
       18 GETTABLEN                        R5 R6 5
       19 GETTABLEN                        R4 R5 2
       20 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       22 GETUPVAL                         R4 1
       23 GETTABLE                         R3 R4 R2
       24 JUMPIFNOT                        R3 ; [+15]
       25 GETUPVAL                         R4 1
       26 GETTABLE                         R3 R4 R2
       27 GETIMPORT                        R4 K3 [Color3.new]
       29 LOADN                            R5 0
       30 LOADN                            R6 0
       31 LOADN                            R7 0
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K0 ["Color3"]
       35 GETUPVAL                         R4 1
       36 GETTABLE                         R3 R4 R2
       37 LOADK                            R4 K4 [0.7]
       38 SETTABLEKS                       R4 R3 K1 ["Transparency"]
       40 FORNLOOP                         R0
       41 GETUPVAL                         R0 2
       42 CALL                             R0 0 0
       43 GETUPVAL                         R2 0
       44 GETTABLEN                        R1 R2 11
       45 GETTABLEN                        R0 R1 1
       46 LOADB                            R1 0
       47 SETTABLEKS                       R1 R0 K5 ["Visible"]
       49 GETUPVAL                         R2 0
       50 GETTABLEN                        R1 R2 11
       51 GETTABLEN                        R0 R1 2
       52 LOADB                            R1 0
       53 SETTABLEKS                       R1 R0 K5 ["Visible"]
       55 GETUPVAL                         R1 1
       56 GETTABLEN                        R0 R1 11
       57 JUMPIFNOT                        R0 ; [+5]
       58 GETUPVAL                         R1 1
       59 GETTABLEN                        R0 R1 11
       60 LOADB                            R1 0
       61 SETTABLEKS                       R1 R0 K5 ["Visible"]
       63 GETUPVAL                         R2 0
       64 GETTABLEN                        R1 R2 12
       65 GETTABLEN                        R0 R1 1
       66 LOADB                            R1 0
       67 SETTABLEKS                       R1 R0 K5 ["Visible"]
       69 GETUPVAL                         R2 0
       70 GETTABLEN                        R1 R2 12
       71 GETTABLEN                        R0 R1 2
       72 LOADB                            R1 0
       73 SETTABLEKS                       R1 R0 K5 ["Visible"]
       75 GETUPVAL                         R1 1
       76 GETTABLEN                        R0 R1 12
       77 JUMPIFNOT                        R0 ; [+5]
       78 GETUPVAL                         R1 1
       79 GETTABLEN                        R0 R1 12
       80 LOADB                            R1 0
       81 SETTABLEKS                       R1 R0 K5 ["Visible"]
       83 GETUPVAL                         R2 0
       84 GETTABLEN                        R1 R2 13
       85 GETTABLEN                        R0 R1 1
       86 LOADB                            R1 0
       87 SETTABLEKS                       R1 R0 K5 ["Visible"]
       89 GETUPVAL                         R2 0
       90 GETTABLEN                        R1 R2 13
       91 GETTABLEN                        R0 R1 2
       92 LOADB                            R1 0
       93 SETTABLEKS                       R1 R0 K5 ["Visible"]
       95 GETUPVAL                         R1 1
       96 GETTABLEN                        R0 R1 13
       97 JUMPIFNOT                        R0 ; [+5]
       98 GETUPVAL                         R1 1
       99 GETTABLEN                        R0 R1 13
      100 LOADB                            R1 0
      101 SETTABLEKS                       R1 R0 K5 ["Visible"]
      103 GETUPVAL                         R2 0
      104 GETTABLEN                        R1 R2 1
      105 GETTABLEN                        R0 R1 1
      106 LOADB                            R1 0
      107 SETTABLEKS                       R1 R0 K5 ["Visible"]
      109 GETUPVAL                         R2 0
      110 GETTABLEN                        R1 R2 1
      111 GETTABLEN                        R0 R1 2
      112 LOADB                            R1 0
      113 SETTABLEKS                       R1 R0 K5 ["Visible"]
      115 GETUPVAL                         R1 1
      116 GETTABLEN                        R0 R1 1
      117 JUMPIFNOT                        R0 ; [+5]
      118 GETUPVAL                         R1 1
      119 GETTABLEN                        R0 R1 1
      120 LOADB                            R1 0
      121 SETTABLEKS                       R1 R0 K5 ["Visible"]
      123 GETUPVAL                         R0 3
      124 LOADB                            R1 0
      125 CALL                             R0 1 0
      126 NEWTABLE                         R0 0 0
      128 SETUPVAL                         R0 4
      129 LOADN                            R0 0
      130 SETUPVAL                         R0 5
      131 LOADB                            R0 0
      132 SETUPVAL                         R0 6
      133 LOADB                            R0 0
      134 SETUPVAL                         R0 7
      135 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Metapart"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R4 K3 [script]
       14 GETTABLEKS                       R3 R4 K4 ["Parent"]
       16 GETTABLEKS                       R2 R3 K6 ["Input"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R5 K3 [script]
       23 GETTABLEKS                       R4 R5 K4 ["Parent"]
       25 GETTABLEKS                       R3 R4 K7 ["Utility"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R6 K3 [script]
       32 GETTABLEKS                       R5 R6 K4 ["Parent"]
       34 GETTABLEKS                       R4 R5 K8 ["RecyclingBin"]
       36 CALL                             R3 1 1
       37 NEWTABLE                         R4 0 0
       39 NEWTABLE                         R5 0 0
       41 NEWTABLE                         R6 0 4
       43 GETIMPORT                        R7 K10 [game]
       45 LOADK                            R9 K11 ["CoreGui"]
       46 NAMECALL                         R7 R7 K12 ["GetService"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K15 [Instance.new]
       51 LOADK                            R9 K16 ["Folder"]
       52 MOVE                             R10 R7
       53 CALL                             R8 2 1
       54 LOADK                            R9 K17 ["TransformTempAdornments"]
       55 SETTABLEKS                       R9 R8 K18 ["Name"]
       57 LOADB                            R9 0
       58 LOADNIL                          R10
       59 LOADNIL                          R11
       60 LOADNIL                          R12
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 LOADNIL                          R15
       64 LOADNIL                          R16
       65 LOADNIL                          R17
       66 LOADNIL                          R18
       67 NEWTABLE                         R19 0 6
       69 NEWTABLE                         R20 0 4
       71 NEWTABLE                         R21 0 1
       73 NEWTABLE                         R22 0 0
       75 NEWTABLE                         R23 0 3
       77 LOADB                            R24 0
       78 LOADB                            R25 0
       79 LOADB                            R26 0
       80 LOADN                            R27 0
       81 LOADB                            R28 0
       82 NEWTABLE                         R29 0 1
       84 LOADN                            R30 0
       85 NEWTABLE                         R31 0 0
       87 LOADN                            R32 1
       88 DUPCLOSURE                       R33 K19 [PROTO_0]
       89 DUPCLOSURE                       R34 K20 [PROTO_1]
       90 GETIMPORT                        R35 K15 [Instance.new]
       92 LOADK                            R36 K16 ["Folder"]
       93 MOVE                             R37 R8
       94 CALL                             R35 2 1
       95 LOADK                            R36 K21 ["Rotation"]
       96 SETTABLEKS                       R36 R35 K18 ["Name"]
       98 DUPCLOSURE                       R36 K22 [PROTO_2]
       99 CAPTURE                          VAL R35
      100 CAPTURE                          VAL R3
      101 NEWCLOSURE                       R37 P3
      102 CAPTURE                          VAL R35
      103 CAPTURE                          VAL R3
      104 CAPTURE                          REF R25
      105 CAPTURE                          REF R11
      106 LOADNIL                          R38
      107 LOADNIL                          R39
      108 LOADNIL                          R40
      109 NEWCLOSURE                       R41 P4
      110 CAPTURE                          REF R24
      111 CAPTURE                          REF R22
      112 CAPTURE                          REF R25
      113 CAPTURE                          REF R38
      114 CAPTURE                          REF R39
      115 CAPTURE                          REF R40
      116 NEWCLOSURE                       R42 P5
      117 CAPTURE                          REF R21
      118 LOADB                            R43 0
      119 LOADB                            R44 0
      120 NEWCLOSURE                       R45 P6
      121 CAPTURE                          REF R31
      122 CAPTURE                          REF R4
      123 CAPTURE                          VAL R1
      124 CAPTURE                          REF R30
      125 CAPTURE                          REF R44
      126 CAPTURE                          REF R26
      127 CAPTURE                          REF R28
      128 CAPTURE                          REF R5
      129 NEWCLOSURE                       R46 P7
      130 CAPTURE                          REF R4
      131 CAPTURE                          REF R5
      132 NEWCLOSURE                       R47 P8
      133 CAPTURE                          REF R31
      134 CAPTURE                          REF R30
      135 CAPTURE                          REF R44
      136 CAPTURE                          VAL R1
      137 CAPTURE                          REF R26
      138 CAPTURE                          REF R4
      139 CAPTURE                          REF R5
      140 CAPTURE                          VAL R45
      141 NEWCLOSURE                       R48 P9
      142 CAPTURE                          REF R43
      143 NEWCLOSURE                       R49 P10
      144 CAPTURE                          REF R30
      145 CAPTURE                          REF R43
      146 CAPTURE                          REF R28
      147 DUPCLOSURE                       R50 K23 [PROTO_12]
      148 CAPTURE                          VAL R7
      149 DUPCLOSURE                       R51 K24 [PROTO_13]
      150 CAPTURE                          VAL R7
      151 DUPCLOSURE                       R52 K25 [PROTO_14]
      152 CAPTURE                          VAL R7
      153 GETIMPORT                        R53 K27 [Color3.new]
      155 LOADK                            R54 K28 [0.149019607843137]
      156 LOADK                            R55 K29 [0.533333333333333]
      157 LOADK                            R56 K30 [0.941176470588235]
      158 CALL                             R53 3 1
      159 GETIMPORT                        R54 K27 [Color3.new]
      161 LOADK                            R55 K31 [0.0823529411764706]
      162 LOADK                            R56 K32 [0.101960784313725]
      163 LOADK                            R57 K33 [0.349019607843137]
      164 CALL                             R54 3 1
      165 GETIMPORT                        R55 K27 [Color3.new]
      167 LOADN                            R56 0
      168 LOADN                            R57 0
      169 LOADN                            R58 0
      170 CALL                             R55 3 1
      171 GETIMPORT                        R56 K27 [Color3.new]
      173 LOADN                            R57 1
      174 LOADN                            R58 1
      175 LOADN                            R59 1
      176 CALL                             R56 3 1
      177 GETIMPORT                        R57 K27 [Color3.new]
      179 LOADK                            R58 K34 [0.937254901960784]
      180 LOADK                            R59 K35 [0.901960784313726]
      181 LOADK                            R60 K36 [0.250980392156863]
      182 CALL                             R57 3 1
      183 GETIMPORT                        R58 K27 [Color3.new]
      185 LOADK                            R59 K37 [0.72156862745098]
      186 LOADK                            R60 K37 [0.72156862745098]
      187 LOADK                            R61 K37 [0.72156862745098]
      188 CALL                             R58 3 1
      189 DUPCLOSURE                       R59 K38 [PROTO_15]
      190 LOADNIL                          R60
      191 LOADNIL                          R61
      192 LOADNIL                          R62
      193 GETIMPORT                        R63 K10 [game]
      195 LOADK                            R65 K39 ["NextGenDraggersEnabledFeature"]
      196 NAMECALL                         R63 R63 K40 ["GetEngineFeature"]
      198 CALL                             R63 2 1
      199 JUMPIFNOT                        R63 ; [+16]
      200 GETIMPORT                        R63 K42 [Color3.fromHex]
      202 LOADK                            R64 K43 ["#E23D3D"]
      203 CALL                             R63 1 1
      204 MOVE                             R60 R63
      205 GETIMPORT                        R63 K42 [Color3.fromHex]
      207 LOADK                            R64 K44 ["#7EED42"]
      208 CALL                             R63 1 1
      209 MOVE                             R61 R63
      210 GETIMPORT                        R63 K42 [Color3.fromHex]
      212 LOADK                            R64 K45 ["#219AEC"]
      213 CALL                             R63 1 1
      214 MOVE                             R62 R63
      215 JUMP                             ; [+21]
      216 GETIMPORT                        R63 K27 [Color3.new]
      218 LOADN                            R64 0
      219 LOADK                            R65 K46 [0.635294117647059]
      220 LOADN                            R66 1
      221 CALL                             R63 3 1
      222 MOVE                             R62 R63
      223 GETIMPORT                        R63 K27 [Color3.new]
      225 LOADK                            R64 K47 [0.247058823529412]
      226 LOADK                            R65 K48 [0.776470588235294]
      227 LOADK                            R66 K49 [0.474509803921569]
      228 CALL                             R63 3 1
      229 MOVE                             R61 R63
      230 GETIMPORT                        R63 K27 [Color3.new]
      232 LOADK                            R64 K50 [0.886274509803922]
      233 LOADK                            R65 K51 [0.137254901960784]
      234 LOADK                            R66 K32 [0.101960784313725]
      235 CALL                             R63 3 1
      236 MOVE                             R60 R63
      237 GETIMPORT                        R64 K54 [BrickColor.Red]
      239 CALL                             R64 0 1
      240 GETTABLEKS                       R63 R64 K55 ["Color"]
      242 NEWCLOSURE                       R64 P15
      243 CAPTURE                          VAL R7
      244 CAPTURE                          VAL R55
      245 CAPTURE                          VAL R45
      246 CAPTURE                          VAL R47
      247 CAPTURE                          REF R4
      248 CAPTURE                          REF R5
      249 NEWCLOSURE                       R65 P16
      250 CAPTURE                          VAL R64
      251 CAPTURE                          VAL R63
      252 CAPTURE                          VAL R57
      253 CAPTURE                          VAL R54
      254 CAPTURE                          VAL R56
      255 CAPTURE                          REF R62
      256 CAPTURE                          REF R61
      257 CAPTURE                          REF R60
      258 CAPTURE                          REF R12
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R55
      261 CAPTURE                          REF R31
      262 CAPTURE                          REF R4
      263 CAPTURE                          VAL R1
      264 CAPTURE                          REF R30
      265 CAPTURE                          REF R44
      266 CAPTURE                          REF R26
      267 CAPTURE                          VAL R47
      268 CAPTURE                          REF R43
      269 CAPTURE                          REF R28
      270 CAPTURE                          VAL R58
      271 CAPTURE                          VAL R23
      272 CAPTURE                          REF R11
      273 CAPTURE                          REF R13
      274 CAPTURE                          REF R16
      275 CAPTURE                          REF R14
      276 CAPTURE                          REF R17
      277 CAPTURE                          REF R15
      278 CAPTURE                          REF R18
      279 CAPTURE                          REF R19
      280 CAPTURE                          REF R21
      281 CAPTURE                          REF R20
      282 CAPTURE                          REF R29
      283 CAPTURE                          REF R22
      284 CAPTURE                          REF R6
      285 CAPTURE                          REF R9
      286 NEWCLOSURE                       R66 P17
      287 CAPTURE                          REF R4
      288 CAPTURE                          REF R5
      289 DUPCLOSURE                       R67 K56 [PROTO_31]
      290 DUPCLOSURE                       R68 K57 [PROTO_32]
      291 NEWCLOSURE                       R69 P20
      292 CAPTURE                          REF R19
      293 CAPTURE                          REF R20
      294 NEWCLOSURE                       R70 P21
      295 CAPTURE                          REF R19
      296 CAPTURE                          REF R20
      297 NEWCLOSURE                       R71 P22
      298 CAPTURE                          REF R22
      299 NEWCLOSURE                       R72 P23
      300 CAPTURE                          REF R21
      301 NEWCLOSURE                       R73 P24
      302 CAPTURE                          REF R4
      303 CAPTURE                          REF R5
      304 NEWCLOSURE                       R74 P25
      305 CAPTURE                          REF R6
      306 CAPTURE                          REF R4
      307 CAPTURE                          REF R5
      308 CAPTURE                          REF R29
      309 NEWCLOSURE                       R75 P26
      310 CAPTURE                          REF R6
      311 NEWCLOSURE                       R76 P27
      312 CAPTURE                          REF R4
      313 CAPTURE                          REF R5
      314 NEWCLOSURE                       R77 P28
      315 CAPTURE                          REF R4
      316 CAPTURE                          REF R5
      317 NEWCLOSURE                       R78 P29
      318 CAPTURE                          REF R4
      319 CAPTURE                          REF R5
      320 NEWCLOSURE                       R79 P30
      321 CAPTURE                          REF R4
      322 CAPTURE                          REF R5
      323 NEWCLOSURE                       R80 P31
      324 CAPTURE                          REF R4
      325 CAPTURE                          REF R5
      326 NEWCLOSURE                       R81 P32
      327 CAPTURE                          REF R4
      328 CAPTURE                          REF R5
      329 NEWTABLE                         R82 0 0
      331 GETIMPORT                        R83 K15 [Instance.new]
      333 LOADK                            R84 K16 ["Folder"]
      334 MOVE                             R85 R8
      335 CALL                             R83 2 1
      336 LOADK                            R84 K58 ["LineGrid"]
      337 SETTABLEKS                       R84 R83 K18 ["Name"]
      339 DUPCLOSURE                       R84 K59 [PROTO_46]
      340 CAPTURE                          VAL R83
      341 CAPTURE                          VAL R3
      342 DUPCLOSURE                       R85 K60 [PROTO_47]
      343 CAPTURE                          VAL R82
      344 NEWCLOSURE                       R86 P35
      345 CAPTURE                          VAL R82
      346 CAPTURE                          VAL R3
      347 CAPTURE                          VAL R83
      348 CAPTURE                          VAL R2
      349 CAPTURE                          REF R27
      350 CAPTURE                          VAL R58
      351 CAPTURE                          VAL R55
      352 NEWCLOSURE                       R87 P36
      353 CAPTURE                          REF R29
      354 DUPCLOSURE                       R88 K61 [PROTO_50]
      355 CAPTURE                          VAL R87
      356 NEWCLOSURE                       R89 P38
      357 CAPTURE                          REF R10
      358 CAPTURE                          REF R6
      359 CAPTURE                          REF R24
      360 CAPTURE                          VAL R1
      361 CAPTURE                          VAL R83
      362 CAPTURE                          VAL R3
      363 CAPTURE                          REF R38
      364 CAPTURE                          VAL R37
      365 CAPTURE                          REF R39
      366 CAPTURE                          REF R40
      367 CAPTURE                          VAL R82
      368 CAPTURE                          VAL R53
      369 CAPTURE                          VAL R86
      370 CAPTURE                          VAL R88
      371 DUPCLOSURE                       R90 K62 [PROTO_52]
      372 CAPTURE                          VAL R0
      373 NEWCLOSURE                       R91 P40
      374 CAPTURE                          REF R9
      375 CAPTURE                          REF R4
      376 CAPTURE                          VAL R1
      377 CAPTURE                          REF R5
      378 CAPTURE                          REF R6
      379 CAPTURE                          REF R29
      380 CAPTURE                          VAL R78
      381 CAPTURE                          VAL R83
      382 CAPTURE                          VAL R3
      383 CAPTURE                          REF R30
      384 CAPTURE                          REF R28
      385 CAPTURE                          REF R32
      386 CAPTURE                          VAL R23
      387 CAPTURE                          VAL R90
      388 CAPTURE                          REF R26
      389 CAPTURE                          REF R27
      390 CAPTURE                          VAL R2
      391 CAPTURE                          VAL R55
      392 CAPTURE                          VAL R56
      393 CAPTURE                          REF R62
      394 CAPTURE                          VAL R89
      395 NEWCLOSURE                       R92 P41
      396 CAPTURE                          REF R4
      397 CAPTURE                          REF R30
      398 NEWCLOSURE                       R93 P42
      399 CAPTURE                          REF R10
      400 NEWCLOSURE                       R94 P43
      401 CAPTURE                          REF R30
      402 NEWCLOSURE                       R95 P44
      403 CAPTURE                          REF R30
      404 NEWCLOSURE                       R96 P45
      405 CAPTURE                          VAL R34
      406 CAPTURE                          REF R20
      407 CAPTURE                          REF R19
      408 CAPTURE                          VAL R33
      409 CAPTURE                          REF R13
      410 CAPTURE                          REF R14
      411 CAPTURE                          REF R15
      412 NEWCLOSURE                       R97 P46
      413 CAPTURE                          VAL R34
      414 CAPTURE                          REF R20
      415 CAPTURE                          REF R19
      416 CAPTURE                          VAL R33
      417 CAPTURE                          REF R16
      418 CAPTURE                          REF R17
      419 CAPTURE                          REF R18
      420 NEWCLOSURE                       R98 P47
      421 CAPTURE                          REF R25
      422 CAPTURE                          VAL R41
      423 CAPTURE                          REF R22
      424 CAPTURE                          VAL R33
      425 CAPTURE                          REF R13
      426 CAPTURE                          REF R14
      427 CAPTURE                          REF R15
      428 NEWCLOSURE                       R99 P48
      429 CAPTURE                          VAL R42
      430 CAPTURE                          REF R21
      431 NEWCLOSURE                       R100 P49
      432 CAPTURE                          REF R13
      433 CAPTURE                          REF R16
      434 CAPTURE                          REF R19
      435 CAPTURE                          REF R20
      436 CAPTURE                          REF R22
      437 CAPTURE                          REF R21
      438 CAPTURE                          VAL R35
      439 CAPTURE                          VAL R3
      440 CAPTURE                          REF R24
      441 NEWCLOSURE                       R101 P50
      442 CAPTURE                          REF R4
      443 CAPTURE                          REF R5
      444 CAPTURE                          VAL R78
      445 NEWCLOSURE                       R102 P51
      446 CAPTURE                          REF R5
      447 NEWCLOSURE                       R103 P52
      448 CAPTURE                          REF R28
      449 NEWCLOSURE                       R104 P53
      450 CAPTURE                          REF R28
      451 CAPTURE                          REF R26
      452 NEWCLOSURE                       R105 P54
      453 CAPTURE                          REF R9
      454 CAPTURE                          REF R4
      455 CAPTURE                          REF R5
      456 CAPTURE                          REF R6
      457 CAPTURE                          REF R29
      458 CAPTURE                          REF R22
      459 CAPTURE                          REF R19
      460 CAPTURE                          REF R21
      461 CAPTURE                          REF R20
      462 CAPTURE                          REF R12
      463 CAPTURE                          VAL R23
      464 CAPTURE                          REF R11
      465 CAPTURE                          VAL R83
      466 CAPTURE                          VAL R3
      467 DUPCLOSURE                       R106 K63 [PROTO_68]
      468 NEWCLOSURE                       R107 P56
      469 CAPTURE                          VAL R100
      470 CAPTURE                          REF R44
      471 CAPTURE                          REF R30
      472 CAPTURE                          REF R26
      473 CAPTURE                          REF R4
      474 CAPTURE                          REF R5
      475 CAPTURE                          REF R31
      476 CAPTURE                          REF R28
      477 NEWCLOSURE                       R108 P57
      478 CAPTURE                          REF R32
      479 NEWCLOSURE                       R109 P58
      480 CAPTURE                          REF R31
      481 CAPTURE                          REF R4
      482 CAPTURE                          VAL R1
      483 NEWCLOSURE                       R110 P59
      484 CAPTURE                          REF R4
      485 CAPTURE                          REF R5
      486 CAPTURE                          VAL R107
      487 CAPTURE                          VAL R78
      488 CAPTURE                          REF R31
      489 CAPTURE                          REF R30
      490 CAPTURE                          REF R44
      491 CAPTURE                          REF R28
      492 NEWTABLE                         R111 32 0
      494 SETTABLEKS                       R65 R111 K64 ["initializeAdorns"]
      496 SETTABLEKS                       R105 R111 K65 ["destroyAdorns"]
      498 SETTABLEKS                       R77 R111 K66 ["adornInstanceWithTranslate"]
      500 SETTABLEKS                       R79 R111 K67 ["adornInstanceWithScale"]
      502 SETTABLEKS                       R81 R111 K68 ["adornInstanceWithRotate"]
      504 SETTABLEKS                       R75 R111 K69 ["adornInstanceWithPlane"]
      506 SETTABLEKS                       R91 R111 K70 ["updateAdornmentPositions"]
      508 SETTABLEKS                       R74 R111 K71 ["setPlaneVisibility"]
      510 SETTABLEKS                       R101 R111 K72 ["setAllAdornVisibility"]
      512 SETTABLEKS                       R80 R111 K73 ["setRotateAdornVisibility"]
      514 SETTABLEKS                       R76 R111 K74 ["setTranslateAdornVisibility"]
      516 SETTABLEKS                       R78 R111 K75 ["setScaleAdornVisibility"]
      518 SETTABLEKS                       R92 R111 K76 ["getCurrentAdornment"]
      520 SETTABLEKS                       R96 R111 K77 ["scaleOne"]
      522 SETTABLEKS                       R97 R111 K78 ["scaleTwo"]
      524 SETTABLEKS                       R98 R111 K79 ["showRotate"]
      526 SETTABLEKS                       R100 R111 K80 ["clearExtraAdorns"]
      528 SETTABLEKS                       R47 R111 K81 ["hoverLeaveHandle"]
      530 SETTABLEKS                       R99 R111 K82 ["drawPlaneCenter"]
      532 SETTABLEKS                       R93 R111 K83 ["setWorkplaneAccessor"]
      534 SETTABLEKS                       R102 R111 K84 ["resetShadow"]
      536 SETTABLEKS                       R94 R111 K85 ["getCurrentHandle"]
      538 SETTABLEKS                       R95 R111 K86 ["setCurrentHandle"]
      540 SETTABLEKS                       R103 R111 K87 ["isPlaneSelectingModeOn"]
      542 SETTABLEKS                       R104 R111 K88 ["setPlaneSelectingMode"]
      544 SETTABLEKS                       R90 R111 K89 ["getAdornmentWorldCFrame"]
      546 SETTABLEKS                       R106 R111 K90 ["grabHandle"]
      548 SETTABLEKS                       R107 R111 K91 ["releaseHandle"]
      550 SETTABLEKS                       R109 R111 K92 ["isOverPlaneSelect"]
      552 SETTABLEKS                       R108 R111 K93 ["getYScale"]
      554 SETTABLEKS                       R110 R111 K94 ["resetDragger"]
      556 CLOSEUPVALS                      R4
      557 RETURN                           R111 1

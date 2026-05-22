PROTO_0:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R0 0
        2 SETTABLEKS                       R3 R1 K0 ["Text"]
        4 GETIMPORT                        R5 K3 [UDim2.new]
        6 LOADN                            R6 0
        7 GETTABLEKS                       R7 R1 K4 ["TextBounds"]
        9 GETTABLEKS                       R7 R7 K5 ["X"]
       11 LOADN                            R8 0
       12 GETTABLEKS                       R9 R1 K4 ["TextBounds"]
       14 GETTABLEKS                       R9 R9 K6 ["Y"]
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
       38 GETTABLEKS                       R7 R2 K4 ["TextBounds"]
       40 GETTABLEKS                       R7 R7 K5 ["X"]
       42 LOADN                            R8 0
       43 GETTABLEKS                       R9 R2 K4 ["TextBounds"]
       45 GETTABLEKS                       R9 R9 K6 ["Y"]
       47 CALL                             R5 4 1
       48 SETTABLEKS                       R5 R2 K7 ["Size"]
       50 GETIMPORT                        R5 K3 [UDim2.new]
       52 LOADN                            R6 0
       53 GETTABLEKS                       R8 R1 K4 ["TextBounds"]
       55 GETTABLEKS                       R8 R8 K5 ["X"]
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
       70 GETTABLEKS                       R9 R1 K4 ["TextBounds"]
       72 GETTABLEKS                       R9 R9 K5 ["X"]
       74 GETTABLEKS                       R10 R2 K4 ["TextBounds"]
       76 GETTABLEKS                       R10 R10 K5 ["X"]
       78 ADD                              R8 R9 R10
       79 ADDK                             R7 R8 K13 [7]
       80 LOADN                            R8 0
       81 GETTABLEKS                       R10 R1 K4 ["TextBounds"]
       83 GETTABLEKS                       R10 R10 K6 ["Y"]
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
        7 SUB                              R12 R6 R5
        8 GETTABLEKS                       R12 R12 K3 ["unit"]
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
       24 SUB                              R12 R6 R5
       25 GETTABLEKS                       R12 R12 K3 ["unit"]
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
       41 SUB                              R8 R5 R6
       42 GETTABLEKS                       R8 R8 K5 ["magnitude"]
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
       23 GETIMPORT                        R7 K7 [game]
       25 GETTABLEKS                       R7 R7 K8 ["Workspace"]
       27 GETTABLEKS                       R7 R7 K9 ["CurrentCamera"]
       29 GETTABLEKS                       R7 R7 K10 ["CFrame"]
       31 GETTABLEKS                       R7 R7 K11 ["Position"]
       33 NAMECALL                         R5 R0 K12 ["pointToObjectSpace"]
       35 CALL                             R5 2 1
       36 GETTABLEKS                       R5 R5 K13 ["Z"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R2 R3 R0
        5 GETTABLEN                        R1 R2 2
        6 GETTABLEKS                       R1 R1 K0 ["Visible"]
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["getButtonState"]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["Enum"]
       15 GETTABLEKS                       R2 R2 K3 ["Key"]
       17 GETTABLEKS                       R2 R2 K4 ["MOUSE_BUTTON1"]
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
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R1 R1 K0 ["getButtonState"]
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K1 ["Enum"]
       14 GETTABLEKS                       R2 R2 K2 ["Key"]
       16 GETTABLEKS                       R2 R2 K3 ["MOUSE_BUTTON1"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEN                        R1 R2 14
        5 GETTABLEN                        R0 R1 2
        6 GETTABLEKS                       R0 R0 K0 ["Visible"]
        8 JUMPIFNOT                        R0 ; [+32]
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K1 ["getButtonState"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["Enum"]
       15 GETTABLEKS                       R1 R1 K3 ["Key"]
       17 GETTABLEKS                       R1 R1 K4 ["MOUSE_BUTTON1"]
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
      583 GETIMPORT                        R3 K76 [game]
      585 GETTABLEKS                       R3 R3 K77 ["CoreGui"]
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
       48 GETUPVAL                         R15 3
       49 GETTABLEKS                       R15 R15 K10 ["smoothstep"]
       51 LOADN                            R16 0
       52 LOADN                            R17 1
       53 GETUPVAL                         R18 4
       54 CALL                             R15 3 1
       55 GETUPVAL                         R16 3
       56 GETTABLEKS                       R16 R16 K11 ["colorAdd"]
       58 GETUPVAL                         R17 3
       59 GETTABLEKS                       R17 R17 K12 ["colorMultiply"]
       61 GETUPVAL                         R18 5
       62 MOVE                             R19 R15
       63 CALL                             R17 2 1
       64 GETUPVAL                         R18 3
       65 GETTABLEKS                       R18 R18 K12 ["colorMultiply"]
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
        0 SUB                              R4 R2 R1
        1 GETTABLEKS                       R4 R4 K1 ["magnitude"]
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
        0 GETIMPORT                        R1 K1 [game]
        2 GETTABLEKS                       R1 R1 K2 ["Workspace"]
        4 GETTABLEKS                       R1 R1 K3 ["CurrentCamera"]
        6 GETTABLEKS                       R2 R1 K4 ["ViewportSize"]
        8 GETTABLEKS                       R6 R0 K5 ["p"]
       10 MINUS                            R5 R6
       11 GETTABLEKS                       R6 R1 K6 ["CoordinateFrame"]
       13 GETTABLEKS                       R6 R6 K5 ["p"]
       15 ADD                              R4 R5 R6
       16 GETTABLEKS                       R11 R2 K10 ["x"]
       18 MULK                             R10 R11 K7 [0.5]
       19 GETTABLEKS                       R12 R2 K11 ["y"]
       21 MULK                             R11 R12 K7 [0.5]
       22 NAMECALL                         R8 R1 K12 ["ScreenPointToRay"]
       24 CALL                             R8 3 1
       25 GETTABLEKS                       R8 R8 K13 ["Direction"]
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
       67 SUB                              R13 R8 R11
       68 GETTABLEKS                       R13 R13 K20 ["Magnitude"]
       70 SUB                              R14 R9 R10
       71 GETTABLEKS                       R14 R14 K20 ["Magnitude"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEN                        R2 R3 1
        4 GETTABLEKS                       R2 R2 K0 ["Visible"]
        6 JUMPIF                           R2 ; [+3]
        7 GETUPVAL                         R2 2
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 GETTABLEN                        R2 R3 1
       12 GETTABLEKS                       R2 R2 K1 ["Adornee"]
       14 GETTABLEKS                       R4 R2 K3 ["Size"]
       16 DIVK                             R3 R4 K2 [2]
       17 NEWTABLE                         R4 0 2
       19 NEWTABLE                         R5 0 2
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R6 R6 K4 ["getMouseLocation"]
       24 CALL                             R6 0 1
       25 GETTABLEKS                       R8 R2 K5 ["CFrame"]
       27 LOADN                            R11 0
       28 MINUS                            R12 R1
       29 LOADN                            R13 0
       30 FASTCALL                         VECTOR ; [+2]
       31 GETIMPORT                        R10 K8 [Vector3.new]
       33 CALL                             R10 3 1
       34 NAMECALL                         R8 R8 K9 ["pointToWorldSpace"]
       36 CALL                             R8 2 1
       37 SUB                              R7 R6 R8
       38 GETTABLEKS                       R7 R7 K10 ["Magnitude"]
       40 GETIMPORT                        R11 K11 [CFrame.new]
       42 GETTABLEKS                       R12 R2 K5 ["CFrame"]
       44 MINUS                            R14 R3
       45 NAMECALL                         R12 R12 K9 ["pointToWorldSpace"]
       47 CALL                             R12 2 -1
       48 CALL                             R11 -1 -1
       49 NAMECALL                         R9 R0 K12 ["toObjectSpace"]
       51 CALL                             R9 -1 1
       52 GETTABLEKS                       R9 R9 K13 ["p"]
       54 LOADK                            R10 K14 [{1, 0, 1}]
       55 MUL                              R8 R9 R10
       56 GETIMPORT                        R12 K11 [CFrame.new]
       58 GETTABLEKS                       R13 R2 K5 ["CFrame"]
       60 MOVE                             R15 R3
       61 NAMECALL                         R13 R13 K9 ["pointToWorldSpace"]
       63 CALL                             R13 2 -1
       64 CALL                             R12 -1 -1
       65 NAMECALL                         R10 R0 K12 ["toObjectSpace"]
       67 CALL                             R10 -1 1
       68 GETTABLEKS                       R10 R10 K13 ["p"]
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
      213 GETUPVAL                         R18 1
      214 GETTABLEN                        R17 R18 1
      215 GETTABLEKS                       R17 R17 K1 ["Adornee"]
      217 GETTABLEKS                       R17 R17 K3 ["Size"]
      219 GETTABLEKS                       R17 R17 K40 ["X"]
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
      239 GETUPVAL                         R18 1
      240 GETTABLEN                        R17 R18 1
      241 GETTABLEKS                       R17 R17 K1 ["Adornee"]
      243 GETTABLEKS                       R17 R17 K3 ["Size"]
      245 GETTABLEKS                       R17 R17 K44 ["Z"]
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
      265 GETUPVAL                         R18 1
      266 GETTABLEN                        R17 R18 1
      267 GETTABLEKS                       R17 R17 K1 ["Adornee"]
      269 GETTABLEKS                       R17 R17 K3 ["Size"]
      271 GETTABLEKS                       R17 R17 K44 ["Z"]
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
      291 GETUPVAL                         R18 1
      292 GETTABLEN                        R17 R18 1
      293 GETTABLEKS                       R17 R17 K1 ["Adornee"]
      295 GETTABLEKS                       R17 R17 K3 ["Size"]
      297 GETTABLEKS                       R17 R17 K40 ["X"]
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
      635 MOVE                             R23 R6
      636 NAMECALL                         R21 R0 K57 ["pointToObjectSpace"]
      638 CALL                             R21 2 1
      639 GETTABLEKS                       R21 R21 K62 ["y"]
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
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["convertToPart"]
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
        9 GETUPVAL                         R0 2
       10 GETTABLEKS                       R0 R0 K0 ["getButtonState"]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K1 ["Enum"]
       15 GETTABLEKS                       R1 R1 K2 ["Key"]
       17 GETTABLEKS                       R1 R1 K3 ["MOUSE_BUTTON1"]
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
      171 GETUPVAL                         R4 1
      172 GETTABLEN                        R3 R4 11
      173 GETTABLEN                        R2 R3 1
      174 GETTABLEKS                       R2 R2 K14 ["Adornee"]
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
      416 JUMPIFNOT                        R3 ; [+510]
      417 GETUPVAL                         R4 3
      418 GETTABLEN                        R3 R4 1
      419 LOADB                            R4 0
      420 SETTABLEKS                       R4 R3 K9 ["Visible"]
      422 JUMP                             ; [+504]
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
      548 JUMPIFNOT                        R4 ; [+378]
      549 GETUPVAL                         R5 3
      550 GETTABLE                         R4 R5 R3
      551 LOADB                            R5 1
      552 SETTABLEKS                       R5 R4 K9 ["Visible"]
      554 JUMP                             ; [+372]
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
      641 JUMP                             ; [+285]
      642 GETUPVAL                         R3 9
      643 JUMPIFNOTEQKN                    R3 K32 [14] ; [+283]
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
      728 JUMP                             ; [+198]
      729 GETUPVAL                         R3 10
      730 JUMPIF                           R3 ; [+196]
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
      812 JUMPIFNOTEQKN                    R3 K31 [1] ; [+114]
      814 GETTABLEN                        R3 R1 1
      815 LOADK                            R5 K33 ["BasePart"]
      816 NAMECALL                         R3 R3 K16 ["IsA"]
      818 CALL                             R3 2 1
      819 JUMPIF                           R3 ; [+8]
      820 GETUPVAL                         R3 11
      821 JUMPIFNOT                        R3 ; [+105]
      822 GETTABLEN                        R3 R1 1
      823 LOADK                            R5 K34 ["ProceduralModel"]
      824 NAMECALL                         R3 R3 K16 ["IsA"]
      826 CALL                             R3 2 1
      827 JUMPIFNOT                        R3 ; [+99]
      828 GETUPVAL                         R3 6
      829 LOADB                            R4 1
      830 CALL                             R3 1 0
      831 GETTABLEN                        R3 R1 1
      832 LOADK                            R5 K35 ["Part"]
      833 NAMECALL                         R3 R3 K16 ["IsA"]
      835 CALL                             R3 2 1
      836 JUMPIFNOT                        R3 ; [+90]
      837 GETTABLEN                        R3 R1 1
      838 GETTABLEKS                       R3 R3 K36 ["Shape"]
      840 GETIMPORT                        R4 K39 [Enum.PartType.Ball]
      842 JUMPIFNOTEQ                      R3 R4 ; [+84]
      844 GETUPVAL                         R5 1
      845 GETTABLEN                        R4 R5 11
      846 GETTABLEN                        R3 R4 1
      847 LOADB                            R4 0
      848 SETTABLEKS                       R4 R3 K9 ["Visible"]
      850 GETUPVAL                         R5 1
      851 GETTABLEN                        R4 R5 11
      852 GETTABLEN                        R3 R4 2
      853 LOADB                            R4 0
      854 SETTABLEKS                       R4 R3 K9 ["Visible"]
      856 GETUPVAL                         R4 3
      857 GETTABLEN                        R3 R4 11
      858 JUMPIFNOT                        R3 ; [+5]
      859 GETUPVAL                         R4 3
      860 GETTABLEN                        R3 R4 11
      861 LOADB                            R4 0
      862 SETTABLEKS                       R4 R3 K9 ["Visible"]
      864 GETUPVAL                         R5 1
      865 GETTABLEN                        R4 R5 12
      866 GETTABLEN                        R3 R4 1
      867 LOADB                            R4 0
      868 SETTABLEKS                       R4 R3 K9 ["Visible"]
      870 GETUPVAL                         R5 1
      871 GETTABLEN                        R4 R5 12
      872 GETTABLEN                        R3 R4 2
      873 LOADB                            R4 0
      874 SETTABLEKS                       R4 R3 K9 ["Visible"]
      876 GETUPVAL                         R4 3
      877 GETTABLEN                        R3 R4 12
      878 JUMPIFNOT                        R3 ; [+5]
      879 GETUPVAL                         R4 3
      880 GETTABLEN                        R3 R4 12
      881 LOADB                            R4 0
      882 SETTABLEKS                       R4 R3 K9 ["Visible"]
      884 GETUPVAL                         R5 1
      885 GETTABLEN                        R4 R5 13
      886 GETTABLEN                        R3 R4 1
      887 LOADB                            R4 0
      888 SETTABLEKS                       R4 R3 K9 ["Visible"]
      890 GETUPVAL                         R5 1
      891 GETTABLEN                        R4 R5 13
      892 GETTABLEN                        R3 R4 2
      893 LOADB                            R4 0
      894 SETTABLEKS                       R4 R3 K9 ["Visible"]
      896 GETUPVAL                         R4 3
      897 GETTABLEN                        R3 R4 13
      898 JUMPIFNOT                        R3 ; [+5]
      899 GETUPVAL                         R4 3
      900 GETTABLEN                        R3 R4 13
      901 LOADB                            R4 0
      902 SETTABLEKS                       R4 R3 K9 ["Visible"]
      904 GETUPVAL                         R3 6
      905 LOADB                            R4 0
      906 CALL                             R3 1 0
      907 GETUPVAL                         R5 1
      908 GETTABLEN                        R4 R5 6
      909 GETTABLEN                        R3 R4 1
      910 LOADB                            R4 1
      911 SETTABLEKS                       R4 R3 K9 ["Visible"]
      913 GETUPVAL                         R5 1
      914 GETTABLEN                        R4 R5 6
      915 GETTABLEN                        R3 R4 2
      916 LOADB                            R4 1
      917 SETTABLEKS                       R4 R3 K9 ["Visible"]
      919 GETUPVAL                         R4 3
      920 GETTABLEN                        R3 R4 6
      921 JUMPIFNOT                        R3 ; [+5]
      922 GETUPVAL                         R4 3
      923 GETTABLEN                        R3 R4 6
      924 LOADB                            R4 1
      925 SETTABLEKS                       R4 R3 K9 ["Visible"]
      927 GETUPVAL                         R5 1
      928 GETTABLEN                        R4 R5 11
      929 GETTABLEN                        R3 R4 1
      930 GETTABLEKS                       R3 R3 K14 ["Adornee"]
      932 GETIMPORT                        R4 K5 [game]
      934 GETTABLEKS                       R4 R4 K17 ["Workspace"]
      936 GETTABLEKS                       R4 R4 K40 ["CurrentCamera"]
      938 GETTABLEKS                       R4 R4 K41 ["CoordinateFrame"]
      940 GETTABLEKS                       R4 R4 K42 ["p"]
      942 GETTABLEKS                       R5 R3 K43 ["CFrame"]
      944 MOVE                             R7 R4
      945 NAMECALL                         R5 R5 K44 ["pointToObjectSpace"]
      947 CALL                             R5 2 1
      948 GETTABLEKS                       R5 R5 K45 ["Unit"]
      950 GETTABLEKS                       R9 R5 K46 ["X"]
      952 FASTCALL1                        MATH_ABS R9 ; [+2]
      953 GETIMPORT                        R8 K49 [math.abs]
      955 CALL                             R8 1 1
      956 GETTABLEKS                       R10 R5 K50 ["Y"]
      958 FASTCALL1                        MATH_ABS R10 ; [+2]
      959 GETIMPORT                        R9 K49 [math.abs]
      961 CALL                             R9 1 1
      962 GETTABLEKS                       R11 R5 K51 ["Z"]
      964 FASTCALL1                        MATH_ABS R11 ; [+2]
      965 GETIMPORT                        R10 K49 [math.abs]
      967 CALL                             R10 1 1
      968 FASTCALL                         VECTOR ; [+2]
      969 GETIMPORT                        R7 K54 [Vector3.new]
      971 CALL                             R7 3 1
      972 DIV                              R6 R5 R7
      973 GETTABLEKS                       R9 R6 K46 ["X"]
      975 GETTABLEKS                       R10 R6 K46 ["X"]
      977 JUMPIFNOTEQ                      R9 R10 ; [+4]
      979 GETTABLEKS                       R8 R6 K46 ["X"]
      981 JUMPIF                           R8 ; [+1]
      982 LOADN                            R8 1
      983 GETTABLEKS                       R10 R6 K50 ["Y"]
      985 GETTABLEKS                       R11 R6 K50 ["Y"]
      987 JUMPIFNOTEQ                      R10 R11 ; [+4]
      989 GETTABLEKS                       R9 R6 K50 ["Y"]
      991 JUMPIF                           R9 ; [+1]
      992 LOADN                            R9 1
      993 GETTABLEKS                       R11 R6 K51 ["Z"]
      995 GETTABLEKS                       R12 R6 K51 ["Z"]
      997 JUMPIFNOTEQ                      R11 R12 ; [+4]
      999 GETTABLEKS                       R10 R6 K51 ["Z"]
     1001 JUMPIF                           R10 ; [+1]
     1002 LOADN                            R10 1
     1003 FASTCALL                         VECTOR ; [+2]
     1004 GETIMPORT                        R7 K54 [Vector3.new]
     1006 CALL                             R7 3 1
     1007 MOVE                             R6 R7
     1008 GETUPVAL                         R9 1
     1009 GETTABLEN                        R8 R9 1
     1010 GETTABLEN                        R7 R8 1
     1011 GETTABLEKS                       R7 R7 K14 ["Adornee"]
     1013 GETTABLEKS                       R7 R7 K43 ["CFrame"]
     1015 MOVE                             R9 R4
     1016 NAMECALL                         R7 R7 K44 ["pointToObjectSpace"]
     1018 CALL                             R7 2 1
     1019 GETTABLEKS                       R7 R7 K45 ["Unit"]
     1021 GETTABLEKS                       R11 R7 K46 ["X"]
     1023 FASTCALL1                        MATH_ABS R11 ; [+2]
     1024 GETIMPORT                        R10 K49 [math.abs]
     1026 CALL                             R10 1 1
     1027 GETTABLEKS                       R12 R7 K50 ["Y"]
     1029 FASTCALL1                        MATH_ABS R12 ; [+2]
     1030 GETIMPORT                        R11 K49 [math.abs]
     1032 CALL                             R11 1 1
     1033 GETTABLEKS                       R13 R7 K51 ["Z"]
     1035 FASTCALL1                        MATH_ABS R13 ; [+2]
     1036 GETIMPORT                        R12 K49 [math.abs]
     1038 CALL                             R12 1 1
     1039 FASTCALL                         VECTOR ; [+2]
     1040 GETIMPORT                        R9 K54 [Vector3.new]
     1042 CALL                             R9 3 1
     1043 DIV                              R8 R7 R9
     1044 GETTABLEKS                       R12 R3 K43 ["CFrame"]
     1046 MOVE                             R14 R4
     1047 NAMECALL                         R12 R12 K44 ["pointToObjectSpace"]
     1049 CALL                             R12 2 1
     1050 GETTABLEKS                       R12 R12 K57 ["Magnitude"]
     1052 DIVK                             R11 R12 K56 [15]
     1053 FASTCALL2K                       MATH_MAX R11 K31 ; [+4]
     1055 LOADK                            R12 K31 [1]
     1056 GETIMPORT                        R10 K59 [math.max]
     1058 CALL                             R10 2 1
     1059 MULK                             R9 R10 K55 [0.35]
     1060 JUMPIF                           R0 ; [+133]
     1061 GETUPVAL                         R12 1
     1062 GETTABLEN                        R11 R12 1
     1063 GETTABLEN                        R10 R11 1
     1064 LOADN                            R12 0
     1065 GETTABLEKS                       R13 R8 K50 ["Y"]
     1067 LOADN                            R14 0
     1068 FASTCALL                         VECTOR ; [+2]
     1069 GETIMPORT                        R11 K54 [Vector3.new]
     1071 CALL                             R11 3 1
     1072 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1074 GETUPVAL                         R12 1
     1075 GETTABLEN                        R11 R12 1
     1076 GETTABLEN                        R10 R11 1
     1077 GETIMPORT                        R11 K61 [CFrame.new]
     1079 LOADN                            R13 0
     1080 GETTABLEKS                       R17 R8 K50 ["Y"]
     1082 MUL                              R16 R17 R9
     1083 MULK                             R15 R16 K22 [2]
     1084 DIVK                             R14 R15 K55 [0.35]
     1085 LOADN                            R15 0
     1086 FASTCALL                         VECTOR ; [+2]
     1087 GETIMPORT                        R12 K54 [Vector3.new]
     1089 CALL                             R12 3 1
     1090 LOADN                            R14 0
     1091 GETTABLEKS                       R19 R8 K50 ["Y"]
     1093 MUL                              R18 R19 R9
     1094 MULK                             R17 R18 K22 [2]
     1095 DIVK                             R16 R17 K55 [0.35]
     1096 GETTABLEKS                       R17 R8 K50 ["Y"]
     1098 ADD                              R15 R16 R17
     1099 LOADN                            R16 0
     1100 FASTCALL                         VECTOR ; [+2]
     1101 GETIMPORT                        R13 K54 [Vector3.new]
     1103 CALL                             R13 3 1
     1104 CALL                             R11 2 1
     1105 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1107 GETUPVAL                         R12 1
     1108 GETTABLEN                        R11 R12 1
     1109 GETTABLEN                        R10 R11 2
     1110 LOADN                            R12 0
     1111 GETTABLEKS                       R13 R8 K50 ["Y"]
     1113 LOADN                            R14 0
     1114 FASTCALL                         VECTOR ; [+2]
     1115 GETIMPORT                        R11 K54 [Vector3.new]
     1117 CALL                             R11 3 1
     1118 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1120 GETUPVAL                         R12 1
     1121 GETTABLEN                        R11 R12 1
     1122 GETTABLEN                        R10 R11 2
     1123 GETUPVAL                         R14 1
     1124 GETTABLEN                        R13 R14 1
     1125 GETTABLEN                        R12 R13 1
     1126 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1128 LOADN                            R14 0
     1129 GETUPVAL                         R20 1
     1130 GETTABLEN                        R19 R20 1
     1131 GETTABLEN                        R18 R19 1
     1132 GETTABLEKS                       R18 R18 K62 ["Height"]
     1134 DIVK                             R17 R18 K22 [2]
     1135 GETUPVAL                         R21 1
     1136 GETTABLEN                        R20 R21 1
     1137 GETTABLEN                        R19 R20 2
     1138 GETTABLEKS                       R19 R19 K62 ["Height"]
     1140 DIVK                             R18 R19 K63 [1.75]
     1141 SUB                              R16 R17 R18
     1142 GETTABLEKS                       R17 R8 K50 ["Y"]
     1144 MUL                              R15 R16 R17
     1145 LOADN                            R16 0
     1146 FASTCALL                         VECTOR ; [+2]
     1147 GETIMPORT                        R13 K54 [Vector3.new]
     1149 CALL                             R13 3 1
     1150 ADD                              R11 R12 R13
     1151 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1153 GETTABLEKS                       R10 R6 K50 ["Y"]
     1155 SETUPVAL                         R10 12
     1156 GETUPVAL                         R12 1
     1157 GETTABLEN                        R11 R12 6
     1158 GETTABLEN                        R10 R11 1
     1159 LOADN                            R12 0
     1160 GETTABLEKS                       R13 R6 K50 ["Y"]
     1162 LOADN                            R14 0
     1163 FASTCALL                         VECTOR ; [+2]
     1164 GETIMPORT                        R11 K54 [Vector3.new]
     1166 CALL                             R11 3 1
     1167 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1169 GETUPVAL                         R12 1
     1170 GETTABLEN                        R11 R12 6
     1171 GETTABLEN                        R10 R11 2
     1172 LOADN                            R12 0
     1173 GETTABLEKS                       R13 R6 K50 ["Y"]
     1175 LOADN                            R14 0
     1176 FASTCALL                         VECTOR ; [+2]
     1177 GETIMPORT                        R11 K54 [Vector3.new]
     1179 CALL                             R11 3 1
     1180 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1182 GETUPVAL                         R11 3
     1183 GETTABLEN                        R10 R11 6
     1184 LOADN                            R12 0
     1185 GETTABLEKS                       R13 R6 K50 ["Y"]
     1187 LOADN                            R14 0
     1188 FASTCALL                         VECTOR ; [+2]
     1189 GETIMPORT                        R11 K54 [Vector3.new]
     1191 CALL                             R11 3 1
     1192 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1194 GETUPVAL                         R12 1
     1195 GETTABLEN                        R11 R12 11
     1196 GETTABLEN                        R10 R11 2
     1197 GETTABLEKS                       R12 R6 K46 ["X"]
     1199 GETTABLEKS                       R13 R6 K50 ["Y"]
     1201 GETTABLEKS                       R15 R6 K51 ["Z"]
     1203 MINUS                            R14 R15
     1204 FASTCALL                         VECTOR ; [+2]
     1205 GETIMPORT                        R11 K54 [Vector3.new]
     1207 CALL                             R11 3 1
     1208 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1210 GETUPVAL                         R12 1
     1211 GETTABLEN                        R11 R12 11
     1212 GETTABLEN                        R10 R11 2
     1213 GETIMPORT                        R11 K61 [CFrame.new]
     1215 GETTABLEKS                       R14 R6 K46 ["X"]
     1217 MUL                              R13 R14 R9
     1218 GETTABLEKS                       R15 R6 K50 ["Y"]
     1220 MUL                              R14 R15 R9
     1221 LOADN                            R15 0
     1222 FASTCALL                         VECTOR ; [+2]
     1223 GETIMPORT                        R12 K54 [Vector3.new]
     1225 CALL                             R12 3 1
     1226 GETTABLEKS                       R15 R6 K46 ["X"]
     1228 MUL                              R14 R15 R9
     1229 GETTABLEKS                       R16 R6 K50 ["Y"]
     1231 MUL                              R15 R16 R9
     1232 GETTABLEKS                       R16 R6 K51 ["Z"]
     1234 FASTCALL                         VECTOR ; [+2]
     1235 GETIMPORT                        R13 K54 [Vector3.new]
     1237 CALL                             R13 3 1
     1238 CALL                             R11 2 1
     1239 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1241 GETUPVAL                         R12 1
     1242 GETTABLEN                        R11 R12 11
     1243 GETTABLEN                        R10 R11 2
     1244 GETUPVAL                         R14 1
     1245 GETTABLEN                        R13 R14 11
     1246 GETTABLEN                        R12 R13 2
     1247 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1249 GETIMPORT                        R13 K65 [CFrame.Angles]
     1251 LOADN                            R14 0
     1252 LOADN                            R15 0
     1253 GETTABLEKS                       R20 R6 K46 ["X"]
     1255 LOADN                            R21 0
     1256 JUMPIFNOTLT                      R21 R20 ; [+3]
     1258 LOADK                            R19 K66 [1.5707963267949]
     1259 JUMP                             ; [+1]
     1260 LOADN                            R19 0
     1261 GETTABLEKS                       R21 R6 K50 ["Y"]
     1263 LOADN                            R22 0
     1264 JUMPIFNOTLT                      R22 R21 ; [+3]
     1266 LOADN                            R20 0
     1267 JUMP                             ; [+1]
     1268 LOADK                            R20 K66 [1.5707963267949]
     1269 ADD                              R18 R19 R20
     1270 GETTABLEKS                       R20 R6 K51 ["Z"]
     1272 LOADN                            R21 0
     1273 JUMPIFNOTLT                      R21 R20 ; [+3]
     1275 LOADN                            R19 0
     1276 JUMP                             ; [+8]
     1277 GETTABLEKS                       R20 R6 K50 ["Y"]
     1279 LOADN                            R21 0
     1280 JUMPIFNOTLT                      R21 R20 ; [+3]
     1282 LOADK                            R19 K67 [-1.5707963267949]
     1283 JUMP                             ; [+1]
     1284 LOADK                            R19 K66 [1.5707963267949]
     1285 ADD                              R17 R18 R19
     1286 GETTABLEKS                       R19 R6 K46 ["X"]
     1288 LOADN                            R20 0
     1289 JUMPIFNOTLT                      R20 R19 ; [+3]
     1291 LOADN                            R18 1
     1292 JUMP                             ; [+1]
     1293 LOADN                            R18 255
     1294 MUL                              R16 R17 R18
     1295 CALL                             R13 3 1
     1296 MUL                              R11 R12 R13
     1297 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1299 GETUPVAL                         R11 13
     1300 GETTABLEN                        R10 R11 3
     1301 LOADB                            R11 0
     1302 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1304 GETUPVAL                         R12 1
     1305 GETTABLEN                        R11 R12 11
     1306 GETTABLEN                        R10 R11 1
     1307 LOADB                            R11 0
     1308 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1310 GETUPVAL                         R10 9
     1311 JUMPIFNOTEQKN                    R10 K19 [11] ; [+81]
     1313 GETTABLEKS                       R11 R3 K68 ["Size"]
     1315 GETTABLEKS                       R11 R11 K51 ["Z"]
     1317 ADDK                             R10 R11 K22 [2]
     1318 GETUPVAL                         R12 13
     1319 GETTABLEN                        R11 R12 3
     1320 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1322 GETUPVAL                         R12 13
     1323 GETTABLEN                        R11 R12 3
     1324 GETIMPORT                        R12 K61 [CFrame.new]
     1326 LOADN                            R14 0
     1327 LOADN                            R15 0
     1328 MULK                             R16 R10 K69 [0.5]
     1329 FASTCALL                         VECTOR ; [+2]
     1330 GETIMPORT                        R13 K54 [Vector3.new]
     1332 CALL                             R13 3 1
     1333 CALL                             R12 1 1
     1334 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1336 GETUPVAL                         R12 13
     1337 GETTABLEN                        R11 R12 3
     1338 SETTABLEKS                       R10 R11 K70 ["Length"]
     1340 GETUPVAL                         R12 13
     1341 GETTABLEN                        R11 R12 3
     1342 LOADB                            R12 1
     1343 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1345 JUMPIF                           R0 ; [+47]
     1346 GETUPVAL                         R13 1
     1347 GETTABLEN                        R12 R13 11
     1348 GETTABLEN                        R11 R12 1
     1349 GETUPVAL                         R14 1
     1350 GETTABLEN                        R13 R14 11
     1351 GETTABLEN                        R12 R13 2
     1352 GETTABLEKS                       R12 R12 K60 ["SizeRelativeOffset"]
     1354 SETTABLEKS                       R12 R11 K60 ["SizeRelativeOffset"]
     1356 GETUPVAL                         R13 1
     1357 GETTABLEN                        R12 R13 11
     1358 GETTABLEN                        R11 R12 1
     1359 GETUPVAL                         R14 1
     1360 GETTABLEN                        R13 R14 11
     1361 GETTABLEN                        R12 R13 2
     1362 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1364 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1366 GETUPVAL                         R13 1
     1367 GETTABLEN                        R12 R13 11
     1368 GETTABLEN                        R11 R12 1
     1369 LOADB                            R12 1
     1370 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1372 GETUPVAL                         R13 1
     1373 GETTABLEN                        R12 R13 11
     1374 GETTABLEN                        R11 R12 2
     1375 GETUPVAL                         R15 1
     1376 GETTABLEN                        R14 R15 11
     1377 GETTABLEN                        R13 R14 2
     1378 GETTABLEKS                       R13 R13 K43 ["CFrame"]
     1380 LOADN                            R15 0
     1381 LOADN                            R16 0
     1382 GETTABLEKS                       R19 R6 K51 ["Z"]
     1384 MULK                             R18 R19 K71 [0.075]
     1385 MUL                              R17 R18 R9
     1386 FASTCALL                         VECTOR ; [+2]
     1387 GETIMPORT                        R14 K54 [Vector3.new]
     1389 CALL                             R14 3 1
     1390 ADD                              R12 R13 R14
     1391 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1393 GETUPVAL                         R12 1
     1394 GETTABLEN                        R11 R12 12
     1395 GETTABLEN                        R10 R11 2
     1396 GETTABLEKS                       R12 R6 K46 ["X"]
     1398 GETTABLEKS                       R14 R6 K50 ["Y"]
     1400 MINUS                            R13 R14
     1401 GETTABLEKS                       R14 R6 K51 ["Z"]
     1403 FASTCALL                         VECTOR ; [+2]
     1404 GETIMPORT                        R11 K54 [Vector3.new]
     1406 CALL                             R11 3 1
     1407 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1409 GETUPVAL                         R12 1
     1410 GETTABLEN                        R11 R12 12
     1411 GETTABLEN                        R10 R11 2
     1412 GETIMPORT                        R11 K61 [CFrame.new]
     1414 GETTABLEKS                       R14 R6 K46 ["X"]
     1416 ADDK                             R15 R9 K72 [0.2]
     1417 MUL                              R13 R14 R15
     1418 LOADN                            R14 0
     1419 GETTABLEKS                       R16 R6 K51 ["Z"]
     1421 ADDK                             R17 R9 K72 [0.2]
     1422 MUL                              R15 R16 R17
     1423 FASTCALL                         VECTOR ; [+2]
     1424 GETIMPORT                        R12 K54 [Vector3.new]
     1426 CALL                             R12 3 1
     1427 GETTABLEKS                       R15 R6 K46 ["X"]
     1429 ADDK                             R16 R9 K72 [0.2]
     1430 MUL                              R14 R15 R16
     1431 GETTABLEKS                       R15 R6 K50 ["Y"]
     1433 GETTABLEKS                       R17 R6 K51 ["Z"]
     1435 ADDK                             R18 R9 K72 [0.2]
     1436 MUL                              R16 R17 R18
     1437 FASTCALL                         VECTOR ; [+2]
     1438 GETIMPORT                        R13 K54 [Vector3.new]
     1440 CALL                             R13 3 1
     1441 CALL                             R11 2 1
     1442 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1444 GETUPVAL                         R12 1
     1445 GETTABLEN                        R11 R12 12
     1446 GETTABLEN                        R10 R11 2
     1447 GETUPVAL                         R14 1
     1448 GETTABLEN                        R13 R14 12
     1449 GETTABLEN                        R12 R13 2
     1450 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1452 GETIMPORT                        R13 K65 [CFrame.Angles]
     1454 LOADN                            R14 0
     1455 LOADN                            R15 0
     1456 GETTABLEKS                       R21 R6 K46 ["X"]
     1458 LOADN                            R22 0
     1459 JUMPIFNOTLT                      R22 R21 ; [+3]
     1461 LOADK                            R20 K66 [1.5707963267949]
     1462 JUMP                             ; [+1]
     1463 LOADN                            R20 0
     1464 GETTABLEKS                       R22 R6 K51 ["Z"]
     1466 LOADN                            R23 0
     1467 JUMPIFNOTLT                      R23 R22 ; [+3]
     1469 LOADK                            R21 K66 [1.5707963267949]
     1470 JUMP                             ; [+1]
     1471 LOADN                            R21 0
     1472 ADD                              R19 R20 R21
     1473 GETTABLEKS                       R21 R6 K50 ["Y"]
     1475 LOADN                            R22 0
     1476 JUMPIFNOTLT                      R22 R21 ; [+3]
     1478 LOADN                            R20 0
     1479 JUMP                             ; [+8]
     1480 GETTABLEKS                       R21 R6 K51 ["Z"]
     1482 LOADN                            R22 0
     1483 JUMPIFNOTLT                      R22 R21 ; [+3]
     1485 LOADK                            R20 K67 [-1.5707963267949]
     1486 JUMP                             ; [+1]
     1487 LOADK                            R20 K66 [1.5707963267949]
     1488 ADD                              R18 R19 R20
     1489 GETTABLEKS                       R20 R6 K46 ["X"]
     1491 LOADN                            R21 0
     1492 JUMPIFNOTLT                      R21 R20 ; [+3]
     1494 LOADN                            R19 1
     1495 JUMP                             ; [+1]
     1496 LOADN                            R19 255
     1497 MUL                              R17 R18 R19
     1498 SUBK                             R16 R17 K66 [1.5707963267949]
     1499 CALL                             R13 3 1
     1500 MUL                              R11 R12 R13
     1501 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1503 GETUPVAL                         R11 13
     1504 GETTABLEN                        R10 R11 2
     1505 LOADB                            R11 0
     1506 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1508 GETUPVAL                         R12 1
     1509 GETTABLEN                        R11 R12 12
     1510 GETTABLEN                        R10 R11 1
     1511 LOADB                            R11 0
     1512 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1514 GETUPVAL                         R10 9
     1515 JUMPIFNOTEQKN                    R10 K20 [12] ; [+89]
     1517 GETTABLEKS                       R11 R3 K68 ["Size"]
     1519 GETTABLEKS                       R11 R11 K50 ["Y"]
     1521 ADDK                             R10 R11 K22 [2]
     1522 GETUPVAL                         R12 13
     1523 GETTABLEN                        R11 R12 2
     1524 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1526 GETUPVAL                         R12 13
     1527 GETTABLEN                        R11 R12 2
     1528 GETIMPORT                        R13 K61 [CFrame.new]
     1530 LOADN                            R15 0
     1531 MINUS                            R17 R10
     1532 MULK                             R16 R17 K69 [0.5]
     1533 LOADN                            R17 0
     1534 FASTCALL                         VECTOR ; [+2]
     1535 GETIMPORT                        R14 K54 [Vector3.new]
     1537 CALL                             R14 3 1
     1538 CALL                             R13 1 1
     1539 GETIMPORT                        R14 K65 [CFrame.Angles]
     1541 LOADK                            R15 K66 [1.5707963267949]
     1542 LOADN                            R16 0
     1543 LOADN                            R17 0
     1544 CALL                             R14 3 1
     1545 MUL                              R12 R13 R14
     1546 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1548 GETUPVAL                         R12 13
     1549 GETTABLEN                        R11 R12 2
     1550 SETTABLEKS                       R10 R11 K70 ["Length"]
     1552 GETUPVAL                         R12 13
     1553 GETTABLEN                        R11 R12 2
     1554 LOADB                            R12 1
     1555 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1557 JUMPIF                           R0 ; [+47]
     1558 GETUPVAL                         R13 1
     1559 GETTABLEN                        R12 R13 12
     1560 GETTABLEN                        R11 R12 1
     1561 GETUPVAL                         R14 1
     1562 GETTABLEN                        R13 R14 12
     1563 GETTABLEN                        R12 R13 2
     1564 GETTABLEKS                       R12 R12 K60 ["SizeRelativeOffset"]
     1566 SETTABLEKS                       R12 R11 K60 ["SizeRelativeOffset"]
     1568 GETUPVAL                         R13 1
     1569 GETTABLEN                        R12 R13 12
     1570 GETTABLEN                        R11 R12 1
     1571 GETUPVAL                         R14 1
     1572 GETTABLEN                        R13 R14 12
     1573 GETTABLEN                        R12 R13 2
     1574 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1576 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1578 GETUPVAL                         R13 1
     1579 GETTABLEN                        R12 R13 12
     1580 GETTABLEN                        R11 R12 1
     1581 LOADB                            R12 1
     1582 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1584 GETUPVAL                         R13 1
     1585 GETTABLEN                        R12 R13 12
     1586 GETTABLEN                        R11 R12 2
     1587 GETUPVAL                         R15 1
     1588 GETTABLEN                        R14 R15 12
     1589 GETTABLEN                        R13 R14 2
     1590 GETTABLEKS                       R13 R13 K43 ["CFrame"]
     1592 LOADN                            R15 0
     1593 GETTABLEKS                       R18 R6 K50 ["Y"]
     1595 MULK                             R17 R18 K71 [0.075]
     1596 MUL                              R16 R17 R9
     1597 LOADN                            R17 0
     1598 FASTCALL                         VECTOR ; [+2]
     1599 GETIMPORT                        R14 K54 [Vector3.new]
     1601 CALL                             R14 3 1
     1602 ADD                              R12 R13 R14
     1603 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1605 GETUPVAL                         R12 1
     1606 GETTABLEN                        R11 R12 13
     1607 GETTABLEN                        R10 R11 2
     1608 GETTABLEKS                       R13 R6 K46 ["X"]
     1610 MINUS                            R12 R13
     1611 GETTABLEKS                       R13 R6 K50 ["Y"]
     1613 GETTABLEKS                       R14 R6 K51 ["Z"]
     1615 FASTCALL                         VECTOR ; [+2]
     1616 GETIMPORT                        R11 K54 [Vector3.new]
     1618 CALL                             R11 3 1
     1619 SETTABLEKS                       R11 R10 K60 ["SizeRelativeOffset"]
     1621 GETUPVAL                         R12 1
     1622 GETTABLEN                        R11 R12 13
     1623 GETTABLEN                        R10 R11 2
     1624 GETIMPORT                        R11 K61 [CFrame.new]
     1626 LOADN                            R13 0
     1627 GETTABLEKS                       R15 R6 K50 ["Y"]
     1629 MUL                              R14 R15 R9
     1630 GETTABLEKS                       R16 R6 K51 ["Z"]
     1632 MUL                              R15 R16 R9
     1633 FASTCALL                         VECTOR ; [+2]
     1634 GETIMPORT                        R12 K54 [Vector3.new]
     1636 CALL                             R12 3 1
     1637 GETTABLEKS                       R14 R6 K46 ["X"]
     1639 GETTABLEKS                       R16 R6 K50 ["Y"]
     1641 MUL                              R15 R16 R9
     1642 GETTABLEKS                       R17 R6 K51 ["Z"]
     1644 MUL                              R16 R17 R9
     1645 FASTCALL                         VECTOR ; [+2]
     1646 GETIMPORT                        R13 K54 [Vector3.new]
     1648 CALL                             R13 3 1
     1649 CALL                             R11 2 1
     1650 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1652 GETUPVAL                         R12 1
     1653 GETTABLEN                        R11 R12 13
     1654 GETTABLEN                        R10 R11 2
     1655 GETUPVAL                         R14 1
     1656 GETTABLEN                        R13 R14 13
     1657 GETTABLEN                        R12 R13 2
     1658 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1660 GETIMPORT                        R13 K65 [CFrame.Angles]
     1662 LOADN                            R14 0
     1663 LOADN                            R15 0
     1664 GETTABLEKS                       R20 R6 K51 ["Z"]
     1666 LOADN                            R21 0
     1667 JUMPIFNOTLT                      R21 R20 ; [+3]
     1669 LOADK                            R19 K66 [1.5707963267949]
     1670 JUMP                             ; [+1]
     1671 LOADN                            R19 0
     1672 GETTABLEKS                       R21 R6 K50 ["Y"]
     1674 LOADN                            R22 0
     1675 JUMPIFNOTLT                      R22 R21 ; [+3]
     1677 LOADN                            R20 0
     1678 JUMP                             ; [+1]
     1679 LOADK                            R20 K66 [1.5707963267949]
     1680 ADD                              R18 R19 R20
     1681 GETTABLEKS                       R20 R6 K46 ["X"]
     1683 LOADN                            R21 0
     1684 JUMPIFNOTLT                      R21 R20 ; [+10]
     1686 GETTABLEKS                       R20 R6 K50 ["Y"]
     1688 LOADN                            R21 0
     1689 JUMPIFNOTLT                      R21 R20 ; [+3]
     1691 LOADK                            R19 K67 [-1.5707963267949]
     1692 JUMP                             ; [+3]
     1693 LOADK                            R19 K66 [1.5707963267949]
     1694 JUMP                             ; [+1]
     1695 LOADN                            R19 0
     1696 ADD                              R17 R18 R19
     1697 GETTABLEKS                       R19 R6 K51 ["Z"]
     1699 LOADN                            R20 0
     1700 JUMPIFNOTLT                      R20 R19 ; [+3]
     1702 LOADN                            R18 1
     1703 JUMP                             ; [+1]
     1704 LOADN                            R18 255
     1705 MUL                              R16 R17 R18
     1706 CALL                             R13 3 1
     1707 MUL                              R11 R12 R13
     1708 SETTABLEKS                       R11 R10 K43 ["CFrame"]
     1710 GETUPVAL                         R11 13
     1711 GETTABLEN                        R10 R11 1
     1712 LOADB                            R11 0
     1713 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1715 GETUPVAL                         R12 1
     1716 GETTABLEN                        R11 R12 13
     1717 GETTABLEN                        R10 R11 1
     1718 LOADB                            R11 0
     1719 SETTABLEKS                       R11 R10 K9 ["Visible"]
     1721 GETUPVAL                         R10 9
     1722 JUMPIFNOTEQKN                    R10 K21 [13] ; [+88]
     1724 GETTABLEKS                       R11 R3 K68 ["Size"]
     1726 GETTABLEKS                       R11 R11 K46 ["X"]
     1728 ADDK                             R10 R11 K22 [2]
     1729 GETUPVAL                         R12 13
     1730 GETTABLEN                        R11 R12 1
     1731 SETTABLEKS                       R3 R11 K14 ["Adornee"]
     1733 GETUPVAL                         R12 13
     1734 GETTABLEN                        R11 R12 1
     1735 GETIMPORT                        R13 K61 [CFrame.new]
     1737 MULK                             R15 R10 K69 [0.5]
     1738 LOADN                            R16 0
     1739 LOADN                            R17 0
     1740 FASTCALL                         VECTOR ; [+2]
     1741 GETIMPORT                        R14 K54 [Vector3.new]
     1743 CALL                             R14 3 1
     1744 CALL                             R13 1 1
     1745 GETIMPORT                        R14 K65 [CFrame.Angles]
     1747 LOADN                            R15 0
     1748 LOADK                            R16 K66 [1.5707963267949]
     1749 LOADN                            R17 0
     1750 CALL                             R14 3 1
     1751 MUL                              R12 R13 R14
     1752 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1754 GETUPVAL                         R12 13
     1755 GETTABLEN                        R11 R12 1
     1756 SETTABLEKS                       R10 R11 K70 ["Length"]
     1758 GETUPVAL                         R12 13
     1759 GETTABLEN                        R11 R12 1
     1760 LOADB                            R12 1
     1761 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1763 JUMPIF                           R0 ; [+47]
     1764 GETUPVAL                         R13 1
     1765 GETTABLEN                        R12 R13 13
     1766 GETTABLEN                        R11 R12 1
     1767 GETUPVAL                         R14 1
     1768 GETTABLEN                        R13 R14 13
     1769 GETTABLEN                        R12 R13 2
     1770 GETTABLEKS                       R12 R12 K60 ["SizeRelativeOffset"]
     1772 SETTABLEKS                       R12 R11 K60 ["SizeRelativeOffset"]
     1774 GETUPVAL                         R13 1
     1775 GETTABLEN                        R12 R13 13
     1776 GETTABLEN                        R11 R12 1
     1777 GETUPVAL                         R14 1
     1778 GETTABLEN                        R13 R14 13
     1779 GETTABLEN                        R12 R13 2
     1780 GETTABLEKS                       R12 R12 K43 ["CFrame"]
     1782 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1784 GETUPVAL                         R13 1
     1785 GETTABLEN                        R12 R13 13
     1786 GETTABLEN                        R11 R12 1
     1787 LOADB                            R12 1
     1788 SETTABLEKS                       R12 R11 K9 ["Visible"]
     1790 GETUPVAL                         R13 1
     1791 GETTABLEN                        R12 R13 13
     1792 GETTABLEN                        R11 R12 2
     1793 GETUPVAL                         R15 1
     1794 GETTABLEN                        R14 R15 13
     1795 GETTABLEN                        R13 R14 2
     1796 GETTABLEKS                       R13 R13 K43 ["CFrame"]
     1798 GETTABLEKS                       R17 R6 K46 ["X"]
     1800 MULK                             R16 R17 K71 [0.075]
     1801 MUL                              R15 R16 R9
     1802 LOADN                            R16 0
     1803 LOADN                            R17 0
     1804 FASTCALL                         VECTOR ; [+2]
     1805 GETIMPORT                        R14 K54 [Vector3.new]
     1807 CALL                             R14 3 1
     1808 ADD                              R12 R13 R14
     1809 SETTABLEKS                       R12 R11 K43 ["CFrame"]
     1811 GETIMPORT                        R10 K74 [pairs]
     1813 GETUPVAL                         R11 1
     1814 CALL                             R10 1 3
     1815 FORGPREP_NEXT                    R10
     1816 JUMPIFNOTEQKN                    R13 K32 [14] ; [+2]
     1818 JUMP                             ; [+157]
     1819 GETUPVAL                         R15 14
     1820 GETTABLEN                        R16 R14 2
     1821 CALL                             R15 1 1
     1822 GETTABLEKS                       R15 R15 K42 ["p"]
     1824 GETTABLEN                        R16 R14 1
     1825 LOADK                            R18 K75 ["BoxHandleAdornment"]
     1826 NAMECALL                         R16 R16 K16 ["IsA"]
     1828 CALL                             R16 2 1
     1829 JUMPIFNOT                        R16 ; [+74]
     1830 SUB                              R18 R15 R4
     1831 GETTABLEKS                       R18 R18 K57 ["Magnitude"]
     1833 DIVK                             R17 R18 K30 [10]
     1834 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1836 LOADK                            R18 K31 [1]
     1837 GETIMPORT                        R16 K59 [math.max]
     1839 CALL                             R16 2 1
     1840 GETTABLEN                        R17 R14 1
     1841 GETTABLEN                        R19 R14 6
     1842 MUL                              R18 R19 R16
     1843 SETTABLEKS                       R18 R17 K68 ["Size"]
     1845 GETTABLEN                        R17 R14 2
     1846 GETTABLEN                        R19 R14 7
     1847 MUL                              R18 R19 R16
     1848 SETTABLEKS                       R18 R17 K68 ["Size"]
     1850 GETUPVAL                         R18 3
     1851 GETTABLE                         R17 R18 R13
     1852 JUMPIFNOT                        R17 ; [+6]
     1853 GETUPVAL                         R18 3
     1854 GETTABLE                         R17 R18 R13
     1855 GETTABLEN                        R19 R14 6
     1856 MUL                              R18 R19 R16
     1857 SETTABLEKS                       R18 R17 K68 ["Size"]
     1859 GETUPVAL                         R18 14
     1860 GETTABLEN                        R19 R14 1
     1861 CALL                             R18 1 1
     1862 GETTABLEKS                       R18 R18 K42 ["p"]
     1864 SUB                              R17 R18 R4
     1865 GETIMPORT                        R18 K77 [Ray.new]
     1867 MOVE                             R19 R4
     1868 MOVE                             R20 R17
     1869 CALL                             R18 2 1
     1870 GETIMPORT                        R19 K5 [game]
     1872 GETTABLEKS                       R19 R19 K17 ["Workspace"]
     1874 MOVE                             R21 R18
     1875 NAMECALL                         R19 R19 K78 ["FindPartOnRay"]
     1877 CALL                             R19 2 2
     1878 SUB                              R21 R20 R4
     1879 GETTABLEKS                       R21 R21 K79 ["magnitude"]
     1881 GETTABLEKS                       R23 R17 K79 ["magnitude"]
     1883 SUBK                             R22 R23 K72 [0.2]
     1884 JUMPIFNOTLE                      R22 R21 ; [+10]
     1886 GETTABLEN                        R21 R14 1
     1887 LOADB                            R22 1
     1888 SETTABLEKS                       R22 R21 K80 ["AlwaysOnTop"]
     1890 GETTABLEN                        R21 R14 2
     1891 LOADB                            R22 1
     1892 SETTABLEKS                       R22 R21 K80 ["AlwaysOnTop"]
     1894 JUMP                             ; [+81]
     1895 GETTABLEN                        R21 R14 1
     1896 LOADB                            R22 0
     1897 SETTABLEKS                       R22 R21 K80 ["AlwaysOnTop"]
     1899 GETTABLEN                        R21 R14 2
     1900 LOADB                            R22 0
     1901 SETTABLEKS                       R22 R21 K80 ["AlwaysOnTop"]
     1903 JUMP                             ; [+72]
     1904 GETTABLEN                        R16 R14 1
     1905 LOADK                            R18 K81 ["ConeHandleAdornment"]
     1906 NAMECALL                         R16 R16 K16 ["IsA"]
     1908 CALL                             R16 2 1
     1909 JUMPIFNOT                        R16 ; [+39]
     1910 SUB                              R18 R15 R4
     1911 GETTABLEKS                       R18 R18 K57 ["Magnitude"]
     1913 DIVK                             R17 R18 K56 [15]
     1914 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1916 LOADK                            R18 K31 [1]
     1917 GETIMPORT                        R16 K59 [math.max]
     1919 CALL                             R16 2 1
     1920 GETTABLEN                        R17 R14 1
     1921 GETTABLEN                        R19 R14 6
     1922 GETTABLEKS                       R19 R19 K46 ["X"]
     1924 MUL                              R18 R19 R16
     1925 SETTABLEKS                       R18 R17 K62 ["Height"]
     1927 GETTABLEN                        R17 R14 1
     1928 GETTABLEN                        R19 R14 6
     1929 GETTABLEKS                       R19 R19 K50 ["Y"]
     1931 MUL                              R18 R19 R16
     1932 SETTABLEKS                       R18 R17 K82 ["Radius"]
     1934 GETTABLEN                        R17 R14 2
     1935 GETTABLEN                        R19 R14 7
     1936 GETTABLEKS                       R19 R19 K46 ["X"]
     1938 MUL                              R18 R19 R16
     1939 SETTABLEKS                       R18 R17 K62 ["Height"]
     1941 GETTABLEN                        R17 R14 2
     1942 GETTABLEN                        R19 R14 7
     1943 GETTABLEKS                       R19 R19 K50 ["Y"]
     1945 MUL                              R18 R19 R16
     1946 SETTABLEKS                       R18 R17 K82 ["Radius"]
     1948 JUMP                             ; [+27]
     1949 GETTABLEN                        R16 R14 1
     1950 LOADK                            R18 K83 ["ImageHandleAdornment"]
     1951 NAMECALL                         R16 R16 K16 ["IsA"]
     1953 CALL                             R16 2 1
     1954 JUMPIFNOT                        R16 ; [+21]
     1955 SUB                              R19 R15 R4
     1956 GETTABLEKS                       R19 R19 K57 ["Magnitude"]
     1958 DIVK                             R18 R19 K84 [30]
     1959 ADDK                             R17 R18 K31 [1]
     1960 FASTCALL2K                       MATH_MAX R17 K31 ; [+4]
     1962 LOADK                            R18 K31 [1]
     1963 GETIMPORT                        R16 K59 [math.max]
     1965 CALL                             R16 2 1
     1966 GETTABLEN                        R17 R14 1
     1967 GETTABLEN                        R19 R14 6
     1968 MUL                              R18 R19 R16
     1969 SETTABLEKS                       R18 R17 K68 ["Size"]
     1971 GETTABLEN                        R17 R14 2
     1972 GETTABLEN                        R19 R14 7
     1973 MUL                              R18 R19 R16
     1974 SETTABLEKS                       R18 R17 K68 ["Size"]
     1976 FORGLOOP                         R10 2 ; [-161]
     1978 LOADNIL                          R10
     1979 GETUPVAL                         R11 15
     1980 JUMPIF                           R11 ; [+2]
     1981 GETUPVAL                         R11 10
     1982 JUMPIFNOT                        R11 ; [+22]
     1983 GETUPVAL                         R11 16
     1984 LOADN                            R12 1
     1985 JUMPIFNOTLT                      R11 R12 ; [+40]
     1987 GETUPVAL                         R13 16
     1988 ADDK                             R12 R13 K85 [0.1]
     1989 FASTCALL2K                       MATH_MIN R12 K31 ; [+4]
     1991 LOADK                            R13 K31 [1]
     1992 GETIMPORT                        R11 K87 [math.min]
     1994 CALL                             R11 2 1
     1995 SETUPVAL                         R11 16
     1996 GETUPVAL                         R11 17
     1997 GETTABLEKS                       R11 R11 K88 ["smoothstep"]
     1999 LOADN                            R12 0
     2000 LOADN                            R13 1
     2001 GETUPVAL                         R14 16
     2002 CALL                             R11 3 1
     2003 MOVE                             R10 R11
     2004 JUMP                             ; [+21]
     2005 GETUPVAL                         R11 16
     2006 LOADN                            R12 0
     2007 JUMPIFNOTLT                      R12 R11 ; [+18]
     2009 GETUPVAL                         R13 16
     2010 SUBK                             R12 R13 K85 [0.1]
     2011 FASTCALL2K                       MATH_MAX R12 K89 ; [+4]
     2013 LOADK                            R13 K89 [0]
     2014 GETIMPORT                        R11 K59 [math.max]
     2016 CALL                             R11 2 1
     2017 SETUPVAL                         R11 16
     2018 GETUPVAL                         R11 17
     2019 GETTABLEKS                       R11 R11 K88 ["smoothstep"]
     2021 LOADN                            R12 0
     2022 LOADN                            R13 1
     2023 GETUPVAL                         R14 16
     2024 CALL                             R11 3 1
     2025 MOVE                             R10 R11
     2026 JUMPIFNOT                        R10 ; [+71]
     2027 GETUPVAL                         R11 17
     2028 GETTABLEKS                       R11 R11 K90 ["colorMultiply"]
     2030 GETUPVAL                         R15 1
     2031 GETTABLEN                        R14 R15 14
     2032 GETTABLEN                        R13 R14 4
     2033 GETTABLEN                        R12 R13 1
     2034 MOVE                             R13 R10
     2035 CALL                             R11 2 1
     2036 GETUPVAL                         R12 17
     2037 GETTABLEKS                       R12 R12 K90 ["colorMultiply"]
     2039 GETUPVAL                         R16 1
     2040 GETTABLEN                        R15 R16 14
     2041 GETTABLEN                        R14 R15 5
     2042 GETTABLEN                        R13 R14 1
     2043 SUBRK                            R14 R31 K10 ["ipairs"]
     2044 CALL                             R12 2 1
     2045 GETUPVAL                         R15 1
     2046 GETTABLEN                        R14 R15 14
     2047 GETTABLEN                        R13 R14 2
     2048 GETUPVAL                         R14 17
     2049 GETTABLEKS                       R14 R14 K91 ["colorAdd"]
     2051 MOVE                             R15 R11
     2052 MOVE                             R16 R12
     2053 CALL                             R14 2 1
     2054 SETTABLEKS                       R14 R13 K92 ["ImageColor3"]
     2056 GETUPVAL                         R15 1
     2057 GETTABLEN                        R14 R15 14
     2058 GETTABLEN                        R13 R14 2
     2059 GETUPVAL                         R19 1
     2060 GETTABLEN                        R18 R19 14
     2061 GETTABLEN                        R17 R18 4
     2062 GETTABLEN                        R16 R17 2
     2063 MUL                              R15 R10 R16
     2064 SUBRK                            R17 R31 K10 ["ipairs"]
     2065 GETUPVAL                         R21 1
     2066 GETTABLEN                        R20 R21 14
     2067 GETTABLEN                        R19 R20 5
     2068 GETTABLEN                        R18 R19 2
     2069 MUL                              R16 R17 R18
     2070 ADD                              R14 R15 R16
     2071 SETTABLEKS                       R14 R13 K93 ["ImageTransparency"]
     2073 LOADN                            R15 1
     2074 LOADN                            R13 8
     2075 LOADN                            R14 1
     2076 FORNPREP                         R13
     2077 GETUPVAL                         R17 5
     2078 GETTABLE                         R16 R17 R15
     2079 GETUPVAL                         R17 17
     2080 GETTABLEKS                       R17 R17 K91 ["colorAdd"]
     2082 GETUPVAL                         R18 17
     2083 GETTABLEKS                       R18 R18 K90 ["colorMultiply"]
     2085 GETUPVAL                         R19 18
     2086 MOVE                             R20 R10
     2087 CALL                             R18 2 1
     2088 GETUPVAL                         R19 17
     2089 GETTABLEKS                       R19 R19 K90 ["colorMultiply"]
     2091 GETUPVAL                         R20 19
     2092 SUBRK                            R21 R31 K10 ["ipairs"]
     2093 CALL                             R19 2 -1
     2094 CALL                             R17 -1 1
     2095 SETTABLEKS                       R17 R16 K92 ["ImageColor3"]
     2097 FORNLOOP                         R13
     2098 GETUPVAL                         R11 10
     2099 JUMPIFNOT                        R11 ; [+12]
     2100 GETUPVAL                         R13 1
     2101 GETTABLEN                        R12 R13 14
     2102 GETTABLEN                        R11 R12 2
     2103 GETUPVAL                         R12 20
     2104 SETTABLEKS                       R12 R11 K92 ["ImageColor3"]
     2106 GETUPVAL                         R13 1
     2107 GETTABLEN                        R12 R13 14
     2108 GETTABLEN                        R11 R12 2
     2109 LOADN                            R12 0
     2110 SETTABLEKS                       R12 R11 K93 ["ImageTransparency"]
     2112 GETUPVAL                         R11 21
     2113 CALL                             R11 0 0
     2114 RETURN                           R0 0

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
       15 SUB                              R3 R0 R1
       16 GETTABLEKS                       R3 R3 K0 ["magnitude"]
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
       58 GETIMPORT                        R6 K8 [game]
       60 GETTABLEKS                       R6 R6 K9 ["Workspace"]
       62 GETTABLEKS                       R6 R6 K10 ["CurrentCamera"]
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
       15 SUB                              R3 R0 R1
       16 GETTABLEKS                       R3 R3 K0 ["magnitude"]
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
       58 GETIMPORT                        R6 K8 [game]
       60 GETTABLEKS                       R6 R6 K9 ["Workspace"]
       62 GETTABLEKS                       R6 R6 K10 ["CurrentCamera"]
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
        0 GETTABLEKS                       R6 R0 K0 ["p"]
        2 SUB                              R5 R6 R3
        3 GETTABLEKS                       R5 R5 K1 ["magnitude"]
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
       57 GETIMPORT                        R5 K16 [CFrame.Angles]
       59 LOADN                            R6 0
       60 LOADN                            R7 0
       61 ADDK                             R9 R2 K17 [180]
       62 FASTCALL1                        MATH_RAD R9 ; [+2]
       63 GETIMPORT                        R8 K19 [math.rad]
       65 CALL                             R8 1 1
       66 CALL                             R5 3 1
       67 MUL                              R4 R0 R5
       68 GETIMPORT                        R6 K21 [CFrame.new]
       70 LOADN                            R9 0
       71 LOADN                            R10 0
       72 FASTCALL3                        VECTOR R1 R9 R10
       74 MOVE                             R8 R1
       75 GETIMPORT                        R7 K23 [Vector3.new]
       77 CALL                             R7 3 1
       78 CALL                             R6 1 -1
       79 NAMECALL                         R4 R4 K24 ["toWorldSpace"]
       81 CALL                             R4 -1 1
       82 GETTABLEKS                       R4 R4 K0 ["p"]
       84 GETUPVAL                         R5 4
       85 GETIMPORT                        R6 K26 [game]
       87 GETTABLEKS                       R6 R6 K27 ["Workspace"]
       89 GETTABLEKS                       R6 R6 K28 ["CurrentCamera"]
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
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K3 ["getMouse"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Metapart"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Input"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["Utility"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["RecyclingBin"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["Flags"]
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagTransformProceduralModel"]
       47 CALL                             R4 1 1
       48 MOVE                             R5 R4
       49 CALL                             R5 0 1
       50 NEWTABLE                         R6 0 0
       52 NEWTABLE                         R7 0 0
       54 NEWTABLE                         R8 0 4
       56 GETIMPORT                        R9 K12 [game]
       58 LOADK                            R11 K13 ["CoreGui"]
       59 NAMECALL                         R9 R9 K14 ["GetService"]
       61 CALL                             R9 2 1
       62 GETIMPORT                        R10 K17 [Instance.new]
       64 LOADK                            R11 K18 ["Folder"]
       65 MOVE                             R12 R9
       66 CALL                             R10 2 1
       67 LOADK                            R11 K19 ["TransformTempAdornments"]
       68 SETTABLEKS                       R11 R10 K20 ["Name"]
       70 LOADB                            R11 0
       71 LOADNIL                          R12
       72 LOADNIL                          R13
       73 LOADNIL                          R14
       74 LOADNIL                          R15
       75 LOADNIL                          R16
       76 LOADNIL                          R17
       77 LOADNIL                          R18
       78 LOADNIL                          R19
       79 LOADNIL                          R20
       80 NEWTABLE                         R21 0 6
       82 NEWTABLE                         R22 0 4
       84 NEWTABLE                         R23 0 1
       86 NEWTABLE                         R24 0 0
       88 NEWTABLE                         R25 0 3
       90 LOADB                            R26 0
       91 LOADB                            R27 0
       92 LOADB                            R28 0
       93 LOADN                            R29 0
       94 LOADB                            R30 0
       95 NEWTABLE                         R31 0 1
       97 LOADN                            R32 0
       98 NEWTABLE                         R33 0 0
      100 LOADN                            R34 1
      101 DUPCLOSURE                       R35 K21 [PROTO_0]
      102 DUPCLOSURE                       R36 K22 [PROTO_1]
      103 GETIMPORT                        R37 K17 [Instance.new]
      105 LOADK                            R38 K18 ["Folder"]
      106 MOVE                             R39 R10
      107 CALL                             R37 2 1
      108 LOADK                            R38 K23 ["Rotation"]
      109 SETTABLEKS                       R38 R37 K20 ["Name"]
      111 DUPCLOSURE                       R38 K24 [PROTO_2]
      112 CAPTURE                          VAL R37
      113 CAPTURE                          VAL R3
      114 NEWCLOSURE                       R39 P3
      115 CAPTURE                          VAL R37
      116 CAPTURE                          VAL R3
      117 CAPTURE                          REF R27
      118 CAPTURE                          REF R13
      119 LOADNIL                          R40
      120 LOADNIL                          R41
      121 LOADNIL                          R42
      122 NEWCLOSURE                       R43 P4
      123 CAPTURE                          REF R26
      124 CAPTURE                          REF R24
      125 CAPTURE                          REF R27
      126 CAPTURE                          REF R40
      127 CAPTURE                          REF R41
      128 CAPTURE                          REF R42
      129 NEWCLOSURE                       R44 P5
      130 CAPTURE                          REF R23
      131 LOADB                            R45 0
      132 LOADB                            R46 0
      133 NEWCLOSURE                       R47 P6
      134 CAPTURE                          REF R33
      135 CAPTURE                          REF R6
      136 CAPTURE                          VAL R1
      137 CAPTURE                          REF R32
      138 CAPTURE                          REF R46
      139 CAPTURE                          REF R28
      140 CAPTURE                          REF R30
      141 CAPTURE                          REF R7
      142 NEWCLOSURE                       R48 P7
      143 CAPTURE                          REF R6
      144 CAPTURE                          REF R7
      145 NEWCLOSURE                       R49 P8
      146 CAPTURE                          REF R33
      147 CAPTURE                          REF R32
      148 CAPTURE                          REF R46
      149 CAPTURE                          VAL R1
      150 CAPTURE                          REF R28
      151 CAPTURE                          REF R6
      152 CAPTURE                          REF R7
      153 CAPTURE                          VAL R47
      154 NEWCLOSURE                       R50 P9
      155 CAPTURE                          REF R45
      156 NEWCLOSURE                       R51 P10
      157 CAPTURE                          REF R32
      158 CAPTURE                          REF R45
      159 CAPTURE                          REF R30
      160 DUPCLOSURE                       R52 K25 [PROTO_12]
      161 CAPTURE                          VAL R9
      162 DUPCLOSURE                       R53 K26 [PROTO_13]
      163 CAPTURE                          VAL R9
      164 DUPCLOSURE                       R54 K27 [PROTO_14]
      165 CAPTURE                          VAL R9
      166 GETIMPORT                        R55 K29 [Color3.new]
      168 LOADK                            R56 K30 [0.149019607843137]
      169 LOADK                            R57 K31 [0.533333333333333]
      170 LOADK                            R58 K32 [0.941176470588235]
      171 CALL                             R55 3 1
      172 GETIMPORT                        R56 K29 [Color3.new]
      174 LOADK                            R57 K33 [0.0823529411764706]
      175 LOADK                            R58 K34 [0.101960784313725]
      176 LOADK                            R59 K35 [0.349019607843137]
      177 CALL                             R56 3 1
      178 GETIMPORT                        R57 K29 [Color3.new]
      180 LOADN                            R58 0
      181 LOADN                            R59 0
      182 LOADN                            R60 0
      183 CALL                             R57 3 1
      184 GETIMPORT                        R58 K29 [Color3.new]
      186 LOADN                            R59 1
      187 LOADN                            R60 1
      188 LOADN                            R61 1
      189 CALL                             R58 3 1
      190 GETIMPORT                        R59 K29 [Color3.new]
      192 LOADK                            R60 K36 [0.937254901960784]
      193 LOADK                            R61 K37 [0.901960784313726]
      194 LOADK                            R62 K38 [0.250980392156863]
      195 CALL                             R59 3 1
      196 GETIMPORT                        R60 K29 [Color3.new]
      198 LOADK                            R61 K39 [0.72156862745098]
      199 LOADK                            R62 K39 [0.72156862745098]
      200 LOADK                            R63 K39 [0.72156862745098]
      201 CALL                             R60 3 1
      202 DUPCLOSURE                       R61 K40 [PROTO_15]
      203 LOADNIL                          R62
      204 LOADNIL                          R63
      205 LOADNIL                          R64
      206 GETIMPORT                        R65 K12 [game]
      208 LOADK                            R67 K41 ["NextGenDraggersEnabledFeature"]
      209 NAMECALL                         R65 R65 K42 ["GetEngineFeature"]
      211 CALL                             R65 2 1
      212 JUMPIFNOT                        R65 ; [+43]
      213 GETIMPORT                        R65 K44 [Color3.fromHex]
      215 GETIMPORT                        R66 K47 [string.format]
      217 LOADK                            R67 K48 ["%06X"]
      218 GETIMPORT                        R68 K12 [game]
      220 LOADK                            R70 K49 ["rbxRed"]
      221 NAMECALL                         R68 R68 K50 ["GetFastInt"]
      223 CALL                             R68 2 -1
      224 CALL                             R66 -1 -1
      225 CALL                             R65 -1 1
      226 MOVE                             R62 R65
      227 GETIMPORT                        R65 K44 [Color3.fromHex]
      229 GETIMPORT                        R66 K47 [string.format]
      231 LOADK                            R67 K48 ["%06X"]
      232 GETIMPORT                        R68 K12 [game]
      234 LOADK                            R70 K51 ["rbxGreen"]
      235 NAMECALL                         R68 R68 K50 ["GetFastInt"]
      237 CALL                             R68 2 -1
      238 CALL                             R66 -1 -1
      239 CALL                             R65 -1 1
      240 MOVE                             R63 R65
      241 GETIMPORT                        R65 K44 [Color3.fromHex]
      243 GETIMPORT                        R66 K47 [string.format]
      245 LOADK                            R67 K48 ["%06X"]
      246 GETIMPORT                        R68 K12 [game]
      248 LOADK                            R70 K52 ["rbxBlue"]
      249 NAMECALL                         R68 R68 K50 ["GetFastInt"]
      251 CALL                             R68 2 -1
      252 CALL                             R66 -1 -1
      253 CALL                             R65 -1 1
      254 MOVE                             R64 R65
      255 JUMP                             ; [+21]
      256 GETIMPORT                        R65 K29 [Color3.new]
      258 LOADN                            R66 0
      259 LOADK                            R67 K53 [0.635294117647059]
      260 LOADN                            R68 1
      261 CALL                             R65 3 1
      262 MOVE                             R64 R65
      263 GETIMPORT                        R65 K29 [Color3.new]
      265 LOADK                            R66 K54 [0.247058823529412]
      266 LOADK                            R67 K55 [0.776470588235294]
      267 LOADK                            R68 K56 [0.474509803921569]
      268 CALL                             R65 3 1
      269 MOVE                             R63 R65
      270 GETIMPORT                        R65 K29 [Color3.new]
      272 LOADK                            R66 K57 [0.886274509803922]
      273 LOADK                            R67 K58 [0.137254901960784]
      274 LOADK                            R68 K34 [0.101960784313725]
      275 CALL                             R65 3 1
      276 MOVE                             R62 R65
      277 GETIMPORT                        R65 K61 [BrickColor.Red]
      279 CALL                             R65 0 1
      280 GETTABLEKS                       R65 R65 K62 ["Color"]
      282 NEWCLOSURE                       R66 P15
      283 CAPTURE                          VAL R9
      284 CAPTURE                          VAL R57
      285 CAPTURE                          VAL R47
      286 CAPTURE                          VAL R49
      287 CAPTURE                          REF R6
      288 CAPTURE                          REF R7
      289 NEWCLOSURE                       R67 P16
      290 CAPTURE                          VAL R66
      291 CAPTURE                          VAL R65
      292 CAPTURE                          VAL R59
      293 CAPTURE                          VAL R56
      294 CAPTURE                          VAL R58
      295 CAPTURE                          REF R64
      296 CAPTURE                          REF R63
      297 CAPTURE                          REF R62
      298 CAPTURE                          REF R14
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R57
      301 CAPTURE                          REF R33
      302 CAPTURE                          REF R6
      303 CAPTURE                          VAL R1
      304 CAPTURE                          REF R32
      305 CAPTURE                          REF R46
      306 CAPTURE                          REF R28
      307 CAPTURE                          VAL R49
      308 CAPTURE                          REF R45
      309 CAPTURE                          REF R30
      310 CAPTURE                          VAL R60
      311 CAPTURE                          VAL R25
      312 CAPTURE                          REF R13
      313 CAPTURE                          REF R15
      314 CAPTURE                          REF R18
      315 CAPTURE                          REF R16
      316 CAPTURE                          REF R19
      317 CAPTURE                          REF R17
      318 CAPTURE                          REF R20
      319 CAPTURE                          REF R21
      320 CAPTURE                          REF R23
      321 CAPTURE                          REF R22
      322 CAPTURE                          REF R31
      323 CAPTURE                          REF R24
      324 CAPTURE                          REF R8
      325 CAPTURE                          REF R11
      326 NEWCLOSURE                       R68 P17
      327 CAPTURE                          REF R6
      328 CAPTURE                          REF R7
      329 DUPCLOSURE                       R69 K63 [PROTO_31]
      330 DUPCLOSURE                       R70 K64 [PROTO_32]
      331 NEWCLOSURE                       R71 P20
      332 CAPTURE                          REF R21
      333 CAPTURE                          REF R22
      334 NEWCLOSURE                       R72 P21
      335 CAPTURE                          REF R21
      336 CAPTURE                          REF R22
      337 NEWCLOSURE                       R73 P22
      338 CAPTURE                          REF R24
      339 NEWCLOSURE                       R74 P23
      340 CAPTURE                          REF R23
      341 NEWCLOSURE                       R75 P24
      342 CAPTURE                          REF R6
      343 CAPTURE                          REF R7
      344 NEWCLOSURE                       R76 P25
      345 CAPTURE                          REF R8
      346 CAPTURE                          REF R6
      347 CAPTURE                          REF R7
      348 CAPTURE                          REF R31
      349 NEWCLOSURE                       R77 P26
      350 CAPTURE                          REF R8
      351 NEWCLOSURE                       R78 P27
      352 CAPTURE                          REF R6
      353 CAPTURE                          REF R7
      354 NEWCLOSURE                       R79 P28
      355 CAPTURE                          REF R6
      356 CAPTURE                          REF R7
      357 NEWCLOSURE                       R80 P29
      358 CAPTURE                          REF R6
      359 CAPTURE                          REF R7
      360 NEWCLOSURE                       R81 P30
      361 CAPTURE                          REF R6
      362 CAPTURE                          REF R7
      363 NEWCLOSURE                       R82 P31
      364 CAPTURE                          REF R6
      365 CAPTURE                          REF R7
      366 NEWCLOSURE                       R83 P32
      367 CAPTURE                          REF R6
      368 CAPTURE                          REF R7
      369 NEWTABLE                         R84 0 0
      371 GETIMPORT                        R85 K17 [Instance.new]
      373 LOADK                            R86 K18 ["Folder"]
      374 MOVE                             R87 R10
      375 CALL                             R85 2 1
      376 LOADK                            R86 K65 ["LineGrid"]
      377 SETTABLEKS                       R86 R85 K20 ["Name"]
      379 DUPCLOSURE                       R86 K66 [PROTO_46]
      380 CAPTURE                          VAL R85
      381 CAPTURE                          VAL R3
      382 DUPCLOSURE                       R87 K67 [PROTO_47]
      383 CAPTURE                          VAL R84
      384 NEWCLOSURE                       R88 P35
      385 CAPTURE                          VAL R84
      386 CAPTURE                          VAL R3
      387 CAPTURE                          VAL R85
      388 CAPTURE                          VAL R2
      389 CAPTURE                          REF R29
      390 CAPTURE                          VAL R60
      391 CAPTURE                          VAL R57
      392 NEWCLOSURE                       R89 P36
      393 CAPTURE                          REF R31
      394 DUPCLOSURE                       R90 K68 [PROTO_50]
      395 CAPTURE                          VAL R89
      396 NEWCLOSURE                       R91 P38
      397 CAPTURE                          REF R12
      398 CAPTURE                          REF R8
      399 CAPTURE                          REF R26
      400 CAPTURE                          VAL R1
      401 CAPTURE                          VAL R85
      402 CAPTURE                          VAL R3
      403 CAPTURE                          REF R40
      404 CAPTURE                          VAL R39
      405 CAPTURE                          REF R41
      406 CAPTURE                          REF R42
      407 CAPTURE                          VAL R84
      408 CAPTURE                          VAL R55
      409 CAPTURE                          VAL R88
      410 CAPTURE                          VAL R90
      411 DUPCLOSURE                       R92 K69 [PROTO_52]
      412 CAPTURE                          VAL R0
      413 NEWCLOSURE                       R93 P40
      414 CAPTURE                          REF R11
      415 CAPTURE                          REF R6
      416 CAPTURE                          VAL R1
      417 CAPTURE                          REF R7
      418 CAPTURE                          REF R8
      419 CAPTURE                          REF R31
      420 CAPTURE                          VAL R80
      421 CAPTURE                          VAL R85
      422 CAPTURE                          VAL R3
      423 CAPTURE                          REF R32
      424 CAPTURE                          REF R30
      425 CAPTURE                          VAL R5
      426 CAPTURE                          REF R34
      427 CAPTURE                          VAL R25
      428 CAPTURE                          VAL R92
      429 CAPTURE                          REF R28
      430 CAPTURE                          REF R29
      431 CAPTURE                          VAL R2
      432 CAPTURE                          VAL R57
      433 CAPTURE                          VAL R58
      434 CAPTURE                          REF R64
      435 CAPTURE                          VAL R91
      436 NEWCLOSURE                       R94 P41
      437 CAPTURE                          REF R6
      438 CAPTURE                          REF R32
      439 NEWCLOSURE                       R95 P42
      440 CAPTURE                          REF R12
      441 NEWCLOSURE                       R96 P43
      442 CAPTURE                          REF R32
      443 NEWCLOSURE                       R97 P44
      444 CAPTURE                          REF R32
      445 NEWCLOSURE                       R98 P45
      446 CAPTURE                          VAL R36
      447 CAPTURE                          REF R22
      448 CAPTURE                          REF R21
      449 CAPTURE                          VAL R35
      450 CAPTURE                          REF R15
      451 CAPTURE                          REF R16
      452 CAPTURE                          REF R17
      453 NEWCLOSURE                       R99 P46
      454 CAPTURE                          VAL R36
      455 CAPTURE                          REF R22
      456 CAPTURE                          REF R21
      457 CAPTURE                          VAL R35
      458 CAPTURE                          REF R18
      459 CAPTURE                          REF R19
      460 CAPTURE                          REF R20
      461 NEWCLOSURE                       R100 P47
      462 CAPTURE                          REF R27
      463 CAPTURE                          VAL R43
      464 CAPTURE                          REF R24
      465 CAPTURE                          VAL R35
      466 CAPTURE                          REF R15
      467 CAPTURE                          REF R16
      468 CAPTURE                          REF R17
      469 NEWCLOSURE                       R101 P48
      470 CAPTURE                          VAL R44
      471 CAPTURE                          REF R23
      472 NEWCLOSURE                       R102 P49
      473 CAPTURE                          REF R15
      474 CAPTURE                          REF R18
      475 CAPTURE                          REF R21
      476 CAPTURE                          REF R22
      477 CAPTURE                          REF R24
      478 CAPTURE                          REF R23
      479 CAPTURE                          VAL R37
      480 CAPTURE                          VAL R3
      481 CAPTURE                          REF R26
      482 NEWCLOSURE                       R103 P50
      483 CAPTURE                          REF R6
      484 CAPTURE                          REF R7
      485 CAPTURE                          VAL R80
      486 NEWCLOSURE                       R104 P51
      487 CAPTURE                          REF R7
      488 NEWCLOSURE                       R105 P52
      489 CAPTURE                          REF R30
      490 NEWCLOSURE                       R106 P53
      491 CAPTURE                          REF R30
      492 CAPTURE                          REF R28
      493 NEWCLOSURE                       R107 P54
      494 CAPTURE                          REF R11
      495 CAPTURE                          REF R6
      496 CAPTURE                          REF R7
      497 CAPTURE                          REF R8
      498 CAPTURE                          REF R31
      499 CAPTURE                          REF R24
      500 CAPTURE                          REF R21
      501 CAPTURE                          REF R23
      502 CAPTURE                          REF R22
      503 CAPTURE                          REF R14
      504 CAPTURE                          VAL R25
      505 CAPTURE                          REF R13
      506 CAPTURE                          VAL R85
      507 CAPTURE                          VAL R3
      508 DUPCLOSURE                       R108 K70 [PROTO_68]
      509 NEWCLOSURE                       R109 P56
      510 CAPTURE                          VAL R102
      511 CAPTURE                          REF R46
      512 CAPTURE                          REF R32
      513 CAPTURE                          REF R28
      514 CAPTURE                          REF R6
      515 CAPTURE                          REF R7
      516 CAPTURE                          REF R33
      517 CAPTURE                          REF R30
      518 NEWCLOSURE                       R110 P57
      519 CAPTURE                          REF R34
      520 NEWCLOSURE                       R111 P58
      521 CAPTURE                          REF R33
      522 CAPTURE                          REF R6
      523 CAPTURE                          VAL R1
      524 NEWCLOSURE                       R112 P59
      525 CAPTURE                          REF R6
      526 CAPTURE                          REF R7
      527 CAPTURE                          VAL R109
      528 CAPTURE                          VAL R80
      529 CAPTURE                          REF R33
      530 CAPTURE                          REF R32
      531 CAPTURE                          REF R46
      532 CAPTURE                          REF R30
      533 NEWTABLE                         R113 32 0
      535 SETTABLEKS                       R67 R113 K71 ["initializeAdorns"]
      537 SETTABLEKS                       R107 R113 K72 ["destroyAdorns"]
      539 SETTABLEKS                       R79 R113 K73 ["adornInstanceWithTranslate"]
      541 SETTABLEKS                       R81 R113 K74 ["adornInstanceWithScale"]
      543 SETTABLEKS                       R83 R113 K75 ["adornInstanceWithRotate"]
      545 SETTABLEKS                       R77 R113 K76 ["adornInstanceWithPlane"]
      547 SETTABLEKS                       R93 R113 K77 ["updateAdornmentPositions"]
      549 SETTABLEKS                       R76 R113 K78 ["setPlaneVisibility"]
      551 SETTABLEKS                       R103 R113 K79 ["setAllAdornVisibility"]
      553 SETTABLEKS                       R82 R113 K80 ["setRotateAdornVisibility"]
      555 SETTABLEKS                       R78 R113 K81 ["setTranslateAdornVisibility"]
      557 SETTABLEKS                       R80 R113 K82 ["setScaleAdornVisibility"]
      559 SETTABLEKS                       R94 R113 K83 ["getCurrentAdornment"]
      561 SETTABLEKS                       R98 R113 K84 ["scaleOne"]
      563 SETTABLEKS                       R99 R113 K85 ["scaleTwo"]
      565 SETTABLEKS                       R100 R113 K86 ["showRotate"]
      567 SETTABLEKS                       R102 R113 K87 ["clearExtraAdorns"]
      569 SETTABLEKS                       R49 R113 K88 ["hoverLeaveHandle"]
      571 SETTABLEKS                       R101 R113 K89 ["drawPlaneCenter"]
      573 SETTABLEKS                       R95 R113 K90 ["setWorkplaneAccessor"]
      575 SETTABLEKS                       R104 R113 K91 ["resetShadow"]
      577 SETTABLEKS                       R96 R113 K92 ["getCurrentHandle"]
      579 SETTABLEKS                       R97 R113 K93 ["setCurrentHandle"]
      581 SETTABLEKS                       R105 R113 K94 ["isPlaneSelectingModeOn"]
      583 SETTABLEKS                       R106 R113 K95 ["setPlaneSelectingMode"]
      585 SETTABLEKS                       R92 R113 K96 ["getAdornmentWorldCFrame"]
      587 SETTABLEKS                       R108 R113 K97 ["grabHandle"]
      589 SETTABLEKS                       R109 R113 K98 ["releaseHandle"]
      591 SETTABLEKS                       R111 R113 K99 ["isOverPlaneSelect"]
      593 SETTABLEKS                       R110 R113 K100 ["getYScale"]
      595 SETTABLEKS                       R112 R113 K101 ["resetDragger"]
      597 CLOSEUPVALS                      R6
      598 RETURN                           R113 1

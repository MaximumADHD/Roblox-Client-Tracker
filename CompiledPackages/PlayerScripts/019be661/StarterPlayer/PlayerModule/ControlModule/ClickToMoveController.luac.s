PROTO_0:
        0 GETIMPORT                        R0 K1 [UserSettings]
        2 CALL                             R0 0 1
        3 LOADK                            R2 K2 ["UserExcludeNonCollidableForPathfinding"]
        4 NAMECALL                         R0 R0 K3 ["IsUserFeatureEnabled"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [UserSettings]
        2 CALL                             R0 0 1
        3 LOADK                            R2 K2 ["UserClickToMoveSupportAgentCanClimb2"]
        4 NAMECALL                         R0 R0 K3 ["IsUserFeatureEnabled"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+11]
        1 LOADK                            R3 K0 ["Humanoid"]
        2 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K2 ["Parent"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1
       12 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 GETUPVAL                         R3 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R2
        8 NAMECALL                         R3 R3 K0 ["FindPartOnRayWithIgnoreList"]
       10 CALL                             R3 3 4
       11 JUMPIFNOT                        R3 ; [+39]
       12 JUMPIFNOT                        R1 ; [+37]
       13 GETTABLEKS                       R7 R3 K1 ["CanCollide"]
       15 JUMPIFNOTEQKB                    R7 FALSE ; [+34]
       17 JUMPIFNOT                        R3 ; [+15]
       18 LOADK                            R11 K2 ["Humanoid"]
       19 NAMECALL                         R9 R3 K3 ["FindFirstChildOfClass"]
       21 CALL                             R9 2 1
       22 JUMPIFNOT                        R9 ; [+3]
       23 MOVE                             R7 R3
       24 MOVE                             R8 R9
       25 JUMP                             ; [+9]
       26 GETUPVAL                         R10 1
       27 GETTABLEKS                       R11 R3 K4 ["Parent"]
       29 CALL                             R10 1 2
       30 MOVE                             R7 R10
       31 MOVE                             R8 R11
       32 JUMP                             ; [+2]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 JUMPIFNOTEQKNIL                  R8 ; [+14]
       37 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       39 MOVE                             R10 R2
       40 MOVE                             R11 R3
       41 GETIMPORT                        R9 K7 [table.insert]
       43 CALL                             R9 2 0
       44 GETUPVAL                         R9 2
       45 MOVE                             R10 R0
       46 MOVE                             R11 R1
       47 MOVE                             R12 R2
       48 CALL                             R9 3 -1
       49 RETURN                           R9 -1
       50 RETURN                           R3 4
       51 LOADNIL                          R7
       52 LOADNIL                          R8
       53 RETURN                           R7 2

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETTABLEKS                       R1 R0 K0 ["Character"]
        4 JUMPIFNOT                        R1 ; [+19]
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETTABLEKS                       R3 R2 K1 ["Parent"]
       10 JUMPIFNOTEQ                      R3 R1 ; [+2]
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 0
       14 LOADNIL                          R4
       15 SETTABLE                         R4 R3 R0
       16 LOADK                            R5 K2 ["Humanoid"]
       17 NAMECALL                         R3 R1 K3 ["FindFirstChildOfClass"]
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+2]
       21 GETUPVAL                         R4 0
       22 SETTABLE                         R3 R4 R0
       23 RETURN                           R3 1
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Character"]
        5 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 JUMPIFNOTEQ                      R4 R0 ; [+12]
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R6 0
       11 GETUPVAL                         R8 0
       12 LENGTH                           R7 R8
       13 GETTABLE                         R5 R6 R7
       14 SETTABLE                         R5 R4 R3
       15 GETIMPORT                        R4 K2 [table.remove]
       17 GETUPVAL                         R5 0
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 FORNLOOP                         R1
       21 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K0 ["Disconnect"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 1
       12 GETUPVAL                         R1 2
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 2
       15 NAMECALL                         R1 R1 K0 ["Disconnect"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETUPVAL                         R1 2
       20 SETUPVAL                         R0 0
       21 NEWTABLE                         R1 0 1
       23 GETUPVAL                         R2 4
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R2 R2 K1 ["Character"]
       28 SETLIST                          R1 R2 1 [1]
       30 SETUPVAL                         R1 3
       31 GETUPVAL                         R1 0
       32 JUMPIFEQKNIL                     R1 ; [+42]
       34 GETUPVAL                         R1 5
       35 GETUPVAL                         R3 0
       36 NAMECALL                         R1 R1 K2 ["GetTagged"]
       38 CALL                             R1 2 1
       39 GETIMPORT                        R2 K4 [ipairs]
       41 MOVE                             R3 R1
       42 CALL                             R2 1 3
       43 FORGPREP_INEXT                   R2
       44 GETUPVAL                         R8 3
       45 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       47 MOVE                             R9 R6
       48 GETIMPORT                        R7 K7 [table.insert]
       50 CALL                             R7 2 0
       51 FORGLOOP                         R2 2 [inext] ; [-8]
       53 GETUPVAL                         R2 5
       54 GETUPVAL                         R4 0
       55 NAMECALL                         R2 R2 K8 ["GetInstanceAddedSignal"]
       57 CALL                             R2 2 1
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          UPVAL U3
       60 NAMECALL                         R2 R2 K9 ["Connect"]
       62 CALL                             R2 2 1
       63 SETUPVAL                         R2 1
       64 GETUPVAL                         R2 5
       65 GETUPVAL                         R4 0
       66 NAMECALL                         R2 R2 K10 ["GetInstanceRemovedSignal"]
       68 CALL                             R2 2 1
       69 NEWCLOSURE                       R4 P1
       70 CAPTURE                          UPVAL U3
       71 NAMECALL                         R2 R2 K9 ["Connect"]
       73 CALL                             R2 2 1
       74 SETUPVAL                         R2 2
       75 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 RETURN                           R0 1
        4 NEWTABLE                         R0 0 0
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R1 0
        8 FASTCALL2K                       ASSERT R1 K0 ; [+4]
       10 LOADK                            R2 K0 [""]
       11 GETIMPORT                        R0 K2 [assert]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["Character"]
       20 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       22 GETIMPORT                        R0 K6 [table.insert]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 0
       26 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K0 ["X"]
        4 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [math.min]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R5 R0 K4 ["Y"]
       11 GETTABLEKS                       R6 R1 K4 ["Y"]
       13 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       15 GETIMPORT                        R4 K3 [math.min]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R6 R0 K5 ["Z"]
       20 GETTABLEKS                       R7 R1 K5 ["Z"]
       22 FASTCALL2                        MATH_MIN R6 R7 ; [+3]
       24 GETIMPORT                        R5 K3 [math.min]
       26 CALL                             R5 2 1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K8 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R4 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R1 K0 ["X"]
        4 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
        6 GETIMPORT                        R3 K3 [math.max]
        8 CALL                             R3 2 1
        9 GETTABLEKS                       R5 R0 K4 ["Y"]
       11 GETTABLEKS                       R6 R1 K4 ["Y"]
       13 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       15 GETIMPORT                        R4 K3 [math.max]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R6 R0 K5 ["Z"]
       20 GETTABLEKS                       R7 R1 K5 ["Z"]
       22 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       24 GETIMPORT                        R5 K3 [math.max]
       26 CALL                             R5 2 1
       27 FASTCALL                         VECTOR ; [+2]
       28 GETIMPORT                        R2 K8 [Vector3.new]
       30 CALL                             R2 3 1
       31 RETURN                           R2 1

PROTO_12:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["PrimaryPart"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+2]
        6 RETURN                           R0 0
        7 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K1 [""]
       11 GETIMPORT                        R1 K3 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["PrimaryPart"]
       16 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       18 LOADK                            R3 K1 [""]
       19 GETIMPORT                        R1 K3 [assert]
       21 CALL                             R1 2 0
       22 GETTABLEKS                       R1 R0 K0 ["PrimaryPart"]
       24 GETTABLEKS                       R1 R1 K4 ["CFrame"]
       26 NAMECALL                         R1 R1 K5 ["Inverse"]
       28 CALL                             R1 1 1
       29 LOADK                            R2 K6 [{∞, ∞, ∞}]
       30 LOADK                            R3 K7 [{-∞, -∞, -∞}]
       31 GETIMPORT                        R4 K9 [pairs]
       33 NAMECALL                         R5 R0 K10 ["GetDescendants"]
       35 CALL                             R5 1 -1
       36 CALL                             R4 -1 3
       37 FORGPREP_NEXT                    R4
       38 LOADK                            R11 K11 ["BasePart"]
       39 NAMECALL                         R9 R8 K12 ["IsA"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+195]
       43 GETTABLEKS                       R9 R8 K13 ["CanCollide"]
       45 JUMPIFNOT                        R9 ; [+192]
       46 GETTABLEKS                       R10 R8 K4 ["CFrame"]
       48 MUL                              R9 R1 R10
       49 GETTABLEKS                       R12 R8 K15 ["Size"]
       51 GETTABLEKS                       R12 R12 K16 ["X"]
       53 DIVK                             R11 R12 K14 [2]
       54 GETTABLEKS                       R13 R8 K15 ["Size"]
       56 GETTABLEKS                       R13 R13 K17 ["Y"]
       58 DIVK                             R12 R13 K14 [2]
       59 GETTABLEKS                       R14 R8 K15 ["Size"]
       61 GETTABLEKS                       R14 R14 K18 ["Z"]
       63 DIVK                             R13 R14 K14 [2]
       64 FASTCALL                         VECTOR ; [+2]
       65 GETIMPORT                        R10 K21 [Vector3.new]
       67 CALL                             R10 3 1
       68 NEWTABLE                         R11 0 8
       70 GETTABLEKS                       R13 R10 K16 ["X"]
       72 GETTABLEKS                       R14 R10 K17 ["Y"]
       74 GETTABLEKS                       R15 R10 K18 ["Z"]
       76 FASTCALL                         VECTOR ; [+2]
       77 GETIMPORT                        R12 K21 [Vector3.new]
       79 CALL                             R12 3 1
       80 GETTABLEKS                       R14 R10 K16 ["X"]
       82 GETTABLEKS                       R15 R10 K17 ["Y"]
       84 GETTABLEKS                       R17 R10 K18 ["Z"]
       86 MINUS                            R16 R17
       87 FASTCALL                         VECTOR ; [+2]
       88 GETIMPORT                        R13 K21 [Vector3.new]
       90 CALL                             R13 3 1
       91 GETTABLEKS                       R15 R10 K16 ["X"]
       93 GETTABLEKS                       R17 R10 K17 ["Y"]
       95 MINUS                            R16 R17
       96 GETTABLEKS                       R17 R10 K18 ["Z"]
       98 FASTCALL                         VECTOR ; [+2]
       99 GETIMPORT                        R14 K21 [Vector3.new]
      101 CALL                             R14 3 1
      102 GETTABLEKS                       R16 R10 K16 ["X"]
      104 GETTABLEKS                       R18 R10 K17 ["Y"]
      106 MINUS                            R17 R18
      107 GETTABLEKS                       R19 R10 K18 ["Z"]
      109 MINUS                            R18 R19
      110 FASTCALL                         VECTOR ; [+2]
      111 GETIMPORT                        R15 K21 [Vector3.new]
      113 CALL                             R15 3 1
      114 GETTABLEKS                       R18 R10 K16 ["X"]
      116 MINUS                            R17 R18
      117 GETTABLEKS                       R18 R10 K17 ["Y"]
      119 GETTABLEKS                       R19 R10 K18 ["Z"]
      121 FASTCALL                         VECTOR ; [+2]
      122 GETIMPORT                        R16 K21 [Vector3.new]
      124 CALL                             R16 3 1
      125 GETTABLEKS                       R19 R10 K16 ["X"]
      127 MINUS                            R18 R19
      128 GETTABLEKS                       R19 R10 K17 ["Y"]
      130 GETTABLEKS                       R21 R10 K18 ["Z"]
      132 MINUS                            R20 R21
      133 FASTCALL                         VECTOR ; [+2]
      134 GETIMPORT                        R17 K21 [Vector3.new]
      136 CALL                             R17 3 1
      137 GETTABLEKS                       R20 R10 K16 ["X"]
      139 MINUS                            R19 R20
      140 GETTABLEKS                       R21 R10 K17 ["Y"]
      142 MINUS                            R20 R21
      143 GETTABLEKS                       R21 R10 K18 ["Z"]
      145 FASTCALL                         VECTOR ; [+2]
      146 GETIMPORT                        R18 K21 [Vector3.new]
      148 CALL                             R18 3 1
      149 GETTABLEKS                       R21 R10 K16 ["X"]
      151 MINUS                            R20 R21
      152 GETTABLEKS                       R22 R10 K17 ["Y"]
      154 MINUS                            R21 R22
      155 GETTABLEKS                       R23 R10 K18 ["Z"]
      157 MINUS                            R22 R23
      158 FASTCALL                         VECTOR ; [+2]
      159 GETIMPORT                        R19 K21 [Vector3.new]
      161 CALL                             R19 3 1
      162 SETLIST                          R11 R12 8 [1]
      164 GETIMPORT                        R12 K23 [ipairs]
      166 MOVE                             R13 R11
      167 CALL                             R12 1 3
      168 FORGPREP_INEXT                   R12
      169 MUL                              R17 R9 R16
      170 MOVE                             R18 R2
      171 GETTABLEKS                       R21 R18 K16 ["X"]
      173 GETTABLEKS                       R22 R17 K16 ["X"]
      175 FASTCALL2                        MATH_MIN R21 R22 ; [+3]
      177 GETIMPORT                        R20 K26 [math.min]
      179 CALL                             R20 2 1
      180 GETTABLEKS                       R22 R18 K17 ["Y"]
      182 GETTABLEKS                       R23 R17 K17 ["Y"]
      184 FASTCALL2                        MATH_MIN R22 R23 ; [+3]
      186 GETIMPORT                        R21 K26 [math.min]
      188 CALL                             R21 2 1
      189 GETTABLEKS                       R23 R18 K18 ["Z"]
      191 GETTABLEKS                       R24 R17 K18 ["Z"]
      193 FASTCALL2                        MATH_MIN R23 R24 ; [+3]
      195 GETIMPORT                        R22 K26 [math.min]
      197 CALL                             R22 2 1
      198 FASTCALL                         VECTOR ; [+2]
      199 GETIMPORT                        R19 K21 [Vector3.new]
      201 CALL                             R19 3 1
      202 MOVE                             R2 R19
      203 MOVE                             R18 R3
      204 GETTABLEKS                       R21 R18 K16 ["X"]
      206 GETTABLEKS                       R22 R17 K16 ["X"]
      208 FASTCALL2                        MATH_MAX R21 R22 ; [+3]
      210 GETIMPORT                        R20 K28 [math.max]
      212 CALL                             R20 2 1
      213 GETTABLEKS                       R22 R18 K17 ["Y"]
      215 GETTABLEKS                       R23 R17 K17 ["Y"]
      217 FASTCALL2                        MATH_MAX R22 R23 ; [+3]
      219 GETIMPORT                        R21 K28 [math.max]
      221 CALL                             R21 2 1
      222 GETTABLEKS                       R23 R18 K18 ["Z"]
      224 GETTABLEKS                       R24 R17 K18 ["Z"]
      226 FASTCALL2                        MATH_MAX R23 R24 ; [+3]
      228 GETIMPORT                        R22 K28 [math.max]
      230 CALL                             R22 2 1
      231 FASTCALL                         VECTOR ; [+2]
      232 GETIMPORT                        R19 K21 [Vector3.new]
      234 CALL                             R19 3 1
      235 MOVE                             R3 R19
      236 FORGLOOP                         R12 2 [inext] ; [-68]
      238 FORGLOOP                         R4 2 ; [-201]
      240 SUB                              R4 R3 R2
      241 GETTABLEKS                       R5 R4 K16 ["X"]
      243 LOADN                            R6 0
      244 JUMPIFLT                         R5 R6 ; [+11]
      246 GETTABLEKS                       R5 R4 K17 ["Y"]
      248 LOADN                            R6 0
      249 JUMPIFLT                         R5 R6 ; [+6]
      251 GETTABLEKS                       R5 R4 K18 ["Z"]
      253 LOADN                            R6 0
      254 JUMPIFNOTLT                      R5 R6 ; [+3]
      256 LOADNIL                          R5
      257 RETURN                           R5 1
      258 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["stopTraverseFunc"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["stopTraverseFunc"]
        7 CALL                             R1 0 0
        8 GETUPVAL                         R1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R1 K0 ["stopTraverseFunc"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K1 ["BlockedConn"]
       15 JUMPIFNOT                        R1 ; [+10]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K1 ["BlockedConn"]
       19 NAMECALL                         R1 R1 K2 ["Disconnect"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 0
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K1 ["BlockedConn"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K3 ["DiedConn"]
       29 JUMPIFNOT                        R1 ; [+10]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K3 ["DiedConn"]
       33 NAMECALL                         R1 R1 K2 ["Disconnect"]
       35 CALL                             R1 1 0
       36 GETUPVAL                         R1 0
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K3 ["DiedConn"]
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K4 ["SeatedConn"]
       43 JUMPIFNOT                        R1 ; [+10]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K4 ["SeatedConn"]
       47 NAMECALL                         R1 R1 K2 ["Disconnect"]
       49 CALL                             R1 1 0
       50 GETUPVAL                         R1 0
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K4 ["SeatedConn"]
       54 GETUPVAL                         R1 0
       55 GETTABLEKS                       R1 R1 K5 ["TeleportedConn"]
       57 JUMPIFNOT                        R1 ; [+10]
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K5 ["TeleportedConn"]
       61 NAMECALL                         R1 R1 K2 ["Disconnect"]
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 0
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K5 ["TeleportedConn"]
       68 GETUPVAL                         R1 0
       69 LOADB                            R2 0
       70 SETTABLEKS                       R2 R1 K6 ["Started"]
       72 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["Cancelled"]
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K1 ["Cleanup"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AgentCanFollowPath"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["Started"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["Cancelled"]
       11 NOT                              R1 R2
       12 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["Cancelled"]
        4 GETUPVAL                         R1 0
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K1 ["OnPointReached"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnPathBlocked"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OriginPoint"]
        3 JUMPIFNOT                        R1 ; [+108]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["PathComputed"]
        7 JUMPIF                           R1 ; [+4]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["PathComputing"]
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K2 ["PathComputing"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K3 ["AgentCanFollowPath"]
       20 JUMPIFNOT                        R1 ; [+87]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K4 ["DirectPath"]
       24 JUMPIFNOT                        R1 ; [+35]
       25 GETUPVAL                         R1 0
       26 NEWTABLE                         R2 0 2
       28 GETIMPORT                        R3 K7 [PathWaypoint.new]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["OriginPoint"]
       33 GETIMPORT                        R5 K11 [Enum.PathWaypointAction.Walk]
       35 CALL                             R3 2 1
       36 GETIMPORT                        R4 K7 [PathWaypoint.new]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K12 ["TargetPoint"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K13 ["DirectPathRiseFirst"]
       44 JUMPIFNOT                        R7 ; [+3]
       45 GETIMPORT                        R6 K15 [Enum.PathWaypointAction.Jump]
       47 JUMPIF                           R6 ; [+2]
       48 GETIMPORT                        R6 K11 [Enum.PathWaypointAction.Walk]
       50 CALL                             R4 2 -1
       51 SETLIST                          R2 R3 -1 [1]
       53 SETTABLEKS                       R2 R1 K16 ["pointList"]
       55 GETUPVAL                         R1 0
       56 LOADB                            R2 1
       57 SETTABLEKS                       R2 R1 K1 ["PathComputed"]
       59 JUMP                             ; [+48]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K17 ["pathResult"]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K0 ["OriginPoint"]
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K12 ["TargetPoint"]
       69 NAMECALL                         R1 R1 K18 ["ComputeAsync"]
       71 CALL                             R1 3 0
       72 GETUPVAL                         R1 0
       73 GETUPVAL                         R2 0
       74 GETTABLEKS                       R2 R2 K17 ["pathResult"]
       76 NAMECALL                         R2 R2 K19 ["GetWaypoints"]
       78 CALL                             R2 1 1
       79 SETTABLEKS                       R2 R1 K16 ["pointList"]
       81 GETUPVAL                         R1 0
       82 GETUPVAL                         R2 0
       83 GETTABLEKS                       R2 R2 K17 ["pathResult"]
       85 GETTABLEKS                       R2 R2 K20 ["Blocked"]
       87 NEWCLOSURE                       R4 P0
       88 CAPTURE                          UPVAL U0
       89 NAMECALL                         R2 R2 K21 ["Connect"]
       91 CALL                             R2 2 1
       92 SETTABLEKS                       R2 R1 K22 ["BlockedConn"]
       94 GETUPVAL                         R1 0
       95 GETUPVAL                         R3 0
       96 GETTABLEKS                       R3 R3 K17 ["pathResult"]
       98 GETTABLEKS                       R3 R3 K23 ["Status"]
      100 GETIMPORT                        R4 K26 [Enum.PathStatus.Success]
      102 JUMPIFEQ                         R3 R4 ; [+2]
      104 LOADB                            R2 0 +1
      105 LOADB                            R2 1
      106 SETTABLEKS                       R2 R1 K1 ["PathComputed"]
      108 GETUPVAL                         R1 0
      109 LOADB                            R2 0
      110 SETTABLEKS                       R2 R1 K2 ["PathComputing"]
      112 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["ComputePath"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["PathComputed"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["AgentCanFollowPath"]
       11 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CurrentPoint"]
        3 JUMPIFLE                         R3 R1 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K1 ["Recomputing"]
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 0
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K1 ["Recomputing"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["stopTraverseFunc"]
       20 JUMPIFNOT                        R3 ; [+8]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["stopTraverseFunc"]
       24 CALL                             R3 0 0
       25 GETUPVAL                         R3 0
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K2 ["stopTraverseFunc"]
       29 GETUPVAL                         R3 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K3 ["Humanoid"]
       33 GETTABLEKS                       R4 R4 K4 ["RootPart"]
       35 GETTABLEKS                       R4 R4 K5 ["CFrame"]
       37 GETTABLEKS                       R4 R4 K6 ["Position"]
       39 SETTABLEKS                       R4 R3 K7 ["OriginPoint"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K8 ["pathResult"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K7 ["OriginPoint"]
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K9 ["TargetPoint"]
       50 NAMECALL                         R3 R3 K10 ["ComputeAsync"]
       52 CALL                             R3 3 0
       53 GETUPVAL                         R3 0
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K8 ["pathResult"]
       57 NAMECALL                         R4 R4 K11 ["GetWaypoints"]
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K12 ["pointList"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K12 ["pointList"]
       65 LENGTH                           R3 R4
       66 LOADN                            R4 0
       67 JUMPIFNOTLT                      R4 R3 ; [+14]
       69 GETUPVAL                         R3 0
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K12 ["pointList"]
       73 GETTABLEN                        R5 R6 1
       74 GETTABLEKS                       R5 R5 K6 ["Position"]
       76 GETUPVAL                         R6 0
       77 GETTABLEKS                       R6 R6 K7 ["OriginPoint"]
       79 SUB                              R4 R5 R6
       80 SETTABLEKS                       R4 R3 K13 ["HumanoidOffsetFromPath"]
       82 GETUPVAL                         R3 0
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K8 ["pathResult"]
       86 GETTABLEKS                       R5 R5 K14 ["Status"]
       88 GETIMPORT                        R6 K18 [Enum.PathStatus.Success]
       90 JUMPIFEQ                         R5 R6 ; [+2]
       92 LOADB                            R4 0 +1
       93 LOADB                            R4 1
       94 SETTABLEKS                       R4 R3 K19 ["PathComputed"]
       96 GETUPVAL                         R3 1
       97 JUMPIFNOT                        R3 ; [+13]
       98 GETUPVAL                         R3 0
       99 GETUPVAL                         R4 0
      100 GETUPVAL                         R5 2
      101 GETTABLEKS                       R5 R5 K20 ["CreatePathDisplay"]
      103 GETUPVAL                         R6 0
      104 GETTABLEKS                       R6 R6 K12 ["pointList"]
      106 CALL                             R5 1 2
      107 SETTABLEKS                       R5 R3 K2 ["stopTraverseFunc"]
      109 SETTABLEKS                       R6 R4 K21 ["setPointFunc"]
      111 GETUPVAL                         R3 0
      112 GETTABLEKS                       R3 R3 K19 ["PathComputed"]
      114 JUMPIFNOT                        R3 ; [+10]
      115 GETUPVAL                         R3 0
      116 LOADN                            R4 1
      117 SETTABLEKS                       R4 R3 K0 ["CurrentPoint"]
      119 GETUPVAL                         R3 0
      120 LOADB                            R5 1
      121 NAMECALL                         R3 R3 K22 ["OnPointReached"]
      123 CALL                             R3 2 0
      124 JUMP                             ; [+10]
      125 GETUPVAL                         R3 0
      126 GETTABLEKS                       R3 R3 K23 ["PathFailed"]
      128 NAMECALL                         R3 R3 K24 ["Fire"]
      130 CALL                             R3 1 0
      131 GETUPVAL                         R3 0
      132 NAMECALL                         R3 R3 K25 ["Cleanup"]
      134 CALL                             R3 1 0
      135 GETUPVAL                         R3 0
      136 LOADB                            R4 0
      137 SETTABLEKS                       R4 R3 K1 ["Recomputing"]
      139 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Started"]
        3 JUMPIFNOT                        R2 ; [+114]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Cancelled"]
        7 JUMPIF                           R2 ; [+110]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["Timeout"]
       12 ADD                              R3 R4 R1
       13 SETTABLEKS                       R3 R2 K2 ["Timeout"]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["Timeout"]
       18 GETUPVAL                         R3 1
       19 JUMPIFNOTLT                      R3 R2 ; [+7]
       21 GETUPVAL                         R2 0
       22 LOADB                            R4 0
       23 NAMECALL                         R2 R2 K3 ["OnPointReached"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K4 ["Humanoid"]
       31 GETTABLEKS                       R4 R4 K5 ["RootPart"]
       33 GETTABLEKS                       R4 R4 K6 ["Position"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K7 ["HumanoidOffsetFromPath"]
       38 ADD                              R3 R4 R5
       39 SETTABLEKS                       R3 R2 K8 ["CurrentHumanoidPosition"]
       41 GETUPVAL                         R2 0
       42 GETUPVAL                         R3 0
       43 GETTABLEKS                       R3 R3 K4 ["Humanoid"]
       45 GETTABLEKS                       R3 R3 K5 ["RootPart"]
       47 GETTABLEKS                       R3 R3 K9 ["Velocity"]
       49 SETTABLEKS                       R3 R2 K10 ["CurrentHumanoidVelocity"]
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K0 ["Started"]
       54 JUMPIFNOT                        R2 ; [+11]
       55 GETUPVAL                         R2 0
       56 NAMECALL                         R2 R2 K11 ["IsCurrentWaypointReached"]
       58 CALL                             R2 1 1
       59 JUMPIFNOT                        R2 ; [+6]
       60 GETUPVAL                         R2 0
       61 LOADB                            R4 1
       62 NAMECALL                         R2 R2 K3 ["OnPointReached"]
       64 CALL                             R2 2 0
       65 JUMPBACK                         ; [-15]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K0 ["Started"]
       69 JUMPIFNOT                        R2 ; [+48]
       70 GETUPVAL                         R2 0
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R4 R4 K12 ["CurrentWaypointPosition"]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K8 ["CurrentHumanoidPosition"]
       77 SUB                              R3 R4 R5
       78 SETTABLEKS                       R3 R2 K13 ["NextActionMoveDirection"]
       80 GETUPVAL                         R2 0
       81 GETTABLEKS                       R2 R2 K13 ["NextActionMoveDirection"]
       83 GETTABLEKS                       R2 R2 K14 ["Magnitude"]
       85 LOADK                            R3 K15 [1E-06]
       86 JUMPIFNOTLT                      R3 R2 ; [+10]
       88 GETUPVAL                         R2 0
       89 GETUPVAL                         R3 0
       90 GETTABLEKS                       R3 R3 K13 ["NextActionMoveDirection"]
       92 GETTABLEKS                       R3 R3 K16 ["Unit"]
       94 SETTABLEKS                       R3 R2 K13 ["NextActionMoveDirection"]
       96 JUMP                             ; [+4]
       97 GETUPVAL                         R2 0
       98 LOADK                            R3 K17 [{0, 0, 0}]
       99 SETTABLEKS                       R3 R2 K13 ["NextActionMoveDirection"]
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R2 R2 K18 ["CurrentWaypointNeedsJump"]
      104 JUMPIFNOT                        R2 ; [+9]
      105 GETUPVAL                         R2 0
      106 LOADB                            R3 1
      107 SETTABLEKS                       R3 R2 K19 ["NextActionJump"]
      109 GETUPVAL                         R2 0
      110 LOADB                            R3 0
      111 SETTABLEKS                       R3 R2 K18 ["CurrentWaypointNeedsJump"]
      113 RETURN                           R0 0
      114 GETUPVAL                         R2 0
      115 LOADB                            R3 0
      116 SETTABLEKS                       R3 R2 K19 ["NextActionJump"]
      118 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["CurrentWaypointPlaneNormal"]
        4 LOADK                            R3 K1 [{0, 0, 0}]
        5 JUMPIFEQ                         R2 R3 ; [+37]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["CurrentWaypointPlaneNormal"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["CurrentHumanoidPosition"]
       13 NAMECALL                         R3 R3 K3 ["Dot"]
       15 CALL                             R3 2 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["CurrentWaypointPlaneDistance"]
       19 SUB                              R2 R3 R4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["CurrentWaypointPlaneNormal"]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K5 ["CurrentHumanoidVelocity"]
       26 NAMECALL                         R4 R4 K3 ["Dot"]
       28 CALL                             R4 2 1
       29 MINUS                            R3 R4
       30 LOADN                            R5 1
       31 LOADK                            R7 K6 [0.0625]
       32 MUL                              R6 R7 R3
       33 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       35 GETIMPORT                        R4 K9 [math.max]
       37 CALL                             R4 2 1
       38 JUMPIFLT                         R2 R4 ; [+2]
       40 LOADB                            R1 0 +1
       41 LOADB                            R1 1
       42 JUMP                             ; [+1]
       43 LOADB                            R1 1
       44 JUMPIFNOT                        R1 ; [+12]
       45 GETUPVAL                         R2 0
       46 LOADNIL                          R3
       47 SETTABLEKS                       R3 R2 K10 ["CurrentWaypointPosition"]
       49 GETUPVAL                         R2 0
       50 LOADK                            R3 K1 [{0, 0, 0}]
       51 SETTABLEKS                       R3 R2 K0 ["CurrentWaypointPlaneNormal"]
       53 GETUPVAL                         R2 0
       54 LOADN                            R3 0
       55 SETTABLEKS                       R3 R2 K4 ["CurrentWaypointPlaneDistance"]
       57 RETURN                           R1 1

PROTO_23:
        0 JUMPIFNOT                        R1 ; [+159]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Cancelled"]
        4 JUMPIF                           R2 ; [+155]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["setPointFunc"]
        8 JUMPIFNOT                        R2 ; [+7]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["setPointFunc"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["CurrentPoint"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["CurrentPoint"]
       19 ADDK                             R2 R3 K3 [1]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["pointList"]
       23 LENGTH                           R3 R4
       24 JUMPIFNOTLT                      R3 R2 ; [+20]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K5 ["stopTraverseFunc"]
       29 JUMPIFNOT                        R3 ; [+4]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K5 ["stopTraverseFunc"]
       33 CALL                             R3 0 0
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K6 ["Finished"]
       37 NAMECALL                         R3 R3 K7 ["Fire"]
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 0
       41 NAMECALL                         R3 R3 K8 ["Cleanup"]
       43 CALL                             R3 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K4 ["pointList"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K2 ["CurrentPoint"]
       51 GETTABLE                         R3 R4 R5
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K4 ["pointList"]
       55 GETTABLE                         R4 R5 R2
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R5 R5 K9 ["Humanoid"]
       59 NAMECALL                         R5 R5 K10 ["GetState"]
       61 CALL                             R5 1 1
       62 LOADB                            R6 1
       63 GETIMPORT                        R7 K14 [Enum.HumanoidStateType.FallingDown]
       65 JUMPIFEQ                         R5 R7 ; [+12]
       67 LOADB                            R6 1
       68 GETIMPORT                        R7 K16 [Enum.HumanoidStateType.Freefall]
       70 JUMPIFEQ                         R5 R7 ; [+7]
       72 GETIMPORT                        R7 K18 [Enum.HumanoidStateType.Jumping]
       74 JUMPIFEQ                         R5 R7 ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 JUMPIFNOT                        R6 ; [+73]
       79 GETTABLEKS                       R8 R4 K19 ["Action"]
       81 GETIMPORT                        R9 K22 [Enum.PathWaypointAction.Jump]
       83 JUMPIFEQ                         R8 R9 ; [+2]
       85 LOADB                            R7 0 +1
       86 LOADB                            R7 1
       87 JUMPIF                           R7 ; [+51]
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K2 ["CurrentPoint"]
       91 LOADN                            R9 1
       92 JUMPIFNOTLT                      R9 R8 ; [+46]
       94 GETUPVAL                         R9 0
       95 GETTABLEKS                       R9 R9 K4 ["pointList"]
       97 GETUPVAL                         R11 0
       98 GETTABLEKS                       R11 R11 K2 ["CurrentPoint"]
      100 SUBK                             R10 R11 K3 [1]
      101 GETTABLE                         R8 R9 R10
      102 GETTABLEKS                       R10 R3 K23 ["Position"]
      104 GETTABLEKS                       R11 R8 K23 ["Position"]
      106 SUB                              R9 R10 R11
      107 GETTABLEKS                       R11 R4 K23 ["Position"]
      109 GETTABLEKS                       R12 R3 K23 ["Position"]
      111 SUB                              R10 R11 R12
      112 GETIMPORT                        R11 K26 [Vector2.new]
      114 GETTABLEKS                       R12 R9 K27 ["x"]
      116 GETTABLEKS                       R13 R9 K28 ["z"]
      118 CALL                             R11 2 1
      119 GETTABLEKS                       R11 R11 K29 ["Unit"]
      121 GETIMPORT                        R12 K26 [Vector2.new]
      123 GETTABLEKS                       R13 R10 K27 ["x"]
      125 GETTABLEKS                       R14 R10 K28 ["z"]
      127 CALL                             R12 2 1
      128 GETTABLEKS                       R12 R12 K29 ["Unit"]
      130 MOVE                             R15 R12
      131 NAMECALL                         R13 R11 K30 ["Dot"]
      133 CALL                             R13 2 1
      134 LOADK                            R14 K31 [0.996]
      135 JUMPIFLT                         R13 R14 ; [+2]
      137 LOADB                            R7 0 +1
      138 LOADB                            R7 1
      139 JUMPIFNOT                        R7 ; [+12]
      140 GETUPVAL                         R8 0
      141 GETTABLEKS                       R8 R8 K9 ["Humanoid"]
      143 GETTABLEKS                       R8 R8 K32 ["FreeFalling"]
      145 NAMECALL                         R8 R8 K33 ["Wait"]
      147 CALL                             R8 1 0
      148 GETIMPORT                        R8 K35 [wait]
      150 LOADK                            R9 K36 [0.1]
      151 CALL                             R8 1 0
      152 GETUPVAL                         R7 0
      153 MOVE                             R9 R3
      154 MOVE                             R10 R4
      155 MOVE                             R11 R2
      156 NAMECALL                         R7 R7 K37 ["MoveToNextWayPoint"]
      158 CALL                             R7 4 0
      159 RETURN                           R0 0
      160 GETUPVAL                         R2 0
      161 GETTABLEKS                       R2 R2 K38 ["PathFailed"]
      163 NAMECALL                         R2 R2 K7 ["Fire"]
      165 CALL                             R2 1 0
      166 GETUPVAL                         R2 0
      167 NAMECALL                         R2 R2 K8 ["Cleanup"]
      169 CALL                             R2 1 0
      170 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R6 R1 K0 ["Position"]
        3 GETTABLEKS                       R7 R2 K0 ["Position"]
        5 SUB                              R5 R6 R7
        6 SETTABLEKS                       R5 R4 K1 ["CurrentWaypointPlaneNormal"]
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETTABLEKS                       R4 R2 K2 ["Label"]
       12 JUMPIFEQKS                       R4 K3 ["Climb"] ; [+19]
       14 GETUPVAL                         R4 0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K1 ["CurrentWaypointPlaneNormal"]
       18 GETTABLEKS                       R6 R6 K4 ["X"]
       20 LOADN                            R7 0
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K1 ["CurrentWaypointPlaneNormal"]
       24 GETTABLEKS                       R8 R8 K5 ["Z"]
       26 FASTCALL                         VECTOR ; [+2]
       27 GETIMPORT                        R5 K8 [Vector3.new]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K1 ["CurrentWaypointPlaneNormal"]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K1 ["CurrentWaypointPlaneNormal"]
       35 GETTABLEKS                       R4 R4 K9 ["Magnitude"]
       37 LOADK                            R5 K10 [1E-06]
       38 JUMPIFNOTLT                      R5 R4 ; [+21]
       40 GETUPVAL                         R4 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K1 ["CurrentWaypointPlaneNormal"]
       44 GETTABLEKS                       R5 R5 K11 ["Unit"]
       46 SETTABLEKS                       R5 R4 K1 ["CurrentWaypointPlaneNormal"]
       48 GETUPVAL                         R4 0
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K1 ["CurrentWaypointPlaneNormal"]
       52 GETTABLEKS                       R7 R2 K0 ["Position"]
       54 NAMECALL                         R5 R5 K12 ["Dot"]
       56 CALL                             R5 2 1
       57 SETTABLEKS                       R5 R4 K13 ["CurrentWaypointPlaneDistance"]
       59 JUMP                             ; [+8]
       60 GETUPVAL                         R4 0
       61 LOADK                            R5 K14 [{0, 0, 0}]
       62 SETTABLEKS                       R5 R4 K1 ["CurrentWaypointPlaneNormal"]
       64 GETUPVAL                         R4 0
       65 LOADN                            R5 0
       66 SETTABLEKS                       R5 R4 K13 ["CurrentWaypointPlaneDistance"]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R6 R2 K15 ["Action"]
       71 GETIMPORT                        R7 K19 [Enum.PathWaypointAction.Jump]
       73 JUMPIFEQ                         R6 R7 ; [+2]
       75 LOADB                            R5 0 +1
       76 LOADB                            R5 1
       77 SETTABLEKS                       R5 R4 K20 ["CurrentWaypointNeedsJump"]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R5 R2 K0 ["Position"]
       82 SETTABLEKS                       R5 R4 K21 ["CurrentWaypointPosition"]
       84 GETUPVAL                         R4 0
       85 SETTABLEKS                       R3 R4 K22 ["CurrentPoint"]
       87 GETUPVAL                         R4 0
       88 LOADN                            R5 0
       89 SETTABLEKS                       R5 R4 K23 ["Timeout"]
       91 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["OnPathInterrupted"]
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPathInterrupted"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Humanoid"]
        3 GETTABLEKS                       R0 R0 K1 ["RootPart"]
        5 GETTABLEKS                       R0 R0 K2 ["CFrame"]
        7 GETTABLEKS                       R0 R0 K3 ["Position"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K4 ["lastPosition"]
       12 SUB                              R1 R0 R2
       13 GETTABLEKS                       R1 R1 K5 ["Magnitude"]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R0 R2 K4 ["lastPosition"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["Humanoid"]
       21 GETTABLEKS                       R2 R2 K6 ["WalkSpeed"]
       23 JUMPIFNOTLT                      R2 R1 ; [+5]
       25 GETUPVAL                         R2 0
       26 NAMECALL                         R2 R2 K7 ["OnPathInterrupted"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPathInterrupted"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AgentCanFollowPath"]
        3 JUMPIF                           R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["PathFailed"]
        7 NAMECALL                         R2 R2 K2 ["Fire"]
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["Started"]
       14 JUMPIFNOT                        R2 ; [+1]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 0
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K3 ["Started"]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K4 ["CancelFailureAnimation"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R2 2
       25 JUMPIFNOT                        R2 ; [+19]
       26 JUMPIFEQKNIL                     R1 ; [+2]
       28 JUMPIFNOT                        R1 ; [+16]
       29 GETUPVAL                         R2 0
       30 GETUPVAL                         R3 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K5 ["CreatePathDisplay"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K6 ["pointList"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R6 R6 K7 ["OriginalTargetPoint"]
       40 CALL                             R4 2 2
       41 SETTABLEKS                       R4 R2 K8 ["stopTraverseFunc"]
       43 SETTABLEKS                       R5 R3 K9 ["setPointFunc"]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K6 ["pointList"]
       48 LENGTH                           R2 R3
       49 LOADN                            R3 0
       50 JUMPIFNOTLT                      R3 R2 ; [+133]
       52 GETUPVAL                         R2 0
       53 LOADN                            R4 0
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K6 ["pointList"]
       57 GETTABLEN                        R6 R7 1
       58 GETTABLEKS                       R6 R6 K10 ["Position"]
       60 GETTABLEKS                       R6 R6 K11 ["Y"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K12 ["OriginPoint"]
       65 GETTABLEKS                       R7 R7 K11 ["Y"]
       67 SUB                              R5 R6 R7
       68 LOADN                            R6 0
       69 FASTCALL                         VECTOR ; [+2]
       70 GETIMPORT                        R3 K15 [Vector3.new]
       72 CALL                             R3 3 1
       73 SETTABLEKS                       R3 R2 K16 ["HumanoidOffsetFromPath"]
       75 GETUPVAL                         R2 0
       76 GETUPVAL                         R4 0
       77 GETTABLEKS                       R4 R4 K17 ["Humanoid"]
       79 GETTABLEKS                       R4 R4 K18 ["RootPart"]
       81 GETTABLEKS                       R4 R4 K10 ["Position"]
       83 GETUPVAL                         R5 0
       84 GETTABLEKS                       R5 R5 K16 ["HumanoidOffsetFromPath"]
       86 ADD                              R3 R4 R5
       87 SETTABLEKS                       R3 R2 K19 ["CurrentHumanoidPosition"]
       89 GETUPVAL                         R2 0
       90 GETUPVAL                         R3 0
       91 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
       93 GETTABLEKS                       R3 R3 K18 ["RootPart"]
       95 GETTABLEKS                       R3 R3 K20 ["Velocity"]
       97 SETTABLEKS                       R3 R2 K21 ["CurrentHumanoidVelocity"]
       99 GETUPVAL                         R2 0
      100 GETUPVAL                         R3 0
      101 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
      103 GETTABLEKS                       R3 R3 K22 ["Seated"]
      105 NEWCLOSURE                       R5 P0
      106 CAPTURE                          UPVAL U0
      107 NAMECALL                         R3 R3 K23 ["Connect"]
      109 CALL                             R3 2 1
      110 SETTABLEKS                       R3 R2 K24 ["SeatedConn"]
      112 GETUPVAL                         R2 0
      113 GETUPVAL                         R3 0
      114 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
      116 GETTABLEKS                       R3 R3 K25 ["Died"]
      118 NEWCLOSURE                       R5 P1
      119 CAPTURE                          UPVAL U0
      120 NAMECALL                         R3 R3 K23 ["Connect"]
      122 CALL                             R3 2 1
      123 SETTABLEKS                       R3 R2 K26 ["DiedConn"]
      125 GETUPVAL                         R2 3
      126 JUMPIFNOT                        R2 ; [+30]
      127 GETUPVAL                         R2 0
      128 GETUPVAL                         R3 0
      129 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
      131 GETTABLEKS                       R3 R3 K18 ["RootPart"]
      133 GETTABLEKS                       R3 R3 K27 ["CFrame"]
      135 GETTABLEKS                       R3 R3 K10 ["Position"]
      137 SETTABLEKS                       R3 R2 K28 ["lastPosition"]
      139 GETUPVAL                         R2 0
      140 GETUPVAL                         R3 0
      141 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
      143 GETTABLEKS                       R3 R3 K18 ["RootPart"]
      145 LOADK                            R5 K27 ["CFrame"]
      146 NAMECALL                         R3 R3 K29 ["GetPropertyChangedSignal"]
      148 CALL                             R3 2 1
      149 NEWCLOSURE                       R5 P2
      150 CAPTURE                          UPVAL U0
      151 NAMECALL                         R3 R3 K23 ["Connect"]
      153 CALL                             R3 2 1
      154 SETTABLEKS                       R3 R2 K30 ["TeleportedConn"]
      156 JUMP                             ; [+17]
      157 GETUPVAL                         R2 0
      158 GETUPVAL                         R3 0
      159 GETTABLEKS                       R3 R3 K17 ["Humanoid"]
      161 GETTABLEKS                       R3 R3 K18 ["RootPart"]
      163 LOADK                            R5 K27 ["CFrame"]
      164 NAMECALL                         R3 R3 K29 ["GetPropertyChangedSignal"]
      166 CALL                             R3 2 1
      167 NEWCLOSURE                       R5 P3
      168 CAPTURE                          UPVAL U0
      169 NAMECALL                         R3 R3 K23 ["Connect"]
      171 CALL                             R3 2 1
      172 SETTABLEKS                       R3 R2 K30 ["TeleportedConn"]
      174 GETUPVAL                         R2 0
      175 LOADN                            R3 1
      176 SETTABLEKS                       R3 R2 K31 ["CurrentPoint"]
      178 GETUPVAL                         R2 0
      179 LOADB                            R4 1
      180 NAMECALL                         R2 R2 K32 ["OnPointReached"]
      182 CALL                             R2 2 0
      183 RETURN                           R0 0
      184 GETUPVAL                         R2 0
      185 GETTABLEKS                       R2 R2 K1 ["PathFailed"]
      187 NAMECALL                         R2 R2 K2 ["Fire"]
      189 CALL                             R2 1 0
      190 GETUPVAL                         R2 0
      191 GETTABLEKS                       R2 R2 K8 ["stopTraverseFunc"]
      193 JUMPIFNOT                        R2 ; [+4]
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K8 ["stopTraverseFunc"]
      197 CALL                             R2 0 0
      198 RETURN                           R0 0

PROTO_30:
        0 NEWTABLE                         R3 64 0
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 JUMPIFEQKNIL                     R2 ; [+4]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R2
        8 JUMP                             ; [+2]
        9 GETUPVAL                         R4 0
       10 LOADB                            R5 1
       11 LOADB                            R6 0
       12 SETTABLEKS                       R6 R3 K0 ["Cancelled"]
       14 LOADB                            R6 0
       15 SETTABLEKS                       R6 R3 K1 ["Started"]
       17 GETIMPORT                        R6 K4 [Instance.new]
       19 LOADK                            R7 K5 ["BindableEvent"]
       20 CALL                             R6 1 1
       21 SETTABLEKS                       R6 R3 K6 ["Finished"]
       23 GETIMPORT                        R6 K4 [Instance.new]
       25 LOADK                            R7 K5 ["BindableEvent"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R3 K7 ["PathFailed"]
       29 LOADB                            R6 0
       30 SETTABLEKS                       R6 R3 K8 ["PathComputing"]
       32 LOADB                            R6 0
       33 SETTABLEKS                       R6 R3 K9 ["PathComputed"]
       35 SETTABLEKS                       R0 R3 K10 ["OriginalTargetPoint"]
       37 SETTABLEKS                       R0 R3 K11 ["TargetPoint"]
       39 SETTABLEKS                       R1 R3 K12 ["TargetSurfaceNormal"]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R3 K13 ["DiedConn"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R3 K14 ["SeatedConn"]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R3 K15 ["BlockedConn"]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R3 K16 ["TeleportedConn"]
       53 LOADN                            R6 0
       54 SETTABLEKS                       R6 R3 K17 ["CurrentPoint"]
       56 LOADK                            R6 K18 [{0, 0, 0}]
       57 SETTABLEKS                       R6 R3 K19 ["HumanoidOffsetFromPath"]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R3 K20 ["CurrentWaypointPosition"]
       62 LOADK                            R6 K18 [{0, 0, 0}]
       63 SETTABLEKS                       R6 R3 K21 ["CurrentWaypointPlaneNormal"]
       65 LOADN                            R6 0
       66 SETTABLEKS                       R6 R3 K22 ["CurrentWaypointPlaneDistance"]
       68 LOADB                            R6 0
       69 SETTABLEKS                       R6 R3 K23 ["CurrentWaypointNeedsJump"]
       71 LOADK                            R6 K18 [{0, 0, 0}]
       72 SETTABLEKS                       R6 R3 K24 ["CurrentHumanoidPosition"]
       74 LOADN                            R6 0
       75 SETTABLEKS                       R6 R3 K25 ["CurrentHumanoidVelocity"]
       77 LOADK                            R6 K18 [{0, 0, 0}]
       78 SETTABLEKS                       R6 R3 K26 ["NextActionMoveDirection"]
       80 LOADB                            R6 0
       81 SETTABLEKS                       R6 R3 K27 ["NextActionJump"]
       83 LOADN                            R6 0
       84 SETTABLEKS                       R6 R3 K28 ["Timeout"]
       86 GETUPVAL                         R7 1
       87 MOVE                             R8 R7
       88 JUMPIFNOT                        R8 ; [+2]
       89 GETTABLEKS                       R8 R7 K29 ["Character"]
       91 JUMPIFNOT                        R8 ; [+21]
       92 GETUPVAL                         R10 2
       93 GETTABLE                         R9 R10 R7
       94 JUMPIFNOT                        R9 ; [+6]
       95 GETTABLEKS                       R10 R9 K30 ["Parent"]
       97 JUMPIFNOTEQ                      R10 R8 ; [+3]
       99 MOVE                             R6 R9
      100 JUMP                             ; [+13]
      101 GETUPVAL                         R10 2
      102 LOADNIL                          R11
      103 SETTABLE                         R11 R10 R7
      104 LOADK                            R12 K31 ["Humanoid"]
      105 NAMECALL                         R10 R8 K32 ["FindFirstChildOfClass"]
      107 CALL                             R10 2 1
      108 JUMPIFNOT                        R10 ; [+2]
      109 GETUPVAL                         R11 2
      110 SETTABLE                         R10 R11 R7
      111 MOVE                             R6 R10
      112 JUMP                             ; [+1]
      113 LOADNIL                          R6
      114 SETTABLEKS                       R6 R3 K31 ["Humanoid"]
      116 LOADNIL                          R6
      117 SETTABLEKS                       R6 R3 K33 ["OriginPoint"]
      119 LOADB                            R6 0
      120 SETTABLEKS                       R6 R3 K34 ["AgentCanFollowPath"]
      122 LOADB                            R6 0
      123 SETTABLEKS                       R6 R3 K35 ["DirectPath"]
      125 LOADB                            R6 0
      126 SETTABLEKS                       R6 R3 K36 ["DirectPathRiseFirst"]
      128 LOADNIL                          R6
      129 SETTABLEKS                       R6 R3 K37 ["stopTraverseFunc"]
      131 LOADNIL                          R6
      132 SETTABLEKS                       R6 R3 K38 ["setPointFunc"]
      134 LOADNIL                          R6
      135 SETTABLEKS                       R6 R3 K39 ["pointList"]
      137 GETTABLEKS                       R6 R3 K31 ["Humanoid"]
      139 JUMPIFNOT                        R6 ; [+4]
      140 GETTABLEKS                       R6 R3 K31 ["Humanoid"]
      142 GETTABLEKS                       R6 R6 K40 ["RootPart"]
      144 JUMPIFNOT                        R6 ; [+166]
      145 GETTABLEKS                       R7 R6 K41 ["CFrame"]
      147 GETTABLEKS                       R7 R7 K42 ["Position"]
      149 SETTABLEKS                       R7 R3 K33 ["OriginPoint"]
      151 LOADN                            R7 2
      152 LOADN                            R8 5
      153 LOADB                            R9 1
      154 GETTABLEKS                       R10 R3 K31 ["Humanoid"]
      156 GETTABLEKS                       R10 R10 K43 ["SeatPart"]
      158 JUMPIFNOT                        R10 ; [+49]
      159 LOADK                            R13 K44 ["VehicleSeat"]
      160 NAMECALL                         R11 R10 K45 ["IsA"]
      162 CALL                             R11 2 1
      163 JUMPIFNOT                        R11 ; [+44]
      164 LOADK                            R13 K46 ["Model"]
      165 NAMECALL                         R11 R10 K47 ["FindFirstAncestorOfClass"]
      167 CALL                             R11 2 1
      168 JUMPIFNOT                        R11 ; [+113]
      169 GETTABLEKS                       R12 R11 K48 ["PrimaryPart"]
      171 SETTABLEKS                       R10 R11 K48 ["PrimaryPart"]
      173 JUMPIFNOT                        R5 ; [+31]
      174 NAMECALL                         R13 R11 K49 ["GetExtentsSize"]
      176 CALL                             R13 1 1
      177 GETUPVAL                         R15 3
      178 MULK                             R14 R15 K50 [0.5]
      179 GETTABLEKS                       R18 R13 K51 ["X"]
      181 GETTABLEKS                       R19 R13 K51 ["X"]
      183 MUL                              R17 R18 R19
      184 GETTABLEKS                       R19 R13 K52 ["Z"]
      186 GETTABLEKS                       R20 R13 K52 ["Z"]
      188 MUL                              R18 R19 R20
      189 ADD                              R16 R17 R18
      190 FASTCALL1                        MATH_SQRT R16 ; [+2]
      191 GETIMPORT                        R15 K55 [math.sqrt]
      193 CALL                             R15 1 1
      194 MUL                              R7 R14 R15
      195 GETUPVAL                         R14 3
      196 GETTABLEKS                       R15 R13 K56 ["Y"]
      198 MUL                              R8 R14 R15
      199 LOADB                            R9 0
      200 LOADB                            R14 1
      201 SETTABLEKS                       R14 R3 K34 ["AgentCanFollowPath"]
      203 SETTABLEKS                       R5 R3 K35 ["DirectPath"]
      205 SETTABLEKS                       R12 R11 K48 ["PrimaryPart"]
      207 JUMP                             ; [+74]
      208 LOADNIL                          R11
      209 GETUPVAL                         R12 4
      210 JUMPIFNOT                        R12 ; [+11]
      211 GETUPVAL                         R12 1
      212 JUMPIFNOT                        R12 ; [+3]
      213 GETUPVAL                         R12 1
      214 GETTABLEKS                       R12 R12 K29 ["Character"]
      216 JUMPIFEQKNIL                     R12 ; [+5]
      218 GETUPVAL                         R13 5
      219 MOVE                             R14 R12
      220 CALL                             R13 1 1
      221 MOVE                             R11 R13
      222 JUMPIFNOTEQKNIL                  R11 ; [+10]
      224 GETUPVAL                         R12 1
      225 JUMPIFNOT                        R12 ; [+3]
      226 GETUPVAL                         R12 1
      227 GETTABLEKS                       R12 R12 K29 ["Character"]
      229 NAMECALL                         R12 R12 K49 ["GetExtentsSize"]
      231 CALL                             R12 1 1
      232 MOVE                             R11 R12
      233 FASTCALL2K                       ASSERT R11 K57 ; [+5]
      235 MOVE                             R13 R11
      236 LOADK                            R14 K57 [""]
      237 GETIMPORT                        R12 K59 [assert]
      239 CALL                             R12 2 0
      240 GETUPVAL                         R13 3
      241 MULK                             R12 R13 K50 [0.5]
      242 GETTABLEKS                       R16 R11 K51 ["X"]
      244 GETTABLEKS                       R17 R11 K51 ["X"]
      246 MUL                              R15 R16 R17
      247 GETTABLEKS                       R17 R11 K52 ["Z"]
      249 GETTABLEKS                       R18 R11 K52 ["Z"]
      251 MUL                              R16 R17 R18
      252 ADD                              R14 R15 R16
      253 FASTCALL1                        MATH_SQRT R14 ; [+2]
      254 GETIMPORT                        R13 K55 [math.sqrt]
      256 CALL                             R13 1 1
      257 MUL                              R7 R12 R13
      258 GETUPVAL                         R12 3
      259 GETTABLEKS                       R13 R11 K56 ["Y"]
      261 MUL                              R8 R12 R13
      262 GETTABLEKS                       R12 R3 K31 ["Humanoid"]
      264 GETTABLEKS                       R12 R12 K60 ["JumpPower"]
      266 LOADN                            R13 0
      267 JUMPIFLT                         R13 R12 ; [+2]
      269 LOADB                            R9 0 +1
      270 LOADB                            R9 1
      271 LOADB                            R12 1
      272 SETTABLEKS                       R12 R3 K34 ["AgentCanFollowPath"]
      274 SETTABLEKS                       R4 R3 K35 ["DirectPath"]
      276 GETTABLEKS                       R12 R3 K31 ["Humanoid"]
      278 GETTABLEKS                       R12 R12 K61 ["Sit"]
      280 SETTABLEKS                       R12 R3 K36 ["DirectPathRiseFirst"]
      282 GETUPVAL                         R11 6
      283 JUMPIFNOT                        R11 ; [+14]
      284 GETUPVAL                         R11 7
      285 DUPTABLE                         R13 K67 [{["AgentRadius"], ["AgentHeight"], ["AgentCanJump"], ["AgentCanClimb"] = True}]
      286 SETTABLEKS                       R7 R13 K62 ["AgentRadius"]
      288 SETTABLEKS                       R8 R13 K63 ["AgentHeight"]
      290 SETTABLEKS                       R9 R13 K64 ["AgentCanJump"]
      292 NAMECALL                         R11 R11 K68 ["CreatePath"]
      294 CALL                             R11 2 1
      295 SETTABLEKS                       R11 R3 K69 ["pathResult"]
      297 JUMP                             ; [+13]
      298 GETUPVAL                         R11 7
      299 DUPTABLE                         R13 K70 [{"AgentRadius", "AgentHeight", "AgentCanJump"}]
      300 SETTABLEKS                       R7 R13 K62 ["AgentRadius"]
      302 SETTABLEKS                       R8 R13 K63 ["AgentHeight"]
      304 SETTABLEKS                       R9 R13 K64 ["AgentCanJump"]
      306 NAMECALL                         R11 R11 K68 ["CreatePath"]
      308 CALL                             R11 2 1
      309 SETTABLEKS                       R11 R3 K69 ["pathResult"]
      311 NEWCLOSURE                       R7 P0
      312 CAPTURE                          VAL R3
      313 SETTABLEKS                       R7 R3 K71 ["Cleanup"]
      315 NEWCLOSURE                       R7 P1
      316 CAPTURE                          VAL R3
      317 SETTABLEKS                       R7 R3 K72 ["Cancel"]
      319 NEWCLOSURE                       R7 P2
      320 CAPTURE                          VAL R3
      321 SETTABLEKS                       R7 R3 K73 ["IsActive"]
      323 NEWCLOSURE                       R7 P3
      324 CAPTURE                          VAL R3
      325 SETTABLEKS                       R7 R3 K74 ["OnPathInterrupted"]
      327 NEWCLOSURE                       R7 P4
      328 CAPTURE                          VAL R3
      329 SETTABLEKS                       R7 R3 K75 ["ComputePath"]
      331 NEWCLOSURE                       R7 P5
      332 CAPTURE                          VAL R3
      333 SETTABLEKS                       R7 R3 K76 ["IsValidPath"]
      335 LOADB                            R7 0
      336 SETTABLEKS                       R7 R3 K77 ["Recomputing"]
      338 NEWCLOSURE                       R7 P6
      339 CAPTURE                          VAL R3
      340 CAPTURE                          UPVAL U8
      341 CAPTURE                          UPVAL U9
      342 SETTABLEKS                       R7 R3 K78 ["OnPathBlocked"]
      344 NEWCLOSURE                       R7 P7
      345 CAPTURE                          VAL R3
      346 CAPTURE                          UPVAL U10
      347 SETTABLEKS                       R7 R3 K79 ["OnRenderStepped"]
      349 NEWCLOSURE                       R7 P8
      350 CAPTURE                          VAL R3
      351 SETTABLEKS                       R7 R3 K80 ["IsCurrentWaypointReached"]
      353 NEWCLOSURE                       R7 P9
      354 CAPTURE                          VAL R3
      355 SETTABLEKS                       R7 R3 K81 ["OnPointReached"]
      357 NEWCLOSURE                       R7 P10
      358 CAPTURE                          VAL R3
      359 CAPTURE                          UPVAL U6
      360 SETTABLEKS                       R7 R3 K82 ["MoveToNextWayPoint"]
      362 NEWCLOSURE                       R7 P11
      363 CAPTURE                          VAL R3
      364 CAPTURE                          UPVAL U9
      365 CAPTURE                          UPVAL U8
      366 CAPTURE                          UPVAL U11
      367 SETTABLEKS                       R7 R3 K83 ["Start"]
      369 GETTABLEKS                       R8 R3 K11 ["TargetPoint"]
      371 GETTABLEKS                       R10 R3 K12 ["TargetSurfaceNormal"]
      373 MULK                             R9 R10 K84 [1.5]
      374 ADD                              R7 R8 R9
      375 GETUPVAL                         R8 12
      376 JUMPIFNOT                        R8 ; [+42]
      377 GETUPVAL                         R8 13
      378 GETUPVAL                         R10 14
      379 JUMPIFNOT                        R10 ; [+2]
      380 GETUPVAL                         R9 14
      381 JUMP                             ; [+22]
      382 NEWTABLE                         R10 0 0
      384 SETUPVAL                         R10 14
      385 GETUPVAL                         R11 14
      386 FASTCALL2K                       ASSERT R11 K57 ; [+4]
      388 LOADK                            R12 K57 [""]
      389 GETIMPORT                        R10 K59 [assert]
      391 CALL                             R10 2 0
      392 GETUPVAL                         R11 14
      393 GETUPVAL                         R12 1
      394 JUMPIFNOT                        R12 ; [+3]
      395 GETUPVAL                         R12 1
      396 GETTABLEKS                       R12 R12 K29 ["Character"]
      398 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
      400 GETIMPORT                        R10 K87 [table.insert]
      402 CALL                             R10 2 0
      403 GETUPVAL                         R9 14
      404 SETTABLEKS                       R9 R8 K88 ["FilterDescendantsInstances"]
      406 GETUPVAL                         R8 15
      407 MOVE                             R10 R7
      408 LOADK                            R11 K89 [{0, -50, 0}]
      409 GETUPVAL                         R12 13
      410 NAMECALL                         R8 R8 K90 ["Raycast"]
      412 CALL                             R8 4 1
      413 JUMPIFNOT                        R8 ; [+44]
      414 GETTABLEKS                       R9 R8 K42 ["Position"]
      416 SETTABLEKS                       R9 R3 K11 ["TargetPoint"]
      418 JUMP                             ; [+39]
      419 GETIMPORT                        R8 K92 [Ray.new]
      421 MOVE                             R9 R7
      422 LOADK                            R10 K93 [{0, -50, 0}]
      423 CALL                             R8 2 1
      424 GETUPVAL                         R9 15
      425 MOVE                             R11 R8
      426 GETUPVAL                         R13 14
      427 JUMPIFNOT                        R13 ; [+2]
      428 GETUPVAL                         R12 14
      429 JUMP                             ; [+22]
      430 NEWTABLE                         R13 0 0
      432 SETUPVAL                         R13 14
      433 GETUPVAL                         R14 14
      434 FASTCALL2K                       ASSERT R14 K57 ; [+4]
      436 LOADK                            R15 K57 [""]
      437 GETIMPORT                        R13 K59 [assert]
      439 CALL                             R13 2 0
      440 GETUPVAL                         R14 14
      441 GETUPVAL                         R15 1
      442 JUMPIFNOT                        R15 ; [+3]
      443 GETUPVAL                         R15 1
      444 GETTABLEKS                       R15 R15 K29 ["Character"]
      446 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      448 GETIMPORT                        R13 K87 [table.insert]
      450 CALL                             R13 2 0
      451 GETUPVAL                         R12 14
      452 NAMECALL                         R9 R9 K94 ["FindPartOnRayWithIgnoreList"]
      454 CALL                             R9 3 2
      455 JUMPIFNOT                        R9 ; [+2]
      456 SETTABLEKS                       R10 R3 K11 ["TargetPoint"]
      458 NAMECALL                         R8 R3 K75 ["ComputePath"]
      460 CALL                             R8 1 0
      461 RETURN                           R3 1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R1
        2 JUMPIFNOT                        R2 ; [+2]
        3 GETTABLEKS                       R2 R1 K0 ["Character"]
        5 JUMPIFNOT                        R2 ; [+21]
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFNOT                        R3 ; [+6]
        9 GETTABLEKS                       R4 R3 K1 ["Parent"]
       11 JUMPIFNOTEQ                      R4 R2 ; [+3]
       13 MOVE                             R0 R3
       14 JUMP                             ; [+13]
       15 GETUPVAL                         R4 1
       16 LOADNIL                          R5
       17 SETTABLE                         R5 R4 R1
       18 LOADK                            R6 K2 ["Humanoid"]
       19 NAMECALL                         R4 R2 K3 ["FindFirstChildOfClass"]
       21 CALL                             R4 2 1
       22 JUMPIFNOT                        R4 ; [+2]
       23 GETUPVAL                         R5 1
       24 SETTABLE                         R4 R5 R1
       25 MOVE                             R0 R4
       26 JUMP                             ; [+1]
       27 LOADNIL                          R0
       28 LOADB                            R1 0
       29 JUMPIFEQKNIL                     R0 ; [+8]
       31 GETTABLEKS                       R2 R0 K4 ["Health"]
       33 LOADN                            R3 0
       34 JUMPIFLT                         R3 R2 ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 RETURN                           R1 1

PROTO_32:
        0 JUMPIFEQKNIL                     R0 ; [+16]
        2 GETIMPORT                        R1 K1 [pairs]
        4 NAMECALL                         R2 R0 K2 ["GetChildren"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 3
        8 FORGPREP_NEXT                    R1
        9 LOADK                            R8 K3 ["Tool"]
       10 NAMECALL                         R6 R5 K4 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+1]
       14 RETURN                           R5 1
       15 FORGLOOP                         R1 2 ; [-7]
       17 RETURN                           R0 0

PROTO_33:
        0 JUMPIFNOT                        R0 ; [+3]
        1 NAMECALL                         R1 R0 K0 ["Disconnect"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 LOADN                            R3 0
        3 GETTABLEKS                       R4 R0 K1 ["Z"]
        5 FASTCALL                         VECTOR ; [+2]
        6 GETIMPORT                        R1 K4 [Vector3.new]
        8 CALL                             R1 3 1
        9 GETTABLEKS                       R2 R1 K5 ["Magnitude"]
       11 LOADK                            R3 K6 [1E-06]
       12 JUMPIFNOTLT                      R2 R3 ; [+4]
       14 GETIMPORT                        R2 K9 [Vector2.zero]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R1 R1 K10 ["Unit"]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K11 ["CurrentCamera"]
       22 JUMPIF                           R2 ; [+9]
       23 GETIMPORT                        R3 K12 [Vector2.new]
       25 GETTABLEKS                       R4 R1 K0 ["X"]
       27 GETTABLEKS                       R6 R1 K1 ["Z"]
       29 MINUS                            R5 R6
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1
       32 GETTABLEKS                       R3 R2 K13 ["CFrame"]
       34 NAMECALL                         R3 R3 K14 ["ToEulerAnglesYXZ"]
       36 CALL                             R3 1 3
       37 GETIMPORT                        R6 K16 [CFrame.Angles]
       39 LOADN                            R7 0
       40 MOVE                             R8 R4
       41 LOADN                            R9 0
       42 CALL                             R6 3 1
       43 MOVE                             R8 R1
       44 NAMECALL                         R6 R6 K17 ["VectorToObjectSpace"]
       46 CALL                             R6 2 1
       47 GETIMPORT                        R7 K12 [Vector2.new]
       49 GETTABLEKS                       R8 R6 K0 ["X"]
       51 GETTABLEKS                       R10 R6 K1 ["Z"]
       53 MINUS                            R9 R10
       54 CALL                             R7 2 -1
       55 RETURN                           R7 -1

PROTO_35:
        0 NEWTABLE                         R2 32 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K3 [tick]
       10 CALL                             R2 0 1
       11 SETTABLEKS                       R2 R1 K4 ["mouse2DownTime"]
       13 GETIMPORT                        R2 K7 [Vector2.new]
       15 CALL                             R2 0 1
       16 SETTABLEKS                       R2 R1 K8 ["mouse2DownPos"]
       18 GETIMPORT                        R2 K3 [tick]
       20 CALL                             R2 0 1
       21 SETTABLEKS                       R2 R1 K9 ["mouse2UpTime"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K10 ["humanoidDiedConn"]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K11 ["characterChildAddedConn"]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K12 ["onCharacterAddedConn"]
       32 LOADNIL                          R2
       33 SETTABLEKS                       R2 R1 K13 ["characterChildRemovedConn"]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K14 ["renderSteppedConn"]
       38 LOADNIL                          R2
       39 SETTABLEKS                       R2 R1 K15 ["menuOpenedConnection"]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K16 ["preferredInputChangedConnection"]
       44 GETUPVAL                         R2 1
       45 JUMPIF                           R2 ; [+3]
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K17 ["jumpEnabled"]
       49 LOADNIL                          R2
       50 SETTABLEKS                       R2 R1 K18 ["clickPressedConn"]
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R1 K19 ["clickReleasedConn"]
       55 LOADB                            R2 0
       56 SETTABLEKS                       R2 R1 K20 ["shouldCleanupPath"]
       58 GETUPVAL                         R2 2
       59 JUMPIF                           R2 ; [+7]
       60 GETIMPORT                        R2 K7 [Vector2.new]
       62 LOADN                            R3 0
       63 LOADN                            R4 0
       64 CALL                             R2 2 1
       65 SETTABLEKS                       R2 R1 K21 ["lastPatherMoveVector"]
       67 LOADB                            R2 0
       68 SETTABLEKS                       R2 R1 K22 ["lastPatherJumped"]
       70 LOADNIL                          R2
       71 SETTABLEKS                       R2 R1 K23 ["playerData"]
       73 LOADB                            R2 0
       74 SETTABLEKS                       R2 R1 K24 ["running"]
       76 RETURN                           R1 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Cancel"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+6]
       10 GETUPVAL                         R1 1
       11 NAMECALL                         R1 R1 K1 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 1
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 2
       19 NAMECALL                         R1 R1 K1 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 2
       24 LOADB                            R1 1
       25 SETTABLEKS                       R1 R0 K2 ["shouldCleanupPath"]
       27 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CleanupPath"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 3
        8 CALL                             R0 1 1
        9 JUMPIFNOT                        R0 ; [+3]
       10 NAMECALL                         R1 R0 K1 ["Activate"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CleanupPath"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+19]
        9 GETUPVAL                         R0 2
       10 JUMPIFNOT                        R0 ; [+7]
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 3
       14 NAMECALL                         R1 R1 K1 ["IsActive"]
       16 CALL                             R1 1 1
       17 NOT                              R0 R1
       18 JUMPIFNOT                        R0 ; [+4]
       19 GETUPVAL                         R1 4
       20 GETTABLEKS                       R1 R1 K2 ["PlayFailureAnimation"]
       22 CALL                             R1 0 0
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R1 R1 K3 ["DisplayFailureWaypoint"]
       26 GETUPVAL                         R2 5
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_39:
        0 LOADB                            R6 0
        1 SETTABLEKS                       R6 R0 K0 ["shouldCleanupPath"]
        3 GETUPVAL                         R6 0
        4 JUMPIFNOT                        R6 ; [+3]
        5 NAMECALL                         R6 R0 K1 ["CleanupPath"]
        7 CALL                             R6 1 0
        8 SETUPVAL                         R1 0
        9 MOVE                             R8 R5
       10 NAMECALL                         R6 R1 K2 ["Start"]
       12 CALL                             R6 2 0
       13 GETTABLEKS                       R6 R1 K3 ["Finished"]
       15 GETTABLEKS                       R6 R6 K4 ["Event"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R4
       22 NAMECALL                         R6 R6 K5 ["Connect"]
       24 CALL                             R6 2 1
       25 SETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R1 K6 ["PathFailed"]
       28 GETTABLEKS                       R6 R6 K4 ["Event"]
       30 NEWCLOSURE                       R8 P1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R2
       37 NAMECALL                         R6 R6 K5 ["Connect"]
       39 CALL                             R6 2 1
       40 SETUPVAL                         R6 3
       41 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+9]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["IsActive"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R2 R2 K1 ["Cancel"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["PlayFailureAnimation"]
       16 CALL                             R2 0 0
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["DisplayFailureWaypoint"]
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Character"]
        6 GETUPVAL                         R7 1
        7 MOVE                             R8 R7
        8 JUMPIFNOT                        R8 ; [+2]
        9 GETTABLEKS                       R8 R7 K1 ["Character"]
       11 JUMPIFNOT                        R8 ; [+21]
       12 GETUPVAL                         R10 2
       13 GETTABLE                         R9 R10 R7
       14 JUMPIFNOT                        R9 ; [+6]
       15 GETTABLEKS                       R10 R9 K2 ["Parent"]
       17 JUMPIFNOTEQ                      R10 R8 ; [+3]
       19 MOVE                             R6 R9
       20 JUMP                             ; [+13]
       21 GETUPVAL                         R10 2
       22 LOADNIL                          R11
       23 SETTABLE                         R11 R10 R7
       24 LOADK                            R12 K3 ["Humanoid"]
       25 NAMECALL                         R10 R8 K4 ["FindFirstChildOfClass"]
       27 CALL                             R10 2 1
       28 JUMPIFNOT                        R10 ; [+2]
       29 GETUPVAL                         R11 2
       30 SETTABLE                         R10 R11 R7
       31 MOVE                             R6 R10
       32 JUMP                             ; [+1]
       33 LOADNIL                          R6
       34 LOADB                            R5 0
       35 JUMPIFEQKNIL                     R6 ; [+8]
       37 GETTABLEKS                       R7 R6 K5 ["Health"]
       39 LOADN                            R8 0
       40 JUMPIFLT                         R8 R7 ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 JUMPIF                           R5 ; [+1]
       45 RETURN                           R0 0
       46 LENGTH                           R5 R1
       47 JUMPIFEQKN                       R5 K6 [1] ; [+2]
       49 JUMPIFNOT                        R2 ; [+202]
       50 JUMPIFNOT                        R3 ; [+213]
       51 GETTABLEN                        R7 R1 1
       52 GETTABLEKS                       R7 R7 K7 ["X"]
       54 GETTABLEN                        R8 R1 1
       55 GETTABLEKS                       R8 R8 K8 ["Y"]
       57 NAMECALL                         R5 R3 K9 ["ScreenPointToRay"]
       59 CALL                             R5 3 1
       60 GETUPVAL                         R6 3
       61 JUMPIFNOT                        R6 ; [+113]
       62 LOADNIL                          R6
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 GETUPVAL                         R10 4
       66 JUMPIFNOT                        R10 ; [+2]
       67 GETUPVAL                         R9 4
       68 JUMP                             ; [+22]
       69 NEWTABLE                         R10 0 0
       71 SETUPVAL                         R10 4
       72 GETUPVAL                         R11 4
       73 FASTCALL2K                       ASSERT R11 K10 ; [+4]
       75 LOADK                            R12 K10 [""]
       76 GETIMPORT                        R10 K12 [assert]
       78 CALL                             R10 2 0
       79 GETUPVAL                         R11 4
       80 GETUPVAL                         R12 1
       81 JUMPIFNOT                        R12 ; [+3]
       82 GETUPVAL                         R12 1
       83 GETTABLEKS                       R12 R12 K1 ["Character"]
       85 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       87 GETIMPORT                        R10 K15 [table.insert]
       89 CALL                             R10 2 0
       90 GETUPVAL                         R9 4
       91 JUMPIF                           R9 ; [+2]
       92 NEWTABLE                         R9 0 0
       94 LOADB                            R10 1
       95 GETUPVAL                         R11 5
       96 SETTABLEKS                       R9 R11 K16 ["FilterDescendantsInstances"]
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R13 R5 K17 ["Origin"]
      101 GETTABLEKS                       R15 R5 K19 ["Direction"]
      103 MULK                             R14 R15 K18 [1000]
      104 GETUPVAL                         R15 5
      105 NAMECALL                         R11 R11 K20 ["Raycast"]
      107 CALL                             R11 4 1
      108 MOVE                             R8 R11
      109 JUMPIFNOT                        R8 ; [+27]
      110 GETTABLEKS                       R11 R8 K21 ["Instance"]
      112 GETTABLEKS                       R12 R11 K22 ["CanCollide"]
      114 JUMPIF                           R12 ; [+22]
      115 LOADK                            R14 K3 ["Humanoid"]
      116 NAMECALL                         R12 R11 K4 ["FindFirstChildOfClass"]
      118 CALL                             R12 2 1
      119 MOVE                             R6 R12
      120 MOVE                             R7 R11
      121 GETTABLEKS                       R11 R11 K2 ["Parent"]
      123 JUMPIF                           R6 ; [+2]
      124 JUMPIFNOT                        R11 ; [+1]
      125 JUMPBACK                         ; [-11]
      126 JUMPIF                           R6 ; [+10]
      127 JUMPIFNOT                        R11 ; [+9]
      128 LOADNIL                          R7
      129 LOADB                            R10 0
      130 FASTCALL2                        TABLE_INSERT R9 R11 ; [+5]
      132 MOVE                             R13 R9
      133 MOVE                             R14 R11
      134 GETIMPORT                        R12 K15 [table.insert]
      136 CALL                             R12 2 0
      137 JUMPIF                           R10 ; [+1]
      138 JUMPBACK                         ; [-45]
      139 JUMPIFNOT                        R8 ; [+1]
      140 JUMPIF                           R4 ; [+1]
      141 RETURN                           R0 0
      142 GETTABLEKS                       R10 R8 K23 ["Position"]
      144 JUMPIFNOT                        R2 ; [+2]
      145 MOVE                             R10 R2
      146 LOADNIL                          R7
      147 NAMECALL                         R11 R0 K24 ["CleanupPath"]
      149 CALL                             R11 1 0
      150 GETUPVAL                         R11 6
      151 MOVE                             R12 R10
      152 GETTABLEKS                       R13 R8 K25 ["Normal"]
      154 CALL                             R11 2 1
      155 NAMECALL                         R12 R11 K26 ["IsValidPath"]
      157 CALL                             R12 1 1
      158 JUMPIFNOT                        R12 ; [+8]
      159 MOVE                             R14 R11
      160 MOVE                             R15 R10
      161 MOVE                             R16 R7
      162 MOVE                             R17 R4
      163 NAMECALL                         R12 R0 K27 ["HandleMoveTo"]
      165 CALL                             R12 5 0
      166 RETURN                           R0 0
      167 NAMECALL                         R12 R11 K28 ["Cleanup"]
      169 CALL                             R12 1 0
      170 MOVE                             R14 R10
      171 NAMECALL                         R12 R0 K29 ["ShowPathFailedFeedback"]
      173 CALL                             R12 2 0
      174 RETURN                           R0 0
      175 GETIMPORT                        R6 K32 [Ray.new]
      177 GETTABLEKS                       R7 R5 K17 ["Origin"]
      179 GETTABLEKS                       R9 R5 K19 ["Direction"]
      181 MULK                             R8 R9 K18 [1000]
      182 CALL                             R6 2 1
      183 GETUPVAL                         R7 7
      184 GETTABLEKS                       R7 R7 K20 ["Raycast"]
      186 MOVE                             R8 R6
      187 LOADB                            R9 1
      188 GETUPVAL                         R11 4
      189 JUMPIFNOT                        R11 ; [+2]
      190 GETUPVAL                         R10 4
      191 JUMP                             ; [+22]
      192 NEWTABLE                         R11 0 0
      194 SETUPVAL                         R11 4
      195 GETUPVAL                         R12 4
      196 FASTCALL2K                       ASSERT R12 K10 ; [+4]
      198 LOADK                            R13 K10 [""]
      199 GETIMPORT                        R11 K12 [assert]
      201 CALL                             R11 2 0
      202 GETUPVAL                         R12 4
      203 GETUPVAL                         R13 1
      204 JUMPIFNOT                        R13 ; [+3]
      205 GETUPVAL                         R13 1
      206 GETTABLEKS                       R13 R13 K1 ["Character"]
      208 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      210 GETIMPORT                        R11 K15 [table.insert]
      212 CALL                             R11 2 0
      213 GETUPVAL                         R10 4
      214 CALL                             R7 3 3
      215 GETUPVAL                         R10 7
      216 GETTABLEKS                       R10 R10 K33 ["FindCharacterAncestor"]
      218 MOVE                             R11 R7
      219 CALL                             R10 1 2
      220 JUMPIFNOT                        R2 ; [+2]
      221 MOVE                             R8 R2
      222 LOADNIL                          R10
      223 JUMPIFNOT                        R8 ; [+40]
      224 JUMPIFNOT                        R4 ; [+39]
      225 NAMECALL                         R12 R0 K24 ["CleanupPath"]
      227 CALL                             R12 1 0
      228 GETUPVAL                         R12 6
      229 MOVE                             R13 R8
      230 MOVE                             R14 R9
      231 CALL                             R12 2 1
      232 NAMECALL                         R13 R12 K26 ["IsValidPath"]
      234 CALL                             R13 1 1
      235 JUMPIFNOT                        R13 ; [+8]
      236 MOVE                             R15 R12
      237 MOVE                             R16 R8
      238 MOVE                             R17 R10
      239 MOVE                             R18 R4
      240 NAMECALL                         R13 R0 K27 ["HandleMoveTo"]
      242 CALL                             R13 5 0
      243 RETURN                           R0 0
      244 NAMECALL                         R13 R12 K28 ["Cleanup"]
      246 CALL                             R13 1 0
      247 MOVE                             R15 R8
      248 NAMECALL                         R13 R0 K29 ["ShowPathFailedFeedback"]
      250 CALL                             R13 2 0
      251 RETURN                           R0 0
      252 LENGTH                           R5 R1
      253 LOADN                            R6 2
      254 JUMPIFNOTLE                      R6 R5 ; [+9]
      256 JUMPIFNOT                        R3 ; [+7]
      257 GETUPVAL                         R5 8
      258 MOVE                             R6 R4
      259 CALL                             R5 1 1
      260 JUMPIFNOT                        R5 ; [+3]
      261 NAMECALL                         R6 R5 K34 ["Activate"]
      263 CALL                             R6 1 0
      264 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R1 R0 K0 ["humanoidDiedConn"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 NAMECALL                         R2 R1 K1 ["Disconnect"]
        5 CALL                             R2 1 0
        6 GETTABLEKS                       R1 R0 K2 ["characterChildAddedConn"]
        8 JUMPIFNOT                        R1 ; [+3]
        9 NAMECALL                         R2 R1 K1 ["Disconnect"]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R1 R0 K3 ["onCharacterAddedConn"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K1 ["Disconnect"]
       17 CALL                             R2 1 0
       18 GETTABLEKS                       R1 R0 K4 ["renderSteppedConn"]
       20 JUMPIFNOT                        R1 ; [+3]
       21 NAMECALL                         R2 R1 K1 ["Disconnect"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R1 R0 K5 ["characterChildRemovedConn"]
       26 JUMPIFNOT                        R1 ; [+3]
       27 NAMECALL                         R2 R1 K1 ["Disconnect"]
       29 CALL                             R2 1 0
       30 GETTABLEKS                       R1 R0 K6 ["menuOpenedConnection"]
       32 JUMPIFNOT                        R1 ; [+3]
       33 NAMECALL                         R2 R1 K1 ["Disconnect"]
       35 CALL                             R2 1 0
       36 GETTABLEKS                       R1 R0 K7 ["preferredInputChangedConnection"]
       38 JUMPIFNOT                        R1 ; [+3]
       39 NAMECALL                         R2 R1 K1 ["Disconnect"]
       41 CALL                             R2 1 0
       42 GETTABLEKS                       R1 R0 K8 ["clickPressedConn"]
       44 JUMPIFNOT                        R1 ; [+3]
       45 NAMECALL                         R2 R1 K1 ["Disconnect"]
       47 CALL                             R2 1 0
       48 GETTABLEKS                       R1 R0 K9 ["clickReleasedConn"]
       50 JUMPIFNOT                        R1 ; [+3]
       51 NAMECALL                         R2 R1 K1 ["Disconnect"]
       53 CALL                             R2 1 0
       54 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Character"]
        3 JUMPIFNOT                        R1 ; [+25]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["PreferredInput"]
        7 GETIMPORT                        R4 K4 [Enum.PreferredInput.Touch]
        9 JUMPIFEQ                         R3 R4 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETIMPORT                        R3 K6 [pairs]
       15 NAMECALL                         R4 R1 K7 ["GetChildren"]
       17 CALL                             R4 1 -1
       18 CALL                             R3 -1 3
       19 FORGPREP_NEXT                    R3
       20 LOADK                            R10 K8 ["Tool"]
       21 NAMECALL                         R8 R7 K9 ["IsA"]
       23 CALL                             R8 2 1
       24 JUMPIFNOT                        R8 ; [+2]
       25 SETTABLEKS                       R2 R7 K10 ["ManualActivationOnly"]
       27 FORGLOOP                         R3 2 ; [-8]
       29 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetGuiInset"]
        3 CALL                             R0 1 2
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["GetState"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K2 ["X"]
       10 JUMPIFNOTEQKN                    R3 K3 [-1] ; [+6]
       12 GETTABLEKS                       R3 R2 K4 ["Y"]
       14 JUMPIFNOTEQKN                    R3 K3 [-1] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 2
       18 JUMPIFNOT                        R3 ; [+23]
       19 GETUPVAL                         R3 0
       20 GETIMPORT                        R5 K8 [Enum.ScreenInsets.None]
       22 NAMECALL                         R3 R3 K9 ["GetInsetArea"]
       24 CALL                             R3 2 1
       25 GETTABLEKS                       R3 R3 K10 ["Min"]
       27 GETIMPORT                        R4 K13 [Vector2.new]
       29 GETTABLEKS                       R6 R2 K2 ["X"]
       31 GETTABLEKS                       R7 R3 K2 ["X"]
       33 ADD                              R5 R6 R7
       34 GETTABLEKS                       R7 R2 K4 ["Y"]
       36 GETTABLEKS                       R8 R3 K4 ["Y"]
       38 ADD                              R6 R7 R8
       39 CALL                             R4 2 1
       40 MOVE                             R2 R4
       41 JUMP                             ; [+14]
       42 GETIMPORT                        R3 K13 [Vector2.new]
       44 GETTABLEKS                       R5 R2 K2 ["X"]
       46 GETTABLEKS                       R6 R0 K2 ["X"]
       48 SUB                              R4 R5 R6
       49 GETTABLEKS                       R6 R2 K4 ["Y"]
       51 GETTABLEKS                       R7 R0 K4 ["Y"]
       53 SUB                              R5 R6 R7
       54 CALL                             R3 2 1
       55 MOVE                             R2 R3
       56 GETUPVAL                         R3 3
       57 SETTABLEKS                       R2 R3 K14 ["mouse2DownPos"]
       59 GETUPVAL                         R3 3
       60 GETIMPORT                        R4 K16 [tick]
       62 CALL                             R4 0 1
       63 SETTABLEKS                       R4 R3 K17 ["mouse2DownTime"]
       65 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [tick]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K2 ["mouse2UpTime"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K3 ["mouse2DownPos"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["playerData"]
       12 JUMPIFNOT                        R1 ; [+8]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["playerData"]
       16 GETTABLEKS                       R1 R1 K5 ["actions"]
       18 GETTABLEKS                       R1 R1 K6 ["MoveAction"]
       20 JUMPIF                           R1 ; [+1]
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 JUMPIF                           R1 ; [+17]
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K4 ["playerData"]
       27 GETTABLEKS                       R2 R2 K5 ["actions"]
       29 GETTABLEKS                       R2 R2 K6 ["MoveAction"]
       31 NAMECALL                         R2 R2 K7 ["GetState"]
       33 CALL                             R2 1 1
       34 GETTABLEKS                       R2 R2 K8 ["Magnitude"]
       36 LOADN                            R3 0
       37 JUMPIFLE                         R2 R3 ; [+2]
       39 LOADB                            R1 0 +1
       40 LOADB                            R1 1
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K2 ["mouse2UpTime"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K9 ["mouse2DownTime"]
       47 SUB                              R2 R3 R4
       48 LOADK                            R3 K10 [0.25]
       49 JUMPIFNOTLT                      R2 R3 ; [+12]
       51 JUMPIFNOT                        R1 ; [+10]
       52 NEWTABLE                         R2 0 1
       54 MOVE                             R3 R0
       55 SETLIST                          R2 R3 1 [1]
       57 GETUPVAL                         R3 0
       58 MOVE                             R5 R2
       59 NAMECALL                         R3 R3 K11 ["OnTap"]
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CleanupPath"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_47:
        0 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreferredInput"]
        3 GETIMPORT                        R2 K3 [Enum.PreferredInput.Touch]
        5 JUMPIFNOTEQ                      R1 R2 ; [+9]
        7 LOADK                            R3 K4 ["Tool"]
        8 NAMECALL                         R1 R0 K5 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K6 ["ManualActivationOnly"]
       15 LOADK                            R3 K7 ["Humanoid"]
       16 NAMECALL                         R1 R0 K5 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+16]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K8 ["humanoidDiedConn"]
       23 JUMPIFNOT                        R1 ; [+3]
       24 NAMECALL                         R2 R1 K9 ["Disconnect"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R2 R0 K10 ["Died"]
       30 DUPCLOSURE                       R4 K11 [PROTO_47]
       31 NAMECALL                         R2 R2 K12 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K8 ["humanoidDiedConn"]
       36 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PreferredInput"]
        3 GETIMPORT                        R2 K3 [Enum.PreferredInput.Touch]
        5 JUMPIFNOTEQ                      R1 R2 ; [+9]
        7 LOADK                            R3 K4 ["Tool"]
        8 NAMECALL                         R1 R0 K5 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+3]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K6 ["ManualActivationOnly"]
       15 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["OnPreferredInputChanged"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_52:
        0 NAMECALL                         R2 R0 K0 ["DisconnectEvents"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Pressed"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R2 R2 K2 ["Connect"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K3 ["clickPressedConn"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K4 ["Released"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 NAMECALL                         R2 R2 K2 ["Connect"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R0 K5 ["clickReleasedConn"]
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K6 ["MenuOpened"]
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R2 R2 K2 ["Connect"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R0 K7 ["menuOpenedConnection"]
       37 NEWCLOSURE                       R2 P3
       38 CAPTURE                          UPVAL U5
       39 CAPTURE                          VAL R0
       40 GETTABLEKS                       R3 R1 K8 ["ChildAdded"]
       42 NEWCLOSURE                       R5 P4
       43 CAPTURE                          VAL R2
       44 NAMECALL                         R3 R3 K2 ["Connect"]
       46 CALL                             R3 2 1
       47 SETTABLEKS                       R3 R0 K9 ["characterChildAddedConn"]
       49 GETTABLEKS                       R3 R1 K10 ["ChildRemoved"]
       51 DUPCLOSURE                       R5 K11 [PROTO_50]
       52 CAPTURE                          UPVAL U5
       53 NAMECALL                         R3 R3 K2 ["Connect"]
       55 CALL                             R3 2 1
       56 SETTABLEKS                       R3 R0 K12 ["characterChildRemovedConn"]
       58 GETIMPORT                        R3 K14 [pairs]
       60 NAMECALL                         R4 R1 K15 ["GetChildren"]
       62 CALL                             R4 1 -1
       63 CALL                             R3 -1 3
       64 FORGPREP_NEXT                    R3
       65 MOVE                             R8 R2
       66 MOVE                             R9 R7
       67 CALL                             R8 1 0
       68 FORGLOOP                         R3 2 ; [-4]
       70 GETUPVAL                         R3 5
       71 LOADK                            R5 K16 ["PreferredInput"]
       72 NAMECALL                         R3 R3 K17 ["GetPropertyChangedSignal"]
       74 CALL                             R3 2 1
       75 NEWCLOSURE                       R5 P6
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R3 R3 K2 ["Connect"]
       79 CALL                             R3 2 1
       80 SETTABLEKS                       R3 R0 K18 ["preferredInputChangedConnection"]
       82 RETURN                           R0 0

PROTO_53:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["Enable"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_54:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["Enable"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["OnCharacterAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_56:
        0 JUMPIFNOT                        R1 ; [+41]
        1 GETTABLEKS                       R4 R0 K0 ["running"]
        3 JUMPIF                           R4 ; [+23]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["Character"]
        7 JUMPIFNOT                        R4 ; [+6]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["Character"]
       11 NAMECALL                         R4 R0 K2 ["OnCharacterAdded"]
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K3 ["CharacterAdded"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R0
       19 NAMECALL                         R4 R4 K4 ["Connect"]
       21 CALL                             R4 2 1
       22 SETTABLEKS                       R4 R0 K5 ["onCharacterAddedConn"]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R0 K0 ["running"]
       27 GETUPVAL                         R4 1
       28 JUMPIF                           R4 ; [+70]
       29 SETTABLEKS                       R3 R0 K6 ["touchJumpController"]
       31 GETTABLEKS                       R4 R0 K6 ["touchJumpController"]
       33 JUMPIFNOT                        R4 ; [+65]
       34 GETTABLEKS                       R4 R0 K6 ["touchJumpController"]
       36 GETTABLEKS                       R6 R0 K7 ["jumpEnabled"]
       38 NAMECALL                         R4 R4 K8 ["Enable"]
       40 CALL                             R4 2 0
       41 JUMP                             ; [+57]
       42 GETTABLEKS                       R4 R0 K0 ["running"]
       44 JUMPIFNOT                        R4 ; [+37]
       45 NAMECALL                         R4 R0 K9 ["DisconnectEvents"]
       47 CALL                             R4 1 0
       48 NAMECALL                         R4 R0 K10 ["CleanupPath"]
       50 CALL                             R4 1 0
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R4 R4 K11 ["PreferredInput"]
       54 GETIMPORT                        R5 K14 [Enum.PreferredInput.Touch]
       56 JUMPIFNOTEQ                      R4 R5 ; [+22]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R4 R4 K1 ["Character"]
       61 JUMPIFNOT                        R4 ; [+17]
       62 GETIMPORT                        R5 K16 [pairs]
       64 NAMECALL                         R6 R4 K17 ["GetChildren"]
       66 CALL                             R6 1 -1
       67 CALL                             R5 -1 3
       68 FORGPREP_NEXT                    R5
       69 LOADK                            R12 K18 ["Tool"]
       70 NAMECALL                         R10 R9 K19 ["IsA"]
       72 CALL                             R10 2 1
       73 JUMPIFNOT                        R10 ; [+3]
       74 LOADB                            R10 0
       75 SETTABLEKS                       R10 R9 K20 ["ManualActivationOnly"]
       77 FORGLOOP                         R5 2 ; [-9]
       79 LOADB                            R4 0
       80 SETTABLEKS                       R4 R0 K0 ["running"]
       82 GETUPVAL                         R4 1
       83 JUMPIF                           R4 ; [+15]
       84 GETTABLEKS                       R4 R0 K6 ["touchJumpController"]
       86 JUMPIFNOT                        R4 ; [+9]
       87 GETTABLEKS                       R4 R0 K7 ["jumpEnabled"]
       89 JUMPIF                           R4 ; [+6]
       90 GETTABLEKS                       R4 R0 K6 ["touchJumpController"]
       92 LOADB                            R6 1
       93 NAMECALL                         R4 R4 K8 ["Enable"]
       95 CALL                             R4 2 0
       96 LOADNIL                          R4
       97 SETTABLEKS                       R4 R0 K6 ["touchJumpController"]
       99 GETUPVAL                         R4 3
      100 SETTABLEKS                       R1 R4 K21 ["Enabled"]
      102 GETUPVAL                         R4 4
      103 SETTABLEKS                       R1 R4 K21 ["Enabled"]
      105 JUMPIFNOT                        R1 ; [+2]
      106 MOVE                             R4 R2
      107 JUMPIF                           R4 ; [+1]
      108 LOADB                            R4 0
      109 SETTABLEKS                       R4 R0 K22 ["wasdEnabled"]
      111 SETTABLEKS                       R1 R0 K23 ["enabled"]
      113 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 0
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 0
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 0
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K7 [Vector2.zero]
        8 NAMECALL                         R0 R0 K8 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 0
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K7 [Vector2.zero]
        8 NAMECALL                         R0 R0 K8 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 LOADB                            R2 0
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_68:
        0 GETTABLEKS                       R4 R1 K0 ["actions"]
        2 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
        4 FASTCALL1                        ASSERT R4 ; [+2]
        5 GETIMPORT                        R3 K3 [assert]
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R4 R1 K0 ["actions"]
       10 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
       12 FASTCALL1                        ASSERT R4 ; [+2]
       13 GETIMPORT                        R3 K3 [assert]
       15 CALL                             R3 1 0
       16 GETTABLEKS                       R3 R0 K5 ["playerData"]
       18 JUMPIF                           R3 ; [+2]
       19 SETTABLEKS                       R1 R0 K5 ["playerData"]
       21 GETUPVAL                         R3 0
       22 JUMPIFNOT                        R3 ; [+504]
       23 MOVE                             R6 R2
       24 NAMECALL                         R4 R3 K6 ["OnRenderStepped"]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 0
       28 JUMPIFNOT                        R4 ; [+418]
       29 GETUPVAL                         R4 0
       30 JUMPIFNOTEQ                      R4 R3 ; [+416]
       32 GETUPVAL                         R4 1
       33 JUMPIFNOT                        R4 ; [+222]
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R5 R3 K7 ["NextActionMoveDirection"]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 3
       39 JUMPIFNOT                        R5 ; [+14]
       40 GETTABLEKS                       R5 R1 K0 ["actions"]
       42 GETTABLEKS                       R5 R5 K1 ["MoveAction"]
       44 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
       45 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
       47 CALL                             R5 2 1
       48 JUMPIFNOT                        R5 ; [+49]
       49 MOVE                             R8 R4
       50 NAMECALL                         R6 R5 K10 ["Fire"]
       52 CALL                             R6 2 0
       53 JUMP                             ; [+44]
       54 GETUPVAL                         R5 4
       55 JUMPIFNOT                        R5 ; [+34]
       56 GETTABLEKS                       R5 R1 K0 ["actions"]
       58 GETTABLEKS                       R5 R5 K1 ["MoveAction"]
       60 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
       61 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
       63 CALL                             R5 2 1
       64 JUMPIFNOT                        R5 ; [+16]
       65 GETIMPORT                        R6 K12 [pcall]
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CALL                             R6 1 2
       71 JUMPIF                           R6 ; [+26]
       72 GETTABLEKS                       R8 R1 K0 ["actions"]
       74 GETTABLEKS                       R8 R8 K1 ["MoveAction"]
       76 MOVE                             R10 R4
       77 NAMECALL                         R8 R8 K10 ["Fire"]
       79 CALL                             R8 2 0
       80 JUMP                             ; [+17]
       81 GETTABLEKS                       R6 R1 K0 ["actions"]
       83 GETTABLEKS                       R6 R6 K1 ["MoveAction"]
       85 MOVE                             R8 R4
       86 NAMECALL                         R6 R6 K10 ["Fire"]
       88 CALL                             R6 2 0
       89 JUMP                             ; [+8]
       90 GETTABLEKS                       R5 R1 K0 ["actions"]
       92 GETTABLEKS                       R5 R5 K1 ["MoveAction"]
       94 MOVE                             R7 R4
       95 NAMECALL                         R5 R5 K10 ["Fire"]
       97 CALL                             R5 2 0
       98 SETTABLEKS                       R4 R1 K13 ["moveVector"]
      100 GETTABLEKS                       R5 R3 K14 ["NextActionJump"]
      102 JUMPIFNOT                        R5 ; [+75]
      103 GETTABLEKS                       R5 R1 K0 ["actions"]
      105 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      107 NAMECALL                         R5 R5 K15 ["GetState"]
      109 CALL                             R5 1 1
      110 JUMPIFEQKB                       R5 TRUE ; [+60]
      112 GETUPVAL                         R5 3
      113 JUMPIFNOT                        R5 ; [+14]
      114 GETTABLEKS                       R5 R1 K0 ["actions"]
      116 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      118 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
      119 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
      121 CALL                             R5 2 1
      122 JUMPIFNOT                        R5 ; [+48]
      123 LOADB                            R8 1
      124 NAMECALL                         R6 R5 K10 ["Fire"]
      126 CALL                             R6 2 0
      127 JUMP                             ; [+43]
      128 GETUPVAL                         R5 4
      129 JUMPIFNOT                        R5 ; [+33]
      130 GETTABLEKS                       R5 R1 K0 ["actions"]
      132 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      134 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
      135 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
      137 CALL                             R5 2 1
      138 JUMPIFNOT                        R5 ; [+15]
      139 GETIMPORT                        R6 K12 [pcall]
      141 NEWCLOSURE                       R7 P1
      142 CAPTURE                          VAL R5
      143 CALL                             R6 1 2
      144 JUMPIF                           R6 ; [+26]
      145 GETTABLEKS                       R8 R1 K0 ["actions"]
      147 GETTABLEKS                       R8 R8 K4 ["JumpAction"]
      149 LOADB                            R10 1
      150 NAMECALL                         R8 R8 K10 ["Fire"]
      152 CALL                             R8 2 0
      153 JUMP                             ; [+17]
      154 GETTABLEKS                       R6 R1 K0 ["actions"]
      156 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      158 LOADB                            R8 1
      159 NAMECALL                         R6 R6 K10 ["Fire"]
      161 CALL                             R6 2 0
      162 JUMP                             ; [+8]
      163 GETTABLEKS                       R5 R1 K0 ["actions"]
      165 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      167 LOADB                            R7 1
      168 NAMECALL                         R5 R5 K10 ["Fire"]
      170 CALL                             R5 2 0
      171 LOADB                            R5 1
      172 SETTABLEKS                       R5 R0 K16 ["lastPatherJumped"]
      174 LOADB                            R5 1
      175 SETTABLEKS                       R5 R1 K17 ["isJumping"]
      177 JUMP                             ; [+349]
      178 GETTABLEKS                       R5 R0 K16 ["lastPatherJumped"]
      180 JUMPIFNOT                        R5 ; [+346]
      181 GETTABLEKS                       R5 R1 K0 ["actions"]
      183 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      185 NAMECALL                         R5 R5 K15 ["GetState"]
      187 CALL                             R5 1 1
      188 JUMPIFNOTEQKB                    R5 TRUE ; [+60]
      190 GETUPVAL                         R5 3
      191 JUMPIFNOT                        R5 ; [+14]
      192 GETTABLEKS                       R5 R1 K0 ["actions"]
      194 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      196 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
      197 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
      199 CALL                             R5 2 1
      200 JUMPIFNOT                        R5 ; [+48]
      201 LOADB                            R8 0
      202 NAMECALL                         R6 R5 K10 ["Fire"]
      204 CALL                             R6 2 0
      205 JUMP                             ; [+43]
      206 GETUPVAL                         R5 4
      207 JUMPIFNOT                        R5 ; [+33]
      208 GETTABLEKS                       R5 R1 K0 ["actions"]
      210 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      212 LOADK                            R7 K8 ["ClickToMoveScriptableBinding"]
      213 NAMECALL                         R5 R5 K9 ["FindFirstChild"]
      215 CALL                             R5 2 1
      216 JUMPIFNOT                        R5 ; [+15]
      217 GETIMPORT                        R6 K12 [pcall]
      219 NEWCLOSURE                       R7 P2
      220 CAPTURE                          VAL R5
      221 CALL                             R6 1 2
      222 JUMPIF                           R6 ; [+26]
      223 GETTABLEKS                       R8 R1 K0 ["actions"]
      225 GETTABLEKS                       R8 R8 K4 ["JumpAction"]
      227 LOADB                            R10 0
      228 NAMECALL                         R8 R8 K10 ["Fire"]
      230 CALL                             R8 2 0
      231 JUMP                             ; [+17]
      232 GETTABLEKS                       R6 R1 K0 ["actions"]
      234 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      236 LOADB                            R8 0
      237 NAMECALL                         R6 R6 K10 ["Fire"]
      239 CALL                             R6 2 0
      240 JUMP                             ; [+8]
      241 GETTABLEKS                       R5 R1 K0 ["actions"]
      243 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      245 LOADB                            R7 0
      246 NAMECALL                         R5 R5 K10 ["Fire"]
      248 CALL                             R5 2 0
      249 LOADB                            R5 0
      250 SETTABLEKS                       R5 R0 K16 ["lastPatherJumped"]
      252 LOADB                            R5 0
      253 SETTABLEKS                       R5 R1 K17 ["isJumping"]
      255 JUMP                             ; [+271]
      256 GETTABLEKS                       R4 R1 K0 ["actions"]
      258 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      260 NAMECALL                         R4 R4 K15 ["GetState"]
      262 CALL                             R4 1 1
      263 GETUPVAL                         R5 2
      264 GETTABLEKS                       R6 R3 K7 ["NextActionMoveDirection"]
      266 CALL                             R5 1 1
      267 GETTABLEKS                       R7 R0 K18 ["lastPatherMoveVector"]
      269 SUB                              R6 R4 R7
      270 GETTABLEKS                       R6 R6 K19 ["Magnitude"]
      272 LOADK                            R7 K20 [1E-06]
      273 JUMPIFNOTLT                      R7 R6 ; [+9]
      275 NAMECALL                         R6 R0 K21 ["CleanupPath"]
      277 CALL                             R6 1 0
      278 GETUPVAL                         R6 5
      279 GETTABLEKS                       R6 R6 K22 ["CancelFailureAnimation"]
      281 CALL                             R6 0 0
      282 JUMP                             ; [+244]
      283 SETTABLEKS                       R5 R0 K18 ["lastPatherMoveVector"]
      285 GETUPVAL                         R6 4
      286 JUMPIFNOT                        R6 ; [+34]
      287 GETTABLEKS                       R6 R1 K0 ["actions"]
      289 GETTABLEKS                       R6 R6 K1 ["MoveAction"]
      291 LOADK                            R8 K8 ["ClickToMoveScriptableBinding"]
      292 NAMECALL                         R6 R6 K9 ["FindFirstChild"]
      294 CALL                             R6 2 1
      295 JUMPIFNOT                        R6 ; [+16]
      296 GETIMPORT                        R7 K12 [pcall]
      298 NEWCLOSURE                       R8 P3
      299 CAPTURE                          VAL R6
      300 CAPTURE                          VAL R5
      301 CALL                             R7 1 2
      302 JUMPIF                           R7 ; [+26]
      303 GETTABLEKS                       R9 R1 K0 ["actions"]
      305 GETTABLEKS                       R9 R9 K1 ["MoveAction"]
      307 MOVE                             R11 R5
      308 NAMECALL                         R9 R9 K10 ["Fire"]
      310 CALL                             R9 2 0
      311 JUMP                             ; [+17]
      312 GETTABLEKS                       R7 R1 K0 ["actions"]
      314 GETTABLEKS                       R7 R7 K1 ["MoveAction"]
      316 MOVE                             R9 R5
      317 NAMECALL                         R7 R7 K10 ["Fire"]
      319 CALL                             R7 2 0
      320 JUMP                             ; [+8]
      321 GETTABLEKS                       R6 R1 K0 ["actions"]
      323 GETTABLEKS                       R6 R6 K1 ["MoveAction"]
      325 MOVE                             R8 R5
      326 NAMECALL                         R6 R6 K10 ["Fire"]
      328 CALL                             R6 2 0
      329 GETTABLEKS                       R6 R3 K14 ["NextActionJump"]
      331 JUMPIFNOT                        R6 ; [+56]
      332 GETTABLEKS                       R6 R1 K0 ["actions"]
      334 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      336 NAMECALL                         R6 R6 K15 ["GetState"]
      338 CALL                             R6 1 1
      339 JUMPIFEQKB                       R6 TRUE ; [+187]
      341 GETUPVAL                         R6 4
      342 JUMPIFNOT                        R6 ; [+33]
      343 GETTABLEKS                       R6 R1 K0 ["actions"]
      345 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      347 LOADK                            R8 K8 ["ClickToMoveScriptableBinding"]
      348 NAMECALL                         R6 R6 K9 ["FindFirstChild"]
      350 CALL                             R6 2 1
      351 JUMPIFNOT                        R6 ; [+15]
      352 GETIMPORT                        R7 K12 [pcall]
      354 NEWCLOSURE                       R8 P4
      355 CAPTURE                          VAL R6
      356 CALL                             R7 1 2
      357 JUMPIF                           R7 ; [+26]
      358 GETTABLEKS                       R9 R1 K0 ["actions"]
      360 GETTABLEKS                       R9 R9 K4 ["JumpAction"]
      362 LOADB                            R11 1
      363 NAMECALL                         R9 R9 K10 ["Fire"]
      365 CALL                             R9 2 0
      366 JUMP                             ; [+17]
      367 GETTABLEKS                       R7 R1 K0 ["actions"]
      369 GETTABLEKS                       R7 R7 K4 ["JumpAction"]
      371 LOADB                            R9 1
      372 NAMECALL                         R7 R7 K10 ["Fire"]
      374 CALL                             R7 2 0
      375 JUMP                             ; [+8]
      376 GETTABLEKS                       R6 R1 K0 ["actions"]
      378 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      380 LOADB                            R8 1
      381 NAMECALL                         R6 R6 K10 ["Fire"]
      383 CALL                             R6 2 0
      384 LOADB                            R6 1
      385 SETTABLEKS                       R6 R0 K16 ["lastPatherJumped"]
      387 JUMP                             ; [+139]
      388 GETTABLEKS                       R6 R0 K16 ["lastPatherJumped"]
      390 JUMPIFNOT                        R6 ; [+136]
      391 GETTABLEKS                       R6 R1 K0 ["actions"]
      393 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      395 NAMECALL                         R6 R6 K15 ["GetState"]
      397 CALL                             R6 1 1
      398 JUMPIFNOTEQKB                    R6 TRUE ; [+44]
      400 GETUPVAL                         R6 4
      401 JUMPIFNOT                        R6 ; [+33]
      402 GETTABLEKS                       R6 R1 K0 ["actions"]
      404 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      406 LOADK                            R8 K8 ["ClickToMoveScriptableBinding"]
      407 NAMECALL                         R6 R6 K9 ["FindFirstChild"]
      409 CALL                             R6 2 1
      410 JUMPIFNOT                        R6 ; [+15]
      411 GETIMPORT                        R7 K12 [pcall]
      413 NEWCLOSURE                       R8 P5
      414 CAPTURE                          VAL R6
      415 CALL                             R7 1 2
      416 JUMPIF                           R7 ; [+26]
      417 GETTABLEKS                       R9 R1 K0 ["actions"]
      419 GETTABLEKS                       R9 R9 K4 ["JumpAction"]
      421 LOADB                            R11 0
      422 NAMECALL                         R9 R9 K10 ["Fire"]
      424 CALL                             R9 2 0
      425 JUMP                             ; [+17]
      426 GETTABLEKS                       R7 R1 K0 ["actions"]
      428 GETTABLEKS                       R7 R7 K4 ["JumpAction"]
      430 LOADB                            R9 0
      431 NAMECALL                         R7 R7 K10 ["Fire"]
      433 CALL                             R7 2 0
      434 JUMP                             ; [+8]
      435 GETTABLEKS                       R6 R1 K0 ["actions"]
      437 GETTABLEKS                       R6 R6 K4 ["JumpAction"]
      439 LOADB                            R8 0
      440 NAMECALL                         R6 R6 K10 ["Fire"]
      442 CALL                             R6 2 0
      443 LOADB                            R6 0
      444 SETTABLEKS                       R6 R0 K16 ["lastPatherJumped"]
      446 JUMP                             ; [+80]
      447 GETUPVAL                         R4 1
      448 JUMPIF                           R4 ; [+4]
      449 GETIMPORT                        R4 K25 [Vector2.zero]
      451 SETTABLEKS                       R4 R0 K18 ["lastPatherMoveVector"]
      453 GETTABLEKS                       R4 R0 K16 ["lastPatherJumped"]
      455 JUMPIFNOT                        R4 ; [+71]
      456 GETTABLEKS                       R4 R1 K0 ["actions"]
      458 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      460 NAMECALL                         R4 R4 K15 ["GetState"]
      462 CALL                             R4 1 1
      463 JUMPIFNOTEQKB                    R4 TRUE ; [+60]
      465 GETUPVAL                         R4 3
      466 JUMPIFNOT                        R4 ; [+14]
      467 GETTABLEKS                       R4 R1 K0 ["actions"]
      469 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      471 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      472 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      474 CALL                             R4 2 1
      475 JUMPIFNOT                        R4 ; [+48]
      476 LOADB                            R7 0
      477 NAMECALL                         R5 R4 K10 ["Fire"]
      479 CALL                             R5 2 0
      480 JUMP                             ; [+43]
      481 GETUPVAL                         R4 4
      482 JUMPIFNOT                        R4 ; [+33]
      483 GETTABLEKS                       R4 R1 K0 ["actions"]
      485 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      487 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      488 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      490 CALL                             R4 2 1
      491 JUMPIFNOT                        R4 ; [+15]
      492 GETIMPORT                        R5 K12 [pcall]
      494 NEWCLOSURE                       R6 P6
      495 CAPTURE                          VAL R4
      496 CALL                             R5 1 2
      497 JUMPIF                           R5 ; [+26]
      498 GETTABLEKS                       R7 R1 K0 ["actions"]
      500 GETTABLEKS                       R7 R7 K4 ["JumpAction"]
      502 LOADB                            R9 0
      503 NAMECALL                         R7 R7 K10 ["Fire"]
      505 CALL                             R7 2 0
      506 JUMP                             ; [+17]
      507 GETTABLEKS                       R5 R1 K0 ["actions"]
      509 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      511 LOADB                            R7 0
      512 NAMECALL                         R5 R5 K10 ["Fire"]
      514 CALL                             R5 2 0
      515 JUMP                             ; [+8]
      516 GETTABLEKS                       R4 R1 K0 ["actions"]
      518 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      520 LOADB                            R6 0
      521 NAMECALL                         R4 R4 K10 ["Fire"]
      523 CALL                             R4 2 0
      524 LOADB                            R4 0
      525 SETTABLEKS                       R4 R0 K16 ["lastPatherJumped"]
      527 GETTABLEKS                       R4 R0 K26 ["shouldCleanupPath"]
      529 JUMPIFNOT                        R4 ; [+267]
      530 LOADB                            R4 0
      531 SETTABLEKS                       R4 R0 K26 ["shouldCleanupPath"]
      533 GETUPVAL                         R4 1
      534 JUMPIFNOT                        R4 ; [+133]
      535 GETUPVAL                         R4 3
      536 JUMPIFNOT                        R4 ; [+15]
      537 GETTABLEKS                       R4 R1 K0 ["actions"]
      539 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      541 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      542 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      544 CALL                             R4 2 1
      545 JUMPIFNOT                        R4 ; [+52]
      546 GETIMPORT                        R7 K25 [Vector2.zero]
      548 NAMECALL                         R5 R4 K10 ["Fire"]
      550 CALL                             R5 2 0
      551 JUMP                             ; [+46]
      552 GETUPVAL                         R4 4
      553 JUMPIFNOT                        R4 ; [+35]
      554 GETTABLEKS                       R4 R1 K0 ["actions"]
      556 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      558 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      559 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      561 CALL                             R4 2 1
      562 JUMPIFNOT                        R4 ; [+16]
      563 GETIMPORT                        R5 K12 [pcall]
      565 NEWCLOSURE                       R6 P7
      566 CAPTURE                          VAL R4
      567 CALL                             R5 1 2
      568 JUMPIF                           R5 ; [+29]
      569 GETTABLEKS                       R7 R1 K0 ["actions"]
      571 GETTABLEKS                       R7 R7 K1 ["MoveAction"]
      573 GETIMPORT                        R9 K25 [Vector2.zero]
      575 NAMECALL                         R7 R7 K10 ["Fire"]
      577 CALL                             R7 2 0
      578 JUMP                             ; [+19]
      579 GETTABLEKS                       R5 R1 K0 ["actions"]
      581 GETTABLEKS                       R5 R5 K1 ["MoveAction"]
      583 GETIMPORT                        R7 K25 [Vector2.zero]
      585 NAMECALL                         R5 R5 K10 ["Fire"]
      587 CALL                             R5 2 0
      588 JUMP                             ; [+9]
      589 GETTABLEKS                       R4 R1 K0 ["actions"]
      591 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      593 GETIMPORT                        R6 K25 [Vector2.zero]
      595 NAMECALL                         R4 R4 K10 ["Fire"]
      597 CALL                             R4 2 0
      598 GETIMPORT                        R4 K25 [Vector2.zero]
      600 SETTABLEKS                       R4 R1 K13 ["moveVector"]
      602 LOADB                            R4 0
      603 SETTABLEKS                       R4 R0 K16 ["lastPatherJumped"]
      605 GETUPVAL                         R4 3
      606 JUMPIFNOT                        R4 ; [+14]
      607 GETTABLEKS                       R4 R1 K0 ["actions"]
      609 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      611 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      612 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      614 CALL                             R4 2 1
      615 JUMPIFNOT                        R4 ; [+48]
      616 LOADB                            R7 0
      617 NAMECALL                         R5 R4 K10 ["Fire"]
      619 CALL                             R5 2 0
      620 JUMP                             ; [+43]
      621 GETUPVAL                         R4 4
      622 JUMPIFNOT                        R4 ; [+33]
      623 GETTABLEKS                       R4 R1 K0 ["actions"]
      625 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      627 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      628 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      630 CALL                             R4 2 1
      631 JUMPIFNOT                        R4 ; [+15]
      632 GETIMPORT                        R5 K12 [pcall]
      634 NEWCLOSURE                       R6 P8
      635 CAPTURE                          VAL R4
      636 CALL                             R5 1 2
      637 JUMPIF                           R5 ; [+26]
      638 GETTABLEKS                       R7 R1 K0 ["actions"]
      640 GETTABLEKS                       R7 R7 K4 ["JumpAction"]
      642 LOADB                            R9 0
      643 NAMECALL                         R7 R7 K10 ["Fire"]
      645 CALL                             R7 2 0
      646 JUMP                             ; [+17]
      647 GETTABLEKS                       R5 R1 K0 ["actions"]
      649 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      651 LOADB                            R7 0
      652 NAMECALL                         R5 R5 K10 ["Fire"]
      654 CALL                             R5 2 0
      655 JUMP                             ; [+8]
      656 GETTABLEKS                       R4 R1 K0 ["actions"]
      658 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      660 LOADB                            R6 0
      661 NAMECALL                         R4 R4 K10 ["Fire"]
      663 CALL                             R4 2 0
      664 LOADB                            R4 0
      665 SETTABLEKS                       R4 R1 K17 ["isJumping"]
      667 RETURN                           R0 0
      668 GETIMPORT                        R4 K25 [Vector2.zero]
      670 SETTABLEKS                       R4 R0 K18 ["lastPatherMoveVector"]
      672 GETUPVAL                         R4 3
      673 JUMPIFNOT                        R4 ; [+15]
      674 GETTABLEKS                       R4 R1 K0 ["actions"]
      676 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      678 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      679 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      681 CALL                             R4 2 1
      682 JUMPIFNOT                        R4 ; [+52]
      683 GETIMPORT                        R7 K25 [Vector2.zero]
      685 NAMECALL                         R5 R4 K10 ["Fire"]
      687 CALL                             R5 2 0
      688 JUMP                             ; [+46]
      689 GETUPVAL                         R4 4
      690 JUMPIFNOT                        R4 ; [+35]
      691 GETTABLEKS                       R4 R1 K0 ["actions"]
      693 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      695 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      696 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      698 CALL                             R4 2 1
      699 JUMPIFNOT                        R4 ; [+16]
      700 GETIMPORT                        R5 K12 [pcall]
      702 NEWCLOSURE                       R6 P9
      703 CAPTURE                          VAL R4
      704 CALL                             R5 1 2
      705 JUMPIF                           R5 ; [+29]
      706 GETTABLEKS                       R7 R1 K0 ["actions"]
      708 GETTABLEKS                       R7 R7 K1 ["MoveAction"]
      710 GETIMPORT                        R9 K25 [Vector2.zero]
      712 NAMECALL                         R7 R7 K10 ["Fire"]
      714 CALL                             R7 2 0
      715 JUMP                             ; [+19]
      716 GETTABLEKS                       R5 R1 K0 ["actions"]
      718 GETTABLEKS                       R5 R5 K1 ["MoveAction"]
      720 GETIMPORT                        R7 K25 [Vector2.zero]
      722 NAMECALL                         R5 R5 K10 ["Fire"]
      724 CALL                             R5 2 0
      725 JUMP                             ; [+9]
      726 GETTABLEKS                       R4 R1 K0 ["actions"]
      728 GETTABLEKS                       R4 R4 K1 ["MoveAction"]
      730 GETIMPORT                        R6 K25 [Vector2.zero]
      732 NAMECALL                         R4 R4 K10 ["Fire"]
      734 CALL                             R4 2 0
      735 LOADB                            R4 0
      736 SETTABLEKS                       R4 R0 K16 ["lastPatherJumped"]
      738 GETUPVAL                         R4 3
      739 JUMPIFNOT                        R4 ; [+14]
      740 GETTABLEKS                       R4 R1 K0 ["actions"]
      742 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      744 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      745 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      747 CALL                             R4 2 1
      748 JUMPIFNOT                        R4 ; [+48]
      749 LOADB                            R7 0
      750 NAMECALL                         R5 R4 K10 ["Fire"]
      752 CALL                             R5 2 0
      753 RETURN                           R0 0
      754 GETUPVAL                         R4 4
      755 JUMPIFNOT                        R4 ; [+33]
      756 GETTABLEKS                       R4 R1 K0 ["actions"]
      758 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      760 LOADK                            R6 K8 ["ClickToMoveScriptableBinding"]
      761 NAMECALL                         R4 R4 K9 ["FindFirstChild"]
      763 CALL                             R4 2 1
      764 JUMPIFNOT                        R4 ; [+15]
      765 GETIMPORT                        R5 K12 [pcall]
      767 NEWCLOSURE                       R6 P10
      768 CAPTURE                          VAL R4
      769 CALL                             R5 1 2
      770 JUMPIF                           R5 ; [+26]
      771 GETTABLEKS                       R7 R1 K0 ["actions"]
      773 GETTABLEKS                       R7 R7 K4 ["JumpAction"]
      775 LOADB                            R9 0
      776 NAMECALL                         R7 R7 K10 ["Fire"]
      778 CALL                             R7 2 0
      779 RETURN                           R0 0
      780 GETTABLEKS                       R5 R1 K0 ["actions"]
      782 GETTABLEKS                       R5 R5 K4 ["JumpAction"]
      784 LOADB                            R7 0
      785 NAMECALL                         R5 R5 K10 ["Fire"]
      787 CALL                             R5 2 0
      788 RETURN                           R0 0
      789 GETTABLEKS                       R4 R1 K0 ["actions"]
      791 GETTABLEKS                       R4 R4 K4 ["JumpAction"]
      793 LOADB                            R6 0
      794 NAMECALL                         R4 R4 K10 ["Fire"]
      796 CALL                             R4 2 0
      797 RETURN                           R0 0

PROTO_69:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_71:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetWaypointTexture"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetWaypointTexture"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_73:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetWaypointRadius"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetWaypointRadius"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_75:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetEndWaypointTexture"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetEndWaypointTexture"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_77:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SetWaypointsAlwaysOnTop"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GetWaypointsAlwaysOnTop"]
        3 CALL                             R1 0 -1
        4 RETURN                           R1 -1

PROTO_79:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_81:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_83:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_85:
        0 DIVK                             R3 R1 K1 [100]
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 RETURN                           R0 0

PROTO_86:
        0 GETUPVAL                         R3 0
        1 SUBK                             R2 R3 K1 [1]
        2 MULK                             R1 R2 K0 [100]
        3 RETURN                           R1 1

PROTO_87:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_88:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_89:
        0 SETTABLEKS                       R1 R0 K0 ["jumpEnabled"]
        2 GETTABLEKS                       R2 R0 K1 ["touchJumpController"]
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R2 R0 K1 ["touchJumpController"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K2 ["Enable"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_90:
        0 GETTABLEKS                       R1 R0 K0 ["jumpEnabled"]
        2 RETURN                           R1 1

PROTO_91:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Character"]
        3 JUMPIFNOTEQKNIL                  R4 ; [+3]
        5 LOADB                            R5 0
        6 RETURN                           R5 1
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R1
        9 LOADK                            R7 K1 [{0, 1, 0}]
       10 MOVE                             R8 R3
       11 CALL                             R5 3 1
       12 JUMPIFNOT                        R5 ; [+14]
       13 NAMECALL                         R6 R5 K2 ["IsValidPath"]
       15 CALL                             R6 1 1
       16 JUMPIFNOT                        R6 ; [+10]
       17 MOVE                             R8 R5
       18 MOVE                             R9 R1
       19 LOADNIL                          R10
       20 MOVE                             R11 R4
       21 MOVE                             R12 R2
       22 NAMECALL                         R6 R0 K3 ["HandleMoveTo"]
       24 CALL                             R6 6 0
       25 LOADB                            R6 1
       26 RETURN                           R6 1
       27 LOADB                            R6 0
       28 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 2
        5 AND                              R2 R0 R1
        6 GETIMPORT                        R3 K1 [pcall]
        8 DUPCLOSURE                       R4 K3 [PROTO_1]
        9 CALL                             R3 1 2
       10 AND                              R5 R3 R4
       11 GETIMPORT                        R6 K5 [game]
       13 LOADK                            R8 K6 ["UserInputService"]
       14 NAMECALL                         R6 R6 K7 ["GetService"]
       16 CALL                             R6 2 1
       17 GETIMPORT                        R7 K5 [game]
       19 LOADK                            R9 K8 ["PathfindingService"]
       20 NAMECALL                         R7 R7 K7 ["GetService"]
       22 CALL                             R7 2 1
       23 GETIMPORT                        R8 K5 [game]
       25 LOADK                            R10 K9 ["Players"]
       26 NAMECALL                         R8 R8 K7 ["GetService"]
       28 CALL                             R8 2 1
       29 GETIMPORT                        R9 K5 [game]
       31 LOADK                            R11 K10 ["Debris"]
       32 NAMECALL                         R9 R9 K7 ["GetService"]
       34 CALL                             R9 2 1
       35 GETIMPORT                        R10 K5 [game]
       37 LOADK                            R12 K11 ["Workspace"]
       38 NAMECALL                         R10 R10 K7 ["GetService"]
       40 CALL                             R10 2 1
       41 GETIMPORT                        R11 K5 [game]
       43 LOADK                            R13 K12 ["CollectionService"]
       44 NAMECALL                         R11 R11 K7 ["GetService"]
       46 CALL                             R11 2 1
       47 GETIMPORT                        R12 K5 [game]
       49 LOADK                            R14 K13 ["GuiService"]
       50 NAMECALL                         R12 R12 K7 ["GetService"]
       52 CALL                             R12 2 1
       53 GETIMPORT                        R13 K15 [require]
       55 GETIMPORT                        R14 K17 [script]
       57 GETTABLEKS                       R14 R14 K18 ["Parent"]
       59 GETTABLEKS                       R14 R14 K18 ["Parent"]
       61 LOADK                            R16 K19 ["CommonUtils"]
       62 NAMECALL                         R14 R14 K20 ["WaitForChild"]
       64 CALL                             R14 2 -1
       65 CALL                             R13 -1 1
       66 GETTABLEKS                       R14 R13 K21 ["get"]
       68 LOADK                            R15 K22 ["FlagUtil"]
       69 CALL                             R14 1 1
       70 GETTABLEKS                       R15 R14 K23 ["getUserFlag"]
       72 LOADK                            R16 K24 ["UserRaycastUpdateAPI2"]
       73 CALL                             R15 1 1
       74 GETTABLEKS                       R16 R14 K23 ["getUserFlag"]
       76 LOADK                            R17 K25 ["UserPlayerScriptsCTMDirectPlayerData"]
       77 CALL                             R16 1 1
       78 GETTABLEKS                       R17 R14 K23 ["getUserFlag"]
       80 LOADK                            R18 K26 ["UserPSIASClickToMoveRelaxTeleport"]
       81 CALL                             R17 1 1
       82 GETTABLEKS                       R18 R14 K23 ["getUserFlag"]
       84 LOADK                            R19 K27 ["UserPlayerScriptsRefactor2"]
       85 CALL                             R18 1 1
       86 GETTABLEKS                       R19 R14 K23 ["getUserFlag"]
       88 LOADK                            R20 K28 ["UserPlayerScriptsFireThroughScriptableBindings"]
       89 CALL                             R19 1 1
       90 GETTABLEKS                       R20 R14 K23 ["getUserFlag"]
       92 LOADK                            R21 K29 ["UserPlayerScriptsSAuthDirectAPIs2"]
       93 CALL                             R20 1 1
       94 GETTABLEKS                       R21 R14 K23 ["getUserFlag"]
       96 LOADK                            R22 K30 ["UserDoubleJumpButtonFix"]
       97 CALL                             R21 1 1
       98 GETIMPORT                        R22 K17 [script]
      100 GETTABLEKS                       R22 R22 K18 ["Parent"]
      102 GETTABLEKS                       R22 R22 K18 ["Parent"]
      104 LOADK                            R24 K31 ["InputContexts"]
      105 NAMECALL                         R22 R22 K20 ["WaitForChild"]
      107 CALL                             R22 2 1
      108 LOADK                            R25 K32 ["CharacterContext"]
      109 NAMECALL                         R23 R22 K20 ["WaitForChild"]
      111 CALL                             R23 2 1
      112 LOADK                            R26 K33 ["ClickToMoveAction"]
      113 NAMECALL                         R24 R23 K20 ["WaitForChild"]
      115 CALL                             R24 2 1
      116 LOADK                            R27 K34 ["ClickToMovePositionAction"]
      117 NAMECALL                         R25 R23 K20 ["WaitForChild"]
      119 CALL                             R25 2 1
      120 LOADB                            R26 1
      121 LOADB                            R27 1
      122 LOADB                            R28 0
      123 LOADN                            R29 1
      124 LOADN                            R30 8
      125 GETTABLEKS                       R31 R8 K35 ["LocalPlayer"]
      127 GETIMPORT                        R32 K15 [require]
      129 GETIMPORT                        R33 K17 [script]
      131 GETTABLEKS                       R33 R33 K18 ["Parent"]
      133 LOADK                            R35 K36 ["ClickToMoveDisplay"]
      134 NAMECALL                         R33 R33 K20 ["WaitForChild"]
      136 CALL                             R33 2 -1
      137 CALL                             R32 -1 1
      138 GETIMPORT                        R33 K39 [RaycastParams.new]
      140 CALL                             R33 0 1
      141 GETIMPORT                        R34 K43 [Enum.RaycastFilterType.Exclude]
      143 SETTABLEKS                       R34 R33 K44 ["FilterType"]
      145 NEWTABLE                         R34 2 0
      147 JUMPIF                           R15 ; [+10]
      148 DUPCLOSURE                       R35 K45 [PROTO_2]
      149 CAPTURE                          VAL R35
      150 SETTABLEKS                       R35 R34 K46 ["FindCharacterAncestor"]
      152 DUPCLOSURE                       R36 K47 [PROTO_3]
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R35
      155 CAPTURE                          VAL R36
      156 SETTABLEKS                       R36 R34 K48 ["Raycast"]
      158 NEWTABLE                         R35 0 0
      160 DUPCLOSURE                       R36 K49 [PROTO_4]
      161 CAPTURE                          VAL R35
      162 LOADNIL                          R37
      163 LOADNIL                          R38
      164 LOADNIL                          R39
      165 LOADNIL                          R40
      166 DUPCLOSURE                       R41 K50 [PROTO_5]
      167 CAPTURE                          VAL R31
      168 NEWCLOSURE                       R42 P6
      169 CAPTURE                          REF R38
      170 CAPTURE                          REF R39
      171 CAPTURE                          REF R40
      172 CAPTURE                          REF R37
      173 CAPTURE                          VAL R31
      174 CAPTURE                          VAL R11
      175 NEWCLOSURE                       R43 P7
      176 CAPTURE                          REF R37
      177 CAPTURE                          VAL R31
      178 DUPCLOSURE                       R44 K51 [PROTO_10]
      179 DUPCLOSURE                       R45 K52 [PROTO_11]
      180 DUPCLOSURE                       R46 K53 [PROTO_12]
      181 NEWCLOSURE                       R47 P11
      182 CAPTURE                          REF R28
      183 CAPTURE                          VAL R31
      184 CAPTURE                          VAL R35
      185 CAPTURE                          REF R29
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R46
      188 CAPTURE                          VAL R5
      189 CAPTURE                          VAL R7
      190 CAPTURE                          REF R26
      191 CAPTURE                          VAL R32
      192 CAPTURE                          REF R30
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R33
      196 CAPTURE                          REF R37
      197 CAPTURE                          VAL R10
      198 DUPCLOSURE                       R48 K54 [PROTO_31]
      199 CAPTURE                          VAL R31
      200 CAPTURE                          VAL R35
      201 DUPCLOSURE                       R49 K55 [PROTO_32]
      202 DUPCLOSURE                       R50 K56 [PROTO_33]
      203 DUPCLOSURE                       R51 K57 [PROTO_34]
      204 CAPTURE                          VAL R10
      205 NEWTABLE                         R52 64 0
      207 SETTABLEKS                       R52 R52 K58 ["__index"]
      209 DUPCLOSURE                       R53 K59 [PROTO_35]
      210 CAPTURE                          VAL R52
      211 CAPTURE                          VAL R21
      212 CAPTURE                          VAL R16
      213 SETTABLEKS                       R53 R52 K38 ["new"]
      215 LOADNIL                          R53
      216 LOADNIL                          R54
      217 LOADNIL                          R55
      218 NEWCLOSURE                       R56 P17
      219 CAPTURE                          REF R53
      220 CAPTURE                          REF R54
      221 CAPTURE                          REF R55
      222 SETTABLEKS                       R56 R52 K60 ["CleanupPath"]
      224 NEWCLOSURE                       R56 P18
      225 CAPTURE                          REF R53
      226 CAPTURE                          REF R54
      227 CAPTURE                          VAL R49
      228 CAPTURE                          REF R55
      229 CAPTURE                          REF R27
      230 CAPTURE                          VAL R32
      231 SETTABLEKS                       R56 R52 K61 ["HandleMoveTo"]
      233 NEWCLOSURE                       R56 P19
      234 CAPTURE                          REF R53
      235 CAPTURE                          REF R27
      236 CAPTURE                          VAL R32
      237 SETTABLEKS                       R56 R52 K62 ["ShowPathFailedFeedback"]
      239 NEWCLOSURE                       R56 P20
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R31
      242 CAPTURE                          VAL R35
      243 CAPTURE                          VAL R15
      244 CAPTURE                          REF R37
      245 CAPTURE                          VAL R33
      246 CAPTURE                          VAL R47
      247 CAPTURE                          VAL R34
      248 CAPTURE                          VAL R49
      249 SETTABLEKS                       R56 R52 K63 ["OnTap"]
      251 DUPCLOSURE                       R56 K64 [PROTO_42]
      252 SETTABLEKS                       R56 R52 K65 ["DisconnectEvents"]
      254 DUPCLOSURE                       R56 K66 [PROTO_43]
      255 CAPTURE                          VAL R31
      256 CAPTURE                          VAL R6
      257 SETTABLEKS                       R56 R52 K67 ["OnPreferredInputChanged"]
      259 NEWCLOSURE                       R56 P23
      260 CAPTURE                          VAL R24
      261 CAPTURE                          VAL R12
      262 CAPTURE                          VAL R25
      263 CAPTURE                          VAL R18
      264 CAPTURE                          REF R53
      265 CAPTURE                          VAL R6
      266 SETTABLEKS                       R56 R52 K68 ["OnCharacterAdded"]
      268 DUPCLOSURE                       R56 K69 [PROTO_53]
      269 SETTABLEKS                       R56 R52 K70 ["Start"]
      271 DUPCLOSURE                       R56 K71 [PROTO_54]
      272 SETTABLEKS                       R56 R52 K72 ["Stop"]
      274 DUPCLOSURE                       R56 K73 [PROTO_56]
      275 CAPTURE                          VAL R31
      276 CAPTURE                          VAL R21
      277 CAPTURE                          VAL R6
      278 CAPTURE                          VAL R24
      279 CAPTURE                          VAL R25
      280 SETTABLEKS                       R56 R52 K74 ["Enable"]
      282 NEWCLOSURE                       R56 P27
      283 CAPTURE                          REF R53
      284 CAPTURE                          VAL R16
      285 CAPTURE                          VAL R51
      286 CAPTURE                          VAL R20
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R32
      289 SETTABLEKS                       R56 R52 K75 ["Update"]
      291 NEWCLOSURE                       R56 P28
      292 CAPTURE                          REF R26
      293 SETTABLEKS                       R56 R52 K76 ["SetShowPath"]
      295 NEWCLOSURE                       R56 P29
      296 CAPTURE                          REF R26
      297 SETTABLEKS                       R56 R52 K77 ["GetShowPath"]
      299 DUPCLOSURE                       R56 K78 [PROTO_71]
      300 CAPTURE                          VAL R32
      301 SETTABLEKS                       R56 R52 K79 ["SetWaypointTexture"]
      303 DUPCLOSURE                       R56 K80 [PROTO_72]
      304 CAPTURE                          VAL R32
      305 SETTABLEKS                       R56 R52 K81 ["GetWaypointTexture"]
      307 DUPCLOSURE                       R56 K82 [PROTO_73]
      308 CAPTURE                          VAL R32
      309 SETTABLEKS                       R56 R52 K83 ["SetWaypointRadius"]
      311 DUPCLOSURE                       R56 K84 [PROTO_74]
      312 CAPTURE                          VAL R32
      313 SETTABLEKS                       R56 R52 K85 ["GetWaypointRadius"]
      315 DUPCLOSURE                       R56 K86 [PROTO_75]
      316 CAPTURE                          VAL R32
      317 SETTABLEKS                       R56 R52 K87 ["SetEndWaypointTexture"]
      319 DUPCLOSURE                       R56 K88 [PROTO_76]
      320 CAPTURE                          VAL R32
      321 SETTABLEKS                       R56 R52 K89 ["GetEndWaypointTexture"]
      323 DUPCLOSURE                       R56 K90 [PROTO_77]
      324 CAPTURE                          VAL R32
      325 SETTABLEKS                       R56 R52 K91 ["SetWaypointsAlwaysOnTop"]
      327 DUPCLOSURE                       R56 K92 [PROTO_78]
      328 CAPTURE                          VAL R32
      329 SETTABLEKS                       R56 R52 K93 ["GetWaypointsAlwaysOnTop"]
      331 NEWCLOSURE                       R56 P38
      332 CAPTURE                          REF R27
      333 SETTABLEKS                       R56 R52 K94 ["SetFailureAnimationEnabled"]
      335 NEWCLOSURE                       R56 P39
      336 CAPTURE                          REF R27
      337 SETTABLEKS                       R56 R52 K95 ["GetFailureAnimationEnabled"]
      339 DUPCLOSURE                       R56 K96 [PROTO_81]
      340 CAPTURE                          VAL R42
      341 SETTABLEKS                       R56 R52 K97 ["SetIgnoredPartsTag"]
      343 NEWCLOSURE                       R56 P41
      344 CAPTURE                          REF R38
      345 SETTABLEKS                       R56 R52 K98 ["GetIgnoredPartsTag"]
      347 NEWCLOSURE                       R56 P42
      348 CAPTURE                          REF R28
      349 SETTABLEKS                       R56 R52 K99 ["SetUseDirectPath"]
      351 NEWCLOSURE                       R56 P43
      352 CAPTURE                          REF R28
      353 SETTABLEKS                       R56 R52 K100 ["GetUseDirectPath"]
      355 NEWCLOSURE                       R56 P44
      356 CAPTURE                          REF R29
      357 SETTABLEKS                       R56 R52 K101 ["SetAgentSizeIncreaseFactor"]
      359 NEWCLOSURE                       R56 P45
      360 CAPTURE                          REF R29
      361 SETTABLEKS                       R56 R52 K102 ["GetAgentSizeIncreaseFactor"]
      363 NEWCLOSURE                       R56 P46
      364 CAPTURE                          REF R30
      365 SETTABLEKS                       R56 R52 K103 ["SetUnreachableWaypointTimeout"]
      367 NEWCLOSURE                       R56 P47
      368 CAPTURE                          REF R30
      369 SETTABLEKS                       R56 R52 K104 ["GetUnreachableWaypointTimeout"]
      371 JUMPIF                           R21 ; [+6]
      372 DUPCLOSURE                       R56 K105 [PROTO_89]
      373 SETTABLEKS                       R56 R52 K106 ["SetUserJumpEnabled"]
      375 DUPCLOSURE                       R56 K107 [PROTO_90]
      376 SETTABLEKS                       R56 R52 K108 ["GetUserJumpEnabled"]
      378 DUPCLOSURE                       R56 K109 [PROTO_91]
      379 CAPTURE                          VAL R31
      380 CAPTURE                          VAL R47
      381 SETTABLEKS                       R56 R52 K110 ["MoveTo"]
      383 CLOSEUPVALS                      R26
      384 RETURN                           R52 1

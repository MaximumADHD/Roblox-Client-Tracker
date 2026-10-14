PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [setmetatable]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R0 R1 K3 ["playerData"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K4 ["enabled"]
       15 LOADB                            R2 0
       16 SETTABLEKS                       R2 R1 K5 ["isTouchActive"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K6 ["isFollowStick"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K7 ["thumbstickFrame"]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K8 ["screenPos"]
       27 LOADNIL                          R2
       28 SETTABLEKS                       R2 R1 K9 ["stickImage"]
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K10 ["thumbstickSize"]
       33 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetChildren"]
        3 CALL                             R1 1 3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K1 ["Name"]
        7 JUMPIFEQKS                       R6 K2 ["DynamicTouchBinding"] ; [+5]
        9 GETTABLEKS                       R6 R5 K1 ["Name"]
       11 JUMPIFNOTEQKS                    R6 K3 ["ClassicTouchBinding"] ; [+4]
       13 NAMECALL                         R6 R5 K4 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-12]
       18 GETIMPORT                        R1 K7 [Instance.new]
       20 LOADK                            R2 K8 ["InputBinding"]
       21 CALL                             R1 1 1
       22 LOADK                            R2 K3 ["ClassicTouchBinding"]
       23 SETTABLEKS                       R2 R1 K1 ["Name"]
       25 GETIMPORT                        R2 K12 [Enum.KeyCode.TouchPosition]
       27 SETTABLEKS                       R2 R1 K10 ["KeyCode"]
       29 GETTABLEKS                       R2 R0 K13 ["thumbstickButton"]
       31 SETTABLEKS                       R2 R1 K14 ["UIModifier"]
       33 GETUPVAL                         R2 0
       34 SETTABLEKS                       R2 R1 K15 ["Parent"]
       36 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+18]
        1 GETUPVAL                         R2 0
        2 MOVE                             R3 R0
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["StateChanged"]
        7 GETTABLEKS                       R4 R0 K1 ["onStateChanged"]
        9 NAMECALL                         R2 R2 K2 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       14 GETUPVAL                         R2 1
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 LOADB                            R3 0
       21 SETTABLEKS                       R3 R2 K4 ["Enabled"]
       23 GETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       25 JUMPIFNOT                        R2 ; [+8]
       26 GETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       28 NAMECALL                         R2 R2 K5 ["Disconnect"]
       30 CALL                             R2 1 0
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R0 K3 ["thumbstickStateChangedConn"]
       34 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R3 1
        6 JUMP                             ; [+1]
        7 LOADB                            R3 0
        8 MOVE                             R1 R3
        9 GETTABLEKS                       R3 R0 K0 ["enabled"]
       11 JUMPIFNOTEQ                      R3 R1 ; [+3]
       13 LOADB                            R3 1
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K1 ["Enable"]
       18 MOVE                             R4 R0
       19 MOVE                             R5 R1
       20 CALL                             R3 2 0
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R0 K2 ["isJumping"]
       24 JUMPIFNOT                        R1 ; [+47]
       25 GETTABLEKS                       R3 R0 K3 ["thumbstickFrame"]
       27 JUMPIF                           R3 ; [+4]
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R0 K4 ["Create"]
       31 CALL                             R3 2 0
       32 GETUPVAL                         R3 1
       33 JUMPIFNOT                        R3 ; [+18]
       34 GETUPVAL                         R3 2
       35 MOVE                             R4 R0
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K5 ["StateChanged"]
       40 GETTABLEKS                       R5 R0 K6 ["onStateChanged"]
       42 NAMECALL                         R3 R3 K7 ["Connect"]
       44 CALL                             R3 2 1
       45 SETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       47 GETUPVAL                         R3 3
       48 LOADB                            R4 1
       49 SETTABLEKS                       R4 R3 K9 ["Enabled"]
       51 JUMP                             ; [+14]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K5 ["StateChanged"]
       55 GETTABLEKS                       R5 R0 K6 ["onStateChanged"]
       57 NAMECALL                         R3 R3 K7 ["Connect"]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       62 GETUPVAL                         R3 3
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R3 K9 ["Enabled"]
       66 GETTABLEKS                       R3 R0 K3 ["thumbstickFrame"]
       68 LOADB                            R4 1
       69 SETTABLEKS                       R4 R3 K10 ["Visible"]
       71 JUMP                             ; [+41]
       72 GETUPVAL                         R3 1
       73 JUMPIFNOT                        R3 ; [+16]
       74 GETUPVAL                         R3 3
       75 LOADB                            R4 0
       76 SETTABLEKS                       R4 R3 K9 ["Enabled"]
       78 GETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       80 JUMPIFNOT                        R3 ; [+24]
       81 GETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       83 NAMECALL                         R3 R3 K11 ["Disconnect"]
       85 CALL                             R3 1 0
       86 LOADNIL                          R3
       87 SETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       89 JUMP                             ; [+15]
       90 GETUPVAL                         R3 3
       91 LOADB                            R4 0
       92 SETTABLEKS                       R4 R3 K9 ["Enabled"]
       94 GETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       96 JUMPIFNOT                        R3 ; [+8]
       97 GETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
       99 NAMECALL                         R3 R3 K11 ["Disconnect"]
      101 CALL                             R3 1 0
      102 LOADNIL                          R3
      103 SETTABLEKS                       R3 R0 K8 ["thumbstickStateChangedConn"]
      105 GETTABLEKS                       R3 R0 K3 ["thumbstickFrame"]
      107 LOADB                            R4 0
      108 SETTABLEKS                       R4 R3 K10 ["Visible"]
      110 NAMECALL                         R3 R0 K12 ["OnInputEnded"]
      112 CALL                             R3 1 0
      113 SETTABLEKS                       R1 R0 K0 ["enabled"]
      115 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R2 K7 [Vector2.zero]
        8 NAMECALL                         R0 R0 K8 ["Fire"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isTouchActive"]
        3 GETTABLEKS                       R1 R0 K1 ["thumbstickFrame"]
        5 GETTABLEKS                       R2 R0 K2 ["screenPos"]
        7 SETTABLEKS                       R2 R1 K3 ["Position"]
        9 GETTABLEKS                       R1 R0 K4 ["stickImage"]
       11 GETIMPORT                        R2 K7 [UDim2.new]
       13 LOADN                            R3 0
       14 GETTABLEKS                       R6 R0 K1 ["thumbstickFrame"]
       16 GETTABLEKS                       R6 R6 K9 ["Size"]
       18 GETTABLEKS                       R6 R6 K10 ["X"]
       20 GETTABLEKS                       R6 R6 K11 ["Offset"]
       22 DIVK                             R5 R6 K8 [2]
       23 GETTABLEKS                       R7 R0 K13 ["thumbstickSize"]
       25 DIVK                             R6 R7 K12 [4]
       26 SUB                              R4 R5 R6
       27 LOADN                            R5 0
       28 GETTABLEKS                       R8 R0 K1 ["thumbstickFrame"]
       30 GETTABLEKS                       R8 R8 K9 ["Size"]
       32 GETTABLEKS                       R8 R8 K14 ["Y"]
       34 GETTABLEKS                       R8 R8 K11 ["Offset"]
       36 DIVK                             R7 R8 K8 [2]
       37 GETTABLEKS                       R9 R0 K13 ["thumbstickSize"]
       39 DIVK                             R8 R9 K12 [4]
       40 SUB                              R6 R7 R8
       41 CALL                             R2 4 1
       42 SETTABLEKS                       R2 R1 K3 ["Position"]
       44 GETUPVAL                         R1 0
       45 JUMPIFNOT                        R1 ; [+17]
       46 GETTABLEKS                       R1 R0 K15 ["playerData"]
       48 GETTABLEKS                       R1 R1 K16 ["actions"]
       50 GETTABLEKS                       R1 R1 K17 ["MoveAction"]
       52 LOADK                            R3 K18 ["ClassicThumbstickScriptableBinding"]
       53 NAMECALL                         R1 R1 K19 ["FindFirstChild"]
       55 CALL                             R1 2 1
       56 JUMPIFNOT                        R1 ; [+60]
       57 GETIMPORT                        R4 K22 [Vector2.zero]
       59 NAMECALL                         R2 R1 K23 ["Fire"]
       61 CALL                             R2 2 0
       62 JUMP                             ; [+54]
       63 GETUPVAL                         R1 1
       64 JUMPIFNOT                        R1 ; [+41]
       65 GETTABLEKS                       R1 R0 K15 ["playerData"]
       67 GETTABLEKS                       R1 R1 K16 ["actions"]
       69 GETTABLEKS                       R1 R1 K17 ["MoveAction"]
       71 LOADK                            R3 K18 ["ClassicThumbstickScriptableBinding"]
       72 NAMECALL                         R1 R1 K19 ["FindFirstChild"]
       74 CALL                             R1 2 1
       75 JUMPIFNOT                        R1 ; [+18]
       76 GETIMPORT                        R2 K25 [pcall]
       78 NEWCLOSURE                       R3 P0
       79 CAPTURE                          VAL R1
       80 CALL                             R2 1 2
       81 JUMPIF                           R2 ; [+35]
       82 GETTABLEKS                       R4 R0 K15 ["playerData"]
       84 GETTABLEKS                       R4 R4 K16 ["actions"]
       86 GETTABLEKS                       R4 R4 K17 ["MoveAction"]
       88 GETIMPORT                        R6 K22 [Vector2.zero]
       90 NAMECALL                         R4 R4 K23 ["Fire"]
       92 CALL                             R4 2 0
       93 JUMP                             ; [+23]
       94 GETTABLEKS                       R2 R0 K15 ["playerData"]
       96 GETTABLEKS                       R2 R2 K16 ["actions"]
       98 GETTABLEKS                       R2 R2 K17 ["MoveAction"]
      100 GETIMPORT                        R4 K22 [Vector2.zero]
      102 NAMECALL                         R2 R2 K23 ["Fire"]
      104 CALL                             R2 2 0
      105 JUMP                             ; [+11]
      106 GETTABLEKS                       R1 R0 K15 ["playerData"]
      108 GETTABLEKS                       R1 R1 K16 ["actions"]
      110 GETTABLEKS                       R1 R1 K17 ["MoveAction"]
      112 GETIMPORT                        R3 K22 [Vector2.zero]
      114 NAMECALL                         R1 R1 K23 ["Fire"]
      116 CALL                             R1 2 0
      117 LOADB                            R1 0
      118 SETTABLEKS                       R1 R0 K26 ["isJumping"]
      120 GETTABLEKS                       R1 R0 K1 ["thumbstickFrame"]
      122 GETTABLEKS                       R2 R0 K2 ["screenPos"]
      124 SETTABLEKS                       R2 R1 K3 ["Position"]
      126 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R1 R1 K1 ["X"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        8 GETTABLEKS                       R2 R2 K2 ["Y"]
       10 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       12 GETIMPORT                        R0 K5 [math.min]
       14 CALL                             R0 2 1
       15 LOADN                            R2 500
       16 JUMPIFLE                         R0 R2 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 GETUPVAL                         R3 1
       21 JUMPIFNOT                        R3 ; [+5]
       22 GETUPVAL                         R2 2
       23 NAMECALL                         R2 R2 K6 ["isEnabled"]
       25 CALL                             R2 1 1
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R2 3
       28 GETTABLEKS                       R2 R2 K6 ["isEnabled"]
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+30]
       32 JUMPIFNOT                        R1 ; [+2]
       33 LOADN                            R3 64
       34 JUMP                             ; [+1]
       35 LOADN                            R3 100
       36 JUMPIFNOT                        R1 ; [+2]
       37 LOADN                            R4 64
       38 JUMP                             ; [+1]
       39 LOADN                            R4 112
       40 GETUPVAL                         R5 4
       41 JUMPIFNOT                        R1 ; [+2]
       42 LOADN                            R6 72
       43 JUMP                             ; [+1]
       44 LOADN                            R6 120
       45 SETTABLEKS                       R6 R5 K7 ["thumbstickSize"]
       47 GETUPVAL                         R5 4
       48 GETIMPORT                        R6 K10 [UDim2.new]
       50 LOADN                            R7 0
       51 MOVE                             R8 R3
       52 LOADN                            R9 1
       53 GETUPVAL                         R12 4
       54 GETTABLEKS                       R12 R12 K7 ["thumbstickSize"]
       56 MINUS                            R11 R12
       57 SUB                              R10 R11 R4
       58 CALL                             R6 4 1
       59 SETTABLEKS                       R6 R5 K11 ["screenPos"]
       61 JUMP                             ; [+41]
       62 GETUPVAL                         R3 4
       63 JUMPIFNOT                        R1 ; [+2]
       64 LOADN                            R4 70
       65 JUMP                             ; [+1]
       66 LOADN                            R4 120
       67 SETTABLEKS                       R4 R3 K7 ["thumbstickSize"]
       69 GETUPVAL                         R3 4
       70 JUMPIFNOT                        R1 ; [+16]
       71 GETIMPORT                        R4 K10 [UDim2.new]
       73 LOADN                            R5 0
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K7 ["thumbstickSize"]
       77 DIVK                             R7 R8 K13 [2]
       78 SUBK                             R6 R7 K12 [10]
       79 LOADN                            R7 1
       80 GETUPVAL                         R10 4
       81 GETTABLEKS                       R10 R10 K7 ["thumbstickSize"]
       83 MINUS                            R9 R10
       84 SUBK                             R8 R9 K14 [20]
       85 CALL                             R4 4 1
       86 JUMPIF                           R4 ; [+14]
       87 GETIMPORT                        R4 K10 [UDim2.new]
       89 LOADN                            R5 0
       90 GETUPVAL                         R7 4
       91 GETTABLEKS                       R7 R7 K7 ["thumbstickSize"]
       93 DIVK                             R6 R7 K13 [2]
       94 LOADN                            R7 1
       95 GETUPVAL                         R10 4
       96 GETTABLEKS                       R10 R10 K7 ["thumbstickSize"]
       98 MINUS                            R9 R10
       99 MULK                             R8 R9 K15 [1.75]
      100 CALL                             R4 4 1
      101 SETTABLEKS                       R4 R3 K11 ["screenPos"]
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R3 R3 K16 ["thumbstickFrame"]
      106 GETIMPORT                        R4 K10 [UDim2.new]
      108 LOADN                            R5 0
      109 GETUPVAL                         R6 4
      110 GETTABLEKS                       R6 R6 K7 ["thumbstickSize"]
      112 LOADN                            R7 0
      113 GETUPVAL                         R8 4
      114 GETTABLEKS                       R8 R8 K7 ["thumbstickSize"]
      116 CALL                             R4 4 1
      117 SETTABLEKS                       R4 R3 K17 ["Size"]
      119 GETUPVAL                         R3 4
      120 GETTABLEKS                       R3 R3 K16 ["thumbstickFrame"]
      122 GETUPVAL                         R4 4
      123 GETTABLEKS                       R4 R4 K11 ["screenPos"]
      125 SETTABLEKS                       R4 R3 K18 ["Position"]
      127 GETUPVAL                         R3 5
      128 GETIMPORT                        R4 K10 [UDim2.new]
      130 LOADN                            R5 0
      131 GETUPVAL                         R6 4
      132 GETTABLEKS                       R6 R6 K7 ["thumbstickSize"]
      134 LOADN                            R7 0
      135 GETUPVAL                         R8 4
      136 GETTABLEKS                       R8 R8 K7 ["thumbstickSize"]
      138 CALL                             R4 4 1
      139 SETTABLEKS                       R4 R3 K17 ["Size"]
      141 GETUPVAL                         R3 4
      142 GETTABLEKS                       R3 R3 K19 ["stickImage"]
      144 GETIMPORT                        R4 K10 [UDim2.new]
      146 LOADN                            R5 0
      147 GETUPVAL                         R7 4
      148 GETTABLEKS                       R7 R7 K7 ["thumbstickSize"]
      150 DIVK                             R6 R7 K13 [2]
      151 LOADN                            R7 0
      152 GETUPVAL                         R9 4
      153 GETTABLEKS                       R9 R9 K7 ["thumbstickSize"]
      155 DIVK                             R8 R9 K13 [2]
      156 CALL                             R4 4 1
      157 SETTABLEKS                       R4 R3 K17 ["Size"]
      159 GETUPVAL                         R3 4
      160 GETTABLEKS                       R3 R3 K19 ["stickImage"]
      162 GETIMPORT                        R4 K10 [UDim2.new]
      164 LOADN                            R5 0
      165 GETUPVAL                         R8 4
      166 GETTABLEKS                       R8 R8 K7 ["thumbstickSize"]
      168 DIVK                             R7 R8 K13 [2]
      169 GETUPVAL                         R9 4
      170 GETTABLEKS                       R9 R9 K7 ["thumbstickSize"]
      172 DIVK                             R8 R9 K20 [4]
      173 SUB                              R6 R7 R8
      174 LOADN                            R7 0
      175 GETUPVAL                         R10 4
      176 GETTABLEKS                       R10 R10 K7 ["thumbstickSize"]
      178 DIVK                             R9 R10 K13 [2]
      179 GETUPVAL                         R11 4
      180 GETTABLEKS                       R11 R11 K7 ["thumbstickSize"]
      182 DIVK                             R10 R11 K20 [4]
      183 SUB                              R8 R9 R10
      184 CALL                             R4 4 1
      185 SETTABLEKS                       R4 R3 K18 ["Position"]
      187 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.InputBindingType.Scriptable]
        3 SETTABLEKS                       R1 R0 K4 ["Type"]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R2 1
        7 NAMECALL                         R0 R0 K5 ["Fire"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K1 ["thumbstickSize"]
        3 DIVK                             R2 R3 K0 [2]
        4 DIV                              R1 R0 R2
        5 GETTABLEKS                       R2 R1 K2 ["magnitude"]
        7 LOADK                            R3 K3 [0.05]
        8 JUMPIFNOTLT                      R2 R3 ; [+6]
       10 GETIMPORT                        R3 K6 [Vector2.new]
       12 CALL                             R3 0 1
       13 MOVE                             R1 R3
       14 JUMP                             ; [+11]
       15 GETTABLEKS                       R3 R1 K7 ["unit"]
       17 LOADN                            R5 1
       18 SUBK                             R7 R2 K3 [0.05]
       19 DIVK                             R6 R7 K8 [0.95]
       20 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       22 GETIMPORT                        R4 K11 [math.min]
       24 CALL                             R4 2 1
       25 MUL                              R1 R3 R4
       26 GETIMPORT                        R3 K6 [Vector2.new]
       28 GETTABLEKS                       R4 R1 K12 ["X"]
       30 GETTABLEKS                       R6 R1 K13 ["Y"]
       32 MINUS                            R5 R6
       33 CALL                             R3 2 1
       34 MOVE                             R1 R3
       35 GETUPVAL                         R3 1
       36 JUMPIFNOT                        R3 ; [+17]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K14 ["playerData"]
       40 GETTABLEKS                       R3 R3 K15 ["actions"]
       42 GETTABLEKS                       R3 R3 K16 ["MoveAction"]
       44 LOADK                            R5 K17 ["ClassicThumbstickScriptableBinding"]
       45 NAMECALL                         R3 R3 K18 ["FindFirstChild"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+61]
       49 MOVE                             R6 R1
       50 NAMECALL                         R4 R3 K19 ["Fire"]
       52 CALL                             R4 2 0
       53 JUMP                             ; [+56]
       54 GETUPVAL                         R3 2
       55 JUMPIFNOT                        R3 ; [+43]
       56 GETUPVAL                         R3 0
       57 GETTABLEKS                       R3 R3 K14 ["playerData"]
       59 GETTABLEKS                       R3 R3 K15 ["actions"]
       61 GETTABLEKS                       R3 R3 K16 ["MoveAction"]
       63 LOADK                            R5 K17 ["ClassicThumbstickScriptableBinding"]
       64 NAMECALL                         R3 R3 K18 ["FindFirstChild"]
       66 CALL                             R3 2 1
       67 JUMPIFNOT                        R3 ; [+19]
       68 GETIMPORT                        R4 K21 [pcall]
       70 NEWCLOSURE                       R5 P0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R1
       73 CALL                             R4 1 2
       74 JUMPIF                           R4 ; [+35]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K14 ["playerData"]
       78 GETTABLEKS                       R6 R6 K15 ["actions"]
       80 GETTABLEKS                       R6 R6 K16 ["MoveAction"]
       82 MOVE                             R8 R1
       83 NAMECALL                         R6 R6 K19 ["Fire"]
       85 CALL                             R6 2 0
       86 JUMP                             ; [+23]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K14 ["playerData"]
       90 GETTABLEKS                       R4 R4 K15 ["actions"]
       92 GETTABLEKS                       R4 R4 K16 ["MoveAction"]
       94 MOVE                             R6 R1
       95 NAMECALL                         R4 R4 K19 ["Fire"]
       97 CALL                             R4 2 0
       98 JUMP                             ; [+11]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K14 ["playerData"]
      102 GETTABLEKS                       R3 R3 K15 ["actions"]
      104 GETTABLEKS                       R3 R3 K16 ["MoveAction"]
      106 MOVE                             R5 R1
      107 NAMECALL                         R3 R3 K19 ["Fire"]
      109 CALL                             R3 2 0
      110 CLOSEUPVALS                      R1
      111 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 GETTABLEKS                       R3 R0 K3 ["X"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K3 ["X"]
        7 SUB                              R2 R3 R4
        8 GETTABLEKS                       R4 R0 K4 ["Y"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K4 ["Y"]
       13 SUB                              R3 R4 R5
       14 CALL                             R1 2 1
       15 GETTABLEKS                       R2 R1 K5 ["magnitude"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K7 ["thumbstickFrame"]
       20 GETTABLEKS                       R4 R4 K8 ["AbsoluteSize"]
       22 GETTABLEKS                       R4 R4 K3 ["X"]
       24 DIVK                             R3 R4 K6 [2]
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K9 ["isFollowStick"]
       28 JUMPIFNOT                        R4 ; [+94]
       29 JUMPIFNOTLT                      R3 R2 ; [+93]
       31 GETTABLEKS                       R5 R1 K10 ["unit"]
       33 MUL                              R4 R5 R3
       34 GETUPVAL                         R5 2
       35 JUMPIFNOT                        R5 ; [+48]
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R5 R5 K11 ["AbsolutePosition"]
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K7 ["thumbstickFrame"]
       42 GETIMPORT                        R7 K13 [UDim2.new]
       44 LOADN                            R8 0
       45 GETTABLEKS                       R12 R0 K3 ["X"]
       47 GETTABLEKS                       R13 R5 K3 ["X"]
       49 SUB                              R11 R12 R13
       50 GETUPVAL                         R13 1
       51 GETTABLEKS                       R13 R13 K7 ["thumbstickFrame"]
       53 GETTABLEKS                       R13 R13 K8 ["AbsoluteSize"]
       55 GETTABLEKS                       R13 R13 K3 ["X"]
       57 DIVK                             R12 R13 K6 [2]
       58 SUB                              R10 R11 R12
       59 GETTABLEKS                       R11 R4 K3 ["X"]
       61 SUB                              R9 R10 R11
       62 LOADN                            R10 0
       63 GETTABLEKS                       R14 R0 K4 ["Y"]
       65 GETTABLEKS                       R15 R5 K4 ["Y"]
       67 SUB                              R13 R14 R15
       68 GETUPVAL                         R15 1
       69 GETTABLEKS                       R15 R15 K7 ["thumbstickFrame"]
       71 GETTABLEKS                       R15 R15 K8 ["AbsoluteSize"]
       73 GETTABLEKS                       R15 R15 K4 ["Y"]
       75 DIVK                             R14 R15 K6 [2]
       76 SUB                              R12 R13 R14
       77 GETTABLEKS                       R13 R4 K4 ["Y"]
       79 SUB                              R11 R12 R13
       80 CALL                             R7 4 1
       81 SETTABLEKS                       R7 R6 K14 ["Position"]
       83 JUMP                             ; [+50]
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R5 R5 K7 ["thumbstickFrame"]
       87 GETIMPORT                        R6 K13 [UDim2.new]
       89 LOADN                            R7 0
       90 GETTABLEKS                       R10 R0 K3 ["X"]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K7 ["thumbstickFrame"]
       95 GETTABLEKS                       R12 R12 K8 ["AbsoluteSize"]
       97 GETTABLEKS                       R12 R12 K3 ["X"]
       99 DIVK                             R11 R12 K6 [2]
      100 SUB                              R9 R10 R11
      101 GETTABLEKS                       R10 R4 K3 ["X"]
      103 SUB                              R8 R9 R10
      104 LOADN                            R9 0
      105 GETTABLEKS                       R12 R0 K4 ["Y"]
      107 GETUPVAL                         R14 1
      108 GETTABLEKS                       R14 R14 K7 ["thumbstickFrame"]
      110 GETTABLEKS                       R14 R14 K8 ["AbsoluteSize"]
      112 GETTABLEKS                       R14 R14 K4 ["Y"]
      114 DIVK                             R13 R14 K6 [2]
      115 SUB                              R11 R12 R13
      116 GETTABLEKS                       R12 R4 K4 ["Y"]
      118 SUB                              R10 R11 R12
      119 CALL                             R6 4 1
      120 SETTABLEKS                       R6 R5 K14 ["Position"]
      122 JUMP                             ; [+11]
      123 FASTCALL2                        MATH_MIN R2 R3 ; [+5]
      125 MOVE                             R5 R2
      126 MOVE                             R6 R3
      127 GETIMPORT                        R4 K17 [math.min]
      129 CALL                             R4 2 1
      130 MOVE                             R2 R4
      131 GETTABLEKS                       R4 R1 K10 ["unit"]
      133 MUL                              R1 R4 R2
      134 GETUPVAL                         R4 1
      135 GETTABLEKS                       R4 R4 K18 ["stickImage"]
      137 GETIMPORT                        R5 K13 [UDim2.new]
      139 LOADN                            R6 0
      140 GETTABLEKS                       R8 R1 K3 ["X"]
      142 GETUPVAL                         R10 1
      143 GETTABLEKS                       R10 R10 K18 ["stickImage"]
      145 GETTABLEKS                       R10 R10 K8 ["AbsoluteSize"]
      147 GETTABLEKS                       R10 R10 K3 ["X"]
      149 DIVK                             R9 R10 K6 [2]
      150 ADD                              R7 R8 R9
      151 LOADN                            R8 0
      152 GETTABLEKS                       R10 R1 K4 ["Y"]
      154 GETUPVAL                         R12 1
      155 GETTABLEKS                       R12 R12 K18 ["stickImage"]
      157 GETTABLEKS                       R12 R12 K8 ["AbsoluteSize"]
      159 GETTABLEKS                       R12 R12 K4 ["Y"]
      161 DIVK                             R11 R12 K6 [2]
      162 ADD                              R9 R10 R11
      163 CALL                             R5 4 1
      164 SETTABLEKS                       R5 R4 K14 ["Position"]
      166 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R0 R1 ; [+211]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R3 K3 [Enum.ScreenInsets.None]
        6 NAMECALL                         R1 R1 K4 ["GetInsetArea"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R1 R1 K5 ["Min"]
       11 GETTABLEKS                       R4 R0 K6 ["X"]
       13 GETTABLEKS                       R5 R1 K6 ["X"]
       15 ADD                              R3 R4 R5
       16 GETTABLEKS                       R5 R0 K7 ["Y"]
       18 GETTABLEKS                       R6 R1 K7 ["Y"]
       20 ADD                              R4 R5 R6
       21 LOADN                            R5 0
       22 FASTCALL                         VECTOR ; [+2]
       23 GETIMPORT                        R2 K10 [Vector3.new]
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K11 ["isTouchActive"]
       29 JUMPIF                           R3 ; [+125]
       30 GETUPVAL                         R3 2
       31 LOADB                            R4 1
       32 SETTABLEKS                       R4 R3 K11 ["isTouchActive"]
       34 GETUPVAL                         R3 3
       35 JUMPIFNOT                        R3 ; [+46]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K12 ["AbsolutePosition"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K13 ["thumbstickFrame"]
       42 GETIMPORT                        R5 K15 [UDim2.new]
       44 LOADN                            R6 0
       45 GETTABLEKS                       R9 R2 K6 ["X"]
       47 GETTABLEKS                       R10 R3 K6 ["X"]
       49 SUB                              R8 R9 R10
       50 GETUPVAL                         R10 2
       51 GETTABLEKS                       R10 R10 K13 ["thumbstickFrame"]
       53 GETTABLEKS                       R10 R10 K17 ["Size"]
       55 GETTABLEKS                       R10 R10 K6 ["X"]
       57 GETTABLEKS                       R10 R10 K18 ["Offset"]
       59 DIVK                             R9 R10 K16 [2]
       60 SUB                              R7 R8 R9
       61 LOADN                            R8 0
       62 GETTABLEKS                       R11 R2 K7 ["Y"]
       64 GETTABLEKS                       R12 R3 K7 ["Y"]
       66 SUB                              R10 R11 R12
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K13 ["thumbstickFrame"]
       70 GETTABLEKS                       R12 R12 K17 ["Size"]
       72 GETTABLEKS                       R12 R12 K7 ["Y"]
       74 GETTABLEKS                       R12 R12 K18 ["Offset"]
       76 DIVK                             R11 R12 K16 [2]
       77 SUB                              R9 R10 R11
       78 CALL                             R5 4 1
       79 SETTABLEKS                       R5 R4 K19 ["Position"]
       81 JUMP                             ; [+36]
       82 GETUPVAL                         R3 2
       83 GETTABLEKS                       R3 R3 K13 ["thumbstickFrame"]
       85 GETIMPORT                        R4 K15 [UDim2.new]
       87 LOADN                            R5 0
       88 GETTABLEKS                       R7 R2 K6 ["X"]
       90 GETUPVAL                         R9 2
       91 GETTABLEKS                       R9 R9 K13 ["thumbstickFrame"]
       93 GETTABLEKS                       R9 R9 K17 ["Size"]
       95 GETTABLEKS                       R9 R9 K6 ["X"]
       97 GETTABLEKS                       R9 R9 K18 ["Offset"]
       99 DIVK                             R8 R9 K16 [2]
      100 SUB                              R6 R7 R8
      101 LOADN                            R7 0
      102 GETTABLEKS                       R9 R2 K7 ["Y"]
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K13 ["thumbstickFrame"]
      107 GETTABLEKS                       R11 R11 K17 ["Size"]
      109 GETTABLEKS                       R11 R11 K7 ["Y"]
      111 GETTABLEKS                       R11 R11 K18 ["Offset"]
      113 DIVK                             R10 R11 K16 [2]
      114 SUB                              R8 R9 R10
      115 CALL                             R4 4 1
      116 SETTABLEKS                       R4 R3 K19 ["Position"]
      118 GETIMPORT                        R3 K21 [Vector2.new]
      120 GETUPVAL                         R5 2
      121 GETTABLEKS                       R5 R5 K13 ["thumbstickFrame"]
      123 GETTABLEKS                       R5 R5 K12 ["AbsolutePosition"]
      125 GETTABLEKS                       R5 R5 K6 ["X"]
      127 GETUPVAL                         R7 2
      128 GETTABLEKS                       R7 R7 K13 ["thumbstickFrame"]
      130 GETTABLEKS                       R7 R7 K22 ["AbsoluteSize"]
      132 GETTABLEKS                       R7 R7 K6 ["X"]
      134 DIVK                             R6 R7 K16 [2]
      135 ADD                              R4 R5 R6
      136 GETUPVAL                         R6 2
      137 GETTABLEKS                       R6 R6 K13 ["thumbstickFrame"]
      139 GETTABLEKS                       R6 R6 K12 ["AbsolutePosition"]
      141 GETTABLEKS                       R6 R6 K7 ["Y"]
      143 GETUPVAL                         R8 2
      144 GETTABLEKS                       R8 R8 K13 ["thumbstickFrame"]
      146 GETTABLEKS                       R8 R8 K22 ["AbsoluteSize"]
      148 GETTABLEKS                       R8 R8 K7 ["Y"]
      150 DIVK                             R7 R8 K16 [2]
      151 ADD                              R5 R6 R7
      152 CALL                             R3 2 1
      153 SETUPVAL                         R3 5
      154 RETURN                           R0 0
      155 GETIMPORT                        R3 K21 [Vector2.new]
      157 GETUPVAL                         R5 2
      158 GETTABLEKS                       R5 R5 K13 ["thumbstickFrame"]
      160 GETTABLEKS                       R5 R5 K12 ["AbsolutePosition"]
      162 GETTABLEKS                       R5 R5 K6 ["X"]
      164 GETUPVAL                         R7 2
      165 GETTABLEKS                       R7 R7 K13 ["thumbstickFrame"]
      167 GETTABLEKS                       R7 R7 K22 ["AbsoluteSize"]
      169 GETTABLEKS                       R7 R7 K6 ["X"]
      171 DIVK                             R6 R7 K16 [2]
      172 ADD                              R4 R5 R6
      173 GETUPVAL                         R6 2
      174 GETTABLEKS                       R6 R6 K13 ["thumbstickFrame"]
      176 GETTABLEKS                       R6 R6 K12 ["AbsolutePosition"]
      178 GETTABLEKS                       R6 R6 K7 ["Y"]
      180 GETUPVAL                         R8 2
      181 GETTABLEKS                       R8 R8 K13 ["thumbstickFrame"]
      183 GETTABLEKS                       R8 R8 K22 ["AbsoluteSize"]
      185 GETTABLEKS                       R8 R8 K7 ["Y"]
      187 DIVK                             R7 R8 K16 [2]
      188 ADD                              R5 R6 R7
      189 CALL                             R3 2 1
      190 SETUPVAL                         R3 5
      191 GETIMPORT                        R3 K21 [Vector2.new]
      193 GETTABLEKS                       R5 R2 K6 ["X"]
      195 GETUPVAL                         R6 5
      196 GETTABLEKS                       R6 R6 K6 ["X"]
      198 SUB                              R4 R5 R6
      199 GETTABLEKS                       R6 R2 K7 ["Y"]
      201 GETUPVAL                         R7 5
      202 GETTABLEKS                       R7 R7 K7 ["Y"]
      204 SUB                              R5 R6 R7
      205 CALL                             R3 2 1
      206 GETUPVAL                         R4 6
      207 MOVE                             R5 R3
      208 CALL                             R4 1 0
      209 GETUPVAL                         R4 7
      210 MOVE                             R5 R2
      211 CALL                             R4 1 0
      212 RETURN                           R0 0
      213 GETUPVAL                         R1 2
      214 GETTABLEKS                       R1 R1 K11 ["isTouchActive"]
      216 JUMPIFNOT                        R1 ; [+4]
      217 GETUPVAL                         R1 2
      218 NAMECALL                         R1 R1 K23 ["OnInputEnded"]
      220 CALL                             R1 1 0
      221 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isTouchActive"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["OnInputEnded"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
        2 JUMPIFNOT                        R2 ; [+45]
        3 GETUPVAL                         R2 0
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["Enabled"]
        7 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       12 NAMECALL                         R2 R2 K3 ["Disconnect"]
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R0 K2 ["thumbstickStateChangedConn"]
       18 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       20 NAMECALL                         R2 R2 K4 ["Destroy"]
       22 CALL                             R2 1 0
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       26 GETTABLEKS                       R2 R0 K5 ["absoluteSizeChangedConn"]
       28 JUMPIFNOT                        R2 ; [+8]
       29 GETTABLEKS                       R2 R0 K5 ["absoluteSizeChangedConn"]
       31 NAMECALL                         R2 R2 K3 ["Disconnect"]
       33 CALL                             R2 1 0
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R0 K5 ["absoluteSizeChangedConn"]
       37 GETTABLEKS                       R2 R0 K6 ["avatarAbilitiesEnabledChangedConn"]
       39 JUMPIFNOT                        R2 ; [+8]
       40 GETTABLEKS                       R2 R0 K6 ["avatarAbilitiesEnabledChangedConn"]
       42 NAMECALL                         R2 R2 K3 ["Disconnect"]
       44 CALL                             R2 1 0
       45 LOADNIL                          R2
       46 SETTABLEKS                       R2 R0 K6 ["avatarAbilitiesEnabledChangedConn"]
       48 GETIMPORT                        R2 K9 [Instance.new]
       50 LOADK                            R3 K10 ["Frame"]
       51 CALL                             R2 1 1
       52 SETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       54 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       56 GETUPVAL                         R4 1
       57 JUMPIFNOT                        R4 ; [+2]
       58 LOADK                            R3 K11 ["ClassicThumbstickFrame"]
       59 JUMP                             ; [+1]
       60 LOADK                            R3 K12 ["ThumbstickFrame"]
       61 SETTABLEKS                       R3 R2 K13 ["Name"]
       63 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       65 LOADB                            R3 1
       66 SETTABLEKS                       R3 R2 K14 ["Active"]
       68 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       70 LOADB                            R3 0
       71 SETTABLEKS                       R3 R2 K15 ["Visible"]
       73 GETTABLEKS                       R2 R0 K0 ["thumbstickFrame"]
       75 LOADN                            R3 1
       76 SETTABLEKS                       R3 R2 K16 ["BackgroundTransparency"]
       78 GETIMPORT                        R2 K9 [Instance.new]
       80 LOADK                            R3 K17 ["ImageLabel"]
       81 CALL                             R2 1 1
       82 LOADK                            R3 K18 ["OuterImage"]
       83 SETTABLEKS                       R3 R2 K13 ["Name"]
       85 LOADK                            R3 K19 ["rbxasset://textures/ui/TouchControlsSheet.png"]
       86 SETTABLEKS                       R3 R2 K20 ["Image"]
       88 GETIMPORT                        R3 K22 [Vector2.new]
       90 CALL                             R3 0 1
       91 SETTABLEKS                       R3 R2 K23 ["ImageRectOffset"]
       93 GETIMPORT                        R3 K22 [Vector2.new]
       95 LOADN                            R4 220
       96 LOADN                            R5 220
       97 CALL                             R3 2 1
       98 SETTABLEKS                       R3 R2 K24 ["ImageRectSize"]
      100 LOADN                            R3 1
      101 SETTABLEKS                       R3 R2 K16 ["BackgroundTransparency"]
      103 GETIMPORT                        R3 K26 [UDim2.new]
      105 LOADN                            R4 0
      106 LOADN                            R5 0
      107 LOADN                            R6 0
      108 LOADN                            R7 0
      109 CALL                             R3 4 1
      110 SETTABLEKS                       R3 R2 K27 ["Position"]
      112 GETIMPORT                        R3 K9 [Instance.new]
      114 LOADK                            R4 K17 ["ImageLabel"]
      115 CALL                             R3 1 1
      116 SETTABLEKS                       R3 R0 K28 ["stickImage"]
      118 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      120 LOADK                            R4 K29 ["StickImage"]
      121 SETTABLEKS                       R4 R3 K13 ["Name"]
      123 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      125 LOADK                            R4 K19 ["rbxasset://textures/ui/TouchControlsSheet.png"]
      126 SETTABLEKS                       R4 R3 K20 ["Image"]
      128 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      130 GETIMPORT                        R4 K22 [Vector2.new]
      132 LOADN                            R5 220
      133 LOADN                            R6 0
      134 CALL                             R4 2 1
      135 SETTABLEKS                       R4 R3 K23 ["ImageRectOffset"]
      137 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      139 GETIMPORT                        R4 K22 [Vector2.new]
      141 LOADN                            R5 111
      142 LOADN                            R6 111
      143 CALL                             R4 2 1
      144 SETTABLEKS                       R4 R3 K24 ["ImageRectSize"]
      146 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      148 LOADN                            R4 1
      149 SETTABLEKS                       R4 R3 K16 ["BackgroundTransparency"]
      151 GETTABLEKS                       R3 R0 K28 ["stickImage"]
      153 LOADN                            R4 2
      154 SETTABLEKS                       R4 R3 K30 ["ZIndex"]
      156 NEWCLOSURE                       R3 P0
      157 CAPTURE                          VAL R1
      158 CAPTURE                          UPVAL U2
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          UPVAL U4
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R2
      163 MOVE                             R4 R3
      164 CALL                             R4 0 0
      165 LOADK                            R6 K31 ["AbsoluteSize"]
      166 NAMECALL                         R4 R1 K32 ["GetPropertyChangedSignal"]
      168 CALL                             R4 2 1
      169 MOVE                             R6 R3
      170 NAMECALL                         R4 R4 K33 ["Connect"]
      172 CALL                             R4 2 1
      173 SETTABLEKS                       R4 R0 K5 ["absoluteSizeChangedConn"]
      175 GETUPVAL                         R4 2
      176 JUMPIFNOT                        R4 ; [+11]
      177 GETUPVAL                         R4 3
      178 NAMECALL                         R4 R4 K34 ["GetEnabledChangedSignal"]
      180 CALL                             R4 1 1
      181 MOVE                             R6 R3
      182 NAMECALL                         R4 R4 K33 ["Connect"]
      184 CALL                             R4 2 1
      185 SETTABLEKS                       R4 R0 K6 ["avatarAbilitiesEnabledChangedConn"]
      187 JUMP                             ; [+10]
      188 GETUPVAL                         R4 4
      189 GETTABLEKS                       R4 R4 K34 ["GetEnabledChangedSignal"]
      191 CALL                             R4 0 1
      192 MOVE                             R6 R3
      193 NAMECALL                         R4 R4 K33 ["Connect"]
      195 CALL                             R4 2 1
      196 SETTABLEKS                       R4 R0 K6 ["avatarAbilitiesEnabledChangedConn"]
      198 GETTABLEKS                       R4 R0 K0 ["thumbstickFrame"]
      200 SETTABLEKS                       R4 R2 K35 ["Parent"]
      202 GETTABLEKS                       R4 R0 K28 ["stickImage"]
      204 GETTABLEKS                       R5 R0 K0 ["thumbstickFrame"]
      206 SETTABLEKS                       R5 R4 K35 ["Parent"]
      208 GETIMPORT                        R4 K9 [Instance.new]
      210 LOADK                            R5 K36 ["ImageButton"]
      211 CALL                             R4 1 1
      212 SETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      214 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      216 LOADK                            R5 K38 ["ClassicThumbstickUIModifier"]
      217 SETTABLEKS                       R5 R4 K13 ["Name"]
      219 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      221 LOADN                            R5 1
      222 SETTABLEKS                       R5 R4 K16 ["BackgroundTransparency"]
      224 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      226 LOADN                            R5 1
      227 SETTABLEKS                       R5 R4 K39 ["ImageTransparency"]
      229 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      231 LOADB                            R5 0
      232 SETTABLEKS                       R5 R4 K40 ["AutoButtonColor"]
      234 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      236 GETIMPORT                        R5 K26 [UDim2.new]
      238 LOADN                            R6 1
      239 LOADN                            R7 0
      240 LOADN                            R8 1
      241 LOADN                            R9 0
      242 CALL                             R5 4 1
      243 SETTABLEKS                       R5 R4 K41 ["Size"]
      245 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      247 GETTABLEKS                       R5 R0 K0 ["thumbstickFrame"]
      249 GETTABLEKS                       R5 R5 K30 ["ZIndex"]
      251 SETTABLEKS                       R5 R4 K30 ["ZIndex"]
      253 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      255 LOADB                            R5 1
      256 SETTABLEKS                       R5 R4 K15 ["Visible"]
      258 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      260 LOADB                            R5 0
      261 SETTABLEKS                       R5 R4 K14 ["Active"]
      263 GETTABLEKS                       R4 R0 K37 ["thumbstickButton"]
      265 GETTABLEKS                       R5 R0 K0 ["thumbstickFrame"]
      267 SETTABLEKS                       R5 R4 K35 ["Parent"]
      269 GETUPVAL                         R4 5
      270 JUMPIF                           R4 ; [+18]
      271 GETIMPORT                        R4 K9 [Instance.new]
      273 LOADK                            R5 K42 ["InputBinding"]
      274 CALL                             R4 1 1
      275 LOADK                            R5 K43 ["ClassicTouchBinding"]
      276 SETTABLEKS                       R5 R4 K13 ["Name"]
      278 GETIMPORT                        R5 K47 [Enum.KeyCode.TouchPosition]
      280 SETTABLEKS                       R5 R4 K45 ["KeyCode"]
      282 GETTABLEKS                       R5 R0 K37 ["thumbstickButton"]
      284 SETTABLEKS                       R5 R4 K48 ["UIModifier"]
      286 GETUPVAL                         R5 0
      287 SETTABLEKS                       R5 R4 K35 ["Parent"]
      289 LOADNIL                          R4
      290 NEWCLOSURE                       R5 P1
      291 CAPTURE                          VAL R0
      292 CAPTURE                          UPVAL U6
      293 CAPTURE                          UPVAL U7
      294 NEWCLOSURE                       R6 P2
      295 CAPTURE                          REF R4
      296 CAPTURE                          VAL R0
      297 CAPTURE                          UPVAL U8
      298 CAPTURE                          VAL R1
      299 NEWCLOSURE                       R7 P3
      300 CAPTURE                          UPVAL U9
      301 CAPTURE                          UPVAL U10
      302 CAPTURE                          VAL R0
      303 CAPTURE                          UPVAL U8
      304 CAPTURE                          VAL R1
      305 CAPTURE                          REF R4
      306 CAPTURE                          VAL R5
      307 CAPTURE                          VAL R6
      308 SETTABLEKS                       R7 R0 K49 ["onStateChanged"]
      310 GETUPVAL                         R7 10
      311 GETTABLEKS                       R7 R7 K50 ["MenuOpened"]
      313 NEWCLOSURE                       R9 P4
      314 CAPTURE                          VAL R0
      315 NAMECALL                         R7 R7 K33 ["Connect"]
      317 CALL                             R7 2 0
      318 GETTABLEKS                       R7 R0 K0 ["thumbstickFrame"]
      320 SETTABLEKS                       R1 R7 K35 ["Parent"]
      322 CLOSEUPVALS                      R4
      323 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETIMPORT                        R3 K8 [script]
       17 GETTABLEKS                       R3 R3 K9 ["Parent"]
       19 GETTABLEKS                       R3 R3 K9 ["Parent"]
       21 LOADK                            R5 K10 ["CommonUtils"]
       22 NAMECALL                         R3 R3 K11 ["WaitForChild"]
       24 CALL                             R3 2 -1
       25 CALL                             R2 -1 1
       26 GETTABLEKS                       R3 R2 K12 ["get"]
       28 LOADK                            R4 K13 ["FlagUtil"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K14 ["getUserFlag"]
       32 LOADK                            R5 K15 ["UserPlayerScriptsCCLIntegrationD"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R3 K14 ["getUserFlag"]
       36 LOADK                            R6 K16 ["UserPlayerScriptsClassicThumbstickRenameUI"]
       37 CALL                             R5 1 1
       38 GETTABLEKS                       R6 R3 K14 ["getUserFlag"]
       40 LOADK                            R7 K17 ["UserPlayerScriptsFireThroughScriptableBindings"]
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R7 R3 K14 ["getUserFlag"]
       44 LOADK                            R8 K18 ["UserPlayerScriptsSAuthDirectAPIs2"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R3 K14 ["getUserFlag"]
       48 LOADK                            R9 K19 ["UserAbilitiesUserInterfaceC"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R3 K14 ["getUserFlag"]
       52 LOADK                            R10 K20 ["UserPlayerScriptsResetDTTouchOnCreate"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K8 [script]
       56 GETTABLEKS                       R10 R10 K9 ["Parent"]
       58 GETTABLEKS                       R10 R10 K9 ["Parent"]
       60 LOADK                            R12 K21 ["InputContexts"]
       61 NAMECALL                         R10 R10 K11 ["WaitForChild"]
       63 CALL                             R10 2 1
       64 LOADK                            R13 K22 ["TransformerContext"]
       65 NAMECALL                         R11 R10 K11 ["WaitForChild"]
       67 CALL                             R11 2 1
       68 LOADK                            R14 K23 ["ThumbstickAction"]
       69 NAMECALL                         R12 R11 K11 ["WaitForChild"]
       71 CALL                             R12 2 1
       72 GETIMPORT                        R13 K26 [Vector2.new]
       74 LOADN                            R14 -1
       75 LOADN                            R15 -1
       76 CALL                             R13 2 1
       77 GETIMPORT                        R14 K6 [require]
       79 GETIMPORT                        R15 K8 [script]
       81 GETTABLEKS                       R15 R15 K9 ["Parent"]
       83 LOADK                            R17 K27 ["AvatarAbilitiesInterface"]
       84 NAMECALL                         R15 R15 K11 ["WaitForChild"]
       86 CALL                             R15 2 -1
       87 CALL                             R14 -1 1
       88 JUMPIFNOT                        R4 ; [+6]
       89 GETTABLEKS                       R15 R14 K12 ["get"]
       91 GETTABLEKS                       R16 R1 K28 ["LocalPlayer"]
       93 CALL                             R15 1 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R15
       96 GETIMPORT                        R16 K6 [require]
       98 GETIMPORT                        R17 K8 [script]
      100 GETTABLEKS                       R17 R17 K9 ["Parent"]
      102 LOADK                            R19 K29 ["ActionController"]
      103 NAMECALL                         R17 R17 K11 ["WaitForChild"]
      105 CALL                             R17 2 -1
      106 CALL                             R16 -1 1
      107 NEWTABLE                         R18 8 0
      109 FASTCALL2                        SETMETATABLE R18 R16 ; [+4]
      111 MOVE                             R19 R16
      112 GETIMPORT                        R17 K31 [setmetatable]
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R17 K32 ["__index"]
      117 DUPCLOSURE                       R18 K33 [PROTO_0]
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R17
      120 SETTABLEKS                       R18 R17 K25 ["new"]
      122 DUPCLOSURE                       R18 K34 [PROTO_1]
      123 CAPTURE                          VAL R12
      124 DUPCLOSURE                       R19 K35 [PROTO_2]
      125 CAPTURE                          VAL R18
      126 CAPTURE                          VAL R12
      127 DUPCLOSURE                       R20 K36 [PROTO_3]
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R20 R17 K37 ["Enable"]
      134 DUPCLOSURE                       R20 K38 [PROTO_5]
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R6
      137 SETTABLEKS                       R20 R17 K39 ["OnInputEnded"]
      139 DUPCLOSURE                       R20 K40 [PROTO_12]
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R20 R17 K41 ["Create"]
      153 RETURN                           R17 1

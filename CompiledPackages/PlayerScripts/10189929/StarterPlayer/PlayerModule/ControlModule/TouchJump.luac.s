PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Create"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["_active"]
        9 JUMPIFNOT                        R0 ; [+9]
       10 GETUPVAL                         R0 0
       11 LOADB                            R1 0
       12 SETTABLEKS                       R1 R0 K1 ["_active"]
       14 GETUPVAL                         R0 0
       15 LOADB                            R2 1
       16 NAMECALL                         R0 R0 K2 ["EnableButton"]
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        7 GETIMPORT                        R2 K2 [setmetatable]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R1 R2 K3 ["playerData"]
       12 GETTABLEKS                       R3 R0 K4 ["eventBus"]
       14 LOADK                            R5 K5 ["ACTIONS_RELOADED"]
       15 NAMECALL                         R3 R3 K6 ["subscribe"]
       17 CALL                             R3 2 1
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U2
       21 NAMECALL                         R3 R3 K7 ["Connect"]
       23 CALL                             R3 2 0
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K8 ["parentUIFrame"]
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R2 K9 ["jumpButton"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K10 ["externallyEnabled"]
       33 LOADB                            R3 0
       34 SETTABLEKS                       R3 R2 K11 ["_active"]
       36 GETUPVAL                         R3 3
       37 GETTABLEKS                       R3 R3 K0 ["new"]
       39 CALL                             R3 0 1
       40 SETTABLEKS                       R3 R2 K12 ["_connectionUtil"]
       42 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+17]
        2 GETTABLEKS                       R1 R0 K0 ["playerData"]
        4 GETTABLEKS                       R1 R1 K1 ["actions"]
        6 GETTABLEKS                       R1 R1 K2 ["JumpAction"]
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETTABLEKS                       R1 R0 K0 ["playerData"]
       11 GETTABLEKS                       R1 R1 K1 ["actions"]
       13 GETTABLEKS                       R1 R1 K2 ["JumpAction"]
       15 LOADB                            R3 0
       16 NAMECALL                         R1 R1 K3 ["Fire"]
       18 CALL                             R1 2 0
       19 GETTABLEKS                       R1 R0 K4 ["jumpButton"]
       21 JUMPIFNOT                        R1 ; [+23]
       22 GETUPVAL                         R1 1
       23 JUMPIF                           R1 ; [+12]
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K5 ["isEnabled"]
       27 CALL                             R1 0 1
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETTABLEKS                       R1 R0 K4 ["jumpButton"]
       31 GETUPVAL                         R3 3
       32 GETTABLEN                        R2 R3 1
       33 SETTABLEKS                       R2 R1 K6 ["Image"]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R1 R0 K4 ["jumpButton"]
       38 GETIMPORT                        R2 K9 [Vector2.new]
       40 LOADN                            R3 1
       41 LOADN                            R4 146
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K10 ["ImageRectOffset"]
       45 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_reset"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["_active"]
        2 JUMPIFNOTEQ                      R1 R2 ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFNOT                        R1 ; [+28]
        6 GETTABLEKS                       R2 R0 K1 ["jumpButton"]
        8 JUMPIF                           R2 ; [+3]
        9 NAMECALL                         R2 R0 K2 ["Create"]
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R2 R0 K1 ["jumpButton"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["Visible"]
       17 GETUPVAL                         R2 0
       18 JUMPIF                           R2 ; [+31]
       19 GETTABLEKS                       R2 R0 K4 ["_connectionUtil"]
       21 LOADK                            R4 K5 ["MENU_OPENED"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["MenuOpened"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 NAMECALL                         R5 R5 K7 ["Connect"]
       29 CALL                             R5 2 -1
       30 NAMECALL                         R2 R2 K8 ["trackConnection"]
       32 CALL                             R2 -1 0
       33 JUMP                             ; [+16]
       34 GETTABLEKS                       R2 R0 K1 ["jumpButton"]
       36 JUMPIFNOT                        R2 ; [+5]
       37 GETTABLEKS                       R2 R0 K1 ["jumpButton"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K3 ["Visible"]
       42 GETUPVAL                         R2 0
       43 JUMPIF                           R2 ; [+6]
       44 GETTABLEKS                       R2 R0 K4 ["_connectionUtil"]
       46 LOADK                            R4 K5 ["MENU_OPENED"]
       47 NAMECALL                         R2 R2 K9 ["disconnect"]
       49 CALL                             R2 2 0
       50 NAMECALL                         R2 R0 K10 ["_reset"]
       52 CALL                             R2 1 0
       53 SETTABLEKS                       R1 R0 K0 ["_active"]
       55 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getChild"]
        3 LOADK                            R2 K1 ["Humanoid"]
        4 LOADK                            R3 K1 ["Humanoid"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+30]
        7 GETTABLEKS                       R2 R0 K2 ["externallyEnabled"]
        9 JUMPIFNOT                        R2 ; [+27]
       10 GETTABLEKS                       R2 R1 K3 ["UseJumpPower"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R2 R1 K4 ["JumpPower"]
       15 LOADN                            R3 0
       16 JUMPIFLT                         R3 R2 ; [+9]
       18 GETTABLEKS                       R2 R1 K3 ["UseJumpPower"]
       20 JUMPIF                           R2 ; [+16]
       21 GETTABLEKS                       R2 R1 K5 ["JumpHeight"]
       23 LOADN                            R3 0
       24 JUMPIFNOTLT                      R3 R2 ; [+12]
       26 GETIMPORT                        R4 K9 [Enum.HumanoidStateType.Jumping]
       28 NAMECALL                         R2 R1 K10 ["GetStateEnabled"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+5]
       32 LOADB                            R4 1
       33 NAMECALL                         R2 R0 K11 ["EnableButton"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0
       37 LOADB                            R4 0
       38 NAMECALL                         R2 R0 K11 ["EnableButton"]
       40 CALL                             R2 2 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateEnabled"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K3 [Enum.HumanoidStateType.Jumping]
        2 JUMPIFNOTEQ                      R0 R2 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["_active"]
        7 JUMPIFEQ                         R1 R2 ; [+5]
        9 GETUPVAL                         R2 0
       10 NAMECALL                         R2 R2 K5 ["UpdateEnabled"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateEnabled"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K1 ["_reset"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["_connectionUtil"]
       11 LOADK                            R3 K3 ["HUMANOID_JUMP_POWER"]
       12 LOADK                            R6 K4 ["JumpPower"]
       13 NAMECALL                         R4 R0 K5 ["GetPropertyChangedSignal"]
       15 CALL                             R4 2 1
       16 GETUPVAL                         R6 1
       17 NAMECALL                         R4 R4 K6 ["Connect"]
       19 CALL                             R4 2 -1
       20 NAMECALL                         R1 R1 K7 ["trackConnection"]
       22 CALL                             R1 -1 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K2 ["_connectionUtil"]
       26 LOADK                            R3 K8 ["HUMANOID_JUMP_HEIGHT"]
       27 LOADK                            R6 K9 ["JumpHeight"]
       28 NAMECALL                         R4 R0 K5 ["GetPropertyChangedSignal"]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R6 1
       32 NAMECALL                         R4 R4 K6 ["Connect"]
       34 CALL                             R4 2 -1
       35 NAMECALL                         R1 R1 K7 ["trackConnection"]
       37 CALL                             R1 -1 0
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K2 ["_connectionUtil"]
       41 LOADK                            R3 K10 ["HUMANOID_STATE_ENABLED_CHANGED"]
       42 GETTABLEKS                       R4 R0 K11 ["StateEnabledChanged"]
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          UPVAL U0
       46 NAMECALL                         R4 R4 K6 ["Connect"]
       48 CALL                             R4 2 -1
       49 NAMECALL                         R1 R1 K7 ["trackConnection"]
       51 CALL                             R1 -1 0
       52 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["onChild"]
        5 LOADK                            R3 K1 ["Humanoid"]
        6 LOADK                            R4 K1 ["Humanoid"]
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 CALL                             R2 3 1
       11 GETTABLEKS                       R3 R0 K2 ["_connectionUtil"]
       13 LOADK                            R5 K3 ["HUMANOID"]
       14 MOVE                             R6 R2
       15 NAMECALL                         R3 R3 K4 ["trackConnection"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_10:
        0 JUMPIFNOT                        R2 ; [+2]
        1 SETTABLEKS                       R2 R0 K0 ["parentUIFrame"]
        3 GETTABLEKS                       R3 R0 K1 ["externallyEnabled"]
        5 JUMPIFNOTEQ                      R3 R1 ; [+2]
        7 RETURN                           R0 0
        8 SETTABLEKS                       R1 R0 K1 ["externallyEnabled"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["Enable"]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 CALL                             R3 2 0
       16 NAMECALL                         R3 R0 K3 ["UpdateEnabled"]
       18 CALL                             R3 1 0
       19 JUMPIFNOT                        R1 ; [+4]
       20 NAMECALL                         R3 R0 K4 ["_setupConfigurations"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R0 K5 ["_connectionUtil"]
       26 NAMECALL                         R3 R3 K6 ["disconnectAll"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parentUIFrame"]
        3 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R1 R1 K2 ["x"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["parentUIFrame"]
       10 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       12 GETTABLEKS                       R2 R2 K3 ["y"]
       14 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       16 GETIMPORT                        R0 K6 [math.min]
       18 CALL                             R0 2 1
       19 LOADN                            R2 500
       20 JUMPIFLE                         R0 R2 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 GETUPVAL                         R2 1
       25 JUMPIF                           R2 ; [+73]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R2 R2 K7 ["isEnabled"]
       29 CALL                             R2 0 1
       30 JUMPIFNOT                        R2 ; [+68]
       31 JUMPIFNOT                        R1 ; [+2]
       32 LOADN                            R2 72
       33 JUMP                             ; [+1]
       34 LOADN                            R2 120
       35 JUMPIFNOT                        R1 ; [+2]
       36 LOADN                            R3 64
       37 JUMP                             ; [+1]
       38 LOADN                            R3 100
       39 JUMPIFNOT                        R1 ; [+2]
       40 LOADN                            R4 64
       41 JUMP                             ; [+1]
       42 LOADN                            R4 112
       43 MINUS                            R6 R2
       44 SUB                              R5 R6 R3
       45 MINUS                            R7 R2
       46 SUB                              R6 R7 R4
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K8 ["jumpButton"]
       50 GETUPVAL                         R9 3
       51 GETTABLEN                        R8 R9 1
       52 SETTABLEKS                       R8 R7 K9 ["Image"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K8 ["jumpButton"]
       57 GETIMPORT                        R8 K12 [Vector2.new]
       59 LOADN                            R9 0
       60 LOADN                            R10 0
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K13 ["ImageRectOffset"]
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K8 ["jumpButton"]
       67 GETIMPORT                        R8 K12 [Vector2.new]
       69 LOADN                            R9 0
       70 LOADN                            R10 0
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K14 ["ImageRectSize"]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K8 ["jumpButton"]
       77 GETIMPORT                        R8 K16 [UDim2.new]
       79 LOADN                            R9 0
       80 MOVE                             R10 R2
       81 LOADN                            R11 0
       82 MOVE                             R12 R2
       83 CALL                             R8 4 1
       84 SETTABLEKS                       R8 R7 K17 ["Size"]
       86 GETUPVAL                         R7 0
       87 GETTABLEKS                       R7 R7 K8 ["jumpButton"]
       89 GETIMPORT                        R8 K16 [UDim2.new]
       91 LOADN                            R9 1
       92 MOVE                             R10 R5
       93 LOADN                            R11 1
       94 MOVE                             R12 R6
       95 CALL                             R8 4 1
       96 SETTABLEKS                       R8 R7 K18 ["Position"]
       98 RETURN                           R0 0
       99 JUMPIFNOT                        R1 ; [+2]
      100 LOADN                            R2 70
      101 JUMP                             ; [+1]
      102 LOADN                            R2 120
      103 GETUPVAL                         R3 0
      104 GETTABLEKS                       R3 R3 K8 ["jumpButton"]
      106 LOADK                            R4 K19 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
      107 SETTABLEKS                       R4 R3 K9 ["Image"]
      109 GETUPVAL                         R3 0
      110 GETTABLEKS                       R3 R3 K8 ["jumpButton"]
      112 GETIMPORT                        R4 K12 [Vector2.new]
      114 LOADN                            R5 1
      115 LOADN                            R6 146
      116 CALL                             R4 2 1
      117 SETTABLEKS                       R4 R3 K13 ["ImageRectOffset"]
      119 GETUPVAL                         R3 0
      120 GETTABLEKS                       R3 R3 K8 ["jumpButton"]
      122 GETIMPORT                        R4 K12 [Vector2.new]
      124 LOADN                            R5 144
      125 LOADN                            R6 144
      126 CALL                             R4 2 1
      127 SETTABLEKS                       R4 R3 K14 ["ImageRectSize"]
      129 GETUPVAL                         R3 0
      130 GETTABLEKS                       R3 R3 K8 ["jumpButton"]
      132 GETIMPORT                        R4 K16 [UDim2.new]
      134 LOADN                            R5 0
      135 MOVE                             R6 R2
      136 LOADN                            R7 0
      137 MOVE                             R8 R2
      138 CALL                             R4 4 1
      139 SETTABLEKS                       R4 R3 K17 ["Size"]
      141 GETUPVAL                         R3 0
      142 GETTABLEKS                       R3 R3 K8 ["jumpButton"]
      144 JUMPIFNOT                        R1 ; [+11]
      145 GETIMPORT                        R4 K16 [UDim2.new]
      147 LOADN                            R5 1
      148 MULK                             R8 R2 K21 [1.5]
      149 SUBK                             R7 R8 K20 [10]
      150 MINUS                            R6 R7
      151 LOADN                            R7 1
      152 MINUS                            R9 R2
      153 SUBK                             R8 R9 K22 [20]
      154 CALL                             R4 4 1
      155 JUMPIF                           R4 ; [+10]
      156 GETIMPORT                        R4 K16 [UDim2.new]
      158 LOADN                            R5 1
      159 MULK                             R8 R2 K21 [1.5]
      160 SUBK                             R7 R8 K20 [10]
      161 MINUS                            R6 R7
      162 LOADN                            R7 1
      163 MINUS                            R9 R2
      164 MULK                             R8 R9 K23 [1.75]
      165 CALL                             R4 4 1
      166 SETTABLEKS                       R4 R3 K18 ["Position"]
      168 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+13]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["isEnabled"]
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
       15 GETUPVAL                         R2 3
       16 GETTABLEN                        R1 R2 2
       17 SETTABLEKS                       R1 R0 K2 ["Image"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
       23 GETIMPORT                        R1 K5 [Vector2.new]
       25 LOADN                            R2 146
       26 LOADN                            R3 146
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K6 ["ImageRectOffset"]
       30 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+13]
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["isEnabled"]
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
       15 GETUPVAL                         R2 3
       16 GETTABLEN                        R1 R2 1
       17 SETTABLEKS                       R1 R0 K2 ["Image"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["jumpButton"]
       23 GETIMPORT                        R1 K5 [Vector2.new]
       25 LOADN                            R2 1
       26 LOADN                            R3 146
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K6 ["ImageRectOffset"]
       30 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["parentUIFrame"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
        9 NAMECALL                         R1 R1 K2 ["Destroy"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K1 ["jumpButton"]
       15 GETTABLEKS                       R1 R0 K3 ["absoluteSizeChangedConn"]
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETTABLEKS                       R1 R0 K3 ["absoluteSizeChangedConn"]
       20 NAMECALL                         R1 R1 K4 ["Disconnect"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K3 ["absoluteSizeChangedConn"]
       26 GETUPVAL                         R1 0
       27 JUMPIF                           R1 ; [+11]
       28 GETTABLEKS                       R1 R0 K5 ["avatarAbilitiesEnabledChangedConn"]
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETTABLEKS                       R1 R0 K5 ["avatarAbilitiesEnabledChangedConn"]
       33 NAMECALL                         R1 R1 K4 ["Disconnect"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K5 ["avatarAbilitiesEnabledChangedConn"]
       39 GETIMPORT                        R1 K8 [Instance.new]
       41 LOADK                            R2 K9 ["ImageButton"]
       42 CALL                             R1 1 1
       43 SETTABLEKS                       R1 R0 K1 ["jumpButton"]
       45 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       47 LOADK                            R2 K10 ["JumpButton"]
       48 SETTABLEKS                       R2 R1 K11 ["Name"]
       50 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       52 LOADB                            R2 0
       53 SETTABLEKS                       R2 R1 K12 ["Visible"]
       55 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       57 LOADN                            R2 1
       58 SETTABLEKS                       R2 R1 K13 ["BackgroundTransparency"]
       60 GETUPVAL                         R1 1
       61 JUMPIFNOT                        R1 ; [+5]
       62 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       64 LOADN                            R2 10
       65 SETTABLEKS                       R2 R1 K14 ["ZIndex"]
       67 GETUPVAL                         R1 0
       68 JUMPIF                           R1 ; [+12]
       69 GETUPVAL                         R1 2
       70 GETTABLEKS                       R1 R1 K15 ["isEnabled"]
       72 CALL                             R1 0 1
       73 JUMPIFNOT                        R1 ; [+7]
       74 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       76 GETUPVAL                         R3 3
       77 GETTABLEN                        R2 R3 1
       78 SETTABLEKS                       R2 R1 K16 ["Image"]
       80 JUMP                             ; [+23]
       81 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       83 LOADK                            R2 K17 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
       84 SETTABLEKS                       R2 R1 K16 ["Image"]
       86 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       88 GETIMPORT                        R2 K19 [Vector2.new]
       90 LOADN                            R3 1
       91 LOADN                            R4 146
       92 CALL                             R2 2 1
       93 SETTABLEKS                       R2 R1 K20 ["ImageRectOffset"]
       95 GETTABLEKS                       R1 R0 K1 ["jumpButton"]
       97 GETIMPORT                        R2 K19 [Vector2.new]
       99 LOADN                            R3 144
      100 LOADN                            R4 144
      101 CALL                             R2 2 1
      102 SETTABLEKS                       R2 R1 K21 ["ImageRectSize"]
      104 NEWCLOSURE                       R1 P0
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U0
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          UPVAL U3
      109 MOVE                             R2 R1
      110 CALL                             R2 0 0
      111 GETTABLEKS                       R2 R0 K0 ["parentUIFrame"]
      113 LOADK                            R4 K22 ["AbsoluteSize"]
      114 NAMECALL                         R2 R2 K23 ["GetPropertyChangedSignal"]
      116 CALL                             R2 2 1
      117 MOVE                             R4 R1
      118 NAMECALL                         R2 R2 K24 ["Connect"]
      120 CALL                             R2 2 1
      121 SETTABLEKS                       R2 R0 K3 ["absoluteSizeChangedConn"]
      123 GETUPVAL                         R2 0
      124 JUMPIF                           R2 ; [+10]
      125 GETUPVAL                         R2 2
      126 GETTABLEKS                       R2 R2 K25 ["GetEnabledChangedSignal"]
      128 CALL                             R2 0 1
      129 MOVE                             R4 R1
      130 NAMECALL                         R2 R2 K24 ["Connect"]
      132 CALL                             R2 2 1
      133 SETTABLEKS                       R2 R0 K5 ["avatarAbilitiesEnabledChangedConn"]
      135 GETTABLEKS                       R2 R0 K1 ["jumpButton"]
      137 GETTABLEKS                       R3 R0 K0 ["parentUIFrame"]
      139 SETTABLEKS                       R3 R2 K26 ["Parent"]
      141 GETTABLEKS                       R2 R0 K27 ["playerData"]
      143 GETTABLEKS                       R2 R2 K28 ["actions"]
      145 GETTABLEKS                       R2 R2 K29 ["JumpAction"]
      147 JUMPIF                           R2 ; [+1]
      148 RETURN                           R0 0
      149 GETTABLEKS                       R2 R0 K27 ["playerData"]
      151 GETTABLEKS                       R2 R2 K28 ["actions"]
      153 GETTABLEKS                       R2 R2 K29 ["JumpAction"]
      155 LOADK                            R4 K30 ["TouchBinding"]
      156 NAMECALL                         R2 R2 K31 ["WaitForChild"]
      158 CALL                             R2 2 1
      159 GETTABLEKS                       R3 R0 K1 ["jumpButton"]
      161 SETTABLEKS                       R3 R2 K32 ["UIButton"]
      163 GETTABLEKS                       R2 R0 K27 ["playerData"]
      165 GETTABLEKS                       R2 R2 K28 ["actions"]
      167 GETTABLEKS                       R2 R2 K29 ["JumpAction"]
      169 GETTABLEKS                       R2 R2 K33 ["Pressed"]
      171 NEWCLOSURE                       R4 P1
      172 CAPTURE                          VAL R0
      173 CAPTURE                          UPVAL U0
      174 CAPTURE                          UPVAL U2
      175 CAPTURE                          UPVAL U3
      176 NAMECALL                         R2 R2 K24 ["Connect"]
      178 CALL                             R2 2 0
      179 GETTABLEKS                       R2 R0 K27 ["playerData"]
      181 GETTABLEKS                       R2 R2 K28 ["actions"]
      183 GETTABLEKS                       R2 R2 K29 ["JumpAction"]
      185 GETTABLEKS                       R2 R2 K34 ["Released"]
      187 NEWCLOSURE                       R4 P2
      188 CAPTURE                          VAL R0
      189 CAPTURE                          UPVAL U0
      190 CAPTURE                          UPVAL U2
      191 CAPTURE                          UPVAL U3
      192 NAMECALL                         R2 R2 K24 ["Connect"]
      194 CALL                             R2 2 0
      195 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 LOADK                            R4 K9 ["CommonUtils"]
       16 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 1
       20 GETTABLEKS                       R2 R1 K11 ["get"]
       22 LOADK                            R3 K12 ["ConnectionUtil"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R1 K11 ["get"]
       26 LOADK                            R4 K13 ["CharacterUtil"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["get"]
       30 LOADK                            R5 K14 ["FlagUtil"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K15 ["getUserFlag"]
       34 LOADK                            R6 K16 ["UserPlayerScriptsCCLIntegrationD"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R4 K15 ["getUserFlag"]
       38 LOADK                            R7 K17 ["UserPlayerScriptsRefactor1"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R4 K15 ["getUserFlag"]
       42 LOADK                            R8 K18 ["UserPlayerScriptsFireThroughScriptableBindings"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R4 K15 ["getUserFlag"]
       46 LOADK                            R9 K19 ["UserPlayerScriptsFixTouchJumpVisibility"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K1 [game]
       50 LOADK                            R11 K20 ["Players"]
       51 NAMECALL                         R9 R9 K3 ["GetService"]
       53 CALL                             R9 2 1
       54 GETIMPORT                        R10 K5 [require]
       56 GETIMPORT                        R11 K7 [script]
       58 GETTABLEKS                       R11 R11 K8 ["Parent"]
       60 LOADK                            R13 K21 ["AvatarAbilitiesInterface"]
       61 NAMECALL                         R11 R11 K10 ["WaitForChild"]
       63 CALL                             R11 2 -1
       64 CALL                             R10 -1 1
       65 NEWTABLE                         R11 0 2
       67 LOADK                            R12 K22 ["rbxasset://textures/ui/Input/JumpButtonRegular.png"]
       68 LOADK                            R13 K23 ["rbxasset://textures/ui/Input/JumpButtonPressed.png"]
       69 SETLIST                          R11 R12 2 [1]
       71 DUPTABLE                         R12 K30 [{["HUMANOID_STATE_ENABLED_CHANGED"] = "HUMANOID_STATE_ENABLED_CHANGED", ["HUMANOID_JUMP_POWER"] = "HUMANOID_JUMP_POWER", ["HUMANOID_JUMP_HEIGHT"] = "HUMANOID_JUMP_HEIGHT", ["HUMANOID"] = "HUMANOID", ["MENU_OPENED"] = "MENU_OPENED", ["ACTIONS_RELOADED"] = "ACTIONS_RELOADED"}]
       72 GETIMPORT                        R13 K5 [require]
       74 GETIMPORT                        R14 K7 [script]
       76 GETTABLEKS                       R14 R14 K8 ["Parent"]
       78 LOADK                            R16 K31 ["ActionController"]
       79 NAMECALL                         R14 R14 K10 ["WaitForChild"]
       81 CALL                             R14 2 -1
       82 CALL                             R13 -1 1
       83 NEWTABLE                         R15 8 0
       85 FASTCALL2                        SETMETATABLE R15 R13 ; [+4]
       87 MOVE                             R16 R13
       88 GETIMPORT                        R14 K33 [setmetatable]
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R14 K34 ["__index"]
       93 DUPCLOSURE                       R15 K35 [PROTO_1]
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R15 R14 K36 ["new"]
      100 DUPCLOSURE                       R15 K37 [PROTO_2]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R11
      105 SETTABLEKS                       R15 R14 K38 ["_reset"]
      107 DUPCLOSURE                       R15 K39 [PROTO_4]
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R15 R14 K40 ["EnableButton"]
      112 DUPCLOSURE                       R15 K41 [PROTO_5]
      113 CAPTURE                          VAL R3
      114 SETTABLEKS                       R15 R14 K42 ["UpdateEnabled"]
      116 DUPCLOSURE                       R15 K43 [PROTO_9]
      117 CAPTURE                          VAL R3
      118 SETTABLEKS                       R15 R14 K44 ["_setupConfigurations"]
      120 DUPCLOSURE                       R15 K45 [PROTO_10]
      121 CAPTURE                          VAL R13
      122 SETTABLEKS                       R15 R14 K46 ["Enable"]
      124 DUPCLOSURE                       R15 K47 [PROTO_14]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R11
      129 SETTABLEKS                       R15 R14 K48 ["Create"]
      131 RETURN                           R14 1

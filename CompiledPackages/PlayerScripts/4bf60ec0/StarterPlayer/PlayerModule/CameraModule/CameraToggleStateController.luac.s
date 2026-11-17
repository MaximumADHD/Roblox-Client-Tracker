PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getTogglePan"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+3]
        8 LOADB                            R2 1
        9 SETUPVAL                         R2 2
       10 GETUPVAL                         R2 1
       11 JUMPIFNOTEQ                      R2 R1 ; [+9]
       13 GETIMPORT                        R3 K2 [tick]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 SUB                              R2 R3 R4
       18 LOADN                            R3 3
       19 JUMPIFNOTLT                      R3 R2 ; [+26]
       21 MOVE                             R2 R1
       22 JUMPIFNOT                        R2 ; [+10]
       23 GETIMPORT                        R4 K2 [tick]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 3
       27 SUB                              R3 R4 R5
       28 LOADN                            R4 3
       29 JUMPIFLT                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R3 R3 K3 ["setCameraModeToastOpen"]
       36 MOVE                             R4 R2
       37 CALL                             R3 1 0
       38 JUMPIFNOT                        R1 ; [+2]
       39 LOADB                            R3 0
       40 SETUPVAL                         R3 2
       41 GETIMPORT                        R3 K2 [tick]
       43 CALL                             R3 0 1
       44 SETUPVAL                         R3 3
       45 SETUPVAL                         R1 1
       46 GETUPVAL                         R2 5
       47 JUMPIFEQ                         R0 R2 ; [+20]
       49 JUMPIFNOT                        R0 ; [+11]
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K0 ["getTogglePan"]
       53 CALL                             R2 0 1
       54 SETUPVAL                         R2 6
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K4 ["setTogglePan"]
       58 LOADB                            R3 1
       59 CALL                             R2 1 0
       60 JUMP                             ; [+7]
       61 GETUPVAL                         R2 2
       62 JUMPIF                           R2 ; [+5]
       63 GETUPVAL                         R2 0
       64 GETTABLEKS                       R2 R2 K4 ["setTogglePan"]
       66 GETUPVAL                         R3 6
       67 CALL                             R2 1 0
       68 JUMPIFNOT                        R0 ; [+38]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K0 ["getTogglePan"]
       72 CALL                             R2 0 1
       73 JUMPIFNOT                        R2 ; [+18]
       74 GETUPVAL                         R2 7
       75 GETTABLEKS                       R2 R2 K5 ["setMouseIconOverride"]
       77 LOADK                            R3 K6 ["rbxasset://textures/Cursors/CrossMouseIcon.png"]
       78 CALL                             R2 1 0
       79 GETUPVAL                         R2 7
       80 GETTABLEKS                       R2 R2 K7 ["setMouseBehaviorOverride"]
       82 GETIMPORT                        R3 K11 [Enum.MouseBehavior.LockCenter]
       84 CALL                             R2 1 0
       85 GETUPVAL                         R2 7
       86 GETTABLEKS                       R2 R2 K12 ["setRotationTypeOverride"]
       88 GETIMPORT                        R3 K15 [Enum.RotationType.CameraRelative]
       90 CALL                             R2 1 0
       91 JUMP                             ; [+72]
       92 GETUPVAL                         R2 7
       93 GETTABLEKS                       R2 R2 K16 ["restoreMouseIcon"]
       95 CALL                             R2 0 0
       96 GETUPVAL                         R2 7
       97 GETTABLEKS                       R2 R2 K17 ["restoreMouseBehavior"]
       99 CALL                             R2 0 0
      100 GETUPVAL                         R2 7
      101 GETTABLEKS                       R2 R2 K12 ["setRotationTypeOverride"]
      103 GETIMPORT                        R3 K15 [Enum.RotationType.CameraRelative]
      105 CALL                             R2 1 0
      106 JUMP                             ; [+57]
      107 GETUPVAL                         R2 0
      108 GETTABLEKS                       R2 R2 K0 ["getTogglePan"]
      110 CALL                             R2 0 1
      111 JUMPIFNOT                        R2 ; [+18]
      112 GETUPVAL                         R2 7
      113 GETTABLEKS                       R2 R2 K5 ["setMouseIconOverride"]
      115 LOADK                            R3 K6 ["rbxasset://textures/Cursors/CrossMouseIcon.png"]
      116 CALL                             R2 1 0
      117 GETUPVAL                         R2 7
      118 GETTABLEKS                       R2 R2 K7 ["setMouseBehaviorOverride"]
      120 GETIMPORT                        R3 K11 [Enum.MouseBehavior.LockCenter]
      122 CALL                             R2 1 0
      123 GETUPVAL                         R2 7
      124 GETTABLEKS                       R2 R2 K12 ["setRotationTypeOverride"]
      126 GETIMPORT                        R3 K19 [Enum.RotationType.MovementRelative]
      128 CALL                             R2 1 0
      129 JUMP                             ; [+34]
      130 GETUPVAL                         R2 0
      131 GETTABLEKS                       R2 R2 K20 ["getHoldPan"]
      133 CALL                             R2 0 1
      134 JUMPIFNOT                        R2 ; [+17]
      135 GETUPVAL                         R2 7
      136 GETTABLEKS                       R2 R2 K16 ["restoreMouseIcon"]
      138 CALL                             R2 0 0
      139 GETUPVAL                         R2 7
      140 GETTABLEKS                       R2 R2 K7 ["setMouseBehaviorOverride"]
      142 GETIMPORT                        R3 K22 [Enum.MouseBehavior.LockCurrentPosition]
      144 CALL                             R2 1 0
      145 GETUPVAL                         R2 7
      146 GETTABLEKS                       R2 R2 K12 ["setRotationTypeOverride"]
      148 GETIMPORT                        R3 K19 [Enum.RotationType.MovementRelative]
      150 CALL                             R2 1 0
      151 JUMP                             ; [+12]
      152 GETUPVAL                         R2 7
      153 GETTABLEKS                       R2 R2 K16 ["restoreMouseIcon"]
      155 CALL                             R2 0 0
      156 GETUPVAL                         R2 7
      157 GETTABLEKS                       R2 R2 K17 ["restoreMouseBehavior"]
      159 CALL                             R2 0 0
      160 GETUPVAL                         R2 7
      161 GETTABLEKS                       R2 R2 K23 ["restoreRotationType"]
      163 CALL                             R2 0 0
      164 SETUPVAL                         R0 5
      165 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 LOADK                            R3 K5 ["CameraInput"]
        8 NAMECALL                         R1 R1 K6 ["WaitForChild"]
       10 CALL                             R1 2 -1
       11 CALL                             R0 -1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 LOADK                            R4 K7 ["CameraUI"]
       19 NAMECALL                         R2 R2 K6 ["WaitForChild"]
       21 CALL                             R2 2 -1
       22 CALL                             R1 -1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 LOADK                            R5 K8 ["CameraUtils"]
       30 NAMECALL                         R3 R3 K6 ["WaitForChild"]
       32 CALL                             R3 2 -1
       33 CALL                             R2 -1 1
       34 LOADB                            R3 0
       35 GETIMPORT                        R4 K10 [tick]
       37 CALL                             R4 0 1
       38 LOADB                            R5 0
       39 LOADB                            R6 0
       40 LOADB                            R7 0
       41 GETTABLEKS                       R8 R1 K11 ["setCameraModeToastEnabled"]
       43 LOADB                            R9 0
       44 CALL                             R8 1 0
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          REF R3
       48 CAPTURE                          REF R5
       49 CAPTURE                          REF R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          REF R7
       52 CAPTURE                          REF R6
       53 CAPTURE                          VAL R2
       54 CLOSEUPVALS                      R3
       55 RETURN                           R8 1

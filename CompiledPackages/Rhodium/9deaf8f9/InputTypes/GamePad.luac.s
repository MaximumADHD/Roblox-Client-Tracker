PROTO_0:
        0 DUPTABLE                         R0 K1 [{"deviceId"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["deviceId"]
        4 GETUPVAL                         R2 0
        5 ADDK                             R1 R2 K2 [1]
        6 SETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       10 MOVE                             R2 R0
       11 GETIMPORT                        R1 K4 [setmetatable]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R3 R0 K0 ["deviceId"]
       17 NAMECALL                         R1 R1 K5 ["HandleGamepadConnect"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["deviceId"]
        3 NAMECALL                         R1 R1 K1 ["HandleGamepadDisconnect"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["deviceId"]
        3 MOVE                             R5 R1
        4 LOADN                            R6 1
        5 NAMECALL                         R2 R2 K1 ["HandleGamepadButtonInput"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["deviceId"]
        3 MOVE                             R5 R1
        4 LOADN                            R6 0
        5 NAMECALL                         R2 R2 K1 ["HandleGamepadButtonInput"]
        7 CALL                             R2 4 0
        8 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["pressButton"]
        3 CALL                             R2 2 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K1 ["releaseButton"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["deviceId"]
        3 MOVE                             R6 R1
        4 GETTABLEKS                       R7 R2 K1 ["x"]
        6 GETTABLEKS                       R8 R2 K2 ["y"]
        8 LOADN                            R9 0
        9 NAMECALL                         R3 R3 K3 ["HandleGamepadAxisInput"]
       11 CALL                             R3 6 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 DIV                              R1 R2 R3
        3 GETUPVAL                         R3 0
        4 ADD                              R2 R3 R0
        5 SETUPVAL                         R2 0
        6 LOADN                            R2 1
        7 JUMPIFNOTLT                      R1 R2 ; [+15]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R6 3
       11 GETUPVAL                         R7 2
       12 SUB                              R5 R6 R7
       13 MUL                              R4 R5 R1
       14 ADD                              R2 R3 R4
       15 GETUPVAL                         R3 4
       16 GETUPVAL                         R5 5
       17 MOVE                             R6 R2
       18 NAMECALL                         R3 R3 K0 ["moveStickTo"]
       20 CALL                             R3 3 0
       21 LOADB                            R3 0
       22 RETURN                           R3 1
       23 GETUPVAL                         R2 4
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 3
       26 NAMECALL                         R2 R2 K0 ["moveStickTo"]
       28 CALL                             R2 3 0
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_7:
        0 ORK                              R4 R4 K0 [0]
        1 JUMPIFNOTEQKN                    R4 K0 [0] ; [+8]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R3
        5 NAMECALL                         R5 R0 K1 ["moveStickTo"]
        7 CALL                             R5 3 0
        8 CLOSEUPVALS                      R4
        9 RETURN                           R0 0
       10 LOADN                            R5 0
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          REF R5
       13 CAPTURE                          REF R4
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R7 R8 K2 ["__syncRun"]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 CLOSEUPVALS                      R4
       24 RETURN                           R0 0

PROTO_8:
        0 ORK                              R3 R3 K0 [0]
        1 GETIMPORT                        R4 K3 [Vector2.new]
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R4 2 1
        6 MOVE                             R7 R1
        7 MOVE                             R8 R4
        8 NAMECALL                         R5 R0 K4 ["moveStickTo"]
       10 CALL                             R5 3 0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R4
       13 MOVE                             R9 R2
       14 DIVK                             R10 R3 K5 [2]
       15 NAMECALL                         R5 R0 K6 ["smoothMoveStickTo"]
       17 CALL                             R5 5 0
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 MOVE                             R9 R4
       21 DIVK                             R10 R3 K5 [2]
       22 NAMECALL                         R5 R0 K6 ["smoothMoveStickTo"]
       24 CALL                             R5 5 0
       25 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R5 R1
        1 GETIMPORT                        R6 K2 [Vector2.new]
        3 LOADN                            R7 255
        4 LOADN                            R8 0
        5 CALL                             R6 2 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R3 R0 K3 ["swingStick"]
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R5 R1
        1 GETIMPORT                        R6 K2 [Vector2.new]
        3 LOADN                            R7 1
        4 LOADN                            R8 0
        5 CALL                             R6 2 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R3 R0 K3 ["swingStick"]
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R5 R1
        1 GETIMPORT                        R6 K2 [Vector2.new]
        3 LOADN                            R7 0
        4 LOADN                            R8 1
        5 CALL                             R6 2 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R3 R0 K3 ["swingStick"]
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R5 R1
        1 GETIMPORT                        R6 K2 [Vector2.new]
        3 LOADN                            R7 0
        4 LOADN                            R8 255
        5 CALL                             R6 2 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R3 R0 K3 ["swingStick"]
        9 CALL                             R3 4 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["VirtualInputUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K7 [game]
       14 LOADK                            R3 K8 ["VirtualInputManager"]
       15 NAMECALL                         R1 R1 K9 ["GetService"]
       17 CALL                             R1 2 1
       18 NEWTABLE                         R2 16 0
       20 SETTABLEKS                       R2 R2 K10 ["__index"]
       22 LOADN                            R3 123
       23 DUPTABLE                         R4 K29 [{"ButtonX", "ButtonY", "ButtonA", "ButtonB", "ButtonR1", "ButtonL1", "ButtonR2", "ButtonL2", "ButtonR3", "ButtonL3", "ButtonStart", "ButtonSelect", "DPadLeft", "DPadRight", "DPadUp", "DPadDown", "Thumbstick1", "Thumbstick2"}]
       24 GETIMPORT                        R5 K32 [Enum.KeyCode.ButtonX]
       26 SETTABLEKS                       R5 R4 K11 ["ButtonX"]
       28 GETIMPORT                        R5 K33 [Enum.KeyCode.ButtonY]
       30 SETTABLEKS                       R5 R4 K12 ["ButtonY"]
       32 GETIMPORT                        R5 K34 [Enum.KeyCode.ButtonA]
       34 SETTABLEKS                       R5 R4 K13 ["ButtonA"]
       36 GETIMPORT                        R5 K35 [Enum.KeyCode.ButtonB]
       38 SETTABLEKS                       R5 R4 K14 ["ButtonB"]
       40 GETIMPORT                        R5 K36 [Enum.KeyCode.ButtonR1]
       42 SETTABLEKS                       R5 R4 K15 ["ButtonR1"]
       44 GETIMPORT                        R5 K37 [Enum.KeyCode.ButtonL1]
       46 SETTABLEKS                       R5 R4 K16 ["ButtonL1"]
       48 GETIMPORT                        R5 K38 [Enum.KeyCode.ButtonR2]
       50 SETTABLEKS                       R5 R4 K17 ["ButtonR2"]
       52 GETIMPORT                        R5 K39 [Enum.KeyCode.ButtonL2]
       54 SETTABLEKS                       R5 R4 K18 ["ButtonL2"]
       56 GETIMPORT                        R5 K40 [Enum.KeyCode.ButtonR3]
       58 SETTABLEKS                       R5 R4 K19 ["ButtonR3"]
       60 GETIMPORT                        R5 K41 [Enum.KeyCode.ButtonL3]
       62 SETTABLEKS                       R5 R4 K20 ["ButtonL3"]
       64 GETIMPORT                        R5 K42 [Enum.KeyCode.ButtonStart]
       66 SETTABLEKS                       R5 R4 K21 ["ButtonStart"]
       68 GETIMPORT                        R5 K43 [Enum.KeyCode.ButtonSelect]
       70 SETTABLEKS                       R5 R4 K22 ["ButtonSelect"]
       72 GETIMPORT                        R5 K44 [Enum.KeyCode.DPadLeft]
       74 SETTABLEKS                       R5 R4 K23 ["DPadLeft"]
       76 GETIMPORT                        R5 K45 [Enum.KeyCode.DPadRight]
       78 SETTABLEKS                       R5 R4 K24 ["DPadRight"]
       80 GETIMPORT                        R5 K46 [Enum.KeyCode.DPadUp]
       82 SETTABLEKS                       R5 R4 K25 ["DPadUp"]
       84 GETIMPORT                        R5 K47 [Enum.KeyCode.DPadDown]
       86 SETTABLEKS                       R5 R4 K26 ["DPadDown"]
       88 GETIMPORT                        R5 K48 [Enum.KeyCode.Thumbstick1]
       90 SETTABLEKS                       R5 R4 K27 ["Thumbstick1"]
       92 GETIMPORT                        R5 K49 [Enum.KeyCode.Thumbstick2]
       94 SETTABLEKS                       R5 R4 K28 ["Thumbstick2"]
       96 SETTABLEKS                       R4 R2 K31 ["KeyCode"]
       98 NEWCLOSURE                       R4 P0
       99 CAPTURE                          REF R3
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R1
      102 SETTABLEKS                       R4 R2 K50 ["new"]
      104 DUPCLOSURE                       R4 K51 [PROTO_1]
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R4 R2 K52 ["disconnect"]
      108 DUPCLOSURE                       R4 K53 [PROTO_2]
      109 CAPTURE                          VAL R1
      110 SETTABLEKS                       R4 R2 K54 ["pressButton"]
      112 DUPCLOSURE                       R4 K55 [PROTO_3]
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R4 R2 K56 ["releaseButton"]
      116 DUPCLOSURE                       R4 K57 [PROTO_4]
      117 SETTABLEKS                       R4 R2 K58 ["hitButton"]
      119 DUPCLOSURE                       R4 K59 [PROTO_5]
      120 CAPTURE                          VAL R1
      121 SETTABLEKS                       R4 R2 K60 ["moveStickTo"]
      123 DUPCLOSURE                       R4 K61 [PROTO_7]
      124 CAPTURE                          VAL R0
      125 SETTABLEKS                       R4 R2 K62 ["smoothMoveStickTo"]
      127 DUPCLOSURE                       R4 K63 [PROTO_8]
      128 SETTABLEKS                       R4 R2 K64 ["swingStick"]
      130 DUPCLOSURE                       R4 K65 [PROTO_9]
      131 SETTABLEKS                       R4 R2 K66 ["swingLeft"]
      133 DUPCLOSURE                       R4 K67 [PROTO_10]
      134 SETTABLEKS                       R4 R2 K68 ["swingRight"]
      136 DUPCLOSURE                       R4 K69 [PROTO_11]
      137 SETTABLEKS                       R4 R2 K70 ["swingTop"]
      139 DUPCLOSURE                       R4 K71 [PROTO_12]
      140 SETTABLEKS                       R4 R2 K72 ["swingDown"]
      142 CLOSEUPVALS                      R3
      143 RETURN                           R2 1

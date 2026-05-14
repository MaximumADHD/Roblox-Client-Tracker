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
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["waitForInputEventsProcessed"]
       11 CALL                             R2 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R5 R0 K0 ["deviceId"]
        3 MOVE                             R6 R1
        4 GETTABLEKS                       R7 R2 K1 ["X"]
        6 GETTABLEKS                       R8 R2 K2 ["Y"]
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
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K2 ["__syncRun"]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 0
       23 CLOSEUPVALS                      R4
       24 RETURN                           R0 0

PROTO_8:
        0 ORK                              R3 R3 K0 [0]
        1 FASTCALL1                        ASSERT R3 ; [+3]
        2 MOVE                             R5 R3
        3 GETIMPORT                        R4 K2 [assert]
        5 CALL                             R4 1 0
        6 GETIMPORT                        R4 K5 [Vector2.new]
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 CALL                             R4 2 1
       11 MOVE                             R7 R1
       12 MOVE                             R8 R4
       13 NAMECALL                         R5 R0 K6 ["moveStickTo"]
       15 CALL                             R5 3 0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R4
       18 MOVE                             R9 R2
       19 DIVK                             R10 R3 K7 [2]
       20 NAMECALL                         R5 R0 K8 ["smoothMoveStickTo"]
       22 CALL                             R5 5 0
       23 MOVE                             R7 R1
       24 MOVE                             R8 R2
       25 MOVE                             R9 R4
       26 DIVK                             R10 R3 K7 [2]
       27 NAMECALL                         R5 R0 K8 ["smoothMoveStickTo"]
       29 CALL                             R5 5 0
       30 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Rhodium"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["VirtualInputUtils"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 16 0
       20 SETTABLEKS                       R3 R3 K11 ["__index"]
       22 LOADN                            R4 123
       23 DUPTABLE                         R5 K30 [{"ButtonX", "ButtonY", "ButtonA", "ButtonB", "ButtonR1", "ButtonL1", "ButtonR2", "ButtonL2", "ButtonR3", "ButtonL3", "ButtonStart", "ButtonSelect", "DPadLeft", "DPadRight", "DPadUp", "DPadDown", "Thumbstick1", "Thumbstick2"}]
       24 GETIMPORT                        R6 K33 [Enum.KeyCode.ButtonX]
       26 SETTABLEKS                       R6 R5 K12 ["ButtonX"]
       28 GETIMPORT                        R6 K34 [Enum.KeyCode.ButtonY]
       30 SETTABLEKS                       R6 R5 K13 ["ButtonY"]
       32 GETIMPORT                        R6 K35 [Enum.KeyCode.ButtonA]
       34 SETTABLEKS                       R6 R5 K14 ["ButtonA"]
       36 GETIMPORT                        R6 K36 [Enum.KeyCode.ButtonB]
       38 SETTABLEKS                       R6 R5 K15 ["ButtonB"]
       40 GETIMPORT                        R6 K37 [Enum.KeyCode.ButtonR1]
       42 SETTABLEKS                       R6 R5 K16 ["ButtonR1"]
       44 GETIMPORT                        R6 K38 [Enum.KeyCode.ButtonL1]
       46 SETTABLEKS                       R6 R5 K17 ["ButtonL1"]
       48 GETIMPORT                        R6 K39 [Enum.KeyCode.ButtonR2]
       50 SETTABLEKS                       R6 R5 K18 ["ButtonR2"]
       52 GETIMPORT                        R6 K40 [Enum.KeyCode.ButtonL2]
       54 SETTABLEKS                       R6 R5 K19 ["ButtonL2"]
       56 GETIMPORT                        R6 K41 [Enum.KeyCode.ButtonR3]
       58 SETTABLEKS                       R6 R5 K20 ["ButtonR3"]
       60 GETIMPORT                        R6 K42 [Enum.KeyCode.ButtonL3]
       62 SETTABLEKS                       R6 R5 K21 ["ButtonL3"]
       64 GETIMPORT                        R6 K43 [Enum.KeyCode.ButtonStart]
       66 SETTABLEKS                       R6 R5 K22 ["ButtonStart"]
       68 GETIMPORT                        R6 K44 [Enum.KeyCode.ButtonSelect]
       70 SETTABLEKS                       R6 R5 K23 ["ButtonSelect"]
       72 GETIMPORT                        R6 K45 [Enum.KeyCode.DPadLeft]
       74 SETTABLEKS                       R6 R5 K24 ["DPadLeft"]
       76 GETIMPORT                        R6 K46 [Enum.KeyCode.DPadRight]
       78 SETTABLEKS                       R6 R5 K25 ["DPadRight"]
       80 GETIMPORT                        R6 K47 [Enum.KeyCode.DPadUp]
       82 SETTABLEKS                       R6 R5 K26 ["DPadUp"]
       84 GETIMPORT                        R6 K48 [Enum.KeyCode.DPadDown]
       86 SETTABLEKS                       R6 R5 K27 ["DPadDown"]
       88 GETIMPORT                        R6 K49 [Enum.KeyCode.Thumbstick1]
       90 SETTABLEKS                       R6 R5 K28 ["Thumbstick1"]
       92 GETIMPORT                        R6 K50 [Enum.KeyCode.Thumbstick2]
       94 SETTABLEKS                       R6 R5 K29 ["Thumbstick2"]
       96 SETTABLEKS                       R5 R3 K32 ["KeyCode"]
       98 NEWCLOSURE                       R5 P0
       99 CAPTURE                          REF R4
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R5 R3 K51 ["new"]
      104 DUPCLOSURE                       R5 K52 [PROTO_1]
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R5 R3 K53 ["disconnect"]
      108 DUPCLOSURE                       R5 K54 [PROTO_2]
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R5 R3 K55 ["pressButton"]
      112 DUPCLOSURE                       R5 K56 [PROTO_3]
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R5 R3 K57 ["releaseButton"]
      116 DUPCLOSURE                       R5 K58 [PROTO_4]
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R5 R3 K59 ["hitButton"]
      120 DUPCLOSURE                       R5 K60 [PROTO_5]
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R5 R3 K61 ["moveStickTo"]
      124 DUPCLOSURE                       R5 K62 [PROTO_7]
      125 CAPTURE                          VAL R2
      126 SETTABLEKS                       R5 R3 K63 ["smoothMoveStickTo"]
      128 DUPCLOSURE                       R5 K64 [PROTO_8]
      129 SETTABLEKS                       R5 R3 K65 ["swingStick"]
      131 DUPCLOSURE                       R5 K66 [PROTO_9]
      132 SETTABLEKS                       R5 R3 K67 ["swingLeft"]
      134 DUPCLOSURE                       R5 K68 [PROTO_10]
      135 SETTABLEKS                       R5 R3 K69 ["swingRight"]
      137 DUPCLOSURE                       R5 K70 [PROTO_11]
      138 SETTABLEKS                       R5 R3 K71 ["swingTop"]
      140 DUPCLOSURE                       R5 K72 [PROTO_12]
      141 SETTABLEKS                       R5 R3 K73 ["swingDown"]
      143 CLOSEUPVALS                      R4
      144 RETURN                           R3 1

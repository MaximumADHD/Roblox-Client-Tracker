PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Input"]
       13 GETTABLEKS                       R2 R2 K8 ["InputMode"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 32 0
       18 GETIMPORT                        R3 K12 [Enum.UserInputType.MouseButton1]
       20 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       22 SETTABLE                         R4 R2 R3
       23 GETIMPORT                        R3 K15 [Enum.UserInputType.MouseButton2]
       25 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       27 SETTABLE                         R4 R2 R3
       28 GETIMPORT                        R3 K17 [Enum.UserInputType.MouseButton3]
       30 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       32 SETTABLE                         R4 R2 R3
       33 GETIMPORT                        R3 K19 [Enum.UserInputType.MouseMovement]
       35 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       37 SETTABLE                         R4 R2 R3
       38 GETIMPORT                        R3 K21 [Enum.UserInputType.MouseWheel]
       40 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       42 SETTABLE                         R4 R2 R3
       43 GETIMPORT                        R3 K23 [Enum.UserInputType.None]
       45 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       47 SETTABLE                         R4 R2 R3
       48 GETIMPORT                        R3 K25 [Enum.UserInputType.TextInput]
       50 GETTABLEKS                       R4 R1 K13 ["Pointer"]
       52 SETTABLE                         R4 R2 R3
       53 GETIMPORT                        R3 K27 [Enum.UserInputType.Gamepad1]
       55 GETTABLEKS                       R4 R1 K28 ["Directional"]
       57 SETTABLE                         R4 R2 R3
       58 GETIMPORT                        R3 K30 [Enum.UserInputType.Gamepad2]
       60 GETTABLEKS                       R4 R1 K28 ["Directional"]
       62 SETTABLE                         R4 R2 R3
       63 GETIMPORT                        R3 K32 [Enum.UserInputType.Gamepad3]
       65 GETTABLEKS                       R4 R1 K28 ["Directional"]
       67 SETTABLE                         R4 R2 R3
       68 GETIMPORT                        R3 K34 [Enum.UserInputType.Gamepad4]
       70 GETTABLEKS                       R4 R1 K28 ["Directional"]
       72 SETTABLE                         R4 R2 R3
       73 GETIMPORT                        R3 K36 [Enum.UserInputType.Gamepad5]
       75 GETTABLEKS                       R4 R1 K28 ["Directional"]
       77 SETTABLE                         R4 R2 R3
       78 GETIMPORT                        R3 K38 [Enum.UserInputType.Gamepad6]
       80 GETTABLEKS                       R4 R1 K28 ["Directional"]
       82 SETTABLE                         R4 R2 R3
       83 GETIMPORT                        R3 K40 [Enum.UserInputType.Gamepad7]
       85 GETTABLEKS                       R4 R1 K28 ["Directional"]
       87 SETTABLE                         R4 R2 R3
       88 GETIMPORT                        R3 K42 [Enum.UserInputType.Gamepad8]
       90 GETTABLEKS                       R4 R1 K28 ["Directional"]
       92 SETTABLE                         R4 R2 R3
       93 GETIMPORT                        R3 K44 [Enum.UserInputType.Keyboard]
       95 GETTABLEKS                       R4 R1 K28 ["Directional"]
       97 SETTABLE                         R4 R2 R3
       98 GETIMPORT                        R3 K46 [Enum.UserInputType.Touch]
      100 GETTABLEKS                       R4 R1 K45 ["Touch"]
      102 SETTABLE                         R4 R2 R3
      103 DUPCLOSURE                       R3 K47 [PROTO_0]
      104 CAPTURE                          VAL R2
      105 RETURN                           R3 1

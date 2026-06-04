PROTO_0:
        0 GETIMPORT                        R2 K3 [Enum.CameraNavigationModel.Roblox]
        2 JUMPIFNOTEQ                      R0 R2 ; [+3]
        4 LOADK                            R1 K4 ["rbxasset://textures/StudioCameraUI/iconFPS.png"]
        5 RETURN                           R1 1
        6 LOADK                            R1 K5 ["rbxasset://textures/StudioCameraUI/iconFocus.png"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETIMPORT                        R3 K4 [Enum.CameraNavigationModel.Roblox]
        7 JUMPIFNOTEQ                      R0 R3 ; [+4]
        9 GETIMPORT                        R2 K6 [Enum.CameraNavigationModel.IndustryCompatible]
       11 JUMP                             ; [+2]
       12 GETIMPORT                        R2 K4 [Enum.CameraNavigationModel.Roblox]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [settings]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R1 R1 K2 ["Studio"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 LOADK                            R4 K3 ["CameraNavigationModel"]
        8 CALL                             R2 2 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K4 ["createElement"]
       12 LOADK                            R5 K5 ["ImageButton"]
       13 NEWTABLE                         R6 16 0
       15 GETTABLEKS                       R7 R0 K6 ["LayoutOrder"]
       17 SETTABLEKS                       R7 R6 K6 ["LayoutOrder"]
       19 DUPCLOSURE                       R9 K7 [PROTO_0]
       20 NAMECALL                         R7 R2 K8 ["map"]
       22 CALL                             R7 2 1
       23 SETTABLEKS                       R7 R6 K9 ["Image"]
       25 GETUPVAL                         R7 2
       26 GETTABLEKS                       R7 R7 K10 ["BLACK"]
       28 SETTABLEKS                       R7 R6 K11 ["ImageColor3"]
       30 GETIMPORT                        R7 K15 [Enum.ScaleType.Fit]
       32 SETTABLEKS                       R7 R6 K13 ["ScaleType"]
       34 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       36 LOADN                            R8 22
       37 LOADN                            R9 22
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K19 ["Size"]
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K20 ["WHITE"]
       44 SETTABLEKS                       R7 R6 K21 ["BackgroundColor3"]
       46 LOADN                            R7 0
       47 SETTABLEKS                       R7 R6 K22 ["BackgroundTransparency"]
       49 LOADN                            R7 0
       50 SETTABLEKS                       R7 R6 K23 ["BorderSizePixel"]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K24 ["Event"]
       55 GETTABLEKS                       R7 R7 K25 ["Activated"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLE                         R8 R6 R7
       61 DUPTABLE                         R7 K27 [{"Corner"}]
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K4 ["createElement"]
       65 LOADK                            R9 K28 ["UICorner"]
       66 DUPTABLE                         R10 K30 [{"CornerRadius"}]
       67 GETIMPORT                        R11 K33 [UDim.new]
       69 LOADN                            R12 0
       70 LOADN                            R13 4
       71 CALL                             R11 2 1
       72 SETTABLEKS                       R11 R10 K29 ["CornerRadius"]
       74 CALL                             R8 2 1
       75 SETTABLEKS                       R8 R7 K26 ["Corner"]
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StudioCameraUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["usePropertyBinding"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 RETURN                           R4 1

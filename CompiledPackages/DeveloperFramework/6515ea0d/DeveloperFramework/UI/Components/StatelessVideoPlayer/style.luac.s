MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R1 K9 ["MediaPlayerControls"]
       22 GETTABLEKS                       R3 R3 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["Box"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["deepCopy"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K16 [{"PlayVideoIcon", "PausedOverlay", "MediaPlayerControls"}]
       42 DUPTABLE                         R6 K22 [{"Size", "ScaleType", "Image", "AnchorPoint", "Position"}]
       43 GETIMPORT                        R7 K25 [UDim2.fromOffset]
       45 LOADN                            R8 30
       46 LOADN                            R9 30
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K17 ["Size"]
       50 GETIMPORT                        R7 K28 [Enum.ScaleType.Fit]
       52 SETTABLEKS                       R7 R6 K18 ["ScaleType"]
       54 MOVE                             R7 R4
       55 MOVE                             R8 R2
       56 CALL                             R7 1 1
       57 GETTABLEKS                       R7 R7 K29 ["Controls"]
       59 GETTABLEKS                       R7 R7 K30 ["PlayButton"]
       61 GETTABLEKS                       R7 R7 K31 ["ForegroundStyle"]
       63 GETTABLEKS                       R7 R7 K19 ["Image"]
       65 SETTABLEKS                       R7 R6 K19 ["Image"]
       67 GETIMPORT                        R7 K34 [Vector2.new]
       69 LOADK                            R8 K35 [0.5]
       70 LOADK                            R9 K35 [0.5]
       71 CALL                             R7 2 1
       72 SETTABLEKS                       R7 R6 K20 ["AnchorPoint"]
       74 GETIMPORT                        R7 K36 [UDim2.new]
       76 LOADK                            R8 K35 [0.5]
       77 LOADN                            R9 0
       78 LOADK                            R10 K35 [0.5]
       79 LOADN                            R11 0
       80 CALL                             R7 4 1
       81 SETTABLEKS                       R7 R6 K21 ["Position"]
       83 SETTABLEKS                       R6 R5 K14 ["PlayVideoIcon"]
       85 DUPTABLE                         R6 K39 [{"Background", "BackgroundStyle"}]
       86 SETTABLEKS                       R3 R6 K37 ["Background"]
       88 DUPTABLE                         R7 K42 [{["Color"], ["Transparency"] = 0.5}]
       89 GETIMPORT                        R8 K45 [Color3.fromRGB]
       91 LOADN                            R9 0
       92 LOADN                            R10 0
       93 LOADN                            R11 0
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K40 ["Color"]
       97 SETTABLEKS                       R7 R6 K38 ["BackgroundStyle"]
       99 SETTABLEKS                       R6 R5 K15 ["PausedOverlay"]
      101 MOVE                             R6 R4
      102 MOVE                             R7 R2
      103 CALL                             R6 1 1
      104 SETTABLEKS                       R6 R5 K9 ["MediaPlayerControls"]
      106 RETURN                           R5 1

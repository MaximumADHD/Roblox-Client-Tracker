MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R4 R0 K2 ["UI"]
       13 GETTABLEKS                       R3 R4 K7 ["Components"]
       15 GETTABLEKS                       R2 R3 K8 ["UIFolderData"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R4 R1 K9 ["MediaPlayerControls"]
       22 GETTABLEKS                       R3 R4 K10 ["style"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K7 ["Components"]
       31 GETTABLEKS                       R4 R5 K11 ["Box"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R6 R0 K12 ["Util"]
       38 GETTABLEKS                       R5 R6 K13 ["deepCopy"]
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
       54 MOVE                             R11 R4
       55 MOVE                             R12 R2
       56 CALL                             R11 1 1
       57 GETTABLEKS                       R10 R11 K29 ["Controls"]
       59 GETTABLEKS                       R9 R10 K30 ["PlayButton"]
       61 GETTABLEKS                       R8 R9 K31 ["ForegroundStyle"]
       63 GETTABLEKS                       R7 R8 K19 ["Image"]
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
       88 DUPTABLE                         R7 K42 [{"Color", "Transparency"}]
       89 GETIMPORT                        R8 K45 [Color3.fromRGB]
       91 LOADN                            R9 0
       92 LOADN                            R10 0
       93 LOADN                            R11 0
       94 CALL                             R8 3 1
       95 SETTABLEKS                       R8 R7 K40 ["Color"]
       97 LOADK                            R8 K35 [0.5]
       98 SETTABLEKS                       R8 R7 K41 ["Transparency"]
      100 SETTABLEKS                       R7 R6 K38 ["BackgroundStyle"]
      102 SETTABLEKS                       R6 R5 K15 ["PausedOverlay"]
      104 MOVE                             R6 R4
      105 MOVE                             R7 R2
      106 CALL                             R6 1 1
      107 SETTABLEKS                       R6 R5 K9 ["MediaPlayerControls"]
      109 RETURN                           R5 1

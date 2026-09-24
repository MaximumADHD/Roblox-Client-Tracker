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
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["deepCopy"]
       32 DUPTABLE                         R5 K14 [{"PlaceholderImage", "MediaPlayerControls"}]
       33 DUPTABLE                         R6 K19 [{["ScaleType"], ["Image"] = "rbxasset://textures/DeveloperFramework/AudioPlayer/audioPlay_BG.png", ["Color"]}]
       34 GETIMPORT                        R7 K22 [Enum.ScaleType.Fit]
       36 SETTABLEKS                       R7 R6 K15 ["ScaleType"]
       38 GETIMPORT                        R7 K25 [Color3.fromRGB]
       40 LOADN                            R8 204
       41 LOADN                            R9 204
       42 LOADN                            R10 204
       43 CALL                             R7 3 1
       44 SETTABLEKS                       R7 R6 K18 ["Color"]
       46 SETTABLEKS                       R6 R5 K13 ["PlaceholderImage"]
       48 MOVE                             R6 R4
       49 MOVE                             R7 R2
       50 CALL                             R6 1 1
       51 SETTABLEKS                       R6 R5 K9 ["MediaPlayerControls"]
       53 RETURN                           R5 1

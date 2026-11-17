MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioCompressorEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleSheet"]
       18 DUPTABLE                         R3 K16 [{["ColorInputBox"], ["ColorKnob"], ["ColorKnobBackArc"], ["ColorTopButton"], ["DoubleArrow"] = "rbxasset://studio_svg_textures/Lua/AudioCompressorEditor/Light/Standard/DoubleArrowDefaultLight.png"}]
       19 GETIMPORT                        R4 K19 [Color3.fromRGB]
       21 LOADN                            R5 220
       22 LOADN                            R6 220
       23 LOADN                            R7 220
       24 CALL                             R4 3 1
       25 SETTABLEKS                       R4 R3 K10 ["ColorInputBox"]
       27 GETIMPORT                        R4 K19 [Color3.fromRGB]
       29 LOADN                            R5 200
       30 LOADN                            R6 200
       31 LOADN                            R7 200
       32 CALL                             R4 3 1
       33 SETTABLEKS                       R4 R3 K11 ["ColorKnob"]
       35 GETIMPORT                        R4 K19 [Color3.fromRGB]
       37 LOADN                            R5 160
       38 LOADN                            R6 160
       39 LOADN                            R7 160
       40 CALL                             R4 3 1
       41 SETTABLEKS                       R4 R3 K12 ["ColorKnobBackArc"]
       43 GETIMPORT                        R4 K19 [Color3.fromRGB]
       45 LOADN                            R5 160
       46 LOADN                            R6 160
       47 LOADN                            R7 160
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K13 ["ColorTopButton"]
       51 MOVE                             R4 R2
       52 LOADK                            R5 K20 ["AudioCompressorEditorLightTheme"]
       53 NEWTABLE                         R6 0 0
       55 MOVE                             R7 R3
       56 CALL                             R4 3 -1
       57 RETURN                           R4 -1

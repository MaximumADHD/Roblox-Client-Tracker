PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["Context"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K2 ["createElement"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K3 ["Provider"]
       15 DUPTABLE                         R5 K5 [{"value"}]
       16 SETTABLEKS                       R1 R5 K4 ["value"]
       18 DUPTABLE                         R6 K8 [{"Children", "FrameViewportAction"}]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K2 ["createElement"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R8 R9 K9 ["Fragment"]
       25 NEWTABLE                         R9 0 0
       27 GETTABLEKS                       R10 R0 K10 ["children"]
       29 CALL                             R7 3 1
       30 SETTABLEKS                       R7 R6 K6 ["Children"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R7 R8 K2 ["createElement"]
       35 GETUPVAL                         R8 3
       36 DUPTABLE                         R9 K17 [{"ActionId", "Text", "StatusTip", "Enabled", "DefaultShortcut", "OnTrigger"}]
       37 LOADK                            R10 K18 ["frame_viewport"]
       38 SETTABLEKS                       R10 R9 K11 ["ActionId"]
       40 LOADK                            R10 K19 ["Frame Viewport"]
       41 SETTABLEKS                       R10 R9 K12 ["Text"]
       43 LOADK                            R10 K20 ["Frames the viewport to the selected nodes"]
       44 SETTABLEKS                       R10 R9 K13 ["StatusTip"]
       46 GETTABLEKS                       R10 R0 K21 ["focused"]
       48 SETTABLEKS                       R10 R9 K14 ["Enabled"]
       50 LOADK                            R10 K22 ["F"]
       51 SETTABLEKS                       R10 R9 K15 ["DefaultShortcut"]
       53 GETTABLEKS                       R10 R2 K23 ["frameSelection"]
       55 SETTABLEKS                       R10 R9 K16 ["OnTrigger"]
       57 CALL                             R7 2 1
       58 SETTABLEKS                       R7 R6 K7 ["FrameViewportAction"]
       60 CALL                             R3 3 -1
       61 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["PluginAction"]
       23 GETTABLEKS                       R4 R1 K10 ["ViewportRectContext"]
       25 NEWTABLE                         R5 0 0
       27 GETTABLEKS                       R6 R2 K11 ["createContext"]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 1
       31 DUPCLOSURE                       R7 K12 [PROTO_0]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R3
       36 DUPTABLE                         R8 K15 [{"Context", "Provider"}]
       37 SETTABLEKS                       R6 R8 K13 ["Context"]
       39 SETTABLEKS                       R7 R8 K14 ["Provider"]
       41 RETURN                           R8 1

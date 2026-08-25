PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["overlayFocused"]
        9 DUPTABLE                         R2 K4 [{"UIPadding"}]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K5 ["createElement"]
       13 LOADK                            R4 K3 ["UIPadding"]
       14 DUPTABLE                         R5 K8 [{"PaddingLeft", "PaddingRight"}]
       15 GETIMPORT                        R6 K11 [UDim.new]
       17 LOADN                            R7 0
       18 LOADN                            R8 30
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R5 K6 ["PaddingLeft"]
       22 GETIMPORT                        R6 K11 [UDim.new]
       24 LOADN                            R7 0
       25 LOADN                            R8 3
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K7 ["PaddingRight"]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K3 ["UIPadding"]
       32 GETTABLEKS                       R3 R0 K12 ["children"]
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETTABLEKS                       R3 R0 K12 ["children"]
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 SETTABLE                         R7 R2 R6
       41 FORGLOOP                         R3 2 ; [-2]
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K5 ["createElement"]
       46 LOADK                            R4 K13 ["ImageButton"]
       47 NEWTABLE                         R5 4 0
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K14 ["Tag"]
       52 LOADK                            R7 K15 ["VisualizationModes-Entry VisualizationModes-Active"]
       53 SETTABLE                         R7 R5 R6
       54 GETTABLEKS                       R6 R0 K16 ["LayoutOrder"]
       56 SETTABLEKS                       R6 R5 K16 ["LayoutOrder"]
       58 GETTABLEKS                       R7 R0 K17 ["OnActivated"]
       60 JUMPIFNOT                        R7 ; [+2]
       61 LOADNIL                          R6
       62 JUMP                             ; [+1]
       63 LOADB                            R6 0
       64 SETTABLEKS                       R6 R5 K18 ["AutoButtonColor"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K19 ["Event"]
       69 GETTABLEKS                       R6 R6 K20 ["Activated"]
       71 GETTABLEKS                       R7 R0 K17 ["OnActivated"]
       73 SETTABLE                         R7 R5 R6
       74 DUPTABLE                         R6 K23 [{"VisualizationModesEntryBacking", "Contents"}]
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K5 ["createElement"]
       78 LOADK                            R8 K24 ["Frame"]
       79 NEWTABLE                         R9 1 0
       81 GETUPVAL                         R10 0
       82 GETTABLEKS                       R10 R10 K14 ["Tag"]
       84 JUMPIFNOT                        R1 ; [+2]
       85 LOADK                            R11 K25 ["VisualizationModesEntryBacking-Disabled"]
       86 JUMP                             ; [+1]
       87 LOADK                            R11 K26 ["VisualizationModesEntryBacking-Enabled"]
       88 SETTABLE                         R11 R9 R10
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K21 ["VisualizationModesEntryBacking"]
       92 GETUPVAL                         R7 0
       93 GETTABLEKS                       R7 R7 K5 ["createElement"]
       95 GETUPVAL                         R8 2
       96 NEWTABLE                         R9 4 0
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K14 ["Tag"]
      101 LOADK                            R11 K27 ["X-RowM X-Left X-Middle"]
      102 SETTABLE                         R11 R9 R10
      103 GETIMPORT                        R10 K29 [UDim2.new]
      105 LOADN                            R11 1
      106 LOADN                            R12 0
      107 LOADN                            R13 0
      108 LOADN                            R14 26
      109 CALL                             R10 4 1
      110 SETTABLEKS                       R10 R9 K30 ["Size"]
      112 GETIMPORT                        R10 K32 [Vector2.new]
      114 LOADK                            R11 K33 [0.5]
      115 LOADK                            R12 K33 [0.5]
      116 CALL                             R10 2 1
      117 SETTABLEKS                       R10 R9 K34 ["AnchorPoint"]
      119 GETIMPORT                        R10 K36 [UDim2.fromScale]
      121 LOADK                            R11 K33 [0.5]
      122 LOADK                            R12 K33 [0.5]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K37 ["Position"]
      126 MOVE                             R10 R2
      127 CALL                             R7 3 1
      128 SETTABLEKS                       R7 R6 K22 ["Contents"]
      130 CALL                             R3 3 -1
      131 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["OverlayMenuFocusedContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K12 ["UI"]
       32 GETTABLEKS                       R5 R4 K13 ["Pane"]
       34 DUPCLOSURE                       R6 K14 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1

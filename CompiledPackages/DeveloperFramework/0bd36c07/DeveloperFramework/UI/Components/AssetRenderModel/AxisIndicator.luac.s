PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        2 GETTABLEKS                       R4 R0 K0 ["CFrame"]
        4 GETTABLEKS                       R3 R4 K1 ["Position"]
        6 SUB                              R1 R2 R3
        7 GETUPVAL                         R3 0
        8 NAMECALL                         R1 R1 K2 ["ToWorldSpace"]
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Part"]
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K7 [Enum.PartType.Cylinder]
        6 SETTABLEKS                       R4 R3 K8 ["Shape"]
        8 GETIMPORT                        R4 K11 [Enum.SurfaceType.Smooth]
       10 SETTABLEKS                       R4 R3 K12 ["TopSurface"]
       12 GETIMPORT                        R4 K11 [Enum.SurfaceType.Smooth]
       14 SETTABLEKS                       R4 R3 K13 ["BottomSurface"]
       16 SETTABLEKS                       R0 R3 K14 ["Parent"]
       18 LOADK                            R4 K15 [{2, 0.1, 0.1}]
       19 SETTABLEKS                       R4 R3 K16 ["Size"]
       21 SETTABLEKS                       R1 R3 K17 ["Color"]
       23 SETTABLEKS                       R2 R3 K18 ["Name"]
       25 RETURN                           R3 1

PROTO_2:
        0 DUPCLOSURE                       R0 K0 [PROTO_1]
        1 GETIMPORT                        R1 K3 [Instance.new]
        3 LOADK                            R2 K4 ["Model"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETIMPORT                        R4 K3 [Instance.new]
        8 LOADK                            R5 K5 ["Part"]
        9 CALL                             R4 1 1
       10 GETIMPORT                        R5 K9 [Enum.PartType.Cylinder]
       12 SETTABLEKS                       R5 R4 K10 ["Shape"]
       14 GETIMPORT                        R5 K13 [Enum.SurfaceType.Smooth]
       16 SETTABLEKS                       R5 R4 K14 ["TopSurface"]
       18 GETIMPORT                        R5 K13 [Enum.SurfaceType.Smooth]
       20 SETTABLEKS                       R5 R4 K15 ["BottomSurface"]
       22 SETTABLEKS                       R1 R4 K16 ["Parent"]
       24 LOADK                            R5 K17 [{2, 0.1, 0.1}]
       25 SETTABLEKS                       R5 R4 K18 ["Size"]
       27 SETTABLEKS                       R3 R4 K19 ["Color"]
       29 LOADK                            R5 K20 ["XAxis"]
       30 SETTABLEKS                       R5 R4 K21 ["Name"]
       32 MOVE                             R2 R4
       33 GETIMPORT                        R3 K23 [CFrame.new]
       35 LOADN                            R4 1
       36 LOADN                            R5 0
       37 LOADN                            R6 0
       38 CALL                             R3 3 1
       39 SETTABLEKS                       R3 R2 K22 ["CFrame"]
       41 GETUPVAL                         R4 1
       42 GETIMPORT                        R5 K3 [Instance.new]
       44 LOADK                            R6 K5 ["Part"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K9 [Enum.PartType.Cylinder]
       48 SETTABLEKS                       R6 R5 K10 ["Shape"]
       50 GETIMPORT                        R6 K13 [Enum.SurfaceType.Smooth]
       52 SETTABLEKS                       R6 R5 K14 ["TopSurface"]
       54 GETIMPORT                        R6 K13 [Enum.SurfaceType.Smooth]
       56 SETTABLEKS                       R6 R5 K15 ["BottomSurface"]
       58 SETTABLEKS                       R1 R5 K16 ["Parent"]
       60 LOADK                            R6 K17 [{2, 0.1, 0.1}]
       61 SETTABLEKS                       R6 R5 K18 ["Size"]
       63 SETTABLEKS                       R4 R5 K19 ["Color"]
       65 LOADK                            R6 K24 ["YAxis"]
       66 SETTABLEKS                       R6 R5 K21 ["Name"]
       68 MOVE                             R3 R5
       69 GETIMPORT                        R5 K23 [CFrame.new]
       71 LOADN                            R6 0
       72 LOADN                            R7 1
       73 LOADN                            R8 0
       74 CALL                             R5 3 1
       75 GETIMPORT                        R6 K26 [CFrame.Angles]
       77 LOADN                            R7 0
       78 LOADN                            R8 0
       79 LOADK                            R9 K27 [1.5707963267949]
       80 CALL                             R6 3 1
       81 MUL                              R4 R5 R6
       82 SETTABLEKS                       R4 R3 K22 ["CFrame"]
       84 GETUPVAL                         R5 2
       85 GETIMPORT                        R6 K3 [Instance.new]
       87 LOADK                            R7 K5 ["Part"]
       88 CALL                             R6 1 1
       89 GETIMPORT                        R7 K9 [Enum.PartType.Cylinder]
       91 SETTABLEKS                       R7 R6 K10 ["Shape"]
       93 GETIMPORT                        R7 K13 [Enum.SurfaceType.Smooth]
       95 SETTABLEKS                       R7 R6 K14 ["TopSurface"]
       97 GETIMPORT                        R7 K13 [Enum.SurfaceType.Smooth]
       99 SETTABLEKS                       R7 R6 K15 ["BottomSurface"]
      101 SETTABLEKS                       R1 R6 K16 ["Parent"]
      103 LOADK                            R7 K17 [{2, 0.1, 0.1}]
      104 SETTABLEKS                       R7 R6 K18 ["Size"]
      106 SETTABLEKS                       R5 R6 K19 ["Color"]
      108 LOADK                            R7 K28 ["ZAxis"]
      109 SETTABLEKS                       R7 R6 K21 ["Name"]
      111 MOVE                             R4 R6
      112 GETIMPORT                        R6 K23 [CFrame.new]
      114 LOADN                            R7 0
      115 LOADN                            R8 0
      116 LOADN                            R9 1
      117 CALL                             R6 3 1
      118 GETIMPORT                        R7 K26 [CFrame.Angles]
      120 LOADN                            R8 0
      121 LOADK                            R9 K27 [1.5707963267949]
      122 LOADN                            R10 0
      123 CALL                             R7 3 1
      124 MUL                              R5 R6 R7
      125 SETTABLEKS                       R5 R4 K22 ["CFrame"]
      127 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R4 R2 K0 ["CFrame"]
        4 GETTABLEKS                       R6 R2 K0 ["CFrame"]
        6 GETTABLEKS                       R5 R6 K1 ["Position"]
        8 SUB                              R3 R4 R5
        9 GETUPVAL                         R5 2
       10 NAMECALL                         R3 R3 K2 ["ToWorldSpace"]
       12 CALL                             R3 2 1
       13 MOVE                             R1 R3
       14 SETTABLEKS                       R1 R0 K0 ["CFrame"]
       16 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K2 ["current"]
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K2 ["current"]
       15 NAMECALL                         R0 R0 K1 ["Destroy"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["ViewportFrame was not mounted by useEffect"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K0 ["current"]
       16 LOADK                            R1 K4 ["AxisCamera"]
       17 SETTABLEKS                       R1 R0 K5 ["Name"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R4 R2 K6 ["CFrame"]
       22 GETTABLEKS                       R6 R2 K6 ["CFrame"]
       24 GETTABLEKS                       R5 R6 K7 ["Position"]
       26 SUB                              R3 R4 R5
       27 GETUPVAL                         R5 3
       28 NAMECALL                         R3 R3 K8 ["ToWorldSpace"]
       30 CALL                             R3 2 1
       31 MOVE                             R1 R3
       32 SETTABLEKS                       R1 R0 K6 ["CFrame"]
       34 GETUPVAL                         R1 4
       35 CALL                             R1 0 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K0 ["current"]
       39 JUMPIFNOT                        R2 ; [+5]
       40 NAMECALL                         R3 R2 K9 ["ClearAllChildren"]
       42 CALL                             R3 1 0
       43 SETTABLEKS                       R2 R1 K10 ["Parent"]
       45 GETUPVAL                         R3 2
       46 LOADK                            R5 K6 ["CFrame"]
       47 NAMECALL                         R3 R3 K11 ["GetPropertyChangedSignal"]
       49 CALL                             R3 2 1
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 NAMECALL                         R3 R3 K12 ["Connect"]
       56 CALL                             R3 2 1
       57 NEWCLOSURE                       R4 P1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U1
       61 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AssetRenderModel"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 3 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R3 R0 K2 ["AnchorPoint"]
        9 GETTABLEKS                       R5 R1 K3 ["AxisIndicator"]
       11 GETTABLEKS                       R4 R5 K2 ["AnchorPoint"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R4 R0 K4 ["Position"]
       17 GETTABLEKS                       R6 R1 K3 ["AxisIndicator"]
       19 GETTABLEKS                       R5 R6 K4 ["Position"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R5 R0 K5 ["Size"]
       25 GETTABLEKS                       R7 R1 K3 ["AxisIndicator"]
       27 GETTABLEKS                       R6 R7 K5 ["Size"]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R6 R0 K6 ["ZIndex"]
       33 GETTABLEKS                       R8 R1 K3 ["AxisIndicator"]
       35 GETTABLEKS                       R7 R8 K6 ["ZIndex"]
       37 CALL                             R5 2 1
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K7 ["useRef"]
       41 LOADNIL                          R7
       42 CALL                             R6 1 1
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K7 ["useRef"]
       46 GETIMPORT                        R8 K10 [Instance.new]
       48 LOADK                            R9 K11 ["Camera"]
       49 CALL                             R8 1 -1
       50 CALL                             R7 -1 1
       51 GETTABLEKS                       R8 R0 K12 ["ReferenceCamera"]
       53 GETUPVAL                         R10 2
       54 GETTABLEKS                       R9 R10 K13 ["useEffect"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R8
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 NEWTABLE                         R11 0 1
       64 MOVE                             R12 R8
       65 SETLIST                          R11 R12 1 [1]
       67 CALL                             R9 2 0
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R9 R10 K14 ["createElement"]
       71 LOADK                            R10 K15 ["ViewportFrame"]
       72 DUPTABLE                         R11 K22 [{"AnchorPoint", "BackgroundColor3", "BorderSizePixel", "BackgroundTransparency", "CurrentCamera", "LayoutOrder", "Position", "Size", "ZIndex", "ref"}]
       73 SETTABLEKS                       R2 R11 K2 ["AnchorPoint"]
       75 GETTABLEKS                       R12 R0 K23 ["BackgroundColor"]
       77 SETTABLEKS                       R12 R11 K16 ["BackgroundColor3"]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K17 ["BorderSizePixel"]
       82 LOADN                            R12 1
       83 SETTABLEKS                       R12 R11 K18 ["BackgroundTransparency"]
       85 GETTABLEKS                       R12 R7 K24 ["current"]
       87 SETTABLEKS                       R12 R11 K19 ["CurrentCamera"]
       89 GETTABLEKS                       R12 R0 K20 ["LayoutOrder"]
       91 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
       93 SETTABLEKS                       R3 R11 K4 ["Position"]
       95 SETTABLEKS                       R4 R11 K5 ["Size"]
       97 SETTABLEKS                       R5 R11 K6 ["ZIndex"]
       99 SETTABLEKS                       R6 R11 K21 ["ref"]
      101 CALL                             R9 2 -1
      102 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["ContextServices"]
       22 GETTABLEKS                       R3 R4 K10 ["Stylizer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R5 R0 K7 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["prioritize"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K14 [CFrame.new]
       34 LOADN                            R5 0
       35 LOADN                            R6 0
       36 LOADN                            R7 4
       37 CALL                             R4 3 1
       38 DUPCLOSURE                       R5 K15 [PROTO_0]
       39 CAPTURE                          VAL R4
       40 GETIMPORT                        R6 K17 [Color3.new]
       42 LOADN                            R7 1
       43 LOADN                            R8 0
       44 LOADN                            R9 0
       45 CALL                             R6 3 1
       46 GETIMPORT                        R7 K17 [Color3.new]
       48 LOADN                            R8 0
       49 LOADN                            R9 1
       50 LOADN                            R10 0
       51 CALL                             R7 3 1
       52 GETIMPORT                        R8 K17 [Color3.new]
       54 LOADN                            R9 0
       55 LOADN                            R10 0
       56 LOADN                            R11 1
       57 CALL                             R8 3 1
       58 DUPCLOSURE                       R9 K18 [PROTO_2]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 DUPCLOSURE                       R10 K19 [PROTO_6]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R9
       68 RETURN                           R10 1

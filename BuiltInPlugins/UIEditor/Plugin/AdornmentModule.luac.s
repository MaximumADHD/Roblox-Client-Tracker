PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ImageLabel"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["BorderSizePixel"]
        7 LOADN                            R1 1
        8 SETTABLEKS                       R1 R0 K5 ["BackgroundTransparency"]
       10 LOADK                            R1 K6 ["rbxasset://textures/blockUpperLeft.png"]
       11 SETTABLEKS                       R1 R0 K7 ["Image"]
       13 GETIMPORT                        R1 K11 [Enum.ScaleType.Tile]
       15 SETTABLEKS                       R1 R0 K9 ["ScaleType"]
       17 GETIMPORT                        R1 K13 [UDim2.new]
       19 LOADN                            R2 0
       20 LOADN                            R3 16
       21 LOADN                            R4 0
       22 LOADN                            R5 16
       23 CALL                             R1 4 1
       24 SETTABLEKS                       R1 R0 K14 ["TileSize"]
       26 GETIMPORT                        R1 K16 [Vector2.new]
       28 LOADK                            R2 K17 [0.5]
       29 LOADK                            R3 K17 [0.5]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K18 ["AnchorPoint"]
       33 GETIMPORT                        R1 K20 [Color3.new]
       35 LOADK                            R2 K21 [0.8]
       36 LOADK                            R3 K21 [0.8]
       37 LOADK                            R4 K21 [0.8]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K22 ["ImageColor3"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K23 ["Adornments"]
       43 NAMECALL                         R1 R1 K24 ["findOrCreateScreenGui"]
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K25 ["Parent"]
       48 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["BorderSizePixel"]
        7 GETIMPORT                        R1 K6 [Color3.new]
        9 LOADN                            R2 0
       10 LOADN                            R3 0
       11 LOADN                            R4 0
       12 CALL                             R1 3 1
       13 SETTABLEKS                       R1 R0 K7 ["BackgroundColor3"]
       15 GETIMPORT                        R1 K9 [Vector2.new]
       17 LOADK                            R2 K10 [0.5]
       18 LOADK                            R3 K10 [0.5]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K11 ["AnchorPoint"]
       22 GETUPVAL                         R1 0
       23 LOADK                            R3 K12 ["Adornments"]
       24 NAMECALL                         R1 R1 K13 ["findOrCreateScreenGui"]
       26 CALL                             R1 2 1
       27 SETTABLEKS                       R1 R0 K14 ["Parent"]
       29 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R2 0
        3 JUMPIFLT                         R2 R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 0
        6 SETTABLEKS                       R0 R1 K4 ["Name"]
        8 GETUPVAL                         R1 0
        9 GETIMPORT                        R2 K6 [Vector2.new]
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K7 ["AnchorPoint"]
       16 GETUPVAL                         R1 0
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R1 K8 ["BackgroundTransparency"]
       20 GETUPVAL                         R1 0
       21 GETIMPORT                        R2 K10 [Color3.new]
       23 LOADN                            R3 0
       24 LOADN                            R4 0
       25 LOADN                            R5 255
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K11 ["BackgroundColor3"]
       29 GETUPVAL                         R1 0
       30 LOADN                            R2 0
       31 SETTABLEKS                       R2 R1 K12 ["BorderSizePixel"]
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FIRST"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R1 R4 K1 ["LAST"]
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 GETIMPORT                        R4 K4 [Instance.new]
       10 LOADK                            R5 K5 ["Frame"]
       11 CALL                             R4 1 1
       12 MOVE                             R6 R0
       13 LOADK                            R7 K6 ["Handle_"]
       14 GETUPVAL                         R8 0
       15 MOVE                             R10 R3
       16 NAMECALL                         R8 R8 K7 ["toShortName"]
       18 CALL                             R8 2 1
       19 CONCAT                           R5 R6 R8
       20 SETTABLEKS                       R5 R4 K8 ["Name"]
       22 GETUPVAL                         R6 1
       23 GETTABLE                         R5 R6 R3
       24 SETTABLEKS                       R5 R4 K9 ["AnchorPoint"]
       26 GETIMPORT                        R5 K11 [UDim2.new]
       28 LOADN                            R6 0
       29 LOADN                            R7 8
       30 LOADN                            R8 0
       31 LOADN                            R9 8
       32 CALL                             R5 4 1
       33 SETTABLEKS                       R5 R4 K12 ["Size"]
       35 GETUPVAL                         R6 2
       36 GETTABLE                         R5 R6 R3
       37 SETTABLEKS                       R5 R4 K13 ["Position"]
       39 GETUPVAL                         R5 3
       40 SETTABLEKS                       R5 R4 K14 ["BackgroundColor3"]
       42 GETUPVAL                         R5 4
       43 SETTABLEKS                       R5 R4 K15 ["BorderColor3"]
       45 LOADN                            R5 3
       46 SETTABLEKS                       R5 R4 K16 ["ZIndex"]
       48 GETIMPORT                        R5 K4 [Instance.new]
       50 LOADK                            R6 K17 ["ImageLabel"]
       51 CALL                             R5 1 1
       52 LOADK                            R6 K18 ["rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"]
       53 SETTABLEKS                       R6 R5 K19 ["Image"]
       55 LOADK                            R7 K20 ["ResizeHandleDropShadow_"]
       56 GETUPVAL                         R8 0
       57 MOVE                             R10 R3
       58 NAMECALL                         R8 R8 K7 ["toShortName"]
       60 CALL                             R8 2 1
       61 CONCAT                           R6 R7 R8
       62 SETTABLEKS                       R6 R5 K8 ["Name"]
       64 GETIMPORT                        R6 K11 [UDim2.new]
       66 LOADN                            R7 0
       67 LOADN                            R8 16
       68 LOADN                            R9 0
       69 LOADN                            R10 16
       70 CALL                             R6 4 1
       71 SETTABLEKS                       R6 R5 K12 ["Size"]
       73 GETIMPORT                        R6 K11 [UDim2.new]
       75 LOADN                            R7 0
       76 LOADN                            R8 252
       77 LOADN                            R9 0
       78 LOADN                            R10 253
       79 CALL                             R6 4 1
       80 SETTABLEKS                       R6 R5 K13 ["Position"]
       82 LOADN                            R6 1
       83 SETTABLEKS                       R6 R5 K21 ["BackgroundTransparency"]
       85 LOADN                            R6 0
       86 SETTABLEKS                       R6 R5 K22 ["BorderSizePixel"]
       88 GETIMPORT                        R6 K25 [Color3.fromRGB]
       90 LOADN                            R7 0
       91 LOADN                            R8 0
       92 LOADN                            R9 0
       93 CALL                             R6 3 1
       94 SETTABLEKS                       R6 R5 K26 ["ImageColor3"]
       96 LOADK                            R6 K27 [0.6]
       97 SETTABLEKS                       R6 R5 K28 ["ImageTransparency"]
       99 GETIMPORT                        R6 K32 [Enum.ScaleType.Slice]
      101 SETTABLEKS                       R6 R5 K30 ["ScaleType"]
      103 GETIMPORT                        R6 K34 [Rect.new]
      105 LOADN                            R7 4
      106 LOADN                            R8 4
      107 LOADN                            R9 12
      108 LOADN                            R10 12
      109 CALL                             R6 4 1
      110 SETTABLEKS                       R6 R5 K35 ["SliceCenter"]
      112 LOADN                            R6 2
      113 SETTABLEKS                       R6 R5 K16 ["ZIndex"]
      115 SETTABLEKS                       R4 R5 K36 ["Parent"]
      117 GETUPVAL                         R6 5
      118 SETTABLEKS                       R6 R4 K36 ["Parent"]
      120 GETUPVAL                         R6 6
      121 SETTABLE                         R4 R6 R3
      122 FORNLOOP                         R1
      123 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 1
        1 LOADN                            R0 4
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETIMPORT                        R3 K2 [Instance.new]
        6 LOADK                            R4 K3 ["Frame"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R4 R5 R2
       10 SETTABLEKS                       R4 R3 K4 ["AnchorPoint"]
       12 GETUPVAL                         R4 1
       13 SETTABLEKS                       R4 R3 K5 ["BackgroundColor3"]
       15 LOADN                            R4 0
       16 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       18 GETUPVAL                         R5 2
       19 GETTABLE                         R4 R5 R2
       20 SETTABLEKS                       R4 R3 K7 ["Position"]
       22 GETUPVAL                         R5 3
       23 GETTABLE                         R4 R5 R2
       24 SETTABLEKS                       R4 R3 K8 ["Size"]
       26 GETUPVAL                         R4 4
       27 SETTABLE                         R3 R4 R2
       28 GETUPVAL                         R5 4
       29 GETTABLE                         R4 R5 R2
       30 GETUPVAL                         R5 5
       31 SETTABLEKS                       R5 R4 K9 ["Parent"]
       33 FORNLOOP                         R0
       34 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETIMPORT                        R3 K2 [Vector2.new]
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K3 ["AnchorPoint"]
        9 GETIMPORT                        R3 K5 [UDim2.new]
       11 LOADN                            R4 0
       12 GETTABLEN                        R6 R1 1
       13 GETTABLEKS                       R5 R6 K6 ["X"]
       15 LOADN                            R6 0
       16 GETTABLEN                        R8 R1 1
       17 GETTABLEKS                       R7 R8 K7 ["Y"]
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K8 ["Position"]
       22 GETIMPORT                        R3 K5 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R6 1
       26 GETUPVAL                         R7 1
       27 GETTABLEN                        R10 R1 1
       28 GETTABLEKS                       R9 R10 K6 ["X"]
       30 GETTABLEN                        R11 R1 2
       31 GETTABLEKS                       R10 R11 K6 ["X"]
       33 NAMECALL                         R7 R7 K9 ["distance"]
       35 CALL                             R7 3 -1
       36 FASTCALL                         MATH_MAX ; [+2]
       37 GETIMPORT                        R5 K12 [math.max]
       39 CALL                             R5 -1 1
       40 LOADN                            R6 0
       41 LOADN                            R8 1
       42 GETUPVAL                         R9 1
       43 GETTABLEN                        R12 R1 1
       44 GETTABLEKS                       R11 R12 K7 ["Y"]
       46 GETTABLEN                        R13 R1 2
       47 GETTABLEKS                       R12 R13 K7 ["Y"]
       49 NAMECALL                         R9 R9 K9 ["distance"]
       51 CALL                             R9 3 -1
       52 FASTCALL                         MATH_MAX ; [+2]
       53 GETIMPORT                        R7 K12 [math.max]
       55 CALL                             R7 -1 1
       56 CALL                             R3 4 1
       57 SETTABLEKS                       R3 R2 K13 ["Size"]
       59 GETTABLEN                        R3 R1 3
       60 SETTABLEKS                       R3 R2 K14 ["ImageColor3"]
       62 GETUPVAL                         R4 2
       63 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       65 MOVE                             R5 R2
       66 GETIMPORT                        R3 K17 [table.insert]
       68 CALL                             R3 2 0
       69 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 NAMECALL                         R4 R4 K0 ["Destroy"]
        9 CALL                             R4 1 0
       10 FORNLOOP                         R1
       11 NEWTABLE                         R1 0 0
       13 SETUPVAL                         R1 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 SETUPVAL                         R3 0
        5 GETUPVAL                         R3 0
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K0 ["Visible"]
        9 GETUPVAL                         R3 0
       10 GETIMPORT                        R4 K3 [UDim2.new]
       12 LOADN                            R5 0
       13 LOADN                            R6 1
       14 LOADN                            R7 0
       15 MOVE                             R8 R2
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K4 ["Size"]
       19 GETUPVAL                         R3 0
       20 GETIMPORT                        R4 K3 [UDim2.new]
       22 LOADN                            R5 0
       23 GETTABLEKS                       R6 R1 K5 ["X"]
       25 LOADN                            R7 0
       26 GETTABLEKS                       R8 R1 K6 ["Y"]
       28 CALL                             R4 4 1
       29 SETTABLEKS                       R4 R3 K7 ["Position"]
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+3]
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 SETUPVAL                         R3 0
        5 GETUPVAL                         R3 0
        6 LOADB                            R4 1
        7 SETTABLEKS                       R4 R3 K0 ["Visible"]
        9 GETUPVAL                         R3 0
       10 GETIMPORT                        R4 K3 [UDim2.new]
       12 LOADN                            R5 0
       13 MOVE                             R6 R2
       14 LOADN                            R7 0
       15 LOADN                            R8 1
       16 CALL                             R4 4 1
       17 SETTABLEKS                       R4 R3 K4 ["Size"]
       19 GETUPVAL                         R3 0
       20 GETIMPORT                        R4 K3 [UDim2.new]
       22 LOADN                            R5 0
       23 GETTABLEKS                       R6 R1 K5 ["X"]
       25 LOADN                            R7 0
       26 GETTABLEKS                       R8 R1 K6 ["Y"]
       28 CALL                             R4 4 1
       29 SETTABLEKS                       R4 R3 K7 ["Position"]
       31 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["Visible"]
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R1 K0 ["Visible"]
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+44]
        2 NAMECALL                         R3 R1 K0 ["Clone"]
        4 CALL                             R3 1 1
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R3 0
        7 GETIMPORT                        R4 K3 [Vector2.new]
        9 LOADN                            R5 0
       10 LOADN                            R6 0
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K4 ["AnchorPoint"]
       14 GETUPVAL                         R3 0
       15 LOADN                            R4 3
       16 SETTABLEKS                       R4 R3 K5 ["ZIndex"]
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 SETUPVAL                         R3 1
       21 GETUPVAL                         R3 1
       22 GETIMPORT                        R4 K7 [Color3.new]
       24 LOADN                            R5 0
       25 LOADN                            R6 0
       26 LOADN                            R7 0
       27 CALL                             R4 3 1
       28 SETTABLEKS                       R4 R3 K8 ["BackgroundColor3"]
       30 GETUPVAL                         R3 1
       31 LOADK                            R4 K9 [0.8]
       32 SETTABLEKS                       R4 R3 K10 ["BackgroundTransparency"]
       34 GETUPVAL                         R3 1
       35 GETIMPORT                        R4 K3 [Vector2.new]
       37 LOADN                            R5 0
       38 LOADN                            R6 0
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K4 ["AnchorPoint"]
       42 GETUPVAL                         R3 1
       43 LOADN                            R4 2
       44 SETTABLEKS                       R4 R3 K5 ["ZIndex"]
       46 GETUPVAL                         R3 0
       47 GETUPVAL                         R4 3
       48 LOADK                            R6 K11 ["Adornments"]
       49 NAMECALL                         R4 R4 K12 ["findOrCreateScreenGui"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K13 ["Parent"]
       54 GETUPVAL                         R3 0
       55 GETIMPORT                        R4 K15 [UDim2.new]
       57 LOADN                            R5 0
       58 GETTABLEKS                       R7 R1 K16 ["AbsolutePosition"]
       60 GETTABLEKS                       R6 R7 K17 ["X"]
       62 LOADN                            R7 0
       63 GETTABLEKS                       R9 R1 K16 ["AbsolutePosition"]
       65 GETTABLEKS                       R8 R9 K18 ["Y"]
       67 CALL                             R4 4 1
       68 SETTABLEKS                       R4 R3 K19 ["Position"]
       70 GETUPVAL                         R3 0
       71 GETIMPORT                        R4 K15 [UDim2.new]
       73 LOADN                            R5 0
       74 GETTABLEKS                       R7 R1 K20 ["AbsoluteSize"]
       76 GETTABLEKS                       R6 R7 K17 ["X"]
       78 LOADN                            R7 0
       79 GETTABLEKS                       R9 R1 K20 ["AbsoluteSize"]
       81 GETTABLEKS                       R8 R9 K18 ["Y"]
       83 CALL                             R4 4 1
       84 SETTABLEKS                       R4 R3 K21 ["Size"]
       86 GETUPVAL                         R3 1
       87 GETIMPORT                        R4 K15 [UDim2.new]
       89 LOADN                            R5 0
       90 GETTABLEKS                       R7 R2 K16 ["AbsolutePosition"]
       92 GETTABLEKS                       R6 R7 K17 ["X"]
       94 LOADN                            R7 0
       95 GETTABLEKS                       R9 R2 K16 ["AbsolutePosition"]
       97 GETTABLEKS                       R8 R9 K18 ["Y"]
       99 CALL                             R4 4 1
      100 SETTABLEKS                       R4 R3 K19 ["Position"]
      102 GETUPVAL                         R3 1
      103 GETIMPORT                        R4 K15 [UDim2.new]
      105 LOADN                            R5 0
      106 GETTABLEKS                       R7 R2 K20 ["AbsoluteSize"]
      108 GETTABLEKS                       R6 R7 K17 ["X"]
      110 LOADN                            R7 0
      111 GETTABLEKS                       R9 R2 K20 ["AbsoluteSize"]
      113 GETTABLEKS                       R8 R9 K18 ["Y"]
      115 CALL                             R4 4 1
      116 SETTABLEKS                       R4 R3 K21 ["Size"]
      118 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+12]
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["Destroy"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K0 ["Destroy"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETUPVAL                         R1 0
       12 LOADNIL                          R1
       13 SETUPVAL                         R1 1
       14 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 NAMECALL                         R1 R1 K0 ["hasFilteredSelection"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["Enabled"]
       10 JUMPIF                           R1 ; [+4]
       11 GETUPVAL                         R1 0
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K1 ["Enabled"]
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Enabled"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 0
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K0 ["Enabled"]
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getFilteredSelection"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+4]
        7 LENGTH                           R2 R1
        8 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R4 3
       13 MOVE                             R6 R1
       14 NAMECALL                         R4 R4 K2 ["getExtentsFromGuis"]
       16 CALL                             R4 2 -1
       17 NAMECALL                         R2 R2 K3 ["updateSelectionAdorns"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 LOADN                            R3 0
        3 JUMPIFLT                         R3 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 JUMPIFNOT                        R1 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 LOADK                            R3 K0 ["m_handles"]
       11 NAMECALL                         R1 R1 K1 ["findOrCreateFolder"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 2
       15 JUMPIF                           R2 ; [+19]
       16 GETIMPORT                        R2 K4 [Instance.new]
       18 LOADK                            R3 K5 ["ScreenGui"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 SETUPVAL                         R2 2
       22 GETUPVAL                         R2 2
       23 LOADB                            R3 0
       24 SETTABLEKS                       R3 R2 K6 ["Enabled"]
       26 GETUPVAL                         R2 2
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K7 ["ClipToDeviceSafeArea"]
       30 GETUPVAL                         R2 2
       31 GETIMPORT                        R3 K11 [Enum.SafeAreaCompatibility.None]
       33 SETTABLEKS                       R3 R2 K9 ["SafeAreaCompatibility"]
       35 GETIMPORT                        R2 K4 [Instance.new]
       37 LOADK                            R3 K12 ["Frame"]
       38 CALL                             R2 1 1
       39 SETUPVAL                         R2 3
       40 GETUPVAL                         R2 3
       41 LOADK                            R3 K13 ["UIEditorSelectionHandleParent"]
       42 SETTABLEKS                       R3 R2 K14 ["Name"]
       44 GETUPVAL                         R2 3
       45 GETIMPORT                        R3 K16 [Vector2.new]
       47 LOADN                            R4 0
       48 LOADN                            R5 0
       49 CALL                             R3 2 1
       50 SETTABLEKS                       R3 R2 K17 ["AnchorPoint"]
       52 GETUPVAL                         R2 3
       53 LOADN                            R3 1
       54 SETTABLEKS                       R3 R2 K18 ["BackgroundTransparency"]
       56 GETUPVAL                         R2 3
       57 GETIMPORT                        R3 K20 [Color3.new]
       59 LOADN                            R4 0
       60 LOADN                            R5 0
       61 LOADN                            R6 255
       62 CALL                             R3 3 1
       63 SETTABLEKS                       R3 R2 K21 ["BackgroundColor3"]
       65 GETUPVAL                         R2 3
       66 LOADN                            R3 0
       67 SETTABLEKS                       R3 R2 K22 ["BorderSizePixel"]
       69 GETUPVAL                         R2 3
       70 GETUPVAL                         R3 2
       71 SETTABLEKS                       R3 R2 K23 ["Parent"]
       73 GETUPVAL                         R2 4
       74 LOADK                            R3 K24 ["Selection"]
       75 CALL                             R2 1 0
       76 GETUPVAL                         R2 5
       77 CALL                             R2 0 0
       78 GETUPVAL                         R2 6
       79 GETUPVAL                         R4 7
       80 GETUPVAL                         R6 8
       81 NAMECALL                         R6 R6 K25 ["getFilteredSelection"]
       83 CALL                             R6 1 -1
       84 NAMECALL                         R4 R4 K26 ["getExtentsFromGuis"]
       86 CALL                             R4 -1 -1
       87 NAMECALL                         R2 R2 K27 ["updateSelectionAdorns"]
       89 CALL                             R2 -1 0
       90 GETUPVAL                         R2 2
       91 LOADB                            R3 1
       92 SETTABLEKS                       R3 R2 K6 ["Enabled"]
       94 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["Size"]
        2 GETTABLEKS                       R3 R1 K1 ["TopLeft"]
        4 GETUPVAL                         R4 0
        5 GETIMPORT                        R5 K4 [UDim2.new]
        7 LOADN                            R6 0
        8 GETTABLEKS                       R7 R3 K5 ["X"]
       10 LOADN                            R8 0
       11 GETTABLEKS                       R9 R3 K6 ["Y"]
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R5 R4 K7 ["Position"]
       16 GETUPVAL                         R4 0
       17 GETIMPORT                        R5 K4 [UDim2.new]
       19 LOADN                            R6 0
       20 GETTABLEKS                       R7 R2 K5 ["X"]
       22 LOADN                            R8 0
       23 GETTABLEKS                       R9 R2 K6 ["Y"]
       25 CALL                             R5 4 1
       26 SETTABLEKS                       R5 R4 K0 ["Size"]
       28 GETUPVAL                         R4 1
       29 NAMECALL                         R4 R4 K8 ["getFilteredSelection"]
       31 CALL                             R4 1 1
       32 LENGTH                           R5 R4
       33 JUMPIFNOTEQKN                    R5 K9 [1] ; [+8]
       35 GETUPVAL                         R5 0
       36 GETTABLEN                        R7 R4 1
       37 GETTABLEKS                       R6 R7 K10 ["AbsoluteRotation"]
       39 SETTABLEKS                       R6 R5 K11 ["Rotation"]
       41 RETURN                           R0 0
       42 GETUPVAL                         R5 0
       43 LOADN                            R6 0
       44 SETTABLEKS                       R6 R5 K11 ["Rotation"]
       46 RETURN                           R0 0

PROTO_19:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 LENGTH                           R1 R4
        3 LOADN                            R2 1
        4 FORNPREP                         R1
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R3
        7 NAMECALL                         R4 R4 K0 ["Destroy"]
        9 CALL                             R4 1 0
       10 FORNLOOP                         R1
       11 LOADN                            R3 1
       12 GETUPVAL                         R4 1
       13 LENGTH                           R1 R4
       14 LOADN                            R2 1
       15 FORNPREP                         R1
       16 GETUPVAL                         R5 1
       17 GETTABLE                         R4 R5 R3
       18 NAMECALL                         R4 R4 K0 ["Destroy"]
       20 CALL                             R4 1 0
       21 FORNLOOP                         R1
       22 NEWTABLE                         R1 0 0
       24 SETUPVAL                         R1 0
       25 NEWTABLE                         R1 0 0
       27 SETUPVAL                         R1 1
       28 GETUPVAL                         R1 2
       29 JUMPIFNOT                        R1 ; [+6]
       30 GETUPVAL                         R1 2
       31 NAMECALL                         R1 R1 K0 ["Destroy"]
       33 CALL                             R1 1 0
       34 LOADNIL                          R1
       35 SETUPVAL                         R1 2
       36 GETUPVAL                         R1 3
       37 JUMPIFNOT                        R1 ; [+6]
       38 GETUPVAL                         R1 3
       39 NAMECALL                         R1 R1 K0 ["Destroy"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETUPVAL                         R1 3
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["CoreGuiManager"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R5 K3 [script]
       14 GETTABLEKS                       R4 R5 K4 ["Parent"]
       16 GETTABLEKS                       R3 R4 K6 ["Enum"]
       18 GETTABLEKS                       R2 R3 K7 ["Direction"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R5 K3 [script]
       25 GETTABLEKS                       R4 R5 K4 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["Extents2D"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K4 ["Parent"]
       36 GETTABLEKS                       R4 R5 K9 ["FFlag"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K1 [require]
       41 GETIMPORT                        R7 K3 [script]
       43 GETTABLEKS                       R6 R7 K4 ["Parent"]
       45 GETTABLEKS                       R5 R6 K10 ["SelectionManager"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R8 K3 [script]
       52 GETTABLEKS                       R7 R8 K4 ["Parent"]
       54 GETTABLEKS                       R6 R7 K11 ["Utility"]
       56 CALL                             R5 1 1
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 LOADNIL                          R9
       61 LOADNIL                          R10
       62 LOADNIL                          R11
       63 NEWTABLE                         R12 0 0
       65 NEWTABLE                         R13 0 4
       67 GETIMPORT                        R14 K14 [Color3.fromRGB]
       69 LOADN                            R15 255
       70 LOADN                            R16 255
       71 LOADN                            R17 255
       72 CALL                             R14 3 1
       73 GETIMPORT                        R15 K14 [Color3.fromRGB]
       75 LOADN                            R16 136
       76 LOADN                            R17 136
       77 LOADN                            R18 136
       78 CALL                             R15 3 1
       79 GETIMPORT                        R16 K14 [Color3.fromRGB]
       81 LOADN                            R17 222
       82 LOADN                            R18 222
       83 LOADN                            R19 222
       84 CALL                             R16 3 1
       85 NEWTABLE                         R17 8 0
       87 GETTABLEKS                       R18 R1 K15 ["E"]
       89 GETIMPORT                        R19 K18 [Vector2.new]
       91 LOADN                            R20 0
       92 LOADK                            R21 K19 [0.5]
       93 CALL                             R19 2 1
       94 SETTABLE                         R19 R17 R18
       95 GETTABLEKS                       R18 R1 K20 ["SE"]
       97 GETIMPORT                        R19 K18 [Vector2.new]
       99 LOADN                            R20 0
      100 LOADN                            R21 0
      101 CALL                             R19 2 1
      102 SETTABLE                         R19 R17 R18
      103 GETTABLEKS                       R18 R1 K21 ["S"]
      105 GETIMPORT                        R19 K18 [Vector2.new]
      107 LOADK                            R20 K19 [0.5]
      108 LOADN                            R21 0
      109 CALL                             R19 2 1
      110 SETTABLE                         R19 R17 R18
      111 GETTABLEKS                       R18 R1 K22 ["SW"]
      113 GETIMPORT                        R19 K18 [Vector2.new]
      115 LOADN                            R20 1
      116 LOADN                            R21 0
      117 CALL                             R19 2 1
      118 SETTABLE                         R19 R17 R18
      119 GETTABLEKS                       R18 R1 K23 ["W"]
      121 GETIMPORT                        R19 K18 [Vector2.new]
      123 LOADN                            R20 1
      124 LOADK                            R21 K19 [0.5]
      125 CALL                             R19 2 1
      126 SETTABLE                         R19 R17 R18
      127 GETTABLEKS                       R18 R1 K24 ["NW"]
      129 GETIMPORT                        R19 K18 [Vector2.new]
      131 LOADN                            R20 1
      132 LOADN                            R21 1
      133 CALL                             R19 2 1
      134 SETTABLE                         R19 R17 R18
      135 GETTABLEKS                       R18 R1 K25 ["N"]
      137 GETIMPORT                        R19 K18 [Vector2.new]
      139 LOADK                            R20 K19 [0.5]
      140 LOADN                            R21 1
      141 CALL                             R19 2 1
      142 SETTABLE                         R19 R17 R18
      143 GETTABLEKS                       R18 R1 K26 ["NE"]
      145 GETIMPORT                        R19 K18 [Vector2.new]
      147 LOADN                            R20 0
      148 LOADN                            R21 1
      149 CALL                             R19 2 1
      150 SETTABLE                         R19 R17 R18
      151 NEWTABLE                         R18 8 0
      153 GETTABLEKS                       R19 R1 K15 ["E"]
      155 GETIMPORT                        R20 K28 [UDim2.new]
      157 LOADN                            R21 1
      158 LOADN                            R22 254
      159 LOADK                            R23 K19 [0.5]
      160 LOADN                            R24 0
      161 CALL                             R20 4 1
      162 SETTABLE                         R20 R18 R19
      163 GETTABLEKS                       R19 R1 K20 ["SE"]
      165 GETIMPORT                        R20 K28 [UDim2.new]
      167 LOADN                            R21 1
      168 LOADN                            R22 254
      169 LOADN                            R23 1
      170 LOADN                            R24 254
      171 CALL                             R20 4 1
      172 SETTABLE                         R20 R18 R19
      173 GETTABLEKS                       R19 R1 K21 ["S"]
      175 GETIMPORT                        R20 K28 [UDim2.new]
      177 LOADK                            R21 K19 [0.5]
      178 LOADN                            R22 0
      179 LOADN                            R23 1
      180 LOADN                            R24 254
      181 CALL                             R20 4 1
      182 SETTABLE                         R20 R18 R19
      183 GETTABLEKS                       R19 R1 K22 ["SW"]
      185 GETIMPORT                        R20 K28 [UDim2.new]
      187 LOADN                            R21 0
      188 LOADN                            R22 2
      189 LOADN                            R23 1
      190 LOADN                            R24 254
      191 CALL                             R20 4 1
      192 SETTABLE                         R20 R18 R19
      193 GETTABLEKS                       R19 R1 K23 ["W"]
      195 GETIMPORT                        R20 K28 [UDim2.new]
      197 LOADN                            R21 0
      198 LOADN                            R22 2
      199 LOADK                            R23 K19 [0.5]
      200 LOADN                            R24 0
      201 CALL                             R20 4 1
      202 SETTABLE                         R20 R18 R19
      203 GETTABLEKS                       R19 R1 K24 ["NW"]
      205 GETIMPORT                        R20 K28 [UDim2.new]
      207 LOADN                            R21 0
      208 LOADN                            R22 2
      209 LOADN                            R23 0
      210 LOADN                            R24 2
      211 CALL                             R20 4 1
      212 SETTABLE                         R20 R18 R19
      213 GETTABLEKS                       R19 R1 K25 ["N"]
      215 GETIMPORT                        R20 K28 [UDim2.new]
      217 LOADK                            R21 K19 [0.5]
      218 LOADN                            R22 0
      219 LOADN                            R23 0
      220 LOADN                            R24 2
      221 CALL                             R20 4 1
      222 SETTABLE                         R20 R18 R19
      223 GETTABLEKS                       R19 R1 K26 ["NE"]
      225 GETIMPORT                        R20 K28 [UDim2.new]
      227 LOADN                            R21 1
      228 LOADN                            R22 254
      229 LOADN                            R23 0
      230 LOADN                            R24 2
      231 CALL                             R20 4 1
      232 SETTABLE                         R20 R18 R19
      233 NEWTABLE                         R19 0 4
      235 GETIMPORT                        R20 K18 [Vector2.new]
      237 LOADN                            R21 0
      238 LOADK                            R22 K19 [0.5]
      239 CALL                             R20 2 1
      240 GETIMPORT                        R21 K18 [Vector2.new]
      242 LOADK                            R22 K19 [0.5]
      243 LOADN                            R23 0
      244 CALL                             R21 2 1
      245 GETIMPORT                        R22 K18 [Vector2.new]
      247 LOADN                            R23 1
      248 LOADK                            R24 K19 [0.5]
      249 CALL                             R22 2 1
      250 GETIMPORT                        R23 K18 [Vector2.new]
      252 LOADK                            R24 K19 [0.5]
      253 LOADN                            R25 1
      254 CALL                             R23 2 -1
      255 SETLIST                          R19 R20 -1 [1]
      257 NEWTABLE                         R20 0 4
      259 GETIMPORT                        R21 K28 [UDim2.new]
      261 LOADN                            R22 1
      262 LOADN                            R23 0
      263 LOADK                            R24 K19 [0.5]
      264 LOADN                            R25 0
      265 CALL                             R21 4 1
      266 GETIMPORT                        R22 K28 [UDim2.new]
      268 LOADK                            R23 K19 [0.5]
      269 LOADN                            R24 0
      270 LOADN                            R25 1
      271 LOADN                            R26 0
      272 CALL                             R22 4 1
      273 GETIMPORT                        R23 K28 [UDim2.new]
      275 LOADN                            R24 0
      276 LOADN                            R25 0
      277 LOADK                            R26 K19 [0.5]
      278 LOADN                            R27 0
      279 CALL                             R23 4 1
      280 GETIMPORT                        R24 K28 [UDim2.new]
      282 LOADK                            R25 K19 [0.5]
      283 LOADN                            R26 0
      284 LOADN                            R27 0
      285 LOADN                            R28 0
      286 CALL                             R24 4 -1
      287 SETLIST                          R20 R21 -1 [1]
      289 NEWTABLE                         R21 0 4
      291 GETIMPORT                        R22 K28 [UDim2.new]
      293 LOADN                            R23 0
      294 LOADN                            R24 1
      295 LOADN                            R25 1
      296 LOADN                            R26 2
      297 CALL                             R22 4 1
      298 GETIMPORT                        R23 K28 [UDim2.new]
      300 LOADN                            R24 1
      301 LOADN                            R25 2
      302 LOADN                            R26 0
      303 LOADN                            R27 1
      304 CALL                             R23 4 1
      305 GETIMPORT                        R24 K28 [UDim2.new]
      307 LOADN                            R25 0
      308 LOADN                            R26 1
      309 LOADN                            R27 1
      310 LOADN                            R28 2
      311 CALL                             R24 4 1
      312 GETIMPORT                        R25 K28 [UDim2.new]
      314 LOADN                            R26 1
      315 LOADN                            R27 2
      316 LOADN                            R28 0
      317 LOADN                            R29 1
      318 CALL                             R25 4 -1
      319 SETLIST                          R21 R22 -1 [1]
      321 DUPCLOSURE                       R22 K29 [PROTO_0]
      322 CAPTURE                          VAL R0
      323 DUPCLOSURE                       R23 K30 [PROTO_1]
      324 CAPTURE                          VAL R0
      325 NEWCLOSURE                       R24 P2
      326 CAPTURE                          REF R12
      327 NEWCLOSURE                       R25 P3
      328 CAPTURE                          REF R11
      329 NEWCLOSURE                       R26 P4
      330 CAPTURE                          VAL R1
      331 CAPTURE                          VAL R17
      332 CAPTURE                          VAL R18
      333 CAPTURE                          VAL R14
      334 CAPTURE                          VAL R15
      335 CAPTURE                          REF R11
      336 CAPTURE                          REF R12
      337 NEWCLOSURE                       R27 P5
      338 CAPTURE                          VAL R19
      339 CAPTURE                          VAL R16
      340 CAPTURE                          VAL R20
      341 CAPTURE                          VAL R21
      342 CAPTURE                          REF R13
      343 CAPTURE                          REF R11
      344 NEWTABLE                         R28 16 0
      346 NEWTABLE                         R29 0 0
      348 NEWCLOSURE                       R30 P6
      349 CAPTURE                          VAL R22
      350 CAPTURE                          VAL R5
      351 CAPTURE                          REF R29
      352 SETTABLEKS                       R30 R28 K31 ["showSnappingLine"]
      354 NEWCLOSURE                       R30 P7
      355 CAPTURE                          REF R29
      356 SETTABLEKS                       R30 R28 K32 ["hideSnappingLines"]
      358 NEWCLOSURE                       R30 P8
      359 CAPTURE                          REF R8
      360 CAPTURE                          VAL R23
      361 SETTABLEKS                       R30 R28 K33 ["showXSnappingLine"]
      363 NEWCLOSURE                       R30 P9
      364 CAPTURE                          REF R9
      365 CAPTURE                          VAL R23
      366 SETTABLEKS                       R30 R28 K34 ["showYSnappingLine"]
      368 NEWCLOSURE                       R30 P10
      369 CAPTURE                          REF R8
      370 SETTABLEKS                       R30 R28 K35 ["hideXSnappingLine"]
      372 NEWCLOSURE                       R30 P11
      373 CAPTURE                          REF R9
      374 SETTABLEKS                       R30 R28 K36 ["hideYSnappingLine"]
      376 NEWCLOSURE                       R30 P12
      377 CAPTURE                          REF R6
      378 CAPTURE                          REF R7
      379 CAPTURE                          VAL R23
      380 CAPTURE                          VAL R0
      381 SETTABLEKS                       R30 R28 K37 ["showOfferReparentAdornments"]
      383 NEWCLOSURE                       R30 P13
      384 CAPTURE                          REF R6
      385 CAPTURE                          REF R7
      386 SETTABLEKS                       R30 R28 K38 ["hideOfferReparent"]
      388 NEWCLOSURE                       R30 P14
      389 CAPTURE                          REF R10
      390 CAPTURE                          VAL R4
      391 SETTABLEKS                       R30 R28 K39 ["showSelection"]
      393 NEWCLOSURE                       R30 P15
      394 CAPTURE                          REF R10
      395 SETTABLEKS                       R30 R28 K40 ["hideSelection"]
      397 NEWCLOSURE                       R30 P16
      398 CAPTURE                          VAL R4
      399 CAPTURE                          REF R10
      400 CAPTURE                          VAL R28
      401 CAPTURE                          VAL R2
      402 SETTABLEKS                       R30 R28 K41 ["updateSelectionPosition"]
      404 NEWCLOSURE                       R30 P17
      405 CAPTURE                          REF R12
      406 CAPTURE                          VAL R0
      407 CAPTURE                          REF R10
      408 CAPTURE                          REF R11
      409 CAPTURE                          VAL R26
      410 CAPTURE                          VAL R27
      411 CAPTURE                          VAL R28
      412 CAPTURE                          VAL R2
      413 CAPTURE                          VAL R4
      414 SETTABLEKS                       R30 R28 K42 ["createSelectionAdorns"]
      416 NEWCLOSURE                       R30 P18
      417 CAPTURE                          REF R11
      418 CAPTURE                          VAL R4
      419 SETTABLEKS                       R30 R28 K43 ["updateSelectionAdorns"]
      421 NEWCLOSURE                       R30 P19
      422 CAPTURE                          REF R12
      423 CAPTURE                          REF R13
      424 CAPTURE                          REF R11
      425 CAPTURE                          REF R10
      426 SETTABLEKS                       R30 R28 K44 ["deleteSelectionAdorns"]
      428 CLOSEUPVALS                      R6
      429 RETURN                           R28 1

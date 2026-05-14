PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["X"]
        2 GETTABLEKS                       R5 R5 K1 ["Scale"]
        4 SUBRK                            R6 R2 K2 [1]
        5 MUL                              R4 R5 R6
        6 GETTABLEKS                       R6 R1 K0 ["X"]
        8 GETTABLEKS                       R6 R6 K1 ["Scale"]
       10 MUL                              R5 R6 R2
       11 ADD                              R3 R4 R5
       12 GETTABLEKS                       R6 R0 K0 ["X"]
       14 GETTABLEKS                       R6 R6 K3 ["Offset"]
       16 SUBRK                            R7 R2 K2 [1]
       17 MUL                              R5 R6 R7
       18 GETTABLEKS                       R7 R1 K0 ["X"]
       20 GETTABLEKS                       R7 R7 K3 ["Offset"]
       22 MUL                              R6 R7 R2
       23 ADD                              R4 R5 R6
       24 GETTABLEKS                       R7 R0 K4 ["Y"]
       26 GETTABLEKS                       R7 R7 K1 ["Scale"]
       28 SUBRK                            R8 R2 K2 [1]
       29 MUL                              R6 R7 R8
       30 GETTABLEKS                       R8 R1 K4 ["Y"]
       32 GETTABLEKS                       R8 R8 K1 ["Scale"]
       34 MUL                              R7 R8 R2
       35 ADD                              R5 R6 R7
       36 GETTABLEKS                       R8 R0 K4 ["Y"]
       38 GETTABLEKS                       R8 R8 K3 ["Offset"]
       40 SUBRK                            R9 R2 K2 [1]
       41 MUL                              R7 R8 R9
       42 GETTABLEKS                       R9 R1 K4 ["Y"]
       44 GETTABLEKS                       R9 R9 K3 ["Offset"]
       46 MUL                              R8 R9 R2
       47 ADD                              R6 R7 R8
       48 GETIMPORT                        R7 K7 [UDim2.new]
       50 MOVE                             R8 R3
       51 MOVE                             R9 R4
       52 MOVE                             R10 R5
       53 MOVE                             R11 R6
       54 CALL                             R7 4 -1
       55 RETURN                           R7 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ImageButton"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["InspectorHover"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K6 ["Active"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K7 ["AutoButtonColor"]
       13 LOADN                            R1 1
       14 SETTABLEKS                       R1 R0 K8 ["BorderSizePixel"]
       16 GETIMPORT                        R1 K11 [Color3.fromRGB]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 LOADN                            R4 0
       21 CALL                             R1 3 1
       22 SETTABLEKS                       R1 R0 K12 ["BorderColor3"]
       24 GETIMPORT                        R1 K11 [Color3.fromRGB]
       26 LOADN                            R2 220
       27 LOADN                            R3 230
       28 LOADN                            R4 255
       29 CALL                             R1 3 1
       30 SETTABLEKS                       R1 R0 K13 ["BackgroundColor3"]
       32 LOADK                            R1 K14 [0.2]
       33 SETTABLEKS                       R1 R0 K15 ["BackgroundTransparency"]
       35 LOADK                            R1 K16 [1100000]
       36 SETTABLEKS                       R1 R0 K17 ["ZIndex"]
       38 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["InspectorHover"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADN                            R1 1
        8 SETTABLEKS                       R1 R0 K6 ["BorderSizePixel"]
       10 GETIMPORT                        R1 K9 [Color3.fromRGB]
       12 LOADN                            R2 0
       13 LOADN                            R3 0
       14 LOADN                            R4 0
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K10 ["BorderColor3"]
       18 GETIMPORT                        R1 K9 [Color3.fromRGB]
       20 LOADN                            R2 220
       21 LOADN                            R3 230
       22 LOADN                            R4 255
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K11 ["BackgroundColor3"]
       26 LOADK                            R1 K12 [0.2]
       27 SETTABLEKS                       R1 R0 K13 ["BackgroundTransparency"]
       29 LOADK                            R1 K14 [1100000]
       30 SETTABLEKS                       R1 R0 K15 ["ZIndex"]
       32 GETIMPORT                        R1 K2 [Instance.new]
       34 LOADK                            R2 K16 ["TextLabel"]
       35 CALL                             R1 1 1
       36 LOADK                            R2 K17 ["Dimensions"]
       37 SETTABLEKS                       R2 R1 K5 ["Name"]
       39 GETIMPORT                        R2 K19 [UDim2.new]
       41 LOADN                            R3 0
       42 LOADN                            R4 60
       43 LOADN                            R5 0
       44 LOADN                            R6 24
       45 CALL                             R2 4 1
       46 SETTABLEKS                       R2 R1 K20 ["Size"]
       48 SETTABLEKS                       R0 R1 K21 ["Parent"]
       50 GETIMPORT                        R2 K9 [Color3.fromRGB]
       52 LOADN                            R3 0
       53 LOADN                            R4 0
       54 LOADN                            R5 0
       55 CALL                             R2 3 1
       56 SETTABLEKS                       R2 R1 K10 ["BorderColor3"]
       58 LOADN                            R2 1
       59 SETTABLEKS                       R2 R1 K6 ["BorderSizePixel"]
       61 GETIMPORT                        R2 K9 [Color3.fromRGB]
       63 LOADN                            R3 255
       64 LOADN                            R4 255
       65 LOADN                            R5 255
       66 CALL                             R2 3 1
       67 SETTABLEKS                       R2 R1 K11 ["BackgroundColor3"]
       69 LOADK                            R2 K12 [0.2]
       70 SETTABLEKS                       R2 R1 K13 ["BackgroundTransparency"]
       72 LOADK                            R2 K22 [1100001]
       73 SETTABLEKS                       R2 R1 K15 ["ZIndex"]
       75 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R2 K12 [{"debugInterface", "onSelect", "active", "connection", "selectedObject", "pickerArea", "highlightArea", "selectedTime", "nextPosition", "nextSize", "prevPosition", "prevSize"}]
        1 SETTABLEKS                       R0 R2 K0 ["debugInterface"]
        3 SETTABLEKS                       R1 R2 K1 ["onSelect"]
        5 LOADB                            R3 0
        6 SETTABLEKS                       R3 R2 K2 ["active"]
        8 LOADNIL                          R3
        9 SETTABLEKS                       R3 R2 K3 ["connection"]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R2 K4 ["selectedObject"]
       14 GETUPVAL                         R3 0
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K5 ["pickerArea"]
       18 GETUPVAL                         R3 1
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R2 K6 ["highlightArea"]
       22 GETIMPORT                        R3 K15 [os.clock]
       24 CALL                             R3 0 1
       25 SETTABLEKS                       R3 R2 K7 ["selectedTime"]
       27 GETUPVAL                         R3 2
       28 SETTABLEKS                       R3 R2 K8 ["nextPosition"]
       30 GETUPVAL                         R3 2
       31 SETTABLEKS                       R3 R2 K9 ["nextSize"]
       33 GETUPVAL                         R3 2
       34 SETTABLEKS                       R3 R2 K10 ["prevPosition"]
       36 GETUPVAL                         R3 2
       37 SETTABLEKS                       R3 R2 K11 ["prevSize"]
       39 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["debugInterface"]
        2 GETTABLEKS                       R1 R1 K1 ["rootInstance"]
        4 RETURN                           R1 1

PROTO_5:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+4]
        2 LOADK                            R4 K0 ["ScreenGui"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R2 2 1
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+8]
        8 GETTABLEKS                       R3 R0 K2 ["debugInterface"]
       10 GETTABLEKS                       R3 R3 K3 ["pickerParent"]
       12 JUMPIF                           R3 ; [+3]
       13 NAMECALL                         R3 R0 K4 ["getRoot"]
       15 CALL                             R3 1 1
       16 RETURN                           R3 1

PROTO_6:
        0 NAMECALL                         R1 R0 K0 ["getRoot"]
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 LOADK                            R4 K1 ["PluginGui"]
        7 NAMECALL                         R2 R1 K2 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 NAMECALL                         R2 R1 K3 ["GetRelativeMousePosition"]
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 GETIMPORT                        R2 K5 [game]
       17 LOADK                            R4 K6 ["Players"]
       18 NAMECALL                         R2 R2 K7 ["GetService"]
       20 CALL                             R2 2 1
       21 GETTABLEKS                       R2 R2 K8 ["LocalPlayer"]
       23 NAMECALL                         R2 R2 K9 ["GetMouse"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K12 [Vector2.new]
       28 GETTABLEKS                       R4 R2 K13 ["X"]
       30 GETTABLEKS                       R5 R2 K14 ["Y"]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["selectedObject"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["pickerArea"]
        2 GETTABLEKS                       R1 R1 K1 ["Activated"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R1 R1 K2 ["Connect"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["active"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 NAMECALL                         R0 R0 K1 ["calculateFramePosition"]
        8 CALL                             R0 1 0
        9 GETIMPORT                        R0 K3 [delay]
       11 LOADK                            R1 K4 [0.2]
       12 GETUPVAL                         R2 1
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateFrame"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 SETTABLEKS                       R1 R0 K0 ["active"]
        2 NAMECALL                         R2 R0 K1 ["getRoot"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOT                        R1 ; [+25]
        8 GETTABLEKS                       R3 R0 K2 ["pickerArea"]
       10 NAMECALL                         R4 R0 K3 ["getPickerParent"]
       12 CALL                             R4 1 1
       13 SETTABLEKS                       R4 R3 K4 ["Parent"]
       15 LOADNIL                          R3
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          REF R3
       19 MOVE                             R4 R3
       20 CALL                             R4 0 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K5 ["RenderStepped"]
       24 NEWCLOSURE                       R6 P1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R4 R4 K6 ["Connect"]
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R0 K7 ["connection"]
       31 CLOSEUPVALS                      R3
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R0 K7 ["connection"]
       35 JUMPIFNOT                        R3 ; [+13]
       36 GETTABLEKS                       R3 R0 K7 ["connection"]
       38 NAMECALL                         R3 R3 K8 ["Disconnect"]
       40 CALL                             R3 1 0
       41 LOADNIL                          R3
       42 SETTABLEKS                       R3 R0 K7 ["connection"]
       44 GETTABLEKS                       R3 R0 K2 ["pickerArea"]
       46 LOADNIL                          R4
       47 SETTABLEKS                       R4 R3 K4 ["Parent"]
       49 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R2 1
        1 GETIMPORT                        R5 K3 [os.clock]
        3 CALL                             R5 0 1
        4 GETTABLEKS                       R6 R0 K4 ["selectedTime"]
        6 SUB                              R4 R5 R6
        7 DIVK                             R3 R4 K0 [0.1]
        8 FASTCALL2                        MATH_MIN R2 R3 ; [+3]
       10 GETIMPORT                        R1 K7 [math.min]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["pickerArea"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R4 R0 K9 ["prevPosition"]
       18 GETTABLEKS                       R5 R0 K10 ["nextPosition"]
       20 MOVE                             R6 R1
       21 CALL                             R3 3 1
       22 SETTABLEKS                       R3 R2 K11 ["Position"]
       24 GETTABLEKS                       R2 R0 K8 ["pickerArea"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R4 R0 K12 ["prevSize"]
       29 GETTABLEKS                       R5 R0 K13 ["nextSize"]
       31 MOVE                             R6 R1
       32 CALL                             R3 3 1
       33 SETTABLEKS                       R3 R2 K14 ["Size"]
       35 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["pickerArea"]
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 1
        6 LOADB                            R2 0
        7 LOADK                            R5 K1 ["GuiBase2d"]
        8 NAMECALL                         R3 R1 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+36]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R5 R1 K3 ["AbsolutePosition"]
       15 SUB                              R3 R4 R5
       16 LOADB                            R4 0
       17 GETTABLEKS                       R5 R3 K4 ["X"]
       19 LOADN                            R6 0
       20 JUMPIFNOTLE                      R6 R5 ; [+26]
       22 LOADB                            R4 0
       23 GETTABLEKS                       R5 R3 K4 ["X"]
       25 GETTABLEKS                       R6 R1 K5 ["AbsoluteSize"]
       27 GETTABLEKS                       R6 R6 K4 ["X"]
       29 JUMPIFNOTLE                      R5 R6 ; [+17]
       31 LOADB                            R4 0
       32 GETTABLEKS                       R5 R3 K6 ["Y"]
       34 LOADN                            R6 0
       35 JUMPIFNOTLE                      R6 R5 ; [+11]
       37 GETTABLEKS                       R5 R3 K6 ["Y"]
       39 GETTABLEKS                       R6 R1 K5 ["AbsoluteSize"]
       41 GETTABLEKS                       R6 R6 K6 ["Y"]
       43 JUMPIFLE                         R5 R6 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 MOVE                             R2 R4
       48 LOADK                            R5 K7 ["GuiObject"]
       49 NAMECALL                         R3 R1 K2 ["IsA"]
       51 CALL                             R3 2 1
       52 JUMPIFNOT                        R3 ; [+4]
       53 GETTABLEKS                       R3 R1 K8 ["Visible"]
       55 JUMPIF                           R3 ; [+1]
       56 LOADB                            R2 0
       57 LOADK                            R5 K9 ["ScreenGui"]
       58 NAMECALL                         R3 R1 K10 ["FindFirstAncestorWhichIsA"]
       60 CALL                             R3 2 1
       61 MOVE                             R4 R3
       62 JUMPIFNOT                        R4 ; [+6]
       63 GETTABLEKS                       R5 R3 K11 ["Enabled"]
       65 JUMPIFEQKB                       R5 FALSE ; [+2]
       67 LOADB                            R4 0 +1
       68 LOADB                            R4 1
       69 JUMPIFNOT                        R2 ; [+18]
       70 JUMPIF                           R4 ; [+17]
       71 GETTABLEKS                       R6 R1 K5 ["AbsoluteSize"]
       73 GETTABLEKS                       R6 R6 K4 ["X"]
       75 GETTABLEKS                       R7 R1 K5 ["AbsoluteSize"]
       77 GETTABLEKS                       R7 R7 K6 ["Y"]
       79 MUL                              R5 R6 R7
       80 GETTABLEKS                       R6 R0 K12 ["minArea"]
       82 JUMPIFNOTLT                      R5 R6 ; [+5]
       84 SETTABLEKS                       R5 R0 K12 ["minArea"]
       86 SETTABLEKS                       R1 R0 K13 ["instance"]
       88 RETURN                           R0 1

PROTO_14:
        0 NAMECALL                         R3 R1 K0 ["GetDescendants"]
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R3
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 DUPTABLE                         R7 K2 [{"minArea"}]
        9 LOADK                            R8 K3 [∞]
       10 SETTABLEKS                       R8 R7 K1 ["minArea"]
       12 CALL                             R4 3 1
       13 GETTABLEKS                       R5 R4 K4 ["instance"]
       15 RETURN                           R5 1

PROTO_15:
        0 NAMECALL                         R1 R0 K0 ["getRoot"]
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K1 ["getRelativeMousePosition"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["mousePosition"]
       11 JUMPIFEQ                         R2 R3 ; [+92]
       13 SETTABLEKS                       R2 R0 K2 ["mousePosition"]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R0 K3 ["intersectMouse"]
       19 CALL                             R3 3 1
       20 JUMPIFNOT                        R3 ; [+80]
       21 GETTABLEKS                       R4 R0 K4 ["selectedObject"]
       23 JUMPIFEQ                         R3 R4 ; [+80]
       25 GETTABLEKS                       R4 R0 K5 ["pickerArea"]
       27 MOVE                             R7 R3
       28 NAMECALL                         R5 R0 K6 ["getPickerParent"]
       30 CALL                             R5 2 1
       31 SETTABLEKS                       R5 R4 K7 ["Parent"]
       33 SETTABLEKS                       R3 R0 K4 ["selectedObject"]
       35 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       37 GETTABLEKS                       R5 R0 K5 ["pickerArea"]
       39 GETTABLEKS                       R5 R5 K11 ["AbsolutePosition"]
       41 GETTABLEKS                       R5 R5 K12 ["X"]
       43 GETTABLEKS                       R6 R0 K5 ["pickerArea"]
       45 GETTABLEKS                       R6 R6 K11 ["AbsolutePosition"]
       47 GETTABLEKS                       R6 R6 K13 ["Y"]
       49 CALL                             R4 2 1
       50 SETTABLEKS                       R4 R0 K14 ["prevPosition"]
       52 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       54 GETTABLEKS                       R5 R0 K5 ["pickerArea"]
       56 GETTABLEKS                       R5 R5 K15 ["AbsoluteSize"]
       58 GETTABLEKS                       R5 R5 K12 ["X"]
       60 GETTABLEKS                       R6 R0 K5 ["pickerArea"]
       62 GETTABLEKS                       R6 R6 K15 ["AbsoluteSize"]
       64 GETTABLEKS                       R6 R6 K13 ["Y"]
       66 CALL                             R4 2 1
       67 SETTABLEKS                       R4 R0 K16 ["prevSize"]
       69 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       71 GETTABLEKS                       R5 R3 K11 ["AbsolutePosition"]
       73 GETTABLEKS                       R5 R5 K12 ["X"]
       75 GETTABLEKS                       R6 R3 K11 ["AbsolutePosition"]
       77 GETTABLEKS                       R6 R6 K13 ["Y"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R0 K17 ["nextPosition"]
       82 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       84 GETTABLEKS                       R5 R3 K15 ["AbsoluteSize"]
       86 GETTABLEKS                       R5 R5 K12 ["X"]
       88 GETTABLEKS                       R6 R3 K15 ["AbsoluteSize"]
       90 GETTABLEKS                       R6 R6 K13 ["Y"]
       92 CALL                             R4 2 1
       93 SETTABLEKS                       R4 R0 K18 ["nextSize"]
       95 GETIMPORT                        R4 K21 [os.clock]
       97 CALL                             R4 0 1
       98 SETTABLEKS                       R4 R0 K22 ["selectedTime"]
      100 RETURN                           R0 0
      101 LOADNIL                          R4
      102 SETTABLEKS                       R4 R0 K4 ["selectedObject"]
      104 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["highlightArea"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R1 R1 K1 ["getPickerParent"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["Parent"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K0 ["highlightArea"]
       13 GETIMPORT                        R1 K5 [UDim2.fromOffset]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K6 ["AbsolutePosition"]
       18 GETTABLEKS                       R2 R2 K7 ["X"]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K6 ["AbsolutePosition"]
       23 GETTABLEKS                       R3 R3 K8 ["Y"]
       25 CALL                             R1 2 1
       26 SETTABLEKS                       R1 R0 K9 ["Position"]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K0 ["highlightArea"]
       31 GETIMPORT                        R1 K5 [UDim2.fromOffset]
       33 GETUPVAL                         R2 1
       34 GETTABLEKS                       R2 R2 K10 ["AbsoluteSize"]
       36 GETTABLEKS                       R2 R2 K7 ["X"]
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K10 ["AbsoluteSize"]
       41 GETTABLEKS                       R3 R3 K8 ["Y"]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K11 ["Size"]
       46 GETUPVAL                         R0 0
       47 GETTABLEKS                       R0 R0 K0 ["highlightArea"]
       49 LOADK                            R2 K12 ["Dimensions"]
       50 NAMECALL                         R0 R0 K13 ["FindFirstChild"]
       52 CALL                             R0 2 1
       53 GETUPVAL                         R1 2
       54 LOADK                            R2 K14 ["{X}x{Y}"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K10 ["AbsoluteSize"]
       58 CALL                             R1 2 1
       59 SETTABLEKS                       R1 R0 K15 ["Text"]
       61 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U0
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["highlightArea"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["Parent"]
        5 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["connection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["pickerArea"]
       10 NAMECALL                         R1 R1 K3 ["Destroy"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [game]
       13 LOADK                            R4 K5 ["RunService"]
       14 NAMECALL                         R2 R2 K6 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K8 [require]
       19 GETTABLEKS                       R4 R1 K9 ["Dash"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K10 ["class"]
       24 GETTABLEKS                       R5 R3 K11 ["format"]
       26 GETTABLEKS                       R6 R3 K12 ["reduce"]
       28 GETIMPORT                        R7 K15 [UDim2.fromScale]
       30 LOADN                            R8 0
       31 LOADN                            R9 0
       32 CALL                             R7 2 1
       33 DUPCLOSURE                       R8 K16 [PROTO_0]
       34 DUPCLOSURE                       R9 K17 [PROTO_1]
       35 DUPCLOSURE                       R10 K18 [PROTO_2]
       36 MOVE                             R11 R4
       37 LOADK                            R12 K19 ["InstancePicker"]
       38 DUPCLOSURE                       R13 K20 [PROTO_3]
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R10
       41 CAPTURE                          VAL R7
       42 CALL                             R11 2 1
       43 DUPCLOSURE                       R12 K21 [PROTO_4]
       44 SETTABLEKS                       R12 R11 K22 ["getRoot"]
       46 DUPCLOSURE                       R12 K23 [PROTO_5]
       47 SETTABLEKS                       R12 R11 K24 ["getPickerParent"]
       49 DUPCLOSURE                       R12 K25 [PROTO_6]
       50 SETTABLEKS                       R12 R11 K26 ["getRelativeMousePosition"]
       52 DUPCLOSURE                       R12 K27 [PROTO_8]
       53 SETTABLEKS                       R12 R11 K28 ["_init"]
       55 DUPCLOSURE                       R12 K29 [PROTO_11]
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R12 R11 K30 ["setActive"]
       59 DUPCLOSURE                       R12 K31 [PROTO_12]
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R12 R11 K32 ["updateFrame"]
       63 DUPCLOSURE                       R12 K33 [PROTO_14]
       64 CAPTURE                          VAL R6
       65 SETTABLEKS                       R12 R11 K34 ["intersectMouse"]
       67 DUPCLOSURE                       R12 K35 [PROTO_15]
       68 SETTABLEKS                       R12 R11 K36 ["calculateFramePosition"]
       70 DUPCLOSURE                       R12 K37 [PROTO_17]
       71 CAPTURE                          VAL R5
       72 SETTABLEKS                       R12 R11 K38 ["highlight"]
       74 DUPCLOSURE                       R12 K39 [PROTO_18]
       75 SETTABLEKS                       R12 R11 K40 ["dehighlight"]
       77 DUPCLOSURE                       R12 K41 [PROTO_19]
       78 SETTABLEKS                       R12 R11 K42 ["destroy"]
       80 RETURN                           R11 1

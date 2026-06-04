PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["CoreGui"]
        4 GETTABLEKS                       R0 R0 K3 ["Parent"]
        6 GETTABLEKS                       R0 R0 K2 ["CoreGui"]
        8 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 1 0
        2 GETIMPORT                        R1 K1 [pcall]
        4 DUPCLOSURE                       R2 K2 [PROTO_0]
        5 CALL                             R1 1 2
        6 JUMPIFNOTEQKB                    R1 FALSE ; [+21]
        8 GETIMPORT                        R3 K4 [game]
       10 GETTABLEKS                       R3 R3 K5 ["Players"]
       12 GETTABLEKS                       R3 R3 K6 ["LocalPlayer"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+11]
       16 GETIMPORT                        R4 K4 [game]
       18 GETTABLEKS                       R4 R4 K5 ["Players"]
       20 GETTABLEKS                       R3 R4 K6 ["LocalPlayer"]
       22 GETIMPORT                        R4 K8 [wait]
       24 CALL                             R4 0 0
       25 JUMPBACK                         ; [-12]
       26 GETTABLEKS                       R2 R3 K9 ["PlayerGui"]
       28 LOADK                            R5 K10 ["InputVisualizer"]
       29 NAMECALL                         R3 R2 K11 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 JUMPIFNOTEQKNIL                  R3 ; [+13]
       34 GETIMPORT                        R3 K14 [Instance.new]
       36 LOADK                            R4 K15 ["ScreenGui"]
       37 CALL                             R3 1 1
       38 LOADK                            R4 K10 ["InputVisualizer"]
       39 SETTABLEKS                       R4 R3 K16 ["Name"]
       41 LOADK                            R4 K17 [1000000]
       42 SETTABLEKS                       R4 R3 K18 ["DisplayOrder"]
       44 SETTABLEKS                       R2 R3 K19 ["Parent"]
       46 GETTABLEKS                       R2 R2 K10 ["InputVisualizer"]
       48 SETTABLEKS                       R2 R0 K20 ["guiRoot"]
       50 GETUPVAL                         R5 0
       51 FASTCALL2                        SETMETATABLE R0 R5 ; [+4]
       53 MOVE                             R4 R0
       54 GETIMPORT                        R3 K22 [setmetatable]
       56 CALL                             R3 2 0
       57 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+16]
        6 GETIMPORT                        R4 K6 [Vector2.new]
        8 GETTABLEKS                       R5 R1 K7 ["Position"]
       10 GETTABLEKS                       R5 R5 K8 ["X"]
       12 GETTABLEKS                       R6 R1 K7 ["Position"]
       14 GETTABLEKS                       R6 R6 K9 ["Y"]
       16 CALL                             R4 2 -1
       17 NAMECALL                         R2 R0 K10 ["click"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
       23 GETIMPORT                        R3 K12 [Enum.UserInputType.Touch]
       25 JUMPIFNOTEQ                      R2 R3 ; [+15]
       27 GETIMPORT                        R4 K6 [Vector2.new]
       29 GETTABLEKS                       R5 R1 K7 ["Position"]
       31 GETTABLEKS                       R5 R5 K8 ["X"]
       33 GETTABLEKS                       R6 R1 K7 ["Position"]
       35 GETTABLEKS                       R6 R6 K9 ["Y"]
       37 CALL                             R4 2 -1
       38 NAMECALL                         R2 R0 K10 ["click"]
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKNIL                  R3 ; [+33]
        3 GETIMPORT                        R4 K2 [Instance.new]
        5 LOADK                            R5 K3 ["ImageLabel"]
        6 CALL                             R4 1 1
        7 MOVE                             R3 R4
        8 LOADK                            R4 K4 ["rbxassetid://1549893588"]
        9 SETTABLEKS                       R4 R3 K5 ["Image"]
       11 LOADN                            R4 1
       12 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       14 MOVE                             R4 R2
       15 JUMPIF                           R4 ; [+2]
       16 GETTABLEKS                       R4 R0 K7 ["guiRoot"]
       18 SETTABLEKS                       R4 R3 K8 ["Parent"]
       20 GETIMPORT                        R4 K10 [UDim2.new]
       22 LOADN                            R5 0
       23 LOADN                            R6 20
       24 LOADN                            R7 0
       25 LOADN                            R8 20
       26 CALL                             R4 4 1
       27 SETTABLEKS                       R4 R3 K11 ["Size"]
       29 LOADK                            R4 K12 ["MouseClick"]
       30 SETTABLEKS                       R4 R3 K13 ["Name"]
       32 LOADN                            R4 10
       33 SETTABLEKS                       R4 R3 K14 ["ZIndex"]
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R3 K15 ["Visible"]
       38 GETIMPORT                        R4 K10 [UDim2.new]
       40 LOADN                            R5 0
       41 GETTABLEKS                       R7 R1 K16 ["X"]
       43 GETTABLEKS                       R9 R3 K11 ["Size"]
       45 GETTABLEKS                       R9 R9 K16 ["X"]
       47 GETTABLEKS                       R9 R9 K18 ["Offset"]
       49 DIVK                             R8 R9 K17 [2]
       50 SUB                              R6 R7 R8
       51 LOADN                            R7 0
       52 GETTABLEKS                       R9 R1 K19 ["Y"]
       54 GETTABLEKS                       R11 R3 K11 ["Size"]
       56 GETTABLEKS                       R11 R11 K19 ["Y"]
       58 GETTABLEKS                       R11 R11 K18 ["Offset"]
       60 DIVK                             R10 R11 K17 [2]
       61 SUB                              R8 R9 R10
       62 CALL                             R4 4 1
       63 SETTABLEKS                       R4 R3 K20 ["Position"]
       65 LOADN                            R4 0
       66 SETTABLEKS                       R4 R3 K21 ["ImageTransparency"]
       68 DUPTABLE                         R4 K22 [{"ImageTransparency"}]
       69 LOADN                            R5 1
       70 SETTABLEKS                       R5 R4 K21 ["ImageTransparency"]
       72 GETIMPORT                        R5 K24 [TweenInfo.new]
       74 LOADK                            R6 K25 [0.5]
       75 GETIMPORT                        R7 K29 [Enum.EasingStyle.Quad]
       77 GETIMPORT                        R8 K32 [Enum.EasingDirection.InOut]
       79 LOADN                            R9 0
       80 LOADB                            R10 0
       81 CALL                             R5 5 1
       82 GETUPVAL                         R6 0
       83 MOVE                             R8 R3
       84 MOVE                             R9 R5
       85 MOVE                             R10 R4
       86 NAMECALL                         R6 R6 K33 ["Create"]
       88 CALL                             R6 4 1
       89 NAMECALL                         R7 R6 K34 ["Play"]
       91 CALL                             R7 1 0
       92 GETUPVAL                         R7 1
       93 MOVE                             R9 R3
       94 LOADK                            R10 K25 [0.5]
       95 NAMECALL                         R7 R7 K35 ["AddItem"]
       97 CALL                             R7 3 0
       98 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["onInputBegan"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputBegan"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["handler"]
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["handler"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["handler"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["handler"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["TweenService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K2 [game]
       13 LOADK                            R4 K5 ["Debris"]
       14 NAMECALL                         R2 R2 K4 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K2 [game]
       19 LOADK                            R5 K6 ["UserInputService"]
       20 NAMECALL                         R3 R3 K4 ["GetService"]
       22 CALL                             R3 2 1
       23 DUPCLOSURE                       R4 K7 [PROTO_1]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R4 R0 K8 ["new"]
       27 DUPCLOSURE                       R4 K9 [PROTO_2]
       28 SETTABLEKS                       R4 R0 K10 ["onInputBegan"]
       30 DUPCLOSURE                       R4 K11 [PROTO_3]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R4 R0 K12 ["click"]
       35 DUPCLOSURE                       R4 K13 [PROTO_5]
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R4 R0 K14 ["enable"]
       39 DUPCLOSURE                       R4 K15 [PROTO_6]
       40 SETTABLEKS                       R4 R0 K16 ["disable"]
       42 RETURN                           R0 1

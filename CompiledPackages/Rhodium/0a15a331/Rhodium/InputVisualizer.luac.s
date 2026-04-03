PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Parent"]
        3 GETTABLEKS                       R0 R1 K1 ["CoreGui"]
        5 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 1 0
        2 GETIMPORT                        R1 K1 [pcall]
        4 DUPCLOSURE                       R2 K2 [PROTO_0]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R1 1 2
        7 JUMPIFNOTEQKB                    R1 FALSE ; [+17]
        9 GETIMPORT                        R3 K5 [task.wait]
       11 CALL                             R3 0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K6 ["LocalPlayer"]
       15 JUMPIF                           R3 ; [+1]
       16 JUMPBACK                         ; [-8]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K6 ["LocalPlayer"]
       20 LOADK                            R6 K7 ["PlayerGui"]
       21 NAMECALL                         R4 R3 K8 ["WaitForChild"]
       23 CALL                             R4 2 1
       24 MOVE                             R2 R4
       25 LOADK                            R5 K9 ["InputVisualizer"]
       26 NAMECALL                         R3 R2 K10 ["FindFirstChild"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+13]
       30 GETIMPORT                        R4 K13 [Instance.new]
       32 LOADK                            R5 K14 ["ScreenGui"]
       33 CALL                             R4 1 1
       34 LOADK                            R5 K9 ["InputVisualizer"]
       35 SETTABLEKS                       R5 R4 K15 ["Name"]
       37 LOADK                            R5 K16 [1000000]
       38 SETTABLEKS                       R5 R4 K17 ["DisplayOrder"]
       40 SETTABLEKS                       R2 R4 K18 ["Parent"]
       42 MOVE                             R3 R4
       43 SETTABLEKS                       R3 R0 K19 ["guiRoot"]
       45 GETUPVAL                         R6 2
       46 FASTCALL2                        SETMETATABLE R0 R6 ; [+4]
       48 MOVE                             R5 R0
       49 GETIMPORT                        R4 K21 [setmetatable]
       51 CALL                             R4 2 0
       52 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFNOTEQ                      R2 R3 ; [+15]
       12 GETIMPORT                        R4 K8 [Vector2.new]
       14 GETTABLEKS                       R6 R1 K9 ["Position"]
       16 GETTABLEKS                       R5 R6 K10 ["X"]
       18 GETTABLEKS                       R7 R1 K9 ["Position"]
       20 GETTABLEKS                       R6 R7 K11 ["Y"]
       22 CALL                             R4 2 -1
       23 NAMECALL                         R2 R0 K12 ["click"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R3
        1 JUMPIFNOTEQKNIL                  R3 ; [+34]
        3 GETIMPORT                        R4 K2 [Instance.new]
        5 LOADK                            R5 K3 ["ImageLabel"]
        6 CALL                             R4 1 1
        7 MOVE                             R3 R4
        8 LOADK                            R4 K4 ["rbxassetid://1549893588"]
        9 SETTABLEKS                       R4 R3 K5 ["Image"]
       11 LOADN                            R4 1
       12 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       14 JUMPIFNOT                        R2 ; [+2]
       15 MOVE                             R4 R2
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R4 R0 K7 ["guiRoot"]
       19 SETTABLEKS                       R4 R3 K8 ["Parent"]
       21 GETIMPORT                        R4 K10 [UDim2.new]
       23 LOADN                            R5 0
       24 LOADN                            R6 20
       25 LOADN                            R7 0
       26 LOADN                            R8 20
       27 CALL                             R4 4 1
       28 SETTABLEKS                       R4 R3 K11 ["Size"]
       30 LOADK                            R4 K12 ["MouseClick"]
       31 SETTABLEKS                       R4 R3 K13 ["Name"]
       33 LOADN                            R4 10
       34 SETTABLEKS                       R4 R3 K14 ["ZIndex"]
       36 LOADB                            R4 1
       37 SETTABLEKS                       R4 R3 K15 ["Visible"]
       39 GETIMPORT                        R4 K10 [UDim2.new]
       41 LOADN                            R5 0
       42 GETTABLEKS                       R7 R1 K16 ["X"]
       44 GETTABLEKS                       R11 R3 K11 ["Size"]
       46 GETTABLEKS                       R10 R11 K16 ["X"]
       48 GETTABLEKS                       R9 R10 K18 ["Offset"]
       50 DIVK                             R8 R9 K17 [2]
       51 SUB                              R6 R7 R8
       52 LOADN                            R7 0
       53 GETTABLEKS                       R9 R1 K19 ["Y"]
       55 GETTABLEKS                       R13 R3 K11 ["Size"]
       57 GETTABLEKS                       R12 R13 K19 ["Y"]
       59 GETTABLEKS                       R11 R12 K18 ["Offset"]
       61 DIVK                             R10 R11 K17 [2]
       62 SUB                              R8 R9 R10
       63 CALL                             R4 4 1
       64 SETTABLEKS                       R4 R3 K20 ["Position"]
       66 LOADN                            R4 0
       67 SETTABLEKS                       R4 R3 K21 ["ImageTransparency"]
       69 DUPTABLE                         R4 K22 [{"ImageTransparency"}]
       70 LOADN                            R5 1
       71 SETTABLEKS                       R5 R4 K21 ["ImageTransparency"]
       73 GETIMPORT                        R5 K24 [TweenInfo.new]
       75 LOADK                            R6 K25 [0.5]
       76 GETIMPORT                        R7 K29 [Enum.EasingStyle.Quad]
       78 GETIMPORT                        R8 K32 [Enum.EasingDirection.InOut]
       80 LOADN                            R9 0
       81 LOADB                            R10 0
       82 CALL                             R5 5 1
       83 GETUPVAL                         R6 0
       84 MOVE                             R8 R3
       85 MOVE                             R9 R5
       86 MOVE                             R10 R4
       87 NAMECALL                         R6 R6 K33 ["Create"]
       89 CALL                             R6 4 1
       90 NAMECALL                         R7 R6 K34 ["Play"]
       92 CALL                             R7 1 0
       93 GETUPVAL                         R7 1
       94 MOVE                             R9 R3
       95 LOADK                            R10 K25 [0.5]
       96 NAMECALL                         R7 R7 K35 ["AddItem"]
       98 CALL                             R7 3 0
       99 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["onInputBegan"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["InputBegan"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["handler"]
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["handler"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 NAMECALL                         R2 R1 K1 ["Disconnect"]
        5 CALL                             R2 1 0
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K0 ["handler"]
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["CoreGui"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K2 [game]
       13 LOADK                            R4 K5 ["Players"]
       14 NAMECALL                         R2 R2 K4 ["GetService"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K2 [game]
       19 LOADK                            R5 K6 ["TweenService"]
       20 NAMECALL                         R3 R3 K4 ["GetService"]
       22 CALL                             R3 2 1
       23 GETIMPORT                        R4 K2 [game]
       25 LOADK                            R6 K7 ["Debris"]
       26 NAMECALL                         R4 R4 K4 ["GetService"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K2 [game]
       31 LOADK                            R7 K8 ["UserInputService"]
       32 NAMECALL                         R5 R5 K4 ["GetService"]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K9 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R6 R0 K10 ["new"]
       41 DUPCLOSURE                       R6 K11 [PROTO_2]
       42 SETTABLEKS                       R6 R0 K12 ["onInputBegan"]
       44 DUPCLOSURE                       R6 K13 [PROTO_3]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R6 R0 K14 ["click"]
       49 DUPCLOSURE                       R6 K15 [PROTO_5]
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R6 R0 K16 ["enable"]
       53 DUPCLOSURE                       R6 K17 [PROTO_6]
       54 SETTABLEKS                       R6 R0 K18 ["disable"]
       56 RETURN                           R0 1

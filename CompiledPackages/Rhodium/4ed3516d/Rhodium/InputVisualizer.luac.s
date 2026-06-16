PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 GETTABLEKS                       R0 R0 K1 ["CoreGui"]
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
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["LocalPlayer"]
       15 JUMPIF                           R3 ; [+1]
       16 JUMPBACK                         ; [-8]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["LocalPlayer"]
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
       14 GETTABLEKS                       R5 R1 K9 ["Position"]
       16 GETTABLEKS                       R5 R5 K10 ["X"]
       18 GETTABLEKS                       R6 R1 K9 ["Position"]
       20 GETTABLEKS                       R6 R6 K11 ["Y"]
       22 CALL                             R4 2 -1
       23 NAMECALL                         R2 R0 K12 ["click"]
       25 CALL                             R2 -1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["handler"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 LOADNIL                          R3
        6 JUMPIFNOTEQKNIL                  R3 ; [+34]
        8 GETIMPORT                        R4 K3 [Instance.new]
       10 LOADK                            R5 K4 ["ImageLabel"]
       11 CALL                             R4 1 1
       12 MOVE                             R3 R4
       13 LOADK                            R4 K5 ["rbxassetid://1549893588"]
       14 SETTABLEKS                       R4 R3 K6 ["Image"]
       16 LOADN                            R4 1
       17 SETTABLEKS                       R4 R3 K7 ["BackgroundTransparency"]
       19 JUMPIFNOT                        R2 ; [+2]
       20 MOVE                             R4 R2
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R4 R0 K8 ["guiRoot"]
       24 SETTABLEKS                       R4 R3 K9 ["Parent"]
       26 GETIMPORT                        R4 K11 [UDim2.new]
       28 LOADN                            R5 0
       29 LOADN                            R6 20
       30 LOADN                            R7 0
       31 LOADN                            R8 20
       32 CALL                             R4 4 1
       33 SETTABLEKS                       R4 R3 K12 ["Size"]
       35 LOADK                            R4 K13 ["MouseClick"]
       36 SETTABLEKS                       R4 R3 K14 ["Name"]
       38 LOADN                            R4 10
       39 SETTABLEKS                       R4 R3 K15 ["ZIndex"]
       41 LOADB                            R4 1
       42 SETTABLEKS                       R4 R3 K16 ["Visible"]
       44 GETIMPORT                        R4 K11 [UDim2.new]
       46 LOADN                            R5 0
       47 GETTABLEKS                       R7 R1 K17 ["X"]
       49 GETTABLEKS                       R9 R3 K12 ["Size"]
       51 GETTABLEKS                       R9 R9 K17 ["X"]
       53 GETTABLEKS                       R9 R9 K19 ["Offset"]
       55 DIVK                             R8 R9 K18 [2]
       56 SUB                              R6 R7 R8
       57 LOADN                            R7 0
       58 GETTABLEKS                       R9 R1 K20 ["Y"]
       60 GETTABLEKS                       R11 R3 K12 ["Size"]
       62 GETTABLEKS                       R11 R11 K20 ["Y"]
       64 GETTABLEKS                       R11 R11 K19 ["Offset"]
       66 DIVK                             R10 R11 K18 [2]
       67 SUB                              R8 R9 R10
       68 CALL                             R4 4 1
       69 SETTABLEKS                       R4 R3 K21 ["Position"]
       71 LOADN                            R4 0
       72 SETTABLEKS                       R4 R3 K22 ["ImageTransparency"]
       74 DUPTABLE                         R4 K23 [{"ImageTransparency"}]
       75 LOADN                            R5 1
       76 SETTABLEKS                       R5 R4 K22 ["ImageTransparency"]
       78 GETIMPORT                        R5 K25 [TweenInfo.new]
       80 LOADK                            R6 K26 [0.5]
       81 GETIMPORT                        R7 K30 [Enum.EasingStyle.Quad]
       83 GETIMPORT                        R8 K33 [Enum.EasingDirection.InOut]
       85 LOADN                            R9 0
       86 LOADB                            R10 0
       87 CALL                             R5 5 1
       88 GETUPVAL                         R6 0
       89 MOVE                             R8 R3
       90 MOVE                             R9 R5
       91 MOVE                             R10 R4
       92 NAMECALL                         R6 R6 K34 ["Create"]
       94 CALL                             R6 4 1
       95 NAMECALL                         R7 R6 K35 ["Play"]
       97 CALL                             R7 1 0
       98 GETUPVAL                         R7 1
       99 MOVE                             R9 R3
      100 LOADK                            R10 K26 [0.5]
      101 NAMECALL                         R7 R7 K36 ["AddItem"]
      103 CALL                             R7 3 0
      104 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["onInputBegan"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputBegan"]
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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["TweenService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Debris"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["UserInputService"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 NEWTABLE                         R5 8 0
       33 SETTABLEKS                       R5 R5 K8 ["__index"]
       35 DUPCLOSURE                       R6 K9 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R5
       39 SETTABLEKS                       R6 R5 K10 ["new"]
       41 DUPCLOSURE                       R6 K11 [PROTO_2]
       42 SETTABLEKS                       R6 R5 K12 ["onInputBegan"]
       44 DUPCLOSURE                       R6 K13 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 SETTABLEKS                       R6 R5 K14 ["click"]
       49 DUPCLOSURE                       R6 K15 [PROTO_5]
       50 CAPTURE                          VAL R4
       51 SETTABLEKS                       R6 R5 K16 ["enable"]
       53 DUPCLOSURE                       R6 K17 [PROTO_6]
       54 SETTABLEKS                       R6 R5 K18 ["disable"]
       56 RETURN                           R5 1

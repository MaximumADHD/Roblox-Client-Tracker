PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ImageLabel"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["rbxasset://textures/ui/Input/TouchControlsSheetV2.png"]
        5 SETTABLEKS                       R1 R0 K5 ["Image"]
        7 GETIMPORT                        R1 K7 [Vector2.new]
        9 LOADN                            R2 1
       10 LOADN                            R3 1
       11 CALL                             R1 2 1
       12 SETTABLEKS                       R1 R0 K8 ["ImageRectOffset"]
       14 GETIMPORT                        R1 K7 [Vector2.new]
       16 LOADN                            R2 144
       17 LOADN                            R3 144
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K9 ["ImageRectSize"]
       21 GETIMPORT                        R1 K11 [Color3.new]
       23 LOADN                            R2 0
       24 LOADN                            R3 0
       25 LOADN                            R4 0
       26 CALL                             R1 3 1
       27 SETTABLEKS                       R1 R0 K12 ["ImageColor3"]
       29 LOADN                            R1 1
       30 SETTABLEKS                       R1 R0 K13 ["BackgroundTransparency"]
       32 GETIMPORT                        R1 K16 [UDim2.fromOffset]
       34 LOADN                            R2 48
       35 LOADN                            R3 48
       36 CALL                             R1 2 1
       37 SETTABLEKS                       R1 R0 K17 ["Size"]
       39 GETIMPORT                        R1 K7 [Vector2.new]
       41 LOADK                            R2 K18 [0.5]
       42 LOADK                            R3 K18 [0.5]
       43 CALL                             R1 2 1
       44 SETTABLEKS                       R1 R0 K19 ["AnchorPoint"]
       46 GETUPVAL                         R1 0
       47 SETTABLEKS                       R1 R0 K20 ["Parent"]
       49 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetTouchPositionsAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+32]
        6 LENGTH                           R2 R1
        7 JUMPIFEQKN                       R2 K2 [0] ; [+26]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+23]
       11 GETUPVAL                         R2 2
       12 LOADB                            R3 1
       13 SETTABLEKS                       R3 R2 K3 ["Enabled"]
       15 GETIMPORT                        R2 K5 [ipairs]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 3
       19 FORGPREP_INEXT                   R2
       20 GETUPVAL                         R8 3
       21 GETTABLE                         R7 R8 R5
       22 GETIMPORT                        R8 K8 [UDim2.fromOffset]
       24 GETTABLEKS                       R9 R6 K9 ["X"]
       26 GETTABLEKS                       R10 R6 K10 ["Y"]
       28 CALL                             R8 2 1
       29 SETTABLEKS                       R8 R7 K11 ["Position"]
       31 FORGLOOP                         R2 2 [inext] ; [-12]
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 2
       35 LOADB                            R3 0
       36 SETTABLEKS                       R3 R2 K3 ["Enabled"]
       38 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 JUMP                             ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K0 ["Enabled"]
        8 SETUPVAL                         R0 2
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 LOADK                            R4 K0 ["StudioDeviceEmulator"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K2 ["MultiTouchGui"]
        6 NAMECALL                         R3 R3 K3 ["FindFirstChild"]
        8 CALL                             R3 2 1
        9 SETUPVAL                         R3 0
       10 GETUPVAL                         R3 0
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETUPVAL                         R3 0
       13 NAMECALL                         R3 R3 K4 ["Destroy"]
       15 CALL                             R3 1 0
       16 GETIMPORT                        R3 K7 [Instance.new]
       18 LOADK                            R4 K8 ["ScreenGui"]
       19 CALL                             R3 1 1
       20 SETUPVAL                         R3 0
       21 GETUPVAL                         R4 0
       22 FASTCALL1                        ASSERT R4 ; [+2]
       23 GETIMPORT                        R3 K10 [assert]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 0
       27 LOADK                            R4 K2 ["MultiTouchGui"]
       28 SETTABLEKS                       R4 R3 K11 ["Name"]
       30 GETUPVAL                         R3 0
       31 LOADN                            R4 100
       32 SETTABLEKS                       R4 R3 K12 ["DisplayOrder"]
       34 GETUPVAL                         R3 0
       35 GETIMPORT                        R4 K16 [Enum.ScreenInsets.None]
       37 SETTABLEKS                       R4 R3 K14 ["ScreenInsets"]
       39 GETUPVAL                         R3 0
       40 LOADB                            R4 0
       41 SETTABLEKS                       R4 R3 K17 ["Enabled"]
       43 GETUPVAL                         R3 0
       44 GETUPVAL                         R4 1
       45 SETTABLEKS                       R4 R3 K18 ["Parent"]
       47 NEWTABLE                         R3 0 2
       49 LOADB                            R4 0
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U0
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          VAL R2
       54 CAPTURE                          REF R4
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R3
       57 MOVE                             R7 R5
       58 CALL                             R7 0 1
       59 SETTABLEN                        R7 R3 1
       60 MOVE                             R7 R5
       61 CALL                             R7 0 1
       62 SETTABLEN                        R7 R3 2
       63 GETTABLEKS                       R7 R2 K19 ["MultiTouchEnabled"]
       65 NEWCLOSURE                       R9 P2
       66 CAPTURE                          VAL R6
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          REF R4
       69 NAMECALL                         R7 R7 K20 ["Connect"]
       71 CALL                             R7 2 1
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R8 R8 K21 ["RenderStepped"]
       75 NEWCLOSURE                       R10 P3
       76 CAPTURE                          REF R4
       77 CAPTURE                          VAL R6
       78 NAMECALL                         R8 R8 K20 ["Connect"]
       80 CALL                             R8 2 1
       81 GETTABLEKS                       R9 R0 K22 ["Unloading"]
       83 NEWCLOSURE                       R11 P4
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R8
       86 NAMECALL                         R9 R9 K20 ["Connect"]
       88 CALL                             R9 2 0
       89 CLOSEUPVALS                      R4
       90 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MultitouchEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["CoreGui"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K9 [game]
       22 LOADK                            R5 K12 ["RunService"]
       23 NAMECALL                         R3 R3 K11 ["GetService"]
       25 CALL                             R3 2 1
       26 LOADNIL                          R4
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          REF R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CLOSEUPVALS                      R4
       32 RETURN                           R5 1

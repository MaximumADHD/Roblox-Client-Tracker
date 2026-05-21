PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K3 ["Target"]
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETTABLEKS                       R2 R0 K0 ["props"]
       12 GETTABLEKS                       R2 R2 K4 ["IsSelectedInstanceValid"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+7]
       17 GETTABLEKS                       R2 R1 K5 ["Parent"]
       19 LOADK                            R4 K6 ["HumanoidRootPart"]
       20 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+1]
       24 RETURN                           R1 1
       25 GETTABLEKS                       R2 R1 K5 ["Parent"]
       27 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETTABLEKS                       R1 R0 K2 ["PrimaryPart"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 NAMECALL                         R1 R0 K3 ["GetPrimaryPartCFrame"]
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1
       12 GETIMPORT                        R1 K5 [warn]
       14 LOADK                            R2 K6 ["PreviewItemSelector: Model does not have a PrimaryPart set. Model will be ignored."]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K7 ["CFrame"]
       19 RETURN                           R1 1
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["SelectionDistance"]
        4 GETTABLEKS                       R5 R3 K2 ["IsSelectedInstanceValid"]
        6 GETIMPORT                        R6 K4 [game]
        8 GETTABLEKS                       R6 R6 K5 ["Workspace"]
       10 GETTABLEKS                       R6 R6 K6 ["CurrentCamera"]
       12 NAMECALL                         R7 R0 K7 ["getMouseTarget"]
       14 CALL                             R7 1 1
       15 JUMPIFEQKNIL                     R7 ; [+54]
       17 MOVE                             R8 R5
       18 MOVE                             R9 R7
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+49]
       21 LOADK                            R11 K8 ["Model"]
       22 NAMECALL                         R9 R7 K9 ["IsA"]
       24 CALL                             R9 2 1
       25 JUMPIFNOT                        R9 ; [+12]
       26 GETTABLEKS                       R9 R7 K10 ["PrimaryPart"]
       28 JUMPIFNOT                        R9 ; [+4]
       29 NAMECALL                         R8 R7 K11 ["GetPrimaryPartCFrame"]
       31 CALL                             R8 1 1
       32 JUMP                             ; [+9]
       33 GETIMPORT                        R9 K13 [warn]
       35 LOADK                            R10 K14 ["PreviewItemSelector: Model does not have a PrimaryPart set. Model will be ignored."]
       36 CALL                             R9 1 0
       37 JUMP                             ; [+3]
       38 GETTABLEKS                       R8 R7 K15 ["CFrame"]
       40 JUMP                             ; [+1]
       41 LOADNIL                          R8
       42 JUMPIFNOT                        R8 ; [+27]
       43 GETTABLEKS                       R10 R8 K16 ["p"]
       45 GETTABLEKS                       R11 R6 K15 ["CFrame"]
       47 GETTABLEKS                       R11 R11 K16 ["p"]
       49 SUB                              R9 R10 R11
       50 GETTABLEKS                       R9 R9 K17 ["Magnitude"]
       52 JUMPIFNOTLE                      R9 R4 ; [+17]
       54 DUPTABLE                         R11 K19 [{"isEquipped"}]
       55 GETTABLEKS                       R12 R0 K0 ["props"]
       57 GETTABLEKS                       R12 R12 K20 ["IsEquipped"]
       59 MOVE                             R13 R7
       60 CALL                             R12 1 1
       61 SETTABLEKS                       R12 R11 K18 ["isEquipped"]
       63 NAMECALL                         R9 R0 K21 ["setState"]
       65 CALL                             R9 2 0
       66 MOVE                             R9 R1
       67 MOVE                             R10 R7
       68 CALL                             R9 1 0
       69 RETURN                           R0 0
       70 MOVE                             R8 R2
       71 MOVE                             R9 R7
       72 CALL                             R8 1 0
       73 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 MOVE                             R4 R0
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["Set"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 0
        3 NAMECALL                         R0 R0 K0 ["Set"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"hoverPart"}]
        2 SETTABLEKS                       R0 R3 K0 ["hoverPart"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"hoverPart", "hovered"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["hoverPart"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["hovered"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"temp"}]
        2 NEWTABLE                         R3 0 0
        4 SETTABLEKS                       R3 R2 K0 ["temp"]
        6 NAMECALL                         R0 R0 K2 ["setState"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"hoverPart", "isEquipped", "hovered"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["hoverPart"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isEquipped"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["hovered"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K5 ["selectedItem"]
       15 DUPCLOSURE                       R1 K6 [PROTO_3]
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K7 ["selectInstance"]
       19 DUPCLOSURE                       R1 K8 [PROTO_4]
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K9 ["deselect"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K10 ["highlightInstance"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U1
       30 SETTABLEKS                       R1 R0 K11 ["removeHighlight"]
       32 GETIMPORT                        R1 K13 [game]
       34 GETTABLEKS                       R1 R1 K14 ["Workspace"]
       36 GETTABLEKS                       R1 R1 K15 ["CurrentCamera"]
       38 LOADK                            R3 K16 ["CFrame"]
       39 NAMECALL                         R1 R1 K17 ["GetPropertyChangedSignal"]
       41 CALL                             R1 2 1
       42 NEWCLOSURE                       R3 P4
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R1 R1 K18 ["Connect"]
       46 CALL                             R1 2 1
       47 SETTABLEKS                       R1 R0 K19 ["cameraMoved"]
       49 GETIMPORT                        R1 K22 [Instance.new]
       51 LOADK                            R2 K23 ["ScreenGui"]
       52 CALL                             R1 1 1
       53 SETTABLEKS                       R1 R0 K23 ["ScreenGui"]
       55 GETTABLEKS                       R1 R0 K23 ["ScreenGui"]
       57 GETUPVAL                         R2 2
       58 SETTABLEKS                       R2 R1 K24 ["Parent"]
       60 GETTABLEKS                       R1 R0 K23 ["ScreenGui"]
       62 LOADK                            R2 K25 ["PreviewSelectorGUI"]
       63 SETTABLEKS                       R2 R1 K26 ["Name"]
       65 GETUPVAL                         R1 3
       66 GETTABLEKS                       R1 R1 K21 ["new"]
       68 GETTABLEKS                       R2 R0 K23 ["ScreenGui"]
       70 CALL                             R1 1 1
       71 SETTABLEKS                       R1 R0 K27 ["focus"]
       73 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["buttonDown"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 NEWTABLE                         R2 0 0
        7 NAMECALL                         R0 R0 K1 ["Set"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["highlightInstance"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["removeHighlight"]
        7 NAMECALL                         R1 R1 K2 ["selectValidInstance"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectionChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["SelectionChangedHandle"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K3 ["Heartbeat"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 NAMECALL                         R1 R1 K1 ["Connect"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K3 ["Heartbeat"]
       21 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["hoverPart"]
        4 GETIMPORT                        R3 K3 [game]
        6 GETTABLEKS                       R3 R3 K4 ["Workspace"]
        8 GETTABLEKS                       R3 R3 K5 ["CurrentCamera"]
       10 LOADNIL                          R4
       11 JUMPIFNOT                        R2 ; [+28]
       12 LOADK                            R8 K6 ["Model"]
       13 NAMECALL                         R6 R2 K7 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+12]
       17 GETTABLEKS                       R6 R2 K8 ["PrimaryPart"]
       19 JUMPIFNOT                        R6 ; [+4]
       20 NAMECALL                         R5 R2 K9 ["GetPrimaryPartCFrame"]
       22 CALL                             R5 1 1
       23 JUMP                             ; [+9]
       24 GETIMPORT                        R6 K11 [warn]
       26 LOADK                            R7 K12 ["PreviewItemSelector: Model does not have a PrimaryPart set. Model will be ignored."]
       27 CALL                             R6 1 0
       28 JUMP                             ; [+3]
       29 GETTABLEKS                       R5 R2 K13 ["CFrame"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 JUMPIFNOT                        R5 ; [+6]
       34 GETTABLEKS                       R8 R5 K14 ["p"]
       36 NAMECALL                         R6 R3 K15 ["WorldToScreenPoint"]
       38 CALL                             R6 2 1
       39 MOVE                             R4 R6
       40 RETURN                           R4 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R2 K2 ["hoverPart"]
        6 JUMPIF                           R3 ; [+2]
        7 LOADN                            R4 0
        8 RETURN                           R4 1
        9 LOADK                            R7 K3 ["Model"]
       10 NAMECALL                         R5 R3 K4 ["IsA"]
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+12]
       14 GETTABLEKS                       R5 R3 K5 ["PrimaryPart"]
       16 JUMPIFNOT                        R5 ; [+4]
       17 NAMECALL                         R4 R3 K6 ["GetPrimaryPartCFrame"]
       19 CALL                             R4 1 1
       20 JUMP                             ; [+9]
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R6 K9 ["PreviewItemSelector: Model does not have a PrimaryPart set. Model will be ignored."]
       24 CALL                             R5 1 0
       25 JUMP                             ; [+3]
       26 GETTABLEKS                       R4 R3 K10 ["CFrame"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 JUMPIF                           R4 ; [+2]
       31 LOADN                            R5 0
       32 RETURN                           R5 1
       33 GETTABLEKS                       R5 R1 K11 ["Stylizer"]
       35 GETTABLEKS                       R6 R1 K12 ["SelectionDistance"]
       37 GETTABLEKS                       R7 R5 K13 ["MinRadius"]
       39 GETTABLEKS                       R8 R5 K14 ["MaxRadius"]
       41 GETIMPORT                        R9 K16 [game]
       43 GETTABLEKS                       R9 R9 K17 ["Workspace"]
       45 GETTABLEKS                       R9 R9 K18 ["CurrentCamera"]
       47 GETTABLEKS                       R11 R4 K19 ["p"]
       49 GETTABLEKS                       R12 R9 K10 ["CFrame"]
       51 GETTABLEKS                       R12 R12 K19 ["p"]
       53 SUB                              R10 R11 R12
       54 GETTABLEKS                       R10 R10 K20 ["Magnitude"]
       56 DIV                              R13 R10 R6
       57 LOADN                            R14 0
       58 LOADN                            R15 1
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R12 K24 [math.clamp]
       62 CALL                             R12 3 1
       63 SUBRK                            R11 R21 K12 ["SelectionDistance"]
       64 SUB                              R14 R8 R7
       65 MUL                              R13 R14 R11
       66 ADD                              R12 R7 R13
       67 RETURN                           R12 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnValidSelection"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["TooltipText"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R2 K4 ["isEquipped"]
       10 NAMECALL                         R6 R0 K5 ["getIconPosition"]
       12 CALL                             R6 1 1
       13 NAMECALL                         R7 R0 K6 ["getIconRadius"]
       15 CALL                             R7 1 1
       16 GETTABLEKS                       R8 R2 K7 ["hoverPart"]
       18 NEWTABLE                         R9 0 0
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R10 R10 K8 ["createElement"]
       24 GETUPVAL                         R11 1
       25 DUPTABLE                         R12 K10 [{"Text"}]
       26 SETTABLEKS                       R3 R12 K9 ["Text"]
       28 CALL                             R10 2 1
       29 SETTABLEKS                       R10 R9 K11 ["Tooltip"]
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 JUMPIFNOT                        R5 ; [+5]
       34 GETTABLEKS                       R10 R4 K12 ["EquippedIcon"]
       36 GETTABLEKS                       R11 R4 K13 ["EquippedColor"]
       38 JUMP                             ; [+4]
       39 GETTABLEKS                       R10 R4 K14 ["UnequippedIcon"]
       41 GETTABLEKS                       R11 R4 K15 ["UnequippedColor"]
       43 GETTABLEKS                       R12 R4 K16 ["DefaultColor"]
       45 GETUPVAL                         R13 0
       46 GETTABLEKS                       R13 R13 K8 ["createElement"]
       48 LOADK                            R14 K17 ["ImageButton"]
       49 NEWTABLE                         R15 16 0
       51 GETIMPORT                        R16 K20 [UDim2.fromOffset]
       53 MOVE                             R17 R7
       54 MOVE                             R18 R7
       55 CALL                             R16 2 1
       56 SETTABLEKS                       R16 R15 K21 ["Size"]
       58 GETIMPORT                        R16 K20 [UDim2.fromOffset]
       60 GETTABLEKS                       R17 R6 K22 ["x"]
       62 GETTABLEKS                       R18 R6 K23 ["y"]
       64 CALL                             R16 2 1
       65 SETTABLEKS                       R16 R15 K24 ["Position"]
       67 GETIMPORT                        R16 K27 [Vector2.new]
       69 LOADK                            R17 K28 [0.5]
       70 LOADK                            R18 K28 [0.5]
       71 CALL                             R16 2 1
       72 SETTABLEKS                       R16 R15 K29 ["AnchorPoint"]
       74 LOADN                            R16 1
       75 SETTABLEKS                       R16 R15 K30 ["BackgroundTransparency"]
       77 SETTABLEKS                       R10 R15 K31 ["Image"]
       79 GETTABLEKS                       R17 R0 K1 ["state"]
       81 GETTABLEKS                       R17 R17 K32 ["hovered"]
       83 JUMPIFNOT                        R17 ; [+2]
       84 MOVE                             R16 R11
       85 JUMP                             ; [+1]
       86 MOVE                             R16 R12
       87 SETTABLEKS                       R16 R15 K33 ["ImageColor3"]
       89 GETUPVAL                         R16 0
       90 GETTABLEKS                       R16 R16 K34 ["Event"]
       92 GETTABLEKS                       R16 R16 K35 ["MouseButton1Click"]
       94 NEWCLOSURE                       R17 P0
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R5
       98 SETTABLE                         R17 R15 R16
       99 GETUPVAL                         R16 0
      100 GETTABLEKS                       R16 R16 K34 ["Event"]
      102 GETTABLEKS                       R16 R16 K36 ["MouseEnter"]
      104 NEWCLOSURE                       R17 P1
      105 CAPTURE                          VAL R0
      106 SETTABLE                         R17 R15 R16
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R16 R16 K34 ["Event"]
      110 GETTABLEKS                       R16 R16 K37 ["MouseLeave"]
      112 NEWCLOSURE                       R17 P2
      113 CAPTURE                          VAL R0
      114 SETTABLE                         R17 R15 R16
      115 MOVE                             R16 R9
      116 CALL                             R13 3 -1
      117 RETURN                           R13 -1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R1 K1 ["hoverPart"]
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+32]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["provide"]
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K3 ["focus"]
       14 SETLIST                          R4 R5 1 [1]
       16 DUPTABLE                         R5 K5 [{"Child"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K6 ["createElement"]
       20 GETUPVAL                         R7 1
       21 GETTABLEKS                       R7 R7 K7 ["Portal"]
       23 DUPTABLE                         R8 K9 [{"target"}]
       24 GETTABLEKS                       R9 R0 K10 ["ScreenGui"]
       26 SETTABLEKS                       R9 R8 K8 ["target"]
       28 DUPTABLE                         R9 K12 [{"Button"}]
       29 NAMECALL                         R10 R0 K13 ["renderButton"]
       31 CALL                             R10 1 1
       32 SETTABLEKS                       R10 R9 K11 ["Button"]
       34 CALL                             R6 3 1
       35 SETTABLEKS                       R6 R5 K4 ["Child"]
       37 CALL                             R3 2 1
       38 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["cameraMoved"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["cameraMoved"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["Heartbeat"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["Heartbeat"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["SelectionChangedHandle"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["SelectionChangedHandle"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["ScreenGui"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["ScreenGui"]
       29 NAMECALL                         R1 R1 K5 ["Destroy"]
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETTABLEKS                       R6 R4 K9 ["Focus"]
       25 GETIMPORT                        R7 K11 [game]
       27 LOADK                            R9 K12 ["RunService"]
       28 NAMECALL                         R7 R7 K13 ["GetService"]
       30 CALL                             R7 2 1
       31 GETIMPORT                        R8 K11 [game]
       33 LOADK                            R10 K14 ["CoreGui"]
       34 NAMECALL                         R8 R8 K13 ["GetService"]
       36 CALL                             R8 2 1
       37 GETIMPORT                        R9 K11 [game]
       39 LOADK                            R11 K15 ["Selection"]
       40 NAMECALL                         R9 R9 K13 ["GetService"]
       42 CALL                             R9 2 1
       43 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       45 LOADK                            R12 K17 ["PreviewItemSelector"]
       46 NAMECALL                         R10 R10 K18 ["extend"]
       48 CALL                             R10 2 1
       49 GETTABLEKS                       R11 R3 K19 ["UI"]
       51 GETTABLEKS                       R11 R11 K20 ["Tooltip"]
       53 GETTABLEKS                       R12 R3 K21 ["Util"]
       55 GETTABLEKS                       R13 R12 K22 ["Typecheck"]
       57 GETTABLEKS                       R14 R13 K23 ["wrap"]
       59 MOVE                             R15 R10
       60 GETIMPORT                        R16 K1 [script]
       62 CALL                             R14 2 0
       63 DUPTABLE                         R14 K25 [{"SelectionDistance"}]
       64 LOADN                            R15 20
       65 SETTABLEKS                       R15 R14 K24 ["SelectionDistance"]
       67 SETTABLEKS                       R14 R10 K26 ["defaultProps"]
       69 DUPCLOSURE                       R14 K27 [PROTO_0]
       70 SETTABLEKS                       R14 R10 K28 ["getMouseTarget"]
       72 DUPCLOSURE                       R14 K29 [PROTO_1]
       73 DUPCLOSURE                       R15 K30 [PROTO_2]
       74 SETTABLEKS                       R15 R10 K31 ["selectValidInstance"]
       76 DUPCLOSURE                       R15 K32 [PROTO_8]
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R15 R10 K33 ["init"]
       83 DUPCLOSURE                       R15 K34 [PROTO_11]
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R7
       86 SETTABLEKS                       R15 R10 K35 ["didMount"]
       88 DUPCLOSURE                       R15 K36 [PROTO_12]
       89 SETTABLEKS                       R15 R10 K37 ["getIconPosition"]
       91 DUPCLOSURE                       R15 K38 [PROTO_13]
       92 SETTABLEKS                       R15 R10 K39 ["getIconRadius"]
       94 DUPCLOSURE                       R15 K40 [PROTO_17]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R15 R10 K41 ["renderButton"]
       99 DUPCLOSURE                       R15 K42 [PROTO_18]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R2
      102 SETTABLEKS                       R15 R10 K43 ["render"]
      104 DUPCLOSURE                       R15 K44 [PROTO_19]
      105 SETTABLEKS                       R15 R10 K45 ["willUnmount"]
      107 MOVE                             R15 R5
      108 DUPTABLE                         R16 K50 [{"Stylizer", "Localization", "Mouse", "Plugin"}]
      109 GETTABLEKS                       R17 R4 K46 ["Stylizer"]
      111 SETTABLEKS                       R17 R16 K46 ["Stylizer"]
      113 GETTABLEKS                       R17 R4 K47 ["Localization"]
      115 SETTABLEKS                       R17 R16 K47 ["Localization"]
      117 GETTABLEKS                       R17 R4 K48 ["Mouse"]
      119 SETTABLEKS                       R17 R16 K48 ["Mouse"]
      121 GETTABLEKS                       R17 R4 K49 ["Plugin"]
      123 SETTABLEKS                       R17 R16 K49 ["Plugin"]
      125 CALL                             R15 1 1
      126 MOVE                             R16 R10
      127 CALL                             R15 1 1
      128 MOVE                             R10 R15
      129 RETURN                           R10 1

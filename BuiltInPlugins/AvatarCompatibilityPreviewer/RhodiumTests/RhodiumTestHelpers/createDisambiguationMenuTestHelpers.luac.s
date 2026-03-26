PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["subWindows"]
        3 CALL                             R1 0 1
        4 GETTABLEN                        R0 R1 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSubWindow"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 LOADK                            R3 K0 ["MainContainer"]
        1 LOADB                            R4 1
        2 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        4 CALL                             R1 3 1
        5 MOVE                             R2 R1
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADK                            R4 K2 ["ScrollArea"]
        8 LOADB                            R5 1
        9 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       11 CALL                             R2 3 1
       12 MOVE                             R3 R2
       13 JUMPIFNOT                        R3 ; [+5]
       14 LOADK                            R5 K3 ["Content"]
       15 LOADB                            R6 1
       16 NAMECALL                         R3 R2 K1 ["FindFirstChild"]
       18 CALL                             R3 3 1
       19 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+49]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["getSubWindow"]
        6 CALL                             R2 0 1
        7 LOADK                            R5 K1 ["MainContainer"]
        8 LOADB                            R6 1
        9 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       11 CALL                             R3 3 1
       12 MOVE                             R4 R3
       13 JUMPIFNOT                        R4 ; [+5]
       14 LOADK                            R6 K3 ["ScrollArea"]
       15 LOADB                            R7 1
       16 NAMECALL                         R4 R3 K2 ["FindFirstChild"]
       18 CALL                             R4 3 1
       19 MOVE                             R1 R4
       20 JUMPIFNOT                        R1 ; [+6]
       21 LOADK                            R7 K4 ["Content"]
       22 LOADB                            R8 1
       23 NAMECALL                         R5 R4 K2 ["FindFirstChild"]
       25 CALL                             R5 3 1
       26 MOVE                             R1 R5
       27 JUMPIF                           R1 ; [+2]
       28 LOADNIL                          R2
       29 RETURN                           R2 1
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K5 ["within"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R2 R3 K6 ["queryByText"]
       37 MOVE                             R3 R0
       38 CALL                             R2 1 1
       39 JUMPIF                           R2 ; [+2]
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 MOVE                             R3 R2
       43 JUMPIFNOT                        R3 ; [+7]
       44 GETTABLEKS                       R4 R3 K7 ["Parent"]
       46 JUMPIFEQ                         R4 R1 ; [+4]
       48 GETTABLEKS                       R3 R3 K7 ["Parent"]
       50 JUMPBACK                         ; [-8]
       51 RETURN                           R3 1
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K0 ["getSubWindow"]
       55 CALL                             R7 0 1
       56 GETTABLEKS                       R6 R7 K8 ["SolidBackground"]
       58 GETTABLEKS                       R5 R6 K9 ["Contents"]
       60 GETTABLEKS                       R4 R5 K9 ["Contents"]
       62 GETTABLEKS                       R3 R4 K9 ["Contents"]
       64 GETTABLEKS                       R2 R3 K10 ["Scroller"]
       66 GETTABLE                         R1 R2 R0
       67 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getEntry"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+10]
       11 LOADK                            R4 K1 ["TextLabel"]
       12 NAMECALL                         R2 R1 K2 ["FindFirstChildWhichIsA"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETTABLEKS                       R3 R2 K3 ["Text"]
       18 JUMPIF                           R3 ; [+1]
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 LOADK                            R4 K4 ["ItemNames"]
       22 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       24 CALL                             R2 2 1
       25 JUMPIF                           R2 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 LOADK                            R5 K6 ["Warning"]
       29 NAMECALL                         R3 R2 K5 ["FindFirstChild"]
       31 CALL                             R3 2 1
       32 MOVE                             R4 R3
       33 JUMPIFNOT                        R4 ; [+2]
       34 GETTABLEKS                       R4 R3 K3 ["Text"]
       36 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getEntry"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+36]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R1 ; [+12]
       13 LOADK                            R6 K1 ["Row"]
       14 NAMECALL                         R4 R2 K2 ["FindFirstChild"]
       16 CALL                             R4 2 1
       17 MOVE                             R5 R4
       18 JUMPIFNOT                        R5 ; [+4]
       19 LOADK                            R7 K3 ["AssetInfo"]
       20 NAMECALL                         R5 R4 K2 ["FindFirstChild"]
       22 CALL                             R5 2 1
       23 MOVE                             R3 R5
       24 JUMP                             ; [+5]
       25 LOADK                            R6 K3 ["AssetInfo"]
       26 NAMECALL                         R4 R2 K2 ["FindFirstChild"]
       28 CALL                             R4 2 1
       29 MOVE                             R3 R4
       30 MOVE                             R4 R3
       31 JUMPIFNOT                        R4 ; [+4]
       32 LOADK                            R6 K4 ["AssetTypeSubtitle"]
       33 NAMECALL                         R4 R3 K2 ["FindFirstChild"]
       35 CALL                             R4 2 1
       36 JUMPIFNOT                        R4 ; [+8]
       37 LOADK                            R8 K5 ["TextLabel"]
       38 NAMECALL                         R6 R4 K6 ["IsA"]
       40 CALL                             R6 2 1
       41 JUMPIFNOT                        R6 ; [+3]
       42 GETTABLEKS                       R5 R4 K7 ["Text"]
       44 JUMPIF                           R5 ; [+1]
       45 LOADNIL                          R5
       46 RETURN                           R5 1
       47 LOADK                            R5 K8 ["ItemNames"]
       48 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       50 CALL                             R3 2 1
       51 JUMPIF                           R3 ; [+2]
       52 LOADNIL                          R4
       53 RETURN                           R4 1
       54 LOADK                            R6 K9 ["Subtitle"]
       55 NAMECALL                         R4 R3 K2 ["FindFirstChild"]
       57 CALL                             R4 2 1
       58 JUMPIFNOT                        R4 ; [+8]
       59 LOADK                            R8 K5 ["TextLabel"]
       60 NAMECALL                         R6 R4 K6 ["IsA"]
       62 CALL                             R6 2 1
       63 JUMPIFNOT                        R6 ; [+3]
       64 GETTABLEKS                       R5 R4 K7 ["Text"]
       66 JUMPIF                           R5 ; [+1]
       67 LOADNIL                          R5
       68 RETURN                           R5 1

PROTO_6:
        0 LOADK                            R3 K0 ["TextButton"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETTABLEKS                       R1 R0 K2 ["Text"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R2 R0 K2 ["Text"]
       10 LENGTH                           R1 R2
       11 LOADN                            R2 0
       12 JUMPIFNOTLT                      R2 R1 ; [+4]
       14 GETTABLEKS                       R1 R0 K2 ["Text"]
       16 RETURN                           R1 1
       17 LOADK                            R3 K3 ["Label"]
       18 NAMECALL                         R1 R0 K4 ["FindFirstChild"]
       20 CALL                             R1 2 1
       21 JUMPIFNOT                        R1 ; [+9]
       22 LOADK                            R4 K5 ["TextLabel"]
       23 NAMECALL                         R2 R1 K1 ["IsA"]
       25 CALL                             R2 2 1
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETTABLEKS                       R3 R1 K2 ["Text"]
       29 ORK                              R2 R3 K6 [""]
       30 RETURN                           R2 1
       31 NAMECALL                         R2 R0 K7 ["GetChildren"]
       33 CALL                             R2 1 3
       34 FORGPREP                         R2
       35 LOADK                            R9 K5 ["TextLabel"]
       36 NAMECALL                         R7 R6 K1 ["IsA"]
       38 CALL                             R7 2 1
       39 JUMPIFNOT                        R7 ; [+16]
       40 GETTABLEKS                       R7 R6 K2 ["Text"]
       42 JUMPIFNOT                        R7 ; [+13]
       43 GETTABLEKS                       R8 R6 K2 ["Text"]
       45 LENGTH                           R7 R8
       46 LOADN                            R8 0
       47 JUMPIFNOTLT                      R8 R7 ; [+8]
       49 GETTABLEKS                       R7 R6 K2 ["Text"]
       51 JUMPIFEQKS                       R7 K8 ["check"] ; [+4]
       53 GETTABLEKS                       R7 R6 K2 ["Text"]
       55 RETURN                           R7 1
       56 FORGLOOP                         R2 2 ; [-22]
       58 LOADK                            R2 K6 [""]
       59 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["clickWithoutValidation"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R4 K0 ["GuiObject"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+2]
        5 MOVE                             R1 R0
        6 JUMPIF                           R1 ; [+1]
        7 LOADNIL                          R1
        8 JUMPIFNOT                        R1 ; [+17]
        9 GETTABLEKS                       R4 R1 K2 ["AbsoluteSize"]
       11 GETTABLEKS                       R3 R4 K3 ["X"]
       13 LOADN                            R4 1
       14 JUMPIFLT                         R3 R4 ; [+8]
       16 GETTABLEKS                       R4 R1 K2 ["AbsoluteSize"]
       18 GETTABLEKS                       R3 R4 K4 ["Y"]
       20 LOADN                            R4 1
       21 JUMPIFNOTLT                      R3 R4 ; [+4]
       23 GETTABLEKS                       R2 R1 K5 ["Size"]
       25 JUMPIF                           R2 ; [+1]
       26 LOADNIL                          R2
       27 JUMPIFNOT                        R2 ; [+8]
       28 JUMPIFNOT                        R1 ; [+7]
       29 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       31 LOADN                            R4 50
       32 LOADN                            R5 24
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R1 K5 ["Size"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K9 ["act"]
       39 NEWCLOSURE                       R4 P0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 CALL                             R3 1 0
       43 JUMPIFNOT                        R2 ; [+6]
       44 JUMPIFNOT                        R1 ; [+5]
       45 GETTABLEKS                       R3 R1 K10 ["Parent"]
       47 JUMPIFNOT                        R3 ; [+2]
       48 SETTABLEKS                       R2 R1 K5 ["Size"]
       50 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["within"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R2 R3 K1 ["queryAllByTestId"]
        9 LOADK                            R3 K2 ["--foundation-menu-item"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 LOADK                            R11 K3 ["TextButton"]
       16 NAMECALL                         R9 R7 K4 ["IsA"]
       18 CALL                             R9 2 1
       19 JUMPIF                           R9 ; [+5]
       20 LOADK                            R11 K5 ["ImageButton"]
       21 NAMECALL                         R9 R7 K4 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIFNOT                        R9 ; [+2]
       25 MOVE                             R8 R7
       26 JUMPIF                           R8 ; [+11]
       27 LOADK                            R10 K3 ["TextButton"]
       28 LOADB                            R11 1
       29 NAMECALL                         R8 R7 K6 ["FindFirstChildWhichIsA"]
       31 CALL                             R8 3 1
       32 JUMPIF                           R8 ; [+5]
       33 LOADK                            R10 K5 ["ImageButton"]
       34 LOADB                            R11 1
       35 NAMECALL                         R8 R7 K6 ["FindFirstChildWhichIsA"]
       37 CALL                             R8 3 1
       38 JUMPIFNOT                        R8 ; [+7]
       39 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       41 MOVE                             R10 R1
       42 MOVE                             R11 R8
       43 GETIMPORT                        R9 K9 [table.insert]
       45 CALL                             R9 2 0
       46 FORGLOOP                         R3 2 ; [-32]
       48 NEWTABLE                         R3 0 0
       50 MOVE                             R4 R1
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 GETUPVAL                         R9 1
       55 MOVE                             R10 R8
       56 CALL                             R9 1 1
       57 LENGTH                           R10 R9
       58 JUMPIFNOTEQKN                    R10 K10 [0] ; [+8]
       60 LOADK                            R10 K11 ["Option"]
       61 FASTCALL1                        TOSTRING R7 ; [+3]
       62 MOVE                             R12 R7
       63 GETIMPORT                        R11 K13 [tostring]
       65 CALL                             R11 1 1
       66 CONCAT                           R9 R10 R11
       67 LENGTH                           R10 R3
       68 JUMPIFNOTEQKN                    R10 K10 [0] ; [+5]
       70 JUMPIFEQKS                       R9 K14 ["Button"] ; [+17]
       72 JUMPIFEQKS                       R9 K15 ["check"] ; [+15]
       74 DUPTABLE                         R12 K18 [{"label", "click"}]
       75 SETTABLEKS                       R9 R12 K16 ["label"]
       77 NEWCLOSURE                       R13 P0
       78 CAPTURE                          UPVAL U2
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R13 R12 K17 ["click"]
       82 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       84 MOVE                             R11 R3
       85 GETIMPORT                        R10 K9 [table.insert]
       87 CALL                             R10 2 0
       88 FORGLOOP                         R4 2 ; [-35]
       90 NEWTABLE                         R4 0 0
       92 MOVE                             R5 R3
       93 LOADNIL                          R6
       94 LOADNIL                          R7
       95 FORGPREP                         R5
       96 GETTABLEKS                       R10 R9 K16 ["label"]
       98 JUMPIFEQKS                       R10 K19 ["Option1"] ; [+12]
      100 GETTABLEKS                       R10 R9 K16 ["label"]
      102 JUMPIFEQKS                       R10 K20 ["Option2"] ; [+8]
      104 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      106 MOVE                             R11 R4
      107 MOVE                             R12 R9
      108 GETIMPORT                        R10 K9 [table.insert]
      110 CALL                             R10 2 0
      111 FORGLOOP                         R5 2 ; [-16]
      113 LENGTH                           R6 R4
      114 LOADN                            R7 0
      115 JUMPIFNOTLT                      R7 R6 ; [+3]
      117 MOVE                             R5 R4
      118 JUMPIF                           R5 ; [+1]
      119 MOVE                             R5 R3
      120 RETURN                           R5 1

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getByTestId"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["--foundation-dropdown--control"]
        5 CALL                             R1 2 1
        6 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K2 ["Foundation dropdown control not found (testId --foundation-dropdown--control)"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K5 ["getSubWindow"]
       16 CALL                             R2 0 1
       17 LOADK                            R4 K6 ["Overlay"]
       18 LOADB                            R5 1
       19 NAMECALL                         R2 R2 K7 ["FindFirstChild"]
       21 CALL                             R2 3 1
       22 FASTCALL2K                       ASSERT R2 K8 ; [+5]
       24 MOVE                             R4 R2
       25 LOADK                            R5 K8 ["Overlay not found (OverlayProvider should have a child named Overlay)"]
       26 GETIMPORT                        R3 K4 [assert]
       28 CALL                             R3 2 0
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R1
       31 CALL                             R3 1 0
       32 GETUPVAL                         R4 3
       33 GETTABLEKS                       R3 R4 K9 ["act"]
       35 DUPCLOSURE                       R4 K10 [PROTO_11]
       36 CALL                             R3 1 0
       37 LOADNIL                          R3
       38 NAMECALL                         R4 R2 K11 ["GetDescendants"]
       40 CALL                             R4 1 3
       41 FORGPREP                         R4
       42 LOADK                            R11 K12 ["Frame"]
       43 NAMECALL                         R9 R8 K13 ["IsA"]
       45 CALL                             R9 2 1
       46 JUMPIF                           R9 ; [+5]
       47 LOADK                            R11 K14 ["GuiObject"]
       48 NAMECALL                         R9 R8 K13 ["IsA"]
       50 CALL                             R9 2 1
       51 JUMPIFNOT                        R9 ; [+24]
       52 LOADK                            R11 K15 ["Content"]
       53 NAMECALL                         R9 R8 K7 ["FindFirstChild"]
       55 CALL                             R9 2 1
       56 JUMPIFNOT                        R9 ; [+19]
       57 NAMECALL                         R10 R9 K11 ["GetDescendants"]
       59 CALL                             R10 1 3
       60 FORGPREP                         R10
       61 LOADK                            R17 K16 ["TextButton"]
       62 NAMECALL                         R15 R14 K13 ["IsA"]
       64 CALL                             R15 2 1
       65 JUMPIF                           R15 ; [+5]
       66 LOADK                            R17 K17 ["ImageButton"]
       67 NAMECALL                         R15 R14 K13 ["IsA"]
       69 CALL                             R15 2 1
       70 JUMPIFNOT                        R15 ; [+2]
       71 MOVE                             R3 R9
       72 JUMP                             ; [+2]
       73 FORGLOOP                         R10 2 ; [-13]
       75 JUMPIF                           R3 ; [+2]
       76 FORGLOOP                         R4 2 ; [-35]
       78 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       80 MOVE                             R5 R3
       81 LOADK                            R6 K18 ["Dropdown menu not found after click (ensure menu mounts under Overlay)"]
       82 GETIMPORT                        R4 K4 [assert]
       84 CALL                             R4 2 0
       85 GETUPVAL                         R4 4
       86 MOVE                             R5 R3
       87 CALL                             R4 1 1
       88 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Element"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetChildren"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 GETUPVAL                         R5 1
        6 JUMPIFEQ                         R4 R5 ; [+9]
        8 LOADK                            R7 K1 ["Frame"]
        9 NAMECALL                         R5 R4 K2 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+3]
       13 LOADB                            R5 0
       14 SETTABLEKS                       R5 R4 K3 ["Visible"]
       16 FORGLOOP                         R0 2 ; [-12]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R0 R1 K4 ["act"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["SelectInput"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["act"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R8 2
       10 GETTABLEKS                       R7 R8 K2 ["getSubWindow"]
       12 CALL                             R7 0 1
       13 GETTABLEKS                       R6 R7 K3 ["TopLevelDetector"]
       15 GETTABLEKS                       R5 R6 K4 ["ScrollBlocker"]
       17 GETTABLEKS                       R4 R5 K5 ["Menu"]
       19 GETTABLEKS                       R3 R4 K6 ["Contents"]
       21 GETTABLEKS                       R2 R3 K7 ["Container"]
       23 NEWTABLE                         R3 0 0
       25 NAMECALL                         R4 R2 K8 ["GetChildren"]
       27 CALL                             R4 1 3
       28 FORGPREP                         R4
       29 LOADK                            R11 K9 ["Frame"]
       30 NAMECALL                         R9 R8 K10 ["IsA"]
       32 CALL                             R9 2 1
       33 JUMPIFNOT                        R9 ; [+26]
       34 GETTABLEKS                       R10 R8 K6 ["Contents"]
       36 GETTABLEKS                       R9 R10 K11 ["TextButton"]
       38 GETTABLEKS                       R11 R8 K12 ["Name"]
       40 FASTCALL1                        TONUMBER R11 ; [+2]
       41 GETIMPORT                        R10 K14 [tonumber]
       43 CALL                             R10 1 1
       44 DUPTABLE                         R11 K17 [{"label", "click"}]
       45 GETTABLEKS                       R13 R9 K18 ["Label"]
       47 GETTABLEKS                       R12 R13 K19 ["Text"]
       49 SETTABLEKS                       R12 R11 K15 ["label"]
       51 NEWCLOSURE                       R12 P1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R8
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R9
       57 SETTABLEKS                       R12 R11 K16 ["click"]
       59 SETTABLE                         R11 R3 R10
       60 FORGLOOP                         R4 2 ; [-32]
       62 RETURN                           R3 1

PROTO_17:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["label"]
        6 MOVE                             R9 R1
        7 NAMECALL                         R7 R7 K1 ["match"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+4]
       11 GETTABLEKS                       R7 R6 K2 ["click"]
       13 CALL                             R7 0 0
       14 RETURN                           R0 0
       15 FORGLOOP                         R2 2 ; [-12]
       17 NEWTABLE                         R2 0 2
       19 LOADK                            R4 K3 ["Couldn't find dropdown entry that matched pattern \"%*\""]
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 LOADK                            R4 K5 ["Found the following labels:"]
       26 SETLIST                          R2 R3 2 [1]
       28 MOVE                             R3 R0
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 LOADK                            R11 K6 ["- %*"]
       33 GETTABLEKS                       R13 R7 K0 ["label"]
       35 NAMECALL                         R11 R11 K4 ["format"]
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       41 MOVE                             R9 R2
       42 GETIMPORT                        R8 K9 [table.insert]
       44 CALL                             R8 2 0
       45 FORGLOOP                         R3 2 ; [-14]
       47 GETIMPORT                        R3 K11 [error]
       49 GETIMPORT                        R4 K13 [table.concat]
       51 MOVE                             R5 R2
       52 LOADK                            R6 K14 ["\n"]
       53 CALL                             R4 2 -1
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["openDropdown"]
       10 GETTABLEKS                       R4 R0 K1 ["Children"]
       12 GETTABLEKS                       R3 R4 K2 ["Dropdown"]
       14 GETTABLEKS                       R2 R3 K3 ["DropdownMenu"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K0 ["openDropdown"]
       10 GETTABLEKS                       R4 R0 K1 ["Children"]
       12 GETTABLEKS                       R3 R4 K1 ["Children"]
       14 GETTABLEKS                       R2 R3 K2 ["AssetTypeDropdown"]
       16 CALL                             R1 1 -1
       17 RETURN                           R1 -1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 LOADK                            R4 K0 ["AttachmentDropdown"]
        4 LOADB                            R5 1
        5 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
        7 CALL                             R2 3 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1
       13 GETTABLEKS                       R3 R0 K2 ["Children"]
       15 GETTABLEKS                       R2 R3 K2 ["Children"]
       17 LOADK                            R4 K0 ["AttachmentDropdown"]
       18 NAMECALL                         R2 R2 K1 ["FindFirstChild"]
       20 CALL                             R2 2 1
       21 JUMPIFNOTEQKNIL                  R2 ; [+2]
       23 LOADB                            R1 0 +1
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+16]
        3 LOADK                            R3 K0 ["AttachmentDropdown"]
        4 LOADB                            R4 1
        5 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        7 CALL                             R1 3 1
        8 FASTCALL2K                       ASSERT R1 K2 ; [+5]
       10 MOVE                             R3 R1
       11 LOADK                            R4 K2 ["AttachmentDropdown not found in entry"]
       12 GETIMPORT                        R2 K4 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 CALL                             R2 1 1
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R1 R2 K5 ["openDropdown"]
       22 GETTABLEKS                       R4 R0 K6 ["Children"]
       24 GETTABLEKS                       R3 R4 K6 ["Children"]
       26 GETTABLEKS                       R2 R3 K0 ["AttachmentDropdown"]
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clickStyledDialogButton"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getSubWindow"]
        6 CALL                             R1 0 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+52]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["getSubWindow"]
        6 CALL                             R0 0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["within"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K2 ["getByText"]
       14 LOADK                            R3 K3 ["Save"]
       15 DUPTABLE                         R4 K5 [{"exact"}]
       16 LOADB                            R5 0
       17 SETTABLEKS                       R5 R4 K4 ["exact"]
       19 CALL                             R2 2 1
       20 LOADK                            R6 K6 ["TextButton"]
       21 NAMECALL                         R4 R2 K7 ["IsA"]
       23 CALL                             R4 2 1
       24 JUMPIF                           R4 ; [+5]
       25 LOADK                            R6 K8 ["ImageButton"]
       26 NAMECALL                         R4 R2 K7 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+2]
       30 MOVE                             R3 R2
       31 JUMP                             ; [+2]
       32 GETTABLEKS                       R3 R2 K9 ["Parent"]
       34 MOVE                             R5 R3
       35 JUMPIFNOT                        R5 ; [+9]
       36 LOADK                            R7 K6 ["TextButton"]
       37 NAMECALL                         R5 R3 K7 ["IsA"]
       39 CALL                             R5 2 1
       40 JUMPIF                           R5 ; [+4]
       41 LOADK                            R7 K8 ["ImageButton"]
       42 NAMECALL                         R5 R3 K7 ["IsA"]
       44 CALL                             R5 2 1
       45 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       47 LOADK                            R6 K10 ["Save button not found (label 'Save')"]
       48 GETIMPORT                        R4 K12 [assert]
       50 CALL                             R4 2 0
       51 GETUPVAL                         R4 3
       52 MOVE                             R5 R3
       53 CALL                             R4 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R1 4
       56 GETTABLEKS                       R0 R1 K13 ["act"]
       58 NEWCLOSURE                       R1 P0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R1 16 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 SETTABLEKS                       R2 R1 K0 ["isOpen"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K1 ["getSubWindow"]
       10 DUPCLOSURE                       R2 K2 [PROTO_2]
       11 NEWCLOSURE                       R3 P3
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R3 R1 K3 ["getEntry"]
       17 NEWCLOSURE                       R3 P4
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U0
       20 SETTABLEKS                       R3 R1 K4 ["getWarningText"]
       22 NEWCLOSURE                       R3 P5
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R3 R1 K5 ["getEntrySubtitleText"]
       27 DUPCLOSURE                       R3 K6 [PROTO_6]
       28 DUPCLOSURE                       R4 K7 [PROTO_8]
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 DUPCLOSURE                       R5 K8 [PROTO_10]
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 NEWCLOSURE                       R6 P9
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R5
       41 NEWCLOSURE                       R7 P10
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R1
       45 SETTABLEKS                       R7 R1 K9 ["openDropdown"]
       47 DUPCLOSURE                       R7 K10 [PROTO_17]
       48 SETTABLEKS                       R7 R1 K11 ["clickMatchingDropdownEntry"]
       50 NEWCLOSURE                       R7 P12
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R1 K12 ["openAmbiguousAssetTypeDropdown"]
       56 NEWCLOSURE                       R7 P13
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R7 R1 K13 ["openLoneMeshPartAssetTypeDropdown"]
       62 DUPCLOSURE                       R7 K14 [PROTO_20]
       63 CAPTURE                          UPVAL U0
       64 SETTABLEKS                       R7 R1 K15 ["attachmentDropdownExists"]
       66 NEWCLOSURE                       R7 P15
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R7 R1 K16 ["openAttachmentDropdown"]
       72 NEWCLOSURE                       R7 P16
       73 CAPTURE                          UPVAL U0
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R7 R1 K17 ["clickOk"]
       81 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Packages"]
       18 GETTABLEKS                       R4 R5 K8 ["Dev"]
       20 GETTABLEKS                       R3 R4 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K8 ["Dev"]
       29 GETTABLEKS                       R4 R5 K10 ["Rhodium"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R7 K12 ["Flags"]
       38 GETTABLEKS                       R5 R6 K13 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K14 [PROTO_24]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 RETURN                           R5 1

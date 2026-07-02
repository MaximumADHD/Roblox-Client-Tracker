PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["subWindows"]
        3 CALL                             R1 0 1
        4 GETTABLEN                        R0 R1 1
        5 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSubWindow"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getSubWindow"]
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
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K5 ["within"]
       33 MOVE                             R3 R1
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R2 R2 K6 ["queryByText"]
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
       52 GETUPVAL                         R2 1
       53 GETTABLEKS                       R2 R2 K0 ["getSubWindow"]
       55 CALL                             R2 0 1
       56 GETTABLEKS                       R2 R2 K8 ["SolidBackground"]
       58 GETTABLEKS                       R2 R2 K9 ["Contents"]
       60 GETTABLEKS                       R2 R2 K9 ["Contents"]
       62 GETTABLEKS                       R2 R2 K9 ["Contents"]
       64 GETTABLEKS                       R2 R2 K10 ["Scroller"]
       66 GETTABLE                         R1 R2 R0
       67 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEntry"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getEntry"]
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
       31 NAMECALL                         R2 R0 K7 ["GetDescendants"]
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 DUPTABLE                         R2 K2 [{[1] = True}]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["within"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K1 ["queryAllByTestId"]
        9 LOADK                            R3 K2 ["--foundation-menu-item"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R2
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 LOADK                            R11 K3 ["GuiButton"]
       16 NAMECALL                         R9 R7 K4 ["IsA"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+2]
       20 MOVE                             R8 R7
       21 JUMP                             ; [+5]
       22 LOADK                            R10 K3 ["GuiButton"]
       23 LOADB                            R11 1
       24 NAMECALL                         R8 R7 K5 ["FindFirstChildWhichIsA"]
       26 CALL                             R8 3 1
       27 JUMPIFNOT                        R8 ; [+7]
       28 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       30 MOVE                             R10 R1
       31 MOVE                             R11 R8
       32 GETIMPORT                        R9 K8 [table.insert]
       34 CALL                             R9 2 0
       35 FORGLOOP                         R3 2 ; [-21]
       37 NEWTABLE                         R3 0 0
       39 MOVE                             R4 R1
       40 LOADNIL                          R5
       41 LOADNIL                          R6
       42 FORGPREP                         R4
       43 GETUPVAL                         R9 1
       44 MOVE                             R10 R8
       45 CALL                             R9 1 1
       46 LENGTH                           R10 R9
       47 JUMPIFNOTEQKN                    R10 K9 [0] ; [+8]
       49 LOADK                            R10 K10 ["Option"]
       50 FASTCALL1                        TOSTRING R7 ; [+3]
       51 MOVE                             R12 R7
       52 GETIMPORT                        R11 K12 [tostring]
       54 CALL                             R11 1 1
       55 CONCAT                           R9 R10 R11
       56 LENGTH                           R10 R3
       57 JUMPIFNOTEQKN                    R10 K9 [0] ; [+5]
       59 JUMPIFEQKS                       R9 K13 ["Button"] ; [+17]
       61 JUMPIFEQKS                       R9 K14 ["check"] ; [+15]
       63 DUPTABLE                         R12 K17 [{"label", "click"}]
       64 SETTABLEKS                       R9 R12 K15 ["label"]
       66 NEWCLOSURE                       R13 P0
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R13 R12 K16 ["click"]
       71 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       73 MOVE                             R11 R3
       74 GETIMPORT                        R10 K8 [table.insert]
       76 CALL                             R10 2 0
       77 FORGLOOP                         R4 2 ; [-35]
       79 NEWTABLE                         R4 0 0
       81 MOVE                             R5 R3
       82 LOADNIL                          R6
       83 LOADNIL                          R7
       84 FORGPREP                         R5
       85 GETTABLEKS                       R10 R9 K15 ["label"]
       87 JUMPIFEQKS                       R10 K18 ["Option1"] ; [+12]
       89 GETTABLEKS                       R10 R9 K15 ["label"]
       91 JUMPIFEQKS                       R10 K19 ["Option2"] ; [+8]
       93 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       95 MOVE                             R11 R4
       96 MOVE                             R12 R9
       97 GETIMPORT                        R10 K8 [table.insert]
       99 CALL                             R10 2 0
      100 FORGLOOP                         R5 2 ; [-16]
      102 LENGTH                           R6 R4
      103 LOADN                            R7 0
      104 JUMPIFNOTLT                      R7 R6 ; [+3]
      106 MOVE                             R5 R4
      107 JUMPIF                           R5 ; [+1]
      108 MOVE                             R5 R3
      109 RETURN                           R5 1

PROTO_9:
        0 MOVE                             R3 R1
        1 LOADK                            R4 K0 ["--control"]
        2 CONCAT                           R2 R3 R4
        3 MOVE                             R4 R1
        4 LOADK                            R5 K1 ["--menu"]
        5 CONCAT                           R3 R4 R5
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["getByTestId"]
        9 MOVE                             R5 R0
       10 MOVE                             R6 R2
       11 CALL                             R4 2 1
       12 MOVE                             R6 R4
       13 JUMPIFNOT                        R6 ; [+4]
       14 LOADK                            R8 K3 ["GuiButton"]
       15 NAMECALL                         R6 R4 K4 ["IsA"]
       17 CALL                             R6 2 1
       18 LOADK                            R8 K5 ["Dropdown control \"%*\" is not a GuiButton"]
       19 MOVE                             R10 R2
       20 NAMECALL                         R8 R8 K6 ["format"]
       22 CALL                             R8 2 1
       23 MOVE                             R7 R8
       24 FASTCALL2                        ASSERT R6 R7 ; [+3]
       26 GETIMPORT                        R5 K8 [assert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K9 ["within"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R6 R6 K10 ["getSubWindow"]
       38 CALL                             R6 0 -1
       39 CALL                             R5 -1 1
       40 GETTABLEKS                       R5 R5 K11 ["findByTestId"]
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 NAMECALL                         R5 R5 K12 ["expect"]
       46 CALL                             R5 1 1
       47 GETUPVAL                         R6 3
       48 MOVE                             R7 R5
       49 CALL                             R6 1 1
       50 RETURN                           R6 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Element"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 1
        7 NAMECALL                         R0 R0 K2 ["click"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
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
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K4 ["act"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["SelectInput"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["act"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["getSubWindow"]
       12 CALL                             R2 0 1
       13 GETTABLEKS                       R2 R2 K3 ["TopLevelDetector"]
       15 GETTABLEKS                       R2 R2 K4 ["ScrollBlocker"]
       17 GETTABLEKS                       R2 R2 K5 ["Menu"]
       19 GETTABLEKS                       R2 R2 K6 ["Contents"]
       21 GETTABLEKS                       R2 R2 K7 ["Container"]
       23 NEWTABLE                         R3 0 0
       25 NAMECALL                         R4 R2 K8 ["GetChildren"]
       27 CALL                             R4 1 3
       28 FORGPREP                         R4
       29 LOADK                            R11 K9 ["Frame"]
       30 NAMECALL                         R9 R8 K10 ["IsA"]
       32 CALL                             R9 2 1
       33 JUMPIFNOT                        R9 ; [+26]
       34 GETTABLEKS                       R9 R8 K6 ["Contents"]
       36 GETTABLEKS                       R9 R9 K11 ["TextButton"]
       38 GETTABLEKS                       R11 R8 K12 ["Name"]
       40 FASTCALL1                        TONUMBER R11 ; [+2]
       41 GETIMPORT                        R10 K14 [tonumber]
       43 CALL                             R10 1 1
       44 DUPTABLE                         R11 K17 [{"label", "click"}]
       45 GETTABLEKS                       R12 R9 K18 ["Label"]
       47 GETTABLEKS                       R12 R12 K19 ["Text"]
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 LOADK                            R3 K0 ["ambiguous-asset-type"]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["openDropdown"]
       11 GETTABLEKS                       R2 R0 K2 ["Children"]
       13 GETTABLEKS                       R2 R2 K3 ["Dropdown"]
       15 GETTABLEKS                       R2 R2 K4 ["DropdownMenu"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 LOADK                            R3 K0 ["lone-mesh-part-asset-type"]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["openDropdown"]
       11 GETTABLEKS                       R2 R0 K2 ["Children"]
       13 GETTABLEKS                       R2 R2 K2 ["Children"]
       15 GETTABLEKS                       R2 R2 K3 ["AssetTypeDropdown"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+14]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["within"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R2 R2 K1 ["queryByTestId"]
       10 LOADK                            R3 K2 ["lone-mesh-part-attachment--control"]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R2 R0 K3 ["Children"]
       19 GETTABLEKS                       R2 R2 K3 ["Children"]
       21 LOADK                            R4 K4 ["AttachmentDropdown"]
       22 NAMECALL                         R2 R2 K5 ["FindFirstChild"]
       24 CALL                             R2 2 1
       25 JUMPIFNOTEQKNIL                  R2 ; [+2]
       27 LOADB                            R1 0 +1
       28 LOADB                            R1 1
       29 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 LOADK                            R3 K0 ["lone-mesh-part-attachment"]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["openDropdown"]
       11 GETTABLEKS                       R2 R0 K2 ["Children"]
       13 GETTABLEKS                       R2 R2 K2 ["Children"]
       15 GETTABLEKS                       R2 R2 K3 ["AttachmentDropdown"]
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clickStyledDialogButton"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["getSubWindow"]
        6 CALL                             R1 0 1
        7 LOADN                            R2 2
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["clickButtonInDialog"]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["getSubWindow"]
        9 CALL                             R1 0 1
       10 LOADK                            R2 K2 ["Save"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K3 ["act"]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_21:
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
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U2
       32 NEWCLOSURE                       R5 P8
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 NEWCLOSURE                       R6 P9
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R6 R1 K8 ["openDropdown"]
       43 DUPCLOSURE                       R6 K9 [PROTO_14]
       44 SETTABLEKS                       R6 R1 K10 ["clickMatchingDropdownEntry"]
       46 NEWCLOSURE                       R6 P11
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 SETTABLEKS                       R6 R1 K11 ["openAmbiguousAssetTypeDropdown"]
       52 NEWCLOSURE                       R6 P12
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R6 R1 K12 ["openLoneMeshPartAssetTypeDropdown"]
       58 DUPCLOSURE                       R6 K13 [PROTO_17]
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          UPVAL U1
       61 SETTABLEKS                       R6 R1 K14 ["attachmentDropdownExists"]
       63 NEWCLOSURE                       R6 P14
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 SETTABLEKS                       R6 R1 K15 ["openAttachmentDropdown"]
       69 NEWCLOSURE                       R6 P15
       70 CAPTURE                          UPVAL U0
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U3
       74 SETTABLEKS                       R6 R1 K16 ["clickOk"]
       76 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["ReactRoblox"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dev"]
       20 GETTABLEKS                       R3 R3 K9 ["ReactTestingLibrary"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Dev"]
       29 GETTABLEKS                       R4 R4 K10 ["Rhodium"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["RhodiumTests"]
       36 GETTABLEKS                       R5 R5 K12 ["RhodiumTestHelpers"]
       38 GETTABLEKS                       R5 R5 K13 ["clickFoundationButton"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K14 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagAvatarPreviewerUpdateDialogUI"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K17 [PROTO_21]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1

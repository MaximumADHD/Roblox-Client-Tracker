PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 LOADK                            R2 K2 ["PointingHand"]
       12 NAMECALL                         R0 R0 K3 ["__pushCursor"]
       14 CALL                             R0 2 0
       15 GETUPVAL                         R0 0
       16 DUPTABLE                         R2 K5 [{"hovering"}]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["hovering"]
       20 NAMECALL                         R0 R0 K6 ["setState"]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Mouse"]
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["Mouse"]
       11 NAMECALL                         R0 R0 K2 ["__popCursor"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 DUPTABLE                         R2 K4 [{"hovering"}]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K3 ["hovering"]
       19 NAMECALL                         R0 R0 K5 ["setState"]
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"showMenu"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K3 ["hideMenu"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K4 ["mouseEnter"]
       18 NEWCLOSURE                       R1 P3
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K5 ["mouseLeave"]
       22 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Mouse"]
        4 NAMECALL                         R1 R1 K2 ["__resetCursor"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnTrackSelected"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnTrackSelected"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["Instance"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["Name"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["Type"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [ipairs]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 DUPTABLE                         R10 K4 [{"Name", "ItemSelected"}]
        8 GETTABLEKS                       R11 R7 K2 ["Name"]
       10 SETTABLEKS                       R11 R10 K2 ["Name"]
       12 NEWCLOSURE                       R11 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R7
       15 SETTABLEKS                       R11 R10 K3 ["ItemSelected"]
       17 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       19 MOVE                             R9 R2
       20 GETIMPORT                        R8 K7 [table.insert]
       22 CALL                             R8 2 0
       23 FORGLOOP                         R3 2 [inext] ; [-17]
       25 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnTrackSelected"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnTrackSelected"]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R1 R2 K2 ["Instance"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K3 ["Name"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["Type"]
       20 CALL                             R0 3 0
       21 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["Facs"]
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K3 ["props"]
       10 GETTABLEKS                       R5 R6 K4 ["OnTrackSelected"]
       12 GETTABLEKS                       R6 R4 K5 ["Instance"]
       14 GETTABLEKS                       R7 R4 K6 ["Name"]
       16 GETTABLEKS                       R8 R4 K7 ["Type"]
       18 CALL                             R5 3 0
       19 FORGLOOP                         R0 2 [inext] ; [-13]
       21 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 NEWTABLE                         R4 0 0
        8 LOADB                            R5 0
        9 GETIMPORT                        R6 K3 [ipairs]
       11 GETTABLEKS                       R7 R1 K4 ["Facs"]
       13 CALL                             R6 1 3
       14 FORGPREP_INEXT                   R6
       15 GETUPVAL                         R13 0
       16 GETTABLEKS                       R12 R13 K5 ["FacsControlToRegionMap"]
       18 GETTABLEKS                       R13 R10 K6 ["Name"]
       20 GETTABLE                         R11 R12 R13
       21 JUMPIF                           R11 ; [+5]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R12 R13 K7 ["FACS_REGIONS"]
       25 GETTABLEKS                       R11 R12 K8 ["Other"]
       27 GETTABLE                         R12 R4 R11
       28 JUMPIF                           R12 ; [+3]
       29 NEWTABLE                         R12 0 0
       31 SETTABLE                         R12 R4 R11
       32 GETTABLE                         R13 R4 R11
       33 FASTCALL2                        TABLE_INSERT R13 R10 ; [+4]
       35 MOVE                             R14 R10
       36 GETIMPORT                        R12 K11 [table.insert]
       38 CALL                             R12 2 0
       39 LOADB                            R5 1
       40 FORGLOOP                         R6 2 [inext] ; [-26]
       42 JUMPIFNOT                        R5 ; [+86]
       43 GETUPVAL                         R8 1
       44 GETTABLEKS                       R7 R8 K12 ["Dictionary"]
       46 GETTABLEKS                       R6 R7 K13 ["keys"]
       48 MOVE                             R7 R4
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K15 [table.sort]
       52 MOVE                             R8 R6
       53 CALL                             R7 1 0
       54 GETIMPORT                        R7 K3 [ipairs]
       56 MOVE                             R8 R6
       57 CALL                             R7 1 3
       58 FORGPREP_INEXT                   R7
       59 GETTABLE                         R12 R4 R11
       60 JUMPIFNOT                        R12 ; [+38]
       61 DUPTABLE                         R12 K17 [{"Text"}]
       62 LOADK                            R15 K18 ["Menu"]
       63 MOVE                             R16 R11
       64 NAMECALL                         R13 R2 K19 ["getText"]
       66 CALL                             R13 3 1
       67 SETTABLEKS                       R13 R12 K16 ["Text"]
       69 GETIMPORT                        R13 K3 [ipairs]
       71 GETTABLE                         R14 R4 R11
       72 CALL                             R13 1 3
       73 FORGPREP_INEXT                   R13
       74 DUPTABLE                         R20 K21 [{"Text", "OnItemClicked"}]
       75 GETTABLEKS                       R21 R17 K6 ["Name"]
       77 SETTABLEKS                       R21 R20 K16 ["Text"]
       79 NEWCLOSURE                       R21 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R17
       82 SETTABLEKS                       R21 R20 K20 ["OnItemClicked"]
       84 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
       86 MOVE                             R19 R12
       87 GETIMPORT                        R18 K11 [table.insert]
       89 CALL                             R18 2 0
       90 FORGLOOP                         R13 2 [inext] ; [-17]
       92 FASTCALL2                        TABLE_INSERT R3 R12 ; [+5]
       94 MOVE                             R14 R3
       95 MOVE                             R15 R12
       96 GETIMPORT                        R13 K11 [table.insert]
       98 CALL                             R13 2 0
       99 FORGLOOP                         R7 2 [inext] ; [-41]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R9 R10 K22 ["MENU_SEPARATOR"]
      104 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      106 MOVE                             R8 R3
      107 GETIMPORT                        R7 K11 [table.insert]
      109 CALL                             R7 2 0
      110 DUPTABLE                         R9 K21 [{"Text", "OnItemClicked"}]
      111 LOADK                            R12 K18 ["Menu"]
      112 LOADK                            R13 K23 ["AddAllFacs"]
      113 NAMECALL                         R10 R2 K19 ["getText"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K16 ["Text"]
      118 NEWCLOSURE                       R10 P1
      119 CAPTURE                          VAL R1
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R10 R9 K20 ["OnItemClicked"]
      123 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
      125 MOVE                             R8 R3
      126 GETIMPORT                        R7 K11 [table.insert]
      128 CALL                             R7 2 0
      129 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnTrackSelected"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["Instance"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["Name"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K4 ["Type"]
       14 CALL                             R0 3 0
       15 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R1 R3 K2 ["Tracks"]
        5 CALL                             R0 1 3
        6 FORGPREP_INEXT                   R0
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K3 ["props"]
       10 GETTABLEKS                       R5 R6 K4 ["OnTrackSelected"]
       12 GETTABLEKS                       R6 R4 K5 ["Instance"]
       14 GETTABLEKS                       R7 R4 K6 ["Name"]
       16 GETTABLEKS                       R8 R4 K7 ["Type"]
       18 CALL                             R5 3 0
       19 FORGLOOP                         R0 2 [inext] ; [-13]
       21 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [ipairs]
        8 GETTABLEKS                       R5 R1 K4 ["Tracks"]
       10 CALL                             R4 1 3
       11 FORGPREP_INEXT                   R4
       12 DUPTABLE                         R11 K7 [{"Text", "OnItemClicked"}]
       13 GETTABLEKS                       R12 R8 K8 ["Name"]
       15 SETTABLEKS                       R12 R11 K5 ["Text"]
       17 NEWCLOSURE                       R12 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R8
       20 SETTABLEKS                       R12 R11 K6 ["OnItemClicked"]
       22 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       24 MOVE                             R10 R3
       25 GETIMPORT                        R9 K11 [table.insert]
       27 CALL                             R9 2 0
       28 FORGLOOP                         R4 2 [inext] ; [-17]
       30 GETTABLEKS                       R5 R1 K4 ["Tracks"]
       32 LENGTH                           R4 R5
       33 LOADN                            R5 0
       34 JUMPIFNOTLT                      R5 R4 ; [+38]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R6 R7 K12 ["MENU_SEPARATOR"]
       39 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       41 MOVE                             R5 R3
       42 GETIMPORT                        R4 K11 [table.insert]
       44 CALL                             R4 2 0
       45 DUPTABLE                         R6 K7 [{"Text", "OnItemClicked"}]
       46 LOADK                            R9 K13 ["Menu"]
       47 LOADK                            R10 K14 ["AddAllTracks"]
       48 NAMECALL                         R7 R2 K15 ["getText"]
       50 CALL                             R7 3 1
       51 SETTABLEKS                       R7 R6 K5 ["Text"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R7 R6 K6 ["OnItemClicked"]
       58 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K11 [table.insert]
       63 CALL                             R4 2 0
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K12 ["MENU_SEPARATOR"]
       67 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       69 MOVE                             R5 R3
       70 GETIMPORT                        R4 K11 [table.insert]
       72 CALL                             R4 2 0
       73 GETUPVAL                         R5 1
       74 GETTABLEKS                       R4 R5 K16 ["getFaceControls"]
       76 GETTABLEKS                       R6 R0 K0 ["props"]
       78 GETTABLEKS                       R5 R6 K17 ["RootInstance"]
       80 CALL                             R4 1 1
       81 JUMPIFNOT                        R4 ; [+17]
       82 NAMECALL                         R5 R0 K18 ["makeFacialAnimationRegionSubMenu"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K20 [pairs]
       87 MOVE                             R7 R5
       88 CALL                             R6 1 3
       89 FORGPREP_NEXT                    R6
       90 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       92 MOVE                             R12 R3
       93 MOVE                             R13 R10
       94 GETIMPORT                        R11 K11 [table.insert]
       96 CALL                             R11 2 0
       97 FORGLOOP                         R6 2 ; [-8]
       99 RETURN                           R3 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R3 K3 ["showMenu"]
        8 GETTABLEKS                       R5 R3 K4 ["hovering"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["Position"]
       14 GETTABLEKS                       R8 R2 K7 ["trackTheme"]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K8 ["createElement"]
       19 LOADK                            R10 K9 ["ImageButton"]
       20 NEWTABLE                         R11 16 0
       22 SETTABLEKS                       R6 R11 K5 ["Size"]
       24 SETTABLEKS                       R7 R11 K6 ["Position"]
       26 GETIMPORT                        R12 K12 [Vector2.new]
       28 LOADN                            R13 1
       29 LOADK                            R14 K13 [0.5]
       30 CALL                             R12 2 1
       31 SETTABLEKS                       R12 R11 K14 ["AnchorPoint"]
       33 GETTABLEKS                       R12 R8 K15 ["addButtonBackground"]
       35 SETTABLEKS                       R12 R11 K16 ["Image"]
       37 JUMPIFNOT                        R5 ; [+3]
       38 GETTABLEKS                       R12 R8 K17 ["hoveredAddButtonColor"]
       40 JUMPIF                           R12 ; [+2]
       41 GETTABLEKS                       R12 R8 K18 ["addButtonColor"]
       43 SETTABLEKS                       R12 R11 K19 ["ImageColor3"]
       45 LOADN                            R12 1
       46 SETTABLEKS                       R12 R11 K20 ["BackgroundTransparency"]
       48 GETUPVAL                         R14 0
       49 GETTABLEKS                       R13 R14 K21 ["Event"]
       51 GETTABLEKS                       R12 R13 K22 ["Activated"]
       53 GETTABLEKS                       R13 R0 K3 ["showMenu"]
       55 SETTABLE                         R13 R11 R12
       56 GETUPVAL                         R14 0
       57 GETTABLEKS                       R13 R14 K21 ["Event"]
       59 GETTABLEKS                       R12 R13 K23 ["MouseEnter"]
       61 GETTABLEKS                       R13 R0 K24 ["mouseEnter"]
       63 SETTABLE                         R13 R11 R12
       64 GETUPVAL                         R14 0
       65 GETTABLEKS                       R13 R14 K21 ["Event"]
       67 GETTABLEKS                       R12 R13 K25 ["MouseLeave"]
       69 GETTABLEKS                       R13 R0 K26 ["mouseLeave"]
       71 SETTABLE                         R13 R11 R12
       72 DUPTABLE                         R12 K30 [{"PlusIcon", "TrackMenu", "Tooltip"}]
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R13 R14 K8 ["createElement"]
       76 LOADK                            R14 K31 ["ImageLabel"]
       77 DUPTABLE                         R15 K32 [{"Size", "Position", "AnchorPoint", "Image", "ImageColor3", "BackgroundTransparency"}]
       78 GETIMPORT                        R16 K34 [UDim2.new]
       80 LOADN                            R17 0
       81 LOADN                            R18 9
       82 LOADN                            R19 0
       83 LOADN                            R20 8
       84 CALL                             R16 4 1
       85 SETTABLEKS                       R16 R15 K5 ["Size"]
       87 GETIMPORT                        R16 K34 [UDim2.new]
       89 LOADK                            R17 K13 [0.5]
       90 LOADN                            R18 0
       91 LOADK                            R19 K13 [0.5]
       92 LOADN                            R20 0
       93 CALL                             R16 4 1
       94 SETTABLEKS                       R16 R15 K6 ["Position"]
       96 GETIMPORT                        R16 K12 [Vector2.new]
       98 LOADK                            R17 K13 [0.5]
       99 LOADK                            R18 K13 [0.5]
      100 CALL                             R16 2 1
      101 SETTABLEKS                       R16 R15 K14 ["AnchorPoint"]
      103 GETTABLEKS                       R16 R8 K35 ["plusIcon"]
      105 SETTABLEKS                       R16 R15 K16 ["Image"]
      107 JUMPIFNOT                        R5 ; [+3]
      108 GETTABLEKS                       R16 R8 K36 ["hoveredPlusIconColor"]
      110 JUMPIF                           R16 ; [+2]
      111 GETTABLEKS                       R16 R8 K37 ["plusIconColor"]
      113 SETTABLEKS                       R16 R15 K19 ["ImageColor3"]
      115 LOADN                            R16 1
      116 SETTABLEKS                       R16 R15 K20 ["BackgroundTransparency"]
      118 CALL                             R13 2 1
      119 SETTABLEKS                       R13 R12 K27 ["PlusIcon"]
      121 MOVE                             R13 R4
      122 JUMPIFNOT                        R13 ; [+15]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R13 R14 K8 ["createElement"]
      126 GETUPVAL                         R14 1
      127 DUPTABLE                         R15 K40 [{"Actions", "OnMenuOpened"}]
      128 NAMECALL                         R16 R0 K41 ["makeTrackActions"]
      130 CALL                             R16 1 1
      131 SETTABLEKS                       R16 R15 K38 ["Actions"]
      133 GETTABLEKS                       R16 R0 K42 ["hideMenu"]
      135 SETTABLEKS                       R16 R15 K39 ["OnMenuOpened"]
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K28 ["TrackMenu"]
      140 GETUPVAL                         R14 0
      141 GETTABLEKS                       R13 R14 K8 ["createElement"]
      143 GETUPVAL                         R14 2
      144 DUPTABLE                         R15 K44 [{"TextKey"}]
      145 LOADK                            R16 K45 ["AddTrackButton"]
      146 SETTABLEKS                       R16 R15 K43 ["TextKey"]
      148 CALL                             R13 2 1
      149 SETTABLEKS                       R13 R12 K29 ["Tooltip"]
      151 CALL                             R9 3 -1
      152 RETURN                           R9 -1

PROTO_15:
        0 DUPTABLE                         R2 K1 [{"RootInstance"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["RootInstance"]
        5 SETTABLEKS                       R3 R2 K0 ["RootInstance"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["Cryo"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K6 ["Packages"]
       41 GETTABLEKS                       R6 R7 K13 ["RoactRodux"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K9 ["Src"]
       48 GETTABLEKS                       R8 R9 K14 ["Components"]
       50 GETTABLEKS                       R7 R8 K15 ["ContextMenu"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R10 R0 K9 ["Src"]
       57 GETTABLEKS                       R9 R10 K14 ["Components"]
       59 GETTABLEKS                       R8 R9 K16 ["Tooltip"]
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R2 K17 ["ContextServices"]
       64 GETTABLEKS                       R9 R8 K18 ["withContext"]
       66 GETIMPORT                        R10 K5 [require]
       68 GETTABLEKS                       R13 R0 K9 ["Src"]
       70 GETTABLEKS                       R12 R13 K10 ["Util"]
       72 GETTABLEKS                       R11 R12 K19 ["RigInfo"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R1 K20 ["PureComponent"]
       77 LOADK                            R13 K21 ["AddTrackButton"]
       78 NAMECALL                         R11 R11 K22 ["extend"]
       80 CALL                             R11 2 1
       81 DUPCLOSURE                       R12 K23 [PROTO_4]
       82 SETTABLEKS                       R12 R11 K24 ["init"]
       84 DUPCLOSURE                       R12 K25 [PROTO_5]
       85 SETTABLEKS                       R12 R11 K26 ["willUnmount"]
       87 DUPCLOSURE                       R12 K27 [PROTO_7]
       88 SETTABLEKS                       R12 R11 K28 ["makeFacialAnimationControlSubMenu"]
       90 DUPCLOSURE                       R12 K29 [PROTO_10]
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R12 R11 K30 ["makeFacialAnimationRegionSubMenu"]
       95 DUPCLOSURE                       R12 K31 [PROTO_13]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R10
       98 SETTABLEKS                       R12 R11 K32 ["makeTrackActions"]
      100 DUPCLOSURE                       R12 K33 [PROTO_14]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R12 R11 K34 ["render"]
      106 DUPCLOSURE                       R12 K35 [PROTO_15]
      107 MOVE                             R13 R9
      108 DUPTABLE                         R14 K39 [{"Stylizer", "Localization", "Mouse"}]
      109 GETTABLEKS                       R15 R8 K36 ["Stylizer"]
      111 SETTABLEKS                       R15 R14 K36 ["Stylizer"]
      113 GETTABLEKS                       R15 R8 K37 ["Localization"]
      115 SETTABLEKS                       R15 R14 K37 ["Localization"]
      117 GETTABLEKS                       R15 R8 K38 ["Mouse"]
      119 SETTABLEKS                       R15 R14 K38 ["Mouse"]
      121 CALL                             R13 1 1
      122 MOVE                             R14 R11
      123 CALL                             R13 1 1
      124 MOVE                             R11 R13
      125 GETTABLEKS                       R13 R5 K40 ["connect"]
      127 MOVE                             R14 R12
      128 CALL                             R13 1 1
      129 MOVE                             R14 R11
      130 CALL                             R13 1 -1
      131 RETURN                           R13 -1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["string"] ; [+3]
        7 LOADNIL                          R0
        8 RETURN                           R0 1
        9 GETIMPORT                        R0 K4 [pcall]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U0
       14 CALL                             R0 1 2
       15 JUMPIFNOT                        R0 ; [+7]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K1 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFEQKS                       R2 K5 ["table"] ; [+3]
       23 LOADNIL                          R2
       24 RETURN                           R2 1
       25 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["capturePreviewImagesAsync"]
        8 DUPTABLE                         R1 K3 [{"toolUseId", "publishedAssetId"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K2 ["publishedAssetId"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["useChannel"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["Scope"]
       13 MOVE                             R5 R0
       14 GETUPVAL                         R6 3
       15 GETTABLEKS                       R6 R6 K4 ["Field"]
       17 GETTABLEKS                       R6 R6 K5 ["Images"]
       19 CALL                             R3 3 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K6 ["useMemo"]
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U4
       26 NEWTABLE                         R6 0 1
       28 MOVE                             R7 R3
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R7 0 3
       41 MOVE                             R8 R2
       42 MOVE                             R9 R0
       43 MOVE                             R10 R1
       44 SETLIST                          R7 R8 3 [1]
       46 CALL                             R5 2 0
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K8 ["useCarouselPreviewImage"]
       50 MOVE                             R6 R4
       51 CALL                             R5 1 -1
       52 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["current"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETIMPORT                        R0 K3 [task.cancel]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 GETIMPORT                        R1 K5 [task.delay]
       16 LOADN                            R2 5
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U0
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K0 ["current"]
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrement"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["increment"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MULK                             R1 R2 K0 [0.08]
        2 LOADN                            R3 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["current"]
        6 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [math.max]
       10 CALL                             R2 2 1
       11 DIV                              R0 R1 R2
       12 GETIMPORT                        R1 K7 [task.wait]
       14 MOVE                             R2 R0
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K8 ["increment"]
       19 CALL                             R1 0 0
       20 JUMPBACK                         ; [-21]
       21 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["exists"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["countRef"]
       11 GETIMPORT                        R1 K4 [task.delay]
       13 GETUPVAL                         R3 2
       14 MULK                             R2 R3 K5 [0.08]
       15 NEWCLOSURE                       R3 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CALL                             R1 2 1
       20 NEWCLOSURE                       R2 P1
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 0
       18 CALL                             R4 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R4
       25 NEWTABLE                         R7 0 2
       27 GETTABLEKS                       R8 R0 K3 ["decrement"]
       29 MOVE                             R9 R4
       30 SETLIST                          R7 R8 2 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       36 NEWCLOSURE                       R7 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R8 0 2
       41 GETTABLEKS                       R9 R0 K4 ["increment"]
       43 MOVE                             R10 R4
       44 SETLIST                          R8 R9 2 [1]
       46 CALL                             R6 2 1
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       50 NEWCLOSURE                       R8 P3
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R9 0 0
       54 CALL                             R7 2 0
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K5 ["useEffect"]
       58 NEWCLOSURE                       R8 P4
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U1
       62 NEWTABLE                         R9 0 3
       64 GETTABLEKS                       R10 R0 K6 ["exists"]
       66 GETTABLEKS                       R11 R0 K4 ["increment"]
       68 MOVE                             R12 R1
       69 SETLIST                          R9 R10 3 [1]
       71 CALL                             R7 2 0
       72 RETURN                           R5 2

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["previewImage"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 CALL                             R4 0 1
        7 GETTABLEKS                       R5 R1 K1 ["exists"]
        9 JUMPIF                           R5 ; [+27]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 DUPTABLE                         R7 K5 [{"Size", "radius", "LayoutOrder"}]
       13 GETIMPORT                        R8 K8 [UDim2.new]
       15 LOADN                            R9 1
       16 LOADN                            R10 0
       17 LOADN                            R11 0
       18 GETUPVAL                         R12 4
       19 CALL                             R8 4 1
       20 SETTABLEKS                       R8 R7 K2 ["Size"]
       22 GETUPVAL                         R8 5
       23 GETTABLEKS                       R8 R8 K9 ["Enums"]
       25 GETTABLEKS                       R8 R8 K10 ["Radius"]
       27 GETTABLEKS                       R8 R8 K11 ["Small"]
       29 SETTABLEKS                       R8 R7 K3 ["radius"]
       31 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       33 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       35 CALL                             R5 2 -1
       36 RETURN                           R5 -1
       37 LOADNIL                          R5
       38 GETTABLEKS                       R6 R1 K12 ["images"]
       40 JUMPIFNOT                        R6 ; [+39]
       41 NEWTABLE                         R6 0 0
       43 GETTABLEKS                       R7 R1 K12 ["images"]
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 FORGPREP                         R7
       48 JUMPIFEQKS                       R11 K13 [""] ; [+23]
       50 LOADK                            R13 K14 ["preload_%*"]
       51 MOVE                             R15 R10
       52 NAMECALL                         R13 R13 K15 ["format"]
       54 CALL                             R13 2 1
       55 MOVE                             R12 R13
       56 GETUPVAL                         R13 2
       57 LOADK                            R14 K16 ["ImageLabel"]
       58 DUPTABLE                         R15 K22 [{["BackgroundTransparency"] = 1, ["ImageTransparency"] = 0.9, ["Image"], ["Size"], ["LayoutOrder"]}]
       59 SETTABLEKS                       R11 R15 K21 ["Image"]
       61 GETIMPORT                        R16 K24 [UDim2.fromOffset]
       63 LOADN                            R17 4
       64 LOADN                            R18 4
       65 CALL                             R16 2 1
       66 SETTABLEKS                       R16 R15 K2 ["Size"]
       68 SETTABLEKS                       R10 R15 K4 ["LayoutOrder"]
       70 CALL                             R13 2 1
       71 SETTABLE                         R13 R6 R12
       72 FORGLOOP                         R7 2 ; [-25]
       74 GETUPVAL                         R7 2
       75 GETUPVAL                         R8 6
       76 DUPTABLE                         R9 K27 [{["tag"] = "size-0-0 no-clip row"}]
       77 MOVE                             R10 R6
       78 CALL                             R7 3 1
       79 MOVE                             R5 R7
       80 GETUPVAL                         R6 2
       81 GETUPVAL                         R7 6
       82 DUPTABLE                         R8 K29 [{["tag"] = "row flex-x-between align-x-center align-y-center size-full-0 padding-x-small padding-y-small radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
       83 GETIMPORT                        R9 K8 [UDim2.new]
       85 LOADN                            R10 1
       86 LOADN                            R11 0
       87 LOADN                            R12 0
       88 GETUPVAL                         R13 4
       89 CALL                             R9 4 1
       90 SETTABLEKS                       R9 R8 K2 ["Size"]
       92 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       94 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       96 DUPTABLE                         R9 K33 [{"LastPreview", "PreviewImage", "NextPreview"}]
       97 GETUPVAL                         R10 2
       98 GETUPVAL                         R11 7
       99 DUPTABLE                         R12 K37 [{"icon", "size", "onActivated", "LayoutOrder"}]
      100 GETUPVAL                         R13 5
      101 GETTABLEKS                       R13 R13 K9 ["Enums"]
      103 GETTABLEKS                       R13 R13 K38 ["IconName"]
      105 GETTABLEKS                       R13 R13 K39 ["ChevronLargeLeft"]
      107 SETTABLEKS                       R13 R12 K34 ["icon"]
      109 GETUPVAL                         R13 5
      110 GETTABLEKS                       R13 R13 K9 ["Enums"]
      112 GETTABLEKS                       R13 R13 K40 ["InputSize"]
      114 GETTABLEKS                       R13 R13 K11 ["Small"]
      116 SETTABLEKS                       R13 R12 K35 ["size"]
      118 SETTABLEKS                       R2 R12 K36 ["onActivated"]
      120 MOVE                             R13 R4
      121 CALL                             R13 0 1
      122 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      124 CALL                             R10 2 1
      125 SETTABLEKS                       R10 R9 K30 ["LastPreview"]
      127 GETUPVAL                         R10 2
      128 GETUPVAL                         R11 8
      129 DUPTABLE                         R12 K46 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ScaleType"], ["LayoutOrder"], ["testId"]}]
      130 GETTABLEKS                       R13 R1 K47 ["current"]
      132 SETTABLEKS                       R13 R12 K21 ["Image"]
      134 GETIMPORT                        R13 K50 [Color3.fromRGB]
      136 LOADN                            R14 0
      137 LOADN                            R15 0
      138 LOADN                            R16 0
      139 CALL                             R13 3 1
      140 SETTABLEKS                       R13 R12 K42 ["BackgroundColor3"]
      142 GETIMPORT                        R13 K53 [Enum.ScaleType.Fit]
      144 SETTABLEKS                       R13 R12 K44 ["ScaleType"]
      146 MOVE                             R13 R4
      147 CALL                             R13 0 1
      148 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      150 GETUPVAL                         R13 9
      151 GETTABLEKS                       R13 R13 K54 ["MeshGen"]
      153 GETTABLEKS                       R13 R13 K31 ["PreviewImage"]
      155 SETTABLEKS                       R13 R12 K45 ["testId"]
      157 DUPTABLE                         R13 K56 [{"PreloadTray"}]
      158 SETTABLEKS                       R5 R13 K55 ["PreloadTray"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K31 ["PreviewImage"]
      163 GETUPVAL                         R10 2
      164 GETUPVAL                         R11 7
      165 DUPTABLE                         R12 K37 [{"icon", "size", "onActivated", "LayoutOrder"}]
      166 GETUPVAL                         R13 5
      167 GETTABLEKS                       R13 R13 K9 ["Enums"]
      169 GETTABLEKS                       R13 R13 K38 ["IconName"]
      171 GETTABLEKS                       R13 R13 K57 ["ChevronLargeRight"]
      173 SETTABLEKS                       R13 R12 K34 ["icon"]
      175 GETUPVAL                         R13 5
      176 GETTABLEKS                       R13 R13 K9 ["Enums"]
      178 GETTABLEKS                       R13 R13 K40 ["InputSize"]
      180 GETTABLEKS                       R13 R13 K11 ["Small"]
      182 SETTABLEKS                       R13 R12 K35 ["size"]
      184 SETTABLEKS                       R3 R12 K36 ["onActivated"]
      186 MOVE                             R13 R4
      187 CALL                             R13 0 1
      188 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      190 CALL                             R10 2 1
      191 SETTABLEKS                       R10 R9 K32 ["NextPreview"]
      193 CALL                             R6 3 -1
      194 RETURN                           R6 -1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["images"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K1 ["getBatch0Indices"]
       10 LENGTH                           R4 R1
       11 CALL                             R3 1 3
       12 FORGPREP                         R3
       13 GETTABLE                         R8 R1 R7
       14 JUMPIFNOT                        R8 ; [+29]
       15 JUMPIFEQKS                       R8 K2 [""] ; [+28]
       17 LOADK                            R10 K3 ["persist_%*"]
       18 MOVE                             R12 R7
       19 NAMECALL                         R10 R10 K4 ["format"]
       21 CALL                             R10 2 1
       22 MOVE                             R9 R10
       23 GETUPVAL                         R10 1
       24 LOADK                            R11 K5 ["ImageLabel"]
       25 DUPTABLE                         R12 K13 [{["BackgroundTransparency"] = 1, ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
       26 SETTABLEKS                       R8 R12 K8 ["Image"]
       28 GETIMPORT                        R13 K16 [UDim2.fromOffset]
       30 LOADN                            R14 0
       31 LOADN                            R15 0
       32 CALL                             R13 2 1
       33 SETTABLEKS                       R13 R12 K9 ["Position"]
       35 GETIMPORT                        R13 K16 [UDim2.fromOffset]
       37 LOADN                            R14 2
       38 LOADN                            R15 2
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K10 ["Size"]
       42 CALL                             R10 2 1
       43 SETTABLE                         R10 R2 R9
       44 FORGLOOP                         R3 2 ; [-32]
       46 GETIMPORT                        R3 K18 [next]
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 JUMPIF                           R3 ; [+2]
       51 LOADNIL                          R3
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 1
       54 LOADK                            R4 K19 ["Frame"]
       55 DUPTABLE                         R5 K22 [{["BackgroundTransparency"] = 1, ["Size"], ["ClipsDescendants"] = True}]
       56 GETIMPORT                        R6 K16 [UDim2.fromOffset]
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K10 ["Size"]
       63 MOVE                             R6 R2
       64 CALL                             R3 3 -1
       65 RETURN                           R3 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["chip"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K1 ["Root"]
        8 DUPTABLE                         R5 K6 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
        9 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R6 R0 K3 ["expanded"]
       15 SETTABLEKS                       R6 R5 K3 ["expanded"]
       17 GETTABLEKS                       R6 R0 K4 ["contentId"]
       19 SETTABLEKS                       R6 R5 K4 ["contentId"]
       21 GETTABLEKS                       R6 R0 K5 ["editThisContent"]
       23 SETTABLEKS                       R6 R5 K5 ["editThisContent"]
       25 DUPTABLE                         R6 K10 [{"Header", "Persist", "Content"}]
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K7 ["Header"]
       30 DUPTABLE                         R9 K12 [{"LayoutOrder", "testId"}]
       31 MOVE                             R10 R2
       32 CALL                             R10 0 1
       33 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       35 GETUPVAL                         R10 3
       36 GETTABLEKS                       R10 R10 K13 ["MeshGen"]
       38 GETTABLEKS                       R10 R10 K14 ["Expand"]
       40 SETTABLEKS                       R10 R9 K11 ["testId"]
       42 DUPTABLE                         R10 K17 [{"Text", "ChipArea"}]
       43 GETUPVAL                         R11 1
       44 GETUPVAL                         R12 4
       45 DUPTABLE                         R13 K20 [{["tag"] = "size-0-0 auto-xy text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       46 GETTABLEKS                       R14 R0 K21 ["headerText"]
       48 SETTABLEKS                       R14 R13 K15 ["Text"]
       50 MOVE                             R14 R2
       51 CALL                             R14 0 1
       52 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       54 DUPTABLE                         R14 K23 [{"Shimmer"}]
       55 GETTABLEKS                       R16 R0 K24 ["isWorking"]
       57 JUMPIFNOT                        R16 ; [+4]
       58 GETUPVAL                         R15 1
       59 GETUPVAL                         R16 5
       60 CALL                             R15 1 1
       61 JUMP                             ; [+1]
       62 LOADNIL                          R15
       63 SETTABLEKS                       R15 R14 K22 ["Shimmer"]
       65 CALL                             R11 3 1
       66 SETTABLEKS                       R11 R10 K15 ["Text"]
       68 MOVE                             R11 R1
       69 JUMPIFNOT                        R11 ; [+40]
       70 GETUPVAL                         R11 1
       71 GETUPVAL                         R12 6
       72 DUPTABLE                         R13 K26 [{["tag"] = "align-x-left align-y-center fill", ["LayoutOrder"]}]
       73 MOVE                             R14 R2
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       77 DUPTABLE                         R14 K28 [{"AssetLink"}]
       78 GETUPVAL                         R15 1
       79 GETUPVAL                         R16 7
       80 DUPTABLE                         R17 K35 [{["text"], ["leading"], ["onActivated"], ["isChecked"] = False, ["size"], ["LayoutOrder"]}]
       81 GETTABLEKS                       R18 R1 K29 ["text"]
       83 SETTABLEKS                       R18 R17 K29 ["text"]
       85 GETTABLEKS                       R18 R1 K36 ["icon"]
       87 SETTABLEKS                       R18 R17 K30 ["leading"]
       89 GETTABLEKS                       R18 R1 K31 ["onActivated"]
       91 SETTABLEKS                       R18 R17 K31 ["onActivated"]
       93 GETUPVAL                         R18 8
       94 GETTABLEKS                       R18 R18 K37 ["Enums"]
       96 GETTABLEKS                       R18 R18 K38 ["ChipSize"]
       98 GETTABLEKS                       R18 R18 K39 ["Small"]
      100 SETTABLEKS                       R18 R17 K34 ["size"]
      102 MOVE                             R18 R2
      103 CALL                             R18 0 1
      104 SETTABLEKS                       R18 R17 K2 ["LayoutOrder"]
      106 CALL                             R15 2 1
      107 SETTABLEKS                       R15 R14 K27 ["AssetLink"]
      109 CALL                             R11 3 1
      110 SETTABLEKS                       R11 R10 K16 ["ChipArea"]
      112 CALL                             R7 3 1
      113 SETTABLEKS                       R7 R6 K7 ["Header"]
      115 GETUPVAL                         R7 9
      116 GETTABLEKS                       R8 R0 K40 ["previewImage"]
      118 CALL                             R7 1 1
      119 SETTABLEKS                       R7 R6 K8 ["Persist"]
      121 GETUPVAL                         R7 1
      122 GETUPVAL                         R8 2
      123 GETTABLEKS                       R8 R8 K9 ["Content"]
      125 DUPTABLE                         R9 K42 [{["tag"] = "col fill gap-small size-0-0 auto-y", ["LayoutOrder"]}]
      126 MOVE                             R10 R2
      127 CALL                             R10 0 1
      128 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
      130 DUPTABLE                         R10 K45 [{"Preview", "Footer"}]
      131 GETUPVAL                         R11 1
      132 GETUPVAL                         R12 10
      133 DUPTABLE                         R13 K46 [{"previewImage", "LayoutOrder"}]
      134 GETTABLEKS                       R14 R0 K40 ["previewImage"]
      136 SETTABLEKS                       R14 R13 K40 ["previewImage"]
      138 MOVE                             R14 R2
      139 CALL                             R14 0 1
      140 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K43 ["Preview"]
      145 GETTABLEKS                       R12 R0 K47 ["footer"]
      147 JUMPIFNOT                        R12 ; [+11]
      148 GETUPVAL                         R11 1
      149 GETUPVAL                         R12 6
      150 DUPTABLE                         R13 K49 [{["tag"] = "row flex-x-right gap-small size-full-0 auto-y", ["LayoutOrder"]}]
      151 MOVE                             R14 R2
      152 CALL                             R14 0 1
      153 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
      155 GETTABLEKS                       R14 R0 K47 ["footer"]
      157 CALL                             R11 3 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R11
      160 SETTABLEKS                       R11 R10 K44 ["Footer"]
      162 CALL                             R7 3 1
      163 SETTABLEKS                       R7 R6 K9 ["Content"]
      165 CALL                             R3 3 -1
      166 RETURN                           R3 -1

PROTO_17:
        0 DUPTABLE                         R0 K4 [{"Preparing", "GeneratingMesh", "FailedToGenerate", "ToolRejected"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K5 ["MeshGen"]
        3 LOADK                            R4 K0 ["Preparing"]
        4 NAMECALL                         R1 R1 K6 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Preparing"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K5 ["MeshGen"]
       11 LOADK                            R4 K1 ["GeneratingMesh"]
       12 NAMECALL                         R1 R1 K6 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["GeneratingMesh"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K5 ["MeshGen"]
       19 LOADK                            R4 K2 ["FailedToGenerate"]
       20 NAMECALL                         R1 R1 K6 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["FailedToGenerate"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K7 ["ToolConfirmation"]
       27 LOADK                            R4 K8 ["ToolCallRejected"]
       28 DUPTABLE                         R5 K10 [{"toolName"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K9 ["toolName"]
       32 NAMECALL                         R1 R1 K6 ["getText"]
       34 CALL                             R1 4 1
       35 SETTABLEKS                       R1 R0 K3 ["ToolRejected"]
       37 RETURN                           R0 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["name"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADK                            R3 K3 [""]
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R4 R2 K4 ["structuredContent"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R3
       20 NEWTABLE                         R7 0 2
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K6 ["locale"]
       25 MOVE                             R9 R3
       26 SETLIST                          R7 R8 2 [1]
       28 CALL                             R5 2 1
       29 LOADB                            R6 1
       30 LOADNIL                          R7
       31 JUMPIFNOT                        R2 ; [+19]
       32 LOADB                            R6 0
       33 JUMPIFNOT                        R4 ; [+6]
       34 GETTABLEKS                       R8 R4 K7 ["rejected"]
       36 JUMPIFNOT                        R8 ; [+3]
       37 GETTABLEKS                       R7 R5 K8 ["ToolRejected"]
       39 JUMP                             ; [+17]
       40 JUMPIFNOT                        R4 ; [+7]
       41 GETTABLEKS                       R8 R4 K9 ["pending"]
       43 JUMPIFNOT                        R8 ; [+4]
       44 LOADB                            R6 1
       45 GETTABLEKS                       R7 R5 K10 ["GeneratingMesh"]
       47 JUMP                             ; [+9]
       48 GETTABLEKS                       R7 R5 K11 ["FailedToGenerate"]
       50 JUMP                             ; [+6]
       51 JUMPIFNOT                        R1 ; [+3]
       52 GETTABLEKS                       R7 R5 K10 ["GeneratingMesh"]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R7 R5 K12 ["Preparing"]
       57 GETUPVAL                         R8 2
       58 CALL                             R8 0 1
       59 GETUPVAL                         R9 3
       60 GETUPVAL                         R10 4
       61 GETTABLEKS                       R10 R10 K13 ["Root"]
       63 DUPTABLE                         R11 K19 [{["LayoutOrder"], ["expanded"] = False, ["contentId"], ["editThisContent"]}]
       64 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       66 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       68 GETTABLEKS                       R12 R0 K17 ["contentId"]
       70 SETTABLEKS                       R12 R11 K17 ["contentId"]
       72 GETTABLEKS                       R12 R0 K18 ["editThisContent"]
       74 SETTABLEKS                       R12 R11 K18 ["editThisContent"]
       76 DUPTABLE                         R12 K21 [{"Header"}]
       77 GETUPVAL                         R13 3
       78 GETUPVAL                         R14 4
       79 GETTABLEKS                       R14 R14 K20 ["Header"]
       81 DUPTABLE                         R15 K25 [{["IsDisabled"] = True, ["LayoutOrder"], ["testId"]}]
       82 MOVE                             R16 R8
       83 CALL                             R16 0 1
       84 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       86 GETUPVAL                         R16 5
       87 GETTABLEKS                       R16 R16 K26 ["MeshGen"]
       89 GETTABLEKS                       R16 R16 K27 ["Expand"]
       91 SETTABLEKS                       R16 R15 K24 ["testId"]
       93 DUPTABLE                         R16 K29 [{"Text"}]
       94 GETUPVAL                         R17 3
       95 GETUPVAL                         R18 6
       96 DUPTABLE                         R19 K32 [{["tag"] = "size-0-full auto-x text-label-small text-align-y-center text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       97 SETTABLEKS                       R7 R19 K28 ["Text"]
       99 MOVE                             R20 R8
      100 CALL                             R20 0 1
      101 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      103 DUPTABLE                         R20 K34 [{"Shimmer"}]
      104 JUMPIFNOT                        R6 ; [+4]
      105 GETUPVAL                         R21 3
      106 GETUPVAL                         R22 7
      107 CALL                             R21 1 1
      108 JUMP                             ; [+1]
      109 LOADNIL                          R21
      110 SETTABLEKS                       R21 R20 K33 ["Shimmer"]
      112 CALL                             R17 3 1
      113 SETTABLEKS                       R17 R16 K28 ["Text"]
      115 CALL                             R13 3 1
      116 SETTABLEKS                       R13 R12 K20 ["Header"]
      118 CALL                             R9 3 -1
      119 RETURN                           R9 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isGenerationCachedAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CALL                             R0 1 2
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R0
       13 JUMPIFNOT                        R3 ; [+4]
       14 JUMPIFEQKB                       R1 TRUE ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssetsAsync"]
        3 DUPTABLE                         R1 K4 [{"toolUseId", "generationId", "hasPredeterminedSize"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["generationId"]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K3 ["hasPredeterminedSize"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 3
        8 JUMPIF                           R0 ; [+29]
        9 GETUPVAL                         R0 4
       10 GETUPVAL                         R1 5
       11 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       13 GETTABLEKS                       R1 R1 K1 ["Publishing"]
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K3 [pcall]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          UPVAL U0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U6
       23 CALL                             R0 1 2
       24 JUMPIFNOT                        R0 ; [+1]
       25 JUMPIF                           R1 ; [+8]
       26 GETUPVAL                         R2 4
       27 GETUPVAL                         R3 5
       28 GETTABLEKS                       R3 R3 K0 ["PreviewState"]
       30 GETTABLEKS                       R3 R3 K4 ["PublishFailed"]
       32 CALL                             R2 1 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R2 7
       35 GETTABLEKS                       R3 R1 K5 ["assetId"]
       37 CALL                             R2 1 0
       38 GETUPVAL                         R0 4
       39 GETUPVAL                         R1 5
       40 GETTABLEKS                       R1 R1 K0 ["PreviewState"]
       42 GETTABLEKS                       R1 R1 K6 ["Inserting"]
       44 CALL                             R0 1 0
       45 GETIMPORT                        R0 K3 [pcall]
       47 NEWCLOSURE                       R1 P1
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          UPVAL U1
       50 CALL                             R0 1 1
       51 JUMPIFNOT                        R0 ; [+8]
       52 GETUPVAL                         R1 4
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K0 ["PreviewState"]
       56 GETTABLEKS                       R2 R2 K7 ["Published"]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R1 4
       61 GETUPVAL                         R2 5
       62 GETTABLEKS                       R2 R2 K0 ["PreviewState"]
       64 GETTABLEKS                       R2 R2 K8 ["InsertFailed"]
       66 CALL                             R1 1 0
       67 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_25:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+18]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+15]
       23 GETUPVAL                         R1 3
       24 JUMPIFNOT                        R1 ; [+12]
       25 GETUPVAL                         R1 1
       26 LOADK                            R3 K0 ["InstanceChip"]
       27 LOADK                            R4 K7 ["Deleted"]
       28 DUPTABLE                         R5 K8 [{"name"}]
       29 GETUPVAL                         R6 2
       30 SETTABLEKS                       R6 R5 K2 ["name"]
       32 NAMECALL                         R1 R1 K5 ["getText"]
       34 CALL                             R1 4 1
       35 MOVE                             R0 R1
       36 JUMP                             ; [+1]
       37 GETUPVAL                         R0 2
       38 GETUPVAL                         R1 1
       39 LOADK                            R3 K9 ["MeshGen"]
       40 LOADK                            R4 K10 ["Generated"]
       41 NAMECALL                         R1 R1 K5 ["getText"]
       43 CALL                             R1 3 1
       44 GETUPVAL                         R2 4
       45 JUMPIF                           R2 ; [+7]
       46 LOADK                            R2 K11 ["%* %*"]
       47 MOVE                             R4 R1
       48 MOVE                             R5 R0
       49 NAMECALL                         R2 R2 K12 ["format"]
       51 CALL                             R2 3 1
       52 MOVE                             R1 R2
       53 DUPTABLE                         R2 K16 [{"DisplayName", "Generated", "AddToPlace", "TryAgain"}]
       54 SETTABLEKS                       R0 R2 K13 ["DisplayName"]
       56 SETTABLEKS                       R1 R2 K10 ["Generated"]
       58 GETUPVAL                         R3 1
       59 LOADK                            R5 K9 ["MeshGen"]
       60 LOADK                            R6 K14 ["AddToPlace"]
       61 NAMECALL                         R3 R3 K5 ["getText"]
       63 CALL                             R3 3 1
       64 SETTABLEKS                       R3 R2 K14 ["AddToPlace"]
       66 GETUPVAL                         R3 1
       67 LOADK                            R5 K9 ["MeshGen"]
       68 LOADK                            R6 K15 ["TryAgain"]
       69 NAMECALL                         R3 R3 K5 ["getText"]
       71 CALL                             R3 3 1
       72 SETTABLEKS                       R3 R2 K15 ["TryAgain"]
       74 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K2 ["structuredContent"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADNIL                          R3
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R4 R1 K3 ["id"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R5 R3 K4 ["tag"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R3 ; [+3]
       20 GETTABLEKS                       R6 R3 K5 ["generationId"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 JUMPIFNOT                        R3 ; [+3]
       25 GETTABLEKS                       R7 R3 K6 ["hasPredeterminedSize"]
       27 JUMPIF                           R7 ; [+1]
       28 LOADB                            R7 0
       29 JUMPIFNOT                        R3 ; [+3]
       30 GETTABLEKS                       R8 R3 K7 ["generationName"]
       32 JUMPIF                           R8 ; [+1]
       33 LOADK                            R8 K8 [""]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K9 ["useContext"]
       37 GETUPVAL                         R10 1
       38 GETTABLEKS                       R10 R10 K10 ["Context"]
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K9 ["useContext"]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R11 R11 K10 ["Context"]
       47 CALL                             R10 1 1
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K11 ["useState"]
       51 GETUPVAL                         R12 3
       52 GETTABLEKS                       R12 R12 K12 ["PreviewState"]
       54 GETTABLEKS                       R12 R12 K13 ["Generated"]
       56 CALL                             R11 1 2
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R13 R13 K11 ["useState"]
       60 LOADNIL                          R14
       61 CALL                             R13 1 2
       62 GETUPVAL                         R15 0
       63 GETTABLEKS                       R15 R15 K11 ["useState"]
       65 LOADB                            R16 0
       66 CALL                             R15 1 2
       67 GETUPVAL                         R17 0
       68 GETTABLEKS                       R17 R17 K14 ["useEffect"]
       70 NEWCLOSURE                       R18 P0
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R16
       74 NEWTABLE                         R19 0 2
       76 MOVE                             R20 R9
       77 MOVE                             R21 R4
       78 SETLIST                          R19 R20 2 [1]
       80 CALL                             R17 2 0
       81 GETUPVAL                         R17 4
       82 MOVE                             R18 R4
       83 MOVE                             R19 R13
       84 CALL                             R17 2 1
       85 GETUPVAL                         R18 2
       86 GETTABLEKS                       R18 R18 K15 ["useTag"]
       88 MOVE                             R19 R5
       89 DUPTABLE                         R20 K19 [{["includeCount"] = True, ["includeClassName"] = True}]
       90 CALL                             R18 2 1
       91 JUMPIFNOT                        R18 ; [+3]
       92 GETTABLEKS                       R19 R18 K20 ["count"]
       94 JUMPIF                           R19 ; [+1]
       95 LOADN                            R19 0
       96 JUMPIFNOT                        R18 ; [+3]
       97 GETTABLEKS                       R20 R18 K21 ["className"]
       99 JUMPIF                           R20 ; [+1]
      100 LOADNIL                          R20
      101 LOADN                            R22 0
      102 JUMPIFLT                         R22 R19 ; [+2]
      104 LOADB                            R21 0 +1
      105 LOADB                            R21 1
      106 GETUPVAL                         R23 3
      107 GETTABLEKS                       R23 R23 K12 ["PreviewState"]
      109 GETTABLEKS                       R23 R23 K22 ["Publishing"]
      111 JUMPIFEQ                         R11 R23 ; [+2]
      113 LOADB                            R22 0 +1
      114 LOADB                            R22 1
      115 GETUPVAL                         R24 3
      116 GETTABLEKS                       R24 R24 K12 ["PreviewState"]
      118 GETTABLEKS                       R24 R24 K23 ["Inserting"]
      120 JUMPIFEQ                         R11 R24 ; [+2]
      122 LOADB                            R23 0 +1
      123 LOADB                            R23 1
      124 GETUPVAL                         R25 3
      125 GETTABLEKS                       R25 R25 K12 ["PreviewState"]
      127 GETTABLEKS                       R25 R25 K24 ["Published"]
      129 JUMPIFEQ                         R11 R25 ; [+2]
      131 LOADB                            R24 0 +1
      132 LOADB                            R24 1
      133 JUMPIFNOTEQKNIL                  R13 ; [+2]
      135 LOADB                            R25 0 +1
      136 LOADB                            R25 1
      137 OR                               R26 R22 R23
      138 OR                               R27 R25 R15
      139 GETUPVAL                         R28 0
      140 GETTABLEKS                       R28 R28 K25 ["useCallback"]
      142 NEWCLOSURE                       R29 P1
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R25
      147 CAPTURE                          VAL R12
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R14
      151 NEWTABLE                         R30 0 5
      153 MOVE                             R31 R9
      154 MOVE                             R32 R4
      155 MOVE                             R33 R6
      156 MOVE                             R34 R7
      157 MOVE                             R35 R25
      158 SETLIST                          R30 R31 5 [1]
      160 CALL                             R28 2 1
      161 GETUPVAL                         R29 0
      162 GETTABLEKS                       R29 R29 K25 ["useCallback"]
      164 NEWCLOSURE                       R30 P2
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R5
      167 NEWTABLE                         R31 0 2
      169 MOVE                             R32 R10
      170 MOVE                             R33 R5
      171 SETLIST                          R31 R32 2 [1]
      173 CALL                             R29 2 1
      174 GETUPVAL                         R30 0
      175 GETTABLEKS                       R30 R30 K26 ["useMemo"]
      177 NEWCLOSURE                       R31 P3
      178 CAPTURE                          VAL R19
      179 CAPTURE                          UPVAL U5
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R25
      182 CAPTURE                          VAL R21
      183 NEWTABLE                         R32 0 4
      185 GETUPVAL                         R33 5
      186 GETTABLEKS                       R33 R33 K27 ["locale"]
      188 MOVE                             R34 R8
      189 MOVE                             R35 R19
      190 MOVE                             R36 R25
      191 SETLIST                          R32 R33 4 [1]
      193 CALL                             R30 2 1
      194 GETUPVAL                         R31 6
      195 MOVE                             R32 R20
      196 CALL                             R31 1 1
      197 LOADB                            R32 1
      198 GETUPVAL                         R33 3
      199 GETTABLEKS                       R33 R33 K12 ["PreviewState"]
      201 GETTABLEKS                       R33 R33 K28 ["PublishFailed"]
      203 JUMPIFEQ                         R11 R33 ; [+10]
      205 GETUPVAL                         R33 3
      206 GETTABLEKS                       R33 R33 K12 ["PreviewState"]
      208 GETTABLEKS                       R33 R33 K29 ["InsertFailed"]
      210 JUMPIFEQ                         R11 R33 ; [+2]
      212 LOADB                            R32 0 +1
      213 LOADB                            R32 1
      214 JUMPIF                           R24 ; [+39]
      215 JUMPIFNOT                        R27 ; [+38]
      216 DUPTABLE                         R33 K31 [{"AddToPlaceButton"}]
      217 GETUPVAL                         R34 7
      218 GETUPVAL                         R35 8
      219 DUPTABLE                         R36 K37 [{"text", "size", "variant", "isLoading", "onActivated"}]
      220 JUMPIFNOT                        R32 ; [+3]
      221 GETTABLEKS                       R37 R30 K38 ["TryAgain"]
      223 JUMP                             ; [+2]
      224 GETTABLEKS                       R37 R30 K39 ["AddToPlace"]
      226 SETTABLEKS                       R37 R36 K32 ["text"]
      228 GETUPVAL                         R37 9
      229 GETTABLEKS                       R37 R37 K40 ["Enums"]
      231 GETTABLEKS                       R37 R37 K41 ["InputSize"]
      233 GETTABLEKS                       R37 R37 K42 ["Small"]
      235 SETTABLEKS                       R37 R36 K33 ["size"]
      237 GETUPVAL                         R37 9
      238 GETTABLEKS                       R37 R37 K40 ["Enums"]
      240 GETTABLEKS                       R37 R37 K43 ["ButtonVariant"]
      242 GETTABLEKS                       R37 R37 K44 ["Emphasis"]
      244 SETTABLEKS                       R37 R36 K34 ["variant"]
      246 SETTABLEKS                       R26 R36 K35 ["isLoading"]
      248 SETTABLEKS                       R28 R36 K36 ["onActivated"]
      250 CALL                             R34 2 1
      251 SETTABLEKS                       R34 R33 K30 ["AddToPlaceButton"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R33
      255 GETUPVAL                         R34 7
      256 GETUPVAL                         R35 10
      257 DUPTABLE                         R36 K54 [{"LayoutOrder", "expanded", "contentId", "editThisContent", "headerText", "isWorking", "chip", "previewImage", "footer"}]
      258 GETTABLEKS                       R37 R0 K45 ["LayoutOrder"]
      260 SETTABLEKS                       R37 R36 K45 ["LayoutOrder"]
      262 GETTABLEKS                       R37 R0 K46 ["expanded"]
      264 SETTABLEKS                       R37 R36 K46 ["expanded"]
      266 GETTABLEKS                       R37 R0 K47 ["contentId"]
      268 SETTABLEKS                       R37 R36 K47 ["contentId"]
      270 GETTABLEKS                       R37 R0 K48 ["editThisContent"]
      272 SETTABLEKS                       R37 R36 K48 ["editThisContent"]
      274 GETTABLEKS                       R37 R30 K13 ["Generated"]
      276 SETTABLEKS                       R37 R36 K49 ["headerText"]
      278 SETTABLEKS                       R26 R36 K50 ["isWorking"]
      280 JUMPIFNOT                        R21 ; [+12]
      281 DUPTABLE                         R37 K56 [{"text", "icon", "onActivated"}]
      282 GETTABLEKS                       R38 R30 K57 ["DisplayName"]
      284 SETTABLEKS                       R38 R37 K32 ["text"]
      286 GETTABLEKS                       R38 R31 K58 ["Image"]
      288 SETTABLEKS                       R38 R37 K55 ["icon"]
      290 SETTABLEKS                       R29 R37 K36 ["onActivated"]
      292 JUMP                             ; [+1]
      293 LOADNIL                          R37
      294 SETTABLEKS                       R37 R36 K51 ["chip"]
      296 SETTABLEKS                       R17 R36 K52 ["previewImage"]
      298 SETTABLEKS                       R33 R36 K53 ["footer"]
      300 CALL                             R34 2 -1
      301 RETURN                           R34 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["selectTaggedInstances"]
        8 DUPTABLE                         R1 K2 [{"tag"}]
        9 GETUPVAL                         R2 1
       10 SETTABLEKS                       R2 R1 K1 ["tag"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_28:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 1
        3 JUMPIFNOTLT                      R2 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 LOADK                            R3 K0 ["InstanceChip"]
        7 LOADK                            R4 K1 ["Multiple"]
        8 DUPTABLE                         R5 K4 [{"name", "count"}]
        9 GETUPVAL                         R6 2
       10 SETTABLEKS                       R6 R5 K2 ["name"]
       12 GETUPVAL                         R6 0
       13 SETTABLEKS                       R6 R5 K3 ["count"]
       15 NAMECALL                         R1 R1 K5 ["getText"]
       17 CALL                             R1 4 1
       18 MOVE                             R0 R1
       19 JUMP                             ; [+16]
       20 GETUPVAL                         R1 0
       21 JUMPIFNOTEQKN                    R1 K6 [0] ; [+13]
       23 GETUPVAL                         R1 1
       24 LOADK                            R3 K0 ["InstanceChip"]
       25 LOADK                            R4 K7 ["Deleted"]
       26 DUPTABLE                         R5 K8 [{"name"}]
       27 GETUPVAL                         R6 2
       28 SETTABLEKS                       R6 R5 K2 ["name"]
       30 NAMECALL                         R1 R1 K5 ["getText"]
       32 CALL                             R1 4 1
       33 MOVE                             R0 R1
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R0 2
       36 GETUPVAL                         R1 1
       37 LOADK                            R3 K9 ["MeshGen"]
       38 LOADK                            R4 K10 ["Generated"]
       39 NAMECALL                         R1 R1 K5 ["getText"]
       41 CALL                             R1 3 1
       42 GETUPVAL                         R2 3
       43 JUMPIF                           R2 ; [+7]
       44 LOADK                            R2 K11 ["%* %*"]
       45 MOVE                             R4 R1
       46 MOVE                             R5 R0
       47 NAMECALL                         R2 R2 K12 ["format"]
       49 CALL                             R2 3 1
       50 MOVE                             R1 R2
       51 DUPTABLE                         R2 K14 [{"DisplayName", "Generated"}]
       52 SETTABLEKS                       R0 R2 K13 ["DisplayName"]
       54 SETTABLEKS                       R1 R2 K10 ["Generated"]
       56 RETURN                           R2 1

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K2 ["input"]
        7 JUMPIF                           R3 ; [+1]
        8 GETUPVAL                         R3 0
        9 JUMPIFNOT                        R2 ; [+3]
       10 GETTABLEKS                       R4 R2 K3 ["structuredContent"]
       12 JUMPIF                           R4 ; [+1]
       13 LOADNIL                          R4
       14 JUMPIFNOT                        R4 ; [+3]
       15 GETTABLEKS                       R5 R4 K4 ["tag"]
       17 JUMPIF                           R5 ; [+1]
       18 LOADNIL                          R5
       19 JUMPIFNOT                        R1 ; [+3]
       20 GETTABLEKS                       R6 R1 K5 ["id"]
       22 JUMPIF                           R6 ; [+1]
       23 LOADNIL                          R6
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R7 R4 K6 ["publishedAssetId"]
       27 JUMPIF                           R7 ; [+1]
       28 LOADNIL                          R7
       29 JUMPIFNOT                        R4 ; [+3]
       30 GETTABLEKS                       R8 R4 K7 ["generationName"]
       32 JUMPIF                           R8 ; [+4]
       33 GETTABLEKS                       R8 R3 K8 ["textPrompt"]
       35 JUMPIF                           R8 ; [+1]
       36 LOADK                            R8 K9 [""]
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K10 ["useContext"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R10 R10 K11 ["Context"]
       43 CALL                             R9 1 1
       44 GETUPVAL                         R10 3
       45 MOVE                             R11 R6
       46 MOVE                             R12 R7
       47 CALL                             R10 2 1
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R11 R11 K12 ["useTag"]
       51 MOVE                             R12 R5
       52 DUPTABLE                         R13 K16 [{["includeCount"] = True, ["includeClassName"] = True}]
       53 CALL                             R11 2 1
       54 JUMPIFNOT                        R11 ; [+3]
       55 GETTABLEKS                       R12 R11 K17 ["count"]
       57 JUMPIF                           R12 ; [+1]
       58 LOADN                            R12 0
       59 JUMPIFNOT                        R11 ; [+3]
       60 GETTABLEKS                       R13 R11 K18 ["className"]
       62 JUMPIF                           R13 ; [+1]
       63 LOADNIL                          R13
       64 LOADN                            R15 0
       65 JUMPIFLT                         R15 R12 ; [+2]
       67 LOADB                            R14 0 +1
       68 LOADB                            R14 1
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K19 ["useCallback"]
       72 NEWCLOSURE                       R16 P0
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R5
       75 NEWTABLE                         R17 0 2
       77 MOVE                             R18 R9
       78 MOVE                             R19 R5
       79 SETLIST                          R17 R18 2 [1]
       81 CALL                             R15 2 1
       82 GETUPVAL                         R16 1
       83 GETTABLEKS                       R16 R16 K20 ["useMemo"]
       85 NEWCLOSURE                       R17 P1
       86 CAPTURE                          VAL R12
       87 CAPTURE                          UPVAL U4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R14
       90 NEWTABLE                         R18 0 4
       92 GETUPVAL                         R19 4
       93 GETTABLEKS                       R19 R19 K21 ["locale"]
       95 MOVE                             R20 R8
       96 MOVE                             R21 R12
       97 MOVE                             R22 R14
       98 SETLIST                          R18 R19 4 [1]
      100 CALL                             R16 2 1
      101 GETUPVAL                         R17 5
      102 MOVE                             R18 R13
      103 CALL                             R17 1 1
      104 GETUPVAL                         R18 6
      105 GETUPVAL                         R19 7
      106 DUPTABLE                         R20 K29 [{"LayoutOrder", "expanded", "contentId", "editThisContent", "headerText", "chip", "previewImage"}]
      107 GETTABLEKS                       R21 R0 K22 ["LayoutOrder"]
      109 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      111 GETTABLEKS                       R21 R0 K23 ["expanded"]
      113 SETTABLEKS                       R21 R20 K23 ["expanded"]
      115 GETTABLEKS                       R21 R0 K24 ["contentId"]
      117 SETTABLEKS                       R21 R20 K24 ["contentId"]
      119 GETTABLEKS                       R21 R0 K25 ["editThisContent"]
      121 SETTABLEKS                       R21 R20 K25 ["editThisContent"]
      123 GETTABLEKS                       R21 R16 K30 ["Generated"]
      125 SETTABLEKS                       R21 R20 K26 ["headerText"]
      127 JUMPIFNOT                        R14 ; [+12]
      128 DUPTABLE                         R21 K34 [{"text", "icon", "onActivated"}]
      129 GETTABLEKS                       R22 R16 K35 ["DisplayName"]
      131 SETTABLEKS                       R22 R21 K31 ["text"]
      133 GETTABLEKS                       R22 R17 K36 ["Image"]
      135 SETTABLEKS                       R22 R21 K32 ["icon"]
      137 SETTABLEKS                       R15 R21 K33 ["onActivated"]
      139 JUMP                             ; [+1]
      140 LOADNIL                          R21
      141 SETTABLEKS                       R21 R20 K27 ["chip"]
      143 SETTABLEKS                       R10 R20 K28 ["previewImage"]
      145 CALL                             R18 2 -1
      146 RETURN                           R18 -1

PROTO_30:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R2 R0 K1 ["toolResult"]
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K2 ["structuredContent"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADNIL                          R3
        9 LOADB                            R4 0
       10 JUMPIFEQKNIL                     R2 ; [+15]
       12 GETTABLEKS                       R5 R2 K3 ["isError"]
       14 NOT                              R4 R5
       15 JUMPIFNOT                        R4 ; [+10]
       16 LOADB                            R4 0
       17 JUMPIFEQKNIL                     R3 ; [+8]
       19 GETTABLEKS                       R5 R3 K4 ["pending"]
       21 NOT                              R4 R5
       22 JUMPIFNOT                        R4 ; [+3]
       23 GETTABLEKS                       R5 R3 K5 ["rejected"]
       25 NOT                              R4 R5
       26 JUMPIFNOT                        R4 ; [+20]
       27 MOVE                             R5 R1
       28 JUMPIFNOT                        R5 ; [+7]
       29 GETTABLEKS                       R5 R1 K6 ["input"]
       31 JUMPIFNOT                        R5 ; [+4]
       32 GETTABLEKS                       R5 R1 K6 ["input"]
       34 GETTABLEKS                       R5 R5 K7 ["isManualRun"]
       36 JUMPIFNOT                        R5 ; [+5]
       37 GETUPVAL                         R6 0
       38 GETUPVAL                         R7 1
       39 MOVE                             R8 R0
       40 CALL                             R6 2 -1
       41 RETURN                           R6 -1
       42 GETUPVAL                         R6 0
       43 GETUPVAL                         R7 2
       44 MOVE                             R8 R0
       45 CALL                             R6 2 -1
       46 RETURN                           R6 -1
       47 GETUPVAL                         R5 0
       48 GETUPVAL                         R6 3
       49 MOVE                             R7 R0
       50 CALL                             R5 2 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R4 K12 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["Actions"]
       28 GETTABLEKS                       R4 R4 K14 ["ChannelActionsContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K15 ["Parent"]
       35 GETTABLEKS                       R5 R5 K16 ["Foundation"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Components"]
       42 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       44 GETTABLEKS                       R6 R6 K13 ["Actions"]
       46 GETTABLEKS                       R6 R6 K17 ["InstanceActionsContext"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K9 [require]
       51 GETTABLEKS                       R7 R0 K10 ["Components"]
       53 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       55 GETTABLEKS                       R7 R7 K13 ["Actions"]
       57 GETTABLEKS                       R7 R7 K18 ["MeshGenActionsContext"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R0 K15 ["Parent"]
       64 GETTABLEKS                       R8 R8 K19 ["React"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R9 R0 K15 ["Parent"]
       71 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R0 K10 ["Components"]
       78 GETTABLEKS                       R10 R10 K21 ["ShimmerGradient"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K9 [require]
       83 GETTABLEKS                       R11 R0 K22 ["Util"]
       85 GETTABLEKS                       R11 R11 K23 ["TestIds"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K9 [require]
       90 GETTABLEKS                       R12 R0 K24 ["Resources"]
       92 GETTABLEKS                       R12 R12 K25 ["Localization"]
       94 GETTABLEKS                       R12 R12 K26 ["Translator"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K9 [require]
       99 GETTABLEKS                       R13 R0 K27 ["Types"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K28 ["Hooks"]
      106 GETTABLEKS                       R14 R14 K29 ["useClassIcon"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K9 [require]
      111 GETTABLEKS                       R15 R0 K22 ["Util"]
      113 GETTABLEKS                       R15 R15 K30 ["MeshGen"]
      115 GETTABLEKS                       R15 R15 K31 ["MeshGenChannel"]
      117 CALL                             R14 1 1
      118 GETIMPORT                        R15 K9 [require]
      120 GETTABLEKS                       R16 R0 K22 ["Util"]
      122 GETTABLEKS                       R16 R16 K30 ["MeshGen"]
      124 GETTABLEKS                       R16 R16 K32 ["MeshGenConstants"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R0 K22 ["Util"]
      131 GETTABLEKS                       R17 R17 K30 ["MeshGen"]
      133 GETTABLEKS                       R17 R17 K33 ["MeshGenTypes"]
      135 CALL                             R16 1 1
      136 GETIMPORT                        R17 K9 [require]
      138 GETTABLEKS                       R18 R0 K34 ["Features"]
      140 GETTABLEKS                       R18 R18 K35 ["Gen3dUtils"]
      142 GETTABLEKS                       R18 R18 K36 ["ViewportPreviewUtils"]
      144 CALL                             R17 1 1
      145 GETTABLEKS                       R18 R4 K37 ["Button"]
      147 GETTABLEKS                       R19 R4 K38 ["Chip"]
      149 GETTABLEKS                       R20 R4 K39 ["IconButton"]
      151 GETTABLEKS                       R21 R4 K40 ["Image"]
      153 GETTABLEKS                       R22 R4 K41 ["Skeleton"]
      155 GETTABLEKS                       R23 R4 K42 ["Text"]
      157 GETTABLEKS                       R24 R4 K43 ["View"]
      159 GETTABLEKS                       R25 R8 K44 ["createNextOrder"]
      161 GETTABLEKS                       R26 R7 K45 ["createElement"]
      163 GETTABLEKS                       R27 R15 K46 ["Enums"]
      165 GETTABLEKS                       R28 R15 K47 ["PREVIEW_HEIGHT"]
      167 GETTABLEKS                       R29 R15 K48 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      169 NEWTABLE                         R30 0 0
      171 DUPCLOSURE                       R31 K49 [PROTO_3]
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R14
      176 CAPTURE                          VAL R1
      177 CAPTURE                          VAL R17
      178 DUPCLOSURE                       R32 K50 [PROTO_13]
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R29
      181 DUPCLOSURE                       R33 K51 [PROTO_14]
      182 CAPTURE                          VAL R32
      183 CAPTURE                          VAL R25
      184 CAPTURE                          VAL R26
      185 CAPTURE                          VAL R22
      186 CAPTURE                          VAL R28
      187 CAPTURE                          VAL R4
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R10
      192 DUPCLOSURE                       R34 K52 [PROTO_15]
      193 CAPTURE                          VAL R17
      194 CAPTURE                          VAL R26
      195 DUPCLOSURE                       R35 K53 [PROTO_16]
      196 CAPTURE                          VAL R25
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R2
      199 CAPTURE                          VAL R10
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R9
      202 CAPTURE                          VAL R24
      203 CAPTURE                          VAL R19
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R34
      206 CAPTURE                          VAL R33
      207 DUPCLOSURE                       R36 K54 [PROTO_18]
      208 CAPTURE                          VAL R7
      209 CAPTURE                          VAL R11
      210 CAPTURE                          VAL R25
      211 CAPTURE                          VAL R26
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R23
      215 CAPTURE                          VAL R9
      216 DUPCLOSURE                       R37 K55 [PROTO_26]
      217 CAPTURE                          VAL R7
      218 CAPTURE                          VAL R6
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R27
      221 CAPTURE                          VAL R31
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R26
      225 CAPTURE                          VAL R18
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R35
      228 DUPCLOSURE                       R38 K56 [PROTO_29]
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R5
      232 CAPTURE                          VAL R31
      233 CAPTURE                          VAL R11
      234 CAPTURE                          VAL R13
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R35
      237 DUPCLOSURE                       R39 K57 [PROTO_30]
      238 CAPTURE                          VAL R26
      239 CAPTURE                          VAL R37
      240 CAPTURE                          VAL R38
      241 CAPTURE                          VAL R36
      242 DUPTABLE                         R40 K62 [{["Type"] = "MeshGen", ["ContentWidget"], ["Serialization"] = }]
      243 GETTABLEKS                       R41 R7 K63 ["memo"]
      245 MOVE                             R42 R39
      246 CALL                             R41 1 1
      247 SETTABLEKS                       R41 R40 K59 ["ContentWidget"]
      249 RETURN                           R40 1

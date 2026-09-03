PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 JUMPIFEQKS                       R5 K0 [""] ; [+3]
        9 LOADB                            R6 1
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-5]
       13 LOADB                            R1 0
       14 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFEQKS                       R0 K2 ["string"] ; [+4]
        7 LOADNIL                          R0
        8 LOADB                            R1 0
        9 RETURN                           R0 2
       10 GETIMPORT                        R0 K4 [pcall]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 1 2
       16 JUMPIFNOT                        R0 ; [+7]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K1 [typeof]
       21 CALL                             R2 1 1
       22 JUMPIFEQKS                       R2 K5 ["table"] ; [+4]
       24 LOADNIL                          R2
       25 LOADB                            R3 0
       26 RETURN                           R2 2
       27 MOVE                             R2 R1
       28 JUMPIF                           R1 ; [+2]
       29 LOADB                            R3 0
       30 RETURN                           R2 2
       31 MOVE                             R4 R1
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 JUMPIFEQKS                       R8 K6 [""] ; [+3]
       37 LOADB                            R3 1
       38 RETURN                           R2 2
       39 FORGLOOP                         R4 2 ; [-5]
       41 LOADB                            R3 0
       42 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 3
        8 GETTABLEKS                       R0 R0 K0 ["current"]
       10 JUMPIFNOT                        R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 1
       14 SETTABLEKS                       R1 R0 K0 ["current"]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K1 ["capturePreviewImagesAsync"]
       19 DUPTABLE                         R1 K4 [{"toolUseId", "publishedAssetId"}]
       20 GETUPVAL                         R2 1
       21 SETTABLEKS                       R2 R1 K2 ["toolUseId"]
       23 GETUPVAL                         R2 4
       24 SETTABLEKS                       R2 R1 K3 ["publishedAssetId"]
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K2 ["useChannel"]
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R5 R5 K3 ["Scope"]
       13 MOVE                             R6 R0
       14 GETUPVAL                         R7 3
       15 GETTABLEKS                       R7 R7 K4 ["Field"]
       17 GETTABLEKS                       R7 R7 K5 ["Images"]
       19 CALL                             R4 3 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          UPVAL U4
       26 NEWTABLE                         R7 0 1
       28 MOVE                             R8 R4
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 2
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K7 ["useRef"]
       35 MOVE                             R8 R6
       36 CALL                             R7 1 1
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R8 R8 K8 ["useEffect"]
       40 NEWCLOSURE                       R9 P1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R1
       46 NEWTABLE                         R10 0 4
       48 MOVE                             R11 R3
       49 MOVE                             R12 R0
       50 MOVE                             R13 R1
       51 MOVE                             R14 R2
       52 SETLIST                          R10 R11 4 [1]
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 5
       56 GETTABLEKS                       R8 R8 K9 ["useCarouselPreviewImage"]
       58 MOVE                             R9 R5
       59 CALL                             R8 1 -1
       60 RETURN                           R8 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrement"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["increment"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isGenerationCachedAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["insertAssetsAsync"]
        3 DUPTABLE                         R1 K2 [{"toolUseId"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["toolUseId"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_25:
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
       51 JUMPIFNOT                        R0 ; [+16]
       52 GETUPVAL                         R1 4
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K0 ["PreviewState"]
       56 GETTABLEKS                       R2 R2 K7 ["Published"]
       58 CALL                             R1 1 0
       59 GETUPVAL                         R1 8
       60 GETTABLEKS                       R1 R1 K8 ["FFlagAssistantMeshGenAutoExpandCollapse"]
       62 JUMPIFNOT                        R1 ; [+12]
       63 GETUPVAL                         R1 9
       64 GETUPVAL                         R2 10
       65 DUPCLOSURE                       R3 K9 [PROTO_24]
       66 CALL                             R1 2 0
       67 RETURN                           R0 0
       68 GETUPVAL                         R1 4
       69 GETUPVAL                         R2 5
       70 GETTABLEKS                       R2 R2 K0 ["PreviewState"]
       72 GETTABLEKS                       R2 R2 K10 ["InsertFailed"]
       74 CALL                             R1 1 0
       75 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       48 GETTABLEKS                       R11 R0 K11 ["editThisContent"]
       50 GETTABLEKS                       R12 R0 K12 ["contentId"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K13 ["useState"]
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R14 R14 K14 ["PreviewState"]
       58 GETTABLEKS                       R14 R14 K15 ["Generated"]
       60 CALL                             R13 1 2
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K13 ["useState"]
       64 LOADNIL                          R16
       65 CALL                             R15 1 2
       66 GETUPVAL                         R17 0
       67 GETTABLEKS                       R17 R17 K13 ["useState"]
       69 LOADB                            R18 0
       70 CALL                             R17 1 2
       71 GETUPVAL                         R19 0
       72 GETTABLEKS                       R19 R19 K16 ["useEffect"]
       74 NEWCLOSURE                       R20 P0
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R18
       78 NEWTABLE                         R21 0 2
       80 MOVE                             R22 R9
       81 MOVE                             R23 R4
       82 SETLIST                          R21 R22 2 [1]
       84 CALL                             R19 2 0
       85 GETUPVAL                         R19 4
       86 MOVE                             R20 R4
       87 MOVE                             R21 R15
       88 GETTABLEKS                       R23 R0 K17 ["expanded"]
       90 JUMPIFEQKB                       R23 TRUE ; [+2]
       92 LOADB                            R22 0 +1
       93 LOADB                            R22 1
       94 CALL                             R19 3 1
       95 GETUPVAL                         R20 2
       96 GETTABLEKS                       R20 R20 K18 ["useTag"]
       98 MOVE                             R21 R5
       99 DUPTABLE                         R22 K22 [{["includeCount"] = True, ["includeClassName"] = True}]
      100 CALL                             R20 2 1
      101 JUMPIFNOT                        R20 ; [+3]
      102 GETTABLEKS                       R21 R20 K23 ["count"]
      104 JUMPIF                           R21 ; [+1]
      105 LOADN                            R21 0
      106 JUMPIFNOT                        R20 ; [+3]
      107 GETTABLEKS                       R22 R20 K24 ["className"]
      109 JUMPIF                           R22 ; [+1]
      110 LOADNIL                          R22
      111 LOADN                            R24 0
      112 JUMPIFLT                         R24 R21 ; [+2]
      114 LOADB                            R23 0 +1
      115 LOADB                            R23 1
      116 GETUPVAL                         R25 3
      117 GETTABLEKS                       R25 R25 K14 ["PreviewState"]
      119 GETTABLEKS                       R25 R25 K25 ["Publishing"]
      121 JUMPIFEQ                         R13 R25 ; [+2]
      123 LOADB                            R24 0 +1
      124 LOADB                            R24 1
      125 GETUPVAL                         R26 3
      126 GETTABLEKS                       R26 R26 K14 ["PreviewState"]
      128 GETTABLEKS                       R26 R26 K26 ["Inserting"]
      130 JUMPIFEQ                         R13 R26 ; [+2]
      132 LOADB                            R25 0 +1
      133 LOADB                            R25 1
      134 GETUPVAL                         R27 3
      135 GETTABLEKS                       R27 R27 K14 ["PreviewState"]
      137 GETTABLEKS                       R27 R27 K27 ["Published"]
      139 JUMPIFEQ                         R13 R27 ; [+2]
      141 LOADB                            R26 0 +1
      142 LOADB                            R26 1
      143 JUMPIFNOTEQKNIL                  R15 ; [+2]
      145 LOADB                            R27 0 +1
      146 LOADB                            R27 1
      147 OR                               R28 R24 R25
      148 OR                               R29 R27 R17
      149 GETUPVAL                         R30 0
      150 GETTABLEKS                       R30 R30 K28 ["useCallback"]
      152 NEWCLOSURE                       R31 P1
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R27
      157 CAPTURE                          VAL R14
      158 CAPTURE                          UPVAL U3
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R16
      161 CAPTURE                          UPVAL U5
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R12
      164 NEWTABLE                         R32 0 7
      166 MOVE                             R33 R9
      167 MOVE                             R34 R4
      168 MOVE                             R35 R6
      169 MOVE                             R36 R7
      170 MOVE                             R37 R27
      171 MOVE                             R38 R11
      172 MOVE                             R39 R12
      173 SETLIST                          R32 R33 7 [1]
      175 CALL                             R30 2 1
      176 GETUPVAL                         R31 0
      177 GETTABLEKS                       R31 R31 K28 ["useCallback"]
      179 NEWCLOSURE                       R32 P2
      180 CAPTURE                          VAL R10
      181 CAPTURE                          VAL R5
      182 NEWTABLE                         R33 0 2
      184 MOVE                             R34 R10
      185 MOVE                             R35 R5
      186 SETLIST                          R33 R34 2 [1]
      188 CALL                             R31 2 1
      189 GETUPVAL                         R32 0
      190 GETTABLEKS                       R32 R32 K29 ["useMemo"]
      192 NEWCLOSURE                       R33 P3
      193 CAPTURE                          VAL R21
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R27
      197 CAPTURE                          VAL R23
      198 NEWTABLE                         R34 0 4
      200 GETUPVAL                         R35 6
      201 GETTABLEKS                       R35 R35 K30 ["locale"]
      203 MOVE                             R36 R8
      204 MOVE                             R37 R21
      205 MOVE                             R38 R27
      206 SETLIST                          R34 R35 4 [1]
      208 CALL                             R32 2 1
      209 GETUPVAL                         R33 7
      210 MOVE                             R34 R22
      211 CALL                             R33 1 1
      212 LOADB                            R34 1
      213 GETUPVAL                         R35 3
      214 GETTABLEKS                       R35 R35 K14 ["PreviewState"]
      216 GETTABLEKS                       R35 R35 K31 ["PublishFailed"]
      218 JUMPIFEQ                         R13 R35 ; [+10]
      220 GETUPVAL                         R35 3
      221 GETTABLEKS                       R35 R35 K14 ["PreviewState"]
      223 GETTABLEKS                       R35 R35 K32 ["InsertFailed"]
      225 JUMPIFEQ                         R13 R35 ; [+2]
      227 LOADB                            R34 0 +1
      228 LOADB                            R34 1
      229 JUMPIF                           R26 ; [+39]
      230 JUMPIFNOT                        R29 ; [+38]
      231 DUPTABLE                         R35 K34 [{"AddToPlaceButton"}]
      232 GETUPVAL                         R36 8
      233 GETUPVAL                         R37 9
      234 DUPTABLE                         R38 K40 [{"text", "size", "variant", "isLoading", "onActivated"}]
      235 JUMPIFNOT                        R34 ; [+3]
      236 GETTABLEKS                       R39 R32 K41 ["TryAgain"]
      238 JUMP                             ; [+2]
      239 GETTABLEKS                       R39 R32 K42 ["AddToPlace"]
      241 SETTABLEKS                       R39 R38 K35 ["text"]
      243 GETUPVAL                         R39 10
      244 GETTABLEKS                       R39 R39 K43 ["Enums"]
      246 GETTABLEKS                       R39 R39 K44 ["InputSize"]
      248 GETTABLEKS                       R39 R39 K45 ["Small"]
      250 SETTABLEKS                       R39 R38 K36 ["size"]
      252 GETUPVAL                         R39 10
      253 GETTABLEKS                       R39 R39 K43 ["Enums"]
      255 GETTABLEKS                       R39 R39 K46 ["ButtonVariant"]
      257 GETTABLEKS                       R39 R39 K47 ["Emphasis"]
      259 SETTABLEKS                       R39 R38 K37 ["variant"]
      261 SETTABLEKS                       R28 R38 K38 ["isLoading"]
      263 SETTABLEKS                       R30 R38 K39 ["onActivated"]
      265 CALL                             R36 2 1
      266 SETTABLEKS                       R36 R35 K33 ["AddToPlaceButton"]
      268 JUMP                             ; [+1]
      269 LOADNIL                          R35
      270 GETUPVAL                         R36 8
      271 GETUPVAL                         R37 11
      272 DUPTABLE                         R38 K54 [{"LayoutOrder", "expanded", "contentId", "editThisContent", "headerText", "isWorking", "chip", "previewImage", "footer"}]
      273 GETTABLEKS                       R39 R0 K48 ["LayoutOrder"]
      275 SETTABLEKS                       R39 R38 K48 ["LayoutOrder"]
      277 GETTABLEKS                       R39 R0 K17 ["expanded"]
      279 SETTABLEKS                       R39 R38 K17 ["expanded"]
      281 GETTABLEKS                       R39 R0 K12 ["contentId"]
      283 SETTABLEKS                       R39 R38 K12 ["contentId"]
      285 GETTABLEKS                       R39 R0 K11 ["editThisContent"]
      287 SETTABLEKS                       R39 R38 K11 ["editThisContent"]
      289 GETTABLEKS                       R39 R32 K15 ["Generated"]
      291 SETTABLEKS                       R39 R38 K49 ["headerText"]
      293 SETTABLEKS                       R28 R38 K50 ["isWorking"]
      295 JUMPIFNOT                        R23 ; [+12]
      296 DUPTABLE                         R39 K56 [{"text", "icon", "onActivated"}]
      297 GETTABLEKS                       R40 R32 K57 ["DisplayName"]
      299 SETTABLEKS                       R40 R39 K35 ["text"]
      301 GETTABLEKS                       R40 R33 K58 ["Image"]
      303 SETTABLEKS                       R40 R39 K55 ["icon"]
      305 SETTABLEKS                       R31 R39 K39 ["onActivated"]
      307 JUMP                             ; [+1]
      308 LOADNIL                          R39
      309 SETTABLEKS                       R39 R38 K51 ["chip"]
      311 SETTABLEKS                       R19 R38 K52 ["previewImage"]
      313 SETTABLEKS                       R35 R38 K53 ["footer"]
      315 CALL                             R36 2 -1
      316 RETURN                           R36 -1

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
       47 GETTABLEKS                       R14 R0 K12 ["expanded"]
       49 JUMPIFEQKB                       R14 TRUE ; [+2]
       51 LOADB                            R13 0 +1
       52 LOADB                            R13 1
       53 CALL                             R10 3 1
       54 GETUPVAL                         R11 2
       55 GETTABLEKS                       R11 R11 K13 ["useTag"]
       57 MOVE                             R12 R5
       58 DUPTABLE                         R13 K17 [{["includeCount"] = True, ["includeClassName"] = True}]
       59 CALL                             R11 2 1
       60 JUMPIFNOT                        R11 ; [+3]
       61 GETTABLEKS                       R12 R11 K18 ["count"]
       63 JUMPIF                           R12 ; [+1]
       64 LOADN                            R12 0
       65 JUMPIFNOT                        R11 ; [+3]
       66 GETTABLEKS                       R13 R11 K19 ["className"]
       68 JUMPIF                           R13 ; [+1]
       69 LOADNIL                          R13
       70 LOADN                            R15 0
       71 JUMPIFLT                         R15 R12 ; [+2]
       73 LOADB                            R14 0 +1
       74 LOADB                            R14 1
       75 GETUPVAL                         R15 1
       76 GETTABLEKS                       R15 R15 K20 ["useCallback"]
       78 NEWCLOSURE                       R16 P0
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R5
       81 NEWTABLE                         R17 0 2
       83 MOVE                             R18 R9
       84 MOVE                             R19 R5
       85 SETLIST                          R17 R18 2 [1]
       87 CALL                             R15 2 1
       88 GETUPVAL                         R16 1
       89 GETTABLEKS                       R16 R16 K21 ["useMemo"]
       91 NEWCLOSURE                       R17 P1
       92 CAPTURE                          VAL R12
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R14
       96 NEWTABLE                         R18 0 4
       98 GETUPVAL                         R19 4
       99 GETTABLEKS                       R19 R19 K22 ["locale"]
      101 MOVE                             R20 R8
      102 MOVE                             R21 R12
      103 MOVE                             R22 R14
      104 SETLIST                          R18 R19 4 [1]
      106 CALL                             R16 2 1
      107 GETUPVAL                         R17 5
      108 MOVE                             R18 R13
      109 CALL                             R17 1 1
      110 GETUPVAL                         R18 6
      111 GETUPVAL                         R19 7
      112 DUPTABLE                         R20 K29 [{"LayoutOrder", "expanded", "contentId", "editThisContent", "headerText", "chip", "previewImage"}]
      113 GETTABLEKS                       R21 R0 K23 ["LayoutOrder"]
      115 SETTABLEKS                       R21 R20 K23 ["LayoutOrder"]
      117 GETTABLEKS                       R21 R0 K12 ["expanded"]
      119 SETTABLEKS                       R21 R20 K12 ["expanded"]
      121 GETTABLEKS                       R21 R0 K24 ["contentId"]
      123 SETTABLEKS                       R21 R20 K24 ["contentId"]
      125 GETTABLEKS                       R21 R0 K25 ["editThisContent"]
      127 SETTABLEKS                       R21 R20 K25 ["editThisContent"]
      129 GETTABLEKS                       R21 R16 K30 ["Generated"]
      131 SETTABLEKS                       R21 R20 K26 ["headerText"]
      133 JUMPIFNOT                        R14 ; [+12]
      134 DUPTABLE                         R21 K34 [{"text", "icon", "onActivated"}]
      135 GETTABLEKS                       R22 R16 K35 ["DisplayName"]
      137 SETTABLEKS                       R22 R21 K31 ["text"]
      139 GETTABLEKS                       R22 R17 K36 ["Image"]
      141 SETTABLEKS                       R22 R21 K32 ["icon"]
      143 SETTABLEKS                       R15 R21 K33 ["onActivated"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R21
      147 SETTABLEKS                       R21 R20 K27 ["chip"]
      149 SETTABLEKS                       R10 R20 K28 ["previewImage"]
      151 CALL                             R18 2 -1
      152 RETURN                           R18 -1

PROTO_32:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["expanded"]
        3 DUPTABLE                         R1 K3 [{["rawTransformValues"] = True}]
        4 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K0 ["current"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantMeshGenAutoExpandCollapse"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 JUMPIF                           R0 ; [+2]
       12 GETUPVAL                         R1 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 3
       16 GETUPVAL                         R2 4
       17 DUPCLOSURE                       R3 K2 [PROTO_32]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_34:
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
       26 GETTABLEKS                       R5 R0 K6 ["editThisContent"]
       28 GETTABLEKS                       R6 R0 K7 ["contentId"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K8 ["useRef"]
       33 MOVE                             R8 R4
       34 CALL                             R7 1 1
       35 GETUPVAL                         R8 0
       36 GETTABLEKS                       R8 R8 K9 ["useEffect"]
       38 NEWCLOSURE                       R9 P0
       39 CAPTURE                          VAL R7
       40 CAPTURE                          VAL R4
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 NEWTABLE                         R10 0 3
       46 MOVE                             R11 R4
       47 MOVE                             R12 R6
       48 MOVE                             R13 R5
       49 SETLIST                          R10 R11 3 [1]
       51 CALL                             R8 2 0
       52 JUMPIFNOT                        R4 ; [+20]
       53 MOVE                             R8 R1
       54 JUMPIFNOT                        R8 ; [+7]
       55 GETTABLEKS                       R8 R1 K10 ["input"]
       57 JUMPIFNOT                        R8 ; [+4]
       58 GETTABLEKS                       R8 R1 K10 ["input"]
       60 GETTABLEKS                       R8 R8 K11 ["isManualRun"]
       62 JUMPIFNOT                        R8 ; [+5]
       63 GETUPVAL                         R9 2
       64 GETUPVAL                         R10 3
       65 MOVE                             R11 R0
       66 CALL                             R9 2 -1
       67 RETURN                           R9 -1
       68 GETUPVAL                         R9 2
       69 GETUPVAL                         R10 4
       70 MOVE                             R11 R0
       71 CALL                             R9 2 -1
       72 RETURN                           R9 -1
       73 GETUPVAL                         R8 2
       74 GETUPVAL                         R9 5
       75 MOVE                             R10 R0
       76 CALL                             R8 2 -1
       77 RETURN                           R8 -1

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
       33 GETTABLEKS                       R5 R0 K15 ["Flags"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["Foundation"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Components"]
       47 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       49 GETTABLEKS                       R7 R7 K13 ["Actions"]
       51 GETTABLEKS                       R7 R7 K18 ["InstanceActionsContext"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K10 ["Components"]
       58 GETTABLEKS                       R8 R8 K12 ["Contexts"]
       60 GETTABLEKS                       R8 R8 K13 ["Actions"]
       62 GETTABLEKS                       R8 R8 K19 ["MeshGenActionsContext"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K9 [require]
       67 GETTABLEKS                       R9 R0 K16 ["Parent"]
       69 GETTABLEKS                       R9 R9 K20 ["React"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K9 [require]
       74 GETTABLEKS                       R10 R0 K16 ["Parent"]
       76 GETTABLEKS                       R10 R10 K21 ["ReactUtils"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R0 K10 ["Components"]
       83 GETTABLEKS                       R11 R11 K22 ["ShimmerGradient"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R0 K23 ["Util"]
       90 GETTABLEKS                       R12 R12 K24 ["TestIds"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K9 [require]
       95 GETTABLEKS                       R13 R0 K25 ["Resources"]
       97 GETTABLEKS                       R13 R13 K26 ["Localization"]
       99 GETTABLEKS                       R13 R13 K27 ["Translator"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K9 [require]
      104 GETTABLEKS                       R14 R0 K28 ["Types"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K9 [require]
      109 GETTABLEKS                       R15 R0 K29 ["Hooks"]
      111 GETTABLEKS                       R15 R15 K30 ["useClassIcon"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K9 [require]
      116 GETTABLEKS                       R16 R0 K23 ["Util"]
      118 GETTABLEKS                       R16 R16 K31 ["MeshGen"]
      120 GETTABLEKS                       R16 R16 K32 ["MeshGenChannel"]
      122 CALL                             R15 1 1
      123 GETIMPORT                        R16 K9 [require]
      125 GETTABLEKS                       R17 R0 K23 ["Util"]
      127 GETTABLEKS                       R17 R17 K31 ["MeshGen"]
      129 GETTABLEKS                       R17 R17 K33 ["MeshGenConstants"]
      131 CALL                             R16 1 1
      132 GETIMPORT                        R17 K9 [require]
      134 GETTABLEKS                       R18 R0 K23 ["Util"]
      136 GETTABLEKS                       R18 R18 K31 ["MeshGen"]
      138 GETTABLEKS                       R18 R18 K34 ["MeshGenTypes"]
      140 CALL                             R17 1 1
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R0 K23 ["Util"]
      145 GETTABLEKS                       R19 R19 K35 ["Gen3dUtils"]
      147 GETTABLEKS                       R19 R19 K36 ["ViewportPreviewUtils"]
      149 CALL                             R18 1 1
      150 GETTABLEKS                       R19 R5 K37 ["Button"]
      152 GETTABLEKS                       R20 R5 K38 ["Chip"]
      154 GETTABLEKS                       R21 R5 K39 ["IconButton"]
      156 GETTABLEKS                       R22 R5 K40 ["Image"]
      158 GETTABLEKS                       R23 R5 K41 ["Skeleton"]
      160 GETTABLEKS                       R24 R5 K42 ["Text"]
      162 GETTABLEKS                       R25 R5 K43 ["View"]
      164 GETTABLEKS                       R26 R9 K44 ["createNextOrder"]
      166 GETTABLEKS                       R27 R8 K45 ["createElement"]
      168 GETTABLEKS                       R28 R16 K46 ["Enums"]
      170 GETTABLEKS                       R29 R16 K47 ["PREVIEW_HEIGHT"]
      172 GETTABLEKS                       R30 R16 K48 ["PREVIEW_IMAGE_COUNT_CAROUSEL"]
      174 NEWTABLE                         R31 0 0
      176 DUPCLOSURE                       R32 K49 [PROTO_0]
      177 DUPCLOSURE                       R33 K50 [PROTO_4]
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R3
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R1
      183 CAPTURE                          VAL R18
      184 DUPCLOSURE                       R34 K51 [PROTO_14]
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R30
      187 DUPCLOSURE                       R35 K52 [PROTO_15]
      188 CAPTURE                          VAL R34
      189 CAPTURE                          VAL R26
      190 CAPTURE                          VAL R27
      191 CAPTURE                          VAL R23
      192 CAPTURE                          VAL R29
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R25
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R11
      198 DUPCLOSURE                       R36 K53 [PROTO_16]
      199 CAPTURE                          VAL R18
      200 CAPTURE                          VAL R27
      201 DUPCLOSURE                       R37 K54 [PROTO_17]
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R27
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R11
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R25
      209 CAPTURE                          VAL R20
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R36
      212 CAPTURE                          VAL R35
      213 DUPCLOSURE                       R38 K55 [PROTO_19]
      214 CAPTURE                          VAL R8
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R26
      217 CAPTURE                          VAL R27
      218 CAPTURE                          VAL R2
      219 CAPTURE                          VAL R11
      220 CAPTURE                          VAL R24
      221 CAPTURE                          VAL R10
      222 DUPCLOSURE                       R39 K56 [PROTO_28]
      223 CAPTURE                          VAL R8
      224 CAPTURE                          VAL R7
      225 CAPTURE                          VAL R6
      226 CAPTURE                          VAL R28
      227 CAPTURE                          VAL R33
      228 CAPTURE                          VAL R4
      229 CAPTURE                          VAL R12
      230 CAPTURE                          VAL R14
      231 CAPTURE                          VAL R27
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R5
      234 CAPTURE                          VAL R37
      235 DUPCLOSURE                       R40 K57 [PROTO_31]
      236 CAPTURE                          VAL R31
      237 CAPTURE                          VAL R8
      238 CAPTURE                          VAL R6
      239 CAPTURE                          VAL R33
      240 CAPTURE                          VAL R12
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R27
      243 CAPTURE                          VAL R37
      244 DUPCLOSURE                       R41 K58 [PROTO_34]
      245 CAPTURE                          VAL R8
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R27
      248 CAPTURE                          VAL R39
      249 CAPTURE                          VAL R40
      250 CAPTURE                          VAL R38
      251 DUPTABLE                         R42 K61 [{["Type"] = "MeshGen", ["ContentWidget"]}]
      252 GETTABLEKS                       R43 R8 K62 ["memo"]
      254 MOVE                             R44 R41
      255 CALL                             R43 1 1
      256 SETTABLEKS                       R43 R42 K60 ["ContentWidget"]
      258 RETURN                           R42 1

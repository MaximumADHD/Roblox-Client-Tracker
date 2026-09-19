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
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["decrement"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["increment"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useRef"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["useCallback"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R5
       25 NEWTABLE                         R8 0 2
       27 GETTABLEKS                       R9 R0 K3 ["decrement"]
       29 MOVE                             R10 R5
       30 SETLIST                          R8 R9 2 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R5
       39 NEWTABLE                         R9 0 2
       41 GETTABLEKS                       R10 R0 K4 ["increment"]
       43 MOVE                             R11 R5
       44 SETLIST                          R9 R10 2 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       50 NEWCLOSURE                       R9 P3
       51 CAPTURE                          VAL R4
       52 NEWTABLE                         R10 0 0
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K5 ["useEffect"]
       58 NEWCLOSURE                       R9 P4
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 NEWTABLE                         R10 0 5
       64 GETTABLEKS                       R11 R0 K6 ["exists"]
       66 GETTABLEKS                       R12 R0 K4 ["increment"]
       68 GETTABLEKS                       R13 R0 K7 ["countRef"]
       70 MOVE                             R14 R2
       71 MOVE                             R15 R1
       72 SETLIST                          R10 R11 5 [1]
       74 CALL                             R8 2 0
       75 RETURN                           R6 2

PROTO_11:
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
       14 JUMPIFNOT                        R8 ; [+31]
       15 JUMPIFEQKS                       R8 K2 [""] ; [+30]
       17 LOADK                            R9 K3 ["persist_%*"]
       18 MOVE                             R11 R7
       19 NAMECALL                         R9 R9 K4 ["format"]
       21 CALL                             R9 2 1
       22 GETUPVAL                         R10 1
       23 GETUPVAL                         R11 2
       24 DUPTABLE                         R12 K11 [{["backgroundStyle"], ["Image"], ["Position"], ["Size"], ["ZIndex"] = -10}]
       25 DUPTABLE                         R13 K14 [{["Transparency"] = 1}]
       26 SETTABLEKS                       R13 R12 K5 ["backgroundStyle"]
       28 SETTABLEKS                       R8 R12 K6 ["Image"]
       30 GETIMPORT                        R13 K17 [UDim2.fromOffset]
       32 LOADN                            R14 0
       33 LOADN                            R15 0
       34 CALL                             R13 2 1
       35 SETTABLEKS                       R13 R12 K7 ["Position"]
       37 GETIMPORT                        R13 K17 [UDim2.fromOffset]
       39 LOADN                            R14 2
       40 LOADN                            R15 2
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R12 K8 ["Size"]
       44 CALL                             R10 2 1
       45 SETTABLE                         R10 R2 R9
       46 FORGLOOP                         R3 2 ; [-34]
       48 GETIMPORT                        R3 K19 [next]
       50 MOVE                             R4 R2
       51 CALL                             R3 1 1
       52 JUMPIF                           R3 ; [+2]
       53 LOADNIL                          R3
       54 RETURN                           R3 1
       55 GETUPVAL                         R3 1
       56 GETUPVAL                         R4 3
       57 DUPTABLE                         R5 K22 [{["tag"] = "size-0-0 clip"}]
       58 MOVE                             R6 R2
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["previewImage"]
        2 GETTABLEKS                       R2 R1 K1 ["exists"]
        4 JUMPIF                           R2 ; [+28]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K5 [{"Size", "radius", "LayoutOrder"}]
        8 GETIMPORT                        R5 K8 [UDim2.new]
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 GETTABLEKS                       R9 R0 K9 ["previewHeight"]
       15 CALL                             R5 4 1
       16 SETTABLEKS                       R5 R4 K2 ["Size"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R5 R5 K10 ["Enums"]
       21 GETTABLEKS                       R5 R5 K11 ["Radius"]
       23 GETTABLEKS                       R5 R5 K12 ["Small"]
       25 SETTABLEKS                       R5 R4 K3 ["radius"]
       27 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1
       33 GETUPVAL                         R2 3
       34 CALL                             R2 0 1
       35 LOADNIL                          R3
       36 GETTABLEKS                       R4 R1 K13 ["images"]
       38 JUMPIFNOT                        R4 ; [+44]
       39 NEWTABLE                         R4 0 0
       41 GETTABLEKS                       R5 R1 K13 ["images"]
       43 LOADNIL                          R6
       44 LOADNIL                          R7
       45 FORGPREP                         R5
       46 JUMPIFEQKS                       R9 K14 [""] ; [+28]
       48 LOADK                            R10 K15 ["preload_%*"]
       49 MOVE                             R12 R8
       50 NAMECALL                         R10 R10 K16 ["format"]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 0
       54 GETUPVAL                         R12 4
       55 DUPTABLE                         R13 K20 [{"backgroundStyle", "imageStyle", "Image", "Size", "LayoutOrder"}]
       56 DUPTABLE                         R14 K23 [{["Transparency"] = 1}]
       57 SETTABLEKS                       R14 R13 K17 ["backgroundStyle"]
       59 DUPTABLE                         R14 K25 [{["Transparency"] = 0.9}]
       60 SETTABLEKS                       R14 R13 K18 ["imageStyle"]
       62 SETTABLEKS                       R9 R13 K19 ["Image"]
       64 GETIMPORT                        R14 K27 [UDim2.fromOffset]
       66 LOADN                            R15 4
       67 LOADN                            R16 4
       68 CALL                             R14 2 1
       69 SETTABLEKS                       R14 R13 K2 ["Size"]
       71 SETTABLEKS                       R8 R13 K4 ["LayoutOrder"]
       73 CALL                             R11 2 1
       74 SETTABLE                         R11 R4 R10
       75 FORGLOOP                         R5 2 ; [-30]
       77 GETUPVAL                         R5 0
       78 GETUPVAL                         R6 5
       79 DUPTABLE                         R7 K30 [{["tag"] = "row size-0-0 no-clip"}]
       80 MOVE                             R8 R4
       81 CALL                             R5 3 1
       82 MOVE                             R3 R5
       83 GETUPVAL                         R4 0
       84 GETUPVAL                         R5 5
       85 DUPTABLE                         R6 K32 [{["tag"] = "row flex-x-between align-x-center align-y-center size-full-0 padding-x-small padding-y-small radius-small bg-shift-200", ["Size"], ["LayoutOrder"]}]
       86 GETIMPORT                        R7 K8 [UDim2.new]
       88 LOADN                            R8 1
       89 LOADN                            R9 0
       90 LOADN                            R10 0
       91 GETTABLEKS                       R11 R0 K9 ["previewHeight"]
       93 CALL                             R7 4 1
       94 SETTABLEKS                       R7 R6 K2 ["Size"]
       96 GETTABLEKS                       R7 R0 K4 ["LayoutOrder"]
       98 SETTABLEKS                       R7 R6 K4 ["LayoutOrder"]
      100 DUPTABLE                         R7 K36 [{"LastPreview", "PreviewImage", "NextPreview"}]
      101 GETUPVAL                         R8 0
      102 GETUPVAL                         R9 6
      103 DUPTABLE                         R10 K40 [{"icon", "size", "onActivated", "LayoutOrder"}]
      104 GETUPVAL                         R11 2
      105 GETTABLEKS                       R11 R11 K10 ["Enums"]
      107 GETTABLEKS                       R11 R11 K41 ["IconName"]
      109 GETTABLEKS                       R11 R11 K42 ["ChevronLargeLeft"]
      111 SETTABLEKS                       R11 R10 K37 ["icon"]
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K10 ["Enums"]
      116 GETTABLEKS                       R11 R11 K43 ["InputSize"]
      118 GETTABLEKS                       R11 R11 K12 ["Small"]
      120 SETTABLEKS                       R11 R10 K38 ["size"]
      122 GETTABLEKS                       R11 R0 K44 ["onPrevious"]
      124 SETTABLEKS                       R11 R10 K39 ["onActivated"]
      126 MOVE                             R11 R2
      127 CALL                             R11 0 1
      128 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      130 CALL                             R8 2 1
      131 SETTABLEKS                       R8 R7 K33 ["LastPreview"]
      133 GETUPVAL                         R8 0
      134 GETUPVAL                         R9 4
      135 DUPTABLE                         R10 K51 [{["tag"] = "fill size-0-full radius-small", ["Image"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ScaleType"], ["LayoutOrder"], ["testId"]}]
      136 GETTABLEKS                       R11 R1 K52 ["current"]
      138 SETTABLEKS                       R11 R10 K19 ["Image"]
      140 GETIMPORT                        R11 K55 [Color3.fromRGB]
      142 LOADN                            R12 0
      143 LOADN                            R13 0
      144 LOADN                            R14 0
      145 CALL                             R11 3 1
      146 SETTABLEKS                       R11 R10 K46 ["BackgroundColor3"]
      148 GETIMPORT                        R11 K58 [Enum.ScaleType.Fit]
      150 SETTABLEKS                       R11 R10 K49 ["ScaleType"]
      152 MOVE                             R11 R2
      153 CALL                             R11 0 1
      154 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      156 GETTABLEKS                       R11 R0 K50 ["testId"]
      158 SETTABLEKS                       R11 R10 K50 ["testId"]
      160 DUPTABLE                         R11 K60 [{"PreloadTray"}]
      161 SETTABLEKS                       R3 R11 K59 ["PreloadTray"]
      163 CALL                             R8 3 1
      164 SETTABLEKS                       R8 R7 K34 ["PreviewImage"]
      166 GETUPVAL                         R8 0
      167 GETUPVAL                         R9 6
      168 DUPTABLE                         R10 K40 [{"icon", "size", "onActivated", "LayoutOrder"}]
      169 GETUPVAL                         R11 2
      170 GETTABLEKS                       R11 R11 K10 ["Enums"]
      172 GETTABLEKS                       R11 R11 K41 ["IconName"]
      174 GETTABLEKS                       R11 R11 K61 ["ChevronLargeRight"]
      176 SETTABLEKS                       R11 R10 K37 ["icon"]
      178 GETUPVAL                         R11 2
      179 GETTABLEKS                       R11 R11 K10 ["Enums"]
      181 GETTABLEKS                       R11 R11 K43 ["InputSize"]
      183 GETTABLEKS                       R11 R11 K12 ["Small"]
      185 SETTABLEKS                       R11 R10 K38 ["size"]
      187 GETTABLEKS                       R11 R0 K62 ["onNext"]
      189 SETTABLEKS                       R11 R10 K39 ["onActivated"]
      191 MOVE                             R11 R2
      192 CALL                             R11 0 1
      193 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
      195 CALL                             R8 2 1
      196 SETTABLEKS                       R8 R7 K35 ["NextPreview"]
      198 CALL                             R4 3 -1
      199 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["Gen3dUtils"]
       34 GETTABLEKS                       R5 R5 K12 ["ViewportPreviewUtils"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["IconButton"]
       39 GETTABLEKS                       R6 R1 K14 ["Image"]
       41 GETTABLEKS                       R7 R1 K15 ["Skeleton"]
       43 GETTABLEKS                       R8 R1 K16 ["View"]
       45 GETTABLEKS                       R9 R3 K17 ["createNextOrder"]
       47 GETTABLEKS                       R10 R2 K18 ["createElement"]
       49 DUPCLOSURE                       R11 K19 [PROTO_0]
       50 DUPCLOSURE                       R12 K20 [PROTO_10]
       51 CAPTURE                          VAL R2
       52 DUPCLOSURE                       R13 K21 [PROTO_11]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R8
       57 DUPCLOSURE                       R14 K22 [PROTO_12]
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 DUPTABLE                         R15 K27 [{"hasPreviewFrame", "usePreviewAutoplay", "buildPersistFrames", "PreviewCarousel"}]
       66 SETTABLEKS                       R11 R15 K23 ["hasPreviewFrame"]
       68 SETTABLEKS                       R12 R15 K24 ["usePreviewAutoplay"]
       70 SETTABLEKS                       R13 R15 K25 ["buildPersistFrames"]
       72 SETTABLEKS                       R14 R15 K26 ["PreviewCarousel"]
       74 RETURN                           R15 1

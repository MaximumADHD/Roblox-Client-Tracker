PROTO_0:
        0 JUMPIFNOT                        R1 ; [+6]
        1 LENGTH                           R2 R0
        2 LENGTH                           R3 R1
        3 JUMPIFEQ                         R2 R3 ; [+3]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 GETIMPORT                        R3 K1 [ipairs]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 3
       13 FORGPREP_INEXT                   R3
       14 LOADB                            R8 1
       15 SETTABLE                         R8 R2 R7
       16 FORGLOOP                         R3 2 [inext] ; [-3]
       18 GETIMPORT                        R3 K1 [ipairs]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 3
       22 FORGPREP_INEXT                   R3
       23 GETTABLE                         R8 R2 R7
       24 JUMPIF                           R8 ; [+2]
       25 LOADB                            R8 1
       26 RETURN                           R8 1
       27 FORGLOOP                         R3 2 [inext] ; [-5]
       29 LOADB                            R3 0
       30 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["checkForUpdate"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["avatars"]
        6 GETTABLEKS                       R3 R0 K2 ["PreviewAvatars"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R2 R0 K2 ["PreviewAvatars"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K1 ["avatars"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R3 R0 K5 ["Text"]
       11 GETTABLEKS                       R4 R2 K6 ["PreviewContext"]
       13 MOVE                             R7 R3
       14 NAMECALL                         R5 R4 K7 ["setPreviewAvatarIndex"]
       16 CALL                             R5 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["props"]
        3 GETTABLEKS                       R4 R4 K1 ["Stylizer"]
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETTABLEKS                       R5 R4 K2 ["SelectedBorderColor"]
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R5 R4 K3 ["UnselectedBorderColor"]
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R6 R4 K4 ["SelectedBorderMode"]
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R6 R4 K5 ["UnselectedBorderMode"]
       17 JUMPIFNOT                        R0 ; [+2]
       18 LOADN                            R7 100
       19 JUMP                             ; [+1]
       20 LOADN                            R7 99
       21 GETUPVAL                         R8 1
       22 GETTABLEKS                       R8 R8 K6 ["createElement"]
       24 LOADK                            R9 K7 ["TextButton"]
       25 NEWTABLE                         R10 16 0
       27 GETIMPORT                        R11 K10 [UDim2.new]
       29 DIVRK                            R12 K11 [1] R3
       30 LOADN                            R13 0
       31 LOADN                            R14 1
       32 LOADN                            R15 0
       33 CALL                             R11 4 1
       34 SETTABLEKS                       R11 R10 K12 ["Size"]
       36 SETTABLEKS                       R5 R10 K13 ["BorderColor3"]
       38 GETTABLEKS                       R11 R4 K14 ["BorderSizePixel"]
       40 SETTABLEKS                       R11 R10 K14 ["BorderSizePixel"]
       42 SETTABLEKS                       R6 R10 K15 ["BorderMode"]
       44 SETTABLEKS                       R1 R10 K16 ["Text"]
       46 LOADN                            R11 1
       47 SETTABLEKS                       R11 R10 K17 ["TextTransparency"]
       49 SETTABLEKS                       R7 R10 K18 ["ZIndex"]
       51 SETTABLEKS                       R1 R10 K19 ["LayoutOrder"]
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R11 R11 K20 ["Event"]
       56 GETTABLEKS                       R11 R11 K21 ["InputBegan"]
       58 GETUPVAL                         R12 0
       59 GETTABLEKS                       R12 R12 K22 ["onInputBegan"]
       61 SETTABLE                         R12 R10 R11
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K20 ["Event"]
       65 GETTABLEKS                       R11 R11 K23 ["InputEnded"]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R12 R12 K24 ["onInputEnded"]
       70 SETTABLE                         R12 R10 R11
       71 DUPTABLE                         R11 K26 [{"Preview"}]
       72 SETTABLEKS                       R2 R11 K25 ["Preview"]
       74 CALL                             R8 3 -1
       75 RETURN                           R8 -1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["avatars"]
        4 DUPCLOSURE                       R1 K1 [PROTO_0]
        5 SETTABLEKS                       R1 R0 K2 ["checkForUpdate"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["updateAvatars"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onInputEnded"]
       15 NEWCLOSURE                       R1 P3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K5 ["createThumbnailComponent"]
       20 GETTABLEKS                       R1 R0 K3 ["updateAvatars"]
       22 GETTABLEKS                       R2 R0 K6 ["props"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["avatars"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETTABLEKS                       R6 R5 K3 ["Parent"]
        8 JUMPIFNOT                        R6 ; [+15]
        9 GETTABLEKS                       R6 R5 K3 ["Parent"]
       11 LOADK                            R8 K4 ["WorldModel"]
       12 NAMECALL                         R6 R6 K5 ["IsA"]
       14 CALL                             R6 2 1
       15 JUMPIFNOT                        R6 ; [+8]
       16 GETTABLEKS                       R6 R5 K3 ["Parent"]
       18 LOADNIL                          R7
       19 SETTABLEKS                       R7 R5 K3 ["Parent"]
       21 NAMECALL                         R7 R6 K6 ["Destroy"]
       23 CALL                             R7 1 0
       24 FORGLOOP                         R1 2 [inext] ; [-19]
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["updateAvatars"]
        2 MOVE                             R4 R1
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Size"]
        4 GETTABLEKS                       R3 R1 K2 ["Position"]
        6 GETTABLEKS                       R4 R1 K3 ["Capacity"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["Stylizer"]
       12 NEWTABLE                         R7 0 0
       14 GETTABLEKS                       R8 R0 K6 ["avatars"]
       16 GETTABLEKS                       R9 R1 K7 ["SelectedIndex"]
       18 LENGTH                           R11 R8
       19 FASTCALL2                        MATH_MIN R11 R4 ; [+4]
       21 MOVE                             R12 R4
       22 GETIMPORT                        R10 K10 [math.min]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R8 ; [+70]
       26 LENGTH                           R11 R8
       27 LOADN                            R12 1
       28 JUMPIFNOTLT                      R12 R11 ; [+67]
       30 GETIMPORT                        R11 K12 [ipairs]
       32 MOVE                             R12 R8
       33 CALL                             R11 1 3
       34 FORGPREP_INEXT                   R11
       35 LENGTH                           R16 R7
       36 JUMPIFEQ                         R16 R10 ; [+59]
       38 JUMPIFEQ                         R14 R9 ; [+2]
       40 LOADB                            R16 0 +1
       41 LOADB                            R16 1
       42 LOADNIL                          R17
       43 GETTABLEKS                       R18 R15 K13 ["Parent"]
       45 JUMPIFNOT                        R18 ; [+7]
       46 GETTABLEKS                       R18 R15 K13 ["Parent"]
       48 LOADK                            R20 K14 ["WorldModel"]
       49 NAMECALL                         R18 R18 K15 ["IsA"]
       51 CALL                             R18 2 1
       52 JUMPIF                           R18 ; [+8]
       53 GETIMPORT                        R18 K18 [Instance.new]
       55 LOADK                            R19 K14 ["WorldModel"]
       56 CALL                             R18 1 1
       57 MOVE                             R17 R18
       58 SETTABLEKS                       R17 R15 K13 ["Parent"]
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R17 R15 K13 ["Parent"]
       63 GETUPVAL                         R18 0
       64 GETTABLEKS                       R18 R18 K19 ["createElement"]
       66 GETUPVAL                         R19 1
       67 DUPTABLE                         R20 K27 [{["Model"], ["Size"], ["DisablePan"] = True, ["DisableZoom"] = True, ["Static"] = True, ["FocusDirection"] = {-0.5, 0.5, -1}}]
       68 SETTABLEKS                       R17 R20 K20 ["Model"]
       70 GETIMPORT                        R21 K29 [UDim2.new]
       72 LOADN                            R22 1
       73 LOADN                            R23 0
       74 LOADN                            R24 1
       75 LOADN                            R25 0
       76 CALL                             R21 4 1
       77 SETTABLEKS                       R21 R20 K1 ["Size"]
       79 CALL                             R18 2 1
       80 GETTABLEKS                       R19 R0 K30 ["createThumbnailComponent"]
       82 MOVE                             R20 R16
       83 MOVE                             R21 R14
       84 MOVE                             R22 R18
       85 MOVE                             R23 R10
       86 CALL                             R19 4 1
       87 FASTCALL2                        TABLE_INSERT R7 R19 ; [+5]
       89 MOVE                             R21 R7
       90 MOVE                             R22 R19
       91 GETIMPORT                        R20 K33 [table.insert]
       93 CALL                             R20 2 0
       94 FORGLOOP                         R11 2 [inext] ; [-60]
       96 MOVE                             R12 R7
       97 GETUPVAL                         R13 0
       98 GETTABLEKS                       R13 R13 K19 ["createElement"]
      100 LOADK                            R14 K34 ["UIListLayout"]
      101 DUPTABLE                         R15 K37 [{"FillDirection", "SortOrder"}]
      102 GETIMPORT                        R16 K40 [Enum.FillDirection.Horizontal]
      104 SETTABLEKS                       R16 R15 K35 ["FillDirection"]
      106 GETIMPORT                        R16 K42 [Enum.SortOrder.LayoutOrder]
      108 SETTABLEKS                       R16 R15 K36 ["SortOrder"]
      110 CALL                             R13 2 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R11 K33 [table.insert]
      114 CALL                             R11 -1 0
      115 GETUPVAL                         R11 0
      116 GETTABLEKS                       R11 R11 K19 ["createElement"]
      118 LOADK                            R12 K43 ["Frame"]
      119 DUPTABLE                         R13 K46 [{["AnchorPoint"], ["Size"], ["Position"], ["BackgroundTransparency"] = 1}]
      120 SETTABLEKS                       R5 R13 K4 ["AnchorPoint"]
      122 GETIMPORT                        R14 K29 [UDim2.new]
      124 LOADN                            R15 0
      125 GETTABLEKS                       R18 R2 K47 ["X"]
      127 GETTABLEKS                       R18 R18 K48 ["Offset"]
      129 MUL                              R17 R18 R10
      130 DIV                              R16 R17 R4
      131 LOADN                            R17 0
      132 GETTABLEKS                       R18 R2 K49 ["Y"]
      134 GETTABLEKS                       R18 R18 K48 ["Offset"]
      136 CALL                             R14 4 1
      137 SETTABLEKS                       R14 R13 K1 ["Size"]
      139 SETTABLEKS                       R3 R13 K2 ["Position"]
      141 MOVE                             R14 R7
      142 CALL                             R11 3 -1
      143 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 GETTABLEKS                       R0 R0 K2 ["Workspace"]
        5 GETIMPORT                        R1 K4 [script]
        7 GETTABLEKS                       R1 R1 K5 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Parent"]
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R1 K8 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K4 [script]
       20 GETTABLEKS                       R3 R3 K5 ["Parent"]
       22 GETTABLEKS                       R3 R3 K5 ["Parent"]
       24 GETIMPORT                        R4 K7 [require]
       26 GETTABLEKS                       R5 R1 K9 ["Framework"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K10 ["UI"]
       31 GETTABLEKS                       R6 R5 K11 ["AssetRenderModel"]
       33 GETTABLEKS                       R7 R4 K12 ["ContextServices"]
       35 GETTABLEKS                       R8 R7 K13 ["withContext"]
       37 GETIMPORT                        R9 K7 [require]
       39 GETTABLEKS                       R10 R3 K14 ["Contexts"]
       41 GETTABLEKS                       R10 R10 K15 ["PreviewContext"]
       43 CALL                             R9 1 1
       44 GETTABLEKS                       R10 R2 K16 ["PureComponent"]
       46 LOADK                            R12 K17 ["PreviewAvatarWheel"]
       47 NAMECALL                         R10 R10 K18 ["extend"]
       49 CALL                             R10 2 1
       50 DUPTABLE                         R11 K22 [{["Capacity"] = 3, ["Size"]}]
       51 GETIMPORT                        R12 K25 [UDim2.new]
       53 LOADN                            R13 1
       54 LOADN                            R14 0
       55 LOADN                            R15 1
       56 LOADN                            R16 0
       57 CALL                             R12 4 1
       58 SETTABLEKS                       R12 R11 K21 ["Size"]
       60 SETTABLEKS                       R11 R10 K26 ["defaultProps"]
       62 DUPCLOSURE                       R11 K27 [PROTO_4]
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R11 R10 K28 ["init"]
       66 DUPCLOSURE                       R11 K29 [PROTO_5]
       67 SETTABLEKS                       R11 R10 K30 ["willUnmount"]
       69 DUPCLOSURE                       R11 K31 [PROTO_6]
       70 SETTABLEKS                       R11 R10 K32 ["willUpdate"]
       72 DUPCLOSURE                       R11 K33 [PROTO_7]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 SETTABLEKS                       R11 R10 K34 ["render"]
       77 MOVE                             R11 R8
       78 DUPTABLE                         R12 K36 [{"Stylizer", "PreviewContext"}]
       79 GETTABLEKS                       R13 R7 K35 ["Stylizer"]
       81 SETTABLEKS                       R13 R12 K35 ["Stylizer"]
       83 SETTABLEKS                       R9 R12 K15 ["PreviewContext"]
       85 CALL                             R11 1 1
       86 MOVE                             R12 R10
       87 CALL                             R11 1 1
       88 MOVE                             R10 R11
       89 RETURN                           R10 1

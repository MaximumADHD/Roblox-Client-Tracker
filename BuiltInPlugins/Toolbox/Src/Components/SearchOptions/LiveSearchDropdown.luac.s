PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["closeDropdown"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["closeDropdown"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["onItemClicked"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["onItemClicked"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["closeDropdown"]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onItemClicked"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onItemClicked"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R3 K0 ["Name"]
        2 JUMPIF                           R5 ; [+13]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K1 ["shouldDebugWarnings"]
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+8]
        8 GETIMPORT                        R5 K3 [warn]
       10 LOADK                            R6 K4 ["Index %d in DropdownMenu doesn't have a 'name' member"]
       11 MOVE                             R8 R3
       12 NAMECALL                         R6 R6 K5 ["format"]
       14 CALL                             R6 2 -1
       15 CALL                             R5 -1 0
       16 GETTABLEKS                       R6 R0 K6 ["props"]
       18 GETTABLEKS                       R6 R6 K7 ["GetKey"]
       20 JUMPIFNOT                        R6 ; [+7]
       21 GETTABLEKS                       R5 R0 K6 ["props"]
       23 GETTABLEKS                       R5 R5 K7 ["GetKey"]
       25 MOVE                             R6 R3
       26 CALL                             R5 1 1
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R5 R3 K0 ["Name"]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K8 ["createElement"]
       33 GETUPVAL                         R7 2
       34 DUPTABLE                         R8 K13 [{"Name", "Thumbnail", "LayoutOrder", "closeDropdown", "onClick"}]
       35 GETTABLEKS                       R9 R3 K0 ["Name"]
       37 SETTABLEKS                       R9 R8 K0 ["Name"]
       39 GETTABLEKS                       R9 R3 K9 ["Thumbnail"]
       41 SETTABLEKS                       R9 R8 K9 ["Thumbnail"]
       43 SETTABLEKS                       R2 R8 K10 ["LayoutOrder"]
       45 GETTABLEKS                       R9 R0 K11 ["closeDropdown"]
       47 SETTABLEKS                       R9 R8 K11 ["closeDropdown"]
       49 NEWCLOSURE                       R9 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 SETTABLEKS                       R9 R8 K12 ["onClick"]
       54 CALL                             R6 2 1
       55 SETTABLE                         R6 R1 R5
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K14 ["SEARCH_ENTRY_HEIGHT"]
       59 ADD                              R6 R4 R7
       60 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"UIListLayout"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K2 ["createElement"]
        4 LOADK                            R4 K0 ["UIListLayout"]
        5 DUPTABLE                         R5 K5 [{"FillDirection", "SortOrder"}]
        6 GETIMPORT                        R6 K8 [Enum.FillDirection.Vertical]
        8 SETTABLEKS                       R6 R5 K3 ["FillDirection"]
       10 GETIMPORT                        R6 K10 [Enum.SortOrder.LayoutOrder]
       12 SETTABLEKS                       R6 R5 K4 ["SortOrder"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K0 ["UIListLayout"]
       17 LOADN                            R3 0
       18 LOADN                            R4 0
       19 JUMPIFNOT                        R1 ; [+16]
       20 GETIMPORT                        R5 K12 [ipairs]
       22 MOVE                             R6 R1
       23 CALL                             R5 1 3
       24 FORGPREP_INEXT                   R5
       25 MOVE                             R12 R2
       26 MOVE                             R13 R3
       27 MOVE                             R14 R9
       28 MOVE                             R15 R4
       29 NAMECALL                         R10 R0 K13 ["addEntry"]
       31 CALL                             R10 5 1
       32 MOVE                             R4 R10
       33 ADDK                             R3 R3 K14 [1]
       34 FORGLOOP                         R5 2 [inext] ; [-10]
       36 MOVE                             R5 R2
       37 MOVE                             R6 R4
       38 RETURN                           R5 2

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Position"]
        4 JUMPIF                           R1 ; [+3]
        5 GETIMPORT                        R1 K4 [UDim2.new]
        7 CALL                             R1 0 1
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R2 R2 K5 ["Size"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K7 ["LayoutOrder"]
       16 ORK                              R3 R4 K6 [0]
       17 GETTABLEKS                       R4 R0 K0 ["props"]
       19 GETTABLEKS                       R4 R4 K8 ["Items"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R0 K0 ["props"]
       26 GETTABLEKS                       R5 R5 K9 ["Modal"]
       28 GETTABLEKS                       R5 R5 K10 ["modalTarget"]
       30 GETTABLEKS                       R6 R0 K0 ["props"]
       32 GETTABLEKS                       R6 R6 K11 ["MaxHeight"]
       34 JUMPIF                           R6 ; [+4]
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K13 ["SEARCH_ENTRY_HEIGHT"]
       38 MULK                             R6 R7 K12 [5]
       39 GETTABLEKS                       R7 R0 K0 ["props"]
       41 GETTABLEKS                       R7 R7 K14 ["Stylizer"]
       43 GETTABLEKS                       R8 R7 K15 ["dropdownMenu"]
       45 NEWTABLE                         R9 2 0
       47 MOVE                             R12 R4
       48 NAMECALL                         R10 R0 K16 ["defaultLayout"]
       50 CALL                             R10 2 2
       51 GETTABLEKS                       R12 R2 K17 ["X"]
       53 GETTABLEKS                       R12 R12 K18 ["Offset"]
       55 GETTABLEKS                       R13 R1 K19 ["Y"]
       57 GETTABLEKS                       R13 R13 K18 ["Offset"]
       59 GETTABLEKS                       R14 R1 K17 ["X"]
       61 GETTABLEKS                       R14 R14 K18 ["Offset"]
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R15 R15 K20 ["createElement"]
       66 GETUPVAL                         R16 2
       67 DUPTABLE                         R17 K24 [{["Position"], ["Size"], ["CanvasSize"], ["ZIndex"] = 1}]
       68 GETIMPORT                        R18 K4 [UDim2.new]
       70 LOADN                            R19 0
       71 MOVE                             R20 R14
       72 LOADN                            R21 0
       73 MOVE                             R22 R13
       74 CALL                             R18 4 1
       75 SETTABLEKS                       R18 R17 K1 ["Position"]
       77 GETIMPORT                        R18 K4 [UDim2.new]
       79 LOADN                            R19 0
       80 MOVE                             R20 R12
       81 LOADN                            R21 0
       82 FASTCALL2                        MATH_MIN R11 R6 ; [+5]
       84 MOVE                             R23 R11
       85 MOVE                             R24 R6
       86 GETIMPORT                        R22 K27 [math.min]
       88 CALL                             R22 2 1
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K5 ["Size"]
       92 GETIMPORT                        R18 K4 [UDim2.new]
       94 LOADN                            R19 0
       95 LOADN                            R20 0
       96 LOADN                            R21 0
       97 MOVE                             R22 R11
       98 CALL                             R18 4 1
       99 SETTABLEKS                       R18 R17 K21 ["CanvasSize"]
      101 MOVE                             R18 R10
      102 CALL                             R15 3 1
      103 SETTABLEKS                       R15 R9 K28 ["StyledScrollingFrame"]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K20 ["createElement"]
      108 GETUPVAL                         R16 3
      109 DUPTABLE                         R17 K32 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["ZIndex"] = 2, ["BorderColor3"]}]
      110 GETIMPORT                        R18 K4 [UDim2.new]
      112 LOADN                            R19 0
      113 MOVE                             R20 R14
      114 LOADN                            R21 0
      115 MOVE                             R22 R13
      116 CALL                             R18 4 1
      117 SETTABLEKS                       R18 R17 K1 ["Position"]
      119 GETIMPORT                        R18 K4 [UDim2.new]
      121 LOADN                            R19 0
      122 MOVE                             R20 R12
      123 LOADN                            R21 0
      124 FASTCALL2                        MATH_MIN R11 R6 ; [+5]
      126 MOVE                             R23 R11
      127 MOVE                             R24 R6
      128 GETIMPORT                        R22 K27 [math.min]
      130 CALL                             R22 2 1
      131 CALL                             R18 4 1
      132 SETTABLEKS                       R18 R17 K5 ["Size"]
      134 GETTABLEKS                       R18 R8 K33 ["dropdownFrame"]
      136 GETTABLEKS                       R18 R18 K34 ["borderColor"]
      138 SETTABLEKS                       R18 R17 K31 ["BorderColor3"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R9 K35 ["DropDownContainer"]
      143 GETUPVAL                         R15 4
      144 DUPTABLE                         R16 K38 [{["Priority"] = 3}]
      145 GETUPVAL                         R17 1
      146 GETTABLEKS                       R17 R17 K20 ["createElement"]
      148 LOADK                            R18 K39 ["Frame"]
      149 DUPTABLE                         R19 K40 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"]}]
      150 SETTABLEKS                       R1 R19 K1 ["Position"]
      152 SETTABLEKS                       R2 R19 K5 ["Size"]
      154 SETTABLEKS                       R3 R19 K7 ["LayoutOrder"]
      156 DUPTABLE                         R20 K42 [{"Portal"}]
      157 MOVE                             R21 R5
      158 JUMPIFNOT                        R21 ; [+52]
      159 GETUPVAL                         R21 1
      160 GETTABLEKS                       R21 R21 K20 ["createElement"]
      162 MOVE                             R22 R15
      163 MOVE                             R23 R16
      164 DUPTABLE                         R24 K44 [{"ClickEventDetectFrame"}]
      165 GETUPVAL                         R25 1
      166 GETTABLEKS                       R25 R25 K20 ["createElement"]
      168 LOADK                            R26 K45 ["ImageButton"]
      169 NEWTABLE                         R27 8 0
      171 LOADN                            R28 10
      172 SETTABLEKS                       R28 R27 K22 ["ZIndex"]
      174 GETIMPORT                        R28 K4 [UDim2.new]
      176 LOADN                            R29 0
      177 LOADN                            R30 0
      178 LOADN                            R31 0
      179 LOADN                            R32 0
      180 CALL                             R28 4 1
      181 SETTABLEKS                       R28 R27 K1 ["Position"]
      183 GETIMPORT                        R28 K4 [UDim2.new]
      185 LOADN                            R29 1
      186 LOADN                            R30 0
      187 LOADN                            R31 1
      188 LOADN                            R32 0
      189 CALL                             R28 4 1
      190 SETTABLEKS                       R28 R27 K5 ["Size"]
      192 LOADN                            R28 1
      193 SETTABLEKS                       R28 R27 K29 ["BackgroundTransparency"]
      195 LOADB                            R28 0
      196 SETTABLEKS                       R28 R27 K46 ["AutoButtonColor"]
      198 GETUPVAL                         R28 1
      199 GETTABLEKS                       R28 R28 K47 ["Event"]
      201 GETTABLEKS                       R28 R28 K48 ["MouseButton1Click"]
      203 GETTABLEKS                       R29 R0 K49 ["closeDropdown"]
      205 SETTABLE                         R29 R27 R28
      206 MOVE                             R28 R9
      207 CALL                             R25 3 1
      208 SETTABLEKS                       R25 R24 K43 ["ClickEventDetectFrame"]
      210 CALL                             R21 3 1
      211 SETTABLEKS                       R21 R20 K41 ["Portal"]
      213 CALL                             R17 3 -1
      214 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Framework"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K9 ["Util"]
       29 GETTABLEKS                       R5 R5 K10 ["Constants"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R6 K9 ["Util"]
       38 GETTABLEKS                       R6 R6 K11 ["DebugFlags"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R3 K12 ["UI"]
       43 GETTABLEKS                       R6 R6 K13 ["ShowOnTop"]
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R8 K14 ["Components"]
       51 GETTABLEKS                       R8 R8 K15 ["StyledScrollingFrame"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K8 ["Src"]
       58 GETTABLEKS                       R9 R9 K14 ["Components"]
       60 GETTABLEKS                       R9 R9 K16 ["RoundFrame"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K8 ["Src"]
       67 GETTABLEKS                       R10 R10 K14 ["Components"]
       69 GETTABLEKS                       R10 R10 K17 ["SearchOptions"]
       71 GETTABLEKS                       R10 R10 K18 ["LiveSearchEntry"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R3 K19 ["ContextServices"]
       76 GETTABLEKS                       R11 R10 K20 ["withContext"]
       78 GETIMPORT                        R12 K5 [require]
       80 GETTABLEKS                       R13 R0 K8 ["Src"]
       82 GETTABLEKS                       R13 R13 K19 ["ContextServices"]
       84 GETTABLEKS                       R13 R13 K21 ["ModalContext"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R2 K22 ["PureComponent"]
       89 LOADK                            R15 K23 ["LiveSearchDropdown"]
       90 NAMECALL                         R13 R13 K24 ["extend"]
       92 CALL                             R13 2 1
       93 DUPCLOSURE                       R14 K25 [PROTO_2]
       94 SETTABLEKS                       R14 R13 K26 ["init"]
       96 DUPCLOSURE                       R14 K27 [PROTO_4]
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R14 R13 K28 ["addEntry"]
      103 DUPCLOSURE                       R14 K29 [PROTO_5]
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R14 R13 K30 ["defaultLayout"]
      107 DUPCLOSURE                       R14 K31 [PROTO_6]
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R6
      113 SETTABLEKS                       R14 R13 K32 ["render"]
      115 MOVE                             R14 R11
      116 DUPTABLE                         R15 K35 [{"Stylizer", "Modal"}]
      117 GETTABLEKS                       R16 R10 K33 ["Stylizer"]
      119 SETTABLEKS                       R16 R15 K33 ["Stylizer"]
      121 SETTABLEKS                       R12 R15 K34 ["Modal"]
      123 CALL                             R14 1 1
      124 MOVE                             R15 R13
      125 CALL                             R14 1 1
      126 MOVE                             R13 R14
      127 RETURN                           R13 1

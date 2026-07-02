PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["layoutRef"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["frameRef"]
        8 GETTABLEKS                       R1 R1 K1 ["current"]
       10 JUMPIFNOT                        R1 ; [+1]
       11 JUMPIF                           R0 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 MOVE                             R4 R0
       15 NAMECALL                         R2 R2 K3 ["__getSize"]
       17 CALL                             R2 2 1
       18 SETTABLEKS                       R2 R1 K4 ["Size"]
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETTABLEKS                       R1 R0 K2 ["props"]
       11 GETTABLEKS                       R1 R1 K3 ["forwardedRef"]
       13 JUMPIF                           R1 ; [+4]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["createRef"]
       17 CALL                             R1 0 1
       18 SETTABLEKS                       R1 R0 K4 ["frameRef"]
       20 JUMP                             ; [+13]
       21 GETTABLEKS                       R2 R0 K2 ["props"]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["Ref"]
       26 GETTABLE                         R1 R2 R3
       27 JUMPIF                           R1 ; [+4]
       28 GETUPVAL                         R1 0
       29 GETTABLEKS                       R1 R1 K0 ["createRef"]
       31 CALL                             R1 0 1
       32 SETTABLEKS                       R1 R0 K4 ["frameRef"]
       34 NEWCLOSURE                       R1 P0
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K6 ["onResize"]
       38 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["Size"]
        4 JUMPIFEQKNIL                     R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+4]
       10 LOADK                            R3 K2 ["Size is not a valid property of FitFrameOnAxis. Did you mean `minimumSize`?"]
       11 GETIMPORT                        R1 K4 [assert]
       13 CALL                             R1 2 0
       14 GETTABLEKS                       R2 R0 K0 ["props"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K5 ["Children"]
       19 GETTABLE                         R1 R2 R3
       20 JUMPIF                           R1 ; [+2]
       21 NEWTABLE                         R1 0 0
       23 NAMECALL                         R2 R0 K6 ["__getFilteredProps"]
       25 CALL                             R2 1 1
       26 GETTABLEKS                       R4 R0 K0 ["props"]
       28 GETTABLEKS                       R4 R4 K7 ["onActivated"]
       30 JUMPIFNOT                        R4 ; [+2]
       31 LOADK                            R3 K8 ["ImageButton"]
       32 JUMP                             ; [+1]
       33 LOADK                            R3 K9 ["ImageLabel"]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K10 ["Dictionary"]
       37 GETTABLEKS                       R4 R4 K11 ["join"]
       39 MOVE                             R5 R1
       40 NEWTABLE                         R6 2 0
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K12 ["createElement"]
       45 LOADK                            R8 K13 ["UIListLayout"]
       46 NEWTABLE                         R9 8 0
       48 GETTABLEKS                       R10 R0 K0 ["props"]
       50 GETTABLEKS                       R10 R10 K14 ["FillDirection"]
       52 SETTABLEKS                       R10 R9 K14 ["FillDirection"]
       54 GETTABLEKS                       R10 R0 K0 ["props"]
       56 GETTABLEKS                       R10 R10 K15 ["HorizontalAlignment"]
       58 SETTABLEKS                       R10 R9 K15 ["HorizontalAlignment"]
       60 GETTABLEKS                       R10 R0 K0 ["props"]
       62 GETTABLEKS                       R10 R10 K16 ["contentPadding"]
       64 SETTABLEKS                       R10 R9 K17 ["Padding"]
       66 GETIMPORT                        R10 K21 [Enum.SortOrder.LayoutOrder]
       68 SETTABLEKS                       R10 R9 K19 ["SortOrder"]
       70 GETTABLEKS                       R10 R0 K0 ["props"]
       72 GETTABLEKS                       R10 R10 K22 ["VerticalAlignment"]
       74 SETTABLEKS                       R10 R9 K22 ["VerticalAlignment"]
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K23 ["Change"]
       79 GETTABLEKS                       R10 R10 K24 ["AbsoluteContentSize"]
       81 GETTABLEKS                       R11 R0 K25 ["onResize"]
       83 SETTABLE                         R11 R9 R10
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R10 R10 K26 ["Ref"]
       87 GETTABLEKS                       R11 R0 K27 ["layoutRef"]
       89 SETTABLE                         R11 R9 R10
       90 CALL                             R7 2 1
       91 SETTABLEKS                       R7 R6 K28 ["$layout"]
       93 GETUPVAL                         R7 0
       94 GETTABLEKS                       R7 R7 K12 ["createElement"]
       96 LOADK                            R8 K29 ["UIPadding"]
       97 DUPTABLE                         R9 K34 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       98 GETIMPORT                        R10 K37 [UDim.new]
      100 LOADN                            R11 0
      101 GETTABLEKS                       R12 R0 K0 ["props"]
      103 GETTABLEKS                       R12 R12 K38 ["margin"]
      105 GETTABLEKS                       R12 R12 K39 ["left"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K30 ["PaddingLeft"]
      110 GETIMPORT                        R10 K37 [UDim.new]
      112 LOADN                            R11 0
      113 GETTABLEKS                       R12 R0 K0 ["props"]
      115 GETTABLEKS                       R12 R12 K38 ["margin"]
      117 GETTABLEKS                       R12 R12 K40 ["right"]
      119 CALL                             R10 2 1
      120 SETTABLEKS                       R10 R9 K31 ["PaddingRight"]
      122 GETIMPORT                        R10 K37 [UDim.new]
      124 LOADN                            R11 0
      125 GETTABLEKS                       R12 R0 K0 ["props"]
      127 GETTABLEKS                       R12 R12 K38 ["margin"]
      129 GETTABLEKS                       R12 R12 K41 ["top"]
      131 CALL                             R10 2 1
      132 SETTABLEKS                       R10 R9 K32 ["PaddingTop"]
      134 GETIMPORT                        R10 K37 [UDim.new]
      136 LOADN                            R11 0
      137 GETTABLEKS                       R12 R0 K0 ["props"]
      139 GETTABLEKS                       R12 R12 K38 ["margin"]
      141 GETTABLEKS                       R12 R12 K42 ["bottom"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K33 ["PaddingBottom"]
      146 CALL                             R7 2 1
      147 SETTABLEKS                       R7 R6 K43 ["$margin"]
      149 CALL                             R4 2 1
      150 MOVE                             R1 R4
      151 GETTABLEKS                       R4 R0 K0 ["props"]
      153 GETTABLEKS                       R4 R4 K44 ["textProps"]
      155 JUMPIFNOT                        R4 ; [+49]
      156 GETUPVAL                         R4 0
      157 GETTABLEKS                       R4 R4 K12 ["createElement"]
      159 MOVE                             R5 R3
      160 MOVE                             R6 R2
      161 DUPTABLE                         R7 K47 [{"TextLabel", "ChildFrame"}]
      162 GETUPVAL                         R8 0
      163 GETTABLEKS                       R8 R8 K12 ["createElement"]
      165 LOADK                            R9 K45 ["TextLabel"]
      166 GETUPVAL                         R10 1
      167 GETTABLEKS                       R10 R10 K10 ["Dictionary"]
      169 GETTABLEKS                       R10 R10 K11 ["join"]
      171 GETTABLEKS                       R11 R0 K0 ["props"]
      173 GETTABLEKS                       R11 R11 K44 ["textProps"]
      175 DUPTABLE                         R12 K50 [{["BackgroundTransparency"] = 1, ["Size"]}]
      176 GETIMPORT                        R13 K53 [UDim2.fromScale]
      178 LOADN                            R14 1
      179 LOADN                            R15 1
      180 CALL                             R13 2 1
      181 SETTABLEKS                       R13 R12 K1 ["Size"]
      183 CALL                             R10 2 -1
      184 CALL                             R8 -1 1
      185 SETTABLEKS                       R8 R7 K45 ["TextLabel"]
      187 GETUPVAL                         R8 0
      188 GETTABLEKS                       R8 R8 K12 ["createElement"]
      190 LOADK                            R9 K54 ["Frame"]
      191 DUPTABLE                         R10 K50 [{["BackgroundTransparency"] = 1, ["Size"]}]
      192 GETIMPORT                        R11 K53 [UDim2.fromScale]
      194 LOADN                            R12 1
      195 LOADN                            R13 1
      196 CALL                             R11 2 1
      197 SETTABLEKS                       R11 R10 K1 ["Size"]
      199 MOVE                             R11 R1
      200 CALL                             R8 3 1
      201 SETTABLEKS                       R8 R7 K46 ["ChildFrame"]
      203 CALL                             R4 3 -1
      204 RETURN                           R4 -1
      205 GETUPVAL                         R4 0
      206 GETTABLEKS                       R4 R4 K12 ["createElement"]
      208 MOVE                             R5 R3
      209 MOVE                             R6 R2
      210 MOVE                             R7 R1
      211 CALL                             R4 3 -1
      212 RETURN                           R4 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["onResize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["onResize"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETTABLEKS                       R2 R0 K2 ["props"]
        7 GETTABLEKS                       R2 R2 K3 ["ImageSet"]
        9 NEWTABLE                         R3 2 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["Ref"]
       14 GETTABLEKS                       R5 R0 K5 ["frameRef"]
       16 SETTABLE                         R5 R3 R4
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["Event"]
       20 GETTABLEKS                       R4 R4 K7 ["Activated"]
       22 GETTABLEKS                       R5 R0 K2 ["props"]
       24 GETTABLEKS                       R5 R5 K8 ["onActivated"]
       26 SETTABLE                         R5 R3 R4
       27 CALL                             R1 2 1
       28 GETIMPORT                        R2 K10 [pairs]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K11 ["defaultProps"]
       33 CALL                             R2 1 3
       34 FORGPREP_NEXT                    R2
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K12 ["None"]
       38 SETTABLE                         R7 R1 R5
       39 FORGLOOP                         R2 2 ; [-5]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K12 ["None"]
       44 SETTABLEKS                       R2 R1 K13 ["textProps"]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
       49 GETTABLEKS                       R2 R2 K1 ["join"]
       51 GETTABLEKS                       R3 R0 K2 ["props"]
       53 MOVE                             R4 R1
       54 NEWTABLE                         R5 4 0
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R6 R6 K12 ["None"]
       59 SETTABLEKS                       R6 R5 K8 ["onActivated"]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K12 ["None"]
       64 SETTABLEKS                       R6 R5 K14 ["forwardedRef"]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R6 R6 K15 ["Children"]
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K12 ["None"]
       72 SETTABLE                         R7 R5 R6
       73 CALL                             R2 3 -1
       74 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["axis"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["Both"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+6]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R0 K3 ["__getBothAxisSize"]
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1
       14 GETTABLEKS                       R4 R1 K4 ["AbsoluteContentSize"]
       16 NAMECALL                         R2 R0 K5 ["__getAxisUDim"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R3 R0 K6 ["__getOtherUDim"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R0 K0 ["props"]
       24 GETTABLEKS                       R4 R4 K1 ["axis"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["Vertical"]
       29 JUMPIFNOTEQ                      R4 R5 ; [+7]
       31 GETIMPORT                        R4 K10 [UDim2.new]
       33 MOVE                             R5 R3
       34 MOVE                             R6 R2
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1
       37 GETTABLEKS                       R4 R0 K0 ["props"]
       39 GETTABLEKS                       R4 R4 K1 ["axis"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K11 ["Horizontal"]
       44 JUMPIFNOTEQ                      R4 R5 ; [+7]
       46 GETIMPORT                        R4 K10 [UDim2.new]
       48 MOVE                             R5 R2
       49 MOVE                             R6 R3
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1
       52 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["minimumSize"]
        4 GETTABLEKS                       R3 R1 K2 ["AbsoluteContentSize"]
        6 GETIMPORT                        R4 K5 [UDim.new]
        8 GETTABLEKS                       R5 R2 K6 ["X"]
       10 GETTABLEKS                       R5 R5 K7 ["Scale"]
       12 GETTABLEKS                       R7 R3 K6 ["X"]
       14 NAMECALL                         R8 R0 K8 ["__getHorizontalMargin"]
       16 CALL                             R8 1 1
       17 ADD                              R6 R7 R8
       18 CALL                             R4 2 1
       19 GETIMPORT                        R5 K5 [UDim.new]
       21 GETTABLEKS                       R6 R2 K9 ["Y"]
       23 GETTABLEKS                       R6 R6 K7 ["Scale"]
       25 GETTABLEKS                       R8 R3 K9 ["Y"]
       27 NAMECALL                         R9 R0 K10 ["__getVerticalMargin"]
       29 CALL                             R9 1 1
       30 ADD                              R7 R8 R9
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K12 [UDim2.new]
       34 MOVE                             R7 R4
       35 MOVE                             R8 R5
       36 CALL                             R6 2 -1
       37 RETURN                           R6 -1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["minimumSize"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R5 R5 K2 ["axis"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K3 ["Vertical"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+10]
       15 GETTABLEKS                       R3 R2 K4 ["Y"]
       17 GETTABLEKS                       R5 R1 K4 ["Y"]
       19 NAMECALL                         R6 R0 K5 ["__getVerticalMargin"]
       21 CALL                             R6 1 1
       22 ADD                              R4 R5 R6
       23 JUMP                             ; [+17]
       24 GETTABLEKS                       R5 R0 K0 ["props"]
       26 GETTABLEKS                       R5 R5 K2 ["axis"]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K6 ["Horizontal"]
       31 JUMPIFNOTEQ                      R5 R6 ; [+9]
       33 GETTABLEKS                       R3 R2 K7 ["X"]
       35 GETTABLEKS                       R5 R1 K7 ["X"]
       37 NAMECALL                         R6 R0 K8 ["__getHorizontalMargin"]
       39 CALL                             R6 1 1
       40 ADD                              R4 R5 R6
       41 GETIMPORT                        R5 K11 [UDim.new]
       43 GETTABLEKS                       R6 R3 K12 ["Scale"]
       45 GETTABLEKS                       R9 R3 K13 ["Offset"]
       47 FASTCALL2                        MATH_MAX R4 R9 ; [+4]
       49 MOVE                             R8 R4
       50 GETIMPORT                        R7 K16 [math.max]
       52 CALL                             R7 2 1
       53 CALL                             R5 2 -1
       54 RETURN                           R5 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["margin"]
        4 GETTABLEKS                       R2 R2 K2 ["top"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K1 ["margin"]
       10 GETTABLEKS                       R3 R3 K3 ["bottom"]
       12 ADD                              R1 R2 R3
       13 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["margin"]
        4 GETTABLEKS                       R2 R2 K2 ["left"]
        6 GETTABLEKS                       R3 R0 K0 ["props"]
        8 GETTABLEKS                       R3 R3 K1 ["margin"]
       10 GETTABLEKS                       R3 R3 K3 ["right"]
       12 ADD                              R1 R2 R3
       13 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["minimumSize"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["axis"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["Vertical"]
       11 JUMPIFNOTEQ                      R2 R3 ; [+4]
       13 GETTABLEKS                       R2 R1 K4 ["X"]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K0 ["props"]
       18 GETTABLEKS                       R2 R2 K2 ["axis"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K5 ["Horizontal"]
       23 JUMPIFNOTEQ                      R2 R3 ; [+4]
       25 GETTABLEKS                       R2 R1 K6 ["Y"]
       27 RETURN                           R2 1
       28 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R4 R4 K1 ["Dictionary"]
        7 GETTABLEKS                       R4 R4 K2 ["join"]
        9 MOVE                             R5 R0
       10 DUPTABLE                         R6 K4 [{"forwardedRef"}]
       11 SETTABLEKS                       R1 R6 K3 ["forwardedRef"]
       13 CALL                             R4 2 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["Cryo"]
       11 CALL                             R2 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R1 K6 ["Roact"]
       16 CALL                             R3 1 1
       17 GETIMPORT                        R4 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["isRoact17"]
       21 CALL                             R4 1 1
       22 GETIMPORT                        R5 K4 [require]
       24 GETTABLEKS                       R6 R0 K8 ["Rect"]
       26 CALL                             R5 1 1
       27 DUPTABLE                         R6 K12 [{"Horizontal", "Vertical", "Both"}]
       28 NEWTABLE                         R7 0 0
       30 SETTABLEKS                       R7 R6 K9 ["Horizontal"]
       32 NEWTABLE                         R7 0 0
       34 SETTABLEKS                       R7 R6 K10 ["Vertical"]
       36 NEWTABLE                         R7 0 0
       38 SETTABLEKS                       R7 R6 K11 ["Both"]
       40 GETTABLEKS                       R7 R3 K13 ["PureComponent"]
       42 LOADK                            R9 K14 ["FitFrameOnAxis"]
       43 NAMECALL                         R7 R7 K15 ["extend"]
       45 CALL                             R7 2 1
       46 DUPTABLE                         R8 K26 [{["axis"], ["minimumSize"], ["margin"], ["FillDirection"], ["HorizontalAlignment"], ["ImageSet"], ["VerticalAlignment"], ["contentPadding"], ["textProps"] = }]
       47 GETTABLEKS                       R9 R6 K10 ["Vertical"]
       49 SETTABLEKS                       R9 R8 K16 ["axis"]
       51 GETIMPORT                        R9 K29 [UDim2.new]
       53 GETIMPORT                        R10 K31 [UDim.new]
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 CALL                             R10 2 1
       58 GETIMPORT                        R11 K31 [UDim.new]
       60 LOADN                            R12 0
       61 LOADN                            R13 0
       62 CALL                             R11 2 -1
       63 CALL                             R9 -1 1
       64 SETTABLEKS                       R9 R8 K17 ["minimumSize"]
       66 GETTABLEKS                       R9 R5 K32 ["square"]
       68 LOADN                            R10 0
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K18 ["margin"]
       72 GETIMPORT                        R9 K34 [Enum.FillDirection.Vertical]
       74 SETTABLEKS                       R9 R8 K19 ["FillDirection"]
       76 GETIMPORT                        R9 K36 [Enum.HorizontalAlignment.Left]
       78 SETTABLEKS                       R9 R8 K20 ["HorizontalAlignment"]
       80 NEWTABLE                         R9 0 0
       82 SETTABLEKS                       R9 R8 K21 ["ImageSet"]
       84 GETIMPORT                        R9 K38 [Enum.VerticalAlignment.Top]
       86 SETTABLEKS                       R9 R8 K22 ["VerticalAlignment"]
       88 GETIMPORT                        R9 K31 [UDim.new]
       90 LOADN                            R10 0
       91 LOADN                            R11 0
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K23 ["contentPadding"]
       95 SETTABLEKS                       R8 R7 K39 ["defaultProps"]
       97 DUPCLOSURE                       R8 K40 [PROTO_1]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R8 R7 K41 ["init"]
      102 DUPCLOSURE                       R8 K42 [PROTO_2]
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R2
      105 SETTABLEKS                       R8 R7 K43 ["render"]
      107 DUPCLOSURE                       R8 K44 [PROTO_3]
      108 SETTABLEKS                       R8 R7 K45 ["didMount"]
      110 DUPCLOSURE                       R8 K46 [PROTO_4]
      111 SETTABLEKS                       R8 R7 K47 ["didUpdate"]
      113 DUPCLOSURE                       R8 K48 [PROTO_5]
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R3
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R8 R7 K49 ["__getFilteredProps"]
      119 DUPCLOSURE                       R8 K50 [PROTO_6]
      120 CAPTURE                          VAL R6
      121 SETTABLEKS                       R8 R7 K51 ["__getSize"]
      123 DUPCLOSURE                       R8 K52 [PROTO_7]
      124 SETTABLEKS                       R8 R7 K53 ["__getBothAxisSize"]
      126 DUPCLOSURE                       R8 K54 [PROTO_8]
      127 CAPTURE                          VAL R6
      128 SETTABLEKS                       R8 R7 K55 ["__getAxisUDim"]
      130 DUPCLOSURE                       R8 K56 [PROTO_9]
      131 SETTABLEKS                       R8 R7 K57 ["__getVerticalMargin"]
      133 DUPCLOSURE                       R8 K58 [PROTO_10]
      134 SETTABLEKS                       R8 R7 K59 ["__getHorizontalMargin"]
      136 DUPCLOSURE                       R8 K60 [PROTO_11]
      137 CAPTURE                          VAL R6
      138 SETTABLEKS                       R8 R7 K61 ["__getOtherUDim"]
      140 LOADNIL                          R8
      141 MOVE                             R9 R4
      142 CALL                             R9 0 1
      143 JUMPIFNOT                        R9 ; [+9]
      144 GETTABLEKS                       R9 R3 K62 ["forwardRef"]
      146 DUPCLOSURE                       R10 K63 [PROTO_12]
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R2
      150 CALL                             R9 1 1
      151 MOVE                             R8 R9
      152 JUMP                             ; [+1]
      153 MOVE                             R8 R7
      154 SETTABLEKS                       R6 R8 K64 ["Axis"]
      156 RETURN                           R8 1

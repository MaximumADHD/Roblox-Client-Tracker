PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R4 K3 [{[1] = False, ["pressed"] = False}]
        1 NAMECALL                         R2 R0 K4 ["setState"]
        3 CALL                             R2 2 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K5 ["createRef"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R0 K6 ["buttonRef"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K7 ["onMouseEnter"]
       14 NEWCLOSURE                       R2 P1
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K8 ["onMouseLeave"]
       18 NEWCLOSURE                       R2 P2
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K9 ["onMouseButton1Down"]
       22 NEWCLOSURE                       R2 P3
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K10 ["onMouseButton1Up"]
       26 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K2 ["isPrimary"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R3 R2 K3 ["nav"]
        9 GETTABLEKS                       R3 R3 K4 ["mainButton"]
       11 JUMPIF                           R3 ; [+4]
       12 GETTABLEKS                       R3 R2 K3 ["nav"]
       14 GETTABLEKS                       R3 R3 K5 ["button"]
       16 LOADNIL                          R4
       17 GETTABLEKS                       R5 R0 K6 ["state"]
       19 GETTABLEKS                       R5 R5 K7 ["hovered"]
       21 JUMPIFNOT                        R5 ; [+8]
       22 GETTABLEKS                       R5 R0 K6 ["state"]
       24 GETTABLEKS                       R5 R5 K8 ["pressed"]
       26 JUMPIFNOT                        R5 ; [+3]
       27 GETTABLEKS                       R4 R3 K9 ["pressBackground"]
       29 JUMP                             ; [+10]
       30 GETTABLEKS                       R5 R0 K6 ["state"]
       32 GETTABLEKS                       R5 R5 K7 ["hovered"]
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETTABLEKS                       R4 R3 K10 ["hoverBackground"]
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R4 R3 K11 ["background"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K12 ["createElement"]
       43 GETUPVAL                         R6 1
       44 NEWTABLE                         R7 16 0
       46 GETTABLEKS                       R8 R1 K13 ["Size"]
       48 SETTABLEKS                       R8 R7 K13 ["Size"]
       50 GETTABLEKS                       R8 R1 K14 ["Position"]
       52 SETTABLEKS                       R8 R7 K14 ["Position"]
       54 GETTABLEKS                       R8 R1 K15 ["LayoutOrder"]
       56 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       58 SETTABLEKS                       R4 R7 K16 ["BackgroundColor3"]
       60 GETTABLEKS                       R8 R3 K17 ["borderColor"]
       62 SETTABLEKS                       R8 R7 K18 ["BorderColor3"]
       64 GETTABLEKS                       R9 R1 K2 ["isPrimary"]
       66 JUMPIFNOT                        R9 ; [+2]
       67 LOADN                            R8 0
       68 JUMP                             ; [+1]
       69 LOADN                            R8 1
       70 SETTABLEKS                       R8 R7 K19 ["BorderSizePixel"]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K20 ["Event"]
       75 GETTABLEKS                       R8 R8 K21 ["MouseEnter"]
       77 GETTABLEKS                       R9 R0 K22 ["onMouseEnter"]
       79 SETTABLE                         R9 R7 R8
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R8 R8 K20 ["Event"]
       83 GETTABLEKS                       R8 R8 K23 ["MouseLeave"]
       85 GETTABLEKS                       R9 R0 K24 ["onMouseLeave"]
       87 SETTABLE                         R9 R7 R8
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K20 ["Event"]
       91 GETTABLEKS                       R8 R8 K25 ["MouseButton1Down"]
       93 GETTABLEKS                       R9 R0 K26 ["onMouseButton1Down"]
       95 SETTABLE                         R9 R7 R8
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R8 R8 K20 ["Event"]
       99 GETTABLEKS                       R8 R8 K27 ["MouseButton1Up"]
      101 GETTABLEKS                       R9 R0 K28 ["onMouseButton1Up"]
      103 SETTABLE                         R9 R7 R8
      104 GETUPVAL                         R8 0
      105 GETTABLEKS                       R8 R8 K20 ["Event"]
      107 GETTABLEKS                       R8 R8 K29 ["MouseButton1Click"]
      109 GETTABLEKS                       R9 R1 K30 ["onClick"]
      111 SETTABLE                         R9 R7 R8
      112 DUPTABLE                         R8 K32 [{"Title"}]
      113 GETUPVAL                         R9 0
      114 GETTABLEKS                       R9 R9 K12 ["createElement"]
      116 LOADK                            R10 K33 ["TextLabel"]
      117 DUPTABLE                         R11 K40 [{["Text"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1, ["TextColor3"], ["Size"]}]
      118 GETTABLEKS                       R12 R1 K41 ["titleText"]
      120 SETTABLEKS                       R12 R11 K34 ["Text"]
      122 GETUPVAL                         R12 2
      123 GETTABLEKS                       R12 R12 K42 ["FONT"]
      125 SETTABLEKS                       R12 R11 K35 ["Font"]
      127 GETUPVAL                         R12 2
      128 GETTABLEKS                       R12 R12 K43 ["FONT_SIZE_LARGE"]
      130 SETTABLEKS                       R12 R11 K36 ["TextSize"]
      132 GETTABLEKS                       R12 R3 K44 ["textColor"]
      134 SETTABLEKS                       R12 R11 K39 ["TextColor3"]
      136 GETIMPORT                        R12 K47 [UDim2.new]
      138 LOADN                            R13 1
      139 LOADN                            R14 0
      140 LOADN                            R15 1
      141 LOADN                            R16 0
      142 CALL                             R12 4 1
      143 SETTABLEKS                       R12 R11 K13 ["Size"]
      145 CALL                             R9 2 1
      146 SETTABLEKS                       R9 R8 K31 ["Title"]
      148 CALL                             R5 3 -1
      149 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Framework"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R0 K8 ["Src"]
       23 GETTABLEKS                       R4 R4 K9 ["Util"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R4 K10 ["Constants"]
       29 CALL                             R5 1 1
       30 GETTABLEKS                       R6 R3 K11 ["ContextServices"]
       32 GETTABLEKS                       R7 R6 K12 ["withContext"]
       34 GETTABLEKS                       R8 R0 K8 ["Src"]
       36 GETTABLEKS                       R8 R8 K13 ["Components"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R10 R8 K14 ["RoundButton"]
       42 CALL                             R9 1 1
       43 GETTABLEKS                       R10 R2 K15 ["Component"]
       45 LOADK                            R12 K16 ["NavButton"]
       46 NAMECALL                         R10 R10 K17 ["extend"]
       48 CALL                             R10 2 1
       49 DUPCLOSURE                       R11 K18 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R11 R10 K19 ["init"]
       53 DUPCLOSURE                       R11 K20 [PROTO_5]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R5
       57 SETTABLEKS                       R11 R10 K21 ["render"]
       59 MOVE                             R11 R7
       60 DUPTABLE                         R12 K23 [{"Stylizer"}]
       61 GETTABLEKS                       R13 R6 K22 ["Stylizer"]
       63 SETTABLEKS                       R13 R12 K22 ["Stylizer"]
       65 CALL                             R11 1 1
       66 MOVE                             R12 R10
       67 CALL                             R11 1 1
       68 MOVE                             R10 R11
       69 RETURN                           R10 1

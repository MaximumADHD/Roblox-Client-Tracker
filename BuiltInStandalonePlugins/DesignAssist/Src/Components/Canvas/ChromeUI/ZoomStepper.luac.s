PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["ControlState"]
        6 GETTABLEKS                       R2 R2 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R2 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Enums"]
       13 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       15 GETTABLEKS                       R2 R2 K3 ["Pressed"]
       17 JUMPIFEQ                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 GETUPVAL                         R2 1
       22 JUMPIFEQ                         R1 R2 ; [+4]
       24 GETUPVAL                         R2 2
       25 MOVE                             R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETTABLEKS                       R4 R0 K1 ["isDisabled"]
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R3 K2 [""]
        9 JUMP                             ; [+4]
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADK                            R3 K3 ["bg-shift-200"]
       12 JUMP                             ; [+1]
       13 LOADK                            R3 K2 [""]
       14 GETTABLEKS                       R5 R0 K1 ["isDisabled"]
       16 JUMPIFNOT                        R5 ; [+9]
       17 GETTABLEKS                       R4 R0 K4 ["tokens"]
       19 GETTABLEKS                       R4 R4 K5 ["Color"]
       21 GETTABLEKS                       R4 R4 K6 ["Content"]
       23 GETTABLEKS                       R4 R4 K7 ["Muted"]
       25 JUMP                             ; [+8]
       26 GETTABLEKS                       R4 R0 K4 ["tokens"]
       28 GETTABLEKS                       R4 R4 K5 ["Color"]
       30 GETTABLEKS                       R4 R4 K6 ["Content"]
       32 GETTABLEKS                       R4 R4 K8 ["Emphasis"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K9 ["createElement"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K10 ["View"]
       40 DUPTABLE                         R7 K16 [{"Size", "LayoutOrder", "tag", "onActivated", "onStateChanged"}]
       41 GETIMPORT                        R8 K19 [UDim2.fromOffset]
       43 LOADN                            R9 24
       44 GETTABLEKS                       R11 R0 K21 ["chromeControlHeight"]
       46 SUBK                             R10 R11 K20 [6]
       47 CALL                             R8 2 1
       48 SETTABLEKS                       R8 R7 K11 ["Size"]
       50 GETTABLEKS                       R8 R0 K22 ["layoutOrder"]
       52 SETTABLEKS                       R8 R7 K12 ["LayoutOrder"]
       54 LOADK                            R8 K23 ["row align-x-center align-y-center radius-small %s"]
       55 MOVE                             R10 R3
       56 NAMECALL                         R8 R8 K24 ["format"]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K13 ["tag"]
       61 GETTABLEKS                       R9 R0 K1 ["isDisabled"]
       63 JUMPIFNOT                        R9 ; [+2]
       64 LOADNIL                          R8
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R8 R0 K14 ["onActivated"]
       68 SETTABLEKS                       R8 R7 K14 ["onActivated"]
       70 GETTABLEKS                       R9 R0 K1 ["isDisabled"]
       72 JUMPIFNOT                        R9 ; [+2]
       73 LOADNIL                          R8
       74 JUMP                             ; [+4]
       75 NEWCLOSURE                       R8 P0
       76 CAPTURE                          UPVAL U1
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 SETTABLEKS                       R8 R7 K15 ["onStateChanged"]
       81 DUPTABLE                         R8 K26 [{"Glyph"}]
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K9 ["createElement"]
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R10 R10 K27 ["Text"]
       88 DUPTABLE                         R11 K31 [{["Text"], ["textStyle"], ["AutomaticSize"], ["Size"], ["tag"] = "text-body-small text-align-x-center text-align-y-center"}]
       89 GETTABLEKS                       R12 R0 K32 ["glyph"]
       91 SETTABLEKS                       R12 R11 K27 ["Text"]
       93 SETTABLEKS                       R4 R11 K28 ["textStyle"]
       95 GETIMPORT                        R12 K35 [Enum.AutomaticSize.XY]
       97 SETTABLEKS                       R12 R11 K29 ["AutomaticSize"]
       99 GETIMPORT                        R12 K19 [UDim2.fromOffset]
      101 LOADN                            R13 0
      102 LOADN                            R14 0
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K11 ["Size"]
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K25 ["Glyph"]
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["canvasState"]
        3 LOADK                            R3 K1 ["zoomScaleRequested"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K2 ["emit"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["canvasState"]
        6 LOADK                            R3 K1 ["zoomScaleRequested"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K2 ["emit"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["canvasState"]
        6 LOADK                            R3 K1 ["zoomScaleRequested"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R1 R1 K2 ["emit"]
       10 CALL                             R1 3 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["zoomScale"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["formatZoomPercent"]
        7 GETTABLEKS                       R4 R0 K0 ["zoomScale"]
        9 CALL                             R3 1 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K2 ["createElement"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K3 ["View"]
       18 DUPTABLE                         R7 K10 [{["Size"], ["AutomaticSize"], ["tag"] = "row align-y-center bg-surface-0 radius-small", ["stroke"], ["padding"]}]
       19 GETIMPORT                        R8 K13 [UDim2.new]
       21 LOADN                            R9 0
       22 LOADN                            R10 0
       23 LOADN                            R11 0
       24 GETTABLEKS                       R12 R0 K14 ["chromeControlHeight"]
       26 CALL                             R8 4 1
       27 SETTABLEKS                       R8 R7 K4 ["Size"]
       29 GETIMPORT                        R8 K17 [Enum.AutomaticSize.X]
       31 SETTABLEKS                       R8 R7 K5 ["AutomaticSize"]
       33 DUPTABLE                         R8 K22 [{["Color"], ["Transparency"], ["Thickness"] = 1}]
       34 GETTABLEKS                       R9 R0 K23 ["tokens"]
       36 GETTABLEKS                       R9 R9 K18 ["Color"]
       38 GETTABLEKS                       R9 R9 K24 ["Stroke"]
       40 GETTABLEKS                       R9 R9 K25 ["Default"]
       42 GETTABLEKS                       R9 R9 K26 ["Color3"]
       44 SETTABLEKS                       R9 R8 K18 ["Color"]
       46 GETTABLEKS                       R9 R0 K23 ["tokens"]
       48 GETTABLEKS                       R9 R9 K18 ["Color"]
       50 GETTABLEKS                       R9 R9 K24 ["Stroke"]
       52 GETTABLEKS                       R9 R9 K25 ["Default"]
       54 GETTABLEKS                       R9 R9 K19 ["Transparency"]
       56 SETTABLEKS                       R9 R8 K19 ["Transparency"]
       58 SETTABLEKS                       R8 R7 K8 ["stroke"]
       60 DUPTABLE                         R8 K31 [{"top", "bottom", "left", "right"}]
       61 GETIMPORT                        R9 K33 [UDim.new]
       63 LOADN                            R10 0
       64 LOADN                            R11 3
       65 CALL                             R9 2 1
       66 SETTABLEKS                       R9 R8 K27 ["top"]
       68 GETIMPORT                        R9 K33 [UDim.new]
       70 LOADN                            R10 0
       71 LOADN                            R11 3
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K28 ["bottom"]
       75 GETIMPORT                        R9 K33 [UDim.new]
       77 LOADN                            R10 0
       78 LOADN                            R11 3
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K29 ["left"]
       82 GETIMPORT                        R9 K33 [UDim.new]
       84 LOADN                            R10 0
       85 LOADN                            R11 3
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K30 ["right"]
       89 SETTABLEKS                       R8 R7 K9 ["padding"]
       91 DUPTABLE                         R8 K37 [{"MinusButton", "Percent", "PlusButton"}]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K2 ["createElement"]
       95 GETUPVAL                         R10 4
       96 DUPTABLE                         R11 K43 [{["glyph"] = "−", ["layoutOrder"] = 1, ["isDisabled"], ["tokens"], ["chromeControlHeight"], ["onActivated"]}]
       97 JUMPIFEQKNIL                     R1 ; [+2]
       99 LOADB                            R12 0 +1
      100 LOADB                            R12 1
      101 SETTABLEKS                       R12 R11 K41 ["isDisabled"]
      103 GETTABLEKS                       R12 R0 K23 ["tokens"]
      105 SETTABLEKS                       R12 R11 K23 ["tokens"]
      107 GETTABLEKS                       R12 R0 K14 ["chromeControlHeight"]
      109 SETTABLEKS                       R12 R11 K14 ["chromeControlHeight"]
      111 NEWCLOSURE                       R12 P1
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R12 R11 K42 ["onActivated"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K34 ["MinusButton"]
      119 GETUPVAL                         R9 2
      120 GETTABLEKS                       R9 R9 K2 ["createElement"]
      122 GETUPVAL                         R10 3
      123 GETTABLEKS                       R10 R10 K44 ["Text"]
      125 DUPTABLE                         R11 K48 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["tag"] = "text-body-small content-emphasis text-align-x-center text-align-y-center"}]
      126 SETTABLEKS                       R3 R11 K44 ["Text"]
      128 GETIMPORT                        R12 K50 [UDim2.fromOffset]
      130 LOADN                            R13 44
      131 GETTABLEKS                       R15 R0 K14 ["chromeControlHeight"]
      133 SUBK                             R14 R15 K51 [6]
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K4 ["Size"]
      137 CALL                             R9 2 1
      138 SETTABLEKS                       R9 R8 K35 ["Percent"]
      140 GETUPVAL                         R9 2
      141 GETTABLEKS                       R9 R9 K2 ["createElement"]
      143 GETUPVAL                         R10 4
      144 DUPTABLE                         R11 K54 [{["glyph"] = "+", ["layoutOrder"] = 3, ["isDisabled"], ["tokens"], ["chromeControlHeight"], ["onActivated"]}]
      145 JUMPIFEQKNIL                     R2 ; [+2]
      147 LOADB                            R12 0 +1
      148 LOADB                            R12 1
      149 SETTABLEKS                       R12 R11 K41 ["isDisabled"]
      151 GETTABLEKS                       R12 R0 K23 ["tokens"]
      153 SETTABLEKS                       R12 R11 K23 ["tokens"]
      155 GETTABLEKS                       R12 R0 K14 ["chromeControlHeight"]
      157 SETTABLEKS                       R12 R11 K14 ["chromeControlHeight"]
      159 NEWCLOSURE                       R12 P2
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R12 R11 K42 ["onActivated"]
      164 CALL                             R9 2 1
      165 SETTABLEKS                       R9 R8 K36 ["PlusButton"]
      167 CALL                             R5 3 -1
      168 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["ZoomLogic"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K11 ["findScaleNeighbors"]
       32 DUPCLOSURE                       R5 K12 [PROTO_1]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 DUPCLOSURE                       R6 K13 [PROTO_5]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R5
       41 RETURN                           R6 1

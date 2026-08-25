PROTO_0:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [os.clock]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K3 ["current"]
        6 SUB                              R0 R1 R2
        7 LOADK                            R1 K4 [0.3]
        8 JUMPIFNOTLT                      R0 R1 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 DUPCLOSURE                       R1 K5 [PROTO_0]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K3 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagEnableDeviceSimulatorRegistry"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K1 ["entry"]
        9 GETTABLEKS                       R2 R0 K2 ["dynamicState"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 LOADB                            R4 0
       15 CALL                             R3 1 2
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["useRef"]
       19 LOADK                            R6 K5 [-∞]
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R8 0 0
       29 CALL                             R6 2 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       33 NEWCLOSURE                       R8 P1
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R9 0 0
       38 CALL                             R7 2 1
       39 JUMPIFEQKNIL                     R2 ; [+4]
       41 GETTABLEKS                       R8 R2 K7 ["Icon"]
       43 JUMP                             ; [+4]
       44 GETTABLEKS                       R8 R1 K8 ["Config"]
       46 GETTABLEKS                       R8 R8 K9 ["InitialIcon"]
       48 JUMPIFEQKNIL                     R2 ; [+4]
       50 GETTABLEKS                       R9 R2 K10 ["Label"]
       52 JUMP                             ; [+4]
       53 GETTABLEKS                       R9 R1 K8 ["Config"]
       55 GETTABLEKS                       R9 R9 K11 ["InitialLabel"]
       57 LOADK                            R11 K12 ["simulator-pill-%*"]
       58 GETTABLEKS                       R13 R1 K13 ["Name"]
       60 NAMECALL                         R11 R11 K14 ["format"]
       62 CALL                             R11 2 1
       63 MOVE                             R10 R11
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K15 ["createElement"]
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R12 R12 K16 ["Root"]
       70 DUPTABLE                         R13 K18 [{"isOpen"}]
       71 SETTABLEKS                       R3 R13 K17 ["isOpen"]
       73 DUPTABLE                         R14 K21 [{"Anchor", "Content"}]
       74 GETUPVAL                         R15 1
       75 GETTABLEKS                       R15 R15 K15 ["createElement"]
       77 GETUPVAL                         R16 2
       78 GETTABLEKS                       R16 R16 K19 ["Anchor"]
       80 DUPTABLE                         R17 K23 [{"LayoutOrder"}]
       81 GETTABLEKS                       R18 R0 K22 ["LayoutOrder"]
       83 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
       85 DUPTABLE                         R18 K25 [{"Button"}]
       86 GETUPVAL                         R19 1
       87 GETTABLEKS                       R19 R19 K15 ["createElement"]
       89 GETUPVAL                         R20 3
       90 DUPTABLE                         R21 K33 [{["testId"], ["text"], ["leading"], ["trailing"] = "chevron-large-down", ["isChecked"], ["onActivated"]}]
       91 SETTABLEKS                       R10 R21 K26 ["testId"]
       93 SETTABLEKS                       R9 R21 K27 ["text"]
       95 SETTABLEKS                       R8 R21 K28 ["leading"]
       97 SETTABLEKS                       R3 R21 K31 ["isChecked"]
       99 SETTABLEKS                       R6 R21 K32 ["onActivated"]
      101 CALL                             R19 2 1
      102 SETTABLEKS                       R19 R18 K24 ["Button"]
      104 CALL                             R15 3 1
      105 SETTABLEKS                       R15 R14 K19 ["Anchor"]
      107 GETUPVAL                         R15 1
      108 GETTABLEKS                       R15 R15 K15 ["createElement"]
      110 GETUPVAL                         R16 2
      111 GETTABLEKS                       R16 R16 K20 ["Content"]
      113 DUPTABLE                         R17 K42 [{["hasArrow"] = False, ["isFocusable"] = True, ["side"], ["radius"], ["backgroundStyle"], ["onPressedOutside"]}]
      114 DUPTABLE                         R18 K46 [{["position"], ["offset"] = 8}]
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R19 R19 K47 ["Bottom"]
      118 SETTABLEKS                       R19 R18 K43 ["position"]
      120 SETTABLEKS                       R18 R17 K38 ["side"]
      122 GETUPVAL                         R18 5
      123 GETTABLEKS                       R18 R18 K48 ["Medium"]
      125 SETTABLEKS                       R18 R17 K39 ["radius"]
      127 DUPTABLE                         R18 K51 [{["Transparency"] = 1}]
      128 SETTABLEKS                       R18 R17 K40 ["backgroundStyle"]
      130 SETTABLEKS                       R7 R17 K41 ["onPressedOutside"]
      132 DUPTABLE                         R18 K53 [{"Body"}]
      133 GETUPVAL                         R19 1
      134 GETTABLEKS                       R19 R19 K15 ["createElement"]
      136 GETUPVAL                         R20 6
      137 DUPTABLE                         R21 K57 [{["Size"], ["tag"] = "col auto-y radius-large clip stroke-thin stroke-muted bg-surface-100", ["testId"]}]
      138 GETIMPORT                        R22 K60 [UDim2.fromOffset]
      140 LOADN                            R23 320
      141 LOADN                            R24 0
      142 CALL                             R22 2 1
      143 SETTABLEKS                       R22 R21 K54 ["Size"]
      145 LOADK                            R23 K61 ["%*-content"]
      146 MOVE                             R25 R10
      147 NAMECALL                         R23 R23 K14 ["format"]
      149 CALL                             R23 2 1
      150 MOVE                             R22 R23
      151 SETTABLEKS                       R22 R21 K26 ["testId"]
      153 DUPTABLE                         R22 K62 [{"Content"}]
      154 GETUPVAL                         R23 1
      155 GETTABLEKS                       R23 R23 K15 ["createElement"]
      157 GETUPVAL                         R24 6
      158 DUPTABLE                         R25 K64 [{["LayoutOrder"] = 1, ["tag"] = "col size-full-0 auto-y padding-y-large"}]
      159 DUPTABLE                         R26 K66 [{"PanelBody"}]
      160 GETUPVAL                         R27 1
      161 GETTABLEKS                       R27 R27 K15 ["createElement"]
      163 GETUPVAL                         R28 6
      164 DUPTABLE                         R29 K68 [{["LayoutOrder"] = 1, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-small"}]
      165 DUPTABLE                         R30 K71 [{"Header", "Controls"}]
      166 GETUPVAL                         R31 1
      167 GETTABLEKS                       R31 R31 K15 ["createElement"]
      169 GETUPVAL                         R32 7
      170 DUPTABLE                         R33 K74 [{["LayoutOrder"] = 1, ["Text"], ["tag"] = "size-full-700 auto-none padding-x-xsmall text-no-wrap text-label-large text-align-x-left text-align-y-center", ["testId"]}]
      171 LOADK                            R35 K75 ["%* simulation"]
      172 GETTABLEKS                       R37 R1 K13 ["Name"]
      174 NAMECALL                         R35 R35 K14 ["format"]
      176 CALL                             R35 2 1
      177 MOVE                             R34 R35
      178 SETTABLEKS                       R34 R33 K72 ["Text"]
      180 LOADK                            R35 K76 ["%*-title"]
      181 MOVE                             R37 R10
      182 NAMECALL                         R35 R35 K14 ["format"]
      184 CALL                             R35 2 1
      185 MOVE                             R34 R35
      186 SETTABLEKS                       R34 R33 K26 ["testId"]
      188 CALL                             R31 2 1
      189 SETTABLEKS                       R31 R30 K69 ["Header"]
      191 GETUPVAL                         R31 1
      192 GETTABLEKS                       R31 R31 K15 ["createElement"]
      194 GETUPVAL                         R32 6
      195 DUPTABLE                         R33 K79 [{["LayoutOrder"] = 2, ["tag"] = "col size-full-0 auto-y"}]
      196 DUPTABLE                         R34 K81 [{"Renderer"}]
      197 GETUPVAL                         R35 1
      198 GETTABLEKS                       R35 R35 K15 ["createElement"]
      200 GETUPVAL                         R36 8
      201 DUPTABLE                         R37 K86 [{"controls", "values", "onControlChanged", "debugName"}]
      202 GETTABLEKS                       R38 R1 K8 ["Config"]
      204 GETTABLEKS                       R38 R38 K70 ["Controls"]
      206 SETTABLEKS                       R38 R37 K82 ["controls"]
      208 GETTABLEKS                       R38 R0 K83 ["values"]
      210 SETTABLEKS                       R38 R37 K83 ["values"]
      212 GETTABLEKS                       R38 R0 K84 ["onControlChanged"]
      214 SETTABLEKS                       R38 R37 K84 ["onControlChanged"]
      216 GETTABLEKS                       R38 R1 K13 ["Name"]
      218 SETTABLEKS                       R38 R37 K85 ["debugName"]
      220 CALL                             R35 2 1
      221 SETTABLEKS                       R35 R34 K80 ["Renderer"]
      223 CALL                             R31 3 1
      224 SETTABLEKS                       R31 R30 K70 ["Controls"]
      226 CALL                             R27 3 1
      227 SETTABLEKS                       R27 R26 K65 ["PanelBody"]
      229 CALL                             R23 3 1
      230 SETTABLEKS                       R23 R22 K20 ["Content"]
      232 CALL                             R19 3 1
      233 SETTABLEKS                       R19 R18 K52 ["Body"]
      235 CALL                             R15 3 1
      236 SETTABLEKS                       R15 R14 K20 ["Content"]
      238 CALL                             R11 3 -1
      239 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DeviceSimulatorToolbar"]
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
       27 GETTABLEKS                       R4 R4 K10 ["ControlRenderer"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K9 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K12 ["Bin"]
       43 GETTABLEKS                       R6 R6 K13 ["Common"]
       45 GETTABLEKS                       R6 R6 K14 ["defineLuaFlags"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K15 ["Chip"]
       50 GETTABLEKS                       R7 R2 K16 ["Popover"]
       52 GETTABLEKS                       R8 R2 K17 ["Enums"]
       54 GETTABLEKS                       R8 R8 K18 ["PopoverSide"]
       56 GETTABLEKS                       R9 R2 K17 ["Enums"]
       58 GETTABLEKS                       R9 R9 K19 ["Radius"]
       60 GETTABLEKS                       R10 R2 K20 ["Text"]
       62 GETTABLEKS                       R11 R2 K21 ["View"]
       64 DUPCLOSURE                       R12 K22 [PROTO_3]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R3
       74 RETURN                           R12 1

PROTO_0:
        0 DUPTABLE                         R1 K2 [{"bar", "fill"}]
        1 DUPTABLE                         R2 K5 [{["tag"] = "anchor-center-center position-center-center size-full-100 radius-small"}]
        2 SETTABLEKS                       R2 R1 K0 ["bar"]
        4 DUPTABLE                         R2 K7 [{["tag"] = "radius-small"}]
        5 SETTABLEKS                       R2 R1 K1 ["fill"]
        7 NEWTABLE                         R2 4 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K8 ["VariantEnum"]
       12 GETTABLEKS                       R3 R3 K9 ["Emphasis"]
       14 DUPTABLE                         R4 K11 [{"bar", "fill", "knob"}]
       15 DUPTABLE                         R5 K13 [{["tag"] = "bg-shift-400"}]
       16 SETTABLEKS                       R5 R4 K0 ["bar"]
       18 DUPTABLE                         R5 K15 [{["tag"] = "bg-emphasis"}]
       19 SETTABLEKS                       R5 R4 K1 ["fill"]
       21 DUPTABLE                         R5 K20 [{["style"], ["dragStyle"], ["hasShadow"] = True}]
       22 GETTABLEKS                       R6 R0 K21 ["Color"]
       24 GETTABLEKS                       R6 R6 K22 ["Extended"]
       26 GETTABLEKS                       R6 R6 K23 ["White"]
       28 GETTABLEKS                       R6 R6 K24 ["White_100"]
       30 SETTABLEKS                       R6 R5 K16 ["style"]
       32 GETTABLEKS                       R6 R0 K21 ["Color"]
       34 GETTABLEKS                       R6 R6 K25 ["ActionEmphasis"]
       36 GETTABLEKS                       R6 R6 K26 ["Background"]
       38 SETTABLEKS                       R6 R5 K17 ["dragStyle"]
       40 SETTABLEKS                       R5 R4 K10 ["knob"]
       42 SETTABLE                         R4 R2 R3
       43 GETUPVAL                         R3 0
       44 GETTABLEKS                       R3 R3 K8 ["VariantEnum"]
       46 GETTABLEKS                       R3 R3 K27 ["Standard"]
       48 DUPTABLE                         R4 K11 [{"bar", "fill", "knob"}]
       49 DUPTABLE                         R5 K29 [{["tag"] = "bg-shift-400 "}]
       50 SETTABLEKS                       R5 R4 K0 ["bar"]
       52 DUPTABLE                         R5 K31 [{["tag"] = "bg-system-contrast"}]
       53 SETTABLEKS                       R5 R4 K1 ["fill"]
       55 DUPTABLE                         R5 K33 [{["style"], ["dragStyle"], ["hasShadow"] = False}]
       56 GETTABLEKS                       R6 R0 K21 ["Color"]
       58 GETTABLEKS                       R6 R6 K34 ["System"]
       60 GETTABLEKS                       R6 R6 K35 ["Contrast"]
       62 SETTABLEKS                       R6 R5 K16 ["style"]
       64 GETTABLEKS                       R6 R0 K21 ["Color"]
       66 GETTABLEKS                       R6 R6 K34 ["System"]
       68 GETTABLEKS                       R6 R6 K35 ["Contrast"]
       70 SETTABLEKS                       R6 R5 K17 ["dragStyle"]
       72 SETTABLEKS                       R5 R4 K10 ["knob"]
       74 SETTABLE                         R4 R2 R3
       75 GETUPVAL                         R3 0
       76 GETTABLEKS                       R3 R3 K8 ["VariantEnum"]
       78 GETTABLEKS                       R3 R3 K36 ["Utility"]
       80 DUPTABLE                         R4 K37 [{"knob"}]
       81 DUPTABLE                         R5 K39 [{["style"], ["dragStyle"], ["stroke"], ["hasShadow"] = True}]
       82 GETTABLEKS                       R6 R0 K21 ["Color"]
       84 GETTABLEKS                       R6 R6 K40 ["None"]
       86 SETTABLEKS                       R6 R5 K16 ["style"]
       88 GETTABLEKS                       R6 R0 K21 ["Color"]
       90 GETTABLEKS                       R6 R6 K40 ["None"]
       92 SETTABLEKS                       R6 R5 K17 ["dragStyle"]
       94 DUPTABLE                         R6 K43 [{"Color", "Transparency", "Thickness"}]
       95 GETTABLEKS                       R7 R0 K21 ["Color"]
       97 GETTABLEKS                       R7 R7 K34 ["System"]
       99 GETTABLEKS                       R7 R7 K35 ["Contrast"]
      101 GETTABLEKS                       R7 R7 K44 ["Color3"]
      103 SETTABLEKS                       R7 R6 K21 ["Color"]
      105 GETTABLEKS                       R7 R0 K21 ["Color"]
      107 GETTABLEKS                       R7 R7 K34 ["System"]
      109 GETTABLEKS                       R7 R7 K35 ["Contrast"]
      111 GETTABLEKS                       R7 R7 K41 ["Transparency"]
      113 SETTABLEKS                       R7 R6 K41 ["Transparency"]
      115 GETTABLEKS                       R7 R0 K45 ["Stroke"]
      117 GETTABLEKS                       R7 R7 K46 ["Thicker"]
      119 SETTABLEKS                       R7 R6 K42 ["Thickness"]
      121 SETTABLEKS                       R6 R5 K38 ["stroke"]
      123 SETTABLEKS                       R5 R4 K10 ["knob"]
      125 SETTABLE                         R4 R2 R3
      126 NEWTABLE                         R3 4 0
      128 GETUPVAL                         R4 0
      129 GETTABLEKS                       R4 R4 K47 ["InputSizeEnum"]
      131 GETTABLEKS                       R4 R4 K48 ["XSmall"]
      133 DUPTABLE                         R5 K50 [{"hitbox"}]
      134 DUPTABLE                         R6 K52 [{"height"}]
      135 GETTABLEKS                       R7 R0 K53 ["Size"]
      137 GETTABLEKS                       R7 R7 K54 ["Size_300"]
      139 SETTABLEKS                       R7 R6 K51 ["height"]
      141 SETTABLEKS                       R6 R5 K49 ["hitbox"]
      143 SETTABLE                         R5 R3 R4
      144 GETUPVAL                         R4 0
      145 GETTABLEKS                       R4 R4 K47 ["InputSizeEnum"]
      147 GETTABLEKS                       R4 R4 K55 ["Small"]
      149 DUPTABLE                         R5 K50 [{"hitbox"}]
      150 DUPTABLE                         R6 K52 [{"height"}]
      151 GETTABLEKS                       R7 R0 K53 ["Size"]
      153 GETTABLEKS                       R7 R7 K56 ["Size_400"]
      155 SETTABLEKS                       R7 R6 K51 ["height"]
      157 SETTABLEKS                       R6 R5 K49 ["hitbox"]
      159 SETTABLE                         R5 R3 R4
      160 GETUPVAL                         R4 0
      161 GETTABLEKS                       R4 R4 K47 ["InputSizeEnum"]
      163 GETTABLEKS                       R4 R4 K57 ["Medium"]
      165 DUPTABLE                         R5 K50 [{"hitbox"}]
      166 DUPTABLE                         R6 K52 [{"height"}]
      167 GETTABLEKS                       R7 R0 K53 ["Size"]
      169 GETTABLEKS                       R7 R7 K58 ["Size_500"]
      171 SETTABLEKS                       R7 R6 K51 ["height"]
      173 SETTABLEKS                       R6 R5 K49 ["hitbox"]
      175 SETTABLE                         R5 R3 R4
      176 GETUPVAL                         R4 0
      177 GETTABLEKS                       R4 R4 K47 ["InputSizeEnum"]
      179 GETTABLEKS                       R4 R4 K59 ["Large"]
      181 DUPTABLE                         R5 K50 [{"hitbox"}]
      182 DUPTABLE                         R6 K52 [{"height"}]
      183 GETTABLEKS                       R7 R0 K53 ["Size"]
      185 GETTABLEKS                       R7 R7 K60 ["Size_600"]
      187 SETTABLEKS                       R7 R6 K51 ["height"]
      189 SETTABLEKS                       R6 R5 K49 ["hitbox"]
      191 SETTABLE                         R5 R3 R4
      192 DUPTABLE                         R4 K64 [{"common", "variants", "sizes"}]
      193 SETTABLEKS                       R1 R4 K61 ["common"]
      195 SETTABLEKS                       R2 R4 K62 ["variants"]
      197 SETTABLEKS                       R3 R4 K63 ["sizes"]
      199 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["join"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R4 R0 K1 ["tag"]
        8 JUMPIFNOT                        R4 ; [+13]
        9 GETTABLEKS                       R4 R1 K1 ["tag"]
       11 JUMPIFNOT                        R4 ; [+10]
       12 LOADK                            R4 K2 ["%* %*"]
       13 GETTABLEKS                       R6 R0 K1 ["tag"]
       15 GETTABLEKS                       R7 R1 K1 ["tag"]
       17 NAMECALL                         R4 R4 K3 ["format"]
       19 CALL                             R4 3 1
       20 MOVE                             R3 R4
       21 JUMP                             ; [+8]
       22 GETTABLEKS                       R4 R0 K1 ["tag"]
       24 JUMPIFNOT                        R4 ; [+3]
       25 GETTABLEKS                       R3 R0 K1 ["tag"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R3 R1 K1 ["tag"]
       30 SETTABLEKS                       R3 R2 K1 ["tag"]
       32 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 0
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R4
       10 JUMPIF                           R8 ; [+2]
       11 NEWTABLE                         R8 0 0
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K0 ["join"]
       16 MOVE                             R10 R8
       17 MOVE                             R11 R5
       18 CALL                             R9 2 1
       19 GETTABLEKS                       R11 R8 K1 ["tag"]
       21 JUMPIFNOT                        R11 ; [+13]
       22 GETTABLEKS                       R11 R5 K1 ["tag"]
       24 JUMPIFNOT                        R11 ; [+10]
       25 LOADK                            R11 K2 ["%* %*"]
       26 GETTABLEKS                       R13 R8 K1 ["tag"]
       28 GETTABLEKS                       R14 R5 K1 ["tag"]
       30 NAMECALL                         R11 R11 K3 ["format"]
       32 CALL                             R11 3 1
       33 MOVE                             R10 R11
       34 JUMP                             ; [+8]
       35 GETTABLEKS                       R11 R8 K1 ["tag"]
       37 JUMPIFNOT                        R11 ; [+3]
       38 GETTABLEKS                       R10 R8 K1 ["tag"]
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R10 R5 K1 ["tag"]
       43 SETTABLEKS                       R10 R9 K1 ["tag"]
       45 MOVE                             R7 R9
       46 SETTABLE                         R7 R6 R4
       47 FORGLOOP                         R1 2 ; [-41]
       49 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["copy"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["forEachArgs"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 GETVARARGS                       R4 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETGLOBAL                        R4 K0 ["composeStyleVariant"]
        5 GETTABLEKS                       R5 R3 K1 ["common"]
        7 GETTABLEKS                       R7 R3 K2 ["variants"]
        9 GETTABLE                         R6 R7 R2
       10 GETTABLEKS                       R8 R3 K3 ["sizes"]
       12 GETTABLE                         R7 R8 R1
       13 CALL                             R4 3 -1
       14 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FaceControlEditorComponent"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Slider"]
       20 GETTABLEKS                       R4 R4 K10 ["SliderTypes"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 DUPCLOSURE                       R5 K12 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R6 K13 [PROTO_3]
       28 CAPTURE                          VAL R2
       29 SETGLOBAL                        R6 K14 ["composeStyleVariant"]
       31 DUPCLOSURE                       R6 K15 [PROTO_4]
       32 CAPTURE                          VAL R4
       33 RETURN                           R6 1

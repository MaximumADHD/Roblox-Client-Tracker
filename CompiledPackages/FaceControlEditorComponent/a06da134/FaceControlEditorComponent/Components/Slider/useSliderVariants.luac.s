PROTO_0:
        0 DUPTABLE                         R1 K2 [{"bar", "fill"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 LOADK                            R3 K5 ["anchor-center-center position-center-center size-full-100 radius-small"]
        3 SETTABLEKS                       R3 R2 K3 ["tag"]
        5 SETTABLEKS                       R2 R1 K0 ["bar"]
        7 DUPTABLE                         R2 K4 [{"tag"}]
        8 LOADK                            R3 K6 ["radius-small"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K1 ["fill"]
       13 NEWTABLE                         R2 4 0
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K7 ["VariantEnum"]
       18 GETTABLEKS                       R3 R4 K8 ["Emphasis"]
       20 DUPTABLE                         R4 K10 [{"bar", "fill", "knob"}]
       21 DUPTABLE                         R5 K4 [{"tag"}]
       22 LOADK                            R6 K11 ["bg-shift-400"]
       23 SETTABLEKS                       R6 R5 K3 ["tag"]
       25 SETTABLEKS                       R5 R4 K0 ["bar"]
       27 DUPTABLE                         R5 K4 [{"tag"}]
       28 LOADK                            R6 K12 ["bg-emphasis"]
       29 SETTABLEKS                       R6 R5 K3 ["tag"]
       31 SETTABLEKS                       R5 R4 K1 ["fill"]
       33 DUPTABLE                         R5 K16 [{"style", "dragStyle", "hasShadow"}]
       34 GETTABLEKS                       R9 R0 K17 ["Color"]
       36 GETTABLEKS                       R8 R9 K18 ["Extended"]
       38 GETTABLEKS                       R7 R8 K19 ["White"]
       40 GETTABLEKS                       R6 R7 K20 ["White_100"]
       42 SETTABLEKS                       R6 R5 K13 ["style"]
       44 GETTABLEKS                       R8 R0 K17 ["Color"]
       46 GETTABLEKS                       R7 R8 K21 ["ActionEmphasis"]
       48 GETTABLEKS                       R6 R7 K22 ["Background"]
       50 SETTABLEKS                       R6 R5 K14 ["dragStyle"]
       52 LOADB                            R6 1
       53 SETTABLEKS                       R6 R5 K15 ["hasShadow"]
       55 SETTABLEKS                       R5 R4 K9 ["knob"]
       57 SETTABLE                         R4 R2 R3
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R4 R5 K7 ["VariantEnum"]
       61 GETTABLEKS                       R3 R4 K23 ["Standard"]
       63 DUPTABLE                         R4 K10 [{"bar", "fill", "knob"}]
       64 DUPTABLE                         R5 K4 [{"tag"}]
       65 LOADK                            R6 K24 ["bg-shift-400 "]
       66 SETTABLEKS                       R6 R5 K3 ["tag"]
       68 SETTABLEKS                       R5 R4 K0 ["bar"]
       70 DUPTABLE                         R5 K4 [{"tag"}]
       71 LOADK                            R6 K25 ["bg-system-contrast"]
       72 SETTABLEKS                       R6 R5 K3 ["tag"]
       74 SETTABLEKS                       R5 R4 K1 ["fill"]
       76 DUPTABLE                         R5 K16 [{"style", "dragStyle", "hasShadow"}]
       77 GETTABLEKS                       R8 R0 K17 ["Color"]
       79 GETTABLEKS                       R7 R8 K26 ["System"]
       81 GETTABLEKS                       R6 R7 K27 ["Contrast"]
       83 SETTABLEKS                       R6 R5 K13 ["style"]
       85 GETTABLEKS                       R8 R0 K17 ["Color"]
       87 GETTABLEKS                       R7 R8 K26 ["System"]
       89 GETTABLEKS                       R6 R7 K27 ["Contrast"]
       91 SETTABLEKS                       R6 R5 K14 ["dragStyle"]
       93 LOADB                            R6 0
       94 SETTABLEKS                       R6 R5 K15 ["hasShadow"]
       96 SETTABLEKS                       R5 R4 K9 ["knob"]
       98 SETTABLE                         R4 R2 R3
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R4 R5 K7 ["VariantEnum"]
      102 GETTABLEKS                       R3 R4 K28 ["Utility"]
      104 DUPTABLE                         R4 K29 [{"knob"}]
      105 DUPTABLE                         R5 K31 [{"style", "dragStyle", "stroke", "hasShadow"}]
      106 GETTABLEKS                       R7 R0 K17 ["Color"]
      108 GETTABLEKS                       R6 R7 K32 ["None"]
      110 SETTABLEKS                       R6 R5 K13 ["style"]
      112 GETTABLEKS                       R7 R0 K17 ["Color"]
      114 GETTABLEKS                       R6 R7 K32 ["None"]
      116 SETTABLEKS                       R6 R5 K14 ["dragStyle"]
      118 DUPTABLE                         R6 K35 [{"Color", "Transparency", "Thickness"}]
      119 GETTABLEKS                       R10 R0 K17 ["Color"]
      121 GETTABLEKS                       R9 R10 K26 ["System"]
      123 GETTABLEKS                       R8 R9 K27 ["Contrast"]
      125 GETTABLEKS                       R7 R8 K36 ["Color3"]
      127 SETTABLEKS                       R7 R6 K17 ["Color"]
      129 GETTABLEKS                       R10 R0 K17 ["Color"]
      131 GETTABLEKS                       R9 R10 K26 ["System"]
      133 GETTABLEKS                       R8 R9 K27 ["Contrast"]
      135 GETTABLEKS                       R7 R8 K33 ["Transparency"]
      137 SETTABLEKS                       R7 R6 K33 ["Transparency"]
      139 GETTABLEKS                       R8 R0 K37 ["Stroke"]
      141 GETTABLEKS                       R7 R8 K38 ["Thicker"]
      143 SETTABLEKS                       R7 R6 K34 ["Thickness"]
      145 SETTABLEKS                       R6 R5 K30 ["stroke"]
      147 LOADB                            R6 1
      148 SETTABLEKS                       R6 R5 K15 ["hasShadow"]
      150 SETTABLEKS                       R5 R4 K9 ["knob"]
      152 SETTABLE                         R4 R2 R3
      153 NEWTABLE                         R3 4 0
      155 GETUPVAL                         R6 0
      156 GETTABLEKS                       R5 R6 K39 ["InputSizeEnum"]
      158 GETTABLEKS                       R4 R5 K40 ["XSmall"]
      160 DUPTABLE                         R5 K42 [{"hitbox"}]
      161 DUPTABLE                         R6 K44 [{"height"}]
      162 GETTABLEKS                       R8 R0 K45 ["Size"]
      164 GETTABLEKS                       R7 R8 K46 ["Size_300"]
      166 SETTABLEKS                       R7 R6 K43 ["height"]
      168 SETTABLEKS                       R6 R5 K41 ["hitbox"]
      170 SETTABLE                         R5 R3 R4
      171 GETUPVAL                         R6 0
      172 GETTABLEKS                       R5 R6 K39 ["InputSizeEnum"]
      174 GETTABLEKS                       R4 R5 K47 ["Small"]
      176 DUPTABLE                         R5 K42 [{"hitbox"}]
      177 DUPTABLE                         R6 K44 [{"height"}]
      178 GETTABLEKS                       R8 R0 K45 ["Size"]
      180 GETTABLEKS                       R7 R8 K48 ["Size_400"]
      182 SETTABLEKS                       R7 R6 K43 ["height"]
      184 SETTABLEKS                       R6 R5 K41 ["hitbox"]
      186 SETTABLE                         R5 R3 R4
      187 GETUPVAL                         R6 0
      188 GETTABLEKS                       R5 R6 K39 ["InputSizeEnum"]
      190 GETTABLEKS                       R4 R5 K49 ["Medium"]
      192 DUPTABLE                         R5 K42 [{"hitbox"}]
      193 DUPTABLE                         R6 K44 [{"height"}]
      194 GETTABLEKS                       R8 R0 K45 ["Size"]
      196 GETTABLEKS                       R7 R8 K50 ["Size_500"]
      198 SETTABLEKS                       R7 R6 K43 ["height"]
      200 SETTABLEKS                       R6 R5 K41 ["hitbox"]
      202 SETTABLE                         R5 R3 R4
      203 GETUPVAL                         R6 0
      204 GETTABLEKS                       R5 R6 K39 ["InputSizeEnum"]
      206 GETTABLEKS                       R4 R5 K51 ["Large"]
      208 DUPTABLE                         R5 K42 [{"hitbox"}]
      209 DUPTABLE                         R6 K44 [{"height"}]
      210 GETTABLEKS                       R8 R0 K45 ["Size"]
      212 GETTABLEKS                       R7 R8 K52 ["Size_600"]
      214 SETTABLEKS                       R7 R6 K43 ["height"]
      216 SETTABLEKS                       R6 R5 K41 ["hitbox"]
      218 SETTABLE                         R5 R3 R4
      219 DUPTABLE                         R4 K56 [{"common", "variants", "sizes"}]
      220 SETTABLEKS                       R1 R4 K53 ["common"]
      222 SETTABLEKS                       R2 R4 K54 ["variants"]
      224 SETTABLEKS                       R3 R4 K55 ["sizes"]
      226 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["join"]
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
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K0 ["join"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["copy"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["forEachArgs"]
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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Slider"]
       20 GETTABLEKS                       R4 R5 K10 ["SliderTypes"]
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

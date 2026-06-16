PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 GETTABLEKS                       R1 R1 K1 ["X"]
        4 GETTABLEKS                       R1 R1 K2 ["Offset"]
        6 GETTABLEKS                       R4 R0 K4 ["shadowPadding"]
        8 MULK                             R3 R4 K3 [2]
        9 ADD                              R2 R1 R3
       10 DUPTABLE                         R3 K7 [{"knob", "knobShadow"}]
       11 DUPTABLE                         R4 K9 [{"size", "iconSize"}]
       12 GETTABLEKS                       R5 R0 K0 ["size"]
       14 SETTABLEKS                       R5 R4 K0 ["size"]
       16 GETTABLEKS                       R5 R0 K8 ["iconSize"]
       18 SETTABLEKS                       R5 R4 K8 ["iconSize"]
       20 SETTABLEKS                       R4 R3 K5 ["knob"]
       22 DUPTABLE                         R4 K11 [{"size", "padding"}]
       23 GETIMPORT                        R5 K14 [UDim2.fromOffset]
       25 MOVE                             R6 R2
       26 MOVE                             R7 R2
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K0 ["size"]
       30 GETTABLEKS                       R5 R0 K4 ["shadowPadding"]
       32 SETTABLEKS                       R5 R4 K10 ["padding"]
       34 SETTABLEKS                       R4 R3 K6 ["knobShadow"]
       36 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R1 K2 [{"knob", "knobShadow"}]
        1 DUPTABLE                         R2 K4 [{"tag"}]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K5 ["FoundationToggleVisualUpdate"]
        5 JUMPIFNOT                        R4 ; [+2]
        6 LOADK                            R3 K6 ["auto-xy radius-circle anchor-center-center position-center-center"]
        7 JUMP                             ; [+1]
        8 LOADK                            R3 K7 ["radius-circle anchor-center-center position-center-center"]
        9 SETTABLEKS                       R3 R2 K3 ["tag"]
       11 SETTABLEKS                       R2 R1 K0 ["knob"]
       13 DUPTABLE                         R2 K4 [{"tag"}]
       14 LOADK                            R3 K8 ["anchor-center-center position-center-center"]
       15 SETTABLEKS                       R3 R2 K3 ["tag"]
       17 SETTABLEKS                       R2 R1 K1 ["knobShadow"]
       19 NEWTABLE                         R2 4 0
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K9 ["XSmall"]
       24 GETUPVAL                         R4 2
       25 DUPTABLE                         R5 K13 [{"iconSize", "size", "shadowPadding"}]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K9 ["XSmall"]
       29 SETTABLEKS                       R6 R5 K10 ["iconSize"]
       31 GETUPVAL                         R6 4
       32 MOVE                             R7 R0
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K9 ["XSmall"]
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K11 ["size"]
       39 GETTABLEKS                       R6 R0 K14 ["Padding"]
       41 GETTABLEKS                       R6 R6 K15 ["XXSmall"]
       43 SETTABLEKS                       R6 R5 K12 ["shadowPadding"]
       45 CALL                             R4 1 1
       46 SETTABLE                         R4 R2 R3
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K16 ["Small"]
       50 GETUPVAL                         R4 2
       51 DUPTABLE                         R5 K13 [{"iconSize", "size", "shadowPadding"}]
       52 GETUPVAL                         R6 3
       53 GETTABLEKS                       R6 R6 K16 ["Small"]
       55 SETTABLEKS                       R6 R5 K10 ["iconSize"]
       57 GETUPVAL                         R6 4
       58 MOVE                             R7 R0
       59 GETUPVAL                         R8 1
       60 GETTABLEKS                       R8 R8 K16 ["Small"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K11 ["size"]
       65 GETTABLEKS                       R6 R0 K14 ["Padding"]
       67 GETTABLEKS                       R6 R6 K9 ["XSmall"]
       69 SETTABLEKS                       R6 R5 K12 ["shadowPadding"]
       71 CALL                             R4 1 1
       72 SETTABLE                         R4 R2 R3
       73 GETUPVAL                         R3 1
       74 GETTABLEKS                       R3 R3 K17 ["Medium"]
       76 GETUPVAL                         R4 2
       77 DUPTABLE                         R5 K13 [{"iconSize", "size", "shadowPadding"}]
       78 GETUPVAL                         R6 3
       79 GETTABLEKS                       R6 R6 K17 ["Medium"]
       81 SETTABLEKS                       R6 R5 K10 ["iconSize"]
       83 GETUPVAL                         R6 4
       84 MOVE                             R7 R0
       85 GETUPVAL                         R8 1
       86 GETTABLEKS                       R8 R8 K17 ["Medium"]
       88 CALL                             R6 2 1
       89 SETTABLEKS                       R6 R5 K11 ["size"]
       91 GETTABLEKS                       R6 R0 K14 ["Padding"]
       93 GETTABLEKS                       R6 R6 K16 ["Small"]
       95 SETTABLEKS                       R6 R5 K12 ["shadowPadding"]
       97 CALL                             R4 1 1
       98 SETTABLE                         R4 R2 R3
       99 GETUPVAL                         R3 1
      100 GETTABLEKS                       R3 R3 K18 ["Large"]
      102 GETUPVAL                         R4 2
      103 DUPTABLE                         R5 K13 [{"iconSize", "size", "shadowPadding"}]
      104 GETUPVAL                         R6 3
      105 GETTABLEKS                       R6 R6 K18 ["Large"]
      107 SETTABLEKS                       R6 R5 K10 ["iconSize"]
      109 GETUPVAL                         R6 4
      110 MOVE                             R7 R0
      111 GETUPVAL                         R8 1
      112 GETTABLEKS                       R8 R8 K18 ["Large"]
      114 CALL                             R6 2 1
      115 SETTABLEKS                       R6 R5 K11 ["size"]
      117 GETTABLEKS                       R6 R0 K14 ["Padding"]
      119 GETTABLEKS                       R6 R6 K16 ["Small"]
      121 SETTABLEKS                       R6 R5 K12 ["shadowPadding"]
      123 CALL                             R4 1 1
      124 SETTABLE                         R4 R2 R3
      125 GETUPVAL                         R4 0
      126 GETTABLEKS                       R4 R4 K5 ["FoundationToggleVisualUpdate"]
      128 JUMPIFNOT                        R4 ; [+53]
      129 NEWTABLE                         R3 2 0
      131 LOADB                            R4 0
      132 DUPTABLE                         R5 K20 [{"knob", "iconContainer"}]
      133 DUPTABLE                         R6 K22 [{"style"}]
      134 GETTABLEKS                       R7 R0 K23 ["Color"]
      136 GETTABLEKS                       R7 R7 K24 ["Content"]
      138 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      140 SETTABLEKS                       R7 R6 K21 ["style"]
      142 SETTABLEKS                       R6 R5 K0 ["knob"]
      144 DUPTABLE                         R6 K27 [{"backgroundStyle"}]
      145 GETTABLEKS                       R7 R0 K28 ["Inverse"]
      147 GETTABLEKS                       R7 R7 K24 ["Content"]
      149 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      151 SETTABLEKS                       R7 R6 K26 ["backgroundStyle"]
      153 SETTABLEKS                       R6 R5 K19 ["iconContainer"]
      155 SETTABLE                         R5 R3 R4
      156 LOADB                            R4 1
      157 DUPTABLE                         R5 K20 [{"knob", "iconContainer"}]
      158 DUPTABLE                         R6 K22 [{"style"}]
      159 GETTABLEKS                       R7 R0 K28 ["Inverse"]
      161 GETTABLEKS                       R7 R7 K24 ["Content"]
      163 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      165 SETTABLEKS                       R7 R6 K21 ["style"]
      167 SETTABLEKS                       R6 R5 K0 ["knob"]
      169 DUPTABLE                         R6 K27 [{"backgroundStyle"}]
      170 GETTABLEKS                       R7 R0 K23 ["Color"]
      172 GETTABLEKS                       R7 R7 K24 ["Content"]
      174 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      176 SETTABLEKS                       R7 R6 K26 ["backgroundStyle"]
      178 SETTABLEKS                       R6 R5 K19 ["iconContainer"]
      180 SETTABLE                         R5 R3 R4
      181 JUMP                             ; [+56]
      182 NEWTABLE                         R3 2 0
      184 LOADB                            R4 0
      185 DUPTABLE                         R5 K20 [{"knob", "iconContainer"}]
      186 DUPTABLE                         R6 K22 [{"style"}]
      187 GETTABLEKS                       R7 R0 K23 ["Color"]
      189 GETTABLEKS                       R7 R7 K29 ["Extended"]
      191 GETTABLEKS                       R7 R7 K30 ["White"]
      193 GETTABLEKS                       R7 R7 K31 ["White_100"]
      195 SETTABLEKS                       R7 R6 K21 ["style"]
      197 SETTABLEKS                       R6 R5 K0 ["knob"]
      199 DUPTABLE                         R6 K27 [{"backgroundStyle"}]
      200 GETTABLEKS                       R7 R0 K28 ["Inverse"]
      202 GETTABLEKS                       R7 R7 K24 ["Content"]
      204 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      206 SETTABLEKS                       R7 R6 K26 ["backgroundStyle"]
      208 SETTABLEKS                       R6 R5 K19 ["iconContainer"]
      210 SETTABLE                         R5 R3 R4
      211 LOADB                            R4 1
      212 DUPTABLE                         R5 K20 [{"knob", "iconContainer"}]
      213 DUPTABLE                         R6 K22 [{"style"}]
      214 GETTABLEKS                       R7 R0 K23 ["Color"]
      216 GETTABLEKS                       R7 R7 K29 ["Extended"]
      218 GETTABLEKS                       R7 R7 K30 ["White"]
      220 GETTABLEKS                       R7 R7 K31 ["White_100"]
      222 SETTABLEKS                       R7 R6 K21 ["style"]
      224 SETTABLEKS                       R6 R5 K0 ["knob"]
      226 DUPTABLE                         R6 K27 [{"backgroundStyle"}]
      227 GETTABLEKS                       R7 R0 K23 ["Color"]
      229 GETTABLEKS                       R7 R7 K24 ["Content"]
      231 GETTABLEKS                       R7 R7 K25 ["Emphasis"]
      233 SETTABLEKS                       R7 R6 K26 ["backgroundStyle"]
      235 SETTABLEKS                       R6 R5 K19 ["iconContainer"]
      237 SETTABLE                         R5 R3 R4
      238 DUPTABLE                         R4 K35 [{"common", "sizes", "isInverse"}]
      239 SETTABLEKS                       R1 R4 K32 ["common"]
      241 SETTABLEKS                       R2 R4 K33 ["sizes"]
      243 SETTABLEKS                       R3 R4 K34 ["isInverse"]
      245 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useVariants"]
        3 LOADK                            R4 K1 ["Knob"]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R3 K2 ["common"]
       10 GETTABLEKS                       R7 R3 K3 ["sizes"]
       12 GETTABLE                         R6 R7 R1
       13 GETTABLEKS                       R8 R3 K4 ["isInverse"]
       15 GETTABLE                         R7 R8 R2
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["InputSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["composeStyleVariant"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K15 ["Parent"]
       43 GETTABLEKS                       R6 R6 K16 ["getKnobSize"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K12 ["Providers"]
       50 GETTABLEKS                       R7 R7 K13 ["Style"]
       52 GETTABLEKS                       R7 R7 K17 ["VariantsContext"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Utility"]
       59 GETTABLEKS                       R8 R8 K18 ["Flags"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Enums"]
       66 GETTABLEKS                       R9 R9 K19 ["IconSize"]
       68 CALL                             R8 1 1
       69 DUPCLOSURE                       R9 K20 [PROTO_0]
       70 DUPCLOSURE                       R10 K21 [PROTO_1]
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R5
       76 DUPCLOSURE                       R11 K22 [PROTO_2]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R2
       80 RETURN                           R11 1

PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%d%%"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setJointWeightAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["flattenedJoint"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 GETUPVAL                         R3 2
        9 DIVK                             R2 R3 K3 [100]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useState"]
       10 GETTABLEKS                       R5 R0 K4 ["flattenedJoint"]
       12 GETTABLEKS                       R4 R5 K5 ["value"]
       14 MULK                             R3 R4 K3 [100]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K6 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R8 R0 K4 ["flattenedJoint"]
       27 GETTABLEKS                       R7 R8 K7 ["id"]
       29 GETTABLEKS                       R8 R1 K8 ["setJointWeightAsync"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K9 ["Hooks"]
       37 GETTABLEKS                       R5 R6 K10 ["useTokens"]
       39 CALL                             R5 0 1
       40 GETUPVAL                         R7 3
       41 GETTABLEKS                       R6 R7 K11 ["createNextOrder"]
       43 CALL                             R6 0 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K12 ["createElement"]
       47 GETUPVAL                         R9 2
       48 GETTABLEKS                       R8 R9 K13 ["View"]
       50 DUPTABLE                         R9 K16 [{"tag", "LayoutOrder"}]
       51 LOADK                            R10 K17 ["size-full-500 row gap-xsmall align-y-center"]
       52 SETTABLEKS                       R10 R9 K14 ["tag"]
       54 GETTABLEKS                       R10 R0 K18 ["layoutOrder"]
       56 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       58 DUPTABLE                         R10 K22 [{"Gap", "Label", "Value"}]
       59 LOADB                            R11 0
       60 GETTABLEKS                       R13 R0 K4 ["flattenedJoint"]
       62 GETTABLEKS                       R12 R13 K23 ["depth"]
       64 LOADN                            R13 0
       65 JUMPIFNOTLT                      R13 R12 ; [+28]
       67 GETUPVAL                         R12 0
       68 GETTABLEKS                       R11 R12 K12 ["createElement"]
       70 GETUPVAL                         R13 2
       71 GETTABLEKS                       R12 R13 K13 ["View"]
       73 DUPTABLE                         R13 K25 [{"LayoutOrder", "Size"}]
       74 MOVE                             R14 R6
       75 CALL                             R14 0 1
       76 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       78 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       80 GETTABLEKS                       R17 R5 K19 ["Gap"]
       82 GETTABLEKS                       R16 R17 K29 ["Medium"]
       84 GETTABLEKS                       R18 R0 K4 ["flattenedJoint"]
       86 GETTABLEKS                       R17 R18 K23 ["depth"]
       88 MUL                              R15 R16 R17
       89 LOADN                            R16 0
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K24 ["Size"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K19 ["Gap"]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R11 R12 K12 ["createElement"]
       99 GETUPVAL                         R13 2
      100 GETTABLEKS                       R12 R13 K30 ["Text"]
      102 DUPTABLE                         R13 K31 [{"tag", "Text", "LayoutOrder"}]
      103 LOADK                            R14 K32 ["size-0-full text-body-medium text-align-y-center text-align-x-left grow"]
      104 SETTABLEKS                       R14 R13 K14 ["tag"]
      106 GETTABLEKS                       R15 R0 K4 ["flattenedJoint"]
      108 GETTABLEKS                       R14 R15 K33 ["name"]
      110 SETTABLEKS                       R14 R13 K30 ["Text"]
      112 MOVE                             R14 R6
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K20 ["Label"]
      119 GETUPVAL                         R12 0
      120 GETTABLEKS                       R11 R12 K12 ["createElement"]
      122 GETUPVAL                         R13 2
      123 GETTABLEKS                       R12 R13 K13 ["View"]
      125 DUPTABLE                         R13 K16 [{"tag", "LayoutOrder"}]
      126 LOADK                            R14 K34 ["size-2300-full"]
      127 SETTABLEKS                       R14 R13 K14 ["tag"]
      129 MOVE                             R14 R6
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      133 GETUPVAL                         R15 0
      134 GETTABLEKS                       R14 R15 K12 ["createElement"]
      136 GETUPVAL                         R16 2
      137 GETTABLEKS                       R15 R16 K35 ["NumberInput"]
      139 DUPTABLE                         R16 K44 [{"label", "value", "onChanged", "formatAsString", "controlsVariant", "size", "minimum", "maximum", "width"}]
      140 LOADK                            R17 K45 [""]
      141 SETTABLEKS                       R17 R16 K36 ["label"]
      143 SETTABLEKS                       R2 R16 K5 ["value"]
      145 SETTABLEKS                       R4 R16 K37 ["onChanged"]
      147 GETUPVAL                         R17 4
      148 SETTABLEKS                       R17 R16 K38 ["formatAsString"]
      150 GETUPVAL                         R20 2
      151 GETTABLEKS                       R19 R20 K46 ["Enums"]
      153 GETTABLEKS                       R18 R19 K47 ["NumberInputControlsVariant"]
      155 GETTABLEKS                       R17 R18 K48 ["None"]
      157 SETTABLEKS                       R17 R16 K39 ["controlsVariant"]
      159 GETUPVAL                         R20 2
      160 GETTABLEKS                       R19 R20 K46 ["Enums"]
      162 GETTABLEKS                       R18 R19 K49 ["InputSize"]
      164 GETTABLEKS                       R17 R18 K50 ["XSmall"]
      166 SETTABLEKS                       R17 R16 K40 ["size"]
      168 LOADN                            R17 0
      169 SETTABLEKS                       R17 R16 K41 ["minimum"]
      171 LOADN                            R17 100
      172 SETTABLEKS                       R17 R16 K42 ["maximum"]
      174 GETIMPORT                        R17 K53 [UDim.new]
      176 LOADN                            R18 1
      177 LOADN                            R19 0
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K43 ["width"]
      181 CALL                             R14 2 -1
      182 CALL                             R11 -1 1
      183 SETTABLEKS                       R11 R10 K21 ["Value"]
      185 CALL                             R7 3 -1
      186 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R2 K5 ["masks"]
       17 GETTABLEKS                       R5 R0 K6 ["maskId"]
       19 GETTABLE                         R3 R4 R5
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K7 ["Hooks"]
       23 GETTABLEKS                       R4 R5 K8 ["useTokens"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K9 ["createNextOrder"]
       29 CALL                             R5 0 1
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R6 R7 K10 ["createUniqueKey"]
       33 CALL                             R6 0 1
       34 JUMPIFNOTEQKNIL                  R3 ; [+3]
       36 LOADNIL                          R7
       37 RETURN                           R7 1
       38 NEWTABLE                         R7 0 0
       40 GETTABLEKS                       R8 R3 K11 ["flattenedJoints"]
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 FORGPREP                         R8
       45 MOVE                             R13 R6
       46 GETTABLEKS                       R14 R12 K12 ["name"]
       48 CALL                             R13 1 1
       49 GETUPVAL                         R15 1
       50 GETTABLEKS                       R14 R15 K13 ["createElement"]
       52 GETUPVAL                         R15 5
       53 DUPTABLE                         R16 K16 [{"flattenedJoint", "layoutOrder"}]
       54 SETTABLEKS                       R12 R16 K14 ["flattenedJoint"]
       56 MOVE                             R17 R5
       57 CALL                             R17 0 1
       58 SETTABLEKS                       R17 R16 K15 ["layoutOrder"]
       60 CALL                             R14 2 1
       61 SETTABLE                         R14 R7 R13
       62 FORGLOOP                         R8 2 ; [-18]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R8 R9 K13 ["createElement"]
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R9 R10 K17 ["ScrollView"]
       70 DUPTABLE                         R10 K21 [{"tag", "scroll", "layout"}]
       71 LOADK                            R11 K22 ["size-full grow"]
       72 SETTABLEKS                       R11 R10 K18 ["tag"]
       74 DUPTABLE                         R11 K26 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       75 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R12 R11 K23 ["AutomaticCanvasSize"]
       79 GETIMPORT                        R12 K33 [UDim2.new]
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K24 ["CanvasSize"]
       84 GETIMPORT                        R12 K34 [Enum.ScrollingDirection.Y]
       86 SETTABLEKS                       R12 R11 K25 ["ScrollingDirection"]
       88 SETTABLEKS                       R11 R10 K19 ["scroll"]
       90 DUPTABLE                         R11 K37 [{"FillDirection", "Padding"}]
       91 GETIMPORT                        R12 K39 [Enum.FillDirection.Vertical]
       93 SETTABLEKS                       R12 R11 K35 ["FillDirection"]
       95 GETIMPORT                        R12 K41 [UDim.new]
       97 LOADN                            R13 0
       98 GETTABLEKS                       R15 R4 K42 ["Gap"]
      100 GETTABLEKS                       R14 R15 K43 ["XSmall"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K36 ["Padding"]
      105 SETTABLEKS                       R11 R10 K20 ["layout"]
      107 MOVE                             R11 R7
      108 CALL                             R8 3 1
      109 GETUPVAL                         R10 1
      110 GETTABLEKS                       R9 R10 K13 ["createElement"]
      112 GETUPVAL                         R11 3
      113 GETTABLEKS                       R10 R11 K44 ["View"]
      115 DUPTABLE                         R11 K45 [{"tag"}]
      116 LOADK                            R12 K46 ["size-full col padding-y-medium"]
      117 SETTABLEKS                       R12 R11 K18 ["tag"]
      119 DUPTABLE                         R12 K49 [{"Header", "List"}]
      120 GETUPVAL                         R14 1
      121 GETTABLEKS                       R13 R14 K13 ["createElement"]
      123 GETUPVAL                         R15 3
      124 GETTABLEKS                       R14 R15 K44 ["View"]
      126 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      127 LOADK                            R16 K52 ["size-full-400 row align-y-center padding-bottom-small"]
      128 SETTABLEKS                       R16 R15 K18 ["tag"]
      130 MOVE                             R16 R5
      131 CALL                             R16 0 1
      132 SETTABLEKS                       R16 R15 K50 ["LayoutOrder"]
      134 DUPTABLE                         R16 K55 [{"Joint", "Weight"}]
      135 GETUPVAL                         R18 1
      136 GETTABLEKS                       R17 R18 K13 ["createElement"]
      138 GETUPVAL                         R19 3
      139 GETTABLEKS                       R18 R19 K56 ["Text"]
      141 DUPTABLE                         R19 K57 [{"tag", "LayoutOrder", "Text"}]
      142 LOADK                            R20 K58 ["size-0-full text-body-small text-align-x-left grow"]
      143 SETTABLEKS                       R20 R19 K18 ["tag"]
      145 MOVE                             R20 R5
      146 CALL                             R20 0 1
      147 SETTABLEKS                       R20 R19 K50 ["LayoutOrder"]
      149 LOADK                            R22 K59 ["Common"]
      150 LOADK                            R23 K60 ["AnimationEditor"]
      151 LOADK                            R24 K61 ["MaskEditorPopup"]
      152 LOADK                            R25 K53 ["Joint"]
      153 NAMECALL                         R20 R1 K62 ["getExternalText"]
      155 CALL                             R20 5 1
      156 SETTABLEKS                       R20 R19 K56 ["Text"]
      158 CALL                             R17 2 1
      159 SETTABLEKS                       R17 R16 K53 ["Joint"]
      161 GETUPVAL                         R18 1
      162 GETTABLEKS                       R17 R18 K13 ["createElement"]
      164 GETUPVAL                         R19 3
      165 GETTABLEKS                       R18 R19 K56 ["Text"]
      167 DUPTABLE                         R19 K57 [{"tag", "LayoutOrder", "Text"}]
      168 LOADK                            R20 K63 ["size-2300-full text-body-small text-align-x-left"]
      169 SETTABLEKS                       R20 R19 K18 ["tag"]
      171 MOVE                             R20 R5
      172 CALL                             R20 0 1
      173 SETTABLEKS                       R20 R19 K50 ["LayoutOrder"]
      175 LOADK                            R22 K59 ["Common"]
      176 LOADK                            R23 K60 ["AnimationEditor"]
      177 LOADK                            R24 K61 ["MaskEditorPopup"]
      178 LOADK                            R25 K54 ["Weight"]
      179 NAMECALL                         R20 R1 K62 ["getExternalText"]
      181 CALL                             R20 5 1
      182 SETTABLEKS                       R20 R19 K56 ["Text"]
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K54 ["Weight"]
      187 CALL                             R13 3 1
      188 SETTABLEKS                       R13 R12 K47 ["Header"]
      190 GETUPVAL                         R14 1
      191 GETTABLEKS                       R13 R14 K13 ["createElement"]
      193 GETUPVAL                         R15 3
      194 GETTABLEKS                       R14 R15 K44 ["View"]
      196 DUPTABLE                         R15 K51 [{"tag", "LayoutOrder"}]
      197 LOADK                            R16 K64 ["size-full-0 grow padding-xsmall padding-bottom-xxlarge bg-surface-100"]
      198 SETTABLEKS                       R16 R15 K18 ["tag"]
      200 MOVE                             R16 R5
      201 CALL                             R16 0 1
      202 SETTABLEKS                       R16 R15 K50 ["LayoutOrder"]
      204 MOVE                             R16 R8
      205 CALL                             R13 3 1
      206 SETTABLEKS                       R13 R12 K48 ["List"]
      208 CALL                             R9 3 -1
      209 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K13 [PROTO_0]
       43 DUPCLOSURE                       R7 K14 [PROTO_3]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R8 K15 [PROTO_4]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 RETURN                           R8 1

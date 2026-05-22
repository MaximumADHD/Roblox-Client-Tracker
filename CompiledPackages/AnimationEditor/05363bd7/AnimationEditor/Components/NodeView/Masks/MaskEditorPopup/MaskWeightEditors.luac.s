PROTO_0:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["%d%%"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setJointWeightAsync"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["flattenedJoint"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 GETTABLEKS                       R4 R0 K4 ["flattenedJoint"]
       12 GETTABLEKS                       R4 R4 K5 ["value"]
       14 MULK                             R3 R4 K3 [100]
       15 CALL                             R2 1 2
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K6 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R6 0 2
       25 GETTABLEKS                       R7 R0 K4 ["flattenedJoint"]
       27 GETTABLEKS                       R7 R7 K7 ["id"]
       29 GETTABLEKS                       R8 R1 K8 ["setJointWeightAsync"]
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K9 ["Hooks"]
       37 GETTABLEKS                       R5 R5 K10 ["useTokens"]
       39 CALL                             R5 0 1
       40 GETUPVAL                         R6 3
       41 GETTABLEKS                       R6 R6 K11 ["createNextOrder"]
       43 CALL                             R6 0 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K12 ["createElement"]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R8 R8 K13 ["View"]
       50 DUPTABLE                         R9 K16 [{"tag", "LayoutOrder"}]
       51 LOADK                            R10 K17 ["size-full-500 row gap-xsmall align-y-center"]
       52 SETTABLEKS                       R10 R9 K14 ["tag"]
       54 GETTABLEKS                       R10 R0 K18 ["layoutOrder"]
       56 SETTABLEKS                       R10 R9 K15 ["LayoutOrder"]
       58 DUPTABLE                         R10 K22 [{"Gap", "Label", "Value"}]
       59 LOADB                            R11 0
       60 GETTABLEKS                       R12 R0 K4 ["flattenedJoint"]
       62 GETTABLEKS                       R12 R12 K23 ["depth"]
       64 LOADN                            R13 0
       65 JUMPIFNOTLT                      R13 R12 ; [+28]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K12 ["createElement"]
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K13 ["View"]
       73 DUPTABLE                         R13 K25 [{"LayoutOrder", "Size"}]
       74 MOVE                             R14 R6
       75 CALL                             R14 0 1
       76 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
       78 GETIMPORT                        R14 K28 [UDim2.fromOffset]
       80 GETTABLEKS                       R16 R5 K19 ["Gap"]
       82 GETTABLEKS                       R16 R16 K29 ["Medium"]
       84 GETTABLEKS                       R17 R0 K4 ["flattenedJoint"]
       86 GETTABLEKS                       R17 R17 K23 ["depth"]
       88 MUL                              R15 R16 R17
       89 LOADN                            R16 0
       90 CALL                             R14 2 1
       91 SETTABLEKS                       R14 R13 K24 ["Size"]
       93 CALL                             R11 2 1
       94 SETTABLEKS                       R11 R10 K19 ["Gap"]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K12 ["createElement"]
       99 GETUPVAL                         R12 2
      100 GETTABLEKS                       R12 R12 K30 ["Text"]
      102 DUPTABLE                         R13 K31 [{"tag", "Text", "LayoutOrder"}]
      103 LOADK                            R14 K32 ["size-0-full text-body-medium text-align-y-center text-align-x-left grow"]
      104 SETTABLEKS                       R14 R13 K14 ["tag"]
      106 GETTABLEKS                       R14 R0 K4 ["flattenedJoint"]
      108 GETTABLEKS                       R14 R14 K33 ["name"]
      110 SETTABLEKS                       R14 R13 K30 ["Text"]
      112 MOVE                             R14 R6
      113 CALL                             R14 0 1
      114 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      116 CALL                             R11 2 1
      117 SETTABLEKS                       R11 R10 K20 ["Label"]
      119 GETUPVAL                         R11 0
      120 GETTABLEKS                       R11 R11 K12 ["createElement"]
      122 GETUPVAL                         R12 2
      123 GETTABLEKS                       R12 R12 K13 ["View"]
      125 DUPTABLE                         R13 K16 [{"tag", "LayoutOrder"}]
      126 LOADK                            R14 K34 ["size-2300-full"]
      127 SETTABLEKS                       R14 R13 K14 ["tag"]
      129 MOVE                             R14 R6
      130 CALL                             R14 0 1
      131 SETTABLEKS                       R14 R13 K15 ["LayoutOrder"]
      133 GETUPVAL                         R14 0
      134 GETTABLEKS                       R14 R14 K12 ["createElement"]
      136 GETUPVAL                         R15 2
      137 GETTABLEKS                       R15 R15 K35 ["NumberInput"]
      139 DUPTABLE                         R16 K44 [{"label", "value", "onChanged", "formatAsString", "controlsVariant", "size", "minimum", "maximum", "width"}]
      140 LOADK                            R17 K45 [""]
      141 SETTABLEKS                       R17 R16 K36 ["label"]
      143 SETTABLEKS                       R2 R16 K5 ["value"]
      145 SETTABLEKS                       R4 R16 K37 ["onChanged"]
      147 GETUPVAL                         R17 4
      148 SETTABLEKS                       R17 R16 K38 ["formatAsString"]
      150 GETUPVAL                         R17 2
      151 GETTABLEKS                       R17 R17 K46 ["Enums"]
      153 GETTABLEKS                       R17 R17 K47 ["NumberInputControlsVariant"]
      155 GETTABLEKS                       R17 R17 K48 ["None"]
      157 SETTABLEKS                       R17 R16 K39 ["controlsVariant"]
      159 GETUPVAL                         R17 2
      160 GETTABLEKS                       R17 R17 K46 ["Enums"]
      162 GETTABLEKS                       R17 R17 K49 ["InputSize"]
      164 GETTABLEKS                       R17 R17 K50 ["XSmall"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R4 R2 K5 ["masks"]
       17 GETTABLEKS                       R5 R0 K6 ["maskId"]
       19 GETTABLE                         R3 R4 R5
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K7 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K8 ["useTokens"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 4
       27 GETTABLEKS                       R5 R5 K9 ["createNextOrder"]
       29 CALL                             R5 0 1
       30 GETUPVAL                         R6 4
       31 GETTABLEKS                       R6 R6 K10 ["createUniqueKey"]
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
       49 GETUPVAL                         R14 1
       50 GETTABLEKS                       R14 R14 K13 ["createElement"]
       52 GETUPVAL                         R15 5
       53 DUPTABLE                         R16 K16 [{"flattenedJoint", "layoutOrder"}]
       54 SETTABLEKS                       R12 R16 K14 ["flattenedJoint"]
       56 MOVE                             R17 R5
       57 CALL                             R17 0 1
       58 SETTABLEKS                       R17 R16 K15 ["layoutOrder"]
       60 CALL                             R14 2 1
       61 SETTABLE                         R14 R7 R13
       62 FORGLOOP                         R8 2 ; [-18]
       64 GETUPVAL                         R8 1
       65 GETTABLEKS                       R8 R8 K13 ["createElement"]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K17 ["ScrollView"]
       70 DUPTABLE                         R10 K21 [{"tag", "scroll", "layout"}]
       71 LOADK                            R11 K22 ["size-full grow"]
       72 SETTABLEKS                       R11 R10 K18 ["tag"]
       74 DUPTABLE                         R11 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       75 GETIMPORT                        R12 K31 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R12 R11 K23 ["AutomaticCanvasSize"]
       79 GETIMPORT                        R12 K34 [UDim2.new]
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K24 ["CanvasSize"]
       84 GETIMPORT                        R12 K35 [Enum.ScrollingDirection.Y]
       86 SETTABLEKS                       R12 R11 K25 ["ScrollingDirection"]
       88 GETIMPORT                        R12 K38 [Enum.ScrollBarInset.Always]
       90 SETTABLEKS                       R12 R11 K26 ["VerticalScrollBarInset"]
       92 SETTABLEKS                       R11 R10 K19 ["scroll"]
       94 DUPTABLE                         R11 K41 [{"FillDirection", "Padding"}]
       95 GETIMPORT                        R12 K43 [Enum.FillDirection.Vertical]
       97 SETTABLEKS                       R12 R11 K39 ["FillDirection"]
       99 GETIMPORT                        R12 K45 [UDim.new]
      101 LOADN                            R13 0
      102 GETTABLEKS                       R14 R4 K46 ["Gap"]
      104 GETTABLEKS                       R14 R14 K47 ["XSmall"]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K40 ["Padding"]
      109 SETTABLEKS                       R11 R10 K20 ["layout"]
      111 MOVE                             R11 R7
      112 CALL                             R8 3 1
      113 GETUPVAL                         R9 1
      114 GETTABLEKS                       R9 R9 K13 ["createElement"]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R10 R10 K48 ["View"]
      119 DUPTABLE                         R11 K49 [{"tag"}]
      120 LOADK                            R12 K50 ["size-full col padding-y-medium"]
      121 SETTABLEKS                       R12 R11 K18 ["tag"]
      123 DUPTABLE                         R12 K53 [{"Header", "List"}]
      124 GETUPVAL                         R13 1
      125 GETTABLEKS                       R13 R13 K13 ["createElement"]
      127 GETUPVAL                         R14 3
      128 GETTABLEKS                       R14 R14 K48 ["View"]
      130 DUPTABLE                         R15 K55 [{"tag", "LayoutOrder"}]
      131 LOADK                            R16 K56 ["size-full-400 row align-y-center padding-bottom-small"]
      132 SETTABLEKS                       R16 R15 K18 ["tag"]
      134 MOVE                             R16 R5
      135 CALL                             R16 0 1
      136 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      138 DUPTABLE                         R16 K59 [{"Joint", "Weight"}]
      139 GETUPVAL                         R17 1
      140 GETTABLEKS                       R17 R17 K13 ["createElement"]
      142 GETUPVAL                         R18 3
      143 GETTABLEKS                       R18 R18 K60 ["Text"]
      145 DUPTABLE                         R19 K61 [{"tag", "LayoutOrder", "Text"}]
      146 LOADK                            R20 K62 ["size-0-full text-body-small text-align-x-left grow"]
      147 SETTABLEKS                       R20 R19 K18 ["tag"]
      149 MOVE                             R20 R5
      150 CALL                             R20 0 1
      151 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      153 LOADK                            R22 K63 ["Common"]
      154 LOADK                            R23 K64 ["AnimationEditor"]
      155 LOADK                            R24 K65 ["MaskEditorPopup"]
      156 LOADK                            R25 K57 ["Joint"]
      157 NAMECALL                         R20 R1 K66 ["getExternalText"]
      159 CALL                             R20 5 1
      160 SETTABLEKS                       R20 R19 K60 ["Text"]
      162 CALL                             R17 2 1
      163 SETTABLEKS                       R17 R16 K57 ["Joint"]
      165 GETUPVAL                         R17 1
      166 GETTABLEKS                       R17 R17 K13 ["createElement"]
      168 GETUPVAL                         R18 3
      169 GETTABLEKS                       R18 R18 K60 ["Text"]
      171 DUPTABLE                         R19 K61 [{"tag", "LayoutOrder", "Text"}]
      172 LOADK                            R20 K67 ["size-2300-full text-body-small text-align-x-left"]
      173 SETTABLEKS                       R20 R19 K18 ["tag"]
      175 MOVE                             R20 R5
      176 CALL                             R20 0 1
      177 SETTABLEKS                       R20 R19 K54 ["LayoutOrder"]
      179 LOADK                            R22 K63 ["Common"]
      180 LOADK                            R23 K64 ["AnimationEditor"]
      181 LOADK                            R24 K65 ["MaskEditorPopup"]
      182 LOADK                            R25 K58 ["Weight"]
      183 NAMECALL                         R20 R1 K66 ["getExternalText"]
      185 CALL                             R20 5 1
      186 SETTABLEKS                       R20 R19 K60 ["Text"]
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K58 ["Weight"]
      191 CALL                             R13 3 1
      192 SETTABLEKS                       R13 R12 K51 ["Header"]
      194 GETUPVAL                         R13 1
      195 GETTABLEKS                       R13 R13 K13 ["createElement"]
      197 GETUPVAL                         R14 3
      198 GETTABLEKS                       R14 R14 K48 ["View"]
      200 DUPTABLE                         R15 K55 [{"tag", "LayoutOrder"}]
      201 LOADK                            R16 K68 ["size-full-0 grow padding-xsmall padding-bottom-xxlarge bg-surface-100"]
      202 SETTABLEKS                       R16 R15 K18 ["tag"]
      204 MOVE                             R16 R5
      205 CALL                             R16 0 1
      206 SETTABLEKS                       R16 R15 K54 ["LayoutOrder"]
      208 MOVE                             R16 R8
      209 CALL                             R13 3 1
      210 SETTABLEKS                       R13 R12 K52 ["List"]
      212 CALL                             R9 3 -1
      213 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["MaskEditorContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
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

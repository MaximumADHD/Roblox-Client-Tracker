PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Expansion", "Selection", "Instances"}]
        1 NEWTABLE                         R2 1 0
        3 GETUPVAL                         R3 0
        4 LOADB                            R4 1
        5 SETTABLE                         R4 R2 R3
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 NEWTABLE                         R2 0 0
       10 SETTABLEKS                       R2 R1 K1 ["Selection"]
       12 NEWTABLE                         R2 0 1
       14 GETUPVAL                         R3 0
       15 SETLIST                          R2 R3 1 [1]
       17 SETTABLEKS                       R2 R1 K2 ["Instances"]
       19 SETTABLEKS                       R1 R0 K4 ["state"]
       21 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K0 ["Get"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 GETUPVAL                         R9 1
        8 NAMECALL                         R7 R6 K1 ["IsDescendantOf"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+2]
       12 LOADB                            R7 1
       13 SETTABLE                         R7 R1 R6
       14 FORGLOOP                         R2 2 ; [-8]
       16 GETIMPORT                        R2 K3 [next]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQKNIL                  R2 ; [+6]
       22 GETUPVAL                         R2 2
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADB                            R3 1
       26 SETTABLE                         R3 R1 R2
       27 GETIMPORT                        R2 K3 [next]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 1
       31 JUMPIFEQKNIL                     R2 ; [+7]
       33 DUPTABLE                         R4 K5 [{"Selection"}]
       34 SETTABLEKS                       R1 R4 K4 ["Selection"]
       36 NAMECALL                         R2 R0 K6 ["setState"]
       38 CALL                             R2 2 0
       39 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Selection"}]
        2 SETTABLEKS                       R0 R3 K0 ["Selection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        5 GETTABLEKS                       R4 R4 K3 ["join"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["state"]
       10 GETTABLEKS                       R5 R5 K0 ["Expansion"]
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       16 NAMECALL                         R1 R1 K5 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setRig"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K1 ["setScreen"]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["Screens"]
       13 GETTABLEKS                       R1 R1 K3 ["InputSurfaceAppearanceIds"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 NEWTABLE                         R4 0 0
        8 GETTABLEKS                       R5 R2 K3 ["Selection"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 FASTCALL1                        TYPEOF R8 ; [+3]
       14 MOVE                             R11 R8
       15 GETIMPORT                        R10 K5 [typeof]
       17 CALL                             R10 1 1
       18 JUMPIFNOTEQKS                    R10 K6 ["Instance"] ; [+8]
       20 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       22 MOVE                             R11 R4
       23 MOVE                             R12 R8
       24 GETIMPORT                        R10 K9 [table.insert]
       26 CALL                             R10 2 0
       27 FORGLOOP                         R5 1 ; [-15]
       29 LENGTH                           R6 R4
       30 JUMPIFNOTEQKN                    R6 K10 [1] ; [+8]
       32 GETTABLEN                        R6 R4 1
       33 GETTABLEKS                       R6 R6 K11 ["ClassName"]
       35 JUMPIFNOTEQKS                    R6 K12 ["Model"] ; [+3]
       37 GETTABLEN                        R5 R4 1
       38 JUMPIF                           R5 ; [+1]
       39 LOADNIL                          R5
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K13 ["createElement"]
       43 LOADK                            R7 K14 ["Frame"]
       44 DUPTABLE                         R8 K17 [{"BackgroundColor3", "Size"}]
       45 GETTABLEKS                       R10 R1 K18 ["Stylizer"]
       47 GETUPVAL                         R11 1
       48 GETTABLEKS                       R11 R11 K19 ["MainBackground"]
       50 GETTABLE                         R9 R10 R11
       51 SETTABLEKS                       R9 R8 K15 ["BackgroundColor3"]
       53 GETIMPORT                        R9 K22 [UDim2.new]
       55 LOADN                            R10 1
       56 LOADN                            R11 0
       57 LOADN                            R12 1
       58 LOADN                            R13 0
       59 CALL                             R9 4 1
       60 SETTABLEKS                       R9 R8 K16 ["Size"]
       62 DUPTABLE                         R9 K26 [{"UIPadding", "Content", "Button"}]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K13 ["createElement"]
       66 LOADK                            R11 K23 ["UIPadding"]
       67 DUPTABLE                         R12 K31 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
       68 GETIMPORT                        R13 K33 [UDim.new]
       70 LOADN                            R14 0
       71 GETUPVAL                         R15 2
       72 GETTABLEKS                       R15 R15 K34 ["Padding"]
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K27 ["PaddingBottom"]
       77 GETIMPORT                        R13 K33 [UDim.new]
       79 LOADN                            R14 0
       80 GETUPVAL                         R15 2
       81 GETTABLEKS                       R15 R15 K34 ["Padding"]
       83 CALL                             R13 2 1
       84 SETTABLEKS                       R13 R12 K28 ["PaddingLeft"]
       86 GETIMPORT                        R13 K33 [UDim.new]
       88 LOADN                            R14 0
       89 GETUPVAL                         R15 2
       90 GETTABLEKS                       R15 R15 K34 ["Padding"]
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K29 ["PaddingRight"]
       95 GETIMPORT                        R13 K33 [UDim.new]
       97 LOADN                            R14 0
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R15 R15 K34 ["Padding"]
      101 CALL                             R13 2 1
      102 SETTABLEKS                       R13 R12 K30 ["PaddingTop"]
      104 CALL                             R10 2 1
      105 SETTABLEKS                       R10 R9 K23 ["UIPadding"]
      107 GETUPVAL                         R10 0
      108 GETTABLEKS                       R10 R10 K13 ["createElement"]
      110 LOADK                            R11 K14 ["Frame"]
      111 DUPTABLE                         R12 K36 [{["BackgroundTransparency"] = 1, ["Size"]}]
      112 GETIMPORT                        R13 K22 [UDim2.new]
      114 LOADN                            R14 1
      115 LOADN                            R15 0
      116 LOADN                            R16 1
      117 LOADN                            R19 30
      118 GETUPVAL                         R20 2
      119 GETTABLEKS                       R20 R20 K34 ["Padding"]
      121 ADD                              R18 R19 R20
      122 MINUS                            R17 R18
      123 CALL                             R13 4 1
      124 SETTABLEKS                       R13 R12 K16 ["Size"]
      126 DUPTABLE                         R13 K40 [{"UIListLayout", "TextLabel", "MeshPartSelector"}]
      127 GETUPVAL                         R14 0
      128 GETTABLEKS                       R14 R14 K13 ["createElement"]
      130 LOADK                            R15 K37 ["UIListLayout"]
      131 DUPTABLE                         R16 K43 [{"SortOrder", "VerticalAlignment", "Padding"}]
      132 GETIMPORT                        R17 K46 [Enum.SortOrder.LayoutOrder]
      134 SETTABLEKS                       R17 R16 K41 ["SortOrder"]
      136 GETIMPORT                        R17 K48 [Enum.VerticalAlignment.Top]
      138 SETTABLEKS                       R17 R16 K42 ["VerticalAlignment"]
      140 GETIMPORT                        R17 K33 [UDim.new]
      142 LOADN                            R18 0
      143 GETUPVAL                         R19 2
      144 GETTABLEKS                       R19 R19 K34 ["Padding"]
      146 CALL                             R17 2 1
      147 SETTABLEKS                       R17 R16 K34 ["Padding"]
      149 CALL                             R14 2 1
      150 SETTABLEKS                       R14 R13 K37 ["UIListLayout"]
      152 GETUPVAL                         R14 0
      153 GETTABLEKS                       R14 R14 K13 ["createElement"]
      155 GETUPVAL                         R15 3
      156 DUPTABLE                         R16 K54 [{["LayoutOrder"] = 1, ["Text"], ["Style"] = "Title", ["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["TextXAlignment"]}]
      157 LOADK                            R19 K55 ["Plugin"]
      158 LOADK                            R20 K56 ["SelectImportedRig"]
      159 NAMECALL                         R17 R3 K57 ["getText"]
      161 CALL                             R17 3 1
      162 SETTABLEKS                       R17 R16 K49 ["Text"]
      164 GETIMPORT                        R17 K22 [UDim2.new]
      166 LOADN                            R18 1
      167 LOADN                            R19 0
      168 LOADN                            R20 0
      169 LOADN                            R21 20
      170 CALL                             R17 4 1
      171 SETTABLEKS                       R17 R16 K16 ["Size"]
      173 GETIMPORT                        R17 K22 [UDim2.new]
      175 LOADN                            R18 0
      176 LOADN                            R19 0
      177 LOADN                            R20 0
      178 LOADN                            R21 0
      179 CALL                             R17 4 1
      180 SETTABLEKS                       R17 R16 K52 ["Position"]
      182 GETIMPORT                        R17 K59 [Enum.TextXAlignment.Center]
      184 SETTABLEKS                       R17 R16 K53 ["TextXAlignment"]
      186 CALL                             R14 2 1
      187 SETTABLEKS                       R14 R13 K38 ["TextLabel"]
      189 GETUPVAL                         R14 0
      190 GETTABLEKS                       R14 R14 K13 ["createElement"]
      192 GETUPVAL                         R15 4
      193 DUPTABLE                         R16 K65 [{["LayoutOrder"] = 2, ["Size"], ["Expansion"], ["Selection"], ["Instances"], ["OnSelectionChange"], ["OnExpansionChange"]}]
      194 GETIMPORT                        R17 K22 [UDim2.new]
      196 LOADN                            R18 1
      197 LOADN                            R19 -100
      198 LOADN                            R20 0
      199 LOADN                            R21 200
      200 CALL                             R17 4 1
      201 SETTABLEKS                       R17 R16 K16 ["Size"]
      203 GETTABLEKS                       R17 R2 K61 ["Expansion"]
      205 SETTABLEKS                       R17 R16 K61 ["Expansion"]
      207 GETTABLEKS                       R17 R2 K3 ["Selection"]
      209 SETTABLEKS                       R17 R16 K3 ["Selection"]
      211 GETTABLEKS                       R17 R2 K62 ["Instances"]
      213 SETTABLEKS                       R17 R16 K62 ["Instances"]
      215 NEWCLOSURE                       R17 P0
      216 CAPTURE                          VAL R0
      217 SETTABLEKS                       R17 R16 K63 ["OnSelectionChange"]
      219 NEWCLOSURE                       R17 P1
      220 CAPTURE                          VAL R0
      221 CAPTURE                          UPVAL U5
      222 SETTABLEKS                       R17 R16 K64 ["OnExpansionChange"]
      224 CALL                             R14 2 1
      225 SETTABLEKS                       R14 R13 K39 ["MeshPartSelector"]
      227 CALL                             R10 3 1
      228 SETTABLEKS                       R10 R9 K24 ["Content"]
      230 GETUPVAL                         R10 0
      231 GETTABLEKS                       R10 R10 K13 ["createElement"]
      233 GETUPVAL                         R11 6
      234 DUPTABLE                         R12 K69 [{["Text"], ["Style"], ["TextSize"] = 24, ["Size"], ["Position"], ["OnClick"]}]
      235 LOADK                            R15 K55 ["Plugin"]
      236 LOADK                            R16 K70 ["NextButton"]
      237 NAMECALL                         R13 R3 K57 ["getText"]
      239 CALL                             R13 3 1
      240 SETTABLEKS                       R13 R12 K49 ["Text"]
      242 JUMPIFNOT                        R5 ; [+2]
      243 LOADK                            R13 K71 ["RoundPrimary"]
      244 JUMP                             ; [+1]
      245 LOADK                            R13 K72 ["Round"]
      246 SETTABLEKS                       R13 R12 K50 ["Style"]
      248 GETIMPORT                        R13 K22 [UDim2.new]
      250 LOADN                            R14 1
      251 LOADN                            R15 0
      252 LOADN                            R16 0
      253 LOADN                            R17 30
      254 CALL                             R13 4 1
      255 SETTABLEKS                       R13 R12 K16 ["Size"]
      257 GETIMPORT                        R13 K22 [UDim2.new]
      259 LOADN                            R14 0
      260 LOADN                            R15 0
      261 LOADN                            R16 1
      262 LOADN                            R17 -30
      263 CALL                             R13 4 1
      264 SETTABLEKS                       R13 R12 K52 ["Position"]
      266 NEWCLOSURE                       R13 P2
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R1
      269 CAPTURE                          UPVAL U2
      270 SETTABLEKS                       R13 R12 K68 ["OnClick"]
      272 CALL                             R10 2 1
      273 SETTABLEKS                       R10 R9 K25 ["Button"]
      275 CALL                             R6 3 -1
      276 RETURN                           R6 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R1 K3 [{"close", "setRig", "setScreen"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setRig"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["setScreen"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DynamicHeadExportTool"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Selection"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Packages"]
       30 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Packages"]
       37 GETTABLEKS                       R6 R6 K14 ["Cryo"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Packages"]
       44 GETTABLEKS                       R7 R7 K15 ["Framework"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R6 K16 ["ContextServices"]
       49 GETTABLEKS                       R8 R6 K17 ["UI"]
       51 GETTABLEKS                       R9 R6 K17 ["UI"]
       53 GETTABLEKS                       R9 R9 K18 ["Button"]
       55 GETTABLEKS                       R10 R6 K17 ["UI"]
       57 GETTABLEKS                       R10 R10 K19 ["InstanceTreeView"]
       59 GETTABLEKS                       R11 R8 K20 ["TextLabel"]
       61 GETTABLEKS                       R12 R6 K21 ["Style"]
       63 GETTABLEKS                       R12 R12 K22 ["StyleKey"]
       65 GETIMPORT                        R13 K10 [require]
       67 GETTABLEKS                       R14 R0 K23 ["Src"]
       69 GETTABLEKS                       R14 R14 K24 ["Actions"]
       71 GETTABLEKS                       R14 R14 K25 ["SetEnabled"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K10 [require]
       76 GETTABLEKS                       R15 R0 K23 ["Src"]
       78 GETTABLEKS                       R15 R15 K24 ["Actions"]
       80 GETTABLEKS                       R15 R15 K26 ["SetRig"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K10 [require]
       85 GETTABLEKS                       R16 R0 K23 ["Src"]
       87 GETTABLEKS                       R16 R16 K24 ["Actions"]
       89 GETTABLEKS                       R16 R16 K27 ["SetScreen"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K10 [require]
       94 GETTABLEKS                       R17 R0 K23 ["Src"]
       96 GETTABLEKS                       R17 R17 K28 ["Util"]
       98 GETTABLEKS                       R17 R17 K29 ["getImportedRig"]
      100 CALL                             R16 1 1
      101 GETIMPORT                        R17 K10 [require]
      103 GETTABLEKS                       R18 R0 K23 ["Src"]
      105 GETTABLEKS                       R18 R18 K30 ["Constants"]
      107 CALL                             R17 1 1
      108 GETTABLEKS                       R18 R3 K31 ["PureComponent"]
      110 LOADK                            R20 K32 ["SelectRigScreen"]
      111 NAMECALL                         R18 R18 K33 ["extend"]
      113 CALL                             R18 2 1
      114 DUPCLOSURE                       R19 K34 [PROTO_0]
      115 CAPTURE                          VAL R1
      116 SETTABLEKS                       R19 R18 K35 ["init"]
      118 DUPCLOSURE                       R19 K36 [PROTO_1]
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R16
      122 SETTABLEKS                       R19 R18 K37 ["didMount"]
      124 DUPCLOSURE                       R19 K38 [PROTO_5]
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R9
      132 SETTABLEKS                       R19 R18 K39 ["render"]
      134 GETTABLEKS                       R19 R7 K40 ["withContext"]
      136 DUPTABLE                         R20 K44 [{"Localization", "Stylizer", "Plugin"}]
      137 GETTABLEKS                       R21 R7 K41 ["Localization"]
      139 SETTABLEKS                       R21 R20 K41 ["Localization"]
      141 GETTABLEKS                       R21 R7 K42 ["Stylizer"]
      143 SETTABLEKS                       R21 R20 K42 ["Stylizer"]
      145 GETTABLEKS                       R21 R7 K43 ["Plugin"]
      147 SETTABLEKS                       R21 R20 K43 ["Plugin"]
      149 CALL                             R19 1 1
      150 MOVE                             R20 R18
      151 CALL                             R19 1 1
      152 MOVE                             R18 R19
      153 DUPCLOSURE                       R19 K45 [PROTO_9]
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R14
      156 CAPTURE                          VAL R15
      157 GETTABLEKS                       R20 R4 K46 ["connect"]
      159 LOADNIL                          R21
      160 MOVE                             R22 R19
      161 CALL                             R20 2 1
      162 MOVE                             R21 R18
      163 CALL                             R20 1 -1
      164 RETURN                           R20 -1

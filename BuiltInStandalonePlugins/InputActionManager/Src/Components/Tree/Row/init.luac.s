PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 NEWTABLE                         R3 0 4
       13 LOADK                            R4 K3 ["MouseKeyboard"]
       14 LOADK                            R5 K4 ["Touch"]
       15 LOADK                            R6 K5 ["Gamepad"]
       16 LOADK                            R7 K6 ["VR"]
       17 SETLIST                          R3 R4 4 [1]
       19 NEWTABLE                         R4 0 0
       21 GETTABLEKS                       R5 R0 K7 ["item"]
       23 JUMPIFNOT                        R5 ; [+64]
       24 GETTABLEKS                       R5 R0 K8 ["itemType"]
       26 JUMPIFNOTEQKS                    R5 K9 ["InputAction"] ; [+61]
       28 GETTABLEKS                       R5 R0 K7 ["item"]
       30 MOVE                             R6 R3
       31 LOADNIL                          R7
       32 LOADNIL                          R8
       33 FORGPREP                         R6
       34 NEWTABLE                         R11 0 0
       36 GETTABLEKS                       R12 R5 K10 ["bindings"]
       38 LOADNIL                          R13
       39 LOADNIL                          R14
       40 FORGPREP                         R12
       41 GETTABLEKS                       R17 R1 K11 ["getBinding"]
       43 MOVE                             R18 R16
       44 CALL                             R17 1 1
       45 JUMPIFNOT                        R17 ; [+14]
       46 GETUPVAL                         R18 3
       47 MOVE                             R19 R17
       48 GETTABLEKS                       R20 R5 K12 ["type"]
       50 MOVE                             R21 R10
       51 CALL                             R18 3 1
       52 JUMPIFNOT                        R18 ; [+7]
       53 FASTCALL2                        TABLE_INSERT R11 R18 ; [+5]
       55 MOVE                             R20 R11
       56 MOVE                             R21 R18
       57 GETIMPORT                        R19 K15 [table.insert]
       59 CALL                             R19 2 0
       60 FORGLOOP                         R12 2 ; [-20]
       62 LENGTH                           R13 R11
       63 LOADN                            R14 0
       64 JUMPIFNOTLT                      R14 R13 ; [+7]
       66 GETIMPORT                        R12 K17 [table.concat]
       68 MOVE                             R13 R11
       69 LOADK                            R14 K18 [", "]
       70 CALL                             R12 2 1
       71 JUMP                             ; [+1]
       72 LOADK                            R12 K19 ["None"]
       73 GETUPVAL                         R14 0
       74 GETTABLEKS                       R13 R14 K20 ["createElement"]
       76 GETUPVAL                         R14 4
       77 DUPTABLE                         R15 K23 [{"LayoutOrder", "text"}]
       78 MOVE                             R16 R2
       79 CALL                             R16 0 1
       80 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
       82 SETTABLEKS                       R12 R15 K22 ["text"]
       84 CALL                             R13 2 1
       85 SETTABLE                         R13 R4 R10
       86 FORGLOOP                         R6 2 ; [-53]
       88 GETUPVAL                         R6 0
       89 GETTABLEKS                       R5 R6 K20 ["createElement"]
       91 GETUPVAL                         R6 5
       92 DUPTABLE                         R7 K25 [{"tag", "LayoutOrder"}]
       93 LOADK                            R8 K26 ["tree-row row align-y-center"]
       94 SETTABLEKS                       R8 R7 K24 ["tag"]
       96 GETTABLEKS                       R8 R0 K21 ["LayoutOrder"]
       98 SETTABLEKS                       R8 R7 K21 ["LayoutOrder"]
      100 DUPTABLE                         R8 K30 [{"Node", "Divider", "Row"}]
      101 GETUPVAL                         R10 0
      102 GETTABLEKS                       R9 R10 K20 ["createElement"]
      104 GETUPVAL                         R10 6
      105 DUPTABLE                         R11 K38 [{"depth", "expanded", "item", "itemType", "LayoutOrder", "name", "onCreate", "onCreated", "setExpanded", "uuid"}]
      106 GETTABLEKS                       R12 R0 K31 ["depth"]
      108 SETTABLEKS                       R12 R11 K31 ["depth"]
      110 GETTABLEKS                       R12 R0 K32 ["expanded"]
      112 SETTABLEKS                       R12 R11 K32 ["expanded"]
      114 GETTABLEKS                       R12 R0 K7 ["item"]
      116 SETTABLEKS                       R12 R11 K7 ["item"]
      118 GETTABLEKS                       R12 R0 K8 ["itemType"]
      120 SETTABLEKS                       R12 R11 K8 ["itemType"]
      122 MOVE                             R12 R2
      123 CALL                             R12 0 1
      124 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      126 GETTABLEKS                       R12 R0 K33 ["name"]
      128 SETTABLEKS                       R12 R11 K33 ["name"]
      130 GETTABLEKS                       R12 R0 K34 ["onCreate"]
      132 SETTABLEKS                       R12 R11 K34 ["onCreate"]
      134 GETTABLEKS                       R12 R0 K35 ["onCreated"]
      136 SETTABLEKS                       R12 R11 K35 ["onCreated"]
      138 GETTABLEKS                       R12 R0 K36 ["setExpanded"]
      140 SETTABLEKS                       R12 R11 K36 ["setExpanded"]
      142 GETTABLEKS                       R12 R0 K37 ["uuid"]
      144 SETTABLEKS                       R12 R11 K37 ["uuid"]
      146 CALL                             R9 2 1
      147 SETTABLEKS                       R9 R8 K27 ["Node"]
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R9 R10 K20 ["createElement"]
      152 GETUPVAL                         R10 7
      153 DUPTABLE                         R11 K40 [{"LayoutOrder", "orientation", "tag"}]
      154 MOVE                             R12 R2
      155 CALL                             R12 0 1
      156 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      158 GETUPVAL                         R13 8
      159 GETTABLEKS                       R12 R13 K41 ["Vertical"]
      161 SETTABLEKS                       R12 R11 K39 ["orientation"]
      163 LOADK                            R12 K42 ["auto-y"]
      164 SETTABLEKS                       R12 R11 K24 ["tag"]
      166 CALL                             R9 2 1
      167 SETTABLEKS                       R9 R8 K28 ["Divider"]
      169 LOADB                            R9 0
      170 GETTABLEKS                       R10 R0 K8 ["itemType"]
      172 JUMPIFEQKS                       R10 K43 ["InputContext"] ; [+51]
      174 GETUPVAL                         R10 0
      175 GETTABLEKS                       R9 R10 K20 ["createElement"]
      177 GETUPVAL                         R10 5
      178 DUPTABLE                         R11 K44 [{"LayoutOrder", "tag"}]
      179 MOVE                             R12 R2
      180 CALL                             R12 0 1
      181 SETTABLEKS                       R12 R11 K21 ["LayoutOrder"]
      183 LOADK                            R12 K45 ["columns-fill auto-y align-y-center col"]
      184 SETTABLEKS                       R12 R11 K24 ["tag"]
      186 DUPTABLE                         R12 K47 [{"Cells", "Divider"}]
      187 GETUPVAL                         R14 0
      188 GETTABLEKS                       R13 R14 K20 ["createElement"]
      190 GETUPVAL                         R14 5
      191 DUPTABLE                         R15 K44 [{"LayoutOrder", "tag"}]
      192 MOVE                             R16 R2
      193 CALL                             R16 0 1
      194 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      196 LOADK                            R16 K48 ["size-full-full row columns-flex align-y-center"]
      197 SETTABLEKS                       R16 R15 K24 ["tag"]
      199 MOVE                             R16 R4
      200 CALL                             R13 3 1
      201 SETTABLEKS                       R13 R12 K46 ["Cells"]
      203 GETUPVAL                         R14 0
      204 GETTABLEKS                       R13 R14 K20 ["createElement"]
      206 GETUPVAL                         R14 7
      207 DUPTABLE                         R15 K40 [{"LayoutOrder", "orientation", "tag"}]
      208 MOVE                             R16 R2
      209 CALL                             R16 0 1
      210 SETTABLEKS                       R16 R15 K21 ["LayoutOrder"]
      212 GETUPVAL                         R17 8
      213 GETTABLEKS                       R16 R17 K49 ["Horizontal"]
      215 SETTABLEKS                       R16 R15 K39 ["orientation"]
      217 LOADK                            R16 K50 ["auto-x"]
      218 SETTABLEKS                       R16 R15 K24 ["tag"]
      220 CALL                             R13 2 1
      221 SETTABLEKS                       R13 R12 K28 ["Divider"]
      223 CALL                             R9 3 1
      224 SETTABLEKS                       R9 R8 K29 ["Row"]
      226 CALL                             R5 3 -1
      227 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETTABLEKS                       R5 R3 K11 ["Divider"]
       32 GETTABLEKS                       R7 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R7 K13 ["Orientation"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R9 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R13 R0 K14 ["Src"]
       47 GETTABLEKS                       R12 R13 K16 ["Components"]
       49 GETTABLEKS                       R11 R12 K17 ["Tree"]
       51 GETTABLEKS                       R10 R11 K18 ["Row"]
       53 GETTABLEKS                       R9 R10 K19 ["Cell"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R14 R0 K14 ["Src"]
       60 GETTABLEKS                       R13 R14 K16 ["Components"]
       62 GETTABLEKS                       R12 R13 K17 ["Tree"]
       64 GETTABLEKS                       R11 R12 K18 ["Row"]
       66 GETTABLEKS                       R10 R11 K20 ["Node"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R13 R0 K14 ["Src"]
       73 GETTABLEKS                       R12 R13 K21 ["Contexts"]
       75 GETTABLEKS                       R11 R12 K22 ["DatamodelReference"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R14 R0 K14 ["Src"]
       82 GETTABLEKS                       R13 R14 K23 ["Util"]
       84 GETTABLEKS                       R12 R13 K24 ["getStringForBinding"]
       86 CALL                             R11 1 1
       87 DUPCLOSURE                       R12 K25 [PROTO_0]
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R6
       97 RETURN                           R12 1

PROTO_0:
        0 LOADB                            R0 0
        1 LOADB                            R1 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 3
        4 FORGPREP                         R2
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K0 ["bindings"]
        8 GETTABLE                         R7 R8 R6
        9 JUMPIFNOT                        R7 ; [+16]
       10 GETTABLEKS                       R8 R7 K1 ["primaryModifier"]
       12 GETIMPORT                        R9 K5 [Enum.KeyCode.Unknown]
       14 JUMPIFEQ                         R8 R9 ; [+2]
       16 LOADB                            R0 1
       17 GETTABLEKS                       R8 R7 K6 ["secondaryModifier"]
       19 GETIMPORT                        R9 K5 [Enum.KeyCode.Unknown]
       21 JUMPIFEQ                         R8 R9 ; [+2]
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R0 ; [+1]
       25 JUMPIF                           R1 ; [+2]
       26 FORGLOOP                         R2 2 ; [-22]
       28 RETURN                           R0 2

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["bindings"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 1
       10 MOVE                             R7 R5
       11 SETLIST                          R6 R7 1 [1]
       13 SETTABLE                         R6 R0 R4
       14 FORGLOOP                         R1 2 ; [-7]
       16 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["action"]
        4 GETTABLEKS                       R2 R2 K1 ["type"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIF                           R0 ; [+2]
        8 NEWTABLE                         R0 0 0
       10 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K2 ["bindings"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 2
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R6 R0 K3 ["action"]
       20 GETTABLEKS                       R6 R6 K4 ["uuid"]
       22 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       24 FASTCALL1                        TOSTRING R8 ; [+2]
       25 GETIMPORT                        R7 K7 [tostring]
       27 CALL                             R7 1 1
       28 CONCAT                           R5 R6 R7
       29 GETTABLEKS                       R6 R0 K3 ["action"]
       31 LOADK                            R7 K8 ["InputAction"]
       32 CALL                             R4 3 2
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K1 ["useMemo"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R8 0 1
       40 GETTABLEKS                       R9 R0 K2 ["bindings"]
       42 SETLIST                          R8 R9 1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K1 ["useMemo"]
       48 NEWCLOSURE                       R8 P2
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R9 0 1
       53 GETTABLEKS                       R10 R0 K3 ["action"]
       55 SETLIST                          R9 R10 1 [1]
       57 CALL                             R7 2 1
       58 NEWTABLE                         R8 4 0
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R9 R9 K9 ["createElement"]
       63 GETUPVAL                         R10 5
       64 DUPTABLE                         R11 K15 [{"action", "bindings", "depth", "expanded", "icon", "name", "LayoutOrder", "setExpanded"}]
       65 GETTABLEKS                       R12 R0 K3 ["action"]
       67 SETTABLEKS                       R12 R11 K3 ["action"]
       69 SETTABLEKS                       R6 R11 K2 ["bindings"]
       71 GETTABLEKS                       R13 R0 K13 ["name"]
       73 JUMPIFNOT                        R13 ; [+2]
       74 LOADN                            R12 1
       75 JUMP                             ; [+1]
       76 LOADN                            R12 2
       77 SETTABLEKS                       R12 R11 K10 ["depth"]
       79 SETTABLEKS                       R4 R11 K11 ["expanded"]
       81 GETTABLEKS                       R13 R0 K13 ["name"]
       83 JUMPIFNOT                        R13 ; [+2]
       84 LOADK                            R12 K8 ["InputAction"]
       85 JUMP                             ; [+1]
       86 LOADK                            R12 K16 ["InputBinding"]
       87 SETTABLEKS                       R12 R11 K12 ["icon"]
       89 GETTABLEKS                       R13 R0 K13 ["name"]
       91 ORK                              R12 R13 K17 ["Compound Direction"]
       92 SETTABLEKS                       R12 R11 K13 ["name"]
       94 MOVE                             R12 R1
       95 CALL                             R12 0 1
       96 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       98 SETTABLEKS                       R5 R11 K14 ["setExpanded"]
      100 CALL                             R9 2 1
      101 SETTABLEKS                       R9 R8 K18 ["header"]
      103 JUMPIFNOT                        R4 ; [+118]
      104 JUMPIFNOT                        R2 ; [+37]
      105 GETUPVAL                         R9 1
      106 GETTABLEKS                       R9 R9 K9 ["createElement"]
      108 GETUPVAL                         R10 6
      109 DUPTABLE                         R11 K20 [{"action", "bindings", "depth", "icon", "LayoutOrder", "name", "property"}]
      110 GETTABLEKS                       R12 R0 K3 ["action"]
      112 SETTABLEKS                       R12 R11 K3 ["action"]
      114 GETTABLEKS                       R12 R0 K2 ["bindings"]
      116 SETTABLEKS                       R12 R11 K2 ["bindings"]
      118 GETTABLEKS                       R13 R0 K13 ["name"]
      120 JUMPIFNOT                        R13 ; [+2]
      121 LOADN                            R12 2
      122 JUMP                             ; [+1]
      123 LOADN                            R12 3
      124 SETTABLEKS                       R12 R11 K10 ["depth"]
      126 LOADK                            R12 K16 ["InputBinding"]
      127 SETTABLEKS                       R12 R11 K12 ["icon"]
      129 MOVE                             R12 R1
      130 CALL                             R12 0 1
      131 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      133 LOADK                            R12 K21 ["Primary Modifier"]
      134 SETTABLEKS                       R12 R11 K13 ["name"]
      136 LOADK                            R12 K22 ["primaryModifier"]
      137 SETTABLEKS                       R12 R11 K19 ["property"]
      139 CALL                             R9 2 1
      140 SETTABLEKS                       R9 R8 K22 ["primaryModifier"]
      142 JUMPIFNOT                        R3 ; [+37]
      143 GETUPVAL                         R9 1
      144 GETTABLEKS                       R9 R9 K9 ["createElement"]
      146 GETUPVAL                         R10 6
      147 DUPTABLE                         R11 K20 [{"action", "bindings", "depth", "icon", "LayoutOrder", "name", "property"}]
      148 GETTABLEKS                       R12 R0 K3 ["action"]
      150 SETTABLEKS                       R12 R11 K3 ["action"]
      152 GETTABLEKS                       R12 R0 K2 ["bindings"]
      154 SETTABLEKS                       R12 R11 K2 ["bindings"]
      156 GETTABLEKS                       R13 R0 K13 ["name"]
      158 JUMPIFNOT                        R13 ; [+2]
      159 LOADN                            R12 2
      160 JUMP                             ; [+1]
      161 LOADN                            R12 3
      162 SETTABLEKS                       R12 R11 K10 ["depth"]
      164 LOADK                            R12 K16 ["InputBinding"]
      165 SETTABLEKS                       R12 R11 K12 ["icon"]
      167 MOVE                             R12 R1
      168 CALL                             R12 0 1
      169 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      171 LOADK                            R12 K23 ["Secondary Modifier"]
      172 SETTABLEKS                       R12 R11 K13 ["name"]
      174 LOADK                            R12 K24 ["secondaryModifier"]
      175 SETTABLEKS                       R12 R11 K19 ["property"]
      177 CALL                             R9 2 1
      178 SETTABLEKS                       R9 R8 K24 ["secondaryModifier"]
      180 MOVE                             R9 R7
      181 LOADNIL                          R10
      182 LOADNIL                          R11
      183 FORGPREP                         R9
      184 GETUPVAL                         R14 1
      185 GETTABLEKS                       R14 R14 K9 ["createElement"]
      187 GETUPVAL                         R15 6
      188 DUPTABLE                         R16 K20 [{"action", "bindings", "depth", "icon", "LayoutOrder", "name", "property"}]
      189 GETTABLEKS                       R17 R0 K3 ["action"]
      191 SETTABLEKS                       R17 R16 K3 ["action"]
      193 GETTABLEKS                       R17 R0 K2 ["bindings"]
      195 SETTABLEKS                       R17 R16 K2 ["bindings"]
      197 GETTABLEKS                       R18 R0 K13 ["name"]
      199 JUMPIFNOT                        R18 ; [+2]
      200 LOADN                            R17 2
      201 JUMP                             ; [+1]
      202 LOADN                            R17 3
      203 SETTABLEKS                       R17 R16 K10 ["depth"]
      205 LOADK                            R17 K16 ["InputBinding"]
      206 SETTABLEKS                       R17 R16 K12 ["icon"]
      208 MOVE                             R17 R1
      209 CALL                             R17 0 1
      210 SETTABLEKS                       R17 R16 K5 ["LayoutOrder"]
      212 GETUPVAL                         R18 7
      213 GETTABLE                         R17 R18 R13
      214 SETTABLEKS                       R17 R16 K13 ["name"]
      216 SETTABLEKS                       R13 R16 K19 ["property"]
      218 CALL                             R14 2 1
      219 SETTABLE                         R14 R8 R13
      220 FORGLOOP                         R9 2 ; [-37]
      222 GETUPVAL                         R9 1
      223 GETTABLEKS                       R9 R9 K9 ["createElement"]
      225 GETUPVAL                         R10 8
      226 DUPTABLE                         R11 K27 [{"LayoutOrder", "tag", "testId"}]
      227 GETTABLEKS                       R12 R0 K5 ["LayoutOrder"]
      229 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      231 LOADK                            R12 K28 ["size-full-0 auto-y col"]
      232 SETTABLEKS                       R12 R11 K25 ["tag"]
      234 LOADK                            R13 K29 ["compound-direction-binding-%*"]
      235 GETTABLEKS                       R15 R0 K30 ["index"]
      237 NAMECALL                         R13 R13 K31 ["format"]
      239 CALL                             R13 2 1
      240 MOVE                             R12 R13
      241 SETTABLEKS                       R12 R11 K26 ["testId"]
      243 MOVE                             R12 R8
      244 CALL                             R9 3 -1
      245 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["EditableRow"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["Tree"]
       49 GETTABLEKS                       R7 R7 K15 ["SummaryRow"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K16 ["Types"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R0 K11 ["Src"]
       63 GETTABLEKS                       R9 R9 K17 ["Util"]
       65 GETTABLEKS                       R9 R9 K18 ["getSchemas"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K11 ["Src"]
       72 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       74 GETTABLEKS                       R10 R10 K20 ["useExpanded"]
       76 CALL                             R9 1 1
       77 NEWTABLE                         R10 4 0
       79 GETIMPORT                        R11 K24 [Enum.InputActionType.Direction1D]
       81 NEWTABLE                         R12 0 2
       83 LOADK                            R13 K25 ["up"]
       84 LOADK                            R14 K26 ["down"]
       85 SETLIST                          R12 R13 2 [1]
       87 SETTABLE                         R12 R10 R11
       88 GETIMPORT                        R11 K28 [Enum.InputActionType.Direction2D]
       90 NEWTABLE                         R12 0 4
       92 LOADK                            R13 K25 ["up"]
       93 LOADK                            R14 K29 ["left"]
       94 LOADK                            R15 K26 ["down"]
       95 LOADK                            R16 K30 ["right"]
       96 SETLIST                          R12 R13 4 [1]
       98 SETTABLE                         R12 R10 R11
       99 GETIMPORT                        R11 K32 [Enum.InputActionType.Direction3D]
      101 NEWTABLE                         R12 0 6
      103 LOADK                            R13 K25 ["up"]
      104 LOADK                            R14 K29 ["left"]
      105 LOADK                            R15 K33 ["forward"]
      106 LOADK                            R16 K26 ["down"]
      107 LOADK                            R17 K30 ["right"]
      108 LOADK                            R18 K34 ["backward"]
      109 SETLIST                          R12 R13 6 [1]
      111 SETTABLE                         R12 R10 R11
      112 DUPTABLE                         R11 K35 [{"up", "left", "forward", "down", "right", "backward"}]
      113 LOADK                            R12 K36 ["Up"]
      114 SETTABLEKS                       R12 R11 K25 ["up"]
      116 LOADK                            R12 K37 ["Left"]
      117 SETTABLEKS                       R12 R11 K29 ["left"]
      119 LOADK                            R12 K38 ["Forward"]
      120 SETTABLEKS                       R12 R11 K33 ["forward"]
      122 LOADK                            R12 K39 ["Down"]
      123 SETTABLEKS                       R12 R11 K26 ["down"]
      125 LOADK                            R12 K40 ["Right"]
      126 SETTABLEKS                       R12 R11 K30 ["right"]
      128 LOADK                            R12 K41 ["Backward"]
      129 SETTABLEKS                       R12 R11 K34 ["backward"]
      131 DUPCLOSURE                       R12 K42 [PROTO_3]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R5
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R4
      141 RETURN                           R12 1

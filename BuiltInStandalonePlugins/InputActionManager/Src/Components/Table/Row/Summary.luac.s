PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 0
        4 GETIMPORT                        R3 K2 [TweenInfo.new]
        6 LOADN                            R4 1
        7 CALL                             R3 1 1
        8 DUPTABLE                         R4 K5 [{["BackgroundTransparency"] = 1}]
        9 NAMECALL                         R0 R0 K6 ["Create"]
       11 CALL                             R0 4 -1
       12 RETURN                           R0 -1
       13 LOADNIL                          R0
       14 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+26]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETUPVAL                         R0 0
        5 LOADK                            R1 K0 [0.5]
        6 SETTABLEKS                       R1 R0 K1 ["BackgroundTransparency"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["PlaybackState"]
       11 GETIMPORT                        R1 K5 [Enum.PlaybackState.Playing]
       13 JUMPIFNOTEQ                      R0 R1 ; [+5]
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K6 ["Cancel"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 2
       20 GETTABLEKS                       R0 R0 K7 ["stateString"]
       22 JUMPIFEQKS                       R0 K8 ["true"] ; [+5]
       24 GETUPVAL                         R0 1
       25 NAMECALL                         R0 R0 K9 ["Play"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 4 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["createElement"]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["nodeProps"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K3 ["Node"]
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R2 R2 K1 ["createElement"]
       19 GETUPVAL                         R3 4
       20 DUPTABLE                         R4 K8 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
       21 MOVE                             R5 R1
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       25 GETUPVAL                         R5 5
       26 GETTABLEKS                       R5 R5 K9 ["Vertical"]
       28 SETTABLEKS                       R5 R4 K5 ["orientation"]
       30 CALL                             R2 2 1
       31 SETTABLEKS                       R2 R0 K10 ["Divider"]
       33 GETUPVAL                         R2 6
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+76]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K11 ["stateString"]
       39 JUMPIFNOT                        R2 ; [+72]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K1 ["createElement"]
       43 GETUPVAL                         R4 7
       44 JUMPIFEQKNIL                     R4 ; [+3]
       46 LOADK                            R3 K12 ["CanvasGroup"]
       47 JUMP                             ; [+1]
       48 LOADK                            R3 K13 ["Frame"]
       49 NEWTABLE                         R4 4 0
       51 GETUPVAL                         R6 7
       52 JUMPIFNOT                        R6 ; [+2]
       53 LOADK                            R5 K14 [0.5]
       54 JUMP                             ; [+1]
       55 LOADNIL                          R5
       56 SETTABLEKS                       R5 R4 K15 ["GroupTransparency"]
       58 MOVE                             R5 R1
       59 CALL                             R5 0 1
       60 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       62 GETUPVAL                         R5 8
       63 SETTABLEKS                       R5 R4 K16 ["ref"]
       65 GETUPVAL                         R5 1
       66 GETTABLEKS                       R5 R5 K17 ["Tag"]
       68 LOADK                            R6 K18 ["columns-input col align-y-center size-0-full"]
       69 SETTABLE                         R6 R4 R5
       70 DUPTABLE                         R5 K20 [{"Label", "Divider"}]
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K1 ["createElement"]
       74 GETUPVAL                         R7 9
       75 DUPTABLE                         R8 K26 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["testId"] = "summary-State", ["Text"], ["TextTruncate"]}]
       76 MOVE                             R9 R1
       77 CALL                             R9 0 1
       78 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       80 GETUPVAL                         R9 3
       81 GETTABLEKS                       R9 R9 K11 ["stateString"]
       83 SETTABLEKS                       R9 R8 K24 ["Text"]
       85 GETIMPORT                        R9 K29 [Enum.TextTruncate.AtEnd]
       87 SETTABLEKS                       R9 R8 K25 ["TextTruncate"]
       89 CALL                             R6 2 1
       90 SETTABLEKS                       R6 R5 K19 ["Label"]
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R6 R6 K1 ["createElement"]
       95 GETUPVAL                         R7 4
       96 DUPTABLE                         R8 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       97 MOVE                             R9 R1
       98 CALL                             R9 0 1
       99 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      101 GETUPVAL                         R9 5
      102 GETTABLEKS                       R9 R9 K32 ["Horizontal"]
      104 SETTABLEKS                       R9 R8 K5 ["orientation"]
      106 CALL                             R6 2 1
      107 SETTABLEKS                       R6 R5 K10 ["Divider"]
      109 CALL                             R2 3 1
      110 SETTABLEKS                       R2 R0 K33 ["State"]
      112 GETUPVAL                         R2 10
      113 CALL                             R2 0 3
      114 FORGPREP                         R2
      115 GETUPVAL                         R8 11
      116 GETTABLEKS                       R8 R8 K34 ["schemas"]
      118 GETTABLE                         R7 R8 R6
      119 JUMPIFEQKB                       R7 FALSE ; [+131]
      121 GETUPVAL                         R7 3
      122 GETTABLEKS                       R7 R7 K35 ["previousBindings"]
      124 JUMPIFNOT                        R7 ; [+20]
      125 GETUPVAL                         R8 3
      126 GETTABLEKS                       R8 R8 K35 ["previousBindings"]
      128 GETTABLE                         R7 R8 R6
      129 JUMPIF                           R7 ; [+15]
      130 GETUPVAL                         R7 1
      131 GETTABLEKS                       R7 R7 K1 ["createElement"]
      133 GETUPVAL                         R8 12
      134 DUPTABLE                         R9 K37 [{"disabled", "LayoutOrder"}]
      135 GETUPVAL                         R10 7
      136 SETTABLEKS                       R10 R9 K36 ["disabled"]
      138 MOVE                             R10 R1
      139 CALL                             R10 0 1
      140 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      142 CALL                             R7 2 1
      143 SETTABLE                         R7 R0 R6
      144 JUMP                             ; [+106]
      145 NEWTABLE                         R7 0 0
      147 GETUPVAL                         R9 3
      148 GETTABLEKS                       R9 R9 K38 ["bindings"]
      150 GETTABLE                         R8 R9 R6
      151 JUMPIFNOT                        R8 ; [+99]
      152 GETUPVAL                         R11 3
      153 GETTABLEKS                       R11 R11 K38 ["bindings"]
      155 GETTABLE                         R8 R11 R6
      156 LOADNIL                          R9
      157 LOADNIL                          R10
      158 FORGPREP                         R8
      159 GETUPVAL                         R13 13
      160 MOVE                             R14 R12
      161 GETUPVAL                         R15 3
      162 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
      164 GETTABLEKS                       R15 R15 K39 ["action"]
      166 GETTABLEKS                       R15 R15 K40 ["type"]
      168 CALL                             R13 2 1
      169 JUMPIFNOT                        R13 ; [+7]
      170 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      172 MOVE                             R15 R7
      173 MOVE                             R16 R13
      174 GETIMPORT                        R14 K43 [table.insert]
      176 CALL                             R14 2 0
      177 FORGLOOP                         R8 2 ; [-19]
      179 LENGTH                           R9 R7
      180 LOADN                            R10 0
      181 JUMPIFNOTLT                      R10 R9 ; [+7]
      183 GETIMPORT                        R8 K45 [table.concat]
      185 MOVE                             R9 R7
      186 LOADK                            R10 K46 [", "]
      187 CALL                             R8 2 1
      188 JUMP                             ; [+1]
      189 LOADK                            R8 K47 ["None"]
      190 GETUPVAL                         R9 1
      191 GETTABLEKS                       R9 R9 K1 ["createElement"]
      193 GETUPVAL                         R10 14
      194 DUPTABLE                         R11 K48 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      195 GETUPVAL                         R13 7
      196 JUMPIFNOT                        R13 ; [+2]
      197 LOADK                            R12 K14 [0.5]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R12
      200 SETTABLEKS                       R12 R11 K15 ["GroupTransparency"]
      202 MOVE                             R12 R1
      203 CALL                             R12 0 1
      204 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      206 LOADK                            R12 K49 ["summary-%*"]
      207 MOVE                             R14 R6
      208 NAMECALL                         R12 R12 K50 ["format"]
      210 CALL                             R12 2 1
      211 SETTABLEKS                       R12 R11 K22 ["testId"]
      213 DUPTABLE                         R12 K20 [{"Label", "Divider"}]
      214 GETUPVAL                         R13 1
      215 GETTABLEKS                       R13 R13 K1 ["createElement"]
      217 GETUPVAL                         R14 9
      218 DUPTABLE                         R15 K51 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      219 MOVE                             R16 R1
      220 CALL                             R16 0 1
      221 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      223 SETTABLEKS                       R8 R15 K24 ["Text"]
      225 GETIMPORT                        R16 K29 [Enum.TextTruncate.AtEnd]
      227 SETTABLEKS                       R16 R15 K25 ["TextTruncate"]
      229 CALL                             R13 2 1
      230 SETTABLEKS                       R13 R12 K19 ["Label"]
      232 GETUPVAL                         R13 1
      233 GETTABLEKS                       R13 R13 K1 ["createElement"]
      235 GETUPVAL                         R14 4
      236 DUPTABLE                         R15 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      237 MOVE                             R16 R1
      238 CALL                             R16 0 1
      239 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      241 GETUPVAL                         R16 5
      242 GETTABLEKS                       R16 R16 K32 ["Horizontal"]
      244 SETTABLEKS                       R16 R15 K5 ["orientation"]
      246 CALL                             R13 2 1
      247 SETTABLEKS                       R13 R12 K10 ["Divider"]
      249 CALL                             R9 3 1
      250 SETTABLE                         R9 R0 R6
      251 FORGLOOP                         R2 2 ; [-137]
      253 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R2 R0 K2 ["nodeProps"]
       12 GETTABLEKS                       R2 R2 K3 ["disabled"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R2
       16 GETTABLEKS                       R5 R0 K2 ["nodeProps"]
       18 GETTABLEKS                       R5 R5 K4 ["action"]
       20 JUMPIFNOTEQKNIL                  R5 ; [+2]
       22 LOADB                            R4 0 +1
       23 LOADB                            R4 1
       24 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       26 LOADK                            R5 K5 ["Action is required"]
       27 GETIMPORT                        R3 K7 [assert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K8 ["useState"]
       33 LOADNIL                          R4
       34 CALL                             R3 1 2
       35 GETUPVAL                         R5 3
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+28]
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U4
       44 NEWTABLE                         R7 0 1
       46 MOVE                             R8 R3
       47 SETLIST                          R7 R8 1 [1]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       53 NEWCLOSURE                       R7 P1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R8 0 3
       59 GETTABLEKS                       R9 R0 K11 ["stateString"]
       61 MOVE                             R10 R3
       62 MOVE                             R11 R5
       63 SETLIST                          R8 R9 3 [1]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       69 NEWCLOSURE                       R6 P2
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U0
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U9
       80 CAPTURE                          UPVAL U10
       81 CAPTURE                          VAL R1
       82 CAPTURE                          UPVAL U11
       83 CAPTURE                          UPVAL U12
       84 CAPTURE                          UPVAL U13
       85 NEWTABLE                         R7 0 6
       87 GETTABLEKS                       R8 R0 K12 ["bindings"]
       89 GETTABLEKS                       R9 R0 K2 ["nodeProps"]
       91 GETTABLEKS                       R9 R9 K4 ["action"]
       93 MOVE                             R10 R2
       94 GETTABLEKS                       R11 R0 K2 ["nodeProps"]
       96 GETTABLEKS                       R11 R11 K13 ["expanded"]
       98 GETUPVAL                         R13 3
       99 CALL                             R13 0 1
      100 JUMPIFNOT                        R13 ; [+3]
      101 GETTABLEKS                       R12 R0 K11 ["stateString"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R12
      105 GETTABLEKS                       R13 R1 K14 ["schemas"]
      107 SETLIST                          R7 R8 6 [1]
      109 CALL                             R5 2 1
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R6 R6 K15 ["createElement"]
      113 GETUPVAL                         R7 13
      114 DUPTABLE                         R8 K19 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      115 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
      117 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
      119 MOVE                             R9 R5
      120 CALL                             R6 3 -1
      121 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Foundation"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K14 ["Divider"]
       36 GETTABLEKS                       R6 R4 K15 ["Enums"]
       38 GETTABLEKS                       R6 R6 K16 ["Orientation"]
       40 GETTABLEKS                       R7 R4 K17 ["Text"]
       42 GETTABLEKS                       R8 R4 K18 ["View"]
       44 GETIMPORT                        R9 K9 [require]
       46 GETTABLEKS                       R10 R1 K19 ["Src"]
       48 GETTABLEKS                       R10 R10 K20 ["Components"]
       50 GETTABLEKS                       R10 R10 K21 ["Tree"]
       52 GETTABLEKS                       R10 R10 K22 ["Node"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K9 [require]
       57 GETTABLEKS                       R11 R1 K19 ["Src"]
       59 GETTABLEKS                       R11 R11 K20 ["Components"]
       61 GETTABLEKS                       R11 R11 K23 ["Table"]
       63 GETTABLEKS                       R11 R11 K24 ["EmptyCell"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K9 [require]
       68 GETTABLEKS                       R12 R1 K19 ["Src"]
       70 GETTABLEKS                       R12 R12 K25 ["Types"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K9 [require]
       75 GETTABLEKS                       R13 R1 K19 ["Src"]
       77 GETTABLEKS                       R13 R13 K26 ["Contexts"]
       79 GETTABLEKS                       R13 R13 K27 ["FilterConfiguration"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K9 [require]
       84 GETTABLEKS                       R14 R1 K19 ["Src"]
       86 GETTABLEKS                       R14 R14 K28 ["Util"]
       88 GETTABLEKS                       R14 R14 K29 ["Binding"]
       90 GETTABLEKS                       R14 R14 K30 ["getStringForBinding"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K9 [require]
       95 GETTABLEKS                       R15 R1 K19 ["Src"]
       97 GETTABLEKS                       R15 R15 K28 ["Util"]
       99 GETTABLEKS                       R15 R15 K31 ["getSchemas"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R1 K19 ["Src"]
      104 GETTABLEKS                       R15 R15 K32 ["Flags"]
      106 GETIMPORT                        R16 K9 [require]
      108 GETTABLEKS                       R17 R15 K33 ["getFFlagIAMBooleanProperties"]
      110 CALL                             R16 1 1
      111 GETIMPORT                        R17 K9 [require]
      113 GETTABLEKS                       R18 R15 K34 ["getFFlagIAMLiveDebugging"]
      115 CALL                             R17 1 1
      116 DUPCLOSURE                       R18 K35 [PROTO_3]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R0
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R6
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R8
      131 RETURN                           R18 1

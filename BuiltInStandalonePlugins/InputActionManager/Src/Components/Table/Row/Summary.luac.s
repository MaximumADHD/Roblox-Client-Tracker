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
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K11 ["stateString"]
       36 JUMPIFNOT                        R2 ; [+72]
       37 GETUPVAL                         R2 1
       38 GETTABLEKS                       R2 R2 K1 ["createElement"]
       40 GETUPVAL                         R4 6
       41 JUMPIFEQKNIL                     R4 ; [+3]
       43 LOADK                            R3 K12 ["CanvasGroup"]
       44 JUMP                             ; [+1]
       45 LOADK                            R3 K13 ["Frame"]
       46 NEWTABLE                         R4 4 0
       48 GETUPVAL                         R6 6
       49 JUMPIFNOT                        R6 ; [+2]
       50 LOADK                            R5 K14 [0.5]
       51 JUMP                             ; [+1]
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R4 K15 ["GroupTransparency"]
       55 MOVE                             R5 R1
       56 CALL                             R5 0 1
       57 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       59 GETUPVAL                         R5 7
       60 SETTABLEKS                       R5 R4 K16 ["ref"]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K17 ["Tag"]
       65 LOADK                            R6 K18 ["columns-input col align-y-center size-0-full"]
       66 SETTABLE                         R6 R4 R5
       67 DUPTABLE                         R5 K20 [{"Label", "Divider"}]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K1 ["createElement"]
       71 GETUPVAL                         R7 8
       72 DUPTABLE                         R8 K26 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["testId"] = "summary-State", ["Text"], ["TextTruncate"]}]
       73 MOVE                             R9 R1
       74 CALL                             R9 0 1
       75 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R9 R9 K11 ["stateString"]
       80 SETTABLEKS                       R9 R8 K24 ["Text"]
       82 GETIMPORT                        R9 K29 [Enum.TextTruncate.AtEnd]
       84 SETTABLEKS                       R9 R8 K25 ["TextTruncate"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K19 ["Label"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K1 ["createElement"]
       92 GETUPVAL                         R7 4
       93 DUPTABLE                         R8 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       94 MOVE                             R9 R1
       95 CALL                             R9 0 1
       96 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       98 GETUPVAL                         R9 5
       99 GETTABLEKS                       R9 R9 K32 ["Horizontal"]
      101 SETTABLEKS                       R9 R8 K5 ["orientation"]
      103 CALL                             R6 2 1
      104 SETTABLEKS                       R6 R5 K10 ["Divider"]
      106 CALL                             R2 3 1
      107 SETTABLEKS                       R2 R0 K33 ["State"]
      109 GETUPVAL                         R2 9
      110 CALL                             R2 0 3
      111 FORGPREP                         R2
      112 GETUPVAL                         R8 10
      113 GETTABLEKS                       R8 R8 K34 ["schemas"]
      115 GETTABLE                         R7 R8 R6
      116 JUMPIFEQKB                       R7 FALSE ; [+146]
      118 GETUPVAL                         R7 3
      119 GETTABLEKS                       R7 R7 K35 ["previousBindings"]
      121 JUMPIFNOT                        R7 ; [+20]
      122 GETUPVAL                         R8 3
      123 GETTABLEKS                       R8 R8 K35 ["previousBindings"]
      125 GETTABLE                         R7 R8 R6
      126 JUMPIF                           R7 ; [+15]
      127 GETUPVAL                         R7 1
      128 GETTABLEKS                       R7 R7 K1 ["createElement"]
      130 GETUPVAL                         R8 11
      131 DUPTABLE                         R9 K37 [{"disabled", "LayoutOrder"}]
      132 GETUPVAL                         R10 6
      133 SETTABLEKS                       R10 R9 K36 ["disabled"]
      135 MOVE                             R10 R1
      136 CALL                             R10 0 1
      137 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      139 CALL                             R7 2 1
      140 SETTABLE                         R7 R0 R6
      141 JUMP                             ; [+121]
      142 NEWTABLE                         R7 0 0
      144 GETUPVAL                         R8 12
      145 CALL                             R8 0 1
      146 JUMPIF                           R8 ; [+5]
      147 GETUPVAL                         R9 3
      148 GETTABLEKS                       R9 R9 K38 ["bindings"]
      150 GETTABLE                         R8 R9 R6
      151 JUMPIFNOT                        R8 ; [+111]
      152 GETUPVAL                         R9 12
      153 CALL                             R9 0 1
      154 JUMPIFNOT                        R9 ; [+8]
      155 GETUPVAL                         R9 3
      156 GETTABLEKS                       R9 R9 K38 ["bindings"]
      158 GETTABLE                         R8 R9 R6
      159 JUMPIF                           R8 ; [+7]
      160 NEWTABLE                         R8 0 0
      162 JUMP                             ; [+4]
      163 GETUPVAL                         R9 3
      164 GETTABLEKS                       R9 R9 K38 ["bindings"]
      166 GETTABLE                         R8 R9 R6
      167 MOVE                             R9 R8
      168 LOADNIL                          R10
      169 LOADNIL                          R11
      170 FORGPREP                         R9
      171 GETUPVAL                         R14 13
      172 MOVE                             R15 R13
      173 GETUPVAL                         R16 3
      174 GETTABLEKS                       R16 R16 K2 ["nodeProps"]
      176 GETTABLEKS                       R16 R16 K39 ["action"]
      178 GETTABLEKS                       R16 R16 K40 ["type"]
      180 CALL                             R14 2 1
      181 JUMPIFNOT                        R14 ; [+7]
      182 FASTCALL2                        TABLE_INSERT R7 R14 ; [+5]
      184 MOVE                             R16 R7
      185 MOVE                             R17 R14
      186 GETIMPORT                        R15 K43 [table.insert]
      188 CALL                             R15 2 0
      189 FORGLOOP                         R9 2 ; [-19]
      191 LENGTH                           R10 R7
      192 LOADN                            R11 0
      193 JUMPIFNOTLT                      R11 R10 ; [+7]
      195 GETIMPORT                        R9 K45 [table.concat]
      197 MOVE                             R10 R7
      198 LOADK                            R11 K46 [", "]
      199 CALL                             R9 2 1
      200 JUMP                             ; [+1]
      201 LOADK                            R9 K47 ["None"]
      202 GETUPVAL                         R10 1
      203 GETTABLEKS                       R10 R10 K1 ["createElement"]
      205 GETUPVAL                         R11 14
      206 DUPTABLE                         R12 K48 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      207 GETUPVAL                         R14 6
      208 JUMPIFNOT                        R14 ; [+2]
      209 LOADK                            R13 K14 [0.5]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R13
      212 SETTABLEKS                       R13 R12 K15 ["GroupTransparency"]
      214 MOVE                             R13 R1
      215 CALL                             R13 0 1
      216 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      218 LOADK                            R13 K49 ["summary-%*"]
      219 MOVE                             R15 R6
      220 NAMECALL                         R13 R13 K50 ["format"]
      222 CALL                             R13 2 1
      223 SETTABLEKS                       R13 R12 K22 ["testId"]
      225 DUPTABLE                         R13 K20 [{"Label", "Divider"}]
      226 GETUPVAL                         R14 1
      227 GETTABLEKS                       R14 R14 K1 ["createElement"]
      229 GETUPVAL                         R15 8
      230 DUPTABLE                         R16 K51 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      231 MOVE                             R17 R1
      232 CALL                             R17 0 1
      233 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      235 SETTABLEKS                       R9 R16 K24 ["Text"]
      237 GETIMPORT                        R17 K29 [Enum.TextTruncate.AtEnd]
      239 SETTABLEKS                       R17 R16 K25 ["TextTruncate"]
      241 CALL                             R14 2 1
      242 SETTABLEKS                       R14 R13 K19 ["Label"]
      244 GETUPVAL                         R14 1
      245 GETTABLEKS                       R14 R14 K1 ["createElement"]
      247 GETUPVAL                         R15 4
      248 DUPTABLE                         R16 K31 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      249 MOVE                             R17 R1
      250 CALL                             R17 0 1
      251 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      253 GETUPVAL                         R17 5
      254 GETTABLEKS                       R17 R17 K32 ["Horizontal"]
      256 SETTABLEKS                       R17 R16 K5 ["orientation"]
      258 CALL                             R14 2 1
      259 SETTABLEKS                       R14 R13 K10 ["Divider"]
      261 CALL                             R10 3 1
      262 SETTABLE                         R10 R0 R6
      263 FORGLOOP                         R2 2 ; [-152]
      265 RETURN                           R0 1

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
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K9 ["useMemo"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U3
       41 NEWTABLE                         R7 0 1
       43 MOVE                             R8 R3
       44 SETLIST                          R7 R8 1 [1]
       46 CALL                             R5 2 1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R0
       54 NEWTABLE                         R8 0 3
       56 GETTABLEKS                       R9 R0 K11 ["stateString"]
       58 MOVE                             R10 R3
       59 MOVE                             R11 R5
       60 SETLIST                          R8 R9 3 [1]
       62 CALL                             R6 2 0
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K9 ["useMemo"]
       66 NEWCLOSURE                       R7 P2
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          UPVAL U0
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          UPVAL U9
       77 CAPTURE                          VAL R1
       78 CAPTURE                          UPVAL U10
       79 CAPTURE                          UPVAL U11
       80 CAPTURE                          UPVAL U12
       81 CAPTURE                          UPVAL U13
       82 NEWTABLE                         R8 0 6
       84 GETTABLEKS                       R9 R0 K12 ["bindings"]
       86 GETTABLEKS                       R10 R0 K2 ["nodeProps"]
       88 GETTABLEKS                       R10 R10 K4 ["action"]
       90 MOVE                             R11 R2
       91 GETTABLEKS                       R12 R0 K2 ["nodeProps"]
       93 GETTABLEKS                       R12 R12 K13 ["expanded"]
       95 GETTABLEKS                       R13 R0 K11 ["stateString"]
       97 GETTABLEKS                       R14 R1 K14 ["schemas"]
       99 SETLIST                          R8 R9 6 [1]
      101 CALL                             R6 2 1
      102 GETUPVAL                         R7 0
      103 GETTABLEKS                       R7 R7 K15 ["createElement"]
      105 GETUPVAL                         R8 13
      106 DUPTABLE                         R9 K19 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      107 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      109 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      111 MOVE                             R10 R6
      112 CALL                             R7 3 -1
      113 RETURN                           R7 -1

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
      113 GETTABLEKS                       R18 R15 K34 ["getFFlagIAMSummarySpacing"]
      115 CALL                             R17 1 1
      116 DUPCLOSURE                       R18 K35 [PROTO_3]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R17
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R8
      131 RETURN                           R18 1

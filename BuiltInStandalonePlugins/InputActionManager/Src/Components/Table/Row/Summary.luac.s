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
       35 JUMPIFNOT                        R2 ; [+64]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K11 ["stateString"]
       39 JUMPIFNOT                        R2 ; [+60]
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K1 ["createElement"]
       43 LOADK                            R3 K12 ["Frame"]
       44 NEWTABLE                         R4 4 0
       46 MOVE                             R5 R1
       47 CALL                             R5 0 1
       48 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       50 GETUPVAL                         R5 7
       51 SETTABLEKS                       R5 R4 K13 ["ref"]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K14 ["Tag"]
       56 LOADK                            R6 K15 ["columns-input col align-y-center size-0-full"]
       57 SETTABLE                         R6 R4 R5
       58 DUPTABLE                         R5 K17 [{"Label", "Divider"}]
       59 GETUPVAL                         R6 1
       60 GETTABLEKS                       R6 R6 K1 ["createElement"]
       62 GETUPVAL                         R7 8
       63 DUPTABLE                         R8 K23 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["testId"] = "summary-State", ["Text"], ["TextTruncate"]}]
       64 MOVE                             R9 R1
       65 CALL                             R9 0 1
       66 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K11 ["stateString"]
       71 SETTABLEKS                       R9 R8 K21 ["Text"]
       73 GETIMPORT                        R9 K26 [Enum.TextTruncate.AtEnd]
       75 SETTABLEKS                       R9 R8 K22 ["TextTruncate"]
       77 CALL                             R6 2 1
       78 SETTABLEKS                       R6 R5 K16 ["Label"]
       80 GETUPVAL                         R6 1
       81 GETTABLEKS                       R6 R6 K1 ["createElement"]
       83 GETUPVAL                         R7 4
       84 DUPTABLE                         R8 K28 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
       85 MOVE                             R9 R1
       86 CALL                             R9 0 1
       87 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       89 GETUPVAL                         R9 5
       90 GETTABLEKS                       R9 R9 K29 ["Horizontal"]
       92 SETTABLEKS                       R9 R8 K5 ["orientation"]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K10 ["Divider"]
       97 CALL                             R2 3 1
       98 SETTABLEKS                       R2 R0 K30 ["State"]
      100 GETUPVAL                         R2 9
      101 CALL                             R2 0 3
      102 FORGPREP                         R2
      103 GETUPVAL                         R8 10
      104 GETTABLEKS                       R8 R8 K31 ["schemas"]
      106 GETTABLE                         R7 R8 R6
      107 JUMPIFEQKB                       R7 FALSE ; [+122]
      109 GETUPVAL                         R7 3
      110 GETTABLEKS                       R7 R7 K32 ["previousBindings"]
      112 JUMPIFNOT                        R7 ; [+17]
      113 GETUPVAL                         R8 3
      114 GETTABLEKS                       R8 R8 K32 ["previousBindings"]
      116 GETTABLE                         R7 R8 R6
      117 JUMPIF                           R7 ; [+12]
      118 GETUPVAL                         R7 1
      119 GETTABLEKS                       R7 R7 K1 ["createElement"]
      121 GETUPVAL                         R8 11
      122 DUPTABLE                         R9 K33 [{"LayoutOrder"}]
      123 MOVE                             R10 R1
      124 CALL                             R10 0 1
      125 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
      127 CALL                             R7 2 1
      128 SETTABLE                         R7 R0 R6
      129 JUMP                             ; [+100]
      130 NEWTABLE                         R7 0 0
      132 GETUPVAL                         R9 3
      133 GETTABLEKS                       R9 R9 K34 ["bindings"]
      135 GETTABLE                         R8 R9 R6
      136 JUMPIFNOT                        R8 ; [+93]
      137 GETUPVAL                         R11 3
      138 GETTABLEKS                       R11 R11 K34 ["bindings"]
      140 GETTABLE                         R8 R11 R6
      141 LOADNIL                          R9
      142 LOADNIL                          R10
      143 FORGPREP                         R8
      144 GETUPVAL                         R13 12
      145 MOVE                             R14 R12
      146 GETUPVAL                         R15 3
      147 GETTABLEKS                       R15 R15 K2 ["nodeProps"]
      149 GETTABLEKS                       R15 R15 K35 ["action"]
      151 GETTABLEKS                       R15 R15 K36 ["type"]
      153 CALL                             R13 2 1
      154 JUMPIFNOT                        R13 ; [+7]
      155 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
      157 MOVE                             R15 R7
      158 MOVE                             R16 R13
      159 GETIMPORT                        R14 K39 [table.insert]
      161 CALL                             R14 2 0
      162 FORGLOOP                         R8 2 ; [-19]
      164 LENGTH                           R9 R7
      165 LOADN                            R10 0
      166 JUMPIFNOTLT                      R10 R9 ; [+7]
      168 GETIMPORT                        R8 K41 [table.concat]
      170 MOVE                             R9 R7
      171 LOADK                            R10 K42 [", "]
      172 CALL                             R8 2 1
      173 JUMP                             ; [+1]
      174 LOADK                            R8 K43 ["None"]
      175 GETUPVAL                         R9 1
      176 GETTABLEKS                       R9 R9 K1 ["createElement"]
      178 GETUPVAL                         R10 13
      179 DUPTABLE                         R11 K44 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      180 MOVE                             R12 R1
      181 CALL                             R12 0 1
      182 SETTABLEKS                       R12 R11 K4 ["LayoutOrder"]
      184 LOADK                            R13 K45 ["summary-%*"]
      185 MOVE                             R15 R6
      186 NAMECALL                         R13 R13 K46 ["format"]
      188 CALL                             R13 2 1
      189 MOVE                             R12 R13
      190 SETTABLEKS                       R12 R11 K19 ["testId"]
      192 DUPTABLE                         R12 K17 [{"Label", "Divider"}]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R13 R13 K1 ["createElement"]
      196 GETUPVAL                         R14 8
      197 DUPTABLE                         R15 K47 [{["LayoutOrder"], ["tag"] = "size-full-full auto-x padding-medium text-body-medium text-align-x-left", ["Text"], ["TextTruncate"]}]
      198 MOVE                             R16 R1
      199 CALL                             R16 0 1
      200 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      202 SETTABLEKS                       R8 R15 K21 ["Text"]
      204 GETIMPORT                        R16 K26 [Enum.TextTruncate.AtEnd]
      206 SETTABLEKS                       R16 R15 K22 ["TextTruncate"]
      208 CALL                             R13 2 1
      209 SETTABLEKS                       R13 R12 K16 ["Label"]
      211 GETUPVAL                         R13 1
      212 GETTABLEKS                       R13 R13 K1 ["createElement"]
      214 GETUPVAL                         R14 4
      215 DUPTABLE                         R15 K28 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-x"}]
      216 MOVE                             R16 R1
      217 CALL                             R16 0 1
      218 SETTABLEKS                       R16 R15 K4 ["LayoutOrder"]
      220 GETUPVAL                         R16 5
      221 GETTABLEKS                       R16 R16 K29 ["Horizontal"]
      223 SETTABLEKS                       R16 R15 K5 ["orientation"]
      225 CALL                             R13 2 1
      226 SETTABLEKS                       R13 R12 K10 ["Divider"]
      228 CALL                             R9 3 1
      229 SETTABLE                         R9 R0 R6
      230 FORGLOOP                         R2 2 ; [-128]
      232 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R4 R0 K2 ["nodeProps"]
        9 GETTABLEKS                       R4 R4 K3 ["action"]
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       17 LOADK                            R4 K4 ["Action is required"]
       18 GETIMPORT                        R2 K6 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["useState"]
       24 LOADNIL                          R3
       25 CALL                             R2 1 2
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+28]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          UPVAL U3
       35 NEWTABLE                         R6 0 1
       37 MOVE                             R7 R2
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K9 ["useEffect"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R7 0 3
       50 GETTABLEKS                       R8 R0 K10 ["stateString"]
       52 MOVE                             R9 R2
       53 MOVE                             R10 R4
       54 SETLIST                          R7 R8 3 [1]
       56 CALL                             R5 2 0
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       60 NEWCLOSURE                       R5 P2
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U10
       73 CAPTURE                          UPVAL U11
       74 CAPTURE                          UPVAL U12
       75 NEWTABLE                         R6 0 5
       77 GETTABLEKS                       R7 R0 K11 ["bindings"]
       79 GETTABLEKS                       R8 R0 K2 ["nodeProps"]
       81 GETTABLEKS                       R8 R8 K3 ["action"]
       83 GETTABLEKS                       R9 R0 K2 ["nodeProps"]
       85 GETTABLEKS                       R9 R9 K12 ["expanded"]
       87 GETUPVAL                         R11 2
       88 CALL                             R11 0 1
       89 JUMPIFNOT                        R11 ; [+3]
       90 GETTABLEKS                       R10 R0 K10 ["stateString"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 GETTABLEKS                       R11 R1 K13 ["schemas"]
       96 SETLIST                          R6 R7 5 [1]
       98 CALL                             R4 2 1
       99 GETUPVAL                         R5 0
      100 GETTABLEKS                       R5 R5 K14 ["createElement"]
      102 GETUPVAL                         R6 12
      103 DUPTABLE                         R7 K18 [{["tag"] = "tree-row row align-y-center auto-x", ["LayoutOrder"]}]
      104 GETTABLEKS                       R8 R0 K17 ["LayoutOrder"]
      106 SETTABLEKS                       R8 R7 K17 ["LayoutOrder"]
      108 MOVE                             R8 R4
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1

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
      108 GETTABLEKS                       R17 R15 K33 ["getFFlagIAMLiveDebugging"]
      110 CALL                             R16 1 1
      111 DUPCLOSURE                       R17 K34 [PROTO_3]
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R16
      115 CAPTURE                          VAL R0
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R8
      125 RETURN                           R17 1

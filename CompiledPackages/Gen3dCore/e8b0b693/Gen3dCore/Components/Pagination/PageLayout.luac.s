PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K4 [{"text", "isDisabled", "testId", "onActivated"}]
        1 GETTABLEKS                       R3 R0 K0 ["text"]
        3 SETTABLEKS                       R3 R2 K0 ["text"]
        5 GETTABLEKS                       R3 R0 K1 ["isDisabled"]
        7 SETTABLEKS                       R3 R2 K1 ["isDisabled"]
        9 GETTABLEKS                       R3 R0 K2 ["testId"]
       11 SETTABLEKS                       R3 R2 K2 ["testId"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K3 ["onActivated"]
       18 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["pages"]
        5 GETUPVAL                         R3 0
        6 ADDK                             R2 R3 K1 [1]
        7 GETTABLE                         R0 R1 R2
        8 JUMP                             ; [+1]
        9 LOADNIL                          R0
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K2 ["name"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["pages"]
        5 GETUPVAL                         R3 0
        6 SUBK                             R2 R3 K1 [1]
        7 GETTABLE                         R0 R1 R2
        8 JUMP                             ; [+1]
        9 LOADNIL                          R0
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R2 R0 K2 ["name"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["pages"]
        2 GETTABLEN                        R1 R2 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["useState"]
        6 GETTABLEKS                       R4 R0 K2 ["initialPageName"]
        8 JUMPIFEQKNIL                     R4 ; [+4]
       10 GETTABLEKS                       R3 R0 K2 ["initialPageName"]
       12 JUMP                             ; [+4]
       13 MOVE                             R3 R1
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K3 ["name"]
       17 CALL                             R2 1 2
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K4 ["findIndex"]
       21 GETTABLEKS                       R5 R0 K0 ["pages"]
       23 NEWCLOSURE                       R6 P0
       24 CAPTURE                          VAL R2
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+4]
       27 GETTABLEKS                       R6 R0 K0 ["pages"]
       29 GETTABLE                         R5 R6 R4
       30 JUMP                             ; [+1]
       31 LOADNIL                          R5
       32 JUMPIFNOT                        R5 ; [+6]
       33 GETTABLEKS                       R7 R5 K5 ["key"]
       35 JUMPIFNOT                        R7 ; [+3]
       36 GETTABLEKS                       R6 R5 K5 ["key"]
       38 JUMP                             ; [+9]
       39 JUMPIFNOT                        R5 ; [+7]
       40 GETTABLEKS                       R7 R5 K3 ["name"]
       42 FASTCALL1                        TOSTRING R7 ; [+2]
       43 GETIMPORT                        R6 K7 [tostring]
       45 CALL                             R6 1 1
       46 JUMP                             ; [+1]
       47 LOADK                            R6 K8 [""]
       48 NEWCLOSURE                       R7 P1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R3
       52 NEWCLOSURE                       R8 P2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R3
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R9 R9 K9 ["createNextOrder"]
       59 CALL                             R9 0 1
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K10 ["createElement"]
       63 GETUPVAL                         R11 3
       64 GETTABLEKS                       R11 R11 K11 ["View"]
       66 DUPTABLE                         R12 K15 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
       67 GETTABLEKS                       R13 R0 K14 ["LayoutOrder"]
       69 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       71 DUPTABLE                         R13 K18 [{"Card", "Close"}]
       72 GETUPVAL                         R14 0
       73 GETTABLEKS                       R14 R14 K10 ["createElement"]
       75 GETUPVAL                         R15 3
       76 GETTABLEKS                       R15 R15 K11 ["View"]
       78 DUPTABLE                         R16 K21 [{["tag"] = "col align-y-top gap-medium size-full-0 auto-y padding-medium stroke-standard stroke-emphasis radius-large bg-surface-100", ["ZIndex"]}]
       79 MOVE                             R17 R9
       80 CALL                             R17 0 1
       81 SETTABLEKS                       R17 R16 K20 ["ZIndex"]
       83 NEWTABLE                         R17 1 0
       85 MOVE                             R18 R5
       86 JUMPIFNOT                        R18 ; [+66]
       87 GETUPVAL                         R18 4
       88 GETUPVAL                         R19 0
       89 GETTABLEKS                       R19 R19 K10 ["createElement"]
       91 GETUPVAL                         R20 5
       92 DUPTABLE                         R21 K29 [{"content", "onBack", "backTestId", "leadingActions", "secondaryAction", "primaryAction", "actionsTestId"}]
       93 GETTABLEKS                       R22 R5 K22 ["content"]
       95 SETTABLEKS                       R22 R21 K22 ["content"]
       97 JUMPIFEQKN                       R4 K30 [1] ; [+7]
       99 GETTABLEKS                       R23 R5 K31 ["hasBackButton"]
      101 JUMPIFEQKB                       R23 FALSE ; [+3]
      103 MOVE                             R22 R8
      104 JUMP                             ; [+1]
      105 LOADNIL                          R22
      106 SETTABLEKS                       R22 R21 K23 ["onBack"]
      108 GETTABLEKS                       R22 R0 K24 ["backTestId"]
      110 SETTABLEKS                       R22 R21 K24 ["backTestId"]
      112 GETTABLEKS                       R22 R5 K25 ["leadingActions"]
      114 SETTABLEKS                       R22 R21 K25 ["leadingActions"]
      116 GETTABLEKS                       R22 R5 K26 ["secondaryAction"]
      118 SETTABLEKS                       R22 R21 K26 ["secondaryAction"]
      120 GETTABLEKS                       R23 R5 K27 ["primaryAction"]
      122 JUMPIFNOT                        R23 ; [+21]
      123 GETTABLEKS                       R23 R5 K27 ["primaryAction"]
      125 DUPTABLE                         R22 K36 [{"text", "isDisabled", "testId", "onActivated"}]
      126 GETTABLEKS                       R24 R23 K32 ["text"]
      128 SETTABLEKS                       R24 R22 K32 ["text"]
      130 GETTABLEKS                       R24 R23 K33 ["isDisabled"]
      132 SETTABLEKS                       R24 R22 K33 ["isDisabled"]
      134 GETTABLEKS                       R24 R23 K34 ["testId"]
      136 SETTABLEKS                       R24 R22 K34 ["testId"]
      138 NEWCLOSURE                       R24 P3
      139 CAPTURE                          VAL R23
      140 CAPTURE                          VAL R7
      141 SETTABLEKS                       R24 R22 K35 ["onActivated"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R22
      145 SETTABLEKS                       R22 R21 K27 ["primaryAction"]
      147 GETTABLEKS                       R22 R5 K28 ["actionsTestId"]
      149 SETTABLEKS                       R22 R21 K28 ["actionsTestId"]
      151 CALL                             R19 2 -1
      152 CALL                             R18 -1 1
      153 SETTABLE                         R18 R17 R6
      154 CALL                             R14 3 1
      155 SETTABLEKS                       R14 R13 K16 ["Card"]
      157 JUMPIFEQKNIL                     R5 ; [+75]
      159 GETTABLEKS                       R15 R5 K37 ["hasCloseButton"]
      161 JUMPIFNOT                        R15 ; [+71]
      162 GETUPVAL                         R14 0
      163 GETTABLEKS                       R14 R14 K10 ["createElement"]
      165 GETUPVAL                         R15 3
      166 GETTABLEKS                       R15 R15 K11 ["View"]
      168 DUPTABLE                         R16 K40 [{["tag"] = "anchor-top-right auto-xy", ["Position"], ["ZIndex"]}]
      169 GETIMPORT                        R17 K43 [UDim2.new]
      171 LOADN                            R18 1
      172 LOADN                            R19 -8
      173 LOADN                            R20 0
      174 LOADN                            R21 8
      175 CALL                             R17 4 1
      176 SETTABLEKS                       R17 R16 K39 ["Position"]
      178 MOVE                             R17 R9
      179 CALL                             R17 0 1
      180 SETTABLEKS                       R17 R16 K20 ["ZIndex"]
      182 DUPTABLE                         R17 K45 [{"Button"}]
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K10 ["createElement"]
      186 GETUPVAL                         R19 3
      187 GETTABLEKS                       R19 R19 K46 ["IconButton"]
      189 DUPTABLE                         R20 K52 [{["icon"], ["onActivated"], ["size"], ["variant"], ["isCircular"] = True, ["testId"]}]
      190 DUPTABLE                         R21 K53 [{"name"}]
      191 GETUPVAL                         R22 3
      192 GETTABLEKS                       R22 R22 K54 ["Enums"]
      194 GETTABLEKS                       R22 R22 K55 ["IconName"]
      196 GETTABLEKS                       R22 R22 K56 ["X"]
      198 SETTABLEKS                       R22 R21 K3 ["name"]
      200 SETTABLEKS                       R21 R20 K47 ["icon"]
      202 GETTABLEKS                       R21 R0 K57 ["onClose"]
      204 SETTABLEKS                       R21 R20 K35 ["onActivated"]
      206 GETUPVAL                         R21 3
      207 GETTABLEKS                       R21 R21 K54 ["Enums"]
      209 GETTABLEKS                       R21 R21 K58 ["InputSize"]
      211 GETTABLEKS                       R21 R21 K59 ["XSmall"]
      213 SETTABLEKS                       R21 R20 K48 ["size"]
      215 GETUPVAL                         R21 3
      216 GETTABLEKS                       R21 R21 K54 ["Enums"]
      218 GETTABLEKS                       R21 R21 K60 ["ButtonVariant"]
      220 GETTABLEKS                       R21 R21 K61 ["Utility"]
      222 SETTABLEKS                       R21 R20 K49 ["variant"]
      224 GETTABLEKS                       R21 R0 K62 ["closeTestId"]
      226 SETTABLEKS                       R21 R20 K34 ["testId"]
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K44 ["Button"]
      231 CALL                             R14 3 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R14
      234 SETTABLEKS                       R14 R13 K17 ["Close"]
      236 CALL                             R10 3 -1
      237 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3dCore"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Foundation"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Pagination"]
       25 GETTABLEKS                       R5 R5 K11 ["Page"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R1 K12 ["React"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K14 ["Util"]
       42 GETTABLEKS                       R8 R8 K15 ["as"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 DUPCLOSURE                       R9 K17 [PROTO_5]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 RETURN                           R9 1

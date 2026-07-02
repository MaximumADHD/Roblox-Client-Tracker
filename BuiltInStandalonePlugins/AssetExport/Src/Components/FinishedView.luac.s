PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K1 ["Success"] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K2 ["createElement"]
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K3 ["View"]
       21 DUPTABLE                         R7 K6 [{["tag"] = "col size-full padding-medium bg-surface-300"}]
       22 DUPTABLE                         R8 K9 [{"Top", "ButtonPanel"}]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R9 R9 K2 ["createElement"]
       26 GETUPVAL                         R10 4
       27 GETTABLEKS                       R10 R10 K3 ["View"]
       29 DUPTABLE                         R11 K13 [{["tag"] = "grow size-full-0", ["LayoutOrder"] = 1}]
       30 DUPTABLE                         R12 K15 [{"Header"}]
       31 GETUPVAL                         R13 3
       32 GETTABLEKS                       R13 R13 K2 ["createElement"]
       34 GETUPVAL                         R14 4
       35 GETTABLEKS                       R14 R14 K3 ["View"]
       37 DUPTABLE                         R15 K17 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small"}]
       38 DUPTABLE                         R16 K21 [{"iconElement", "textPanel", "show"}]
       39 GETUPVAL                         R17 3
       40 GETTABLEKS                       R17 R17 K2 ["createElement"]
       42 GETUPVAL                         R18 4
       43 GETTABLEKS                       R18 R18 K22 ["Image"]
       45 DUPTABLE                         R19 K24 [{["Image"], ["Size"], ["LayoutOrder"] = 1}]
       46 JUMPIFNOT                        R4 ; [+2]
       47 LOADK                            R20 K25 ["rbxassetid://71912387248131"]
       48 JUMP                             ; [+1]
       49 LOADK                            R20 K26 ["rbxassetid://117968062074216"]
       50 SETTABLEKS                       R20 R19 K22 ["Image"]
       52 GETIMPORT                        R20 K29 [UDim2.fromOffset]
       54 LOADN                            R21 36
       55 LOADN                            R22 36
       56 CALL                             R20 2 1
       57 SETTABLEKS                       R20 R19 K23 ["Size"]
       59 CALL                             R17 2 1
       60 SETTABLEKS                       R17 R16 K18 ["iconElement"]
       62 GETUPVAL                         R17 3
       63 GETTABLEKS                       R17 R17 K2 ["createElement"]
       65 GETUPVAL                         R18 4
       66 GETTABLEKS                       R18 R18 K3 ["View"]
       68 DUPTABLE                         R19 K32 [{["tag"] = "col align-y-top grow gap-small size-0-0 auto-y", ["LayoutOrder"] = 2}]
       69 DUPTABLE                         R20 K35 [{"MainText", "SupportText"}]
       70 GETUPVAL                         R21 3
       71 GETTABLEKS                       R21 R21 K2 ["createElement"]
       73 GETUPVAL                         R22 4
       74 GETTABLEKS                       R22 R22 K36 ["Text"]
       76 DUPTABLE                         R23 K38 [{["tag"] = "size-full-0 auto-y text-title-medium text-no-wrap text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"] = 1}]
       77 JUMPIFNOT                        R4 ; [+6]
       78 LOADK                            R26 K39 ["Title"]
       79 LOADK                            R27 K1 ["Success"]
       80 NAMECALL                         R24 R1 K40 ["getText"]
       82 CALL                             R24 3 1
       83 JUMP                             ; [+5]
       84 LOADK                            R26 K39 ["Title"]
       85 LOADK                            R27 K41 ["Failure"]
       86 NAMECALL                         R24 R1 K40 ["getText"]
       88 CALL                             R24 3 1
       89 SETTABLEKS                       R24 R23 K36 ["Text"]
       91 CALL                             R21 2 1
       92 SETTABLEKS                       R21 R20 K33 ["MainText"]
       94 GETUPVAL                         R21 3
       95 GETTABLEKS                       R21 R21 K2 ["createElement"]
       97 GETUPVAL                         R22 4
       98 GETTABLEKS                       R22 R22 K36 ["Text"]
      100 DUPTABLE                         R23 K43 [{["tag"] = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left", ["Text"], ["LayoutOrder"] = 2}]
      101 JUMPIFNOT                        R4 ; [+6]
      102 LOADK                            R26 K44 ["Info"]
      103 LOADK                            R27 K1 ["Success"]
      104 NAMECALL                         R24 R1 K40 ["getText"]
      106 CALL                             R24 3 1
      107 JUMP                             ; [+5]
      108 LOADK                            R26 K44 ["Info"]
      109 LOADK                            R27 K41 ["Failure"]
      110 NAMECALL                         R24 R1 K40 ["getText"]
      112 CALL                             R24 3 1
      113 SETTABLEKS                       R24 R23 K36 ["Text"]
      115 CALL                             R21 2 1
      116 SETTABLEKS                       R21 R20 K34 ["SupportText"]
      118 CALL                             R17 3 1
      119 SETTABLEKS                       R17 R16 K19 ["textPanel"]
      121 GETUPVAL                         R17 3
      122 GETTABLEKS                       R17 R17 K2 ["createElement"]
      124 GETUPVAL                         R18 4
      125 GETTABLEKS                       R18 R18 K3 ["View"]
      127 DUPTABLE                         R19 K47 [{["tag"] = "row align-y-center size-0-full auto-xy", ["LayoutOrder"] = 3}]
      128 NEWTABLE                         R20 0 0
      130 CALL                             R17 3 1
      131 SETTABLEKS                       R17 R16 K20 ["show"]
      133 CALL                             R13 3 1
      134 SETTABLEKS                       R13 R12 K14 ["Header"]
      136 CALL                             R9 3 1
      137 SETTABLEKS                       R9 R8 K7 ["Top"]
      139 GETUPVAL                         R9 3
      140 GETTABLEKS                       R9 R9 K2 ["createElement"]
      142 GETUPVAL                         R10 4
      143 GETTABLEKS                       R10 R10 K3 ["View"]
      145 DUPTABLE                         R11 K49 [{["tag"] = "row align-x-right gap-small size-full-1200 padding-small bg-surface-300", ["LayoutOrder"] = 2}]
      146 DUPTABLE                         R12 K51 [{"Ok"}]
      147 GETUPVAL                         R13 3
      148 GETTABLEKS                       R13 R13 K2 ["createElement"]
      150 GETUPVAL                         R14 4
      151 GETTABLEKS                       R14 R14 K52 ["Button"]
      153 DUPTABLE                         R15 K59 [{["text"], ["variant"], ["onActivated"], ["isDisabled"] = False, ["size"], ["LayoutOrder"] = 1}]
      154 LOADK                            R18 K60 ["Buttons"]
      155 LOADK                            R19 K61 ["Done"]
      156 NAMECALL                         R16 R1 K40 ["getText"]
      158 CALL                             R16 3 1
      159 SETTABLEKS                       R16 R15 K53 ["text"]
      161 GETUPVAL                         R16 4
      162 GETTABLEKS                       R16 R16 K62 ["Enums"]
      164 GETTABLEKS                       R16 R16 K63 ["ButtonVariant"]
      166 GETTABLEKS                       R16 R16 K64 ["Emphasis"]
      168 SETTABLEKS                       R16 R15 K54 ["variant"]
      170 NEWCLOSURE                       R16 P0
      171 CAPTURE                          VAL R2
      172 SETTABLEKS                       R16 R15 K55 ["onActivated"]
      174 GETUPVAL                         R16 4
      175 GETTABLEKS                       R16 R16 K62 ["Enums"]
      177 GETTABLEKS                       R16 R16 K65 ["InputSize"]
      179 GETTABLEKS                       R16 R16 K66 ["Small"]
      181 SETTABLEKS                       R16 R15 K58 ["size"]
      183 CALL                             R13 2 1
      184 SETTABLEKS                       R13 R12 K50 ["Ok"]
      186 CALL                             R9 3 1
      187 SETTABLEKS                       R9 R8 K8 ["ButtonPanel"]
      189 CALL                             R5 3 -1
      190 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["ExportController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K16 ["useViewState"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R8 1

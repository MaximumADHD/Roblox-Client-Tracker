PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["closeExport"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFEQKS                       R3 K1 ["Success"] ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K2 ["createElement"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K3 ["View"]
       21 DUPTABLE                         R7 K5 [{"tag"}]
       22 LOADK                            R8 K6 ["bg-surface-300 size-full col padding-medium"]
       23 SETTABLEKS                       R8 R7 K4 ["tag"]
       25 DUPTABLE                         R8 K9 [{"Top", "ButtonPanel"}]
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R9 R10 K2 ["createElement"]
       29 GETUPVAL                         R11 4
       30 GETTABLEKS                       R10 R11 K3 ["View"]
       32 DUPTABLE                         R11 K11 [{"tag", "LayoutOrder"}]
       33 LOADK                            R12 K12 ["size-full-0 grow"]
       34 SETTABLEKS                       R12 R11 K4 ["tag"]
       36 LOADN                            R12 1
       37 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       39 DUPTABLE                         R12 K14 [{"Header"}]
       40 GETUPVAL                         R14 3
       41 GETTABLEKS                       R13 R14 K2 ["createElement"]
       43 GETUPVAL                         R15 4
       44 GETTABLEKS                       R14 R15 K3 ["View"]
       46 DUPTABLE                         R15 K5 [{"tag"}]
       47 LOADK                            R16 K15 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
       48 SETTABLEKS                       R16 R15 K4 ["tag"]
       50 DUPTABLE                         R16 K19 [{"iconElement", "textPanel", "show"}]
       51 GETUPVAL                         R18 3
       52 GETTABLEKS                       R17 R18 K2 ["createElement"]
       54 GETUPVAL                         R19 4
       55 GETTABLEKS                       R18 R19 K20 ["Image"]
       57 DUPTABLE                         R19 K22 [{"Image", "Size", "LayoutOrder"}]
       58 JUMPIFNOT                        R4 ; [+2]
       59 LOADK                            R20 K23 ["rbxassetid://71912387248131"]
       60 JUMP                             ; [+1]
       61 LOADK                            R20 K24 ["rbxassetid://117968062074216"]
       62 SETTABLEKS                       R20 R19 K20 ["Image"]
       64 GETIMPORT                        R20 K27 [UDim2.fromOffset]
       66 LOADN                            R21 36
       67 LOADN                            R22 36
       68 CALL                             R20 2 1
       69 SETTABLEKS                       R20 R19 K21 ["Size"]
       71 LOADN                            R20 1
       72 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       74 CALL                             R17 2 1
       75 SETTABLEKS                       R17 R16 K16 ["iconElement"]
       77 GETUPVAL                         R18 3
       78 GETTABLEKS                       R17 R18 K2 ["createElement"]
       80 GETUPVAL                         R19 4
       81 GETTABLEKS                       R18 R19 K3 ["View"]
       83 DUPTABLE                         R19 K11 [{"tag", "LayoutOrder"}]
       84 LOADK                            R20 K28 ["size-0-0 auto-y col align-y-top gap-small grow"]
       85 SETTABLEKS                       R20 R19 K4 ["tag"]
       87 LOADN                            R20 2
       88 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
       90 DUPTABLE                         R20 K31 [{"MainText", "SupportText"}]
       91 GETUPVAL                         R22 3
       92 GETTABLEKS                       R21 R22 K2 ["createElement"]
       94 GETUPVAL                         R23 4
       95 GETTABLEKS                       R22 R23 K32 ["Text"]
       97 DUPTABLE                         R23 K33 [{"tag", "Text", "LayoutOrder"}]
       98 LOADK                            R24 K34 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
       99 SETTABLEKS                       R24 R23 K4 ["tag"]
      101 JUMPIFNOT                        R4 ; [+6]
      102 LOADK                            R26 K35 ["Title"]
      103 LOADK                            R27 K1 ["Success"]
      104 NAMECALL                         R24 R1 K36 ["getText"]
      106 CALL                             R24 3 1
      107 JUMP                             ; [+5]
      108 LOADK                            R26 K35 ["Title"]
      109 LOADK                            R27 K37 ["Failure"]
      110 NAMECALL                         R24 R1 K36 ["getText"]
      112 CALL                             R24 3 1
      113 SETTABLEKS                       R24 R23 K32 ["Text"]
      115 LOADN                            R24 1
      116 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      118 CALL                             R21 2 1
      119 SETTABLEKS                       R21 R20 K29 ["MainText"]
      121 GETUPVAL                         R22 3
      122 GETTABLEKS                       R21 R22 K2 ["createElement"]
      124 GETUPVAL                         R23 4
      125 GETTABLEKS                       R22 R23 K32 ["Text"]
      127 DUPTABLE                         R23 K33 [{"tag", "Text", "LayoutOrder"}]
      128 LOADK                            R24 K38 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
      129 SETTABLEKS                       R24 R23 K4 ["tag"]
      131 JUMPIFNOT                        R4 ; [+6]
      132 LOADK                            R26 K39 ["Info"]
      133 LOADK                            R27 K1 ["Success"]
      134 NAMECALL                         R24 R1 K36 ["getText"]
      136 CALL                             R24 3 1
      137 JUMP                             ; [+5]
      138 LOADK                            R26 K39 ["Info"]
      139 LOADK                            R27 K37 ["Failure"]
      140 NAMECALL                         R24 R1 K36 ["getText"]
      142 CALL                             R24 3 1
      143 SETTABLEKS                       R24 R23 K32 ["Text"]
      145 LOADN                            R24 2
      146 SETTABLEKS                       R24 R23 K10 ["LayoutOrder"]
      148 CALL                             R21 2 1
      149 SETTABLEKS                       R21 R20 K30 ["SupportText"]
      151 CALL                             R17 3 1
      152 SETTABLEKS                       R17 R16 K17 ["textPanel"]
      154 GETUPVAL                         R18 3
      155 GETTABLEKS                       R17 R18 K2 ["createElement"]
      157 GETUPVAL                         R19 4
      158 GETTABLEKS                       R18 R19 K3 ["View"]
      160 DUPTABLE                         R19 K11 [{"tag", "LayoutOrder"}]
      161 LOADK                            R20 K40 ["size-0-full auto-xy row align-y-center"]
      162 SETTABLEKS                       R20 R19 K4 ["tag"]
      164 LOADN                            R20 3
      165 SETTABLEKS                       R20 R19 K10 ["LayoutOrder"]
      167 NEWTABLE                         R20 0 0
      169 CALL                             R17 3 1
      170 SETTABLEKS                       R17 R16 K18 ["show"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K13 ["Header"]
      175 CALL                             R9 3 1
      176 SETTABLEKS                       R9 R8 K7 ["Top"]
      178 GETUPVAL                         R10 3
      179 GETTABLEKS                       R9 R10 K2 ["createElement"]
      181 GETUPVAL                         R11 4
      182 GETTABLEKS                       R10 R11 K3 ["View"]
      184 DUPTABLE                         R11 K11 [{"tag", "LayoutOrder"}]
      185 LOADK                            R12 K41 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
      186 SETTABLEKS                       R12 R11 K4 ["tag"]
      188 LOADN                            R12 2
      189 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      191 DUPTABLE                         R12 K43 [{"Ok"}]
      192 GETUPVAL                         R14 3
      193 GETTABLEKS                       R13 R14 K2 ["createElement"]
      195 GETUPVAL                         R15 4
      196 GETTABLEKS                       R14 R15 K44 ["Button"]
      198 DUPTABLE                         R15 K50 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
      199 LOADK                            R18 K51 ["Buttons"]
      200 LOADK                            R19 K52 ["Done"]
      201 NAMECALL                         R16 R1 K36 ["getText"]
      203 CALL                             R16 3 1
      204 SETTABLEKS                       R16 R15 K45 ["text"]
      206 GETUPVAL                         R19 4
      207 GETTABLEKS                       R18 R19 K53 ["Enums"]
      209 GETTABLEKS                       R17 R18 K54 ["ButtonVariant"]
      211 GETTABLEKS                       R16 R17 K55 ["Emphasis"]
      213 SETTABLEKS                       R16 R15 K46 ["variant"]
      215 NEWCLOSURE                       R16 P0
      216 CAPTURE                          VAL R2
      217 SETTABLEKS                       R16 R15 K47 ["onActivated"]
      219 LOADB                            R16 0
      220 SETTABLEKS                       R16 R15 K48 ["isDisabled"]
      222 GETUPVAL                         R19 4
      223 GETTABLEKS                       R18 R19 K53 ["Enums"]
      225 GETTABLEKS                       R17 R18 K56 ["InputSize"]
      227 GETTABLEKS                       R16 R17 K57 ["Small"]
      229 SETTABLEKS                       R16 R15 K49 ["size"]
      231 LOADN                            R16 1
      232 SETTABLEKS                       R16 R15 K10 ["LayoutOrder"]
      234 CALL                             R13 2 1
      235 SETTABLEKS                       R13 R12 K42 ["Ok"]
      237 CALL                             R9 3 1
      238 SETTABLEKS                       R9 R8 K8 ["ButtonPanel"]
      240 CALL                             R5 3 -1
      241 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R8 K14 ["ExportController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K16 ["useViewState"]
       49 CALL                             R7 1 1
       50 DUPCLOSURE                       R8 K17 [PROTO_1]
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 RETURN                           R8 1

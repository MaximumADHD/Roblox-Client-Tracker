PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancelImport"]
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
        9 CALL                             R3 0 1
       10 GETIMPORT                        R4 K2 [next]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMPIFEQKNIL                     R4 ; [+6]
       16 GETUPVAL                         R5 3
       17 GETTABLE                         R6 R3 R4
       18 MOVE                             R7 R1
       19 CALL                             R5 2 1
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K3 [""]
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R6 R7 K4 ["createElement"]
       25 GETUPVAL                         R8 5
       26 GETTABLEKS                       R7 R8 K5 ["View"]
       28 DUPTABLE                         R8 K7 [{"tag"}]
       29 LOADK                            R9 K8 ["size-full col padding-medium gap-medium"]
       30 SETTABLEKS                       R9 R8 K6 ["tag"]
       32 DUPTABLE                         R9 K11 [{"Body", "ButtonPanel"}]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K4 ["createElement"]
       36 GETUPVAL                         R12 5
       37 GETTABLEKS                       R11 R12 K5 ["View"]
       39 DUPTABLE                         R12 K7 [{"tag"}]
       40 LOADK                            R13 K12 ["size-0-full auto-x shrink row gap-medium"]
       41 SETTABLEKS                       R13 R12 K6 ["tag"]
       43 DUPTABLE                         R13 K15 [{"IconHolder", "BodyText"}]
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R14 R15 K4 ["createElement"]
       47 GETUPVAL                         R16 5
       48 GETTABLEKS                       R15 R16 K5 ["View"]
       50 DUPTABLE                         R16 K7 [{"tag"}]
       51 LOADK                            R17 K16 ["align-y-center auto-xy padding-small"]
       52 SETTABLEKS                       R17 R16 K6 ["tag"]
       54 DUPTABLE                         R17 K18 [{"IconElement"}]
       55 GETUPVAL                         R19 4
       56 GETTABLEKS                       R18 R19 K4 ["createElement"]
       58 GETUPVAL                         R20 5
       59 GETTABLEKS                       R19 R20 K19 ["Image"]
       61 DUPTABLE                         R20 K22 [{"tag", "Image", "Size", "LayoutOrder"}]
       62 LOADK                            R21 K23 ["align-x-center align-y-center"]
       63 SETTABLEKS                       R21 R20 K6 ["tag"]
       65 LOADK                            R21 K24 ["rbxassetid://117968062074216"]
       66 SETTABLEKS                       R21 R20 K19 ["Image"]
       68 GETIMPORT                        R21 K27 [UDim2.fromOffset]
       70 LOADN                            R22 32
       71 LOADN                            R23 32
       72 CALL                             R21 2 1
       73 SETTABLEKS                       R21 R20 K20 ["Size"]
       75 LOADN                            R21 1
       76 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
       78 CALL                             R18 2 1
       79 SETTABLEKS                       R18 R17 K17 ["IconElement"]
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K13 ["IconHolder"]
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R14 R15 K4 ["createElement"]
       87 GETUPVAL                         R16 5
       88 GETTABLEKS                       R15 R16 K5 ["View"]
       90 DUPTABLE                         R16 K7 [{"tag"}]
       91 LOADK                            R17 K28 ["size-0-full auto-x shrink col gap-medium padding-small"]
       92 SETTABLEKS                       R17 R16 K6 ["tag"]
       94 DUPTABLE                         R17 K31 [{"HeaderText", "ErrorText"}]
       95 GETUPVAL                         R19 4
       96 GETTABLEKS                       R18 R19 K4 ["createElement"]
       98 GETUPVAL                         R20 5
       99 GETTABLEKS                       R19 R20 K32 ["Text"]
      101 DUPTABLE                         R20 K34 [{"tag", "Text", "testId", "LayoutOrder"}]
      102 LOADK                            R21 K35 ["text-align-x-left text-wrap text-title-medium size-full-0 auto-y"]
      103 SETTABLEKS                       R21 R20 K6 ["tag"]
      105 GETIMPORT                        R21 K38 [table.concat]
      107 NEWTABLE                         R22 0 3
      109 LOADK                            R25 K39 ["Upload"]
      110 LOADK                            R26 K40 ["Failure"]
      111 NAMECALL                         R23 R1 K41 ["getText"]
      113 CALL                             R23 3 1
      114 LOADK                            R24 K42 [": "]
      115 MOVE                             R25 R4
      116 SETLIST                          R22 R23 3 [1]
      118 CALL                             R21 1 1
      119 SETTABLEKS                       R21 R20 K32 ["Text"]
      121 LOADK                            R21 K43 ["headerText"]
      122 SETTABLEKS                       R21 R20 K33 ["testId"]
      124 LOADN                            R21 1
      125 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K29 ["HeaderText"]
      130 GETUPVAL                         R19 4
      131 GETTABLEKS                       R18 R19 K4 ["createElement"]
      133 GETUPVAL                         R20 5
      134 GETTABLEKS                       R19 R20 K32 ["Text"]
      136 DUPTABLE                         R20 K34 [{"tag", "Text", "testId", "LayoutOrder"}]
      137 LOADK                            R21 K44 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
      138 SETTABLEKS                       R21 R20 K6 ["tag"]
      140 SETTABLEKS                       R5 R20 K32 ["Text"]
      142 LOADK                            R21 K45 ["errorText"]
      143 SETTABLEKS                       R21 R20 K33 ["testId"]
      145 LOADN                            R21 2
      146 SETTABLEKS                       R21 R20 K21 ["LayoutOrder"]
      148 CALL                             R18 2 1
      149 SETTABLEKS                       R18 R17 K30 ["ErrorText"]
      151 CALL                             R14 3 1
      152 SETTABLEKS                       R14 R13 K14 ["BodyText"]
      154 CALL                             R10 3 1
      155 SETTABLEKS                       R10 R9 K9 ["Body"]
      157 GETUPVAL                         R11 4
      158 GETTABLEKS                       R10 R11 K4 ["createElement"]
      160 GETUPVAL                         R12 5
      161 GETTABLEKS                       R11 R12 K5 ["View"]
      163 DUPTABLE                         R12 K46 [{"tag", "LayoutOrder"}]
      164 LOADK                            R13 K47 ["row align-x-right padding-small size-full-900 gap-medium"]
      165 SETTABLEKS                       R13 R12 K6 ["tag"]
      167 LOADN                            R13 2
      168 SETTABLEKS                       R13 R12 K21 ["LayoutOrder"]
      170 DUPTABLE                         R13 K49 [{"Ok"}]
      171 GETUPVAL                         R15 4
      172 GETTABLEKS                       R14 R15 K4 ["createElement"]
      174 GETUPVAL                         R16 5
      175 GETTABLEKS                       R15 R16 K50 ["Button"]
      177 DUPTABLE                         R16 K57 [{"text", "variant", "width", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
      178 LOADK                            R19 K58 ["Buttons"]
      179 LOADK                            R20 K48 ["Ok"]
      180 NAMECALL                         R17 R1 K41 ["getText"]
      182 CALL                             R17 3 1
      183 SETTABLEKS                       R17 R16 K51 ["text"]
      185 GETUPVAL                         R20 5
      186 GETTABLEKS                       R19 R20 K59 ["Enums"]
      188 GETTABLEKS                       R18 R19 K60 ["ButtonVariant"]
      190 GETTABLEKS                       R17 R18 K61 ["Emphasis"]
      192 SETTABLEKS                       R17 R16 K52 ["variant"]
      194 GETIMPORT                        R17 K64 [UDim.new]
      196 LOADK                            R18 K65 [0.25]
      197 LOADN                            R19 0
      198 CALL                             R17 2 1
      199 SETTABLEKS                       R17 R16 K53 ["width"]
      201 NEWCLOSURE                       R17 P0
      202 CAPTURE                          VAL R2
      203 SETTABLEKS                       R17 R16 K54 ["onActivated"]
      205 LOADB                            R17 0
      206 SETTABLEKS                       R17 R16 K55 ["isDisabled"]
      208 GETUPVAL                         R20 5
      209 GETTABLEKS                       R19 R20 K59 ["Enums"]
      211 GETTABLEKS                       R18 R19 K66 ["InputSize"]
      213 GETTABLEKS                       R17 R18 K67 ["XSmall"]
      215 SETTABLEKS                       R17 R16 K56 ["size"]
      217 LOADN                            R17 2
      218 SETTABLEKS                       R17 R16 K21 ["LayoutOrder"]
      220 LOADK                            R17 K68 ["ok"]
      221 SETTABLEKS                       R17 R16 K33 ["testId"]
      223 CALL                             R14 2 1
      224 SETTABLEKS                       R14 R13 K48 ["Ok"]
      226 CALL                             R10 3 1
      227 SETTABLEKS                       R10 R9 K10 ["ButtonPanel"]
      229 CALL                             R6 3 -1
      230 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R8 K14 ["SingleMeshController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Utility"]
       47 GETTABLEKS                       R8 R9 K16 ["parseErrorTable"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Hooks"]
       56 GETTABLEKS                       R9 R10 K18 ["useErrors"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_1]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 RETURN                           R9 1

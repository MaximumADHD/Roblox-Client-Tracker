PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["provide"]
        3 NEWTABLE                         R1 0 2
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 SETLIST                          R1 R2 2 [1]
        9 DUPTABLE                         R2 K2 [{"App"}]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R3 R4 K3 ["createElement"]
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 1
       15 SETTABLEKS                       R3 R2 K1 ["App"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Dialog"]
        2 NAMECALL                         R0 R0 K1 ["use"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["createElement"]
        8 LOADK                            R2 K3 ["Frame"]
        9 DUPTABLE                         R3 K6 [{"BackgroundColor3", "Size"}]
       10 GETTABLEKS                       R4 R0 K7 ["BackgroundColor"]
       12 SETTABLEKS                       R4 R3 K4 ["BackgroundColor3"]
       14 GETIMPORT                        R4 K10 [UDim2.fromOffset]
       16 LOADN                            R5 150
       17 LOADN                            R6 150
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K5 ["Size"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKS                    R2 K0 [""] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        7 LOADK                            R2 K1 ["Storybook should have non-legacy React"]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K4 ["provide"]
       14 NEWTABLE                         R1 0 2
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 SETLIST                          R1 R2 2 [1]
       20 NEWTABLE                         R2 0 1
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R3 R4 K5 ["createElement"]
       25 DUPCLOSURE                       R4 K6 [PROTO_1]
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U0
       28 CALL                             R3 1 -1
       29 SETLIST                          R2 R3 -1 [1]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["Plugin"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K4 ["Parent"]
       31 GETTABLEKS                       R5 R6 K10 ["Application"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R7 R0 K4 ["Parent"]
       38 GETTABLEKS                       R6 R7 K11 ["Cryo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K6 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Util"]
       45 GETTABLEKS                       R7 R8 K13 ["React"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Style"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K15 ["Stylizer"]
       55 GETTABLEKS                       R9 R7 K16 ["Colors"]
       57 GETTABLEKS                       R10 R7 K17 ["ComponentSymbols"]
       59 GETTABLEKS                       R11 R7 K18 ["StyleKey"]
       61 GETIMPORT                        R12 K6 [require]
       63 GETTABLEKS                       R15 R0 K14 ["Style"]
       65 GETTABLEKS                       R14 R15 K19 ["Themes"]
       67 GETTABLEKS                       R13 R14 K20 ["StudioTheme"]
       69 CALL                             R12 1 1
       70 GETTABLEKS                       R14 R5 K21 ["Dictionary"]
       72 GETTABLEKS                       R13 R14 K22 ["join"]
       74 MOVE                             R14 R9
       75 DUPTABLE                         R15 K26 [{"Yellow", "Red", "Green"}]
       76 GETIMPORT                        R16 K29 [Color3.fromRGB]
       78 LOADN                            R17 230
       79 LOADN                            R18 230
       80 LOADN                            R19 0
       81 CALL                             R16 3 1
       82 SETTABLEKS                       R16 R15 K23 ["Yellow"]
       84 GETIMPORT                        R16 K29 [Color3.fromRGB]
       86 LOADN                            R17 255
       87 LOADN                            R18 0
       88 LOADN                            R19 0
       89 CALL                             R16 3 1
       90 SETTABLEKS                       R16 R15 K24 ["Red"]
       92 GETIMPORT                        R16 K29 [Color3.fromRGB]
       94 LOADN                            R17 0
       95 LOADN                            R18 255
       96 LOADN                            R19 0
       97 CALL                             R16 3 1
       98 SETTABLEKS                       R16 R15 K25 ["Green"]
      100 CALL                             R13 2 1
      101 MOVE                             R9 R13
      102 GETTABLEKS                       R13 R3 K30 ["new"]
      104 GETIMPORT                        R14 K32 [plugin]
      106 CALL                             R13 1 1
      107 GETTABLEKS                       R14 R12 K30 ["new"]
      109 CALL                             R14 0 1
      110 NEWTABLE                         R17 8 0
      112 GETTABLEKS                       R18 R11 K33 ["MainText"]
      114 SETTABLEKS                       R18 R17 K34 ["TextColor3"]
      116 GETTABLEKS                       R18 R10 K35 ["Button"]
      118 DUPTABLE                         R19 K37 [{"BackgroundColor", "TextColor3"}]
      119 GETTABLEKS                       R20 R11 K38 ["DialogMainButton"]
      121 SETTABLEKS                       R20 R19 K36 ["BackgroundColor"]
      123 GETTABLEKS                       R20 R11 K35 ["Button"]
      125 SETTABLEKS                       R20 R19 K34 ["TextColor3"]
      127 SETTABLE                         R19 R17 R18
      128 GETTABLEKS                       R18 R10 K39 ["Box"]
      130 DUPTABLE                         R19 K40 [{"BackgroundColor"}]
      131 GETTABLEKS                       R20 R11 K41 ["Mid"]
      133 SETTABLEKS                       R20 R19 K36 ["BackgroundColor"]
      135 SETTABLE                         R19 R17 R18
      136 GETTABLEKS                       R18 R10 K42 ["Dialog"]
      138 NEWTABLE                         R19 2 0
      140 GETTABLEKS                       R20 R11 K43 ["MainBackground"]
      142 SETTABLEKS                       R20 R19 K36 ["BackgroundColor"]
      144 DUPTABLE                         R20 K37 [{"BackgroundColor", "TextColor3"}]
      145 GETTABLEKS                       R21 R9 K44 ["lighter"]
      147 GETTABLEKS                       R22 R9 K45 ["Blue"]
      149 LOADK                            R23 K46 [0.5]
      150 CALL                             R21 2 1
      151 SETTABLEKS                       R21 R20 K36 ["BackgroundColor"]
      153 GETTABLEKS                       R21 R9 K47 ["Black"]
      155 SETTABLEKS                       R21 R20 K34 ["TextColor3"]
      157 SETTABLEKS                       R20 R19 K48 ["&Sub"]
      159 SETTABLE                         R19 R17 R18
      160 DUPTABLE                         R18 K37 [{"BackgroundColor", "TextColor3"}]
      161 GETTABLEKS                       R19 R9 K44 ["lighter"]
      163 GETTABLEKS                       R20 R9 K24 ["Red"]
      165 LOADK                            R21 K46 [0.5]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K36 ["BackgroundColor"]
      169 GETTABLEKS                       R19 R9 K24 ["Red"]
      171 SETTABLEKS                       R19 R18 K34 ["TextColor3"]
      173 SETTABLEKS                       R18 R17 K49 ["Important"]
      175 NAMECALL                         R15 R14 K50 ["extend"]
      177 CALL                             R15 2 0
      178 DUPTABLE                         R15 K52 [{"stories"}]
      179 NEWTABLE                         R16 0 2
      181 DUPTABLE                         R17 K55 [{"name", "story"}]
      182 LOADK                            R18 K15 ["Stylizer"]
      183 SETTABLEKS                       R18 R17 K53 ["name"]
      185 DUPCLOSURE                       R18 K56 [PROTO_0]
      186 CAPTURE                          VAL R2
      187 CAPTURE                          VAL R13
      188 CAPTURE                          VAL R14
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R4
      191 SETTABLEKS                       R18 R17 K54 ["story"]
      193 DUPTABLE                         R18 K55 [{"name", "story"}]
      194 LOADK                            R19 K57 [":use"]
      195 SETTABLEKS                       R19 R18 K53 ["name"]
      197 DUPCLOSURE                       R19 K58 [PROTO_2]
      198 CAPTURE                          VAL R6
      199 CAPTURE                          VAL R2
      200 CAPTURE                          VAL R13
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R8
      204 SETTABLEKS                       R19 R18 K54 ["story"]
      206 SETLIST                          R16 R17 2 [1]
      208 SETTABLEKS                       R16 R15 K51 ["stories"]
      210 RETURN                           R15 1

PROTO_0:
        0 GETIMPORT                        R1 K2 [DateTime.now]
        2 CALL                             R1 0 1
        3 NAMECALL                         R1 R1 K3 ["ToUniversalTime"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R0 R1 K4 ["Year"]
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 DUPCLOSURE                       R2 K0 [PROTO_0]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R3 2
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 LOADK                            R9 K1 ["Author%*"]
       14 MOVE                             R11 R7
       15 NAMECALL                         R9 R9 K2 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 GETUPVAL                         R10 3
       20 GETTABLEKS                       R9 R10 K3 ["createElement"]
       22 GETUPVAL                         R10 4
       23 DUPTABLE                         R11 K6 [{"userId", "LayoutOrder"}]
       24 SETTABLEKS                       R7 R11 K4 ["userId"]
       26 GETUPVAL                         R12 5
       27 CALL                             R12 0 1
       28 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       30 CALL                             R9 2 1
       31 SETTABLE                         R9 R2 R8
       32 FORGLOOP                         R3 2 ; [-20]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R3 R4 K3 ["createElement"]
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R4 R5 K7 ["View"]
       40 DUPTABLE                         R5 K9 [{"tag"}]
       41 LOADK                            R6 K10 ["size-full-0 auto-y col align-x-center gap-xlarge padding-large"]
       42 SETTABLEKS                       R6 R5 K8 ["tag"]
       44 DUPTABLE                         R6 K17 [{"Logo", "Title", "GitHub", "Authors", "BuildInfo", "Copy"}]
       45 GETUPVAL                         R8 3
       46 GETTABLEKS                       R7 R8 K3 ["createElement"]
       48 GETUPVAL                         R9 6
       49 GETTABLEKS                       R8 R9 K18 ["Image"]
       51 DUPTABLE                         R9 K20 [{"Image", "Size", "LayoutOrder"}]
       52 GETUPVAL                         R11 7
       53 GETTABLEKS                       R10 R11 K21 ["FLIPBOOK_LOGO"]
       55 SETTABLEKS                       R10 R9 K18 ["Image"]
       57 GETIMPORT                        R10 K24 [UDim2.fromOffset]
       59 GETTABLEKS                       R12 R0 K19 ["Size"]
       61 GETTABLEKS                       R11 R12 K25 ["Size_1600"]
       63 GETTABLEKS                       R13 R0 K19 ["Size"]
       65 GETTABLEKS                       R12 R13 K25 ["Size_1600"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K19 ["Size"]
       70 GETUPVAL                         R10 5
       71 CALL                             R10 0 1
       72 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K11 ["Logo"]
       77 GETUPVAL                         R8 3
       78 GETTABLEKS                       R7 R8 K3 ["createElement"]
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R8 R9 K26 ["Text"]
       83 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder", "Text"}]
       84 LOADK                            R10 K28 ["auto-xy text-heading-large"]
       85 SETTABLEKS                       R10 R9 K8 ["tag"]
       87 GETUPVAL                         R10 5
       88 CALL                             R10 0 1
       89 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       91 LOADK                            R10 K29 ["Flipbook 2.3.0"]
       92 SETTABLEKS                       R10 R9 K26 ["Text"]
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K12 ["Title"]
       97 GETUPVAL                         R8 3
       98 GETTABLEKS                       R7 R8 K3 ["createElement"]
      100 GETUPVAL                         R9 6
      101 GETTABLEKS                       R8 R9 K7 ["View"]
      103 DUPTABLE                         R9 K30 [{"tag", "LayoutOrder"}]
      104 LOADK                            R10 K31 ["auto-xy row gap-small align-y-center"]
      105 SETTABLEKS                       R10 R9 K8 ["tag"]
      107 GETUPVAL                         R10 5
      108 CALL                             R10 0 1
      109 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      111 DUPTABLE                         R10 K34 [{"Icon", "Label"}]
      112 GETUPVAL                         R12 3
      113 GETTABLEKS                       R11 R12 K3 ["createElement"]
      115 GETUPVAL                         R13 6
      116 GETTABLEKS                       R12 R13 K18 ["Image"]
      118 DUPTABLE                         R13 K35 [{"LayoutOrder", "Image", "Size"}]
      119 GETUPVAL                         R14 5
      120 CALL                             R14 0 1
      121 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      123 GETUPVAL                         R15 7
      124 GETTABLEKS                       R14 R15 K36 ["GITHUB_LOGO"]
      126 SETTABLEKS                       R14 R13 K18 ["Image"]
      128 GETIMPORT                        R14 K24 [UDim2.fromOffset]
      130 GETTABLEKS                       R16 R0 K19 ["Size"]
      132 GETTABLEKS                       R15 R16 K37 ["Size_400"]
      134 GETTABLEKS                       R17 R0 K19 ["Size"]
      136 GETTABLEKS                       R16 R17 K37 ["Size_400"]
      138 CALL                             R14 2 1
      139 SETTABLEKS                       R14 R13 K19 ["Size"]
      141 CALL                             R11 2 1
      142 SETTABLEKS                       R11 R10 K32 ["Icon"]
      144 GETUPVAL                         R12 3
      145 GETTABLEKS                       R11 R12 K3 ["createElement"]
      147 GETUPVAL                         R13 6
      148 GETTABLEKS                       R12 R13 K26 ["Text"]
      150 DUPTABLE                         R13 K38 [{"tag", "Text", "LayoutOrder"}]
      151 LOADK                            R14 K39 ["auto-xy text-body-medium"]
      152 SETTABLEKS                       R14 R13 K8 ["tag"]
      154 LOADK                            R14 K40 ["flipbook-labs/flipbook"]
      155 SETTABLEKS                       R14 R13 K26 ["Text"]
      157 GETUPVAL                         R14 5
      158 CALL                             R14 0 1
      159 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      161 CALL                             R11 2 1
      162 SETTABLEKS                       R11 R10 K33 ["Label"]
      164 CALL                             R7 3 1
      165 SETTABLEKS                       R7 R6 K13 ["GitHub"]
      167 GETUPVAL                         R8 3
      168 GETTABLEKS                       R7 R8 K3 ["createElement"]
      170 GETUPVAL                         R9 6
      171 GETTABLEKS                       R8 R9 K7 ["View"]
      173 DUPTABLE                         R9 K30 [{"tag", "LayoutOrder"}]
      174 LOADK                            R10 K41 ["auto-xy col align-x-center gap-medium"]
      175 SETTABLEKS                       R10 R9 K8 ["tag"]
      177 GETUPVAL                         R10 5
      178 CALL                             R10 0 1
      179 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      181 DUPTABLE                         R10 K43 [{"Title", "AuthorList"}]
      182 GETUPVAL                         R12 3
      183 GETTABLEKS                       R11 R12 K3 ["createElement"]
      185 GETUPVAL                         R13 6
      186 GETTABLEKS                       R12 R13 K26 ["Text"]
      188 DUPTABLE                         R13 K38 [{"tag", "Text", "LayoutOrder"}]
      189 LOADK                            R14 K44 ["auto-xy text-title-medium"]
      190 SETTABLEKS                       R14 R13 K8 ["tag"]
      192 LOADK                            R14 K45 ["Created by:"]
      193 SETTABLEKS                       R14 R13 K26 ["Text"]
      195 GETUPVAL                         R14 5
      196 CALL                             R14 0 1
      197 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      199 CALL                             R11 2 1
      200 SETTABLEKS                       R11 R10 K12 ["Title"]
      202 GETUPVAL                         R12 3
      203 GETTABLEKS                       R11 R12 K3 ["createElement"]
      205 GETUPVAL                         R13 6
      206 GETTABLEKS                       R12 R13 K7 ["View"]
      208 DUPTABLE                         R13 K30 [{"tag", "LayoutOrder"}]
      209 LOADK                            R14 K46 ["auto-xy row align-x-center gap-medium"]
      210 SETTABLEKS                       R14 R13 K8 ["tag"]
      212 GETUPVAL                         R14 5
      213 CALL                             R14 0 1
      214 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      216 MOVE                             R14 R2
      217 CALL                             R11 3 1
      218 SETTABLEKS                       R11 R10 K42 ["AuthorList"]
      220 CALL                             R7 3 1
      221 SETTABLEKS                       R7 R6 K14 ["Authors"]
      223 GETUPVAL                         R8 3
      224 GETTABLEKS                       R7 R8 K3 ["createElement"]
      226 GETUPVAL                         R8 8
      227 DUPTABLE                         R9 K48 [{"layoutOrder"}]
      228 GETUPVAL                         R10 5
      229 CALL                             R10 0 1
      230 SETTABLEKS                       R10 R9 K47 ["layoutOrder"]
      232 CALL                             R7 2 1
      233 SETTABLEKS                       R7 R6 K15 ["BuildInfo"]
      235 GETUPVAL                         R8 3
      236 GETTABLEKS                       R7 R8 K3 ["createElement"]
      238 GETUPVAL                         R9 6
      239 GETTABLEKS                       R8 R9 K26 ["Text"]
      241 DUPTABLE                         R9 K27 [{"tag", "LayoutOrder", "Text"}]
      242 LOADK                            R10 K39 ["auto-xy text-body-medium"]
      243 SETTABLEKS                       R10 R9 K8 ["tag"]
      245 GETUPVAL                         R10 5
      246 CALL                             R10 0 1
      247 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
      249 LOADK                            R11 K49 ["Copyright © 2021—%* flipbook-labs"]
      250 MOVE                             R13 R1
      251 NAMECALL                         R11 R11 K2 ["format"]
      253 CALL                             R11 2 1
      254 MOVE                             R10 R11
      255 SETTABLEKS                       R10 R9 K26 ["Text"]
      257 CALL                             R7 2 1
      258 SETTABLEKS                       R7 R6 K16 ["Copy"]
      260 CALL                             R3 3 -1
      261 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["RobloxPackages"]
       11 GETTABLEKS                       R1 R2 K6 ["Foundation"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Packages"]
       24 GETTABLEKS                       R2 R3 K8 ["React"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R5 K3 [script]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K9 ["BuildInfo"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R6 K3 [script]
       40 GETTABLEKS                       R5 R6 K4 ["Parent"]
       42 GETTABLEKS                       R4 R5 K10 ["RobloxProfile"]
       44 CALL                             R3 1 1
       45 GETIMPORT                        R4 K1 [require]
       47 GETIMPORT                        R8 K3 [script]
       49 GETTABLEKS                       R7 R8 K4 ["Parent"]
       51 GETTABLEKS                       R6 R7 K4 ["Parent"]
       53 GETTABLEKS                       R5 R6 K11 ["constants"]
       55 CALL                             R4 1 1
       56 GETIMPORT                        R5 K1 [require]
       58 GETIMPORT                        R10 K3 [script]
       60 GETTABLEKS                       R9 R10 K4 ["Parent"]
       62 GETTABLEKS                       R8 R9 K4 ["Parent"]
       64 GETTABLEKS                       R7 R8 K12 ["Common"]
       66 GETTABLEKS                       R6 R7 K13 ["nextLayoutOrder"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       71 GETTABLEKS                       R6 R7 K15 ["useTokens"]
       73 GETTABLEKS                       R7 R1 K16 ["useMemo"]
       75 NEWTABLE                         R8 0 2
       77 LOADK                            R9 K17 [1343930]
       78 LOADK                            R10 K18 [731053179]
       79 SETLIST                          R8 R9 2 [1]
       81 DUPCLOSURE                       R9 K19 [PROTO_1]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R0
       89 CAPTURE                          VAL R4
       90 CAPTURE                          VAL R2
       91 RETURN                           R9 1

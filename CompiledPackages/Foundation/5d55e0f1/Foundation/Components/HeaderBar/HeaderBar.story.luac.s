PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_2]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 LOADB                            R3 0
        6 CALL                             R2 1 2
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K1 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K4 [{"tag", "backgroundStyle"}]
       12 LOADK                            R7 K5 ["size-full-0 auto-y padding-large"]
       13 SETTABLEKS                       R7 R6 K2 ["tag"]
       15 GETTABLEKS                       R9 R0 K6 ["controls"]
       17 GETTABLEKS                       R8 R9 K7 ["hasBackground"]
       19 JUMPIFNOT                        R8 ; [+7]
       20 GETTABLEKS                       R9 R1 K8 ["Inverse"]
       22 GETTABLEKS                       R8 R9 K9 ["Surface"]
       24 GETTABLEKS                       R7 R8 K10 ["Surface_0"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R7
       28 SETTABLEKS                       R7 R6 K3 ["backgroundStyle"]
       30 DUPTABLE                         R7 K12 [{"HeaderBar"}]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K1 ["createElement"]
       34 GETUPVAL                         R10 3
       35 GETTABLEKS                       R9 R10 K13 ["Root"]
       37 DUPTABLE                         R10 K15 [{"isCompact", "hasBackground"}]
       38 GETTABLEKS                       R12 R0 K6 ["controls"]
       40 GETTABLEKS                       R11 R12 K14 ["isCompact"]
       42 SETTABLEKS                       R11 R10 K14 ["isCompact"]
       44 GETTABLEKS                       R12 R0 K6 ["controls"]
       46 GETTABLEKS                       R11 R12 K7 ["hasBackground"]
       48 SETTABLEKS                       R11 R10 K7 ["hasBackground"]
       50 DUPTABLE                         R11 K19 [{"Leading", "Content", "Trailing"}]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R12 R13 K1 ["createElement"]
       54 GETUPVAL                         R14 3
       55 GETTABLEKS                       R13 R14 K16 ["Leading"]
       57 LOADNIL                          R14
       58 DUPTABLE                         R15 K22 [{"Menu", "Title"}]
       59 GETUPVAL                         R17 1
       60 GETTABLEKS                       R16 R17 K1 ["createElement"]
       62 GETUPVAL                         R17 4
       63 DUPTABLE                         R18 K26 [{"icon", "onActivated", "LayoutOrder"}]
       64 GETUPVAL                         R21 5
       65 GETTABLEKS                       R20 R21 K27 ["Icon"]
       67 GETTABLEKS                       R19 R20 K28 ["ThreeBarsHorizontal"]
       69 SETTABLEKS                       R19 R18 K23 ["icon"]
       71 DUPCLOSURE                       R19 K29 [PROTO_0]
       72 SETTABLEKS                       R19 R18 K24 ["onActivated"]
       74 LOADN                            R19 1
       75 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
       77 CALL                             R16 2 1
       78 SETTABLEKS                       R16 R15 K20 ["Menu"]
       80 GETUPVAL                         R17 1
       81 GETTABLEKS                       R16 R17 K1 ["createElement"]
       83 GETUPVAL                         R17 6
       84 DUPTABLE                         R18 K31 [{"tag", "Text", "LayoutOrder"}]
       85 LOADK                            R19 K32 ["auto-xy content-emphasis text-heading-medium"]
       86 SETTABLEKS                       R19 R18 K2 ["tag"]
       88 GETTABLEKS                       R20 R0 K6 ["controls"]
       90 GETTABLEKS                       R19 R20 K33 ["title"]
       92 SETTABLEKS                       R19 R18 K30 ["Text"]
       94 LOADN                            R19 2
       95 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K21 ["Title"]
      100 CALL                             R12 3 1
      101 SETTABLEKS                       R12 R11 K16 ["Leading"]
      103 GETUPVAL                         R13 1
      104 GETTABLEKS                       R12 R13 K1 ["createElement"]
      106 GETUPVAL                         R14 3
      107 GETTABLEKS                       R13 R14 K17 ["Content"]
      109 LOADNIL                          R14
      110 DUPTABLE                         R15 K35 [{"Search"}]
      111 JUMPIFNOT                        R2 ; [+13]
      112 GETUPVAL                         R17 1
      113 GETTABLEKS                       R16 R17 K1 ["createElement"]
      115 GETUPVAL                         R17 7
      116 DUPTABLE                         R18 K38 [{"text", "onChanged"}]
      117 LOADK                            R19 K39 [""]
      118 SETTABLEKS                       R19 R18 K36 ["text"]
      120 DUPCLOSURE                       R19 K40 [PROTO_1]
      121 SETTABLEKS                       R19 R18 K37 ["onChanged"]
      123 CALL                             R16 2 1
      124 JUMP                             ; [+1]
      125 LOADNIL                          R16
      126 SETTABLEKS                       R16 R15 K34 ["Search"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K17 ["Content"]
      131 GETUPVAL                         R13 1
      132 GETTABLEKS                       R12 R13 K1 ["createElement"]
      134 GETUPVAL                         R14 3
      135 GETTABLEKS                       R13 R14 K18 ["Trailing"]
      137 LOADNIL                          R14
      138 DUPTABLE                         R15 K43 [{"Search", "Robux", "Notifications"}]
      139 GETUPVAL                         R17 1
      140 GETTABLEKS                       R16 R17 K1 ["createElement"]
      142 GETUPVAL                         R17 4
      143 DUPTABLE                         R18 K26 [{"icon", "onActivated", "LayoutOrder"}]
      144 GETUPVAL                         R21 5
      145 GETTABLEKS                       R20 R21 K27 ["Icon"]
      147 GETTABLEKS                       R19 R20 K44 ["MagnifyingGlass"]
      149 SETTABLEKS                       R19 R18 K23 ["icon"]
      151 NEWCLOSURE                       R19 P2
      152 CAPTURE                          VAL R3
      153 SETTABLEKS                       R19 R18 K24 ["onActivated"]
      155 LOADN                            R19 1
      156 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      158 CALL                             R16 2 1
      159 SETTABLEKS                       R16 R15 K34 ["Search"]
      161 GETUPVAL                         R17 1
      162 GETTABLEKS                       R16 R17 K1 ["createElement"]
      164 GETUPVAL                         R17 4
      165 DUPTABLE                         R18 K26 [{"icon", "onActivated", "LayoutOrder"}]
      166 GETUPVAL                         R21 5
      167 GETTABLEKS                       R20 R21 K27 ["Icon"]
      169 GETTABLEKS                       R19 R20 K41 ["Robux"]
      171 SETTABLEKS                       R19 R18 K23 ["icon"]
      173 DUPCLOSURE                       R19 K45 [PROTO_4]
      174 SETTABLEKS                       R19 R18 K24 ["onActivated"]
      176 LOADN                            R19 2
      177 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      179 CALL                             R16 2 1
      180 SETTABLEKS                       R16 R15 K41 ["Robux"]
      182 GETUPVAL                         R17 1
      183 GETTABLEKS                       R16 R17 K1 ["createElement"]
      185 GETUPVAL                         R17 4
      186 DUPTABLE                         R18 K26 [{"icon", "onActivated", "LayoutOrder"}]
      187 GETUPVAL                         R21 5
      188 GETTABLEKS                       R20 R21 K27 ["Icon"]
      190 GETTABLEKS                       R19 R20 K46 ["Bell"]
      192 SETTABLEKS                       R19 R18 K23 ["icon"]
      194 DUPCLOSURE                       R19 K47 [PROTO_5]
      195 SETTABLEKS                       R19 R18 K24 ["onActivated"]
      197 LOADN                            R19 3
      198 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
      200 CALL                             R16 2 1
      201 SETTABLEKS                       R16 R15 K42 ["Notifications"]
      203 CALL                             R12 3 1
      204 SETTABLEKS                       R12 R11 K18 ["Trailing"]
      206 CALL                             R8 3 1
      207 SETTABLEKS                       R8 R7 K11 ["HeaderBar"]
      209 CALL                             R4 3 -1
      210 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["BuilderIcons"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["SearchInput"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["IconButton"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["Text"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K9 ["Components"]
       44 GETTABLEKS                       R8 R9 K13 ["View"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R11 R0 K14 ["Providers"]
       51 GETTABLEKS                       R10 R11 K15 ["Style"]
       53 GETTABLEKS                       R9 R10 K16 ["useTokens"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETIMPORT                        R11 K1 [script]
       60 GETTABLEKS                       R10 R11 K4 ["Parent"]
       62 CALL                             R9 1 1
       63 DUPTABLE                         R10 K19 [{"controls", "stories"}]
       64 DUPTABLE                         R11 K23 [{"isCompact", "hasBackground", "title"}]
       65 LOADB                            R12 0
       66 SETTABLEKS                       R12 R11 K20 ["isCompact"]
       68 LOADB                            R12 1
       69 SETTABLEKS                       R12 R11 K21 ["hasBackground"]
       71 LOADK                            R12 K24 ["Title"]
       72 SETTABLEKS                       R12 R11 K22 ["title"]
       74 SETTABLEKS                       R11 R10 K17 ["controls"]
       76 NEWTABLE                         R11 0 1
       78 DUPTABLE                         R12 K27 [{"summary", "story"}]
       79 LOADK                            R13 K28 ["Default"]
       80 SETTABLEKS                       R13 R12 K25 ["summary"]
       82 DUPCLOSURE                       R13 K29 [PROTO_6]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R13 R12 K26 ["story"]
       93 SETLIST                          R11 R12 1 [1]
       95 SETTABLEKS                       R11 R10 K18 ["stories"]
       97 RETURN                           R10 1

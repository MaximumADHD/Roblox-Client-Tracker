PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{["tag"] = "size-full-0 auto-y padding-large col gap-small", ["backgroundStyle"]}]
        7 GETTABLEKS                       R6 R0 K5 ["hasBackground"]
        9 JUMPIFNOT                        R6 ; [+7]
       10 GETTABLEKS                       R5 R1 K6 ["Inverse"]
       12 GETTABLEKS                       R5 R5 K7 ["Surface"]
       14 GETTABLEKS                       R5 R5 K8 ["Surface_0"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R5
       18 SETTABLEKS                       R5 R4 K3 ["backgroundStyle"]
       20 GETTABLEKS                       R5 R0 K9 ["children"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Toggle menu"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R0 K2 ["controls"]
       11 DUPTABLE                         R6 K4 [{"HeaderBar"}]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K1 ["createElement"]
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R8 R8 K5 ["Root"]
       18 DUPTABLE                         R9 K7 [{"hasBackground"}]
       19 GETTABLEKS                       R10 R0 K2 ["controls"]
       21 GETTABLEKS                       R10 R10 K6 ["hasBackground"]
       23 SETTABLEKS                       R10 R9 K6 ["hasBackground"]
       25 DUPTABLE                         R10 K11 [{"Leading", "Content", "Trailing"}]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K1 ["createElement"]
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R12 R12 K8 ["Leading"]
       32 LOADNIL                          R13
       33 DUPTABLE                         R14 K14 [{"Actions", "Title"}]
       34 GETUPVAL                         R15 0
       35 GETTABLEKS                       R15 R15 K1 ["createElement"]
       37 GETUPVAL                         R16 2
       38 GETTABLEKS                       R16 R16 K12 ["Actions"]
       40 DUPTABLE                         R17 K16 [{"actions"}]
       41 NEWTABLE                         R18 0 1
       43 DUPTABLE                         R19 K21 [{["id"] = "menu", ["icon"], ["onActivated"]}]
       44 GETUPVAL                         R20 3
       45 GETTABLEKS                       R20 R20 K22 ["Icon"]
       47 GETTABLEKS                       R20 R20 K23 ["ThreeBarsHorizontal"]
       49 SETTABLEKS                       R20 R19 K19 ["icon"]
       51 DUPCLOSURE                       R20 K24 [PROTO_1]
       52 SETTABLEKS                       R20 R19 K20 ["onActivated"]
       54 SETLIST                          R18 R19 1 [1]
       56 SETTABLEKS                       R18 R17 K15 ["actions"]
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K12 ["Actions"]
       61 GETUPVAL                         R15 0
       62 GETTABLEKS                       R15 R15 K1 ["createElement"]
       64 GETUPVAL                         R16 4
       65 DUPTABLE                         R17 K30 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 2}]
       66 GETTABLEKS                       R18 R0 K2 ["controls"]
       68 GETTABLEKS                       R18 R18 K31 ["title"]
       70 SETTABLEKS                       R18 R17 K27 ["Text"]
       72 CALL                             R15 2 1
       73 SETTABLEKS                       R15 R14 K13 ["Title"]
       75 CALL                             R11 3 1
       76 SETTABLEKS                       R11 R10 K8 ["Leading"]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K1 ["createElement"]
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R12 R12 K9 ["Content"]
       84 LOADNIL                          R13
       85 DUPTABLE                         R14 K33 [{"Search"}]
       86 JUMPIFNOT                        R1 ; [+10]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K1 ["createElement"]
       90 GETUPVAL                         R16 5
       91 DUPTABLE                         R17 K37 [{["text"] = "", ["onChanged"]}]
       92 DUPCLOSURE                       R18 K38 [PROTO_2]
       93 SETTABLEKS                       R18 R17 K36 ["onChanged"]
       95 CALL                             R15 2 1
       96 JUMP                             ; [+1]
       97 LOADNIL                          R15
       98 SETTABLEKS                       R15 R14 K32 ["Search"]
      100 CALL                             R11 3 1
      101 SETTABLEKS                       R11 R10 K9 ["Content"]
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R11 R11 K1 ["createElement"]
      106 GETUPVAL                         R12 2
      107 GETTABLEKS                       R12 R12 K10 ["Trailing"]
      109 LOADNIL                          R13
      110 DUPTABLE                         R14 K39 [{"Actions"}]
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K1 ["createElement"]
      114 GETUPVAL                         R16 2
      115 GETTABLEKS                       R16 R16 K12 ["Actions"]
      117 DUPTABLE                         R17 K16 [{"actions"}]
      118 NEWTABLE                         R18 0 3
      120 DUPTABLE                         R19 K41 [{["id"] = "search", ["icon"], ["onActivated"]}]
      121 GETUPVAL                         R20 3
      122 GETTABLEKS                       R20 R20 K22 ["Icon"]
      124 GETTABLEKS                       R20 R20 K42 ["MagnifyingGlass"]
      126 SETTABLEKS                       R20 R19 K19 ["icon"]
      128 NEWCLOSURE                       R20 P2
      129 CAPTURE                          VAL R2
      130 SETTABLEKS                       R20 R19 K20 ["onActivated"]
      132 DUPTABLE                         R20 K44 [{["id"] = "robux", ["icon"], ["onActivated"]}]
      133 GETUPVAL                         R21 3
      134 GETTABLEKS                       R21 R21 K22 ["Icon"]
      136 GETTABLEKS                       R21 R21 K45 ["Robux"]
      138 SETTABLEKS                       R21 R20 K19 ["icon"]
      140 DUPCLOSURE                       R21 K46 [PROTO_5]
      141 SETTABLEKS                       R21 R20 K20 ["onActivated"]
      143 DUPTABLE                         R21 K48 [{["id"] = "notifications", ["icon"], ["onActivated"]}]
      144 GETUPVAL                         R22 3
      145 GETTABLEKS                       R22 R22 K22 ["Icon"]
      147 GETTABLEKS                       R22 R22 K49 ["Bell"]
      149 SETTABLEKS                       R22 R21 K19 ["icon"]
      151 DUPCLOSURE                       R22 K50 [PROTO_6]
      152 SETTABLEKS                       R22 R21 K20 ["onActivated"]
      154 SETLIST                          R18 R19 3 [1]
      156 SETTABLEKS                       R18 R17 K15 ["actions"]
      158 CALL                             R15 2 1
      159 SETTABLEKS                       R15 R14 K12 ["Actions"]
      161 CALL                             R11 3 1
      162 SETTABLEKS                       R11 R10 K10 ["Trailing"]
      164 CALL                             R7 3 1
      165 SETTABLEKS                       R7 R6 K3 ["HeaderBar"]
      167 CALL                             R3 3 -1
      168 RETURN                           R3 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Toggle menu"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Sign in"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R1 0 1
        2 DUPTABLE                         R2 K4 [{[1] = "menu", ["icon"], ["onActivated"]}]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K5 ["Icon"]
        6 GETTABLEKS                       R3 R3 K6 ["ThreeBarsHorizontal"]
        8 SETTABLEKS                       R3 R2 K2 ["icon"]
       10 DUPCLOSURE                       R3 K7 [PROTO_8]
       11 SETTABLEKS                       R3 R2 K3 ["onActivated"]
       13 SETLIST                          R1 R2 1 [1]
       15 NEWTABLE                         R2 0 3
       17 DUPTABLE                         R3 K9 [{[1] = "search", ["icon"], ["onActivated"]}]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K5 ["Icon"]
       21 GETTABLEKS                       R4 R4 K10 ["MagnifyingGlass"]
       23 SETTABLEKS                       R4 R3 K2 ["icon"]
       25 DUPCLOSURE                       R4 K11 [PROTO_9]
       26 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       28 DUPTABLE                         R4 K13 [{[1] = "robux", ["icon"], ["onActivated"]}]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K5 ["Icon"]
       32 GETTABLEKS                       R5 R5 K14 ["Robux"]
       34 SETTABLEKS                       R5 R4 K2 ["icon"]
       36 DUPCLOSURE                       R5 K15 [PROTO_10]
       37 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       39 DUPTABLE                         R5 K17 [{[1] = "notifications", ["icon"], ["onActivated"]}]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K5 ["Icon"]
       43 GETTABLEKS                       R6 R6 K18 ["Bell"]
       45 SETTABLEKS                       R6 R5 K2 ["icon"]
       47 DUPCLOSURE                       R6 K19 [PROTO_11]
       48 SETTABLEKS                       R6 R5 K3 ["onActivated"]
       50 SETLIST                          R2 R3 3 [1]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K20 ["createElement"]
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R5 R0 K21 ["controls"]
       58 DUPTABLE                         R6 K25 [{"LeadingAndTrailingActions", "TrailingActionsOnly", "TrailingButton"}]
       59 GETUPVAL                         R7 1
       60 GETTABLEKS                       R7 R7 K20 ["createElement"]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K26 ["Root"]
       65 DUPTABLE                         R9 K30 [{["hasBackground"], ["LayoutOrder"] = 1}]
       66 GETTABLEKS                       R10 R0 K21 ["controls"]
       68 GETTABLEKS                       R10 R10 K27 ["hasBackground"]
       70 SETTABLEKS                       R10 R9 K27 ["hasBackground"]
       72 DUPTABLE                         R10 K33 [{"Leading", "Trailing"}]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R11 R11 K20 ["createElement"]
       76 GETUPVAL                         R12 3
       77 GETTABLEKS                       R12 R12 K31 ["Leading"]
       79 LOADNIL                          R13
       80 DUPTABLE                         R14 K36 [{"Actions", "Title"}]
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K20 ["createElement"]
       84 GETUPVAL                         R16 3
       85 GETTABLEKS                       R16 R16 K34 ["Actions"]
       87 DUPTABLE                         R17 K38 [{"actions"}]
       88 SETTABLEKS                       R1 R17 K37 ["actions"]
       90 CALL                             R15 2 1
       91 SETTABLEKS                       R15 R14 K34 ["Actions"]
       93 GETUPVAL                         R15 1
       94 GETTABLEKS                       R15 R15 K20 ["createElement"]
       96 GETUPVAL                         R16 4
       97 DUPTABLE                         R17 K43 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 2}]
       98 GETTABLEKS                       R18 R0 K21 ["controls"]
      100 GETTABLEKS                       R18 R18 K44 ["title"]
      102 SETTABLEKS                       R18 R17 K41 ["Text"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K35 ["Title"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K31 ["Leading"]
      110 GETUPVAL                         R11 1
      111 GETTABLEKS                       R11 R11 K20 ["createElement"]
      113 GETUPVAL                         R12 3
      114 GETTABLEKS                       R12 R12 K32 ["Trailing"]
      116 LOADNIL                          R13
      117 DUPTABLE                         R14 K45 [{"Actions"}]
      118 GETUPVAL                         R15 1
      119 GETTABLEKS                       R15 R15 K20 ["createElement"]
      121 GETUPVAL                         R16 3
      122 GETTABLEKS                       R16 R16 K34 ["Actions"]
      124 DUPTABLE                         R17 K38 [{"actions"}]
      125 SETTABLEKS                       R2 R17 K37 ["actions"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K34 ["Actions"]
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K32 ["Trailing"]
      133 CALL                             R7 3 1
      134 SETTABLEKS                       R7 R6 K22 ["LeadingAndTrailingActions"]
      136 GETUPVAL                         R7 1
      137 GETTABLEKS                       R7 R7 K20 ["createElement"]
      139 GETUPVAL                         R8 3
      140 GETTABLEKS                       R8 R8 K26 ["Root"]
      142 DUPTABLE                         R9 K46 [{["hasBackground"], ["LayoutOrder"] = 2}]
      143 GETTABLEKS                       R10 R0 K21 ["controls"]
      145 GETTABLEKS                       R10 R10 K27 ["hasBackground"]
      147 SETTABLEKS                       R10 R9 K27 ["hasBackground"]
      149 DUPTABLE                         R10 K33 [{"Leading", "Trailing"}]
      150 GETUPVAL                         R11 1
      151 GETTABLEKS                       R11 R11 K20 ["createElement"]
      153 GETUPVAL                         R12 3
      154 GETTABLEKS                       R12 R12 K31 ["Leading"]
      156 LOADNIL                          R13
      157 DUPTABLE                         R14 K47 [{"Title"}]
      158 GETUPVAL                         R15 1
      159 GETTABLEKS                       R15 R15 K20 ["createElement"]
      161 GETUPVAL                         R16 4
      162 DUPTABLE                         R17 K48 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"]}]
      163 GETTABLEKS                       R18 R0 K21 ["controls"]
      165 GETTABLEKS                       R18 R18 K44 ["title"]
      167 SETTABLEKS                       R18 R17 K41 ["Text"]
      169 CALL                             R15 2 1
      170 SETTABLEKS                       R15 R14 K35 ["Title"]
      172 CALL                             R11 3 1
      173 SETTABLEKS                       R11 R10 K31 ["Leading"]
      175 GETUPVAL                         R11 1
      176 GETTABLEKS                       R11 R11 K20 ["createElement"]
      178 GETUPVAL                         R12 3
      179 GETTABLEKS                       R12 R12 K32 ["Trailing"]
      181 LOADNIL                          R13
      182 DUPTABLE                         R14 K45 [{"Actions"}]
      183 GETUPVAL                         R15 1
      184 GETTABLEKS                       R15 R15 K20 ["createElement"]
      186 GETUPVAL                         R16 3
      187 GETTABLEKS                       R16 R16 K34 ["Actions"]
      189 DUPTABLE                         R17 K38 [{"actions"}]
      190 SETTABLEKS                       R2 R17 K37 ["actions"]
      192 CALL                             R15 2 1
      193 SETTABLEKS                       R15 R14 K34 ["Actions"]
      195 CALL                             R11 3 1
      196 SETTABLEKS                       R11 R10 K32 ["Trailing"]
      198 CALL                             R7 3 1
      199 SETTABLEKS                       R7 R6 K23 ["TrailingActionsOnly"]
      201 GETUPVAL                         R7 1
      202 GETTABLEKS                       R7 R7 K20 ["createElement"]
      204 GETUPVAL                         R8 3
      205 GETTABLEKS                       R8 R8 K26 ["Root"]
      207 DUPTABLE                         R9 K50 [{["hasBackground"], ["LayoutOrder"] = 3}]
      208 GETTABLEKS                       R10 R0 K21 ["controls"]
      210 GETTABLEKS                       R10 R10 K27 ["hasBackground"]
      212 SETTABLEKS                       R10 R9 K27 ["hasBackground"]
      214 DUPTABLE                         R10 K33 [{"Leading", "Trailing"}]
      215 GETUPVAL                         R11 1
      216 GETTABLEKS                       R11 R11 K20 ["createElement"]
      218 GETUPVAL                         R12 3
      219 GETTABLEKS                       R12 R12 K31 ["Leading"]
      221 LOADNIL                          R13
      222 DUPTABLE                         R14 K36 [{"Actions", "Title"}]
      223 GETUPVAL                         R15 1
      224 GETTABLEKS                       R15 R15 K20 ["createElement"]
      226 GETUPVAL                         R16 3
      227 GETTABLEKS                       R16 R16 K34 ["Actions"]
      229 DUPTABLE                         R17 K38 [{"actions"}]
      230 SETTABLEKS                       R1 R17 K37 ["actions"]
      232 CALL                             R15 2 1
      233 SETTABLEKS                       R15 R14 K34 ["Actions"]
      235 GETUPVAL                         R15 1
      236 GETTABLEKS                       R15 R15 K20 ["createElement"]
      238 GETUPVAL                         R16 4
      239 DUPTABLE                         R17 K43 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 2}]
      240 GETTABLEKS                       R18 R0 K21 ["controls"]
      242 GETTABLEKS                       R18 R18 K44 ["title"]
      244 SETTABLEKS                       R18 R17 K41 ["Text"]
      246 CALL                             R15 2 1
      247 SETTABLEKS                       R15 R14 K35 ["Title"]
      249 CALL                             R11 3 1
      250 SETTABLEKS                       R11 R10 K31 ["Leading"]
      252 GETUPVAL                         R11 1
      253 GETTABLEKS                       R11 R11 K20 ["createElement"]
      255 GETUPVAL                         R12 3
      256 GETTABLEKS                       R12 R12 K32 ["Trailing"]
      258 LOADNIL                          R13
      259 DUPTABLE                         R14 K52 [{"Button"}]
      260 GETUPVAL                         R15 1
      261 GETTABLEKS                       R15 R15 K20 ["createElement"]
      263 GETUPVAL                         R16 5
      264 DUPTABLE                         R17 K55 [{["text"] = "Sign in", ["onActivated"]}]
      265 DUPCLOSURE                       R18 K56 [PROTO_12]
      266 SETTABLEKS                       R18 R17 K3 ["onActivated"]
      268 CALL                             R15 2 1
      269 SETTABLEKS                       R15 R14 K51 ["Button"]
      271 CALL                             R11 3 1
      272 SETTABLEKS                       R11 R10 K32 ["Trailing"]
      274 CALL                             R7 3 1
      275 SETTABLEKS                       R7 R6 K24 ["TrailingButton"]
      277 CALL                             R3 3 -1
      278 RETURN                           R3 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Button activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K1 ["useState"]
       26 LOADB                            R7 0
       27 CALL                             R6 1 2
       28 NOT                              R8 R5
       29 JUMPIF                           R8 ; [+1]
       30 NOT                              R8 R6
       31 NOT                              R10 R5
       32 OR                               R9 R10 R6
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K4 ["createElement"]
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R12 R0 K0 ["controls"]
       39 DUPTABLE                         R13 K6 [{"Story"}]
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K4 ["createElement"]
       43 GETUPVAL                         R15 4
       44 DUPTABLE                         R16 K13 [{["tag"] = "row size-full-0 auto-y bg-surface-0 stroke-default", ["sizeConstraint"], ["LayoutOrder"] = 1, ["ref"]}]
       45 DUPTABLE                         R17 K15 [{"MaxSize"}]
       46 GETIMPORT                        R18 K18 [Vector2.new]
       48 LOADK                            R19 K19 [∞]
       49 LOADN                            R20 300
       50 CALL                             R18 2 1
       51 SETTABLEKS                       R18 R17 K14 ["MaxSize"]
       53 SETTABLEKS                       R17 R16 K9 ["sizeConstraint"]
       55 SETTABLEKS                       R3 R16 K12 ["ref"]
       57 DUPTABLE                         R17 K23 [{"ChatHistory", "Divider", "MessageView"}]
       58 JUMPIFNOT                        R8 ; [+173]
       59 GETUPVAL                         R18 0
       60 GETTABLEKS                       R18 R18 K4 ["createElement"]
       62 GETUPVAL                         R19 4
       63 DUPTABLE                         R20 K25 [{["tag"] = "col size-full shrink", ["sizeConstraint"], ["LayoutOrder"] = 1}]
       64 DUPTABLE                         R21 K15 [{"MaxSize"}]
       65 GETIMPORT                        R22 K18 [Vector2.new]
       67 GETUPVAL                         R24 5
       68 GETTABLEKS                       R24 R24 K26 ["widths"]
       70 GETUPVAL                         R25 2
       71 GETTABLEKS                       R25 R25 K3 ["Small"]
       73 GETTABLE                         R23 R24 R25
       74 LOADK                            R24 K19 [∞]
       75 CALL                             R22 2 1
       76 SETTABLEKS                       R22 R21 K14 ["MaxSize"]
       78 SETTABLEKS                       R21 R20 K9 ["sizeConstraint"]
       80 DUPTABLE                         R21 K29 [{"HeaderBar", "Content"}]
       81 GETUPVAL                         R22 0
       82 GETTABLEKS                       R22 R22 K4 ["createElement"]
       84 GETUPVAL                         R23 6
       85 GETTABLEKS                       R23 R23 K30 ["Root"]
       87 DUPTABLE                         R24 K32 [{["hasBackground"], ["LayoutOrder"] = 1}]
       88 GETTABLEKS                       R25 R1 K31 ["hasBackground"]
       90 SETTABLEKS                       R25 R24 K31 ["hasBackground"]
       92 DUPTABLE                         R25 K35 [{"Leading", "Trailing"}]
       93 GETUPVAL                         R26 0
       94 GETTABLEKS                       R26 R26 K4 ["createElement"]
       96 GETUPVAL                         R27 6
       97 GETTABLEKS                       R27 R27 K33 ["Leading"]
       99 LOADNIL                          R28
      100 DUPTABLE                         R29 K37 [{"Title"}]
      101 GETUPVAL                         R30 0
      102 GETTABLEKS                       R30 R30 K4 ["createElement"]
      104 GETUPVAL                         R31 7
      105 DUPTABLE                         R32 K40 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 1}]
      106 GETTABLEKS                       R33 R1 K41 ["title"]
      108 SETTABLEKS                       R33 R32 K39 ["Text"]
      110 CALL                             R30 2 1
      111 SETTABLEKS                       R30 R29 K36 ["Title"]
      113 CALL                             R26 3 1
      114 SETTABLEKS                       R26 R25 K33 ["Leading"]
      116 GETUPVAL                         R26 0
      117 GETTABLEKS                       R26 R26 K4 ["createElement"]
      119 GETUPVAL                         R27 6
      120 GETTABLEKS                       R27 R27 K34 ["Trailing"]
      122 LOADNIL                          R28
      123 DUPTABLE                         R29 K45 [{"Search", "Robux", "Notifications"}]
      124 GETUPVAL                         R30 0
      125 GETTABLEKS                       R30 R30 K4 ["createElement"]
      127 GETUPVAL                         R31 8
      128 DUPTABLE                         R32 K48 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
      129 GETUPVAL                         R33 9
      130 GETTABLEKS                       R33 R33 K49 ["Icon"]
      132 GETTABLEKS                       R33 R33 K50 ["MagnifyingGlass"]
      134 SETTABLEKS                       R33 R32 K46 ["icon"]
      136 DUPCLOSURE                       R33 K51 [PROTO_14]
      137 SETTABLEKS                       R33 R32 K47 ["onActivated"]
      139 CALL                             R30 2 1
      140 SETTABLEKS                       R30 R29 K42 ["Search"]
      142 GETUPVAL                         R30 0
      143 GETTABLEKS                       R30 R30 K4 ["createElement"]
      145 GETUPVAL                         R31 8
      146 DUPTABLE                         R32 K53 [{["icon"], ["onActivated"], ["LayoutOrder"] = 2}]
      147 GETUPVAL                         R33 9
      148 GETTABLEKS                       R33 R33 K49 ["Icon"]
      150 GETTABLEKS                       R33 R33 K43 ["Robux"]
      152 SETTABLEKS                       R33 R32 K46 ["icon"]
      154 DUPCLOSURE                       R33 K54 [PROTO_15]
      155 SETTABLEKS                       R33 R32 K47 ["onActivated"]
      157 CALL                             R30 2 1
      158 SETTABLEKS                       R30 R29 K43 ["Robux"]
      160 GETUPVAL                         R30 0
      161 GETTABLEKS                       R30 R30 K4 ["createElement"]
      163 GETUPVAL                         R31 8
      164 DUPTABLE                         R32 K56 [{["icon"], ["onActivated"], ["LayoutOrder"] = 3}]
      165 GETUPVAL                         R33 9
      166 GETTABLEKS                       R33 R33 K49 ["Icon"]
      168 GETTABLEKS                       R33 R33 K57 ["Bell"]
      170 SETTABLEKS                       R33 R32 K46 ["icon"]
      172 DUPCLOSURE                       R33 K58 [PROTO_16]
      173 SETTABLEKS                       R33 R32 K47 ["onActivated"]
      175 CALL                             R30 2 1
      176 SETTABLEKS                       R30 R29 K44 ["Notifications"]
      178 CALL                             R26 3 1
      179 SETTABLEKS                       R26 R25 K34 ["Trailing"]
      181 CALL                             R22 3 1
      182 SETTABLEKS                       R22 R21 K27 ["HeaderBar"]
      184 GETUPVAL                         R22 0
      185 GETTABLEKS                       R22 R22 K4 ["createElement"]
      187 GETUPVAL                         R23 4
      188 DUPTABLE                         R24 K60 [{["tag"] = "col size-full-0 fill gap-medium padding-large", ["LayoutOrder"] = 2}]
      189 DUPTABLE                         R25 K63 [{"Description", "ChatRow"}]
      190 GETUPVAL                         R26 0
      191 GETTABLEKS                       R26 R26 K4 ["createElement"]
      193 GETUPVAL                         R27 7
      194 DUPTABLE                         R28 K66 [{["tag"] = "size-full-0 auto-y content-default text-body-medium text-align-x-left", ["Text"] = "Recent conversations", ["LayoutOrder"] = 1}]
      195 CALL                             R26 2 1
      196 SETTABLEKS                       R26 R25 K61 ["Description"]
      198 GETUPVAL                         R26 0
      199 GETTABLEKS                       R26 R26 K4 ["createElement"]
      201 GETUPVAL                         R27 10
      202 DUPTABLE                         R28 K72 [{["text"] = "Username", ["variant"], ["size"], ["width"], ["onActivated"], ["LayoutOrder"] = 2}]
      203 GETUPVAL                         R29 11
      204 GETTABLEKS                       R29 R29 K73 ["Standard"]
      206 SETTABLEKS                       R29 R28 K69 ["variant"]
      208 GETUPVAL                         R29 12
      209 GETTABLEKS                       R29 R29 K74 ["Medium"]
      211 SETTABLEKS                       R29 R28 K70 ["size"]
      213 GETIMPORT                        R29 K76 [UDim.new]
      215 LOADN                            R30 1
      216 LOADN                            R31 0
      217 CALL                             R29 2 1
      218 SETTABLEKS                       R29 R28 K71 ["width"]
      220 NEWCLOSURE                       R29 P3
      221 CAPTURE                          VAL R7
      222 SETTABLEKS                       R29 R28 K47 ["onActivated"]
      224 CALL                             R26 2 1
      225 SETTABLEKS                       R26 R25 K62 ["ChatRow"]
      227 CALL                             R22 3 1
      228 SETTABLEKS                       R22 R21 K28 ["Content"]
      230 CALL                             R18 3 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R18
      233 SETTABLEKS                       R18 R17 K20 ["ChatHistory"]
      235 JUMPIFNOT                        R5 ; [+2]
      236 LOADNIL                          R18
      237 JUMP                             ; [+11]
      238 GETUPVAL                         R18 0
      239 GETTABLEKS                       R18 R18 K4 ["createElement"]
      241 GETUPVAL                         R19 13
      242 DUPTABLE                         R20 K78 [{["orientation"], ["LayoutOrder"] = 2}]
      243 GETUPVAL                         R21 14
      244 GETTABLEKS                       R21 R21 K79 ["Vertical"]
      246 SETTABLEKS                       R21 R20 K77 ["orientation"]
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K21 ["Divider"]
      251 JUMPIFNOT                        R9 ; [+143]
      252 GETUPVAL                         R18 0
      253 GETTABLEKS                       R18 R18 K4 ["createElement"]
      255 GETUPVAL                         R19 4
      256 DUPTABLE                         R20 K81 [{["tag"] = "col size-full fill", ["LayoutOrder"] = 3}]
      257 DUPTABLE                         R21 K29 [{"HeaderBar", "Content"}]
      258 GETUPVAL                         R22 0
      259 GETTABLEKS                       R22 R22 K4 ["createElement"]
      261 GETUPVAL                         R23 6
      262 GETTABLEKS                       R23 R23 K30 ["Root"]
      264 DUPTABLE                         R24 K32 [{["hasBackground"], ["LayoutOrder"] = 1}]
      265 GETTABLEKS                       R25 R1 K31 ["hasBackground"]
      267 SETTABLEKS                       R25 R24 K31 ["hasBackground"]
      269 DUPTABLE                         R25 K35 [{"Leading", "Trailing"}]
      270 GETUPVAL                         R26 0
      271 GETTABLEKS                       R26 R26 K4 ["createElement"]
      273 GETUPVAL                         R27 6
      274 GETTABLEKS                       R27 R27 K33 ["Leading"]
      276 LOADNIL                          R28
      277 DUPTABLE                         R29 K84 [{"Back", "Account"}]
      278 JUMPIFNOT                        R5 ; [+18]
      279 GETUPVAL                         R30 0
      280 GETTABLEKS                       R30 R30 K4 ["createElement"]
      282 GETUPVAL                         R31 8
      283 DUPTABLE                         R32 K87 [{["icon"], ["isCircular"] = True, ["onActivated"], ["LayoutOrder"] = 1}]
      284 GETUPVAL                         R33 9
      285 GETTABLEKS                       R33 R33 K49 ["Icon"]
      287 GETTABLEKS                       R33 R33 K88 ["ChevronLargeLeft"]
      289 SETTABLEKS                       R33 R32 K46 ["icon"]
      291 NEWCLOSURE                       R33 P4
      292 CAPTURE                          VAL R7
      293 SETTABLEKS                       R33 R32 K47 ["onActivated"]
      295 CALL                             R30 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R30
      298 SETTABLEKS                       R30 R29 K82 ["Back"]
      300 GETUPVAL                         R30 0
      301 GETTABLEKS                       R30 R30 K4 ["createElement"]
      303 GETUPVAL                         R31 4
      304 DUPTABLE                         R32 K90 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"] = 2}]
      305 DUPTABLE                         R33 K92 [{"Avatar", "Text"}]
      306 GETUPVAL                         R34 0
      307 GETTABLEKS                       R34 R34 K4 ["createElement"]
      309 GETUPVAL                         R35 15
      310 DUPTABLE                         R36 K95 [{["userId"] = 24813339, ["size"], ["LayoutOrder"] = 1}]
      311 GETUPVAL                         R37 12
      312 GETTABLEKS                       R37 R37 K74 ["Medium"]
      314 SETTABLEKS                       R37 R36 K70 ["size"]
      316 CALL                             R34 2 1
      317 SETTABLEKS                       R34 R33 K91 ["Avatar"]
      319 GETUPVAL                         R34 0
      320 GETTABLEKS                       R34 R34 K4 ["createElement"]
      322 GETUPVAL                         R35 4
      323 DUPTABLE                         R36 K97 [{["tag"] = "col auto-xy", ["LayoutOrder"] = 2}]
      324 DUPTABLE                         R37 K100 [{"Name", "Handle"}]
      325 GETUPVAL                         R38 0
      326 GETTABLEKS                       R38 R38 K4 ["createElement"]
      328 GETUPVAL                         R39 7
      329 DUPTABLE                         R40 K102 [{["tag"] = "auto-xy content-emphasis text-label-medium", ["Text"] = "Username", ["LayoutOrder"] = 1}]
      330 CALL                             R38 2 1
      331 SETTABLEKS                       R38 R37 K98 ["Name"]
      333 GETUPVAL                         R38 0
      334 GETTABLEKS                       R38 R38 K4 ["createElement"]
      336 GETUPVAL                         R39 7
      337 DUPTABLE                         R40 K105 [{["tag"] = "auto-xy content-default text-body-small", ["Text"] = "@handle", ["LayoutOrder"] = 2}]
      338 CALL                             R38 2 1
      339 SETTABLEKS                       R38 R37 K99 ["Handle"]
      341 CALL                             R34 3 1
      342 SETTABLEKS                       R34 R33 K39 ["Text"]
      344 CALL                             R30 3 1
      345 SETTABLEKS                       R30 R29 K83 ["Account"]
      347 CALL                             R26 3 1
      348 SETTABLEKS                       R26 R25 K33 ["Leading"]
      350 GETUPVAL                         R26 0
      351 GETTABLEKS                       R26 R26 K4 ["createElement"]
      353 GETUPVAL                         R27 6
      354 GETTABLEKS                       R27 R27 K34 ["Trailing"]
      356 LOADNIL                          R28
      357 DUPTABLE                         R29 K107 [{"Button"}]
      358 GETUPVAL                         R30 0
      359 GETTABLEKS                       R30 R30 K4 ["createElement"]
      361 GETUPVAL                         R31 10
      362 DUPTABLE                         R32 K108 [{["text"] = "Button", ["variant"], ["size"], ["onActivated"], ["LayoutOrder"] = 1}]
      363 GETUPVAL                         R33 11
      364 GETTABLEKS                       R33 R33 K73 ["Standard"]
      366 SETTABLEKS                       R33 R32 K69 ["variant"]
      368 GETUPVAL                         R33 12
      369 GETTABLEKS                       R33 R33 K74 ["Medium"]
      371 SETTABLEKS                       R33 R32 K70 ["size"]
      373 DUPCLOSURE                       R33 K109 [PROTO_19]
      374 SETTABLEKS                       R33 R32 K47 ["onActivated"]
      376 CALL                             R30 2 1
      377 SETTABLEKS                       R30 R29 K106 ["Button"]
      379 CALL                             R26 3 1
      380 SETTABLEKS                       R26 R25 K34 ["Trailing"]
      382 CALL                             R22 3 1
      383 SETTABLEKS                       R22 R21 K27 ["HeaderBar"]
      385 GETUPVAL                         R22 0
      386 GETTABLEKS                       R22 R22 K4 ["createElement"]
      388 GETUPVAL                         R23 7
      389 DUPTABLE                         R24 K112 [{["tag"] = "size-full-0 fill content-default text-body-medium padding-large text-align-x-left text-align-y-top", ["Text"] = "Conversation pane", ["LayoutOrder"] = 2}]
      390 CALL                             R22 2 1
      391 SETTABLEKS                       R22 R21 K28 ["Content"]
      393 CALL                             R18 3 1
      394 JUMP                             ; [+1]
      395 LOADNIL                          R18
      396 SETTABLEKS                       R18 R17 K22 ["MessageView"]
      398 CALL                             R14 3 1
      399 SETTABLEKS                       R14 R13 K5 ["Story"]
      401 CALL                             R10 3 -1
      402 RETURN                           R10 -1

PROTO_21:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R8 R0 K0 ["controls"]
       29 DUPTABLE                         R9 K6 [{"Story"}]
       30 JUMPIFNOT                        R5 ; [+135]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K4 ["createElement"]
       34 GETUPVAL                         R11 4
       35 DUPTABLE                         R12 K12 [{["tag"] = "col size-full-0 auto-y bg-surface-0 stroke-default", ["LayoutOrder"] = 1, ["ref"]}]
       36 SETTABLEKS                       R3 R12 K11 ["ref"]
       38 DUPTABLE                         R13 K15 [{"HeaderBar", "Content"}]
       39 GETUPVAL                         R14 0
       40 GETTABLEKS                       R14 R14 K4 ["createElement"]
       42 GETUPVAL                         R15 5
       43 GETTABLEKS                       R15 R15 K16 ["Root"]
       45 DUPTABLE                         R16 K18 [{["hasBackground"], ["LayoutOrder"] = 1}]
       46 GETTABLEKS                       R17 R1 K17 ["hasBackground"]
       48 SETTABLEKS                       R17 R16 K17 ["hasBackground"]
       50 DUPTABLE                         R17 K21 [{"Leading", "Trailing"}]
       51 GETUPVAL                         R18 0
       52 GETTABLEKS                       R18 R18 K4 ["createElement"]
       54 GETUPVAL                         R19 5
       55 GETTABLEKS                       R19 R19 K19 ["Leading"]
       57 LOADNIL                          R20
       58 DUPTABLE                         R21 K24 [{"Menu", "Logo"}]
       59 GETUPVAL                         R22 0
       60 GETTABLEKS                       R22 R22 K4 ["createElement"]
       62 GETUPVAL                         R23 6
       63 DUPTABLE                         R24 K27 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
       64 GETUPVAL                         R25 7
       65 GETTABLEKS                       R25 R25 K28 ["Icon"]
       67 GETTABLEKS                       R25 R25 K29 ["ThreeBarsHorizontal"]
       69 SETTABLEKS                       R25 R24 K25 ["icon"]
       71 DUPCLOSURE                       R25 K30 [PROTO_21]
       72 SETTABLEKS                       R25 R24 K26 ["onActivated"]
       74 CALL                             R22 2 1
       75 SETTABLEKS                       R22 R21 K22 ["Menu"]
       77 GETUPVAL                         R22 0
       78 GETTABLEKS                       R22 R22 K4 ["createElement"]
       80 GETUPVAL                         R23 8
       81 DUPTABLE                         R24 K35 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"] = "ROBLOX", ["LayoutOrder"] = 2}]
       82 CALL                             R22 2 1
       83 SETTABLEKS                       R22 R21 K23 ["Logo"]
       85 CALL                             R18 3 1
       86 SETTABLEKS                       R18 R17 K19 ["Leading"]
       88 GETUPVAL                         R18 0
       89 GETTABLEKS                       R18 R18 K4 ["createElement"]
       91 GETUPVAL                         R19 5
       92 GETTABLEKS                       R19 R19 K20 ["Trailing"]
       94 LOADNIL                          R20
       95 DUPTABLE                         R21 K39 [{"Search", "Robux", "Notifications"}]
       96 GETUPVAL                         R22 0
       97 GETTABLEKS                       R22 R22 K4 ["createElement"]
       99 GETUPVAL                         R23 6
      100 DUPTABLE                         R24 K27 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
      101 GETUPVAL                         R25 7
      102 GETTABLEKS                       R25 R25 K28 ["Icon"]
      104 GETTABLEKS                       R25 R25 K40 ["MagnifyingGlass"]
      106 SETTABLEKS                       R25 R24 K25 ["icon"]
      108 DUPCLOSURE                       R25 K41 [PROTO_22]
      109 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      111 CALL                             R22 2 1
      112 SETTABLEKS                       R22 R21 K36 ["Search"]
      114 GETUPVAL                         R22 0
      115 GETTABLEKS                       R22 R22 K4 ["createElement"]
      117 GETUPVAL                         R23 6
      118 DUPTABLE                         R24 K42 [{["icon"], ["onActivated"], ["LayoutOrder"] = 2}]
      119 GETUPVAL                         R25 7
      120 GETTABLEKS                       R25 R25 K28 ["Icon"]
      122 GETTABLEKS                       R25 R25 K37 ["Robux"]
      124 SETTABLEKS                       R25 R24 K25 ["icon"]
      126 DUPCLOSURE                       R25 K43 [PROTO_23]
      127 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      129 CALL                             R22 2 1
      130 SETTABLEKS                       R22 R21 K37 ["Robux"]
      132 GETUPVAL                         R22 0
      133 GETTABLEKS                       R22 R22 K4 ["createElement"]
      135 GETUPVAL                         R23 6
      136 DUPTABLE                         R24 K45 [{["icon"], ["onActivated"], ["LayoutOrder"] = 3}]
      137 GETUPVAL                         R25 7
      138 GETTABLEKS                       R25 R25 K28 ["Icon"]
      140 GETTABLEKS                       R25 R25 K46 ["Bell"]
      142 SETTABLEKS                       R25 R24 K25 ["icon"]
      144 DUPCLOSURE                       R25 K47 [PROTO_24]
      145 SETTABLEKS                       R25 R24 K26 ["onActivated"]
      147 CALL                             R22 2 1
      148 SETTABLEKS                       R22 R21 K38 ["Notifications"]
      150 CALL                             R18 3 1
      151 SETTABLEKS                       R18 R17 K20 ["Trailing"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K13 ["HeaderBar"]
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R14 R14 K4 ["createElement"]
      159 GETUPVAL                         R15 8
      160 DUPTABLE                         R16 K50 [{["tag"] = "auto-xy content-default text-body-medium padding-large", ["Text"] = "Mobile menu lives in HeaderBar.", ["LayoutOrder"] = 2}]
      161 CALL                             R14 2 1
      162 SETTABLEKS                       R14 R13 K14 ["Content"]
      164 CALL                             R10 3 1
      165 JUMP                             ; [+170]
      166 GETUPVAL                         R10 0
      167 GETTABLEKS                       R10 R10 K4 ["createElement"]
      169 GETUPVAL                         R11 4
      170 DUPTABLE                         R12 K52 [{["tag"] = "row size-full-0 auto-y bg-surface-0 stroke-default", ["LayoutOrder"] = 1, ["ref"]}]
      171 SETTABLEKS                       R3 R12 K11 ["ref"]
      173 DUPTABLE                         R13 K55 [{"NavRail", "Main"}]
      174 GETUPVAL                         R14 0
      175 GETTABLEKS                       R14 R14 K4 ["createElement"]
      177 GETUPVAL                         R15 4
      178 DUPTABLE                         R16 K58 [{["tag"] = "col gap-small padding-medium bg-surface-0", ["Size"], ["LayoutOrder"] = 1}]
      179 GETIMPORT                        R17 K61 [UDim2.new]
      181 LOADN                            R18 0
      182 LOADN                            R19 72
      183 LOADN                            R20 1
      184 LOADN                            R21 0
      185 CALL                             R17 4 1
      186 SETTABLEKS                       R17 R16 K57 ["Size"]
      188 DUPTABLE                         R17 K62 [{"Menu"}]
      189 GETUPVAL                         R18 0
      190 GETTABLEKS                       R18 R18 K4 ["createElement"]
      192 GETUPVAL                         R19 6
      193 DUPTABLE                         R20 K27 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
      194 GETUPVAL                         R21 7
      195 GETTABLEKS                       R21 R21 K28 ["Icon"]
      197 GETTABLEKS                       R21 R21 K29 ["ThreeBarsHorizontal"]
      199 SETTABLEKS                       R21 R20 K25 ["icon"]
      201 DUPCLOSURE                       R21 K63 [PROTO_25]
      202 SETTABLEKS                       R21 R20 K26 ["onActivated"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K22 ["Menu"]
      207 CALL                             R14 3 1
      208 SETTABLEKS                       R14 R13 K53 ["NavRail"]
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R14 R14 K4 ["createElement"]
      213 GETUPVAL                         R15 4
      214 DUPTABLE                         R16 K65 [{["tag"] = "col size-full-0", ["Size"], ["LayoutOrder"] = 2}]
      215 GETIMPORT                        R17 K61 [UDim2.new]
      217 LOADN                            R18 1
      218 LOADN                            R19 -72
      219 LOADN                            R20 1
      220 LOADN                            R21 0
      221 CALL                             R17 4 1
      222 SETTABLEKS                       R17 R16 K57 ["Size"]
      224 DUPTABLE                         R17 K15 [{"HeaderBar", "Content"}]
      225 GETUPVAL                         R18 0
      226 GETTABLEKS                       R18 R18 K4 ["createElement"]
      228 GETUPVAL                         R19 5
      229 GETTABLEKS                       R19 R19 K16 ["Root"]
      231 DUPTABLE                         R20 K18 [{["hasBackground"], ["LayoutOrder"] = 1}]
      232 GETTABLEKS                       R21 R1 K17 ["hasBackground"]
      234 SETTABLEKS                       R21 R20 K17 ["hasBackground"]
      236 DUPTABLE                         R21 K21 [{"Leading", "Trailing"}]
      237 GETUPVAL                         R22 0
      238 GETTABLEKS                       R22 R22 K4 ["createElement"]
      240 GETUPVAL                         R23 5
      241 GETTABLEKS                       R23 R23 K19 ["Leading"]
      243 LOADNIL                          R24
      244 DUPTABLE                         R25 K66 [{"Logo"}]
      245 GETUPVAL                         R26 0
      246 GETTABLEKS                       R26 R26 K4 ["createElement"]
      248 GETUPVAL                         R27 8
      249 DUPTABLE                         R28 K67 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"] = "ROBLOX", ["LayoutOrder"] = 1}]
      250 CALL                             R26 2 1
      251 SETTABLEKS                       R26 R25 K23 ["Logo"]
      253 CALL                             R22 3 1
      254 SETTABLEKS                       R22 R21 K19 ["Leading"]
      256 GETUPVAL                         R22 0
      257 GETTABLEKS                       R22 R22 K4 ["createElement"]
      259 GETUPVAL                         R23 5
      260 GETTABLEKS                       R23 R23 K20 ["Trailing"]
      262 LOADNIL                          R24
      263 DUPTABLE                         R25 K39 [{"Search", "Robux", "Notifications"}]
      264 GETUPVAL                         R26 0
      265 GETTABLEKS                       R26 R26 K4 ["createElement"]
      267 GETUPVAL                         R27 6
      268 DUPTABLE                         R28 K27 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
      269 GETUPVAL                         R29 7
      270 GETTABLEKS                       R29 R29 K28 ["Icon"]
      272 GETTABLEKS                       R29 R29 K40 ["MagnifyingGlass"]
      274 SETTABLEKS                       R29 R28 K25 ["icon"]
      276 DUPCLOSURE                       R29 K68 [PROTO_26]
      277 SETTABLEKS                       R29 R28 K26 ["onActivated"]
      279 CALL                             R26 2 1
      280 SETTABLEKS                       R26 R25 K36 ["Search"]
      282 GETUPVAL                         R26 0
      283 GETTABLEKS                       R26 R26 K4 ["createElement"]
      285 GETUPVAL                         R27 6
      286 DUPTABLE                         R28 K42 [{["icon"], ["onActivated"], ["LayoutOrder"] = 2}]
      287 GETUPVAL                         R29 7
      288 GETTABLEKS                       R29 R29 K28 ["Icon"]
      290 GETTABLEKS                       R29 R29 K37 ["Robux"]
      292 SETTABLEKS                       R29 R28 K25 ["icon"]
      294 DUPCLOSURE                       R29 K69 [PROTO_27]
      295 SETTABLEKS                       R29 R28 K26 ["onActivated"]
      297 CALL                             R26 2 1
      298 SETTABLEKS                       R26 R25 K37 ["Robux"]
      300 GETUPVAL                         R26 0
      301 GETTABLEKS                       R26 R26 K4 ["createElement"]
      303 GETUPVAL                         R27 6
      304 DUPTABLE                         R28 K45 [{["icon"], ["onActivated"], ["LayoutOrder"] = 3}]
      305 GETUPVAL                         R29 7
      306 GETTABLEKS                       R29 R29 K28 ["Icon"]
      308 GETTABLEKS                       R29 R29 K46 ["Bell"]
      310 SETTABLEKS                       R29 R28 K25 ["icon"]
      312 DUPCLOSURE                       R29 K70 [PROTO_28]
      313 SETTABLEKS                       R29 R28 K26 ["onActivated"]
      315 CALL                             R26 2 1
      316 SETTABLEKS                       R26 R25 K38 ["Notifications"]
      318 CALL                             R22 3 1
      319 SETTABLEKS                       R22 R21 K20 ["Trailing"]
      321 CALL                             R18 3 1
      322 SETTABLEKS                       R18 R17 K13 ["HeaderBar"]
      324 GETUPVAL                         R18 0
      325 GETTABLEKS                       R18 R18 K4 ["createElement"]
      327 GETUPVAL                         R19 8
      328 DUPTABLE                         R20 K72 [{["tag"] = "auto-xy content-default text-body-medium padding-large", ["Text"] = "Collapsed nav leaves logo content in HeaderBar.", ["LayoutOrder"] = 2}]
      329 CALL                             R18 2 1
      330 SETTABLEKS                       R18 R17 K14 ["Content"]
      332 CALL                             R14 3 1
      333 SETTABLEKS                       R14 R13 K54 ["Main"]
      335 CALL                             R10 3 1
      336 SETTABLEKS                       R10 R9 K5 ["Story"]
      338 CALL                             R6 3 -1
      339 RETURN                           R6 -1

PROTO_30:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Menu activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Search activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_32:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Robux activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Notifications activated"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 LOADNIL                          R3
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["XSmall"]
       14 JUMPIFEQ                         R4 R6 ; [+8]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R6 R6 K3 ["Small"]
       19 JUMPIFEQ                         R4 R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K4 ["createElement"]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R8 R0 K0 ["controls"]
       29 DUPTABLE                         R9 K6 [{"Story"}]
       30 GETUPVAL                         R10 0
       31 GETTABLEKS                       R10 R10 K4 ["createElement"]
       33 GETUPVAL                         R11 4
       34 DUPTABLE                         R12 K12 [{["tag"] = "col size-full-0 auto-y bg-surface-0 stroke-default", ["LayoutOrder"] = 1, ["ref"]}]
       35 SETTABLEKS                       R3 R12 K11 ["ref"]
       37 DUPTABLE                         R13 K16 [{"HeaderBar", "PageTitle", "Content"}]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R14 R14 K4 ["createElement"]
       41 GETUPVAL                         R15 5
       42 GETTABLEKS                       R15 R15 K17 ["Root"]
       44 DUPTABLE                         R16 K19 [{["hasBackground"], ["LayoutOrder"] = 1}]
       45 GETTABLEKS                       R17 R1 K18 ["hasBackground"]
       47 SETTABLEKS                       R17 R16 K18 ["hasBackground"]
       49 DUPTABLE                         R17 K22 [{"Leading", "Trailing"}]
       50 GETUPVAL                         R18 0
       51 GETTABLEKS                       R18 R18 K4 ["createElement"]
       53 GETUPVAL                         R19 5
       54 GETTABLEKS                       R19 R19 K20 ["Leading"]
       56 LOADNIL                          R20
       57 DUPTABLE                         R21 K25 [{"Menu", "Breadcrumbs"}]
       58 JUMPIF                           R5 ; [+17]
       59 GETUPVAL                         R22 0
       60 GETTABLEKS                       R22 R22 K4 ["createElement"]
       62 GETUPVAL                         R23 6
       63 DUPTABLE                         R24 K28 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
       64 GETUPVAL                         R25 7
       65 GETTABLEKS                       R25 R25 K29 ["Icon"]
       67 GETTABLEKS                       R25 R25 K30 ["ThreeBarsHorizontal"]
       69 SETTABLEKS                       R25 R24 K26 ["icon"]
       71 DUPCLOSURE                       R25 K31 [PROTO_30]
       72 SETTABLEKS                       R25 R24 K27 ["onActivated"]
       74 CALL                             R22 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R22
       77 SETTABLEKS                       R22 R21 K23 ["Menu"]
       79 JUMPIF                           R5 ; [+48]
       80 GETUPVAL                         R22 0
       81 GETTABLEKS                       R22 R22 K4 ["createElement"]
       83 GETUPVAL                         R23 4
       84 DUPTABLE                         R24 K34 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"] = 2}]
       85 DUPTABLE                         R25 K40 [{"First", "FirstSeparator", "Second", "SecondSeparator", "Current"}]
       86 GETUPVAL                         R26 0
       87 GETTABLEKS                       R26 R26 K4 ["createElement"]
       89 GETUPVAL                         R27 8
       90 DUPTABLE                         R28 K44 [{["tag"] = "auto-xy content-default text-body-medium", ["Text"] = "Link", ["LayoutOrder"] = 1}]
       91 CALL                             R26 2 1
       92 SETTABLEKS                       R26 R25 K35 ["First"]
       94 GETUPVAL                         R26 0
       95 GETTABLEKS                       R26 R26 K4 ["createElement"]
       97 GETUPVAL                         R27 8
       98 DUPTABLE                         R28 K46 [{["tag"] = "auto-xy content-default text-body-medium", ["Text"] = "/", ["LayoutOrder"] = 2}]
       99 CALL                             R26 2 1
      100 SETTABLEKS                       R26 R25 K36 ["FirstSeparator"]
      102 GETUPVAL                         R26 0
      103 GETTABLEKS                       R26 R26 K4 ["createElement"]
      105 GETUPVAL                         R27 8
      106 DUPTABLE                         R28 K48 [{["tag"] = "auto-xy content-default text-body-medium", ["Text"] = "Link", ["LayoutOrder"] = 3}]
      107 CALL                             R26 2 1
      108 SETTABLEKS                       R26 R25 K37 ["Second"]
      110 GETUPVAL                         R26 0
      111 GETTABLEKS                       R26 R26 K4 ["createElement"]
      113 GETUPVAL                         R27 8
      114 DUPTABLE                         R28 K50 [{["tag"] = "auto-xy content-default text-body-medium", ["Text"] = "/", ["LayoutOrder"] = 4}]
      115 CALL                             R26 2 1
      116 SETTABLEKS                       R26 R25 K38 ["SecondSeparator"]
      118 GETUPVAL                         R26 0
      119 GETTABLEKS                       R26 R26 K4 ["createElement"]
      121 GETUPVAL                         R27 8
      122 DUPTABLE                         R28 K53 [{["tag"] = "auto-xy content-emphasis text-label-medium", ["Text"] = "Link", ["LayoutOrder"] = 5}]
      123 CALL                             R26 2 1
      124 SETTABLEKS                       R26 R25 K39 ["Current"]
      126 CALL                             R22 3 1
      127 JUMP                             ; [+10]
      128 GETUPVAL                         R22 0
      129 GETTABLEKS                       R22 R22 K4 ["createElement"]
      131 GETUPVAL                         R23 8
      132 DUPTABLE                         R24 K55 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 1}]
      133 GETTABLEKS                       R25 R1 K56 ["title"]
      135 SETTABLEKS                       R25 R24 K42 ["Text"]
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K24 ["Breadcrumbs"]
      140 CALL                             R18 3 1
      141 SETTABLEKS                       R18 R17 K20 ["Leading"]
      143 GETUPVAL                         R18 0
      144 GETTABLEKS                       R18 R18 K4 ["createElement"]
      146 GETUPVAL                         R19 5
      147 GETTABLEKS                       R19 R19 K21 ["Trailing"]
      149 LOADNIL                          R20
      150 DUPTABLE                         R21 K60 [{"Search", "Robux", "Notifications"}]
      151 GETUPVAL                         R22 0
      152 GETTABLEKS                       R22 R22 K4 ["createElement"]
      154 GETUPVAL                         R23 6
      155 DUPTABLE                         R24 K28 [{["icon"], ["onActivated"], ["LayoutOrder"] = 1}]
      156 GETUPVAL                         R25 7
      157 GETTABLEKS                       R25 R25 K29 ["Icon"]
      159 GETTABLEKS                       R25 R25 K61 ["MagnifyingGlass"]
      161 SETTABLEKS                       R25 R24 K26 ["icon"]
      163 DUPCLOSURE                       R25 K62 [PROTO_31]
      164 SETTABLEKS                       R25 R24 K27 ["onActivated"]
      166 CALL                             R22 2 1
      167 SETTABLEKS                       R22 R21 K57 ["Search"]
      169 GETUPVAL                         R22 0
      170 GETTABLEKS                       R22 R22 K4 ["createElement"]
      172 GETUPVAL                         R23 6
      173 DUPTABLE                         R24 K63 [{["icon"], ["onActivated"], ["LayoutOrder"] = 2}]
      174 GETUPVAL                         R25 7
      175 GETTABLEKS                       R25 R25 K29 ["Icon"]
      177 GETTABLEKS                       R25 R25 K58 ["Robux"]
      179 SETTABLEKS                       R25 R24 K26 ["icon"]
      181 DUPCLOSURE                       R25 K64 [PROTO_32]
      182 SETTABLEKS                       R25 R24 K27 ["onActivated"]
      184 CALL                             R22 2 1
      185 SETTABLEKS                       R22 R21 K58 ["Robux"]
      187 GETUPVAL                         R22 0
      188 GETTABLEKS                       R22 R22 K4 ["createElement"]
      190 GETUPVAL                         R23 6
      191 DUPTABLE                         R24 K65 [{["icon"], ["onActivated"], ["LayoutOrder"] = 3}]
      192 GETUPVAL                         R25 7
      193 GETTABLEKS                       R25 R25 K29 ["Icon"]
      195 GETTABLEKS                       R25 R25 K66 ["Bell"]
      197 SETTABLEKS                       R25 R24 K26 ["icon"]
      199 DUPCLOSURE                       R25 K67 [PROTO_33]
      200 SETTABLEKS                       R25 R24 K27 ["onActivated"]
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K59 ["Notifications"]
      205 CALL                             R18 3 1
      206 SETTABLEKS                       R18 R17 K21 ["Trailing"]
      208 CALL                             R14 3 1
      209 SETTABLEKS                       R14 R13 K13 ["HeaderBar"]
      211 JUMPIFNOT                        R5 ; [+2]
      212 LOADNIL                          R14
      213 JUMP                             ; [+19]
      214 GETUPVAL                         R14 0
      215 GETTABLEKS                       R14 R14 K4 ["createElement"]
      217 GETUPVAL                         R15 4
      218 DUPTABLE                         R16 K69 [{["tag"] = "row align-y-center size-full-1200 padding-x-large", ["LayoutOrder"] = 2}]
      219 DUPTABLE                         R17 K71 [{"Title"}]
      220 GETUPVAL                         R18 0
      221 GETTABLEKS                       R18 R18 K4 ["createElement"]
      223 GETUPVAL                         R19 8
      224 DUPTABLE                         R20 K55 [{["tag"] = "auto-xy content-emphasis text-heading-medium", ["Text"], ["LayoutOrder"] = 1}]
      225 GETTABLEKS                       R21 R1 K56 ["title"]
      227 SETTABLEKS                       R21 R20 K42 ["Text"]
      229 CALL                             R18 2 1
      230 SETTABLEKS                       R18 R17 K70 ["Title"]
      232 CALL                             R14 3 1
      233 SETTABLEKS                       R14 R13 K14 ["PageTitle"]
      235 GETUPVAL                         R14 0
      236 GETTABLEKS                       R14 R14 K4 ["createElement"]
      238 GETUPVAL                         R15 8
      239 DUPTABLE                         R16 K73 [{["tag"] = "auto-xy content-default text-body-medium padding-large", ["Text"], ["LayoutOrder"] = 3}]
      240 JUMPIFNOT                        R5 ; [+2]
      241 LOADK                            R17 K74 ["Title is inside HeaderBar."]
      242 JUMP                             ; [+1]
      243 LOADK                            R17 K75 ["Title is positioned below HeaderBar."]
      244 SETTABLEKS                       R17 R16 K42 ["Text"]
      246 CALL                             R14 2 1
      247 SETTABLEKS                       R14 R13 K15 ["Content"]
      249 CALL                             R10 3 1
      250 SETTABLEKS                       R10 R9 K5 ["Story"]
      252 CALL                             R6 3 -1
      253 RETURN                           R6 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Avatar"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Enums"]
       30 GETTABLEKS                       R6 R6 K12 ["Breakpoint"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Utility"]
       37 GETTABLEKS                       R7 R7 K14 ["Responsive"]
       39 GETTABLEKS                       R7 R7 K15 ["BreakpointConfig"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K9 ["Components"]
       46 GETTABLEKS                       R8 R8 K16 ["Button"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Enums"]
       53 GETTABLEKS                       R9 R9 K17 ["ButtonVariant"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K9 ["Components"]
       60 GETTABLEKS                       R10 R10 K18 ["Divider"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K9 ["Components"]
       67 GETTABLEKS                       R11 R11 K19 ["IconButton"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R12 R0 K11 ["Enums"]
       74 GETTABLEKS                       R12 R12 K20 ["InputSize"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Enums"]
       81 GETTABLEKS                       R13 R13 K21 ["Orientation"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R14 R0 K9 ["Components"]
       88 GETTABLEKS                       R14 R14 K22 ["SearchInput"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R15 R0 K9 ["Components"]
       95 GETTABLEKS                       R15 R15 K23 ["Text"]
       97 CALL                             R14 1 1
       98 GETIMPORT                        R15 K6 [require]
      100 GETTABLEKS                       R16 R0 K9 ["Components"]
      102 GETTABLEKS                       R16 R16 K24 ["View"]
      104 CALL                             R15 1 1
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K25 ["Providers"]
      109 GETTABLEKS                       R17 R17 K14 ["Responsive"]
      111 GETTABLEKS                       R17 R17 K26 ["Hooks"]
      113 GETTABLEKS                       R17 R17 K27 ["useBreakpoint"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K6 [require]
      118 GETTABLEKS                       R18 R0 K25 ["Providers"]
      120 GETTABLEKS                       R18 R18 K28 ["Style"]
      122 GETTABLEKS                       R18 R18 K29 ["useTokens"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K6 [require]
      127 GETIMPORT                        R19 K1 [script]
      129 GETTABLEKS                       R19 R19 K4 ["Parent"]
      131 CALL                             R18 1 1
      132 DUPCLOSURE                       R19 K30 [PROTO_0]
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R15
      136 DUPTABLE                         R20 K33 [{"controls", "stories"}]
      137 DUPTABLE                         R21 K38 [{["hasBackground"] = True, ["title"] = "Title"}]
      138 SETTABLEKS                       R21 R20 K31 ["controls"]
      140 NEWTABLE                         R21 0 5
      142 DUPTABLE                         R22 K42 [{["name"] = "Base", ["story"]}]
      143 DUPCLOSURE                       R23 K43 [PROTO_7]
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R13
      150 SETTABLEKS                       R23 R22 K41 ["story"]
      152 DUPTABLE                         R23 K47 [{["name"] = "Negative margins", ["summary"] = "`HeaderBar.Actions` implicitly applies a negative margin so that the glyph of the left- or right-most IconButton will be aligned with the page content.", ["story"]}]
      153 DUPCLOSURE                       R24 K48 [PROTO_13]
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R18
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R7
      160 SETTABLEKS                       R24 R23 K41 ["story"]
      162 DUPTABLE                         R24 K51 [{["name"] = "Dual-pane layout", ["summary"] = "Shows how HeaderBar composition adapts across multiple panes. At Small breakpoints, the Primary pane collapses and can be opened from the Aside pane.", ["story"]}]
      163 DUPCLOSURE                       R25 K52 [PROTO_20]
      164 CAPTURE                          VAL R3
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R18
      171 CAPTURE                          VAL R14
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R4
      180 SETTABLEKS                       R25 R24 K41 ["story"]
      182 DUPTABLE                         R25 K55 [{["name"] = "Menu leading accessory", ["summary"] = "Shows when menu and logo content belongs in HeaderBar versus the surrounding navigation shell.", ["story"]}]
      183 DUPCLOSURE                       R26 K56 [PROTO_29]
      184 CAPTURE                          VAL R3
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R5
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R18
      190 CAPTURE                          VAL R10
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R14
      193 SETTABLEKS                       R26 R25 K41 ["story"]
      195 DUPTABLE                         R26 K59 [{["name"] = "Title positioning", ["summary"] = "Shows whether title content lives inside HeaderBar or below it in the page body.", ["story"]}]
      196 DUPCLOSURE                       R27 K60 [PROTO_34]
      197 CAPTURE                          VAL R3
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R19
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R18
      203 CAPTURE                          VAL R10
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R14
      206 SETTABLEKS                       R27 R26 K41 ["story"]
      208 SETLIST                          R21 R22 5 [1]
      210 SETTABLEKS                       R21 R20 K32 ["stories"]
      212 RETURN                           R20 1

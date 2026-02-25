PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"tag", "Size", "backgroundStyle", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
        5 LOADK                            R5 K8 ["%* auto-y clip"]
        6 GETTABLEKS                       R7 R0 K1 ["tag"]
        8 NAMECALL                         R5 R5 K9 ["format"]
       10 CALL                             R5 2 1
       11 MOVE                             R4 R5
       12 SETTABLEKS                       R4 R3 K1 ["tag"]
       14 GETTABLEKS                       R4 R0 K2 ["Size"]
       16 SETTABLEKS                       R4 R3 K2 ["Size"]
       18 DUPTABLE                         R4 K11 [{"Transparency"}]
       19 LOADK                            R5 K12 [0.15]
       20 SETTABLEKS                       R5 R4 K10 ["Transparency"]
       22 SETTABLEKS                       R4 R3 K3 ["backgroundStyle"]
       24 GETTABLEKS                       R5 R0 K13 ["debug"]
       26 JUMPIF                           R5 ; [+2]
       27 LOADN                            R4 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 SETTABLEKS                       R4 R3 K4 ["BorderSizePixel"]
       32 GETTABLEKS                       R5 R0 K13 ["debug"]
       34 JUMPIF                           R5 ; [+2]
       35 GETUPVAL                         R4 2
       36 JUMP                             ; [+1]
       37 LOADNIL                          R4
       38 SETTABLEKS                       R4 R3 K5 ["BorderColor3"]
       40 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       42 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       44 DUPTABLE                         R4 K15 [{"Label"}]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R5 R6 K0 ["createElement"]
       48 GETUPVAL                         R6 3
       49 DUPTABLE                         R7 K17 [{"tag", "Text"}]
       50 LOADK                            R8 K18 ["size-full-2000 text-wrap text-label-small position-center-center anchor-center-center"]
       51 SETTABLEKS                       R8 R7 K1 ["tag"]
       53 LOADK                            R9 K19 ["%* %*"]
       54 GETTABLEKS                       R11 R0 K20 ["name"]
       56 GETTABLEKS                       R12 R0 K1 ["tag"]
       58 LOADK                            R14 K21 ["%-col%-"]
       59 LOADK                            R15 K22 [":"]
       60 NAMECALL                         R12 R12 K23 ["gsub"]
       62 CALL                             R12 3 1
       63 NAMECALL                         R9 R9 K9 ["format"]
       65 CALL                             R9 3 1
       66 MOVE                             R8 R9
       67 SETTABLEKS                       R8 R7 K16 ["Text"]
       69 CALL                             R5 2 1
       70 SETTABLEKS                       R5 R4 K14 ["Label"]
       72 GETTABLEKS                       R5 R0 K24 ["children"]
       74 CALL                             R1 4 -1
       75 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K7 [{"tag", "size", "backgroundStyle", "BorderSizePixel", "BorderColor3", "LayoutOrder"}]
        5 LOADK                            R4 K8 ["auto-y clip"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 GETTABLEKS                       R4 R0 K2 ["size"]
       10 SETTABLEKS                       R4 R3 K2 ["size"]
       12 DUPTABLE                         R4 K10 [{"Transparency"}]
       13 LOADK                            R5 K11 [0.15]
       14 SETTABLEKS                       R5 R4 K9 ["Transparency"]
       16 SETTABLEKS                       R4 R3 K3 ["backgroundStyle"]
       18 GETTABLEKS                       R5 R0 K12 ["debug"]
       20 JUMPIF                           R5 ; [+2]
       21 LOADN                            R4 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K4 ["BorderSizePixel"]
       26 GETTABLEKS                       R5 R0 K12 ["debug"]
       28 JUMPIF                           R5 ; [+2]
       29 GETUPVAL                         R4 2
       30 JUMP                             ; [+1]
       31 LOADNIL                          R4
       32 SETTABLEKS                       R4 R3 K5 ["BorderColor3"]
       34 GETTABLEKS                       R4 R0 K6 ["LayoutOrder"]
       36 SETTABLEKS                       R4 R3 K6 ["LayoutOrder"]
       38 DUPTABLE                         R4 K14 [{"Label"}]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["createElement"]
       42 GETUPVAL                         R6 3
       43 DUPTABLE                         R7 K16 [{"tag", "Text"}]
       44 LOADK                            R8 K17 ["size-full-2000 text-wrap text-label-small position-center-center anchor-center-center"]
       45 SETTABLEKS                       R8 R7 K1 ["tag"]
       47 LOADK                            R9 K18 ["%* %*"]
       48 GETTABLEKS                       R11 R0 K19 ["name"]
       50 GETUPVAL                         R12 4
       51 GETTABLEKS                       R13 R0 K2 ["size"]
       53 CALL                             R12 1 1
       54 LOADK                            R14 K20 ["%-col%-"]
       55 LOADK                            R15 K21 [":"]
       56 NAMECALL                         R12 R12 K22 ["gsub"]
       58 CALL                             R12 3 1
       59 NAMECALL                         R9 R9 K23 ["format"]
       61 CALL                             R9 3 1
       62 MOVE                             R8 R9
       63 SETTABLEKS                       R8 R7 K15 ["Text"]
       65 CALL                             R5 2 1
       66 SETTABLEKS                       R5 R4 K13 ["Label"]
       68 GETTABLEKS                       R5 R0 K24 ["children"]
       70 CALL                             R1 4 -1
       71 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R5 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R5 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R5 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R5 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
       23 LOADK                            R8 K18 ["xs-col-1 sm-col-4 md-col-6 lg-col-8 xl-col-8"]
       24 SETTABLEKS                       R8 R7 K13 ["tag"]
       26 LOADK                            R8 K19 ["C1"]
       27 SETTABLEKS                       R8 R7 K14 ["name"]
       29 GETTABLEKS                       R9 R0 K4 ["controls"]
       31 GETTABLEKS                       R8 R9 K15 ["debug"]
       33 SETTABLEKS                       R8 R7 K15 ["debug"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["Child1"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K0 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
       46 LOADK                            R8 K20 ["xs-col-1 sm-col-4 md-col-6 lg-col-4 xl-col-4"]
       47 SETTABLEKS                       R8 R7 K13 ["tag"]
       49 LOADK                            R8 K21 ["C2"]
       50 SETTABLEKS                       R8 R7 K14 ["name"]
       52 GETTABLEKS                       R9 R0 K4 ["controls"]
       54 GETTABLEKS                       R8 R9 K15 ["debug"]
       56 SETTABLEKS                       R8 R7 K15 ["debug"]
       58 LOADN                            R8 2
       59 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K7 ["Child2"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K0 ["createElement"]
       67 GETUPVAL                         R6 2
       68 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
       69 LOADK                            R8 K22 ["xs-col-1 sm-col-5 md-col-7 lg-col-10 xl-col-10"]
       70 SETTABLEKS                       R8 R7 K13 ["tag"]
       72 LOADK                            R8 K23 ["C3"]
       73 SETTABLEKS                       R8 R7 K14 ["name"]
       75 GETTABLEKS                       R9 R0 K4 ["controls"]
       77 GETTABLEKS                       R8 R9 K15 ["debug"]
       79 SETTABLEKS                       R8 R7 K15 ["debug"]
       81 LOADN                            R8 3
       82 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K8 ["Child3"]
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R5 R6 K0 ["createElement"]
       90 GETUPVAL                         R6 2
       91 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
       92 LOADK                            R8 K24 ["xs-col-3 sm-col-1 md-col-5 lg-col-2 xl-col-2"]
       93 SETTABLEKS                       R8 R7 K13 ["tag"]
       95 LOADK                            R8 K25 ["C4"]
       96 SETTABLEKS                       R8 R7 K14 ["name"]
       98 GETTABLEKS                       R9 R0 K4 ["controls"]
      100 GETTABLEKS                       R8 R9 K15 ["debug"]
      102 SETTABLEKS                       R8 R7 K15 ["debug"]
      104 LOADN                            R8 4
      105 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      107 CALL                             R5 2 1
      108 SETTABLEKS                       R5 R4 K9 ["Child4"]
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R5 R6 K0 ["createElement"]
      113 GETUPVAL                         R6 2
      114 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
      115 LOADK                            R8 K26 ["xs-col-1 sm-col-4 md-col-1 lg-col-3 xl-col-3"]
      116 SETTABLEKS                       R8 R7 K13 ["tag"]
      118 LOADK                            R8 K27 ["C5"]
      119 SETTABLEKS                       R8 R7 K14 ["name"]
      121 GETTABLEKS                       R9 R0 K4 ["controls"]
      123 GETTABLEKS                       R8 R9 K15 ["debug"]
      125 SETTABLEKS                       R8 R7 K15 ["debug"]
      127 LOADN                            R8 5
      128 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      130 CALL                             R5 2 1
      131 SETTABLEKS                       R5 R4 K10 ["Child5"]
      133 GETUPVAL                         R6 0
      134 GETTABLEKS                       R5 R6 K0 ["createElement"]
      136 GETUPVAL                         R6 2
      137 DUPTABLE                         R7 K17 [{"tag", "name", "debug", "LayoutOrder"}]
      138 LOADK                            R8 K28 ["xs-col-1 sm-col-3 md-col-11 lg-col-9 xl-col-9"]
      139 SETTABLEKS                       R8 R7 K13 ["tag"]
      141 LOADK                            R8 K29 ["C6"]
      142 SETTABLEKS                       R8 R7 K14 ["name"]
      144 GETTABLEKS                       R9 R0 K4 ["controls"]
      146 GETTABLEKS                       R8 R9 K15 ["debug"]
      148 SETTABLEKS                       R8 R7 K15 ["debug"]
      150 LOADN                            R8 6
      151 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      153 CALL                             R5 2 1
      154 SETTABLEKS                       R5 R4 K11 ["Child6"]
      156 CALL                             R1 3 1
      157 GETTABLEKS                       R4 R0 K4 ["controls"]
      159 GETTABLEKS                       R3 R4 K15 ["debug"]
      161 JUMPIFNOT                        R3 ; [+14]
      162 GETUPVAL                         R3 0
      163 GETTABLEKS                       R2 R3 K0 ["createElement"]
      165 GETUPVAL                         R3 3
      166 DUPTABLE                         R4 K30 [{"align"}]
      167 GETTABLEKS                       R6 R0 K4 ["controls"]
      169 GETTABLEKS                       R5 R6 K1 ["align"]
      171 SETTABLEKS                       R5 R4 K1 ["align"]
      173 MOVE                             R5 R1
      174 CALL                             R2 3 1
      175 RETURN                           R2 1
      176 MOVE                             R2 R1
      177 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R5 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R5 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R5 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R5 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K12 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
       23 LOADK                            R8 K18 ["C1"]
       24 SETTABLEKS                       R8 R7 K13 ["name"]
       26 DUPTABLE                         R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
       27 LOADN                            R9 1
       28 SETTABLEKS                       R9 R8 K19 ["xs"]
       30 LOADN                            R9 4
       31 SETTABLEKS                       R9 R8 K20 ["sm"]
       33 LOADN                            R9 8
       34 SETTABLEKS                       R9 R8 K21 ["md"]
       36 LOADN                            R9 8
       37 SETTABLEKS                       R9 R8 K22 ["lg"]
       39 LOADN                            R9 8
       40 SETTABLEKS                       R9 R8 K23 ["xl"]
       42 SETTABLEKS                       R8 R7 K14 ["size"]
       44 GETTABLEKS                       R9 R0 K4 ["controls"]
       46 GETTABLEKS                       R8 R9 K15 ["debug"]
       48 SETTABLEKS                       R8 R7 K15 ["debug"]
       50 LOADN                            R8 1
       51 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       53 CALL                             R5 2 1
       54 SETTABLEKS                       R5 R4 K6 ["Child1"]
       56 GETUPVAL                         R6 0
       57 GETTABLEKS                       R5 R6 K0 ["createElement"]
       59 GETUPVAL                         R6 2
       60 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
       61 LOADK                            R8 K25 ["C2"]
       62 SETTABLEKS                       R8 R7 K13 ["name"]
       64 DUPTABLE                         R8 K27 [{"xs", "sm", "md", "lg", "xl", "xxl"}]
       65 LOADN                            R9 1
       66 SETTABLEKS                       R9 R8 K19 ["xs"]
       68 LOADN                            R9 2
       69 SETTABLEKS                       R9 R8 K20 ["sm"]
       71 LOADN                            R9 4
       72 SETTABLEKS                       R9 R8 K21 ["md"]
       74 LOADN                            R9 4
       75 SETTABLEKS                       R9 R8 K22 ["lg"]
       77 LOADN                            R9 4
       78 SETTABLEKS                       R9 R8 K23 ["xl"]
       80 LOADN                            R9 4
       81 SETTABLEKS                       R9 R8 K26 ["xxl"]
       83 SETTABLEKS                       R8 R7 K14 ["size"]
       85 GETTABLEKS                       R9 R0 K4 ["controls"]
       87 GETTABLEKS                       R8 R9 K15 ["debug"]
       89 SETTABLEKS                       R8 R7 K15 ["debug"]
       91 LOADN                            R8 2
       92 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K7 ["Child2"]
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R5 R6 K0 ["createElement"]
      100 GETUPVAL                         R6 2
      101 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
      102 LOADK                            R8 K28 ["C3"]
      103 SETTABLEKS                       R8 R7 K13 ["name"]
      105 DUPTABLE                         R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
      106 LOADN                            R9 1
      107 SETTABLEKS                       R9 R8 K19 ["xs"]
      109 LOADN                            R9 5
      110 SETTABLEKS                       R9 R8 K20 ["sm"]
      112 LOADN                            R9 7
      113 SETTABLEKS                       R9 R8 K21 ["md"]
      115 LOADN                            R9 10
      116 SETTABLEKS                       R9 R8 K22 ["lg"]
      118 LOADN                            R9 10
      119 SETTABLEKS                       R9 R8 K23 ["xl"]
      121 SETTABLEKS                       R8 R7 K14 ["size"]
      123 GETTABLEKS                       R9 R0 K4 ["controls"]
      125 GETTABLEKS                       R8 R9 K15 ["debug"]
      127 SETTABLEKS                       R8 R7 K15 ["debug"]
      129 LOADN                            R8 3
      130 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      132 CALL                             R5 2 1
      133 SETTABLEKS                       R5 R4 K8 ["Child3"]
      135 GETUPVAL                         R6 0
      136 GETTABLEKS                       R5 R6 K0 ["createElement"]
      138 GETUPVAL                         R6 2
      139 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
      140 LOADK                            R8 K29 ["C4"]
      141 SETTABLEKS                       R8 R7 K13 ["name"]
      143 DUPTABLE                         R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
      144 LOADN                            R9 3
      145 SETTABLEKS                       R9 R8 K19 ["xs"]
      147 LOADN                            R9 1
      148 SETTABLEKS                       R9 R8 K20 ["sm"]
      150 LOADN                            R9 5
      151 SETTABLEKS                       R9 R8 K21 ["md"]
      153 LOADN                            R9 2
      154 SETTABLEKS                       R9 R8 K22 ["lg"]
      156 LOADN                            R9 2
      157 SETTABLEKS                       R9 R8 K23 ["xl"]
      159 SETTABLEKS                       R8 R7 K14 ["size"]
      161 GETTABLEKS                       R9 R0 K4 ["controls"]
      163 GETTABLEKS                       R8 R9 K15 ["debug"]
      165 SETTABLEKS                       R8 R7 K15 ["debug"]
      167 LOADN                            R8 4
      168 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      170 CALL                             R5 2 1
      171 SETTABLEKS                       R5 R4 K9 ["Child4"]
      173 GETUPVAL                         R6 0
      174 GETTABLEKS                       R5 R6 K0 ["createElement"]
      176 GETUPVAL                         R6 2
      177 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
      178 LOADK                            R8 K30 ["C5"]
      179 SETTABLEKS                       R8 R7 K13 ["name"]
      181 DUPTABLE                         R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
      182 LOADN                            R9 1
      183 SETTABLEKS                       R9 R8 K19 ["xs"]
      185 LOADN                            R9 4
      186 SETTABLEKS                       R9 R8 K20 ["sm"]
      188 LOADN                            R9 1
      189 SETTABLEKS                       R9 R8 K21 ["md"]
      191 LOADN                            R9 3
      192 SETTABLEKS                       R9 R8 K22 ["lg"]
      194 LOADN                            R9 3
      195 SETTABLEKS                       R9 R8 K23 ["xl"]
      197 SETTABLEKS                       R8 R7 K14 ["size"]
      199 GETTABLEKS                       R9 R0 K4 ["controls"]
      201 GETTABLEKS                       R8 R9 K15 ["debug"]
      203 SETTABLEKS                       R8 R7 K15 ["debug"]
      205 LOADN                            R8 5
      206 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      208 CALL                             R5 2 1
      209 SETTABLEKS                       R5 R4 K10 ["Child5"]
      211 GETUPVAL                         R6 0
      212 GETTABLEKS                       R5 R6 K0 ["createElement"]
      214 GETUPVAL                         R6 2
      215 DUPTABLE                         R7 K17 [{"name", "size", "debug", "LayoutOrder"}]
      216 LOADK                            R8 K31 ["C6"]
      217 SETTABLEKS                       R8 R7 K13 ["name"]
      219 DUPTABLE                         R8 K24 [{"xs", "sm", "md", "lg", "xl"}]
      220 LOADN                            R9 1
      221 SETTABLEKS                       R9 R8 K19 ["xs"]
      223 LOADN                            R9 3
      224 SETTABLEKS                       R9 R8 K20 ["sm"]
      226 LOADN                            R9 11
      227 SETTABLEKS                       R9 R8 K21 ["md"]
      229 LOADN                            R9 9
      230 SETTABLEKS                       R9 R8 K22 ["lg"]
      232 LOADN                            R9 9
      233 SETTABLEKS                       R9 R8 K23 ["xl"]
      235 SETTABLEKS                       R8 R7 K14 ["size"]
      237 GETTABLEKS                       R9 R0 K4 ["controls"]
      239 GETTABLEKS                       R8 R9 K15 ["debug"]
      241 SETTABLEKS                       R8 R7 K15 ["debug"]
      243 LOADN                            R8 6
      244 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      246 CALL                             R5 2 1
      247 SETTABLEKS                       R5 R4 K11 ["Child6"]
      249 CALL                             R1 3 1
      250 GETTABLEKS                       R4 R0 K4 ["controls"]
      252 GETTABLEKS                       R3 R4 K15 ["debug"]
      254 JUMPIFNOT                        R3 ; [+14]
      255 GETUPVAL                         R3 0
      256 GETTABLEKS                       R2 R3 K0 ["createElement"]
      258 GETUPVAL                         R3 3
      259 DUPTABLE                         R4 K32 [{"align"}]
      260 GETTABLEKS                       R6 R0 K4 ["controls"]
      262 GETTABLEKS                       R5 R6 K1 ["align"]
      264 SETTABLEKS                       R5 R4 K1 ["align"]
      266 MOVE                             R5 R1
      267 CALL                             R2 3 1
      268 RETURN                           R2 1
      269 MOVE                             R2 R1
      270 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R3 1
        3 LOADN                            R1 12
        4 LOADN                            R2 1
        5 FORNPREP                         R1
        6 MOVE                             R5 R0
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K0 ["createElement"]
       10 GETUPVAL                         R7 1
       11 DUPTABLE                         R8 K3 [{"tag", "LayoutOrder"}]
       12 LOADK                            R9 K4 ["xs-col-1 sm-col-2 md-col-3 lg-col-4 xl-col-6 size-full-full aspect-2-1  margin-bottom-large"]
       13 SETTABLEKS                       R9 R8 K1 ["tag"]
       15 GETUPVAL                         R10 2
       16 GETTABLEKS                       R9 R10 K2 ["LayoutOrder"]
       18 SETTABLEKS                       R9 R8 K2 ["LayoutOrder"]
       20 DUPTABLE                         R9 K6 [{"Frame"}]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K0 ["createElement"]
       24 GETUPVAL                         R11 1
       25 DUPTABLE                         R12 K7 [{"tag"}]
       26 LOADK                            R13 K8 ["size-full-full bg-action-emphasis"]
       27 SETTABLEKS                       R13 R12 K1 ["tag"]
       29 DUPTABLE                         R13 K10 [{"Label"}]
       30 GETUPVAL                         R15 0
       31 GETTABLEKS                       R14 R15 K0 ["createElement"]
       33 GETUPVAL                         R15 3
       34 DUPTABLE                         R16 K12 [{"tag", "Text"}]
       35 LOADK                            R17 K13 ["size-full-full text-wrap text-label-small position-center-center anchor-center-center"]
       36 SETTABLEKS                       R17 R16 K1 ["tag"]
       38 LOADK                            R18 K14 ["%*"]
       39 MOVE                             R20 R3
       40 NAMECALL                         R18 R18 K15 ["format"]
       42 CALL                             R18 2 1
       43 MOVE                             R17 R18
       44 SETTABLEKS                       R17 R16 K11 ["Text"]
       46 CALL                             R14 2 1
       47 SETTABLEKS                       R14 R13 K9 ["Label"]
       49 CALL                             R10 3 1
       50 SETTABLEKS                       R10 R9 K5 ["Frame"]
       52 CALL                             R6 3 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R4 K18 [table.insert]
       56 CALL                             R4 -1 0
       57 FORNLOOP                         R1
       58 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R3 0 1
       10 LOADN                            R4 12
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K1 ["createElement"]
       17 GETUPVAL                         R3 3
       18 DUPTABLE                         R4 K4 [{"align", "Wraps"}]
       19 GETTABLEKS                       R6 R0 K5 ["controls"]
       21 GETTABLEKS                       R5 R6 K2 ["align"]
       23 SETTABLEKS                       R5 R4 K2 ["align"]
       25 GETTABLEKS                       R6 R0 K5 ["controls"]
       27 GETTABLEKS                       R5 R6 K6 ["wraps"]
       29 SETTABLEKS                       R5 R4 K3 ["Wraps"]
       31 MOVE                             R5 R1
       32 CALL                             R2 3 1
       33 GETTABLEKS                       R5 R0 K5 ["controls"]
       35 GETTABLEKS                       R4 R5 K7 ["debug"]
       37 JUMPIFNOT                        R4 ; [+14]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R3 R4 K1 ["createElement"]
       41 GETUPVAL                         R4 4
       42 DUPTABLE                         R5 K8 [{"align"}]
       43 GETTABLEKS                       R7 R0 K5 ["controls"]
       45 GETTABLEKS                       R6 R7 K2 ["align"]
       47 SETTABLEKS                       R6 R5 K2 ["align"]
       49 MOVE                             R6 R2
       50 CALL                             R3 3 1
       51 RETURN                           R3 1
       52 MOVE                             R3 R2
       53 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"align", "Wraps"}]
        5 GETTABLEKS                       R5 R0 K4 ["controls"]
        7 GETTABLEKS                       R4 R5 K1 ["align"]
        9 SETTABLEKS                       R4 R3 K1 ["align"]
       11 GETTABLEKS                       R5 R0 K4 ["controls"]
       13 GETTABLEKS                       R4 R5 K5 ["wraps"]
       15 SETTABLEKS                       R4 R3 K2 ["Wraps"]
       17 DUPTABLE                         R4 K22 [{"Child1", "Child2", "Child3", "Child4", "Child5", "Child6", "Child7", "Child8", "Child9", "Child10", "Child11", "Child12", "Child13", "Child14", "Child15", "Child16"}]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["createElement"]
       21 GETUPVAL                         R6 2
       22 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
       23 LOADK                            R8 K28 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
       24 SETTABLEKS                       R8 R7 K23 ["tag"]
       26 LOADK                            R8 K29 ["C1"]
       27 SETTABLEKS                       R8 R7 K24 ["name"]
       29 GETTABLEKS                       R9 R0 K4 ["controls"]
       31 GETTABLEKS                       R8 R9 K25 ["debug"]
       33 SETTABLEKS                       R8 R7 K25 ["debug"]
       35 LOADN                            R8 1
       36 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K6 ["Child1"]
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K0 ["createElement"]
       44 GETUPVAL                         R6 2
       45 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
       46 LOADK                            R8 K30 ["xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6"]
       47 SETTABLEKS                       R8 R7 K23 ["tag"]
       49 LOADK                            R8 K31 ["C3"]
       50 SETTABLEKS                       R8 R7 K24 ["name"]
       52 GETTABLEKS                       R9 R0 K4 ["controls"]
       54 GETTABLEKS                       R8 R9 K25 ["debug"]
       56 SETTABLEKS                       R8 R7 K25 ["debug"]
       58 LOADN                            R8 3
       59 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K7 ["Child2"]
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K0 ["createElement"]
       67 GETUPVAL                         R6 2
       68 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
       69 LOADK                            R8 K30 ["xs-col-1 sm-col-3 md-col-6 lg-col-6 xl-col-6"]
       70 SETTABLEKS                       R8 R7 K23 ["tag"]
       72 LOADK                            R8 K31 ["C3"]
       73 SETTABLEKS                       R8 R7 K24 ["name"]
       75 GETTABLEKS                       R9 R0 K4 ["controls"]
       77 GETTABLEKS                       R8 R9 K25 ["debug"]
       79 SETTABLEKS                       R8 R7 K25 ["debug"]
       81 LOADN                            R8 3
       82 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
       84 CALL                             R5 2 1
       85 SETTABLEKS                       R5 R4 K8 ["Child3"]
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R5 R6 K0 ["createElement"]
       90 GETUPVAL                         R6 2
       91 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
       92 LOADK                            R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
       93 SETTABLEKS                       R8 R7 K23 ["tag"]
       95 LOADK                            R8 K33 ["C4"]
       96 SETTABLEKS                       R8 R7 K24 ["name"]
       98 GETTABLEKS                       R9 R0 K4 ["controls"]
      100 GETTABLEKS                       R8 R9 K25 ["debug"]
      102 SETTABLEKS                       R8 R7 K25 ["debug"]
      104 LOADN                            R8 4
      105 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      107 CALL                             R5 2 1
      108 SETTABLEKS                       R5 R4 K9 ["Child4"]
      110 GETUPVAL                         R6 0
      111 GETTABLEKS                       R5 R6 K0 ["createElement"]
      113 GETUPVAL                         R6 2
      114 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      115 LOADK                            R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
      116 SETTABLEKS                       R8 R7 K23 ["tag"]
      118 LOADK                            R8 K34 ["C5"]
      119 SETTABLEKS                       R8 R7 K24 ["name"]
      121 GETTABLEKS                       R9 R0 K4 ["controls"]
      123 GETTABLEKS                       R8 R9 K25 ["debug"]
      125 SETTABLEKS                       R8 R7 K25 ["debug"]
      127 LOADN                            R8 5
      128 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      130 CALL                             R5 2 1
      131 SETTABLEKS                       R5 R4 K10 ["Child5"]
      133 GETUPVAL                         R6 0
      134 GETTABLEKS                       R5 R6 K0 ["createElement"]
      136 GETUPVAL                         R6 2
      137 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      138 LOADK                            R8 K32 ["xs-col-1 sm-col-2 md-col-4 lg-col-4 xl-col-4"]
      139 SETTABLEKS                       R8 R7 K23 ["tag"]
      141 LOADK                            R8 K35 ["C6"]
      142 SETTABLEKS                       R8 R7 K24 ["name"]
      144 GETTABLEKS                       R9 R0 K4 ["controls"]
      146 GETTABLEKS                       R8 R9 K25 ["debug"]
      148 SETTABLEKS                       R8 R7 K25 ["debug"]
      150 LOADN                            R8 6
      151 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      153 CALL                             R5 2 1
      154 SETTABLEKS                       R5 R4 K11 ["Child6"]
      156 GETUPVAL                         R6 0
      157 GETTABLEKS                       R5 R6 K0 ["createElement"]
      159 GETUPVAL                         R6 2
      160 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      161 LOADK                            R8 K36 ["xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3"]
      162 SETTABLEKS                       R8 R7 K23 ["tag"]
      164 LOADK                            R8 K31 ["C3"]
      165 SETTABLEKS                       R8 R7 K24 ["name"]
      167 GETTABLEKS                       R9 R0 K4 ["controls"]
      169 GETTABLEKS                       R8 R9 K25 ["debug"]
      171 SETTABLEKS                       R8 R7 K25 ["debug"]
      173 LOADN                            R8 7
      174 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      176 CALL                             R5 2 1
      177 SETTABLEKS                       R5 R4 K12 ["Child7"]
      179 GETUPVAL                         R6 0
      180 GETTABLEKS                       R5 R6 K0 ["createElement"]
      182 GETUPVAL                         R6 2
      183 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      184 LOADK                            R8 K37 ["xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3"]
      185 SETTABLEKS                       R8 R7 K23 ["tag"]
      187 LOADK                            R8 K33 ["C4"]
      188 SETTABLEKS                       R8 R7 K24 ["name"]
      190 GETTABLEKS                       R9 R0 K4 ["controls"]
      192 GETTABLEKS                       R8 R9 K25 ["debug"]
      194 SETTABLEKS                       R8 R7 K25 ["debug"]
      196 LOADN                            R8 8
      197 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      199 CALL                             R5 2 1
      200 SETTABLEKS                       R5 R4 K13 ["Child8"]
      202 GETUPVAL                         R6 0
      203 GETTABLEKS                       R5 R6 K0 ["createElement"]
      205 GETUPVAL                         R6 2
      206 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      207 LOADK                            R8 K37 ["xs-col-0 sm-col-2 md-col-3 lg-col-3 xl-col-3"]
      208 SETTABLEKS                       R8 R7 K23 ["tag"]
      210 LOADK                            R8 K34 ["C5"]
      211 SETTABLEKS                       R8 R7 K24 ["name"]
      213 GETTABLEKS                       R9 R0 K4 ["controls"]
      215 GETTABLEKS                       R8 R9 K25 ["debug"]
      217 SETTABLEKS                       R8 R7 K25 ["debug"]
      219 LOADN                            R8 9
      220 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      222 CALL                             R5 2 1
      223 SETTABLEKS                       R5 R4 K14 ["Child9"]
      225 GETUPVAL                         R6 0
      226 GETTABLEKS                       R5 R6 K0 ["createElement"]
      228 GETUPVAL                         R6 2
      229 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      230 LOADK                            R8 K36 ["xs-col-0 sm-col-1 md-col-3 lg-col-3 xl-col-3"]
      231 SETTABLEKS                       R8 R7 K23 ["tag"]
      233 LOADK                            R8 K35 ["C6"]
      234 SETTABLEKS                       R8 R7 K24 ["name"]
      236 GETTABLEKS                       R9 R0 K4 ["controls"]
      238 GETTABLEKS                       R8 R9 K25 ["debug"]
      240 SETTABLEKS                       R8 R7 K25 ["debug"]
      242 LOADN                            R8 10
      243 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      245 CALL                             R5 2 1
      246 SETTABLEKS                       R5 R4 K15 ["Child10"]
      248 GETUPVAL                         R6 0
      249 GETTABLEKS                       R5 R6 K0 ["createElement"]
      251 GETUPVAL                         R6 2
      252 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      253 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      254 SETTABLEKS                       R8 R7 K23 ["tag"]
      256 LOADK                            R8 K31 ["C3"]
      257 SETTABLEKS                       R8 R7 K24 ["name"]
      259 GETTABLEKS                       R9 R0 K4 ["controls"]
      261 GETTABLEKS                       R8 R9 K25 ["debug"]
      263 SETTABLEKS                       R8 R7 K25 ["debug"]
      265 LOADN                            R8 11
      266 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      268 CALL                             R5 2 1
      269 SETTABLEKS                       R5 R4 K16 ["Child11"]
      271 GETUPVAL                         R6 0
      272 GETTABLEKS                       R5 R6 K0 ["createElement"]
      274 GETUPVAL                         R6 2
      275 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      276 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      277 SETTABLEKS                       R8 R7 K23 ["tag"]
      279 LOADK                            R8 K33 ["C4"]
      280 SETTABLEKS                       R8 R7 K24 ["name"]
      282 GETTABLEKS                       R9 R0 K4 ["controls"]
      284 GETTABLEKS                       R8 R9 K25 ["debug"]
      286 SETTABLEKS                       R8 R7 K25 ["debug"]
      288 LOADN                            R8 12
      289 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      291 CALL                             R5 2 1
      292 SETTABLEKS                       R5 R4 K17 ["Child12"]
      294 GETUPVAL                         R6 0
      295 GETTABLEKS                       R5 R6 K0 ["createElement"]
      297 GETUPVAL                         R6 2
      298 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      299 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      300 SETTABLEKS                       R8 R7 K23 ["tag"]
      302 LOADK                            R8 K34 ["C5"]
      303 SETTABLEKS                       R8 R7 K24 ["name"]
      305 GETTABLEKS                       R9 R0 K4 ["controls"]
      307 GETTABLEKS                       R8 R9 K25 ["debug"]
      309 SETTABLEKS                       R8 R7 K25 ["debug"]
      311 LOADN                            R8 13
      312 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      314 CALL                             R5 2 1
      315 SETTABLEKS                       R5 R4 K18 ["Child13"]
      317 GETUPVAL                         R6 0
      318 GETTABLEKS                       R5 R6 K0 ["createElement"]
      320 GETUPVAL                         R6 2
      321 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      322 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      323 SETTABLEKS                       R8 R7 K23 ["tag"]
      325 LOADK                            R8 K35 ["C6"]
      326 SETTABLEKS                       R8 R7 K24 ["name"]
      328 GETTABLEKS                       R9 R0 K4 ["controls"]
      330 GETTABLEKS                       R8 R9 K25 ["debug"]
      332 SETTABLEKS                       R8 R7 K25 ["debug"]
      334 LOADN                            R8 14
      335 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      337 CALL                             R5 2 1
      338 SETTABLEKS                       R5 R4 K19 ["Child14"]
      340 GETUPVAL                         R6 0
      341 GETTABLEKS                       R5 R6 K0 ["createElement"]
      343 GETUPVAL                         R6 2
      344 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      345 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      346 SETTABLEKS                       R8 R7 K23 ["tag"]
      348 LOADK                            R8 K35 ["C6"]
      349 SETTABLEKS                       R8 R7 K24 ["name"]
      351 GETTABLEKS                       R9 R0 K4 ["controls"]
      353 GETTABLEKS                       R8 R9 K25 ["debug"]
      355 SETTABLEKS                       R8 R7 K25 ["debug"]
      357 LOADN                            R8 15
      358 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      360 CALL                             R5 2 1
      361 SETTABLEKS                       R5 R4 K20 ["Child15"]
      363 GETUPVAL                         R6 0
      364 GETTABLEKS                       R5 R6 K0 ["createElement"]
      366 GETUPVAL                         R6 2
      367 DUPTABLE                         R7 K27 [{"tag", "name", "debug", "LayoutOrder"}]
      368 LOADK                            R8 K38 ["xs-col-0 sm-col-1 md-col-2 lg-col-2 xl-col-2"]
      369 SETTABLEKS                       R8 R7 K23 ["tag"]
      371 LOADK                            R8 K35 ["C6"]
      372 SETTABLEKS                       R8 R7 K24 ["name"]
      374 GETTABLEKS                       R9 R0 K4 ["controls"]
      376 GETTABLEKS                       R8 R9 K25 ["debug"]
      378 SETTABLEKS                       R8 R7 K25 ["debug"]
      380 LOADN                            R8 16
      381 SETTABLEKS                       R8 R7 K26 ["LayoutOrder"]
      383 CALL                             R5 2 1
      384 SETTABLEKS                       R5 R4 K21 ["Child16"]
      386 CALL                             R1 3 1
      387 GETTABLEKS                       R4 R0 K4 ["controls"]
      389 GETTABLEKS                       R3 R4 K25 ["debug"]
      391 JUMPIFNOT                        R3 ; [+14]
      392 GETUPVAL                         R3 0
      393 GETTABLEKS                       R2 R3 K0 ["createElement"]
      395 GETUPVAL                         R3 3
      396 DUPTABLE                         R4 K39 [{"align"}]
      397 GETTABLEKS                       R6 R0 K4 ["controls"]
      399 GETTABLEKS                       R5 R6 K1 ["align"]
      401 SETTABLEKS                       R5 R4 K1 ["align"]
      403 MOVE                             R5 R1
      404 CALL                             R2 3 1
      405 RETURN                           R2 1
      406 MOVE                             R2 R1
      407 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"align", "Wraps", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K5 ["controls"]
        8 GETTABLEKS                       R3 R4 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K5 ["controls"]
       15 GETTABLEKS                       R3 R4 K6 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       22 DUPTABLE                         R3 K9 [{"SubChildL1", "SubChildL2"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K0 ["createElement"]
       26 GETUPVAL                         R5 3
       27 DUPTABLE                         R6 K14 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
       28 LOADK                            R7 K15 ["xs-col-2 sm-col-3 md-col-6 lg-col-8 xl-col-8"]
       29 SETTABLEKS                       R7 R6 K10 ["tag"]
       31 LOADK                            R7 K16 ["SC1"]
       32 SETTABLEKS                       R7 R6 K11 ["name"]
       34 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       36 LOADN                            R8 0
       37 LOADN                            R9 250
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K12 ["Size"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R8 R9 K5 ["controls"]
       44 GETTABLEKS                       R7 R8 K13 ["debug"]
       46 SETTABLEKS                       R7 R6 K13 ["debug"]
       48 LOADN                            R7 1
       49 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K7 ["SubChildL1"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K0 ["createElement"]
       57 GETUPVAL                         R5 3
       58 DUPTABLE                         R6 K14 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
       59 LOADK                            R7 K20 ["xs-col-1 sm-col-3 md-col-6 lg-col-4 xl-col-4"]
       60 SETTABLEKS                       R7 R6 K10 ["tag"]
       62 LOADK                            R7 K16 ["SC1"]
       63 SETTABLEKS                       R7 R6 K11 ["name"]
       65 GETIMPORT                        R7 K19 [UDim2.fromOffset]
       67 LOADN                            R8 0
       68 LOADN                            R9 250
       69 CALL                             R7 2 1
       70 SETTABLEKS                       R7 R6 K12 ["Size"]
       72 GETUPVAL                         R9 2
       73 GETTABLEKS                       R8 R9 K5 ["controls"]
       75 GETTABLEKS                       R7 R8 K13 ["debug"]
       77 SETTABLEKS                       R7 R6 K13 ["debug"]
       79 LOADN                            R7 1
       80 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       82 CALL                             R4 2 1
       83 SETTABLEKS                       R4 R3 K8 ["SubChildL2"]
       85 CALL                             R0 3 1
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R3 R4 K5 ["controls"]
       89 GETTABLEKS                       R2 R3 K13 ["debug"]
       91 JUMPIFNOT                        R2 ; [+15]
       92 GETUPVAL                         R2 0
       93 GETTABLEKS                       R1 R2 K0 ["createElement"]
       95 GETUPVAL                         R2 4
       96 DUPTABLE                         R3 K21 [{"align"}]
       97 GETUPVAL                         R6 2
       98 GETTABLEKS                       R5 R6 K5 ["controls"]
      100 GETTABLEKS                       R4 R5 K1 ["align"]
      102 SETTABLEKS                       R4 R3 K1 ["align"]
      104 MOVE                             R4 R0
      105 CALL                             R1 3 1
      106 RETURN                           R1 1
      107 MOVE                             R1 R0
      108 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"align", "Wraps", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K5 ["controls"]
        8 GETTABLEKS                       R3 R4 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K5 ["controls"]
       15 GETTABLEKS                       R3 R4 K6 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       22 DUPTABLE                         R3 K8 [{"SubChildR1"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K0 ["createElement"]
       26 GETUPVAL                         R5 3
       27 DUPTABLE                         R6 K13 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
       28 LOADK                            R7 K14 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
       29 SETTABLEKS                       R7 R6 K9 ["tag"]
       31 LOADK                            R7 K15 ["SC1"]
       32 SETTABLEKS                       R7 R6 K10 ["name"]
       34 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       36 LOADN                            R8 0
       37 LOADN                            R9 125
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K11 ["Size"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R8 R9 K5 ["controls"]
       44 GETTABLEKS                       R7 R8 K12 ["debug"]
       46 SETTABLEKS                       R7 R6 K12 ["debug"]
       48 LOADN                            R7 1
       49 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K7 ["SubChildR1"]
       54 CALL                             R0 3 1
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K5 ["controls"]
       58 GETTABLEKS                       R2 R3 K12 ["debug"]
       60 JUMPIFNOT                        R2 ; [+15]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R1 R2 K0 ["createElement"]
       64 GETUPVAL                         R2 4
       65 DUPTABLE                         R3 K19 [{"align"}]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R5 R6 K5 ["controls"]
       69 GETTABLEKS                       R4 R5 K1 ["align"]
       71 SETTABLEKS                       R4 R3 K1 ["align"]
       73 MOVE                             R4 R0
       74 CALL                             R1 3 1
       75 RETURN                           R1 1
       76 MOVE                             R1 R0
       77 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{"align", "Wraps", "LayoutOrder"}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K5 ["controls"]
        8 GETTABLEKS                       R3 R4 K1 ["align"]
       10 SETTABLEKS                       R3 R2 K1 ["align"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R4 R5 K5 ["controls"]
       15 GETTABLEKS                       R3 R4 K6 ["wraps"]
       17 SETTABLEKS                       R3 R2 K2 ["Wraps"]
       19 LOADN                            R3 1
       20 SETTABLEKS                       R3 R2 K3 ["LayoutOrder"]
       22 DUPTABLE                         R3 K8 [{"SubChildR2"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K0 ["createElement"]
       26 GETUPVAL                         R5 3
       27 DUPTABLE                         R6 K13 [{"tag", "name", "Size", "debug", "LayoutOrder"}]
       28 LOADK                            R7 K14 ["xs-col-3 sm-col-6 md-col-12 lg-col-12 xl-col-12"]
       29 SETTABLEKS                       R7 R6 K9 ["tag"]
       31 LOADK                            R7 K15 ["SC2"]
       32 SETTABLEKS                       R7 R6 K10 ["name"]
       34 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       36 LOADN                            R8 0
       37 LOADN                            R9 125
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K11 ["Size"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R8 R9 K5 ["controls"]
       44 GETTABLEKS                       R7 R8 K12 ["debug"]
       46 SETTABLEKS                       R7 R6 K12 ["debug"]
       48 LOADN                            R7 1
       49 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K7 ["SubChildR2"]
       54 CALL                             R0 3 1
       55 GETUPVAL                         R4 2
       56 GETTABLEKS                       R3 R4 K5 ["controls"]
       58 GETTABLEKS                       R2 R3 K12 ["debug"]
       60 JUMPIFNOT                        R2 ; [+15]
       61 GETUPVAL                         R2 0
       62 GETTABLEKS                       R1 R2 K0 ["createElement"]
       64 GETUPVAL                         R2 4
       65 DUPTABLE                         R3 K19 [{"align"}]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R5 R6 K5 ["controls"]
       69 GETTABLEKS                       R4 R5 K1 ["align"]
       71 SETTABLEKS                       R4 R3 K1 ["align"]
       73 MOVE                             R4 R0
       74 CALL                             R1 3 1
       75 RETURN                           R1 1
       76 MOVE                             R1 R0
       77 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"tag"}]
        5 LOADK                            R4 K3 ["size-full-3000 row auto-y"]
        6 SETTABLEKS                       R4 R3 K1 ["tag"]
        8 DUPTABLE                         R4 K6 [{"Left", "Right"}]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K8 [{"tag", "Size"}]
       14 LOADK                            R8 K9 ["col flex-y-fill items-stretch auto-y"]
       15 SETTABLEKS                       R8 R7 K1 ["tag"]
       17 GETIMPORT                        R8 K12 [UDim2.new]
       19 LOADK                            R9 K13 [0.666]
       20 LOADN                            R10 0
       21 LOADN                            R11 1
       22 LOADN                            R12 0
       23 CALL                             R8 4 1
       24 SETTABLEKS                       R8 R7 K7 ["Size"]
       26 DUPTABLE                         R8 K15 [{"ChildL1"}]
       27 NEWCLOSURE                       R9 P0
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CALL                             R9 0 1
       34 SETTABLEKS                       R9 R8 K14 ["ChildL1"]
       36 CALL                             R5 3 1
       37 SETTABLEKS                       R5 R4 K4 ["Left"]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K0 ["createElement"]
       42 GETUPVAL                         R6 1
       43 DUPTABLE                         R7 K8 [{"tag", "Size"}]
       44 LOADK                            R8 K16 ["col flex-y-fill auto-y"]
       45 SETTABLEKS                       R8 R7 K1 ["tag"]
       47 GETIMPORT                        R8 K12 [UDim2.new]
       49 LOADK                            R9 K17 [0.333]
       50 LOADN                            R10 0
       51 LOADN                            R11 1
       52 LOADN                            R12 0
       53 CALL                             R8 4 1
       54 SETTABLEKS                       R8 R7 K7 ["Size"]
       56 DUPTABLE                         R8 K20 [{"ChildR1", "ChildR2"}]
       57 NEWCLOSURE                       R9 P1
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U4
       63 CALL                             R9 0 1
       64 SETTABLEKS                       R9 R8 K18 ["ChildR1"]
       66 NEWCLOSURE                       R9 P2
       67 CAPTURE                          UPVAL U0
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 CALL                             R9 0 1
       73 SETTABLEKS                       R9 R8 K19 ["ChildR2"]
       75 CALL                             R5 3 1
       76 SETTABLEKS                       R5 R4 K5 ["Right"]
       78 CALL                             R1 3 -1
       79 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["Grid"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R4 R5 K11 ["Root"]
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Components"]
       34 GETTABLEKS                       R7 R8 K10 ["Grid"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R5 R6 K12 ["Cell"]
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Components"]
       43 GETTABLEKS                       R7 R8 K13 ["Text"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R0 K14 ["Utility"]
       50 GETTABLEKS                       R8 R9 K15 ["getGridMetrics"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K14 ["Utility"]
       57 GETTABLEKS                       R9 R10 K16 ["getGridSizeTag"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R11 R0 K8 ["Components"]
       64 GETTABLEKS                       R10 R11 K17 ["Types"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R13 R0 K8 ["Components"]
       71 GETTABLEKS                       R12 R13 K10 ["Grid"]
       73 GETTABLEKS                       R11 R12 K18 ["Debug"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K21 [Color3.fromRGB]
       78 LOADN                            R12 255
       79 LOADN                            R13 255
       80 LOADN                            R14 255
       81 CALL                             R11 3 1
       82 DUPCLOSURE                       R12 K22 [PROTO_0]
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R6
       87 DUPCLOSURE                       R13 K23 [PROTO_1]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R11
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R8
       93 DUPTABLE                         R14 K27 [{"summary", "stories", "controls"}]
       94 LOADK                            R15 K10 ["Grid"]
       95 SETTABLEKS                       R15 R14 K24 ["summary"]
       97 NEWTABLE                         R15 0 5
       99 DUPTABLE                         R16 K30 [{"name", "story"}]
      100 LOADK                            R17 K31 ["Base"]
      101 SETTABLEKS                       R17 R16 K28 ["name"]
      103 DUPCLOSURE                       R17 K32 [PROTO_2]
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R10
      108 SETTABLEKS                       R17 R16 K29 ["story"]
      110 DUPTABLE                         R17 K30 [{"name", "story"}]
      111 LOADK                            R18 K33 ["Base w/ GridCell"]
      112 SETTABLEKS                       R18 R17 K28 ["name"]
      114 DUPCLOSURE                       R18 K34 [PROTO_3]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R18 R17 K29 ["story"]
      121 DUPTABLE                         R18 K30 [{"name", "story"}]
      122 LOADK                            R19 K10 ["Grid"]
      123 SETTABLEKS                       R19 R18 K28 ["name"]
      125 DUPCLOSURE                       R19 K35 [PROTO_5]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R19 R18 K29 ["story"]
      133 DUPTABLE                         R19 K30 [{"name", "story"}]
      134 LOADK                            R20 K36 ["Fluid"]
      135 SETTABLEKS                       R20 R19 K28 ["name"]
      137 DUPCLOSURE                       R20 K37 [PROTO_6]
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R10
      142 SETTABLEKS                       R20 R19 K29 ["story"]
      144 DUPTABLE                         R20 K30 [{"name", "story"}]
      145 LOADK                            R21 K38 ["Template"]
      146 SETTABLEKS                       R21 R20 K28 ["name"]
      148 DUPCLOSURE                       R21 K39 [PROTO_10]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R10
      154 SETTABLEKS                       R21 R20 K29 ["story"]
      156 SETLIST                          R15 R16 5 [1]
      158 SETTABLEKS                       R15 R14 K25 ["stories"]
      160 DUPTABLE                         R15 K43 [{"align", "wraps", "debug"}]
      161 NEWTABLE                         R16 0 3
      163 GETIMPORT                        R17 K47 [Enum.ItemLineAlignment.Center]
      165 GETIMPORT                        R18 K49 [Enum.ItemLineAlignment.Start]
      167 GETIMPORT                        R19 K51 [Enum.ItemLineAlignment.End]
      169 SETLIST                          R16 R17 3 [1]
      171 SETTABLEKS                       R16 R15 K40 ["align"]
      173 LOADB                            R16 1
      174 SETTABLEKS                       R16 R15 K41 ["wraps"]
      176 LOADB                            R16 1
      177 SETTABLEKS                       R16 R15 K42 ["debug"]
      179 SETTABLEKS                       R15 R14 K26 ["controls"]
      181 RETURN                           R14 1

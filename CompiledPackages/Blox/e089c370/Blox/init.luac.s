PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "expr"}]
        1 LOADK                            R2 K3 ["Expr"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["expr"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["scheduled"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["depth"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K2 ["enqueue"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["stop"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R3
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          REF R3
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["new"]
        6 LOADK                            R6 K1 ["mount"]
        7 LOADN                            R7 1
        8 NEWCLOSURE                       R8 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R4
       11 CALL                             R5 3 1
       12 MOVE                             R3 R5
       13 DUPTABLE                         R5 K8 [{"type", "templateAst", "templateId", "params", "children", "host"}]
       14 LOADK                            R6 K9 ["Ref"]
       15 SETTABLEKS                       R6 R5 K2 ["type"]
       17 SETTABLEKS                       R0 R5 K3 ["templateAst"]
       19 LOADK                            R7 K10 ["/custom/%*"]
       20 GETTABLEKS                       R9 R0 K11 ["name"]
       22 NAMECALL                         R7 R7 K12 ["format"]
       24 CALL                             R7 2 1
       25 MOVE                             R6 R7
       26 SETTABLEKS                       R6 R5 K4 ["templateId"]
       28 MOVE                             R6 R1
       29 JUMPIF                           R6 ; [+2]
       30 NEWTABLE                         R6 0 0
       32 SETTABLEKS                       R6 R5 K5 ["params"]
       34 NEWTABLE                         R6 0 0
       36 SETTABLEKS                       R6 R5 K6 ["children"]
       38 SETTABLEKS                       R2 R5 K7 ["host"]
       40 GETUPVAL                         R6 2
       41 MOVE                             R7 R4
       42 MOVE                             R8 R5
       43 MOVE                             R9 R2
       44 CALL                             R6 3 1
       45 GETTABLEKS                       R7 R6 K13 ["scheduled"]
       47 JUMPIF                           R7 ; [+9]
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R6 K13 ["scheduled"]
       51 GETTABLEKS                       R9 R6 K14 ["depth"]
       53 MOVE                             R10 R6
       54 NAMECALL                         R7 R3 K15 ["enqueue"]
       56 CALL                             R7 3 0
       57 NAMECALL                         R7 R3 K16 ["start"]
       59 CALL                             R7 1 0
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K17 ["Debug"]
       63 GETTABLEKS                       R7 R7 K18 ["PRE_RENDER_FLUSH"]
       65 JUMPIFNOT                        R7 ; [+3]
       66 NAMECALL                         R7 R3 K19 ["enablePreRenderFlush"]
       68 CALL                             R7 1 0
       69 NEWCLOSURE                       R7 P2
       70 CAPTURE                          REF R3
       71 MOVE                             R8 R7
       72 MOVE                             R9 R3
       73 CLOSEUPVALS                      R3
       74 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["ast"]
        7 GETTABLEKS                       R1 R1 K5 ["VirtualAst"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K6 ["types"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R3 K3 [script]
       21 GETTABLEKS                       R3 R3 K7 ["state"]
       23 GETTABLEKS                       R3 R3 K8 ["Signals"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [require]
       28 GETIMPORT                        R4 K3 [script]
       30 GETTABLEKS                       R4 R4 K9 ["runtime"]
       32 GETTABLEKS                       R4 R4 K10 ["TemplateResolver"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K1 [require]
       37 GETIMPORT                        R5 K3 [script]
       39 GETTABLEKS                       R5 R5 K11 ["data"]
       41 GETTABLEKS                       R5 R5 K12 ["WorkQueue"]
       43 CALL                             R4 1 1
       44 GETIMPORT                        R5 K1 [require]
       46 GETIMPORT                        R6 K3 [script]
       48 GETTABLEKS                       R6 R6 K9 ["runtime"]
       50 GETTABLEKS                       R6 R6 K13 ["makeElement"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K1 [require]
       55 GETIMPORT                        R7 K3 [script]
       57 GETTABLEKS                       R7 R7 K9 ["runtime"]
       59 GETTABLEKS                       R7 R7 K14 ["update"]
       61 CALL                             R6 1 1
       62 DUPCLOSURE                       R7 K15 [PROTO_0]
       63 NEWTABLE                         R8 64 0
       65 GETIMPORT                        R9 K1 [require]
       67 GETIMPORT                        R10 K3 [script]
       69 GETTABLEKS                       R10 R10 K16 ["Debug"]
       71 CALL                             R9 1 1
       72 SETTABLEKS                       R9 R8 K16 ["Debug"]
       74 GETIMPORT                        R9 K1 [require]
       76 GETIMPORT                        R10 K3 [script]
       78 GETTABLEKS                       R10 R10 K17 ["test"]
       80 GETTABLEKS                       R10 R10 K18 ["TestHarness"]
       82 CALL                             R9 1 1
       83 SETTABLEKS                       R9 R8 K18 ["TestHarness"]
       85 SETTABLEKS                       R3 R8 K10 ["TemplateResolver"]
       87 GETIMPORT                        R9 K1 [require]
       89 GETIMPORT                        R10 K3 [script]
       91 GETTABLEKS                       R10 R10 K19 ["authoring"]
       93 GETTABLEKS                       R10 R10 K20 ["AuthoringMonitor"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K20 ["AuthoringMonitor"]
       98 GETIMPORT                        R9 K1 [require]
      100 GETIMPORT                        R10 K3 [script]
      102 GETTABLEKS                       R10 R10 K19 ["authoring"]
      104 GETTABLEKS                       R10 R10 K21 ["AuthoringView"]
      106 CALL                             R9 1 1
      107 SETTABLEKS                       R9 R8 K21 ["AuthoringView"]
      109 GETIMPORT                        R9 K1 [require]
      111 GETIMPORT                        R10 K3 [script]
      113 GETTABLEKS                       R10 R10 K22 ["monitor"]
      115 GETTABLEKS                       R10 R10 K23 ["RefMonitor"]
      117 CALL                             R9 1 1
      118 SETTABLEKS                       R9 R8 K23 ["RefMonitor"]
      120 GETIMPORT                        R9 K1 [require]
      122 GETIMPORT                        R10 K3 [script]
      124 GETTABLEKS                       R10 R10 K22 ["monitor"]
      126 GETTABLEKS                       R10 R10 K24 ["TemplateMonitor"]
      128 CALL                             R9 1 1
      129 SETTABLEKS                       R9 R8 K24 ["TemplateMonitor"]
      131 GETIMPORT                        R9 K1 [require]
      133 GETIMPORT                        R10 K3 [script]
      135 GETTABLEKS                       R10 R10 K22 ["monitor"]
      137 GETTABLEKS                       R10 R10 K25 ["TemplateRegistry"]
      139 CALL                             R9 1 1
      140 SETTABLEKS                       R9 R8 K25 ["TemplateRegistry"]
      142 GETIMPORT                        R9 K1 [require]
      144 GETIMPORT                        R10 K3 [script]
      146 GETTABLEKS                       R10 R10 K26 ["util"]
      148 GETTABLEKS                       R10 R10 K27 ["pretty"]
      150 CALL                             R9 1 1
      151 SETTABLEKS                       R9 R8 K27 ["pretty"]
      153 GETTABLEKS                       R9 R2 K28 ["createComputed"]
      155 SETTABLEKS                       R9 R8 K28 ["createComputed"]
      157 GETTABLEKS                       R9 R2 K29 ["createSignal"]
      159 SETTABLEKS                       R9 R8 K29 ["createSignal"]
      161 GETTABLEKS                       R9 R2 K30 ["createEffect"]
      163 SETTABLEKS                       R9 R8 K30 ["createEffect"]
      165 GETIMPORT                        R9 K1 [require]
      167 GETIMPORT                        R10 K3 [script]
      169 GETTABLEKS                       R10 R10 K7 ["state"]
      171 GETTABLEKS                       R10 R10 K31 ["createStore"]
      173 CALL                             R9 1 1
      174 SETTABLEKS                       R9 R8 K31 ["createStore"]
      176 GETIMPORT                        R9 K1 [require]
      178 GETIMPORT                        R10 K3 [script]
      180 GETTABLEKS                       R10 R10 K7 ["state"]
      182 GETTABLEKS                       R10 R10 K32 ["StoreMatchers"]
      184 CALL                             R9 1 1
      185 SETTABLEKS                       R9 R8 K32 ["StoreMatchers"]
      187 GETTABLEKS                       R9 R2 K33 ["peek"]
      189 SETTABLEKS                       R9 R8 K33 ["peek"]
      191 SETTABLEKS                       R7 R8 K34 ["expr"]
      193 GETTABLEKS                       R9 R0 K35 ["template"]
      195 SETTABLEKS                       R9 R8 K35 ["template"]
      197 GETTABLEKS                       R9 R0 K36 ["If"]
      199 SETTABLEKS                       R9 R8 K36 ["If"]
      201 GETTABLEKS                       R9 R0 K37 ["For"]
      203 SETTABLEKS                       R9 R8 K37 ["For"]
      205 GETTABLEKS                       R9 R0 K38 ["VirtualList"]
      207 SETTABLEKS                       R9 R8 K38 ["VirtualList"]
      209 GETTABLEKS                       R9 R0 K39 ["Put"]
      211 SETTABLEKS                       R9 R8 K39 ["Put"]
      213 GETTABLEKS                       R9 R0 K40 ["Provide"]
      215 SETTABLEKS                       R9 R8 K40 ["Provide"]
      217 GETTABLEKS                       R9 R0 K41 ["Portal"]
      219 SETTABLEKS                       R9 R8 K41 ["Portal"]
      221 GETTABLEKS                       R9 R0 K42 ["Folder"]
      223 SETTABLEKS                       R9 R8 K42 ["Folder"]
      225 GETTABLEKS                       R9 R0 K43 ["TextLabel"]
      227 SETTABLEKS                       R9 R8 K43 ["TextLabel"]
      229 GETTABLEKS                       R9 R0 K44 ["TextButton"]
      231 SETTABLEKS                       R9 R8 K44 ["TextButton"]
      233 GETTABLEKS                       R9 R0 K45 ["TextBox"]
      235 SETTABLEKS                       R9 R8 K45 ["TextBox"]
      237 GETTABLEKS                       R9 R0 K46 ["Frame"]
      239 SETTABLEKS                       R9 R8 K46 ["Frame"]
      241 GETTABLEKS                       R9 R0 K47 ["ImageLabel"]
      243 SETTABLEKS                       R9 R8 K47 ["ImageLabel"]
      245 GETTABLEKS                       R9 R0 K48 ["ImageButton"]
      247 SETTABLEKS                       R9 R8 K48 ["ImageButton"]
      249 GETTABLEKS                       R9 R0 K49 ["CanvasGroup"]
      251 SETTABLEKS                       R9 R8 K49 ["CanvasGroup"]
      253 GETTABLEKS                       R9 R0 K50 ["ScrollingFrame"]
      255 SETTABLEKS                       R9 R8 K50 ["ScrollingFrame"]
      257 GETTABLEKS                       R9 R0 K51 ["StyleSheet"]
      259 SETTABLEKS                       R9 R8 K51 ["StyleSheet"]
      261 GETTABLEKS                       R9 R0 K52 ["StyleLink"]
      263 SETTABLEKS                       R9 R8 K52 ["StyleLink"]
      265 GETIMPORT                        R9 K1 [require]
      267 GETIMPORT                        R10 K3 [script]
      269 GETTABLEKS                       R10 R10 K53 ["std"]
      271 GETTABLEKS                       R10 R10 K36 ["If"]
      273 CALL                             R9 1 1
      274 GETTABLEKS                       R10 R3 K54 ["addStdTemplate"]
      276 MOVE                             R11 R9
      277 CALL                             R10 1 0
      278 GETIMPORT                        R10 K1 [require]
      280 GETIMPORT                        R11 K3 [script]
      282 GETTABLEKS                       R11 R11 K53 ["std"]
      284 GETTABLEKS                       R11 R11 K37 ["For"]
      286 CALL                             R10 1 1
      287 GETTABLEKS                       R11 R3 K54 ["addStdTemplate"]
      289 MOVE                             R12 R10
      290 CALL                             R11 1 0
      291 GETIMPORT                        R11 K1 [require]
      293 GETIMPORT                        R12 K3 [script]
      295 GETTABLEKS                       R12 R12 K53 ["std"]
      297 GETTABLEKS                       R12 R12 K38 ["VirtualList"]
      299 CALL                             R11 1 1
      300 GETTABLEKS                       R12 R3 K54 ["addStdTemplate"]
      302 MOVE                             R13 R11
      303 CALL                             R12 1 0
      304 GETIMPORT                        R12 K1 [require]
      306 GETIMPORT                        R13 K3 [script]
      308 GETTABLEKS                       R13 R13 K53 ["std"]
      310 GETTABLEKS                       R13 R13 K39 ["Put"]
      312 CALL                             R12 1 1
      313 GETTABLEKS                       R13 R3 K54 ["addStdTemplate"]
      315 MOVE                             R14 R12
      316 CALL                             R13 1 0
      317 GETIMPORT                        R13 K1 [require]
      319 GETIMPORT                        R14 K3 [script]
      321 GETTABLEKS                       R14 R14 K53 ["std"]
      323 GETTABLEKS                       R14 R14 K40 ["Provide"]
      325 CALL                             R13 1 1
      326 GETTABLEKS                       R14 R3 K54 ["addStdTemplate"]
      328 MOVE                             R15 R13
      329 CALL                             R14 1 0
      330 GETIMPORT                        R14 K1 [require]
      332 GETIMPORT                        R15 K3 [script]
      334 GETTABLEKS                       R15 R15 K53 ["std"]
      336 GETTABLEKS                       R15 R15 K41 ["Portal"]
      338 CALL                             R14 1 1
      339 GETTABLEKS                       R15 R3 K54 ["addStdTemplate"]
      341 MOVE                             R16 R14
      342 CALL                             R15 1 0
      343 GETIMPORT                        R15 K1 [require]
      345 GETIMPORT                        R16 K3 [script]
      347 GETTABLEKS                       R16 R16 K7 ["state"]
      349 GETTABLEKS                       R16 R16 K55 ["createProvider"]
      351 CALL                             R15 1 1
      352 SETTABLEKS                       R15 R8 K55 ["createProvider"]
      354 DUPCLOSURE                       R15 K56 [PROTO_4]
      355 CAPTURE                          VAL R4
      356 CAPTURE                          VAL R6
      357 CAPTURE                          VAL R5
      358 CAPTURE                          VAL R8
      359 SETTABLEKS                       R15 R8 K57 ["mount"]
      361 RETURN                           R8 1

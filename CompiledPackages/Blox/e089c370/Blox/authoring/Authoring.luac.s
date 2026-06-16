PROTO_0:
        0 DUPTABLE                         R1 K2 [{"type", "expr"}]
        1 LOADK                            R2 K3 ["Expr"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 SETTABLEKS                       R0 R1 K1 ["expr"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["ast"]
       16 GETTABLEKS                       R3 R3 K7 ["VirtualAst"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K8 ["template"]
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 GETTABLEKS                       R5 R2 K10 ["Frame"]
       24 GETTABLEKS                       R6 R2 K11 ["TextButton"]
       26 GETTABLEKS                       R7 R2 K12 ["TextLabel"]
       28 GETTABLEKS                       R8 R2 K13 ["For"]
       30 GETIMPORT                        R9 K4 [require]
       32 GETIMPORT                        R10 K1 [script]
       34 GETTABLEKS                       R10 R10 K2 ["Parent"]
       36 GETTABLEKS                       R10 R10 K14 ["Variant"]
       38 CALL                             R9 1 1
       39 GETIMPORT                        R10 K4 [require]
       41 GETTABLEKS                       R11 R0 K15 ["examples"]
       43 GETTABLEKS                       R11 R11 K16 ["Styles"]
       45 CALL                             R10 1 1
       46 MOVE                             R11 R3
       47 LOADK                            R12 K17 ["Authoring"]
       48 DUPTABLE                         R13 K20 [{"name", "templateId"}]
       49 LOADK                            R14 K8 ["template"]
       50 SETTABLEKS                       R14 R13 K18 ["name"]
       52 LOADK                            R14 K21 [""]
       53 SETTABLEKS                       R14 R13 K19 ["templateId"]
       55 NEWTABLE                         R14 0 2
       57 MOVE                             R15 R5
       58 NEWTABLE                         R16 1 3
       60 LOADK                            R20 K22 ["col box auto-xy pad-20"]
       61 SETTABLEKS                       R20 R16 K23 ["Tags"]
       63 MOVE                             R17 R7
       64 DUPTABLE                         R18 K26 [{"Tags", "Text", "LayoutOrder"}]
       65 LOADK                            R19 K27 ["title white"]
       66 SETTABLEKS                       R19 R18 K23 ["Tags"]
       68 DUPTABLE                         R19 K30 [{"type", "expr"}]
       69 LOADK                            R20 K31 ["Expr"]
       70 SETTABLEKS                       R20 R19 K28 ["type"]
       72 LOADK                            R20 K18 ["name"]
       73 SETTABLEKS                       R20 R19 K29 ["expr"]
       75 SETTABLEKS                       R19 R18 K24 ["Text"]
       77 LOADN                            R19 1
       78 SETTABLEKS                       R19 R18 K25 ["LayoutOrder"]
       80 CALL                             R17 1 1
       81 MOVE                             R18 R5
       82 NEWTABLE                         R19 2 1
       84 LOADK                            R21 K32 ["row box auto-xy"]
       85 SETTABLEKS                       R21 R19 K23 ["Tags"]
       87 LOADN                            R21 2
       88 SETTABLEKS                       R21 R19 K25 ["LayoutOrder"]
       90 MOVE                             R20 R8
       91 DUPTABLE                         R21 K36 [{"items", "keyBy", "Each"}]
       92 DUPTABLE                         R22 K30 [{"type", "expr"}]
       93 LOADK                            R23 K31 ["Expr"]
       94 SETTABLEKS                       R23 R22 K28 ["type"]
       96 LOADK                            R23 K37 ["api.getTemplate(templateId).Variants:GetChildren()"]
       97 SETTABLEKS                       R23 R22 K29 ["expr"]
       99 SETTABLEKS                       R22 R21 K33 ["items"]
      101 DUPTABLE                         R22 K30 [{"type", "expr"}]
      102 LOADK                            R23 K31 ["Expr"]
      103 SETTABLEKS                       R23 R22 K28 ["type"]
      105 LOADK                            R23 K38 ["fn(item) item.id"]
      106 SETTABLEKS                       R23 R22 K29 ["expr"]
      108 SETTABLEKS                       R22 R21 K34 ["keyBy"]
      110 MOVE                             R22 R3
      111 NEWTABLE                         R23 0 2
      113 LOADK                            R24 K39 ["idx"]
      114 LOADK                            R25 K40 ["item"]
      115 SETLIST                          R23 R24 2 [1]
      117 NEWTABLE                         R24 0 1
      119 MOVE                             R25 R9
      120 DUPTABLE                         R26 K43 [{"templateId", "name", "order", "params"}]
      121 DUPTABLE                         R27 K30 [{"type", "expr"}]
      122 LOADK                            R28 K31 ["Expr"]
      123 SETTABLEKS                       R28 R27 K28 ["type"]
      125 LOADK                            R28 K19 ["templateId"]
      126 SETTABLEKS                       R28 R27 K29 ["expr"]
      128 SETTABLEKS                       R27 R26 K19 ["templateId"]
      130 DUPTABLE                         R27 K30 [{"type", "expr"}]
      131 LOADK                            R28 K31 ["Expr"]
      132 SETTABLEKS                       R28 R27 K28 ["type"]
      134 LOADK                            R28 K44 ["item.Name"]
      135 SETTABLEKS                       R28 R27 K29 ["expr"]
      137 SETTABLEKS                       R27 R26 K18 ["name"]
      139 DUPTABLE                         R27 K30 [{"type", "expr"}]
      140 LOADK                            R28 K31 ["Expr"]
      141 SETTABLEKS                       R28 R27 K28 ["type"]
      143 LOADK                            R28 K45 ["api.getParams(item).order"]
      144 SETTABLEKS                       R28 R27 K29 ["expr"]
      146 SETTABLEKS                       R27 R26 K41 ["order"]
      148 DUPTABLE                         R27 K30 [{"type", "expr"}]
      149 LOADK                            R28 K31 ["Expr"]
      150 SETTABLEKS                       R28 R27 K28 ["type"]
      152 LOADK                            R28 K46 ["api.getParams(item)"]
      153 SETTABLEKS                       R28 R27 K29 ["expr"]
      155 SETTABLEKS                       R27 R26 K42 ["params"]
      157 CALL                             R25 1 -1
      158 SETLIST                          R24 R25 -1 [1]
      160 CALL                             R22 2 1
      161 SETTABLEKS                       R22 R21 K35 ["Each"]
      163 CALL                             R20 1 -1
      164 SETLIST                          R19 R20 -1 [1]
      166 CALL                             R18 1 1
      167 MOVE                             R19 R6
      168 DUPTABLE                         R20 K48 [{"Tags", "Text", "LayoutOrder", "OnActivated"}]
      169 LOADK                            R21 K49 ["button auto-xy"]
      170 SETTABLEKS                       R21 R20 K23 ["Tags"]
      172 LOADK                            R21 K50 ["Add Variant"]
      173 SETTABLEKS                       R21 R20 K24 ["Text"]
      175 LOADN                            R21 3
      176 SETTABLEKS                       R21 R20 K25 ["LayoutOrder"]
      178 DUPTABLE                         R21 K30 [{"type", "expr"}]
      179 LOADK                            R22 K31 ["Expr"]
      180 SETTABLEKS                       R22 R21 K28 ["type"]
      182 LOADK                            R22 K51 ["fn() api.log('Add Variant clicked')"]
      183 SETTABLEKS                       R22 R21 K29 ["expr"]
      185 SETTABLEKS                       R21 R20 K47 ["OnActivated"]
      187 CALL                             R19 1 -1
      188 SETLIST                          R16 R17 -1 [1]
      190 CALL                             R15 1 1
      191 MOVE                             R16 R10
      192 NEWTABLE                         R17 0 0
      194 CALL                             R16 1 -1
      195 SETLIST                          R14 R15 -1 [1]
      197 CALL                             R11 3 1
      198 RETURN                           R11 1

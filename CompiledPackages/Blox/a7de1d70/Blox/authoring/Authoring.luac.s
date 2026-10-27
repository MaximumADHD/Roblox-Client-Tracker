PROTO_0:
        0 DUPTABLE                         R1 K3 [{[1] = "Expr", ["expr"]}]
        1 SETTABLEKS                       R0 R1 K2 ["expr"]
        3 RETURN                           R1 1

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
       48 DUPTABLE                         R13 K21 [{["name"] = "template", ["templateId"] = ""}]
       49 NEWTABLE                         R14 0 2
       51 MOVE                             R15 R5
       52 NEWTABLE                         R16 1 3
       54 LOADK                            R20 K22 ["col box auto-xy pad-20"]
       55 SETTABLEKS                       R20 R16 K23 ["Tags"]
       57 MOVE                             R17 R7
       58 DUPTABLE                         R18 K28 [{["Tags"] = "title white", ["Text"], ["LayoutOrder"] = 1}]
       59 DUPTABLE                         R19 K32 [{["type"] = "Expr", ["expr"] = "name"}]
       60 SETTABLEKS                       R19 R18 K25 ["Text"]
       62 CALL                             R17 1 1
       63 MOVE                             R18 R5
       64 NEWTABLE                         R19 2 1
       66 LOADK                            R21 K33 ["row box auto-xy"]
       67 SETTABLEKS                       R21 R19 K23 ["Tags"]
       69 LOADN                            R21 2
       70 SETTABLEKS                       R21 R19 K26 ["LayoutOrder"]
       72 MOVE                             R20 R8
       73 DUPTABLE                         R21 K37 [{"items", "keyBy", "Each"}]
       74 DUPTABLE                         R22 K39 [{["type"] = "Expr", ["expr"] = "api.getTemplate(templateId).Variants:GetChildren()"}]
       75 SETTABLEKS                       R22 R21 K34 ["items"]
       77 DUPTABLE                         R22 K41 [{["type"] = "Expr", ["expr"] = "fn(item) item.id"}]
       78 SETTABLEKS                       R22 R21 K35 ["keyBy"]
       80 MOVE                             R22 R3
       81 NEWTABLE                         R23 0 2
       83 LOADK                            R24 K42 ["idx"]
       84 LOADK                            R25 K43 ["item"]
       85 SETLIST                          R23 R24 2 [1]
       87 NEWTABLE                         R24 0 1
       89 MOVE                             R25 R9
       90 DUPTABLE                         R26 K46 [{"templateId", "name", "order", "params"}]
       91 DUPTABLE                         R27 K47 [{["type"] = "Expr", ["expr"] = "templateId"}]
       92 SETTABLEKS                       R27 R26 K19 ["templateId"]
       94 DUPTABLE                         R27 K49 [{["type"] = "Expr", ["expr"] = "item.Name"}]
       95 SETTABLEKS                       R27 R26 K18 ["name"]
       97 DUPTABLE                         R27 K51 [{["type"] = "Expr", ["expr"] = "api.getParams(item).order"}]
       98 SETTABLEKS                       R27 R26 K44 ["order"]
      100 DUPTABLE                         R27 K53 [{["type"] = "Expr", ["expr"] = "api.getParams(item)"}]
      101 SETTABLEKS                       R27 R26 K45 ["params"]
      103 CALL                             R25 1 -1
      104 SETLIST                          R24 R25 -1 [1]
      106 CALL                             R22 2 1
      107 SETTABLEKS                       R22 R21 K36 ["Each"]
      109 CALL                             R20 1 -1
      110 SETLIST                          R19 R20 -1 [1]
      112 CALL                             R18 1 1
      113 MOVE                             R19 R6
      114 DUPTABLE                         R20 K58 [{["Tags"] = "button auto-xy", ["Text"] = "Add Variant", ["LayoutOrder"] = 3, ["OnActivated"]}]
      115 DUPTABLE                         R21 K60 [{["type"] = "Expr", ["expr"] = "fn() api.log('Add Variant clicked')"}]
      116 SETTABLEKS                       R21 R20 K57 ["OnActivated"]
      118 CALL                             R19 1 -1
      119 SETLIST                          R16 R17 -1 [1]
      121 CALL                             R15 1 1
      122 MOVE                             R16 R10
      123 NEWTABLE                         R17 0 0
      125 CALL                             R16 1 -1
      126 SETLIST                          R14 R15 -1 [1]
      128 CALL                             R11 3 1
      129 RETURN                           R11 1

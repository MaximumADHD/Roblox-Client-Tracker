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
       21 GETTABLEKS                       R4 R2 K9 ["Frame"]
       23 GETTABLEKS                       R5 R2 K10 ["TextButton"]
       25 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       27 GETTABLEKS                       R7 R2 K12 ["Put"]
       29 DUPCLOSURE                       R8 K13 [PROTO_0]
       30 MOVE                             R9 R3
       31 LOADK                            R10 K14 ["Variant"]
       32 DUPTABLE                         R11 K20 [{["name"] = "", ["templateId"] = "", ["order"] = 1}]
       33 NEWTABLE                         R12 0 1
       35 MOVE                             R13 R4
       36 NEWTABLE                         R14 2 2
       38 LOADK                            R17 K21 ["col box auto-xy"]
       39 SETTABLEKS                       R17 R14 K22 ["Tags"]
       41 DUPTABLE                         R17 K26 [{["type"] = "Expr", ["expr"] = "order"}]
       42 SETTABLEKS                       R17 R14 K27 ["LayoutOrder"]
       44 MOVE                             R15 R6
       45 DUPTABLE                         R16 K30 [{["Tags"] = "subtitle white", ["Text"], ["LayoutOrder"] = 1}]
       46 DUPTABLE                         R17 K31 [{["type"] = "Expr", ["expr"] = "name"}]
       47 SETTABLEKS                       R17 R16 K29 ["Text"]
       49 CALL                             R15 1 1
       50 MOVE                             R16 R5
       51 NEWTABLE                         R17 4 1
       53 LOADK                            R19 K32 ["hitbox"]
       54 SETTABLEKS                       R19 R17 K22 ["Tags"]
       56 DUPTABLE                         R19 K34 [{["type"] = "Expr", ["expr"] = "fn() api.log('Select Variant clicked')"}]
       57 SETTABLEKS                       R19 R17 K35 ["OnActivated"]
       59 LOADN                            R19 2
       60 SETTABLEKS                       R19 R17 K27 ["LayoutOrder"]
       62 MOVE                             R18 R7
       63 DUPTABLE                         R19 K38 [{"Template", "params"}]
       64 DUPTABLE                         R20 K39 [{["type"] = "Expr", ["expr"] = "templateId"}]
       65 SETTABLEKS                       R20 R19 K36 ["Template"]
       67 DUPTABLE                         R20 K40 [{["type"] = "Expr", ["expr"] = "params"}]
       68 SETTABLEKS                       R20 R19 K37 ["params"]
       70 CALL                             R18 1 -1
       71 SETLIST                          R17 R18 -1 [1]
       73 CALL                             R16 1 -1
       74 SETLIST                          R14 R15 -1 [1]
       76 CALL                             R13 1 -1
       77 SETLIST                          R12 R13 -1 [1]
       79 CALL                             R9 3 1
       80 RETURN                           R9 1

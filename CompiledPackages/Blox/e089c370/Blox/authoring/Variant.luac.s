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
       21 GETTABLEKS                       R4 R2 K9 ["Frame"]
       23 GETTABLEKS                       R5 R2 K10 ["TextButton"]
       25 GETTABLEKS                       R6 R2 K11 ["TextLabel"]
       27 GETTABLEKS                       R7 R2 K12 ["Put"]
       29 DUPCLOSURE                       R8 K13 [PROTO_0]
       30 MOVE                             R9 R3
       31 LOADK                            R10 K14 ["Variant"]
       32 DUPTABLE                         R11 K18 [{"name", "templateId", "order"}]
       33 LOADK                            R12 K19 [""]
       34 SETTABLEKS                       R12 R11 K15 ["name"]
       36 LOADK                            R12 K19 [""]
       37 SETTABLEKS                       R12 R11 K16 ["templateId"]
       39 LOADN                            R12 1
       40 SETTABLEKS                       R12 R11 K17 ["order"]
       42 NEWTABLE                         R12 0 1
       44 MOVE                             R13 R4
       45 NEWTABLE                         R14 2 2
       47 LOADK                            R17 K20 ["col box auto-xy"]
       48 SETTABLEKS                       R17 R14 K21 ["Tags"]
       50 DUPTABLE                         R17 K24 [{"type", "expr"}]
       51 LOADK                            R18 K25 ["Expr"]
       52 SETTABLEKS                       R18 R17 K22 ["type"]
       54 LOADK                            R18 K17 ["order"]
       55 SETTABLEKS                       R18 R17 K23 ["expr"]
       57 SETTABLEKS                       R17 R14 K26 ["LayoutOrder"]
       59 MOVE                             R15 R6
       60 DUPTABLE                         R16 K28 [{"Tags", "Text", "LayoutOrder"}]
       61 LOADK                            R17 K29 ["subtitle white"]
       62 SETTABLEKS                       R17 R16 K21 ["Tags"]
       64 DUPTABLE                         R17 K24 [{"type", "expr"}]
       65 LOADK                            R18 K25 ["Expr"]
       66 SETTABLEKS                       R18 R17 K22 ["type"]
       68 LOADK                            R18 K15 ["name"]
       69 SETTABLEKS                       R18 R17 K23 ["expr"]
       71 SETTABLEKS                       R17 R16 K27 ["Text"]
       73 LOADN                            R17 1
       74 SETTABLEKS                       R17 R16 K26 ["LayoutOrder"]
       76 CALL                             R15 1 1
       77 MOVE                             R16 R5
       78 NEWTABLE                         R17 4 1
       80 LOADK                            R19 K30 ["hitbox"]
       81 SETTABLEKS                       R19 R17 K21 ["Tags"]
       83 DUPTABLE                         R19 K24 [{"type", "expr"}]
       84 LOADK                            R20 K25 ["Expr"]
       85 SETTABLEKS                       R20 R19 K22 ["type"]
       87 LOADK                            R20 K31 ["fn() api.log('Select Variant clicked')"]
       88 SETTABLEKS                       R20 R19 K23 ["expr"]
       90 SETTABLEKS                       R19 R17 K32 ["OnActivated"]
       92 LOADN                            R19 2
       93 SETTABLEKS                       R19 R17 K26 ["LayoutOrder"]
       95 MOVE                             R18 R7
       96 DUPTABLE                         R19 K35 [{"Template", "params"}]
       97 DUPTABLE                         R20 K24 [{"type", "expr"}]
       98 LOADK                            R21 K25 ["Expr"]
       99 SETTABLEKS                       R21 R20 K22 ["type"]
      101 LOADK                            R21 K16 ["templateId"]
      102 SETTABLEKS                       R21 R20 K23 ["expr"]
      104 SETTABLEKS                       R20 R19 K33 ["Template"]
      106 DUPTABLE                         R20 K24 [{"type", "expr"}]
      107 LOADK                            R21 K25 ["Expr"]
      108 SETTABLEKS                       R21 R20 K22 ["type"]
      110 LOADK                            R21 K34 ["params"]
      111 SETTABLEKS                       R21 R20 K23 ["expr"]
      113 SETTABLEKS                       R20 R19 K34 ["params"]
      115 CALL                             R18 1 -1
      116 SETLIST                          R17 R18 -1 [1]
      118 CALL                             R16 1 -1
      119 SETLIST                          R14 R15 -1 [1]
      121 CALL                             R13 1 -1
      122 SETLIST                          R12 R13 -1 [1]
      124 CALL                             R9 3 1
      125 RETURN                           R9 1

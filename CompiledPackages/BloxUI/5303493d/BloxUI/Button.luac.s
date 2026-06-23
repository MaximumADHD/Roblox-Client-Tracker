PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["ImageLabel"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 MOVE                             R9 R4
       27 LOADK                            R10 K14 ["Button"]
       28 DUPTABLE                         R11 K21 [{"text", "variant", "size", "disabled", "icon", "onActivated"}]
       29 LOADK                            R12 K14 ["Button"]
       30 SETTABLEKS                       R12 R11 K15 ["text"]
       32 LOADK                            R12 K22 ["standard"]
       33 SETTABLEKS                       R12 R11 K16 ["variant"]
       35 LOADK                            R12 K23 ["medium"]
       36 SETTABLEKS                       R12 R11 K17 ["size"]
       38 LOADB                            R12 0
       39 SETTABLEKS                       R12 R11 K18 ["disabled"]
       41 LOADK                            R12 K24 [""]
       42 SETTABLEKS                       R12 R11 K19 ["icon"]
       44 DUPCLOSURE                       R12 K25 [PROTO_0]
       45 SETTABLEKS                       R12 R11 K20 ["onActivated"]
       47 NEWTABLE                         R12 0 1
       49 MOVE                             R13 R7
       50 NEWTABLE                         R14 4 1
       52 LOADK                            R16 K14 ["Button"]
       53 SETTABLEKS                       R16 R14 K26 ["Name"]
       55 MOVE                             R16 R3
       56 LOADK                            R17 K27 ["{ \"button\", [\"state-disabled\"] = disabled, `variant-{variant}`, `size-{size}` }"]
       57 CALL                             R16 1 1
       58 SETTABLEKS                       R16 R14 K28 ["Tags"]
       60 MOVE                             R16 R3
       61 LOADK                            R17 K29 ["fn() if not disabled then onActivated() else nil"]
       62 CALL                             R16 1 1
       63 SETTABLEKS                       R16 R14 K30 ["OnActivated"]
       65 MOVE                             R16 R3
       66 LOADK                            R17 K31 ["api.childOrder"]
       67 CALL                             R16 1 1
       68 SETTABLEKS                       R16 R14 K32 ["LayoutOrder"]
       70 MOVE                             R15 R5
       71 NEWTABLE                         R16 2 2
       73 LOADK                            R19 K33 ["ButtonContent"]
       74 SETTABLEKS                       R19 R16 K26 ["Name"]
       76 LOADK                            R19 K34 ["box row gap-4 auto-xy"]
       77 SETTABLEKS                       R19 R16 K28 ["Tags"]
       79 MOVE                             R17 R6
       80 DUPTABLE                         R18 K37 [{"Name", "Tags", "Image", "Visible"}]
       81 LOADK                            R19 K38 ["ButtonIcon"]
       82 SETTABLEKS                       R19 R18 K26 ["Name"]
       84 LOADK                            R19 K39 ["button-icon"]
       85 SETTABLEKS                       R19 R18 K28 ["Tags"]
       87 MOVE                             R19 R3
       88 LOADK                            R20 K19 ["icon"]
       89 CALL                             R19 1 1
       90 SETTABLEKS                       R19 R18 K35 ["Image"]
       92 MOVE                             R19 R3
       93 LOADK                            R20 K40 ["icon ~= ''"]
       94 CALL                             R19 1 1
       95 SETTABLEKS                       R19 R18 K36 ["Visible"]
       97 CALL                             R17 1 1
       98 MOVE                             R18 R8
       99 DUPTABLE                         R19 K42 [{"Name", "Tags", "Text"}]
      100 LOADK                            R20 K43 ["ButtonLabel"]
      101 SETTABLEKS                       R20 R19 K26 ["Name"]
      103 MOVE                             R20 R3
      104 LOADK                            R21 K44 ["{ \"button-label\", [\"state-disabled\"] = disabled, [`variant-{variant}`] = true }"]
      105 CALL                             R20 1 1
      106 SETTABLEKS                       R20 R19 K28 ["Tags"]
      108 MOVE                             R20 R3
      109 LOADK                            R21 K15 ["text"]
      110 CALL                             R20 1 1
      111 SETTABLEKS                       R20 R19 K41 ["Text"]
      113 CALL                             R18 1 -1
      114 SETLIST                          R16 R17 -1 [1]
      116 CALL                             R15 1 -1
      117 SETLIST                          R14 R15 -1 [1]
      119 CALL                             R13 1 -1
      120 SETLIST                          R12 R13 -1 [1]
      122 CALL                             R9 3 1
      123 RETURN                           R9 1

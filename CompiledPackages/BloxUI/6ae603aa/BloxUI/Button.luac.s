PROTO_0:
        0 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["ImageLabel"]
       20 GETTABLEKS                       R6 R1 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       24 MOVE                             R8 R3
       25 LOADK                            R9 K13 ["Button"]
       26 DUPTABLE                         R10 K20 [{"text", "variant", "size", "disabled", "icon", "onActivated"}]
       27 LOADK                            R11 K13 ["Button"]
       28 SETTABLEKS                       R11 R10 K14 ["text"]
       30 LOADK                            R11 K21 ["standard"]
       31 SETTABLEKS                       R11 R10 K15 ["variant"]
       33 LOADK                            R11 K22 ["medium"]
       34 SETTABLEKS                       R11 R10 K16 ["size"]
       36 LOADB                            R11 0
       37 SETTABLEKS                       R11 R10 K17 ["disabled"]
       39 LOADK                            R11 K23 [""]
       40 SETTABLEKS                       R11 R10 K18 ["icon"]
       42 DUPCLOSURE                       R11 K24 [PROTO_0]
       43 SETTABLEKS                       R11 R10 K19 ["onActivated"]
       45 NEWTABLE                         R11 0 1
       47 MOVE                             R12 R6
       48 NEWTABLE                         R13 4 1
       50 LOADK                            R15 K13 ["Button"]
       51 SETTABLEKS                       R15 R13 K25 ["Name"]
       53 MOVE                             R15 R2
       54 LOADK                            R16 K26 ["{ \"button\", [\"state-disabled\"] = disabled, `variant-{variant}`, `size-{size}` }"]
       55 CALL                             R15 1 1
       56 SETTABLEKS                       R15 R13 K27 ["Tags"]
       58 MOVE                             R15 R2
       59 LOADK                            R16 K28 ["fn() if not disabled then onActivated() else nil"]
       60 CALL                             R15 1 1
       61 SETTABLEKS                       R15 R13 K29 ["OnActivated"]
       63 MOVE                             R15 R2
       64 LOADK                            R16 K30 ["api.childOrder"]
       65 CALL                             R15 1 1
       66 SETTABLEKS                       R15 R13 K31 ["LayoutOrder"]
       68 MOVE                             R14 R4
       69 NEWTABLE                         R15 2 2
       71 LOADK                            R18 K32 ["ButtonContent"]
       72 SETTABLEKS                       R18 R15 K25 ["Name"]
       74 LOADK                            R18 K33 ["box row gap-4 auto-xy"]
       75 SETTABLEKS                       R18 R15 K27 ["Tags"]
       77 MOVE                             R16 R5
       78 DUPTABLE                         R17 K36 [{"Name", "Tags", "Image", "Visible"}]
       79 LOADK                            R18 K37 ["ButtonIcon"]
       80 SETTABLEKS                       R18 R17 K25 ["Name"]
       82 LOADK                            R18 K38 ["button-icon"]
       83 SETTABLEKS                       R18 R17 K27 ["Tags"]
       85 MOVE                             R18 R2
       86 LOADK                            R19 K18 ["icon"]
       87 CALL                             R18 1 1
       88 SETTABLEKS                       R18 R17 K34 ["Image"]
       90 MOVE                             R18 R2
       91 LOADK                            R19 K39 ["icon ~= ''"]
       92 CALL                             R18 1 1
       93 SETTABLEKS                       R18 R17 K35 ["Visible"]
       95 CALL                             R16 1 1
       96 MOVE                             R17 R7
       97 DUPTABLE                         R18 K41 [{"Name", "Tags", "Text"}]
       98 LOADK                            R19 K42 ["ButtonLabel"]
       99 SETTABLEKS                       R19 R18 K25 ["Name"]
      101 MOVE                             R19 R2
      102 LOADK                            R20 K43 ["{ \"button-label\", [\"state-disabled\"] = disabled, [`variant-{variant}`] = true }"]
      103 CALL                             R19 1 1
      104 SETTABLEKS                       R19 R18 K27 ["Tags"]
      106 MOVE                             R19 R2
      107 LOADK                            R20 K14 ["text"]
      108 CALL                             R19 1 1
      109 SETTABLEKS                       R19 R18 K40 ["Text"]
      111 CALL                             R17 1 -1
      112 SETLIST                          R15 R16 -1 [1]
      114 CALL                             R14 1 -1
      115 SETLIST                          R13 R14 -1 [1]
      117 CALL                             R12 1 -1
      118 SETLIST                          R11 R12 -1 [1]
      120 CALL                             R8 3 1
      121 RETURN                           R8 1

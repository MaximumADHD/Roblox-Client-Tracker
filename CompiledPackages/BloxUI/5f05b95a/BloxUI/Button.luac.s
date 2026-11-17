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
       28 DUPTABLE                         R11 K25 [{["text"] = "Button", ["variant"] = "standard", ["size"] = "medium", ["disabled"] = False, ["icon"] = "", ["onActivated"]}]
       29 DUPCLOSURE                       R12 K26 [PROTO_0]
       30 SETTABLEKS                       R12 R11 K24 ["onActivated"]
       32 NEWTABLE                         R12 0 1
       34 MOVE                             R13 R7
       35 NEWTABLE                         R14 4 1
       37 LOADK                            R16 K14 ["Button"]
       38 SETTABLEKS                       R16 R14 K27 ["Name"]
       40 MOVE                             R16 R3
       41 LOADK                            R17 K28 ["{ \"button\", [\"state-disabled\"] = disabled, `variant-{variant}`, `size-{size}` }"]
       42 CALL                             R16 1 1
       43 SETTABLEKS                       R16 R14 K29 ["Tags"]
       45 MOVE                             R16 R3
       46 LOADK                            R17 K30 ["fn() if not disabled then onActivated() else nil"]
       47 CALL                             R16 1 1
       48 SETTABLEKS                       R16 R14 K31 ["OnActivated"]
       50 MOVE                             R16 R3
       51 LOADK                            R17 K32 ["api.childOrder"]
       52 CALL                             R16 1 1
       53 SETTABLEKS                       R16 R14 K33 ["LayoutOrder"]
       55 MOVE                             R15 R5
       56 NEWTABLE                         R16 2 2
       58 LOADK                            R19 K34 ["ButtonContent"]
       59 SETTABLEKS                       R19 R16 K27 ["Name"]
       61 LOADK                            R19 K35 ["box row gap-4 auto-xy"]
       62 SETTABLEKS                       R19 R16 K29 ["Tags"]
       64 MOVE                             R17 R6
       65 DUPTABLE                         R18 K40 [{["Name"] = "ButtonIcon", ["Tags"] = "button-icon", ["Image"], ["Visible"]}]
       66 MOVE                             R19 R3
       67 LOADK                            R20 K22 ["icon"]
       68 CALL                             R19 1 1
       69 SETTABLEKS                       R19 R18 K38 ["Image"]
       71 MOVE                             R19 R3
       72 LOADK                            R20 K41 ["icon ~= ''"]
       73 CALL                             R19 1 1
       74 SETTABLEKS                       R19 R18 K39 ["Visible"]
       76 CALL                             R17 1 1
       77 MOVE                             R18 R8
       78 DUPTABLE                         R19 K44 [{["Name"] = "ButtonLabel", ["Tags"], ["Text"]}]
       79 MOVE                             R20 R3
       80 LOADK                            R21 K45 ["{ \"button-label\", [\"state-disabled\"] = disabled, [`variant-{variant}`] = true }"]
       81 CALL                             R20 1 1
       82 SETTABLEKS                       R20 R19 K29 ["Tags"]
       84 MOVE                             R20 R3
       85 LOADK                            R21 K15 ["text"]
       86 CALL                             R20 1 1
       87 SETTABLEKS                       R20 R19 K43 ["Text"]
       89 CALL                             R18 1 -1
       90 SETLIST                          R16 R17 -1 [1]
       92 CALL                             R15 1 -1
       93 SETLIST                          R14 R15 -1 [1]
       95 CALL                             R13 1 -1
       96 SETLIST                          R12 R13 -1 [1]
       98 CALL                             R9 3 1
       99 RETURN                           R9 1

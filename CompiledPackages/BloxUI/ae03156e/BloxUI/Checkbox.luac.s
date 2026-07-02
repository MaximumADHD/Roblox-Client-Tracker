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
       27 LOADK                            R10 K14 ["Checkbox"]
       28 DUPTABLE                         R11 K20 [{["text"] = "Checkbox", ["checked"] = False, ["disabled"] = False, ["onToggle"]}]
       29 DUPCLOSURE                       R12 K21 [PROTO_0]
       30 SETTABLEKS                       R12 R11 K19 ["onToggle"]
       32 NEWTABLE                         R12 0 1
       34 MOVE                             R13 R7
       35 NEWTABLE                         R14 4 2
       37 LOADK                            R17 K14 ["Checkbox"]
       38 SETTABLEKS                       R17 R14 K22 ["Name"]
       40 MOVE                             R17 R3
       41 LOADK                            R18 K23 ["{ \"checkbox\", [\"state-disabled\"] = disabled }"]
       42 CALL                             R17 1 1
       43 SETTABLEKS                       R17 R14 K24 ["Tags"]
       45 MOVE                             R17 R3
       46 LOADK                            R18 K25 ["fn() if not disabled then onToggle(not api.peek(checked)) else nil"]
       47 CALL                             R17 1 1
       48 SETTABLEKS                       R17 R14 K26 ["OnActivated"]
       50 MOVE                             R17 R3
       51 LOADK                            R18 K27 ["api.childOrder"]
       52 CALL                             R17 1 1
       53 SETTABLEKS                       R17 R14 K28 ["LayoutOrder"]
       55 MOVE                             R15 R5
       56 NEWTABLE                         R16 2 1
       58 LOADK                            R18 K29 ["CheckboxBox"]
       59 SETTABLEKS                       R18 R16 K22 ["Name"]
       61 MOVE                             R18 R3
       62 LOADK                            R19 K30 ["{ \"checkbox-box\", [\"state-checked\"] = checked }"]
       63 CALL                             R18 1 1
       64 SETTABLEKS                       R18 R16 K24 ["Tags"]
       66 MOVE                             R17 R6
       67 DUPTABLE                         R18 K36 [{["Name"] = "CheckboxMark", ["Tags"] = "checkbox-mark", ["Image"] = "rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png", ["Visible"]}]
       68 MOVE                             R19 R3
       69 LOADK                            R20 K16 ["checked"]
       70 CALL                             R19 1 1
       71 SETTABLEKS                       R19 R18 K35 ["Visible"]
       73 CALL                             R17 1 -1
       74 SETLIST                          R16 R17 -1 [1]
       76 CALL                             R15 1 1
       77 MOVE                             R16 R8
       78 DUPTABLE                         R17 K40 [{["Name"] = "CheckboxLabel", ["Tags"] = "checkbox-label", ["Text"]}]
       79 MOVE                             R18 R3
       80 LOADK                            R19 K15 ["text"]
       81 CALL                             R18 1 1
       82 SETTABLEKS                       R18 R17 K39 ["Text"]
       84 CALL                             R16 1 -1
       85 SETLIST                          R14 R15 -1 [1]
       87 CALL                             R13 1 -1
       88 SETLIST                          R12 R13 -1 [1]
       90 CALL                             R9 3 1
       91 RETURN                           R9 1

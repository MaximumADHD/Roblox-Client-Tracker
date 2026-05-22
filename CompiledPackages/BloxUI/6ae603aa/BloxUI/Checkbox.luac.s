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
       25 LOADK                            R9 K13 ["Checkbox"]
       26 DUPTABLE                         R10 K18 [{"text", "checked", "disabled", "onToggle"}]
       27 LOADK                            R11 K13 ["Checkbox"]
       28 SETTABLEKS                       R11 R10 K14 ["text"]
       30 LOADB                            R11 0
       31 SETTABLEKS                       R11 R10 K15 ["checked"]
       33 LOADB                            R11 0
       34 SETTABLEKS                       R11 R10 K16 ["disabled"]
       36 DUPCLOSURE                       R11 K19 [PROTO_0]
       37 SETTABLEKS                       R11 R10 K17 ["onToggle"]
       39 NEWTABLE                         R11 0 1
       41 MOVE                             R12 R6
       42 NEWTABLE                         R13 4 2
       44 LOADK                            R16 K13 ["Checkbox"]
       45 SETTABLEKS                       R16 R13 K20 ["Name"]
       47 MOVE                             R16 R2
       48 LOADK                            R17 K21 ["{ \"checkbox\", [\"state-disabled\"] = disabled }"]
       49 CALL                             R16 1 1
       50 SETTABLEKS                       R16 R13 K22 ["Tags"]
       52 MOVE                             R16 R2
       53 LOADK                            R17 K23 ["fn() if not disabled then onToggle(not api.peek(checked)) else nil"]
       54 CALL                             R16 1 1
       55 SETTABLEKS                       R16 R13 K24 ["OnActivated"]
       57 MOVE                             R16 R2
       58 LOADK                            R17 K25 ["api.childOrder"]
       59 CALL                             R16 1 1
       60 SETTABLEKS                       R16 R13 K26 ["LayoutOrder"]
       62 MOVE                             R14 R4
       63 NEWTABLE                         R15 2 1
       65 LOADK                            R17 K27 ["CheckboxBox"]
       66 SETTABLEKS                       R17 R15 K20 ["Name"]
       68 MOVE                             R17 R2
       69 LOADK                            R18 K28 ["{ \"checkbox-box\", [\"state-checked\"] = checked }"]
       70 CALL                             R17 1 1
       71 SETTABLEKS                       R17 R15 K22 ["Tags"]
       73 MOVE                             R16 R5
       74 DUPTABLE                         R17 K31 [{"Name", "Tags", "Image", "Visible"}]
       75 LOADK                            R18 K32 ["CheckboxMark"]
       76 SETTABLEKS                       R18 R17 K20 ["Name"]
       78 LOADK                            R18 K33 ["checkbox-mark"]
       79 SETTABLEKS                       R18 R17 K22 ["Tags"]
       81 LOADK                            R18 K34 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
       82 SETTABLEKS                       R18 R17 K29 ["Image"]
       84 MOVE                             R18 R2
       85 LOADK                            R19 K15 ["checked"]
       86 CALL                             R18 1 1
       87 SETTABLEKS                       R18 R17 K30 ["Visible"]
       89 CALL                             R16 1 -1
       90 SETLIST                          R15 R16 -1 [1]
       92 CALL                             R14 1 1
       93 MOVE                             R15 R7
       94 DUPTABLE                         R16 K36 [{"Name", "Tags", "Text"}]
       95 LOADK                            R17 K37 ["CheckboxLabel"]
       96 SETTABLEKS                       R17 R16 K20 ["Name"]
       98 LOADK                            R17 K38 ["checkbox-label"]
       99 SETTABLEKS                       R17 R16 K22 ["Tags"]
      101 MOVE                             R17 R2
      102 LOADK                            R18 K14 ["text"]
      103 CALL                             R17 1 1
      104 SETTABLEKS                       R17 R16 K35 ["Text"]
      106 CALL                             R15 1 -1
      107 SETLIST                          R13 R14 -1 [1]
      109 CALL                             R12 1 -1
      110 SETLIST                          R11 R12 -1 [1]
      112 CALL                             R8 3 1
      113 RETURN                           R8 1

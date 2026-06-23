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
       28 DUPTABLE                         R11 K19 [{"text", "checked", "disabled", "onToggle"}]
       29 LOADK                            R12 K14 ["Checkbox"]
       30 SETTABLEKS                       R12 R11 K15 ["text"]
       32 LOADB                            R12 0
       33 SETTABLEKS                       R12 R11 K16 ["checked"]
       35 LOADB                            R12 0
       36 SETTABLEKS                       R12 R11 K17 ["disabled"]
       38 DUPCLOSURE                       R12 K20 [PROTO_0]
       39 SETTABLEKS                       R12 R11 K18 ["onToggle"]
       41 NEWTABLE                         R12 0 1
       43 MOVE                             R13 R7
       44 NEWTABLE                         R14 4 2
       46 LOADK                            R17 K14 ["Checkbox"]
       47 SETTABLEKS                       R17 R14 K21 ["Name"]
       49 MOVE                             R17 R3
       50 LOADK                            R18 K22 ["{ \"checkbox\", [\"state-disabled\"] = disabled }"]
       51 CALL                             R17 1 1
       52 SETTABLEKS                       R17 R14 K23 ["Tags"]
       54 MOVE                             R17 R3
       55 LOADK                            R18 K24 ["fn() if not disabled then onToggle(not api.peek(checked)) else nil"]
       56 CALL                             R17 1 1
       57 SETTABLEKS                       R17 R14 K25 ["OnActivated"]
       59 MOVE                             R17 R3
       60 LOADK                            R18 K26 ["api.childOrder"]
       61 CALL                             R17 1 1
       62 SETTABLEKS                       R17 R14 K27 ["LayoutOrder"]
       64 MOVE                             R15 R5
       65 NEWTABLE                         R16 2 1
       67 LOADK                            R18 K28 ["CheckboxBox"]
       68 SETTABLEKS                       R18 R16 K21 ["Name"]
       70 MOVE                             R18 R3
       71 LOADK                            R19 K29 ["{ \"checkbox-box\", [\"state-checked\"] = checked }"]
       72 CALL                             R18 1 1
       73 SETTABLEKS                       R18 R16 K23 ["Tags"]
       75 MOVE                             R17 R6
       76 DUPTABLE                         R18 K32 [{"Name", "Tags", "Image", "Visible"}]
       77 LOADK                            R19 K33 ["CheckboxMark"]
       78 SETTABLEKS                       R19 R18 K21 ["Name"]
       80 LOADK                            R19 K34 ["checkbox-mark"]
       81 SETTABLEKS                       R19 R18 K23 ["Tags"]
       83 LOADK                            R19 K35 ["rbxasset://studio_svg_textures/Shared/Ribbon/Light/Standard/RibbonCheckboxCheckedDefaultSmall.png"]
       84 SETTABLEKS                       R19 R18 K30 ["Image"]
       86 MOVE                             R19 R3
       87 LOADK                            R20 K16 ["checked"]
       88 CALL                             R19 1 1
       89 SETTABLEKS                       R19 R18 K31 ["Visible"]
       91 CALL                             R17 1 -1
       92 SETLIST                          R16 R17 -1 [1]
       94 CALL                             R15 1 1
       95 MOVE                             R16 R8
       96 DUPTABLE                         R17 K37 [{"Name", "Tags", "Text"}]
       97 LOADK                            R18 K38 ["CheckboxLabel"]
       98 SETTABLEKS                       R18 R17 K21 ["Name"]
      100 LOADK                            R18 K39 ["checkbox-label"]
      101 SETTABLEKS                       R18 R17 K23 ["Tags"]
      103 MOVE                             R18 R3
      104 LOADK                            R19 K15 ["text"]
      105 CALL                             R18 1 1
      106 SETTABLEKS                       R18 R17 K36 ["Text"]
      108 CALL                             R16 1 -1
      109 SETLIST                          R14 R15 -1 [1]
      111 CALL                             R13 1 -1
      112 SETLIST                          R12 R13 -1 [1]
      114 CALL                             R9 3 1
      115 RETURN                           R9 1

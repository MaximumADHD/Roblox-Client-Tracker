PROTO_0:
        0 DUPTABLE                         R0 K1 [{"FirstPartyTool"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["SettingsDialog"]
        3 LOADK                            R4 K3 ["FirstPartyTools"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FirstPartyTool"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 DUPCLOSURE                       R3 K3 [PROTO_0]
       11 CAPTURE                          UPVAL U2
       12 NEWTABLE                         R4 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["locale"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 NEWTABLE                         R3 0 0
       22 GETUPVAL                         R4 3
       23 GETUPVAL                         R5 4
       24 DUPTABLE                         R6 K9 [{["tag"] = "auto-xy text-caption-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
       25 GETTABLEKS                       R7 R2 K10 ["FirstPartyTool"]
       27 SETTABLEKS                       R7 R6 K7 ["Text"]
       29 GETUPVAL                         R7 5
       30 CALL                             R7 0 1
       31 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K11 ["FirstPartyToolLabel"]
       36 GETTABLEKS                       R4 R1 K12 ["options"]
       38 JUMPIFNOT                        R4 ; [+81]
       39 LENGTH                           R5 R4
       40 LOADN                            R6 0
       41 JUMPIFNOTLT                      R6 R5 ; [+78]
       43 MOVE                             R5 R4
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 GETTABLEKS                       R10 R9 K13 ["label"]
       49 GETUPVAL                         R11 3
       50 GETUPVAL                         R12 6
       51 DUPTABLE                         R13 K16 [{["testId"], ["LayoutOrder"], ["tag"] = "row flex-y-fill align-y-center gap-small size-full-0 auto-y"}]
       52 GETUPVAL                         R14 7
       53 GETTABLEKS                       R14 R14 K17 ["ToolMenuView"]
       55 GETTABLEKS                       R14 R14 K18 ["Option"]
       57 GETTABLEKS                       R14 R14 K19 ["Container"]
       59 SETTABLEKS                       R14 R13 K14 ["testId"]
       61 GETUPVAL                         R14 5
       62 CALL                             R14 0 1
       63 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
       65 DUPTABLE                         R14 K22 [{"Checkbox", "Label"}]
       66 GETUPVAL                         R15 3
       67 GETUPVAL                         R16 8
       68 DUPTABLE                         R17 K27 [{["testId"], ["LayoutOrder"], ["isChecked"], ["onActivated"], ["label"] = "", ["size"]}]
       69 GETUPVAL                         R18 7
       70 GETTABLEKS                       R18 R18 K17 ["ToolMenuView"]
       72 GETTABLEKS                       R18 R18 K18 ["Option"]
       74 GETTABLEKS                       R18 R18 K20 ["Checkbox"]
       76 SETTABLEKS                       R18 R17 K14 ["testId"]
       78 GETUPVAL                         R18 5
       79 CALL                             R18 0 1
       80 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
       82 GETTABLEKS                       R18 R9 K23 ["isChecked"]
       84 SETTABLEKS                       R18 R17 K23 ["isChecked"]
       86 GETTABLEKS                       R18 R9 K28 ["onChange"]
       88 SETTABLEKS                       R18 R17 K24 ["onActivated"]
       90 GETUPVAL                         R18 9
       91 GETTABLEKS                       R18 R18 K29 ["Enums"]
       93 GETTABLEKS                       R18 R18 K30 ["InputSize"]
       95 GETTABLEKS                       R18 R18 K31 ["XSmall"]
       97 SETTABLEKS                       R18 R17 K26 ["size"]
       99 CALL                             R15 2 1
      100 SETTABLEKS                       R15 R14 K20 ["Checkbox"]
      102 GETUPVAL                         R15 3
      103 GETUPVAL                         R16 4
      104 DUPTABLE                         R17 K33 [{["tag"] = "auto-xy text-body-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      105 GETTABLEKS                       R18 R9 K34 ["displayLabel"]
      107 SETTABLEKS                       R18 R17 K7 ["Text"]
      109 GETUPVAL                         R18 5
      110 CALL                             R18 0 1
      111 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      113 CALL                             R15 2 1
      114 SETTABLEKS                       R15 R14 K21 ["Label"]
      116 CALL                             R11 3 1
      117 SETTABLE                         R11 R3 R10
      118 FORGLOOP                         R5 2 ; [-72]
      120 GETUPVAL                         R5 3
      121 GETUPVAL                         R6 6
      122 DUPTABLE                         R7 K36 [{["tag"] = "size-full-full", ["LayoutOrder"]}]
      123 GETTABLEKS                       R8 R0 K8 ["LayoutOrder"]
      125 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      127 DUPTABLE                         R8 K38 [{"MainView"}]
      128 GETUPVAL                         R9 3
      129 GETUPVAL                         R10 6
      130 DUPTABLE                         R11 K40 [{["tag"] = "col gap-small auto-xy padding-small bg-surface-100", ["testId"]}]
      131 GETUPVAL                         R12 7
      132 GETTABLEKS                       R12 R12 K17 ["ToolMenuView"]
      134 GETTABLEKS                       R12 R12 K19 ["Container"]
      136 SETTABLEKS                       R12 R11 K14 ["testId"]
      138 MOVE                             R12 R3
      139 CALL                             R9 3 1
      140 SETTABLEKS                       R9 R8 K37 ["MainView"]
      142 CALL                             R5 3 -1
      143 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["OptionsContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["TestIds"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Resources"]
       48 GETTABLEKS                       R7 R7 K16 ["Localization"]
       50 GETTABLEKS                       R7 R7 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K18 ["Checkbox"]
       55 GETTABLEKS                       R8 R1 K19 ["Text"]
       57 GETTABLEKS                       R9 R1 K20 ["View"]
       59 GETTABLEKS                       R10 R4 K21 ["createNextOrder"]
       61 MOVE                             R11 R10
       62 CALL                             R11 0 1
       63 GETTABLEKS                       R12 R3 K22 ["createElement"]
       65 DUPCLOSURE                       R13 K23 [PROTO_1]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 RETURN                           R13 1

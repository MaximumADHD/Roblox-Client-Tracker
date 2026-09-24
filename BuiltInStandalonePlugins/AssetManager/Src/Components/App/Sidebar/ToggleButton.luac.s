PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["toggleSidebar"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useState"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K2 ["createElement"]
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R7 R7 K3 ["IconButton"]
       21 DUPTABLE                         R8 K13 [{["ZIndex"] = 3, ["onActivated"], ["variant"], ["icon"], ["size"], ["testId"] = "toggle-sidebar-button", ["ref"]}]
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R9 R8 K6 ["onActivated"]
       26 GETUPVAL                         R9 4
       27 GETTABLEKS                       R9 R9 K14 ["Enums"]
       29 GETTABLEKS                       R9 R9 K15 ["ButtonVariant"]
       31 GETTABLEKS                       R9 R9 K16 ["Utility"]
       33 SETTABLEKS                       R9 R8 K7 ["variant"]
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R9 R9 K14 ["Enums"]
       38 GETTABLEKS                       R9 R9 K17 ["IconName"]
       40 GETTABLEKS                       R9 R9 K18 ["Sidebar"]
       42 SETTABLEKS                       R9 R8 K8 ["icon"]
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K14 ["Enums"]
       47 GETTABLEKS                       R9 R9 K19 ["InputSize"]
       49 GETTABLEKS                       R9 R9 K20 ["XSmall"]
       51 SETTABLEKS                       R9 R8 K9 ["size"]
       53 SETTABLEKS                       R5 R8 K12 ["ref"]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K2 ["createElement"]
       59 GETUPVAL                         R8 4
       60 GETTABLEKS                       R8 R8 K21 ["View"]
       62 DUPTABLE                         R9 K25 [{["LayoutOrder"], ["tag"] = "auto-xy align-y-center padding-left-xsmall padding-top-small"}]
       63 GETTABLEKS                       R10 R0 K22 ["LayoutOrder"]
       65 SETTABLEKS                       R10 R9 K22 ["LayoutOrder"]
       67 DUPTABLE                         R10 K28 [{"Tooltip", "SidebarTutorialTooltip"}]
       68 GETUPVAL                         R11 3
       69 GETTABLEKS                       R11 R11 K2 ["createElement"]
       71 GETUPVAL                         R12 4
       72 GETTABLEKS                       R12 R12 K26 ["Tooltip"]
       74 DUPTABLE                         R13 K31 [{"title", "side"}]
       75 LOADK                            R16 K26 ["Tooltip"]
       76 LOADK                            R17 K32 ["ToggleSidebar"]
       77 NAMECALL                         R14 R1 K33 ["getText"]
       79 CALL                             R14 3 1
       80 SETTABLEKS                       R14 R13 K29 ["title"]
       82 GETUPVAL                         R14 4
       83 GETTABLEKS                       R14 R14 K14 ["Enums"]
       85 GETTABLEKS                       R14 R14 K34 ["PopoverSide"]
       87 GETTABLEKS                       R14 R14 K35 ["Bottom"]
       89 SETTABLEKS                       R14 R13 K30 ["side"]
       91 MOVE                             R14 R6
       92 CALL                             R11 3 1
       93 SETTABLEKS                       R11 R10 K26 ["Tooltip"]
       95 JUMPIF                           R3 ; [+41]
       96 GETUPVAL                         R11 3
       97 GETTABLEKS                       R11 R11 K2 ["createElement"]
       99 GETUPVAL                         R12 5
      100 DUPTABLE                         R13 K42 [{["tutorialId"], ["stepId"], ["anchorInstance"], ["textKeyOverride"] = "Intro.SidebarClosedText", ["side"], ["align"]}]
      101 GETUPVAL                         R14 6
      102 GETTABLEKS                       R14 R14 K43 ["TutorialId"]
      104 GETTABLEKS                       R14 R14 K44 ["Intro"]
      106 SETTABLEKS                       R14 R13 K36 ["tutorialId"]
      108 GETUPVAL                         R14 6
      109 GETTABLEKS                       R14 R14 K45 ["TutorialStepId"]
      111 GETTABLEKS                       R14 R14 K18 ["Sidebar"]
      113 SETTABLEKS                       R14 R13 K37 ["stepId"]
      115 SETTABLEKS                       R4 R13 K38 ["anchorInstance"]
      117 GETUPVAL                         R14 4
      118 GETTABLEKS                       R14 R14 K14 ["Enums"]
      120 GETTABLEKS                       R14 R14 K34 ["PopoverSide"]
      122 GETTABLEKS                       R14 R14 K35 ["Bottom"]
      124 SETTABLEKS                       R14 R13 K30 ["side"]
      126 GETUPVAL                         R14 4
      127 GETTABLEKS                       R14 R14 K14 ["Enums"]
      129 GETTABLEKS                       R14 R14 K46 ["PopoverAlign"]
      131 GETTABLEKS                       R14 R14 K47 ["Center"]
      133 SETTABLEKS                       R14 R13 K41 ["align"]
      135 CALL                             R11 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R11
      138 SETTABLEKS                       R11 R10 K27 ["SidebarTutorialTooltip"]
      140 CALL                             R7 3 -1
      141 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R0 K12 ["Src"]
       36 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R7 K14 ["LayoutController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R0 K12 ["Src"]
       45 GETTABLEKS                       R8 R8 K15 ["Types"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K12 ["Src"]
       52 GETTABLEKS                       R9 R9 K16 ["Components"]
       54 GETTABLEKS                       R9 R9 K17 ["Shared"]
       56 GETTABLEKS                       R9 R9 K18 ["TutorialTooltip"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R10 R0 K12 ["Src"]
       63 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K20 ["useShowSidebar"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K21 [PROTO_1]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 RETURN                           R10 1

PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialData"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["createElement"]
        8 GETUPVAL                         R3 1
        9 DUPTABLE                         R4 K4 [{"tag", "Size"}]
       10 LOADK                            R5 K5 ["col align-x-center align-y-center flex-between bg-surface-100 padding-x-medium"]
       11 SETTABLEKS                       R5 R4 K2 ["tag"]
       13 GETIMPORT                        R5 K8 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 LOADN                            R9 32
       19 CALL                             R5 4 1
       20 SETTABLEKS                       R5 R4 K3 ["Size"]
       22 DUPTABLE                         R5 K11 [{"Content", "Divider"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K1 ["createElement"]
       26 GETUPVAL                         R7 1
       27 DUPTABLE                         R8 K4 [{"tag", "Size"}]
       28 LOADK                            R9 K12 ["row align-x-center fill align-y-center flex-between"]
       29 SETTABLEKS                       R9 R8 K2 ["tag"]
       31 GETIMPORT                        R9 K8 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 0
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K3 ["Size"]
       40 DUPTABLE                         R9 K15 [{"Title", "TableOfContents"}]
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K1 ["createElement"]
       44 GETUPVAL                         R11 2
       45 DUPTABLE                         R12 K18 [{"tag", "Text", "LayoutOrder"}]
       46 LOADK                            R13 K19 ["text-align-x-left text-body-medium auto-x size-0-full"]
       47 SETTABLEKS                       R13 R12 K2 ["tag"]
       49 GETTABLEKS                       R13 R1 K20 ["info"]
       51 GETTABLEKS                       R13 R13 K21 ["title"]
       53 SETTABLEKS                       R13 R12 K16 ["Text"]
       55 LOADN                            R13 0
       56 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       58 CALL                             R10 2 1
       59 SETTABLEKS                       R10 R9 K13 ["Title"]
       61 GETUPVAL                         R10 0
       62 GETTABLEKS                       R10 R10 K1 ["createElement"]
       64 GETUPVAL                         R11 3
       65 DUPTABLE                         R12 K27 [{"LayoutOrder", "icon", "isCircular", "size", "onActivated", "testId"}]
       66 LOADN                            R13 1
       67 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       69 GETTABLEKS                       R14 R0 K28 ["isTableOfContentsOpen"]
       71 JUMPIFNOT                        R14 ; [+2]
       72 LOADK                            R13 K29 ["icons/navigation/close"]
       73 JUMP                             ; [+1]
       74 LOADK                            R13 K30 ["icons/common/hamburgermenu"]
       75 SETTABLEKS                       R13 R12 K22 ["icon"]
       77 LOADB                            R13 1
       78 SETTABLEKS                       R13 R12 K23 ["isCircular"]
       80 GETUPVAL                         R13 4
       81 GETTABLEKS                       R13 R13 K31 ["Enums"]
       83 GETTABLEKS                       R13 R13 K32 ["IconSize"]
       85 GETTABLEKS                       R13 R13 K33 ["Small"]
       87 SETTABLEKS                       R13 R12 K24 ["size"]
       89 GETTABLEKS                       R13 R0 K34 ["onTableOfContentsClicked"]
       91 SETTABLEKS                       R13 R12 K25 ["onActivated"]
       93 LOADK                            R13 K35 ["--knowledge-tutorials-TableOfContentsButton"]
       94 SETTABLEKS                       R13 R12 K26 ["testId"]
       96 CALL                             R10 2 1
       97 SETTABLEKS                       R10 R9 K14 ["TableOfContents"]
       99 CALL                             R6 3 1
      100 SETTABLEKS                       R6 R5 K9 ["Content"]
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R6 R6 K1 ["createElement"]
      105 GETUPVAL                         R7 5
      106 DUPTABLE                         R8 K36 [{"LayoutOrder"}]
      107 LOADN                            R9 1
      108 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
      110 CALL                             R6 2 1
      111 SETTABLEKS                       R6 R5 K10 ["Divider"]
      113 CALL                             R2 3 -1
      114 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K11 ["View"]
       30 GETTABLEKS                       R5 R3 K12 ["Text"]
       32 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       34 GETTABLEKS                       R7 R3 K14 ["Divider"]
       36 DUPCLOSURE                       R8 K15 [PROTO_0]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R6
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R7
       43 RETURN                           R8 1

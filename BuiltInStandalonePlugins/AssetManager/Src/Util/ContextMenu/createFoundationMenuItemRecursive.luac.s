PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PluginController"]
        3 NEWTABLE                         R3 0 0
        5 NAMECALL                         R1 R1 K1 ["setContextMenuItems"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["OnItemClicked"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 3
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 4
       16 GETTABLEKS                       R1 R1 K3 ["sendContextMenuItemClickedEvent"]
       18 DUPTABLE                         R2 K6 [{"zone", "id"}]
       19 GETUPVAL                         R3 2
       20 SETTABLEKS                       R3 R2 K4 ["zone"]
       22 SETTABLEKS                       R0 R2 K5 ["id"]
       24 DUPTABLE                         R3 K11 [{"ExplorerController", "LayoutController", "ItemsController", "SearchController"}]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K7 ["ExplorerController"]
       28 SETTABLEKS                       R4 R3 K7 ["ExplorerController"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K8 ["LayoutController"]
       33 SETTABLEKS                       R4 R3 K8 ["LayoutController"]
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R4 R4 K9 ["ItemsController"]
       38 SETTABLEKS                       R4 R3 K9 ["ItemsController"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R4 R4 K10 ["SearchController"]
       43 SETTABLEKS                       R4 R3 K10 ["SearchController"]
       45 CALL                             R1 2 0
       46 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["ShouldRender"]
        2 JUMPIFEQKNIL                     R4 ; [+10]
        4 GETTABLEKS                       R4 R0 K0 ["ShouldRender"]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R4 3 1
       10 JUMPIF                           R4 ; [+2]
       11 LOADNIL                          R4
       12 RETURN                           R4 1
       13 DUPTABLE                         R4 K6 [{"id", "text", "onActivated", "icon", "isDisabled"}]
       14 LOADK                            R5 K7 ["%*_%*"]
       15 GETTABLEKS                       R7 R0 K8 ["TextKey"]
       17 GETTABLEKS                       R8 R0 K9 ["TextSubKey"]
       19 NAMECALL                         R5 R5 K10 ["format"]
       21 CALL                             R5 3 1
       22 SETTABLEKS                       R5 R4 K1 ["id"]
       24 GETTABLEKS                       R5 R2 K11 ["Localization"]
       26 GETTABLEKS                       R7 R0 K8 ["TextKey"]
       28 GETTABLEKS                       R9 R0 K12 ["GetTextSubKey"]
       30 JUMPIFNOT                        R9 ; [+7]
       31 GETTABLEKS                       R8 R0 K12 ["GetTextSubKey"]
       33 MOVE                             R9 R1
       34 MOVE                             R10 R2
       35 MOVE                             R11 R3
       36 CALL                             R8 3 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R8 R0 K9 ["TextSubKey"]
       40 GETTABLEKS                       R10 R0 K13 ["GetSubkeyArgs"]
       42 JUMPIFNOT                        R10 ; [+7]
       43 GETTABLEKS                       R9 R0 K13 ["GetSubkeyArgs"]
       45 MOVE                             R10 R1
       46 MOVE                             R11 R2
       47 MOVE                             R12 R3
       48 CALL                             R9 3 1
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 NAMECALL                         R5 R5 K14 ["getText"]
       53 CALL                             R5 4 1
       54 SETTABLEKS                       R5 R4 K2 ["text"]
       56 GETTABLEKS                       R6 R0 K15 ["OnItemClicked"]
       58 JUMPIFNOT                        R6 ; [+7]
       59 NEWCLOSURE                       R5 P0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U0
       65 JUMP                             ; [+1]
       66 LOADNIL                          R5
       67 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       69 GETTABLEKS                       R6 R0 K16 ["GetIcon"]
       71 JUMPIFNOT                        R6 ; [+5]
       72 GETTABLEKS                       R5 R0 K16 ["GetIcon"]
       74 MOVE                             R6 R2
       75 CALL                             R5 1 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R5
       78 SETTABLEKS                       R5 R4 K4 ["icon"]
       80 LOADB                            R5 0
       81 GETTABLEKS                       R6 R0 K17 ["ShouldDisable"]
       83 JUMPIFEQKNIL                     R6 ; [+7]
       85 GETTABLEKS                       R5 R0 K17 ["ShouldDisable"]
       87 MOVE                             R6 R1
       88 MOVE                             R7 R2
       89 MOVE                             R8 R3
       90 CALL                             R5 3 1
       91 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       93 GETTABLEKS                       R5 R0 K18 ["Children"]
       95 JUMPIFNOT                        R5 ; [+26]
       96 NEWTABLE                         R5 0 0
       98 GETTABLEKS                       R6 R0 K18 ["Children"]
      100 LOADNIL                          R7
      101 LOADNIL                          R8
      102 FORGPREP                         R6
      103 GETUPVAL                         R11 1
      104 MOVE                             R12 R10
      105 MOVE                             R13 R1
      106 MOVE                             R14 R2
      107 MOVE                             R15 R3
      108 CALL                             R11 4 1
      109 JUMPIFEQKNIL                     R11 ; [+8]
      111 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      113 MOVE                             R13 R5
      114 MOVE                             R14 R11
      115 GETIMPORT                        R12 K21 [table.insert]
      117 CALL                             R12 2 0
      118 FORGLOOP                         R6 2 ; [-16]
      120 SETTABLEKS                       R5 R4 K22 ["items"]
      122 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Analytics"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R4 1

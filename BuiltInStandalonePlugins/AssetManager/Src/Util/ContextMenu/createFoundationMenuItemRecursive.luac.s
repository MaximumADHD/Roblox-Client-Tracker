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
       28 GETTABLEKS                       R8 R0 K9 ["TextSubKey"]
       30 GETTABLEKS                       R10 R0 K12 ["GetSubkeyArgs"]
       32 JUMPIFNOT                        R10 ; [+7]
       33 GETTABLEKS                       R9 R0 K12 ["GetSubkeyArgs"]
       35 MOVE                             R10 R1
       36 MOVE                             R11 R2
       37 MOVE                             R12 R3
       38 CALL                             R9 3 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R9
       41 NAMECALL                         R5 R5 K13 ["getText"]
       43 CALL                             R5 4 1
       44 SETTABLEKS                       R5 R4 K2 ["text"]
       46 GETTABLEKS                       R6 R0 K14 ["OnItemClicked"]
       48 JUMPIFNOT                        R6 ; [+7]
       49 NEWCLOSURE                       R5 P0
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U0
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       59 GETTABLEKS                       R6 R0 K15 ["GetIcon"]
       61 JUMPIFNOT                        R6 ; [+5]
       62 GETTABLEKS                       R5 R0 K15 ["GetIcon"]
       64 MOVE                             R6 R2
       65 CALL                             R5 1 1
       66 JUMP                             ; [+1]
       67 LOADNIL                          R5
       68 SETTABLEKS                       R5 R4 K4 ["icon"]
       70 LOADB                            R5 0
       71 GETTABLEKS                       R6 R0 K16 ["ShouldDisable"]
       73 JUMPIFEQKNIL                     R6 ; [+7]
       75 GETTABLEKS                       R5 R0 K16 ["ShouldDisable"]
       77 MOVE                             R6 R1
       78 MOVE                             R7 R2
       79 MOVE                             R8 R3
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K5 ["isDisabled"]
       83 GETTABLEKS                       R5 R0 K17 ["Children"]
       85 JUMPIFNOT                        R5 ; [+26]
       86 NEWTABLE                         R5 0 0
       88 GETTABLEKS                       R6 R0 K17 ["Children"]
       90 LOADNIL                          R7
       91 LOADNIL                          R8
       92 FORGPREP                         R6
       93 GETUPVAL                         R11 1
       94 MOVE                             R12 R10
       95 MOVE                             R13 R1
       96 MOVE                             R14 R2
       97 MOVE                             R15 R3
       98 CALL                             R11 4 1
       99 JUMPIFEQKNIL                     R11 ; [+8]
      101 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
      103 MOVE                             R13 R5
      104 MOVE                             R14 R11
      105 GETIMPORT                        R12 K20 [table.insert]
      107 CALL                             R12 2 0
      108 FORGLOOP                         R6 2 ; [-16]
      110 SETTABLEKS                       R5 R4 K21 ["items"]
      112 RETURN                           R4 1

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

PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PluginController"]
        3 NEWTABLE                         R3 0 0
        5 NAMECALL                         R1 R1 K1 ["setContextMenuItems"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["OnItemClicked"]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 3
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

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
       14 LOADK                            R6 K7 ["%*_%*"]
       15 GETTABLEKS                       R8 R0 K8 ["TextKey"]
       17 GETTABLEKS                       R9 R0 K9 ["TextSubKey"]
       19 NAMECALL                         R6 R6 K10 ["format"]
       21 CALL                             R6 3 1
       22 MOVE                             R5 R6
       23 SETTABLEKS                       R5 R4 K1 ["id"]
       25 GETTABLEKS                       R5 R2 K11 ["Localization"]
       27 GETTABLEKS                       R7 R0 K8 ["TextKey"]
       29 GETTABLEKS                       R8 R0 K9 ["TextSubKey"]
       31 GETTABLEKS                       R10 R0 K12 ["GetSubkeyArgs"]
       33 JUMPIFNOT                        R10 ; [+7]
       34 GETTABLEKS                       R9 R0 K12 ["GetSubkeyArgs"]
       36 MOVE                             R10 R1
       37 MOVE                             R11 R2
       38 MOVE                             R12 R3
       39 CALL                             R9 3 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R9
       42 NAMECALL                         R5 R5 K13 ["getText"]
       44 CALL                             R5 4 1
       45 SETTABLEKS                       R5 R4 K2 ["text"]
       47 GETTABLEKS                       R6 R0 K14 ["OnItemClicked"]
       49 JUMPIFNOT                        R6 ; [+6]
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
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
       93 GETUPVAL                         R11 0
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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_1]
       22 CAPTURE                          VAL R3
       23 RETURN                           R3 1

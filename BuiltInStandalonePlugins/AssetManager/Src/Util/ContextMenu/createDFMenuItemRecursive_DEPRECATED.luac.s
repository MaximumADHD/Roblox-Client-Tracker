PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

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
       13 DUPTABLE                         R4 K5 [{"Text", "OnItemClicked", "Icon", "Enabled"}]
       14 GETTABLEKS                       R5 R2 K6 ["Localization"]
       16 GETTABLEKS                       R7 R0 K7 ["TextKey"]
       18 GETTABLEKS                       R8 R0 K8 ["TextSubKey"]
       20 GETTABLEKS                       R10 R0 K9 ["GetSubkeyArgs"]
       22 JUMPIFNOT                        R10 ; [+7]
       23 GETTABLEKS                       R9 R0 K9 ["GetSubkeyArgs"]
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 MOVE                             R12 R3
       28 CALL                             R9 3 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R9
       31 NAMECALL                         R5 R5 K10 ["getText"]
       33 CALL                             R5 4 1
       34 SETTABLEKS                       R5 R4 K1 ["Text"]
       36 GETTABLEKS                       R6 R0 K2 ["OnItemClicked"]
       38 JUMPIFNOT                        R6 ; [+6]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R4 K2 ["OnItemClicked"]
       48 GETTABLEKS                       R6 R0 K11 ["GetIcon"]
       50 JUMPIFNOT                        R6 ; [+5]
       51 GETTABLEKS                       R5 R0 K11 ["GetIcon"]
       53 MOVE                             R6 R2
       54 CALL                             R5 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R5
       57 SETTABLEKS                       R5 R4 K3 ["Icon"]
       59 LOADB                            R5 1
       60 GETTABLEKS                       R6 R0 K12 ["ShouldDisable"]
       62 JUMPIFEQKNIL                     R6 ; [+8]
       64 GETTABLEKS                       R6 R0 K12 ["ShouldDisable"]
       66 MOVE                             R7 R1
       67 MOVE                             R8 R2
       68 MOVE                             R9 R3
       69 CALL                             R6 3 1
       70 NOT                              R5 R6
       71 SETTABLEKS                       R5 R4 K4 ["Enabled"]
       73 GETTABLEKS                       R5 R0 K13 ["Children"]
       75 JUMPIFNOT                        R5 ; [+22]
       76 GETTABLEKS                       R5 R0 K13 ["Children"]
       78 LOADNIL                          R6
       79 LOADNIL                          R7
       80 FORGPREP                         R5
       81 GETUPVAL                         R10 0
       82 MOVE                             R11 R9
       83 MOVE                             R12 R1
       84 MOVE                             R13 R2
       85 MOVE                             R14 R3
       86 CALL                             R10 4 1
       87 JUMPIFEQKNIL                     R10 ; [+8]
       89 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       91 MOVE                             R12 R4
       92 MOVE                             R13 R10
       93 GETIMPORT                        R11 K16 [table.insert]
       95 CALL                             R11 2 0
       96 FORGLOOP                         R5 2 ; [-16]
       98 RETURN                           R4 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 CAPTURE                          VAL R2
       16 RETURN                           R2 1

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
       20 NAMECALL                         R5 R5 K9 ["getText"]
       22 CALL                             R5 3 1
       23 SETTABLEKS                       R5 R4 K1 ["Text"]
       25 GETTABLEKS                       R6 R0 K2 ["OnItemClicked"]
       27 JUMPIFNOT                        R6 ; [+6]
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 JUMP                             ; [+1]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K2 ["OnItemClicked"]
       37 GETTABLEKS                       R6 R0 K10 ["GetIcon"]
       39 JUMPIFNOT                        R6 ; [+5]
       40 GETTABLEKS                       R5 R0 K10 ["GetIcon"]
       42 MOVE                             R6 R2
       43 CALL                             R5 1 1
       44 JUMP                             ; [+1]
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R4 K3 ["Icon"]
       48 LOADB                            R5 1
       49 GETTABLEKS                       R6 R0 K11 ["ShouldDisable"]
       51 JUMPIFEQKNIL                     R6 ; [+8]
       53 GETTABLEKS                       R6 R0 K11 ["ShouldDisable"]
       55 MOVE                             R7 R1
       56 MOVE                             R8 R2
       57 MOVE                             R9 R3
       58 CALL                             R6 3 1
       59 NOT                              R5 R6
       60 SETTABLEKS                       R5 R4 K4 ["Enabled"]
       62 GETTABLEKS                       R5 R0 K12 ["Children"]
       64 JUMPIFNOT                        R5 ; [+22]
       65 GETTABLEKS                       R5 R0 K12 ["Children"]
       67 LOADNIL                          R6
       68 LOADNIL                          R7
       69 FORGPREP                         R5
       70 GETUPVAL                         R10 0
       71 MOVE                             R11 R9
       72 MOVE                             R12 R1
       73 MOVE                             R13 R2
       74 MOVE                             R14 R3
       75 CALL                             R10 4 1
       76 JUMPIFEQKNIL                     R10 ; [+8]
       78 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       80 MOVE                             R12 R4
       81 MOVE                             R13 R10
       82 GETIMPORT                        R11 K15 [table.insert]
       84 CALL                             R11 2 0
       85 FORGLOOP                         R5 2 ; [-16]
       87 RETURN                           R4 1

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

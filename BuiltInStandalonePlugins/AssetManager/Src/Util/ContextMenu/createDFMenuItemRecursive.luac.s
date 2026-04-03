PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnItemClicked"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R4 K4 [{"Text", "OnItemClicked", "Icon", "Enabled"}]
        1 GETTABLEKS                       R5 R2 K5 ["Localization"]
        3 GETTABLEKS                       R7 R0 K6 ["TextKey"]
        5 GETTABLEKS                       R8 R0 K7 ["TextSubKey"]
        7 NAMECALL                         R5 R5 K8 ["getText"]
        9 CALL                             R5 3 1
       10 SETTABLEKS                       R5 R4 K0 ["Text"]
       12 GETTABLEKS                       R6 R0 K1 ["OnItemClicked"]
       14 JUMPIFNOT                        R6 ; [+6]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R3
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K1 ["OnItemClicked"]
       24 GETTABLEKS                       R6 R0 K9 ["GetIcon"]
       26 JUMPIFNOT                        R6 ; [+5]
       27 GETTABLEKS                       R5 R0 K9 ["GetIcon"]
       29 MOVE                             R6 R2
       30 CALL                             R5 1 1
       31 JUMP                             ; [+1]
       32 LOADNIL                          R5
       33 SETTABLEKS                       R5 R4 K2 ["Icon"]
       35 GETTABLEKS                       R6 R0 K10 ["Disabled"]
       37 NOT                              R5 R6
       38 SETTABLEKS                       R5 R4 K3 ["Enabled"]
       40 GETTABLEKS                       R5 R0 K11 ["Children"]
       42 JUMPIFNOT                        R5 ; [+29]
       43 GETTABLEKS                       R5 R0 K11 ["Children"]
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 GETTABLEKS                       R10 R9 K12 ["ShouldRender"]
       50 JUMPIFEQKNIL                     R10 ; [+8]
       52 GETTABLEKS                       R10 R9 K12 ["ShouldRender"]
       54 MOVE                             R11 R1
       55 MOVE                             R12 R2
       56 MOVE                             R13 R3
       57 CALL                             R10 3 1
       58 JUMPIFNOT                        R10 ; [+11]
       59 MOVE                             R11 R4
       60 GETUPVAL                         R12 0
       61 MOVE                             R13 R9
       62 MOVE                             R14 R1
       63 MOVE                             R15 R2
       64 MOVE                             R16 R3
       65 CALL                             R12 4 -1
       66 FASTCALL                         TABLE_INSERT ; [+2]
       67 GETIMPORT                        R10 K15 [table.insert]
       69 CALL                             R10 -1 0
       70 FORGLOOP                         R5 2 ; [-23]
       72 RETURN                           R4 1

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

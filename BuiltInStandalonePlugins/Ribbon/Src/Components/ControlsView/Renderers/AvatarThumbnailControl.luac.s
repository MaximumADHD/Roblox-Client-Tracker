PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Activate"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Uri"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Action"]
        4 JUMPIF                           R2 ; [+11]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R3 K3 ["Missing Action field for AvatarThumbnail with id %*"]
        8 GETTABLEKS                       R5 R1 K4 ["Id"]
       10 NAMECALL                         R3 R3 K5 ["format"]
       12 CALL                             R3 2 1
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K6 ["toString"]
       19 GETTABLEKS                       R3 R1 K1 ["Action"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R4 R0 K7 ["Items"]
       24 GETTABLEKS                       R4 R4 K8 ["Actions"]
       26 GETTABLE                         R3 R4 R2
       27 JUMPIF                           R3 ; [+12]
       28 GETTABLEKS                       R4 R0 K2 ["Warn"]
       30 LOADK                            R5 K9 ["Missing Action %* for AvatarThumbnail with id %*"]
       31 MOVE                             R7 R2
       32 GETTABLEKS                       R8 R1 K4 ["Id"]
       34 NAMECALL                         R5 R5 K5 ["format"]
       36 CALL                             R5 3 1
       37 CALL                             R4 1 0
       38 LOADNIL                          R4
       39 RETURN                           R4 1
       40 GETUPVAL                         R4 1
       41 GETUPVAL                         R5 2
       42 NEWTABLE                         R6 16 0
       44 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       46 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R7 R6 K11 ["OnSelect"]
       53 GETTABLEKS                       R7 R3 K12 ["Shortcuts"]
       55 SETTABLEKS                       R7 R6 K12 ["Shortcuts"]
       57 GETTABLEKS                       R7 R1 K13 ["Size"]
       59 SETTABLEKS                       R7 R6 K13 ["Size"]
       61 GETTABLEKS                       R7 R3 K14 ["Tooltip"]
       63 SETTABLEKS                       R7 R6 K14 ["Tooltip"]
       65 GETTABLEKS                       R7 R3 K15 ["Text"]
       67 SETTABLEKS                       R7 R6 K16 ["TooltipTitle"]
       69 GETUPVAL                         R7 0
       70 GETTABLEKS                       R7 R7 K17 ["child"]
       72 GETTABLEKS                       R8 R0 K18 ["WidgetUri"]
       74 GETTABLEKS                       R9 R1 K4 ["Id"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K19 ["Uri"]
       79 GETUPVAL                         R7 3
       80 NAMECALL                         R7 R7 K20 ["GetUserId"]
       82 CALL                             R7 1 1
       83 SETTABLEKS                       R7 R6 K21 ["UserId"]
       85 GETTABLEKS                       R7 R3 K22 ["Visible"]
       87 SETTABLEKS                       R7 R6 K22 ["Visible"]
       89 GETUPVAL                         R7 4
       90 GETTABLEKS                       R7 R7 K23 ["Tag"]
       92 GETTABLEKS                       R8 R1 K24 ["Style"]
       94 SETTABLE                         R8 R6 R7
       95 CALL                             R4 2 -1
       96 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Components"]
       33 GETTABLEKS                       R6 R6 K14 ["AvatarThumbnail"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K16 [game]
       38 LOADK                            R8 K17 ["StudioService"]
       39 NAMECALL                         R6 R6 K18 ["GetService"]
       41 CALL                             R6 2 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Src"]
       46 GETTABLEKS                       R8 R8 K13 ["Components"]
       48 GETTABLEKS                       R8 R8 K19 ["ControlsView"]
       50 GETTABLEKS                       R8 R8 K20 ["ControlProps"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R9 R0 K12 ["Src"]
       57 GETTABLEKS                       R9 R9 K21 ["Types"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K22 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 RETURN                           R9 1

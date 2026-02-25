PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Activate"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Uri"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R1 K1 ["Action"]
        4 JUMPIF                           R2 ; [+12]
        5 GETTABLEKS                       R2 R0 K2 ["Warn"]
        7 LOADK                            R4 K3 ["Missing Action field for AvatarThumbnail with id %*"]
        8 GETTABLEKS                       R6 R1 K4 ["Id"]
       10 NAMECALL                         R4 R4 K5 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 CALL                             R2 1 0
       15 LOADNIL                          R2
       16 RETURN                           R2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K6 ["toString"]
       20 GETTABLEKS                       R3 R1 K1 ["Action"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R5 R0 K7 ["Items"]
       25 GETTABLEKS                       R4 R5 K8 ["Actions"]
       27 GETTABLE                         R3 R4 R2
       28 JUMPIF                           R3 ; [+13]
       29 GETTABLEKS                       R4 R0 K2 ["Warn"]
       31 LOADK                            R6 K9 ["Missing Action %* for AvatarThumbnail with id %*"]
       32 MOVE                             R8 R2
       33 GETTABLEKS                       R9 R1 K4 ["Id"]
       35 NAMECALL                         R6 R6 K5 ["format"]
       37 CALL                             R6 3 1
       38 MOVE                             R5 R6
       39 CALL                             R4 1 0
       40 LOADNIL                          R4
       41 RETURN                           R4 1
       42 GETUPVAL                         R4 1
       43 GETUPVAL                         R5 2
       44 NEWTABLE                         R6 16 0
       46 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       48 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R7 R6 K11 ["OnSelect"]
       55 GETTABLEKS                       R7 R3 K12 ["Shortcuts"]
       57 SETTABLEKS                       R7 R6 K12 ["Shortcuts"]
       59 GETTABLEKS                       R7 R1 K13 ["Size"]
       61 SETTABLEKS                       R7 R6 K13 ["Size"]
       63 GETTABLEKS                       R7 R3 K14 ["Tooltip"]
       65 SETTABLEKS                       R7 R6 K14 ["Tooltip"]
       67 GETTABLEKS                       R7 R3 K15 ["Text"]
       69 SETTABLEKS                       R7 R6 K16 ["TooltipTitle"]
       71 GETUPVAL                         R8 0
       72 GETTABLEKS                       R7 R8 K17 ["child"]
       74 GETTABLEKS                       R8 R0 K18 ["WidgetUri"]
       76 GETTABLEKS                       R9 R1 K4 ["Id"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K19 ["Uri"]
       81 GETUPVAL                         R7 3
       82 NAMECALL                         R7 R7 K20 ["GetUserId"]
       84 CALL                             R7 1 1
       85 SETTABLEKS                       R7 R6 K21 ["UserId"]
       87 GETTABLEKS                       R7 R3 K22 ["Visible"]
       89 SETTABLEKS                       R7 R6 K22 ["Visible"]
       91 GETUPVAL                         R8 4
       92 GETTABLEKS                       R7 R8 K23 ["Tag"]
       94 GETTABLEKS                       R8 R1 K24 ["Style"]
       96 SETTABLE                         R8 R6 R7
       97 CALL                             R4 2 -1
       98 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R3 K10 ["Util"]
       25 GETTABLEKS                       R4 R5 K11 ["StudioUri"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Components"]
       33 GETTABLEKS                       R6 R7 K14 ["AvatarThumbnail"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K16 [game]
       38 LOADK                            R8 K17 ["StudioService"]
       39 NAMECALL                         R6 R6 K18 ["GetService"]
       41 CALL                             R6 2 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R11 R0 K12 ["Src"]
       46 GETTABLEKS                       R10 R11 K13 ["Components"]
       48 GETTABLEKS                       R9 R10 K19 ["ControlsView"]
       50 GETTABLEKS                       R8 R9 K20 ["ControlProps"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K5 [require]
       55 GETTABLEKS                       R10 R0 K12 ["Src"]
       57 GETTABLEKS                       R9 R10 K21 ["Types"]
       59 CALL                             R8 1 1
       60 DUPCLOSURE                       R9 K22 [PROTO_1]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R1
       66 RETURN                           R9 1

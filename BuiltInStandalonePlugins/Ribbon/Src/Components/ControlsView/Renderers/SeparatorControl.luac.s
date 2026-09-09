PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R2 R3 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K4 ["ShowContextMenu"]
       10 MOVE                             R3 R1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K5 ["ControlIndices"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Item"]
        2 GETTABLEKS                       R2 R2 K1 ["Size"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Large"] ; [+3]
        6 LOADK                            R1 K2 ["Large"]
        7 JUMP                             ; [+1]
        8 LOADK                            R1 K3 ["Small"]
        9 GETTABLEKS                       R2 R0 K0 ["Item"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 LOADB                            R5 1
       14 GETTABLEKS                       R6 R2 K4 ["Action"]
       16 JUMPIFNOT                        R6 ; [+24]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K5 ["toString"]
       20 GETTABLEKS                       R7 R2 K4 ["Action"]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R7 R0 K6 ["Items"]
       25 GETTABLEKS                       R7 R7 K7 ["Actions"]
       27 GETTABLE                         R3 R7 R6
       28 JUMPIF                           R3 ; [+38]
       29 GETTABLEKS                       R7 R0 K8 ["Warn"]
       31 LOADK                            R9 K9 ["Missing Action %* for Separator"]
       32 MOVE                             R11 R6
       33 NAMECALL                         R9 R9 K10 ["format"]
       35 CALL                             R9 2 1
       36 MOVE                             R8 R9
       37 CALL                             R7 1 0
       38 LOADNIL                          R7
       39 RETURN                           R7 1
       40 JUMP                             ; [+26]
       41 GETTABLEKS                       R6 R2 K11 ["Setting"]
       43 JUMPIFNOT                        R6 ; [+23]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K5 ["toString"]
       47 GETTABLEKS                       R7 R2 K11 ["Setting"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R0 K6 ["Items"]
       52 GETTABLEKS                       R7 R7 K12 ["Settings"]
       54 GETTABLE                         R4 R7 R6
       55 JUMPIF                           R4 ; [+11]
       56 GETTABLEKS                       R7 R0 K8 ["Warn"]
       58 LOADK                            R9 K13 ["Missing Setting %* for Separator"]
       59 MOVE                             R11 R6
       60 NAMECALL                         R9 R9 K10 ["format"]
       62 CALL                             R9 2 1
       63 MOVE                             R8 R9
       64 CALL                             R7 1 0
       65 LOADNIL                          R7
       66 RETURN                           R7 1
       67 JUMPIFNOT                        R3 ; [+9]
       68 GETTABLEKS                       R6 R3 K14 ["Visible"]
       70 JUMPIFEQKNIL                     R6 ; [+4]
       72 GETTABLEKS                       R5 R3 K14 ["Visible"]
       74 JUMP                             ; [+11]
       75 LOADB                            R5 1
       76 JUMP                             ; [+9]
       77 JUMPIFNOT                        R4 ; [+8]
       78 GETTABLEKS                       R6 R4 K14 ["Visible"]
       80 JUMPIFEQKNIL                     R6 ; [+4]
       82 GETTABLEKS                       R5 R4 K14 ["Visible"]
       84 JUMP                             ; [+1]
       85 LOADB                            R5 1
       86 GETUPVAL                         R6 1
       87 LOADK                            R7 K15 ["TextButton"]
       88 NEWTABLE                         R8 8 0
       90 LOADB                            R9 1
       91 SETTABLEKS                       R9 R8 K16 ["Active"]
       93 GETTABLEKS                       R9 R0 K17 ["LayoutOrder"]
       95 SETTABLEKS                       R9 R8 K17 ["LayoutOrder"]
       97 LOADK                            R9 K18 [""]
       98 SETTABLEKS                       R9 R8 K19 ["Text"]
      100 SETTABLEKS                       R5 R8 K14 ["Visible"]
      102 GETUPVAL                         R10 2
      103 CALL                             R10 0 1
      104 JUMPIFNOT                        R10 ; [+2]
      105 LOADB                            R9 0
      106 JUMP                             ; [+1]
      107 LOADNIL                          R9
      108 SETTABLEKS                       R9 R8 K20 ["Selectable"]
      110 GETUPVAL                         R9 3
      111 GETTABLEKS                       R9 R9 K21 ["Tag"]
      113 GETUPVAL                         R10 4
      114 LOADK                            R11 K22 ["Role-Surface X-Fit"]
      115 GETTABLEKS                       R13 R0 K23 ["IsColumn"]
      117 JUMPIFNOT                        R13 ; [+2]
      118 LOADK                            R12 K24 ["Role-DividerH X-Middle"]
      119 JUMP                             ; [+1]
      120 LOADK                            R12 K25 ["Role-DividerV"]
      121 MOVE                             R13 R1
      122 CALL                             R10 3 1
      123 SETTABLE                         R10 R8 R9
      124 GETUPVAL                         R9 3
      125 GETTABLEKS                       R9 R9 K26 ["Event"]
      127 GETTABLEKS                       R9 R9 K27 ["InputBegan"]
      129 NEWCLOSURE                       R10 P0
      130 CAPTURE                          VAL R0
      131 SETTABLE                         R10 R8 R9
      132 DUPTABLE                         R9 K29 [{"Divider"}]
      133 GETUPVAL                         R10 1
      134 LOADK                            R11 K30 ["Frame"]
      135 CALL                             R10 1 1
      136 SETTABLEKS                       R10 R9 K28 ["Divider"]
      138 CALL                             R6 3 -1
      139 RETURN                           R6 -1

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
       33 GETTABLEKS                       R6 R6 K14 ["ControlsView"]
       35 GETTABLEKS                       R6 R6 K15 ["ControlProps"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Src"]
       42 GETTABLEKS                       R7 R7 K16 ["Types"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Packages"]
       49 GETTABLEKS                       R8 R8 K17 ["Framework"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K18 ["Styling"]
       54 GETTABLEKS                       R9 R8 K19 ["joinTags"]
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K12 ["Src"]
       60 GETTABLEKS                       R11 R11 K20 ["SharedFlags"]
       62 GETTABLEKS                       R11 R11 K21 ["getFFlagRibbonEnableKeyboardNavigation"]
       64 CALL                             R10 1 1
       65 DUPCLOSURE                       R11 K22 [PROTO_1]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R9
       71 RETURN                           R11 1

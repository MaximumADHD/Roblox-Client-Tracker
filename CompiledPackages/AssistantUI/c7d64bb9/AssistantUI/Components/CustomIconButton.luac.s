PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+4]
        9 LOADB                            R2 1
       10 SETTABLE                         R2 R1 R0
       11 RETURN                           R1 1
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R3 R0
       14 GETIMPORT                        R2 K1 [typeof]
       16 CALL                             R2 1 1
       17 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+2]
       19 MOVE                             R1 R0
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 NEWTABLE                         R3 0 0
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R5 R2
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+4]
       11 LOADB                            R4 1
       12 SETTABLE                         R4 R3 R2
       13 JUMP                             ; [+8]
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R4 K2 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+2]
       21 MOVE                             R3 R2
       22 MOVE                             R1 R3
       23 GETTABLEKS                       R3 R0 K5 ["iconTag"]
       25 NEWTABLE                         R4 0 0
       27 FASTCALL1                        TYPEOF R3 ; [+3]
       28 MOVE                             R6 R3
       29 GETIMPORT                        R5 K2 [typeof]
       31 CALL                             R5 1 1
       32 JUMPIFNOTEQKS                    R5 K3 ["string"] ; [+4]
       34 LOADB                            R5 1
       35 SETTABLE                         R5 R4 R3
       36 JUMP                             ; [+8]
       37 FASTCALL1                        TYPEOF R3 ; [+3]
       38 MOVE                             R6 R3
       39 GETIMPORT                        R5 K2 [typeof]
       41 CALL                             R5 1 1
       42 JUMPIFNOTEQKS                    R5 K4 ["table"] ; [+2]
       44 MOVE                             R4 R3
       45 MOVE                             R2 R4
       46 LOADB                            R3 1
       47 SETTABLEKS                       R3 R1 K6 ["row"]
       49 LOADB                            R3 1
       50 SETTABLEKS                       R3 R2 K7 ["anchor-center-center"]
       52 LOADB                            R3 1
       53 SETTABLEKS                       R3 R2 K8 ["position-center-center"]
       55 GETTABLEKS                       R3 R0 K9 ["isDisabled"]
       57 JUMPIFNOT                        R3 ; [+11]
       58 GETTABLEKS                       R4 R0 K10 ["skipBackgroundColoringDisabled"]
       60 JUMPIFEQKB                       R4 FALSE ; [+2]
       62 LOADB                            R3 0 +1
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R1 K11 ["Assistant-CustomIconButton-Disabled"]
       66 LOADB                            R3 1
       67 SETTABLEKS                       R3 R2 K11 ["Assistant-CustomIconButton-Disabled"]
       69 GETUPVAL                         R3 0
       70 CALL                             R3 0 1
       71 GETUPVAL                         R4 1
       72 GETUPVAL                         R5 2
       73 DUPTABLE                         R6 K17 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "Rotation", "LayoutOrder"}]
       74 SETTABLEKS                       R2 R6 K0 ["tag"]
       76 GETTABLEKS                       R7 R0 K18 ["icon"]
       78 SETTABLEKS                       R7 R6 K12 ["Image"]
       80 GETTABLEKS                       R7 R0 K19 ["iconRectOffset"]
       82 SETTABLEKS                       R7 R6 K13 ["ImageRectOffset"]
       84 GETTABLEKS                       R7 R0 K20 ["iconRectSize"]
       86 SETTABLEKS                       R7 R6 K14 ["ImageRectSize"]
       88 GETTABLEKS                       R7 R0 K21 ["iconRotation"]
       90 SETTABLEKS                       R7 R6 K15 ["Rotation"]
       92 MOVE                             R7 R3
       93 CALL                             R7 0 1
       94 SETTABLEKS                       R7 R6 K16 ["LayoutOrder"]
       96 CALL                             R4 2 1
       97 GETUPVAL                         R5 1
       98 GETUPVAL                         R6 3
       99 DUPTABLE                         R7 K24 [{"tag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      100 SETTABLEKS                       R1 R7 K0 ["tag"]
      102 GETTABLEKS                       R8 R0 K9 ["isDisabled"]
      104 SETTABLEKS                       R8 R7 K9 ["isDisabled"]
      106 GETTABLEKS                       R8 R0 K22 ["onActivated"]
      108 SETTABLEKS                       R8 R7 K22 ["onActivated"]
      110 GETTABLEKS                       R8 R0 K16 ["LayoutOrder"]
      112 SETTABLEKS                       R8 R7 K16 ["LayoutOrder"]
      114 GETTABLEKS                       R8 R0 K23 ["testId"]
      116 SETTABLEKS                       R8 R7 K23 ["testId"]
      118 DUPTABLE                         R8 K28 [{"IconContainer", "Icon", "Text"}]
      119 GETTABLEKS                       R10 R0 K21 ["iconRotation"]
      121 JUMPIFNOT                        R10 ; [+15]
      122 GETUPVAL                         R9 1
      123 GETUPVAL                         R10 3
      124 DUPTABLE                         R11 K29 [{"tag", "LayoutOrder"}]
      125 LOADK                            R12 K30 ["size-0-0"]
      126 SETTABLEKS                       R12 R11 K0 ["tag"]
      128 MOVE                             R12 R3
      129 CALL                             R12 0 1
      130 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      132 DUPTABLE                         R12 K31 [{"Icon"}]
      133 SETTABLEKS                       R4 R12 K26 ["Icon"]
      135 CALL                             R9 3 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R9
      138 SETTABLEKS                       R9 R8 K25 ["IconContainer"]
      140 GETTABLEKS                       R10 R0 K21 ["iconRotation"]
      142 JUMPIF                           R10 ; [+2]
      143 MOVE                             R9 R4
      144 JUMP                             ; [+1]
      145 LOADNIL                          R9
      146 SETTABLEKS                       R9 R8 K26 ["Icon"]
      148 GETTABLEKS                       R9 R0 K32 ["text"]
      150 JUMPIFNOT                        R9 ; [+15]
      151 GETUPVAL                         R9 1
      152 GETUPVAL                         R10 4
      153 DUPTABLE                         R11 K33 [{"LayoutOrder", "tag", "Text"}]
      154 MOVE                             R12 R3
      155 CALL                             R12 0 1
      156 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      158 LOADK                            R12 K34 ["auto-xy text-label-small content-action-standard"]
      159 SETTABLEKS                       R12 R11 K0 ["tag"]
      161 GETTABLEKS                       R12 R0 K32 ["text"]
      163 SETTABLEKS                       R12 R11 K27 ["Text"]
      165 CALL                             R9 2 1
      166 SETTABLEKS                       R9 R8 K27 ["Text"]
      168 CALL                             R5 3 -1
      169 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Image"]
       30 GETTABLEKS                       R5 R1 K11 ["Text"]
       32 GETTABLEKS                       R6 R1 K12 ["View"]
       34 GETTABLEKS                       R7 R3 K13 ["createNextOrder"]
       36 GETTABLEKS                       R8 R2 K14 ["createElement"]
       38 DUPCLOSURE                       R9 K15 [PROTO_0]
       39 DUPCLOSURE                       R10 K16 [PROTO_1]
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 RETURN                           R10 1

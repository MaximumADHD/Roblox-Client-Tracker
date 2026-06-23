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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["CustomIconButton is deprecated! Please use BuilderIcons instead."]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R2 R0 K3 ["tag"]
       11 NEWTABLE                         R3 0 0
       13 FASTCALL1                        TYPEOF R2 ; [+3]
       14 MOVE                             R5 R2
       15 GETIMPORT                        R4 K5 [typeof]
       17 CALL                             R4 1 1
       18 JUMPIFNOTEQKS                    R4 K6 ["string"] ; [+4]
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R3 R2
       22 JUMP                             ; [+8]
       23 FASTCALL1                        TYPEOF R2 ; [+3]
       24 MOVE                             R5 R2
       25 GETIMPORT                        R4 K5 [typeof]
       27 CALL                             R4 1 1
       28 JUMPIFNOTEQKS                    R4 K7 ["table"] ; [+2]
       30 MOVE                             R3 R2
       31 MOVE                             R1 R3
       32 GETTABLEKS                       R3 R0 K8 ["iconTag"]
       34 NEWTABLE                         R4 0 0
       36 FASTCALL1                        TYPEOF R3 ; [+3]
       37 MOVE                             R6 R3
       38 GETIMPORT                        R5 K5 [typeof]
       40 CALL                             R5 1 1
       41 JUMPIFNOTEQKS                    R5 K6 ["string"] ; [+4]
       43 LOADB                            R5 1
       44 SETTABLE                         R5 R4 R3
       45 JUMP                             ; [+8]
       46 FASTCALL1                        TYPEOF R3 ; [+3]
       47 MOVE                             R6 R3
       48 GETIMPORT                        R5 K5 [typeof]
       50 CALL                             R5 1 1
       51 JUMPIFNOTEQKS                    R5 K7 ["table"] ; [+2]
       53 MOVE                             R4 R3
       54 MOVE                             R2 R4
       55 LOADB                            R3 1
       56 SETTABLEKS                       R3 R1 K9 ["row"]
       58 LOADB                            R3 1
       59 SETTABLEKS                       R3 R2 K10 ["anchor-center-center"]
       61 LOADB                            R3 1
       62 SETTABLEKS                       R3 R2 K11 ["position-center-center"]
       64 GETTABLEKS                       R3 R0 K12 ["isDisabled"]
       66 JUMPIFNOT                        R3 ; [+11]
       67 GETTABLEKS                       R4 R0 K13 ["skipBackgroundColoringDisabled"]
       69 JUMPIFEQKB                       R4 FALSE ; [+2]
       71 LOADB                            R3 0 +1
       72 LOADB                            R3 1
       73 SETTABLEKS                       R3 R1 K14 ["Assistant-CustomIconButton-Disabled"]
       75 LOADB                            R3 1
       76 SETTABLEKS                       R3 R2 K14 ["Assistant-CustomIconButton-Disabled"]
       78 GETUPVAL                         R3 1
       79 CALL                             R3 0 1
       80 GETUPVAL                         R4 2
       81 GETUPVAL                         R5 3
       82 DUPTABLE                         R6 K20 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "Rotation", "LayoutOrder"}]
       83 SETTABLEKS                       R2 R6 K3 ["tag"]
       85 GETTABLEKS                       R7 R0 K21 ["icon"]
       87 SETTABLEKS                       R7 R6 K15 ["Image"]
       89 GETTABLEKS                       R7 R0 K22 ["iconRectOffset"]
       91 SETTABLEKS                       R7 R6 K16 ["ImageRectOffset"]
       93 GETTABLEKS                       R7 R0 K23 ["iconRectSize"]
       95 SETTABLEKS                       R7 R6 K17 ["ImageRectSize"]
       97 GETTABLEKS                       R7 R0 K24 ["iconRotation"]
       99 SETTABLEKS                       R7 R6 K18 ["Rotation"]
      101 MOVE                             R7 R3
      102 CALL                             R7 0 1
      103 SETTABLEKS                       R7 R6 K19 ["LayoutOrder"]
      105 CALL                             R4 2 1
      106 GETUPVAL                         R5 2
      107 GETUPVAL                         R6 4
      108 DUPTABLE                         R7 K27 [{"tag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      109 SETTABLEKS                       R1 R7 K3 ["tag"]
      111 GETTABLEKS                       R8 R0 K12 ["isDisabled"]
      113 SETTABLEKS                       R8 R7 K12 ["isDisabled"]
      115 GETTABLEKS                       R8 R0 K25 ["onActivated"]
      117 SETTABLEKS                       R8 R7 K25 ["onActivated"]
      119 GETTABLEKS                       R8 R0 K19 ["LayoutOrder"]
      121 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      123 GETTABLEKS                       R8 R0 K26 ["testId"]
      125 SETTABLEKS                       R8 R7 K26 ["testId"]
      127 DUPTABLE                         R8 K31 [{"IconContainer", "Icon", "Text"}]
      128 GETTABLEKS                       R10 R0 K24 ["iconRotation"]
      130 JUMPIFNOT                        R10 ; [+15]
      131 GETUPVAL                         R9 2
      132 GETUPVAL                         R10 4
      133 DUPTABLE                         R11 K32 [{"tag", "LayoutOrder"}]
      134 LOADK                            R12 K33 ["size-0-0"]
      135 SETTABLEKS                       R12 R11 K3 ["tag"]
      137 MOVE                             R12 R3
      138 CALL                             R12 0 1
      139 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      141 DUPTABLE                         R12 K34 [{"Icon"}]
      142 SETTABLEKS                       R4 R12 K29 ["Icon"]
      144 CALL                             R9 3 1
      145 JUMP                             ; [+1]
      146 LOADNIL                          R9
      147 SETTABLEKS                       R9 R8 K28 ["IconContainer"]
      149 GETTABLEKS                       R10 R0 K24 ["iconRotation"]
      151 JUMPIF                           R10 ; [+2]
      152 MOVE                             R9 R4
      153 JUMP                             ; [+1]
      154 LOADNIL                          R9
      155 SETTABLEKS                       R9 R8 K29 ["Icon"]
      157 GETTABLEKS                       R9 R0 K35 ["text"]
      159 JUMPIFNOT                        R9 ; [+15]
      160 GETUPVAL                         R9 2
      161 GETUPVAL                         R10 5
      162 DUPTABLE                         R11 K36 [{"LayoutOrder", "tag", "Text"}]
      163 MOVE                             R12 R3
      164 CALL                             R12 0 1
      165 SETTABLEKS                       R12 R11 K19 ["LayoutOrder"]
      167 LOADK                            R12 K37 ["auto-xy text-label-small content-action-standard"]
      168 SETTABLEKS                       R12 R11 K3 ["tag"]
      170 GETTABLEKS                       R12 R0 K35 ["text"]
      172 SETTABLEKS                       R12 R11 K30 ["Text"]
      174 CALL                             R9 2 1
      175 SETTABLEKS                       R9 R8 K30 ["Text"]
      177 CALL                             R5 3 -1
      178 RETURN                           R5 -1

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
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Flags"]
       32 GETTABLEKS                       R5 R5 K11 ["FFlagAssistantUseBuilderIcons"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["Image"]
       37 GETTABLEKS                       R6 R1 K13 ["Text"]
       39 GETTABLEKS                       R7 R1 K14 ["View"]
       41 GETTABLEKS                       R8 R3 K15 ["createNextOrder"]
       43 GETTABLEKS                       R9 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R10 K17 [PROTO_0]
       46 DUPCLOSURE                       R11 K18 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R6
       53 RETURN                           R11 1

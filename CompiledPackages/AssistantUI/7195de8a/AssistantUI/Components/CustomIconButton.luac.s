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
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseBuilderIcons"]
        3 NOT                              R2 R3
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["CustomIconButton is deprecated! Please use BuilderIcons instead."]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETTABLEKS                       R2 R0 K4 ["tag"]
       12 NEWTABLE                         R3 0 0
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R4 K6 [typeof]
       18 CALL                             R4 1 1
       19 JUMPIFNOTEQKS                    R4 K7 ["string"] ; [+4]
       21 LOADB                            R4 1
       22 SETTABLE                         R4 R3 R2
       23 JUMP                             ; [+8]
       24 FASTCALL1                        TYPEOF R2 ; [+3]
       25 MOVE                             R5 R2
       26 GETIMPORT                        R4 K6 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K8 ["table"] ; [+2]
       31 MOVE                             R3 R2
       32 MOVE                             R1 R3
       33 GETTABLEKS                       R3 R0 K9 ["iconTag"]
       35 NEWTABLE                         R4 0 0
       37 FASTCALL1                        TYPEOF R3 ; [+3]
       38 MOVE                             R6 R3
       39 GETIMPORT                        R5 K6 [typeof]
       41 CALL                             R5 1 1
       42 JUMPIFNOTEQKS                    R5 K7 ["string"] ; [+4]
       44 LOADB                            R5 1
       45 SETTABLE                         R5 R4 R3
       46 JUMP                             ; [+8]
       47 FASTCALL1                        TYPEOF R3 ; [+3]
       48 MOVE                             R6 R3
       49 GETIMPORT                        R5 K6 [typeof]
       51 CALL                             R5 1 1
       52 JUMPIFNOTEQKS                    R5 K8 ["table"] ; [+2]
       54 MOVE                             R4 R3
       55 MOVE                             R2 R4
       56 LOADB                            R3 1
       57 SETTABLEKS                       R3 R1 K10 ["row"]
       59 LOADB                            R3 1
       60 SETTABLEKS                       R3 R2 K11 ["anchor-center-center"]
       62 LOADB                            R3 1
       63 SETTABLEKS                       R3 R2 K12 ["position-center-center"]
       65 GETTABLEKS                       R3 R0 K13 ["isDisabled"]
       67 JUMPIFNOT                        R3 ; [+11]
       68 GETTABLEKS                       R4 R0 K14 ["skipBackgroundColoringDisabled"]
       70 JUMPIFEQKB                       R4 FALSE ; [+2]
       72 LOADB                            R3 0 +1
       73 LOADB                            R3 1
       74 SETTABLEKS                       R3 R1 K15 ["Assistant-CustomIconButton-Disabled"]
       76 LOADB                            R3 1
       77 SETTABLEKS                       R3 R2 K15 ["Assistant-CustomIconButton-Disabled"]
       79 GETUPVAL                         R3 1
       80 CALL                             R3 0 1
       81 GETUPVAL                         R4 2
       82 GETUPVAL                         R5 3
       83 DUPTABLE                         R6 K21 [{"tag", "Image", "ImageRectOffset", "ImageRectSize", "Rotation", "LayoutOrder"}]
       84 SETTABLEKS                       R2 R6 K4 ["tag"]
       86 GETTABLEKS                       R7 R0 K22 ["icon"]
       88 SETTABLEKS                       R7 R6 K16 ["Image"]
       90 GETTABLEKS                       R7 R0 K23 ["iconRectOffset"]
       92 SETTABLEKS                       R7 R6 K17 ["ImageRectOffset"]
       94 GETTABLEKS                       R7 R0 K24 ["iconRectSize"]
       96 SETTABLEKS                       R7 R6 K18 ["ImageRectSize"]
       98 GETTABLEKS                       R7 R0 K25 ["iconRotation"]
      100 SETTABLEKS                       R7 R6 K19 ["Rotation"]
      102 MOVE                             R7 R3
      103 CALL                             R7 0 1
      104 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
      106 CALL                             R4 2 1
      107 GETUPVAL                         R5 2
      108 GETUPVAL                         R6 4
      109 DUPTABLE                         R7 K28 [{"tag", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      110 SETTABLEKS                       R1 R7 K4 ["tag"]
      112 GETTABLEKS                       R8 R0 K13 ["isDisabled"]
      114 SETTABLEKS                       R8 R7 K13 ["isDisabled"]
      116 GETTABLEKS                       R8 R0 K26 ["onActivated"]
      118 SETTABLEKS                       R8 R7 K26 ["onActivated"]
      120 GETTABLEKS                       R8 R0 K20 ["LayoutOrder"]
      122 SETTABLEKS                       R8 R7 K20 ["LayoutOrder"]
      124 GETTABLEKS                       R8 R0 K27 ["testId"]
      126 SETTABLEKS                       R8 R7 K27 ["testId"]
      128 DUPTABLE                         R8 K32 [{"IconContainer", "Icon", "Text"}]
      129 GETTABLEKS                       R10 R0 K25 ["iconRotation"]
      131 JUMPIFNOT                        R10 ; [+12]
      132 GETUPVAL                         R9 2
      133 GETUPVAL                         R10 4
      134 DUPTABLE                         R11 K34 [{["tag"] = "size-0-0", ["LayoutOrder"]}]
      135 MOVE                             R12 R3
      136 CALL                             R12 0 1
      137 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      139 DUPTABLE                         R12 K35 [{"Icon"}]
      140 SETTABLEKS                       R4 R12 K30 ["Icon"]
      142 CALL                             R9 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R9
      145 SETTABLEKS                       R9 R8 K29 ["IconContainer"]
      147 GETTABLEKS                       R10 R0 K25 ["iconRotation"]
      149 JUMPIF                           R10 ; [+2]
      150 MOVE                             R9 R4
      151 JUMP                             ; [+1]
      152 LOADNIL                          R9
      153 SETTABLEKS                       R9 R8 K30 ["Icon"]
      155 GETTABLEKS                       R9 R0 K36 ["text"]
      157 JUMPIFNOT                        R9 ; [+12]
      158 GETUPVAL                         R9 2
      159 GETUPVAL                         R10 5
      160 DUPTABLE                         R11 K38 [{["LayoutOrder"], ["tag"] = "auto-xy text-label-small content-action-standard", ["Text"]}]
      161 MOVE                             R12 R3
      162 CALL                             R12 0 1
      163 SETTABLEKS                       R12 R11 K20 ["LayoutOrder"]
      165 GETTABLEKS                       R12 R0 K36 ["text"]
      167 SETTABLEKS                       R12 R11 K31 ["Text"]
      169 CALL                             R9 2 1
      170 SETTABLEKS                       R9 R8 K31 ["Text"]
      172 CALL                             R5 3 -1
      173 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K11 ["Image"]
       35 GETTABLEKS                       R6 R2 K12 ["Text"]
       37 GETTABLEKS                       R7 R2 K13 ["View"]
       39 GETTABLEKS                       R8 R4 K14 ["createNextOrder"]
       41 GETTABLEKS                       R9 R3 K15 ["createElement"]
       43 DUPCLOSURE                       R10 K16 [PROTO_0]
       44 DUPCLOSURE                       R11 K17 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 RETURN                           R11 1

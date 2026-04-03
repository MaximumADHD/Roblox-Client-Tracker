PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onChildAdded"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onChildAdded"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 NEWTABLE                         R4 0 4
       11 LOADK                            R5 K2 ["MouseKeyboard"]
       12 LOADK                            R6 K3 ["Touch"]
       13 LOADK                            R7 K4 ["Gamepad"]
       14 LOADK                            R8 K5 ["VR"]
       15 SETLIST                          R4 R5 4 [1]
       17 NEWTABLE                         R5 0 0
       19 MOVE                             R6 R4
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 GETUPVAL                         R12 1
       24 GETTABLEKS                       R11 R12 K6 ["createElement"]
       26 GETUPVAL                         R12 2
       27 DUPTABLE                         R13 K10 [{"LayoutOrder", "tag", "Text"}]
       28 MOVE                             R14 R1
       29 CALL                             R14 0 1
       30 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
       32 LOADK                            R14 K11 ["columns-input text-align-x-left text-body-medium padding-small"]
       33 SETTABLEKS                       R14 R13 K8 ["tag"]
       35 SETTABLEKS                       R10 R13 K9 ["Text"]
       37 CALL                             R11 2 1
       38 SETTABLE                         R11 R5 R10
       39 FORGLOOP                         R6 2 ; [-17]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K12 ["useEventCallback"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U3
       47 CALL                             R6 1 1
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K13 ["useCallback"]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R0
       53 NEWTABLE                         R9 0 1
       55 GETTABLEKS                       R10 R0 K14 ["onChildAdded"]
       57 SETLIST                          R9 R10 1 [1]
       59 CALL                             R7 2 1
       60 GETUPVAL                         R9 1
       61 GETTABLEKS                       R8 R9 K6 ["createElement"]
       63 GETUPVAL                         R9 4
       64 DUPTABLE                         R10 K15 [{"LayoutOrder", "tag"}]
       65 GETTABLEKS                       R11 R0 K7 ["LayoutOrder"]
       67 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       69 LOADK                            R11 K16 ["tree-row row align-y-center"]
       70 SETTABLEKS                       R11 R10 K8 ["tag"]
       72 DUPTABLE                         R11 K20 [{"TreeHeader", "Divider", "ColumnHeaders"}]
       73 GETUPVAL                         R13 1
       74 GETTABLEKS                       R12 R13 K6 ["createElement"]
       76 GETUPVAL                         R13 4
       77 DUPTABLE                         R14 K23 [{"LayoutOrder", "onStateChanged", "tag", "testId"}]
       78 MOVE                             R15 R1
       79 CALL                             R15 0 1
       80 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       82 SETTABLEKS                       R6 R14 K21 ["onStateChanged"]
       84 LOADK                            R15 K24 ["columns-tree row align-y-center padding-left-small padding-right-small"]
       85 SETTABLEKS                       R15 R14 K8 ["tag"]
       87 LOADK                            R15 K25 ["tree-header"]
       88 SETTABLEKS                       R15 R14 K22 ["testId"]
       90 DUPTABLE                         R15 K28 [{"TreeLabel", "AddContextButton"}]
       91 GETUPVAL                         R17 1
       92 GETTABLEKS                       R16 R17 K6 ["createElement"]
       94 GETUPVAL                         R17 2
       95 DUPTABLE                         R18 K10 [{"LayoutOrder", "tag", "Text"}]
       96 MOVE                             R19 R1
       97 CALL                             R19 0 1
       98 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      100 LOADK                            R19 K29 ["text-align-x-left text-body-medium padding-small grow"]
      101 SETTABLEKS                       R19 R18 K8 ["tag"]
      103 LOADK                            R19 K30 ["Context"]
      104 SETTABLEKS                       R19 R18 K9 ["Text"]
      106 CALL                             R16 2 1
      107 SETTABLEKS                       R16 R15 K26 ["TreeLabel"]
      109 MOVE                             R16 R2
      110 JUMPIFNOT                        R16 ; [+39]
      111 GETUPVAL                         R17 1
      112 GETTABLEKS                       R16 R17 K6 ["createElement"]
      114 GETUPVAL                         R17 4
      115 DUPTABLE                         R18 K15 [{"LayoutOrder", "tag"}]
      116 MOVE                             R19 R1
      117 CALL                             R19 0 1
      118 SETTABLEKS                       R19 R18 K7 ["LayoutOrder"]
      120 LOADK                            R19 K31 ["spacer align-y-center align-x-center padding-small"]
      121 SETTABLEKS                       R19 R18 K8 ["tag"]
      123 DUPTABLE                         R19 K33 [{"IconButton"}]
      124 GETUPVAL                         R21 1
      125 GETTABLEKS                       R20 R21 K6 ["createElement"]
      127 GETUPVAL                         R21 5
      128 DUPTABLE                         R22 K37 [{"icon", "onActivated", "size", "testId"}]
      129 LOADK                            R23 K38 ["plus-small"]
      130 SETTABLEKS                       R23 R22 K34 ["icon"]
      132 SETTABLEKS                       R7 R22 K35 ["onActivated"]
      134 GETUPVAL                         R26 6
      135 GETTABLEKS                       R25 R26 K39 ["Enums"]
      137 GETTABLEKS                       R24 R25 K40 ["IconSize"]
      139 GETTABLEKS                       R23 R24 K41 ["Small"]
      141 SETTABLEKS                       R23 R22 K36 ["size"]
      143 LOADK                            R23 K42 ["tree-header-add-button"]
      144 SETTABLEKS                       R23 R22 K22 ["testId"]
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K32 ["IconButton"]
      149 CALL                             R16 3 1
      150 SETTABLEKS                       R16 R15 K27 ["AddContextButton"]
      152 CALL                             R12 3 1
      153 SETTABLEKS                       R12 R11 K17 ["TreeHeader"]
      155 GETUPVAL                         R13 1
      156 GETTABLEKS                       R12 R13 K6 ["createElement"]
      158 GETUPVAL                         R13 7
      159 DUPTABLE                         R14 K44 [{"LayoutOrder", "orientation", "tag"}]
      160 MOVE                             R15 R1
      161 CALL                             R15 0 1
      162 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      164 GETUPVAL                         R16 8
      165 GETTABLEKS                       R15 R16 K45 ["Vertical"]
      167 SETTABLEKS                       R15 R14 K43 ["orientation"]
      169 LOADK                            R15 K46 ["auto-y"]
      170 SETTABLEKS                       R15 R14 K8 ["tag"]
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K18 ["Divider"]
      175 GETUPVAL                         R13 1
      176 GETTABLEKS                       R12 R13 K6 ["createElement"]
      178 GETUPVAL                         R13 4
      179 DUPTABLE                         R14 K15 [{"LayoutOrder", "tag"}]
      180 MOVE                             R15 R1
      181 CALL                             R15 0 1
      182 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      184 LOADK                            R15 K47 ["columns-fill columns-flex align-y-center"]
      185 SETTABLEKS                       R15 R14 K8 ["tag"]
      187 MOVE                             R15 R5
      188 CALL                             R12 3 1
      189 SETTABLEKS                       R12 R11 K19 ["ColumnHeaders"]
      191 CALL                             R8 3 -1
      192 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R5 K11 ["ControlState"]
       32 GETTABLEKS                       R5 R3 K12 ["Divider"]
       34 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       36 GETTABLEKS                       R7 R3 K14 ["Text"]
       38 GETTABLEKS                       R8 R3 K15 ["View"]
       40 GETTABLEKS                       R10 R3 K10 ["Enums"]
       42 GETTABLEKS                       R9 R10 K16 ["Orientation"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R12 R0 K17 ["Src"]
       48 GETTABLEKS                       R11 R12 K18 ["Types"]
       50 CALL                             R10 1 1
       51 DUPCLOSURE                       R11 K19 [PROTO_2]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R9
       61 RETURN                           R11 1

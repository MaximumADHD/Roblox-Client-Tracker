PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Hover"]
        4 JUMPIFEQ                         R0 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onChildAdded"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onChildAdded"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 NEWTABLE                         R4 0 0
       11 GETUPVAL                         R5 2
       12 CALL                             R5 0 3
       13 FORGPREP                         R5
       14 GETUPVAL                         R10 1
       15 GETTABLEKS                       R10 R10 K2 ["createElement"]
       17 GETUPVAL                         R11 3
       18 DUPTABLE                         R12 K6 [{"LayoutOrder", "tag", "Text"}]
       19 MOVE                             R13 R1
       20 CALL                             R13 0 1
       21 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       23 LOADK                            R13 K7 ["columns-input text-align-x-left text-body-medium padding-small"]
       24 SETTABLEKS                       R13 R12 K4 ["tag"]
       26 SETTABLEKS                       R9 R12 K5 ["Text"]
       28 CALL                             R10 2 1
       29 SETTABLE                         R10 R4 R9
       30 FORGLOOP                         R5 2 ; [-17]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K8 ["useEventCallback"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          VAL R3
       37 CAPTURE                          UPVAL U4
       38 CALL                             R5 1 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K9 ["useCallback"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R8 0 1
       46 GETTABLEKS                       R9 R0 K10 ["onChildAdded"]
       48 SETLIST                          R8 R9 1 [1]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K2 ["createElement"]
       54 GETUPVAL                         R8 5
       55 DUPTABLE                         R9 K11 [{"LayoutOrder", "tag"}]
       56 GETTABLEKS                       R10 R0 K3 ["LayoutOrder"]
       58 SETTABLEKS                       R10 R9 K3 ["LayoutOrder"]
       60 LOADK                            R10 K12 ["tree-row row align-y-center"]
       61 SETTABLEKS                       R10 R9 K4 ["tag"]
       63 DUPTABLE                         R10 K16 [{"TreeHeader", "Divider", "ColumnHeaders"}]
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K2 ["createElement"]
       67 GETUPVAL                         R12 5
       68 DUPTABLE                         R13 K19 [{"LayoutOrder", "onStateChanged", "tag", "testId"}]
       69 MOVE                             R14 R1
       70 CALL                             R14 0 1
       71 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       73 SETTABLEKS                       R5 R13 K17 ["onStateChanged"]
       75 LOADK                            R14 K20 ["columns-tree row align-y-center padding-left-small padding-right-small"]
       76 SETTABLEKS                       R14 R13 K4 ["tag"]
       78 LOADK                            R14 K21 ["header"]
       79 SETTABLEKS                       R14 R13 K18 ["testId"]
       81 DUPTABLE                         R14 K24 [{"TreeLabel", "AddContextButton"}]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R15 R15 K2 ["createElement"]
       85 GETUPVAL                         R16 3
       86 DUPTABLE                         R17 K6 [{"LayoutOrder", "tag", "Text"}]
       87 MOVE                             R18 R1
       88 CALL                             R18 0 1
       89 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
       91 LOADK                            R18 K25 ["text-align-x-left text-body-medium padding-small grow"]
       92 SETTABLEKS                       R18 R17 K4 ["tag"]
       94 LOADK                            R18 K26 ["Context"]
       95 SETTABLEKS                       R18 R17 K5 ["Text"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K22 ["TreeLabel"]
      100 MOVE                             R15 R2
      101 JUMPIFNOT                        R15 ; [+39]
      102 GETUPVAL                         R15 1
      103 GETTABLEKS                       R15 R15 K2 ["createElement"]
      105 GETUPVAL                         R16 5
      106 DUPTABLE                         R17 K11 [{"LayoutOrder", "tag"}]
      107 MOVE                             R18 R1
      108 CALL                             R18 0 1
      109 SETTABLEKS                       R18 R17 K3 ["LayoutOrder"]
      111 LOADK                            R18 K27 ["spacer align-y-center align-x-center padding-small"]
      112 SETTABLEKS                       R18 R17 K4 ["tag"]
      114 DUPTABLE                         R18 K29 [{"IconButton"}]
      115 GETUPVAL                         R19 1
      116 GETTABLEKS                       R19 R19 K2 ["createElement"]
      118 GETUPVAL                         R20 6
      119 DUPTABLE                         R21 K33 [{"icon", "onActivated", "size", "testId"}]
      120 LOADK                            R22 K34 ["plus-small"]
      121 SETTABLEKS                       R22 R21 K30 ["icon"]
      123 SETTABLEKS                       R6 R21 K31 ["onActivated"]
      125 GETUPVAL                         R22 7
      126 GETTABLEKS                       R22 R22 K35 ["Enums"]
      128 GETTABLEKS                       R22 R22 K36 ["IconSize"]
      130 GETTABLEKS                       R22 R22 K37 ["Small"]
      132 SETTABLEKS                       R22 R21 K32 ["size"]
      134 LOADK                            R22 K38 ["header-add"]
      135 SETTABLEKS                       R22 R21 K18 ["testId"]
      137 CALL                             R19 2 1
      138 SETTABLEKS                       R19 R18 K28 ["IconButton"]
      140 CALL                             R15 3 1
      141 SETTABLEKS                       R15 R14 K23 ["AddContextButton"]
      143 CALL                             R11 3 1
      144 SETTABLEKS                       R11 R10 K13 ["TreeHeader"]
      146 GETUPVAL                         R11 1
      147 GETTABLEKS                       R11 R11 K2 ["createElement"]
      149 GETUPVAL                         R12 8
      150 DUPTABLE                         R13 K40 [{"LayoutOrder", "orientation", "tag"}]
      151 MOVE                             R14 R1
      152 CALL                             R14 0 1
      153 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      155 GETUPVAL                         R14 9
      156 GETTABLEKS                       R14 R14 K41 ["Vertical"]
      158 SETTABLEKS                       R14 R13 K39 ["orientation"]
      160 LOADK                            R14 K42 ["auto-y"]
      161 SETTABLEKS                       R14 R13 K4 ["tag"]
      163 CALL                             R11 2 1
      164 SETTABLEKS                       R11 R10 K14 ["Divider"]
      166 GETUPVAL                         R11 1
      167 GETTABLEKS                       R11 R11 K2 ["createElement"]
      169 GETUPVAL                         R12 5
      170 DUPTABLE                         R13 K11 [{"LayoutOrder", "tag"}]
      171 MOVE                             R14 R1
      172 CALL                             R14 0 1
      173 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
      175 LOADK                            R14 K43 ["columns-fill columns-flex align-y-center"]
      176 SETTABLEKS                       R14 R13 K4 ["tag"]
      178 MOVE                             R14 R4
      179 CALL                             R11 3 1
      180 SETTABLEKS                       R11 R10 K15 ["ColumnHeaders"]
      182 CALL                             R7 3 -1
      183 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Enums"]
       30 GETTABLEKS                       R4 R4 K11 ["ControlState"]
       32 GETTABLEKS                       R5 R3 K12 ["Divider"]
       34 GETTABLEKS                       R6 R3 K13 ["IconButton"]
       36 GETTABLEKS                       R7 R3 K14 ["Text"]
       38 GETTABLEKS                       R8 R3 K15 ["View"]
       40 GETTABLEKS                       R9 R3 K10 ["Enums"]
       42 GETTABLEKS                       R9 R9 K16 ["Orientation"]
       44 GETIMPORT                        R10 K5 [require]
       46 GETTABLEKS                       R11 R0 K17 ["Src"]
       48 GETTABLEKS                       R11 R11 K18 ["Util"]
       50 GETTABLEKS                       R11 R11 K19 ["getSchemas"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K17 ["Src"]
       57 GETTABLEKS                       R12 R12 K20 ["Types"]
       59 CALL                             R11 1 1
       60 DUPCLOSURE                       R12 K21 [PROTO_2]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R9
       71 RETURN                           R12 1

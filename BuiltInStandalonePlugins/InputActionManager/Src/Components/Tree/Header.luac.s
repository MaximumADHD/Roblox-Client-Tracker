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
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K2 ["useEventCallback"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U2
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R7 0 1
       23 GETTABLEKS                       R8 R0 K4 ["onChildAdded"]
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 1
       28 NEWTABLE                         R6 2 0
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K5 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K10 [{"LayoutOrder", "onStateChanged", "tag", "testId"}]
       35 MOVE                             R10 R1
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       39 SETTABLEKS                       R4 R9 K7 ["onStateChanged"]
       41 LOADK                            R10 K11 ["columns-tree row align-y-center padding-left-small padding-right-small"]
       42 SETTABLEKS                       R10 R9 K8 ["tag"]
       44 LOADK                            R10 K12 ["header"]
       45 SETTABLEKS                       R10 R9 K9 ["testId"]
       47 DUPTABLE                         R10 K15 [{"TreeLabel", "AddContextButton"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K5 ["createElement"]
       51 GETUPVAL                         R12 4
       52 DUPTABLE                         R13 K17 [{"LayoutOrder", "tag", "Text"}]
       53 MOVE                             R14 R1
       54 CALL                             R14 0 1
       55 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       57 LOADK                            R14 K18 ["text-align-x-left text-body-medium padding-small grow"]
       58 SETTABLEKS                       R14 R13 K8 ["tag"]
       60 LOADK                            R14 K19 ["Context"]
       61 SETTABLEKS                       R14 R13 K16 ["Text"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K13 ["TreeLabel"]
       66 MOVE                             R11 R2
       67 JUMPIFNOT                        R11 ; [+39]
       68 GETUPVAL                         R11 1
       69 GETTABLEKS                       R11 R11 K5 ["createElement"]
       71 GETUPVAL                         R12 3
       72 DUPTABLE                         R13 K20 [{"LayoutOrder", "tag"}]
       73 MOVE                             R14 R1
       74 CALL                             R14 0 1
       75 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       77 LOADK                            R14 K21 ["spacer align-y-center align-x-center padding-small"]
       78 SETTABLEKS                       R14 R13 K8 ["tag"]
       80 DUPTABLE                         R14 K23 [{"IconButton"}]
       81 GETUPVAL                         R15 1
       82 GETTABLEKS                       R15 R15 K5 ["createElement"]
       84 GETUPVAL                         R16 5
       85 DUPTABLE                         R17 K27 [{"icon", "onActivated", "size", "testId"}]
       86 LOADK                            R18 K28 ["plus-small"]
       87 SETTABLEKS                       R18 R17 K24 ["icon"]
       89 SETTABLEKS                       R5 R17 K25 ["onActivated"]
       91 GETUPVAL                         R18 6
       92 GETTABLEKS                       R18 R18 K29 ["Enums"]
       94 GETTABLEKS                       R18 R18 K30 ["IconSize"]
       96 GETTABLEKS                       R18 R18 K31 ["Small"]
       98 SETTABLEKS                       R18 R17 K26 ["size"]
      100 LOADK                            R18 K32 ["header-add"]
      101 SETTABLEKS                       R18 R17 K9 ["testId"]
      103 CALL                             R15 2 1
      104 SETTABLEKS                       R15 R14 K22 ["IconButton"]
      106 CALL                             R11 3 1
      107 SETTABLEKS                       R11 R10 K14 ["AddContextButton"]
      109 CALL                             R7 3 1
      110 SETTABLEKS                       R7 R6 K33 ["TreeHeader"]
      112 GETUPVAL                         R7 1
      113 GETTABLEKS                       R7 R7 K5 ["createElement"]
      115 GETUPVAL                         R8 7
      116 DUPTABLE                         R9 K35 [{"LayoutOrder", "orientation", "tag"}]
      117 MOVE                             R10 R1
      118 CALL                             R10 0 1
      119 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      121 GETUPVAL                         R10 8
      122 GETTABLEKS                       R10 R10 K36 ["Vertical"]
      124 SETTABLEKS                       R10 R9 K34 ["orientation"]
      126 LOADK                            R10 K37 ["auto-y"]
      127 SETTABLEKS                       R10 R9 K8 ["tag"]
      129 CALL                             R7 2 1
      130 SETTABLEKS                       R7 R6 K38 ["Divider"]
      132 GETUPVAL                         R7 9
      133 CALL                             R7 0 3
      134 FORGPREP                         R7
      135 GETUPVAL                         R12 1
      136 GETTABLEKS                       R12 R12 K5 ["createElement"]
      138 GETUPVAL                         R13 4
      139 DUPTABLE                         R14 K17 [{"LayoutOrder", "tag", "Text"}]
      140 MOVE                             R15 R1
      141 CALL                             R15 0 1
      142 SETTABLEKS                       R15 R14 K6 ["LayoutOrder"]
      144 LOADK                            R15 K39 ["columns-input text-align-x-left text-body-medium padding-small"]
      145 SETTABLEKS                       R15 R14 K8 ["tag"]
      147 SETTABLEKS                       R11 R14 K16 ["Text"]
      149 CALL                             R12 2 1
      150 SETTABLE                         R12 R6 R11
      151 FORGLOOP                         R7 2 ; [-17]
      153 GETUPVAL                         R7 1
      154 GETTABLEKS                       R7 R7 K5 ["createElement"]
      156 GETUPVAL                         R8 3
      157 DUPTABLE                         R9 K20 [{"LayoutOrder", "tag"}]
      158 GETTABLEKS                       R10 R0 K6 ["LayoutOrder"]
      160 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
      162 LOADK                            R10 K40 ["tree-row row align-y-center auto-x size-full-0"]
      163 SETTABLEKS                       R10 R9 K8 ["tag"]
      165 MOVE                             R10 R6
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1

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
       53 DUPCLOSURE                       R11 K20 [PROTO_2]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R10
       64 RETURN                           R11 1

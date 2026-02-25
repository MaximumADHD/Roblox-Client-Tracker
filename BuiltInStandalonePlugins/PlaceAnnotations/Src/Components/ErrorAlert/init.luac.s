PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R2 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["useEffect"]
       11 DUPCLOSURE                       R3 K3 [PROTO_0]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R2 R3 K4 ["createElement"]
       18 LOADK                            R3 K5 ["Frame"]
       19 NEWTABLE                         R4 4 0
       21 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       25 GETTABLEKS                       R5 R1 K7 ["AnchorPoint"]
       27 SETTABLEKS                       R5 R4 K7 ["AnchorPoint"]
       29 GETTABLEKS                       R5 R1 K8 ["Position"]
       31 SETTABLEKS                       R5 R4 K8 ["Position"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K9 ["Tag"]
       36 GETUPVAL                         R6 3
       37 LOADK                            R7 K10 ["Component-ErrorAlert"]
       38 GETTABLEKS                       R9 R1 K11 ["IsPopup"]
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADK                            R8 K12 ["Popup"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R8
       44 CALL                             R6 2 1
       45 SETTABLE                         R6 R4 R5
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K0 ["Dictionary"]
       49 GETTABLEKS                       R5 R6 K1 ["join"]
       51 DUPTABLE                         R6 K15 [{"UIPadding", "Wrapper"}]
       52 GETTABLEKS                       R7 R1 K13 ["UIPadding"]
       54 SETTABLEKS                       R7 R6 K13 ["UIPadding"]
       56 GETUPVAL                         R8 2
       57 GETTABLEKS                       R7 R8 K4 ["createElement"]
       59 GETUPVAL                         R8 4
       60 DUPTABLE                         R9 K17 [{"LayoutOrder", "tag"}]
       61 LOADN                            R10 1
       62 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       64 NEWTABLE                         R10 4 0
       66 LOADB                            R11 1
       67 SETTABLEKS                       R11 R10 K18 ["bg-action-subtle row align-x-left align-y-middle gap-small"]
       69 GETTABLEKS                       R12 R1 K11 ["IsPopup"]
       71 NOT                              R11 R12
       72 SETTABLEKS                       R11 R10 K19 ["auto-y grow"]
       74 GETTABLEKS                       R11 R1 K11 ["IsPopup"]
       76 SETTABLEKS                       R11 R10 K20 ["auto-xy"]
       78 SETTABLEKS                       R10 R9 K16 ["tag"]
       80 DUPTABLE                         R10 K24 [{"Icon", "Text", "CloseWrapper"}]
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R11 R12 K4 ["createElement"]
       84 LOADK                            R12 K25 ["ImageLabel"]
       85 NEWTABLE                         R13 2 0
       87 LOADN                            R14 1
       88 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       90 GETUPVAL                         R15 2
       91 GETTABLEKS                       R14 R15 K9 ["Tag"]
       93 LOADK                            R15 K26 ["ErrorIcon"]
       94 SETTABLE                         R15 R13 R14
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K21 ["Icon"]
       98 GETUPVAL                         R12 2
       99 GETTABLEKS                       R11 R12 K4 ["createElement"]
      101 LOADK                            R12 K27 ["TextLabel"]
      102 DUPTABLE                         R13 K28 [{"LayoutOrder", "Text"}]
      103 LOADN                            R14 2
      104 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      106 GETTABLEKS                       R14 R1 K29 ["Message"]
      108 SETTABLEKS                       R14 R13 K22 ["Text"]
      110 CALL                             R11 2 1
      111 SETTABLEKS                       R11 R10 K22 ["Text"]
      113 GETTABLEKS                       R12 R1 K11 ["IsPopup"]
      115 JUMPIFNOT                        R12 ; [+39]
      116 GETTABLEKS                       R12 R1 K30 ["ShowClose"]
      118 JUMPIFNOT                        R12 ; [+36]
      119 GETUPVAL                         R12 2
      120 GETTABLEKS                       R11 R12 K4 ["createElement"]
      122 GETUPVAL                         R12 4
      123 DUPTABLE                         R13 K17 [{"LayoutOrder", "tag"}]
      124 LOADN                            R14 3
      125 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
      127 LOADK                            R14 K31 ["auto-xy bg-action-subtle row align-x-middle align-y-middle"]
      128 SETTABLEKS                       R14 R13 K16 ["tag"]
      130 DUPTABLE                         R14 K33 [{"CloseIcon"}]
      131 GETUPVAL                         R16 2
      132 GETTABLEKS                       R15 R16 K4 ["createElement"]
      134 LOADK                            R16 K34 ["ImageButton"]
      135 NEWTABLE                         R17 2 0
      137 GETUPVAL                         R19 2
      138 GETTABLEKS                       R18 R19 K9 ["Tag"]
      140 LOADK                            R19 K32 ["CloseIcon"]
      141 SETTABLE                         R19 R17 R18
      142 GETUPVAL                         R20 2
      143 GETTABLEKS                       R19 R20 K35 ["Event"]
      145 GETTABLEKS                       R18 R19 K36 ["Activated"]
      147 GETTABLEKS                       R19 R1 K37 ["OnClose"]
      149 SETTABLE                         R19 R17 R18
      150 CALL                             R15 2 1
      151 SETTABLEKS                       R15 R14 K32 ["CloseIcon"]
      153 CALL                             R11 3 1
      154 JUMP                             ; [+1]
      155 LOADNIL                          R11
      156 SETTABLEKS                       R11 R10 K23 ["CloseWrapper"]
      158 CALL                             R7 3 1
      159 SETTABLEKS                       R7 R6 K14 ["Wrapper"]
      161 GETTABLEKS                       R7 R1 K38 ["children"]
      163 JUMPIF                           R7 ; [+2]
      164 NEWTABLE                         R7 0 0
      166 CALL                             R5 2 -1
      167 CALL                             R2 -1 -1
      168 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R5 R2 K10 ["Styling"]
       30 GETTABLEKS                       R4 R5 K11 ["joinTags"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R7 K12 ["Cryo"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 DUPTABLE                         R7 K15 [{"ShowClose"}]
       42 LOADB                            R8 1
       43 SETTABLEKS                       R8 R7 K14 ["ShowClose"]
       45 DUPCLOSURE                       R8 K16 [PROTO_1]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R7
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 RETURN                           R8 1

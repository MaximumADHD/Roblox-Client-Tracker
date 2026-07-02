PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       11 DUPCLOSURE                       R3 K3 [PROTO_0]
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K4 ["createElement"]
       18 LOADK                            R3 K5 ["Frame"]
       19 NEWTABLE                         R4 4 0
       21 GETTABLEKS                       R5 R1 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R5 R4 K6 ["LayoutOrder"]
       25 GETTABLEKS                       R5 R1 K7 ["AnchorPoint"]
       27 SETTABLEKS                       R5 R4 K7 ["AnchorPoint"]
       29 GETTABLEKS                       R5 R1 K8 ["Position"]
       31 SETTABLEKS                       R5 R4 K8 ["Position"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K9 ["Tag"]
       36 GETUPVAL                         R6 3
       37 LOADK                            R7 K10 ["Component-ErrorAlert"]
       38 GETTABLEKS                       R9 R1 K11 ["IsPopup"]
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADK                            R8 K12 ["Popup"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R8
       44 CALL                             R6 2 1
       45 SETTABLE                         R6 R4 R5
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
       49 GETTABLEKS                       R5 R5 K1 ["join"]
       51 DUPTABLE                         R6 K15 [{"UIPadding", "Wrapper"}]
       52 GETTABLEKS                       R7 R1 K13 ["UIPadding"]
       54 SETTABLEKS                       R7 R6 K13 ["UIPadding"]
       56 GETUPVAL                         R7 2
       57 GETTABLEKS                       R7 R7 K4 ["createElement"]
       59 GETUPVAL                         R8 4
       60 DUPTABLE                         R9 K18 [{["LayoutOrder"] = 1, ["tag"]}]
       61 NEWTABLE                         R10 4 0
       63 LOADB                            R11 1
       64 SETTABLEKS                       R11 R10 K19 ["align-y-middle row align-x-left gap-small bg-action-subtle"]
       66 GETTABLEKS                       R12 R1 K11 ["IsPopup"]
       68 NOT                              R11 R12
       69 SETTABLEKS                       R11 R10 K20 ["grow auto-y"]
       71 GETTABLEKS                       R11 R1 K11 ["IsPopup"]
       73 SETTABLEKS                       R11 R10 K21 ["auto-xy"]
       75 SETTABLEKS                       R10 R9 K17 ["tag"]
       77 DUPTABLE                         R10 K25 [{"Icon", "Text", "CloseWrapper"}]
       78 GETUPVAL                         R11 2
       79 GETTABLEKS                       R11 R11 K4 ["createElement"]
       81 LOADK                            R12 K26 ["ImageLabel"]
       82 NEWTABLE                         R13 2 0
       84 LOADN                            R14 1
       85 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       87 GETUPVAL                         R14 2
       88 GETTABLEKS                       R14 R14 K9 ["Tag"]
       90 LOADK                            R15 K27 ["ErrorIcon"]
       91 SETTABLE                         R15 R13 R14
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K22 ["Icon"]
       95 GETUPVAL                         R11 2
       96 GETTABLEKS                       R11 R11 K4 ["createElement"]
       98 LOADK                            R12 K28 ["TextLabel"]
       99 DUPTABLE                         R13 K30 [{["LayoutOrder"] = 2, ["Text"]}]
      100 GETTABLEKS                       R14 R1 K31 ["Message"]
      102 SETTABLEKS                       R14 R13 K23 ["Text"]
      104 CALL                             R11 2 1
      105 SETTABLEKS                       R11 R10 K23 ["Text"]
      107 GETTABLEKS                       R12 R1 K11 ["IsPopup"]
      109 JUMPIFNOT                        R12 ; [+33]
      110 GETTABLEKS                       R12 R1 K32 ["ShowClose"]
      112 JUMPIFNOT                        R12 ; [+30]
      113 GETUPVAL                         R11 2
      114 GETTABLEKS                       R11 R11 K4 ["createElement"]
      116 GETUPVAL                         R12 4
      117 DUPTABLE                         R13 K35 [{["LayoutOrder"] = 3, ["tag"] = "align-x-middle align-y-middle row auto-xy bg-action-subtle"}]
      118 DUPTABLE                         R14 K37 [{"CloseIcon"}]
      119 GETUPVAL                         R15 2
      120 GETTABLEKS                       R15 R15 K4 ["createElement"]
      122 LOADK                            R16 K38 ["ImageButton"]
      123 NEWTABLE                         R17 2 0
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K9 ["Tag"]
      128 LOADK                            R19 K36 ["CloseIcon"]
      129 SETTABLE                         R19 R17 R18
      130 GETUPVAL                         R18 2
      131 GETTABLEKS                       R18 R18 K39 ["Event"]
      133 GETTABLEKS                       R18 R18 K40 ["Activated"]
      135 GETTABLEKS                       R19 R1 K41 ["OnClose"]
      137 SETTABLE                         R19 R17 R18
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K36 ["CloseIcon"]
      141 CALL                             R11 3 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R11
      144 SETTABLEKS                       R11 R10 K24 ["CloseWrapper"]
      146 CALL                             R7 3 1
      147 SETTABLEKS                       R7 R6 K14 ["Wrapper"]
      149 GETTABLEKS                       R7 R1 K42 ["children"]
      151 JUMPIF                           R7 ; [+2]
      152 NEWTABLE                         R7 0 0
      154 CALL                             R5 2 -1
      155 CALL                             R2 -1 -1
      156 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Styling"]
       30 GETTABLEKS                       R4 R4 K11 ["joinTags"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["Cryo"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K13 ["View"]
       41 DUPTABLE                         R7 K16 [{["ShowClose"] = True}]
       42 DUPCLOSURE                       R8 K17 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R6
       48 RETURN                           R8 1

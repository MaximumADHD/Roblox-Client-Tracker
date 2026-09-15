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
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K4 ["fflagAnnotationsColorErrorFixes"]
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETTABLEKS                       R3 R1 K5 ["IsPopup"]
       21 NOT                              R2 R3
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["createElement"]
       25 LOADK                            R4 K7 ["Frame"]
       26 NEWTABLE                         R5 4 0
       28 GETTABLEKS                       R6 R1 K8 ["LayoutOrder"]
       30 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       32 GETTABLEKS                       R6 R1 K9 ["AnchorPoint"]
       34 SETTABLEKS                       R6 R5 K9 ["AnchorPoint"]
       36 GETTABLEKS                       R6 R1 K10 ["Position"]
       38 SETTABLEKS                       R6 R5 K10 ["Position"]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R6 R6 K11 ["Tag"]
       43 GETUPVAL                         R7 4
       44 LOADK                            R8 K12 ["Component-ErrorAlert"]
       45 GETTABLEKS                       R10 R1 K5 ["IsPopup"]
       47 JUMPIFNOT                        R10 ; [+2]
       48 LOADK                            R9 K13 ["Popup"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 CALL                             R7 2 1
       52 SETTABLE                         R7 R5 R6
       53 GETUPVAL                         R6 0
       54 GETTABLEKS                       R6 R6 K0 ["Dictionary"]
       56 GETTABLEKS                       R6 R6 K1 ["join"]
       58 DUPTABLE                         R7 K16 [{"UIPadding", "Wrapper"}]
       59 GETTABLEKS                       R8 R1 K14 ["UIPadding"]
       61 SETTABLEKS                       R8 R7 K14 ["UIPadding"]
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K6 ["createElement"]
       66 GETUPVAL                         R9 5
       67 DUPTABLE                         R10 K19 [{["LayoutOrder"] = 1, ["tag"]}]
       68 NEWTABLE                         R11 4 0
       70 LOADB                            R12 1
       71 SETTABLEKS                       R12 R11 K20 ["row align-x-left gap-small bg-action-subtle"]
       73 GETTABLEKS                       R13 R1 K5 ["IsPopup"]
       75 NOT                              R12 R13
       76 SETTABLEKS                       R12 R11 K21 ["grow auto-y"]
       78 GETTABLEKS                       R12 R1 K5 ["IsPopup"]
       80 SETTABLEKS                       R12 R11 K22 ["auto-xy"]
       82 SETTABLEKS                       R11 R10 K18 ["tag"]
       84 DUPTABLE                         R11 K26 [{"Icon", "Text", "CloseWrapper"}]
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R12 R12 K6 ["createElement"]
       88 LOADK                            R13 K27 ["ImageLabel"]
       89 NEWTABLE                         R14 2 0
       91 LOADN                            R15 1
       92 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       94 GETUPVAL                         R15 2
       95 GETTABLEKS                       R15 R15 K11 ["Tag"]
       97 LOADK                            R16 K28 ["ErrorIcon"]
       98 SETTABLE                         R16 R14 R15
       99 CALL                             R12 2 1
      100 SETTABLEKS                       R12 R11 K23 ["Icon"]
      102 GETUPVAL                         R12 2
      103 GETTABLEKS                       R12 R12 K6 ["createElement"]
      105 LOADK                            R13 K29 ["TextLabel"]
      106 DUPTABLE                         R14 K33 [{["LayoutOrder"] = 2, ["Text"], ["Size"], ["AutomaticSize"]}]
      107 GETTABLEKS                       R15 R1 K34 ["Message"]
      109 SETTABLEKS                       R15 R14 K24 ["Text"]
      111 JUMPIFNOT                        R2 ; [+6]
      112 GETIMPORT                        R15 K37 [UDim2.fromScale]
      114 LOADN                            R16 1
      115 LOADN                            R17 0
      116 CALL                             R15 2 1
      117 JUMP                             ; [+1]
      118 LOADNIL                          R15
      119 SETTABLEKS                       R15 R14 K31 ["Size"]
      121 JUMPIFNOT                        R2 ; [+3]
      122 GETIMPORT                        R15 K40 [Enum.AutomaticSize.Y]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R15
      126 SETTABLEKS                       R15 R14 K32 ["AutomaticSize"]
      128 CALL                             R12 2 1
      129 SETTABLEKS                       R12 R11 K24 ["Text"]
      131 GETTABLEKS                       R13 R1 K5 ["IsPopup"]
      133 JUMPIFNOT                        R13 ; [+33]
      134 GETTABLEKS                       R13 R1 K41 ["ShowClose"]
      136 JUMPIFNOT                        R13 ; [+30]
      137 GETUPVAL                         R12 2
      138 GETTABLEKS                       R12 R12 K6 ["createElement"]
      140 GETUPVAL                         R13 5
      141 DUPTABLE                         R14 K44 [{["LayoutOrder"] = 3, ["tag"] = "row auto-xy bg-action-subtle"}]
      142 DUPTABLE                         R15 K46 [{"CloseIcon"}]
      143 GETUPVAL                         R16 2
      144 GETTABLEKS                       R16 R16 K6 ["createElement"]
      146 LOADK                            R17 K47 ["ImageButton"]
      147 NEWTABLE                         R18 2 0
      149 GETUPVAL                         R19 2
      150 GETTABLEKS                       R19 R19 K11 ["Tag"]
      152 LOADK                            R20 K45 ["CloseIcon"]
      153 SETTABLE                         R20 R18 R19
      154 GETUPVAL                         R19 2
      155 GETTABLEKS                       R19 R19 K48 ["Event"]
      157 GETTABLEKS                       R19 R19 K49 ["Activated"]
      159 GETTABLEKS                       R20 R1 K50 ["OnClose"]
      161 SETTABLE                         R20 R18 R19
      162 CALL                             R16 2 1
      163 SETTABLEKS                       R16 R15 K45 ["CloseIcon"]
      165 CALL                             R12 3 1
      166 JUMP                             ; [+1]
      167 LOADNIL                          R12
      168 SETTABLEKS                       R12 R11 K25 ["CloseWrapper"]
      170 CALL                             R8 3 1
      171 SETTABLEKS                       R8 R7 K15 ["Wrapper"]
      173 GETTABLEKS                       R8 R1 K51 ["children"]
      175 JUMPIF                           R8 ; [+2]
      176 NEWTABLE                         R8 0 0
      178 CALL                             R6 2 -1
      179 CALL                             R3 -1 -1
      180 RETURN                           R3 -1

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
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Bin"]
       43 GETTABLEKS                       R7 R7 K14 ["Common"]
       45 GETTABLEKS                       R7 R7 K15 ["defineLuaFlags"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R3 K16 ["View"]
       50 DUPTABLE                         R8 K19 [{["ShowClose"] = True}]
       51 DUPCLOSURE                       R9 K20 [PROTO_1]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 RETURN                           R9 1

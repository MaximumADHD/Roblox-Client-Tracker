PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQ                         R1 R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ScopeInfo"]
        3 JUMPIFNOT                        R0 ; [+24]
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R1 1
        8 JUMPIFEQKS                       R1 K1 [""] ; [+11]
       10 GETUPVAL                         R1 1
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K0 ["ScopeInfo"]
       15 NAMECALL                         R2 R2 K2 ["getThumbnailUriForScope"]
       17 CALL                             R2 2 1
       18 JUMPIFEQ                         R1 R2 ; [+9]
       20 GETUPVAL                         R1 3
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["ScopeInfo"]
       24 MOVE                             R4 R0
       25 NAMECALL                         R1 R1 K3 ["getThumbnailForScopeAsync"]
       27 CALL                             R1 3 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 [""]
        6 CALL                             R2 1 2
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R3
       11 CAPTURE                          VAL R1
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       15 MOVE                             R6 R4
       16 NEWTABLE                         R7 0 1
       18 GETTABLEKS                       R8 R0 K3 ["ScopeInfo"]
       20 SETLIST                          R7 R8 1 [1]
       22 CALL                             R5 2 0
       23 LOADK                            R5 K1 [""]
       24 GETTABLEKS                       R6 R0 K4 ["Text"]
       26 JUMPIFNOT                        R6 ; [+3]
       27 GETTABLEKS                       R5 R0 K4 ["Text"]
       29 JUMP                             ; [+22]
       30 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       32 JUMPIFNOT                        R6 ; [+19]
       33 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       35 GETTABLEKS                       R6 R6 K5 ["Name"]
       37 JUMPIFNOT                        R6 ; [+5]
       38 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       40 GETTABLEKS                       R5 R6 K5 ["Name"]
       42 JUMP                             ; [+9]
       43 GETTABLEKS                       R7 R0 K3 ["ScopeInfo"]
       45 GETTABLEKS                       R7 R7 K6 ["Id"]
       47 FASTCALL1                        TOSTRING R7 ; [+2]
       48 GETIMPORT                        R6 K8 [tostring]
       50 CALL                             R6 1 1
       51 MOVE                             R5 R6
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R6 R6 K9 ["createElement"]
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R7 R7 K10 ["View"]
       58 DUPTABLE                         R8 K13 [{["tag"] = "CheckboxRowContents row align-x-left align-y-center"}]
       59 DUPTABLE                         R9 K16 [{"Icon", "TextLabel"}]
       60 GETTABLEKS                       R11 R0 K3 ["ScopeInfo"]
       62 JUMPIFNOT                        R11 ; [+11]
       63 GETUPVAL                         R10 2
       64 GETTABLEKS                       R10 R10 K9 ["createElement"]
       66 GETUPVAL                         R11 3
       67 GETTABLEKS                       R11 R11 K17 ["Image"]
       69 DUPTABLE                         R12 K21 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-400 radius-circle"}]
       70 SETTABLEKS                       R2 R12 K17 ["Image"]
       72 CALL                             R10 2 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 SETTABLEKS                       R10 R9 K14 ["Icon"]
       77 GETUPVAL                         R10 2
       78 GETTABLEKS                       R10 R10 K9 ["createElement"]
       80 GETUPVAL                         R11 3
       81 GETTABLEKS                       R11 R11 K4 ["Text"]
       83 DUPTABLE                         R12 K24 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y padding-small text-label-small text-align-x-left text-truncate-end"}]
       84 SETTABLEKS                       R5 R12 K4 ["Text"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K15 ["TextLabel"]
       89 CALL                             R6 3 1
       90 GETUPVAL                         R7 2
       91 GETTABLEKS                       R7 R7 K9 ["createElement"]
       93 GETUPVAL                         R8 3
       94 GETTABLEKS                       R8 R8 K10 ["View"]
       96 DUPTABLE                         R9 K26 [{["tag"] = "position-center-right anchor-center-right size-0 auto-xy"}]
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R10 R10 K9 ["createElement"]
      100 GETUPVAL                         R11 3
      101 GETTABLEKS                       R11 R11 K27 ["Checkbox"]
      103 DUPTABLE                         R12 K32 [{["isChecked"], ["onActivated"], ["size"], ["label"] = ""}]
      104 GETTABLEKS                       R13 R0 K33 ["Checked"]
      106 SETTABLEKS                       R13 R12 K28 ["isChecked"]
      108 GETTABLEKS                       R13 R0 K34 ["OnChecked"]
      110 SETTABLEKS                       R13 R12 K29 ["onActivated"]
      112 GETUPVAL                         R13 3
      113 GETTABLEKS                       R13 R13 K35 ["Enums"]
      115 GETTABLEKS                       R13 R13 K36 ["InputSize"]
      117 GETTABLEKS                       R13 R13 K37 ["XSmall"]
      119 SETTABLEKS                       R13 R12 K30 ["size"]
      121 CALL                             R10 2 -1
      122 CALL                             R7 -1 1
      123 GETUPVAL                         R8 2
      124 GETTABLEKS                       R8 R8 K9 ["createElement"]
      126 GETUPVAL                         R9 3
      127 GETTABLEKS                       R9 R9 K10 ["View"]
      129 DUPTABLE                         R10 K40 [{["LayoutOrder"], ["Position"], ["tag"] = "CheckboxRow size-full-0 auto-y padding-right-small"}]
      130 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
      132 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      134 GETTABLEKS                       R11 R0 K38 ["Position"]
      136 SETTABLEKS                       R11 R10 K38 ["Position"]
      138 DUPTABLE                         R11 K42 [{"Contents", "Checkbox"}]
      139 SETTABLEKS                       R6 R11 K41 ["Contents"]
      141 SETTABLEKS                       R7 R11 K27 ["Checkbox"]
      143 CALL                             R8 3 -1
      144 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["useState"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Networking"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Types"]
       36 CALL                             R5 1 1
       37 DUPCLOSURE                       R6 K13 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 RETURN                           R6 1

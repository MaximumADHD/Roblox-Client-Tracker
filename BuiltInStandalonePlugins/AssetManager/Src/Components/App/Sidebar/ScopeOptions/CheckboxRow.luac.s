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
        3 JUMPIFNOT                        R0 ; [+48]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["ScopeInfo"]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 GETUPVAL                         R2 3
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+22]
       13 GETUPVAL                         R2 1
       14 JUMPIFEQKS                       R2 K1 [""] ; [+11]
       16 GETUPVAL                         R2 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K2 ["Utils"]
       20 GETTABLEKS                       R3 R3 K3 ["getScopeThumbnailUri"]
       22 MOVE                             R4 R0
       23 CALL                             R3 1 1
       24 JUMPIFEQ                         R2 R3 ; [+27]
       26 GETUPVAL                         R2 4
       27 GETTABLEKS                       R2 R2 K2 ["Utils"]
       29 GETTABLEKS                       R2 R2 K4 ["fetchScopeThumbnailAsync"]
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 1
       36 JUMPIFEQKS                       R2 K1 [""] ; [+9]
       38 GETUPVAL                         R2 1
       39 GETUPVAL                         R3 5
       40 MOVE                             R5 R0
       41 NAMECALL                         R3 R3 K5 ["getThumbnailUriForScope"]
       43 CALL                             R3 2 1
       44 JUMPIFEQ                         R2 R3 ; [+7]
       46 GETUPVAL                         R2 5
       47 MOVE                             R4 R0
       48 MOVE                             R5 R1
       49 NAMECALL                         R2 R2 K6 ["getThumbnailForScopeAsync"]
       51 CALL                             R2 3 0
       52 RETURN                           R0 0

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
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       17 MOVE                             R6 R4
       18 NEWTABLE                         R7 0 1
       20 GETTABLEKS                       R8 R0 K3 ["ScopeInfo"]
       22 SETLIST                          R7 R8 1 [1]
       24 CALL                             R5 2 0
       25 LOADK                            R5 K1 [""]
       26 GETTABLEKS                       R6 R0 K4 ["Text"]
       28 JUMPIFNOT                        R6 ; [+3]
       29 GETTABLEKS                       R5 R0 K4 ["Text"]
       31 JUMP                             ; [+22]
       32 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       34 JUMPIFNOT                        R6 ; [+19]
       35 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       37 GETTABLEKS                       R6 R6 K5 ["Name"]
       39 JUMPIFNOT                        R6 ; [+5]
       40 GETTABLEKS                       R6 R0 K3 ["ScopeInfo"]
       42 GETTABLEKS                       R5 R6 K5 ["Name"]
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R7 R0 K3 ["ScopeInfo"]
       47 GETTABLEKS                       R7 R7 K6 ["Id"]
       49 FASTCALL1                        TOSTRING R7 ; [+2]
       50 GETIMPORT                        R6 K8 [tostring]
       52 CALL                             R6 1 1
       53 MOVE                             R5 R6
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R6 R6 K9 ["createElement"]
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R7 R7 K10 ["View"]
       60 DUPTABLE                         R8 K13 [{["tag"] = "CheckboxRowContents row align-x-left align-y-center"}]
       61 DUPTABLE                         R9 K16 [{"Icon", "TextLabel"}]
       62 GETTABLEKS                       R11 R0 K3 ["ScopeInfo"]
       64 JUMPIFNOT                        R11 ; [+11]
       65 GETUPVAL                         R10 4
       66 GETTABLEKS                       R10 R10 K9 ["createElement"]
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R11 R11 K17 ["Image"]
       71 DUPTABLE                         R12 K21 [{["LayoutOrder"] = 1, ["Image"], ["tag"] = "size-400 radius-circle"}]
       72 SETTABLEKS                       R2 R12 K17 ["Image"]
       74 CALL                             R10 2 1
       75 JUMP                             ; [+1]
       76 LOADNIL                          R10
       77 SETTABLEKS                       R10 R9 K14 ["Icon"]
       79 GETUPVAL                         R10 4
       80 GETTABLEKS                       R10 R10 K9 ["createElement"]
       82 GETUPVAL                         R11 5
       83 GETTABLEKS                       R11 R11 K4 ["Text"]
       85 DUPTABLE                         R12 K24 [{["LayoutOrder"] = 2, ["Text"], ["tag"] = "size-full-0 auto-y padding-x-small text-label-small text-align-x-left text-truncate-split"}]
       86 SETTABLEKS                       R5 R12 K4 ["Text"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K15 ["TextLabel"]
       91 CALL                             R6 3 1
       92 GETUPVAL                         R7 4
       93 GETTABLEKS                       R7 R7 K9 ["createElement"]
       95 GETUPVAL                         R8 5
       96 GETTABLEKS                       R8 R8 K10 ["View"]
       98 DUPTABLE                         R9 K26 [{["tag"] = "position-center-right anchor-center-right size-0 auto-xy"}]
       99 GETUPVAL                         R10 4
      100 GETTABLEKS                       R10 R10 K9 ["createElement"]
      102 GETUPVAL                         R11 5
      103 GETTABLEKS                       R11 R11 K27 ["Checkbox"]
      105 DUPTABLE                         R12 K32 [{["isChecked"], ["onActivated"], ["size"], ["label"] = ""}]
      106 GETTABLEKS                       R13 R0 K33 ["Checked"]
      108 SETTABLEKS                       R13 R12 K28 ["isChecked"]
      110 GETTABLEKS                       R13 R0 K34 ["OnChecked"]
      112 SETTABLEKS                       R13 R12 K29 ["onActivated"]
      114 GETUPVAL                         R13 5
      115 GETTABLEKS                       R13 R13 K35 ["Enums"]
      117 GETTABLEKS                       R13 R13 K36 ["InputSize"]
      119 GETTABLEKS                       R13 R13 K37 ["XSmall"]
      121 SETTABLEKS                       R13 R12 K30 ["size"]
      123 CALL                             R10 2 -1
      124 CALL                             R7 -1 1
      125 GETUPVAL                         R8 4
      126 GETTABLEKS                       R8 R8 K9 ["createElement"]
      128 GETUPVAL                         R9 5
      129 GETTABLEKS                       R9 R9 K10 ["View"]
      131 DUPTABLE                         R10 K39 [{["LayoutOrder"], ["tag"] = "CheckboxRow size-full-0 auto-y padding-right-small"}]
      132 GETTABLEKS                       R11 R0 K18 ["LayoutOrder"]
      134 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      136 DUPTABLE                         R11 K41 [{"Contents", "Checkbox"}]
      137 SETTABLEKS                       R6 R11 K40 ["Contents"]
      139 SETTABLEKS                       R7 R11 K27 ["Checkbox"]
      141 CALL                             R8 3 -1
      142 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["useState"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Networking"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Src"]
       41 GETTABLEKS                       R7 R7 K13 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R0 K11 ["Src"]
       48 GETTABLEKS                       R8 R8 K14 ["Flags"]
       50 GETTABLEKS                       R8 R8 K15 ["getFFlagAmrUseAssetManagementNetworking"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K16 [PROTO_2]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 RETURN                           R8 1

PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideConfirmationDialog"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+3]
        7 GETUPVAL                         R0 1
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R2 K2 ["restoreDefaults"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["createElement"]
       14 LOADK                            R5 K4 ["TextButton"]
       15 NEWTABLE                         R6 8 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R7 R7 K5 ["Tag"]
       20 GETUPVAL                         R8 3
       21 LOADK                            R9 K6 ["Component-ResetMappingsConfirmationDialog"]
       22 LOADK                            R10 K7 ["data-testid=Component-ResetMappingsConfirmationDialog"]
       23 LOADK                            R11 K8 ["CX-Invisible"]
       24 LOADK                            R12 K9 ["X-Fill"]
       25 CALL                             R8 4 1
       26 SETTABLE                         R8 R6 R7
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K10 ["Active"]
       30 GETUPVAL                         R7 4
       31 NAMECALL                         R7 R7 K11 ["getNextOrder"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       36 LOADK                            R7 K13 [""]
       37 SETTABLEKS                       R7 R6 K14 ["Text"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K15 ["Event"]
       42 GETTABLEKS                       R7 R7 K16 ["Activated"]
       44 GETTABLEKS                       R8 R0 K17 ["hideConfirmationDialog"]
       46 SETTABLE                         R8 R6 R7
       47 DUPTABLE                         R7 K19 [{"DialogContents"}]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K3 ["createElement"]
       51 LOADK                            R9 K20 ["Frame"]
       52 DUPTABLE                         R10 K22 [{["Name"] = "DialogContents", ["LayoutOrder"]}]
       53 GETUPVAL                         R11 4
       54 NAMECALL                         R11 R11 K11 ["getNextOrder"]
       56 CALL                             R11 1 1
       57 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       59 DUPTABLE                         R11 K25 [{"IconAndTextContainer", "Buttons"}]
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R12 R12 K3 ["createElement"]
       63 LOADK                            R13 K20 ["Frame"]
       64 DUPTABLE                         R14 K26 [{["Name"] = "IconAndTextContainer", ["LayoutOrder"]}]
       65 GETUPVAL                         R15 4
       66 NAMECALL                         R15 R15 K11 ["getNextOrder"]
       68 CALL                             R15 1 1
       69 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
       71 DUPTABLE                         R15 K29 [{"WarningIcon", "ConfirmationText"}]
       72 GETUPVAL                         R16 1
       73 GETTABLEKS                       R16 R16 K3 ["createElement"]
       75 LOADK                            R17 K30 ["ImageLabel"]
       76 DUPTABLE                         R18 K31 [{["Name"] = "WarningIcon", ["LayoutOrder"]}]
       77 GETUPVAL                         R19 4
       78 NAMECALL                         R19 R19 K11 ["getNextOrder"]
       80 CALL                             R19 1 1
       81 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K27 ["WarningIcon"]
       86 GETUPVAL                         R16 1
       87 GETTABLEKS                       R16 R16 K3 ["createElement"]
       89 LOADK                            R17 K32 ["TextLabel"]
       90 DUPTABLE                         R18 K33 [{["Name"] = "ConfirmationText", ["Text"], ["LayoutOrder"]}]
       91 LOADK                            R21 K34 ["ResetMappingsConfirmationDialog"]
       92 LOADK                            R22 K35 ["RestoreDefaultsConfirmation"]
       93 NAMECALL                         R19 R1 K36 ["getText"]
       95 CALL                             R19 3 1
       96 SETTABLEKS                       R19 R18 K14 ["Text"]
       98 GETUPVAL                         R19 4
       99 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      101 CALL                             R19 1 1
      102 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      104 CALL                             R16 2 1
      105 SETTABLEKS                       R16 R15 K28 ["ConfirmationText"]
      107 CALL                             R12 3 1
      108 SETTABLEKS                       R12 R11 K23 ["IconAndTextContainer"]
      110 GETUPVAL                         R12 1
      111 GETTABLEKS                       R12 R12 K3 ["createElement"]
      113 LOADK                            R13 K20 ["Frame"]
      114 DUPTABLE                         R14 K38 [{["Name"] = "ButtonsContainer", ["LayoutOrder"]}]
      115 GETUPVAL                         R15 4
      116 NAMECALL                         R15 R15 K11 ["getNextOrder"]
      118 CALL                             R15 1 1
      119 SETTABLEKS                       R15 R14 K12 ["LayoutOrder"]
      121 DUPTABLE                         R15 K41 [{"NoButton", "YesButton"}]
      122 GETUPVAL                         R16 1
      123 GETTABLEKS                       R16 R16 K3 ["createElement"]
      125 LOADK                            R17 K4 ["TextButton"]
      126 NEWTABLE                         R18 4 0
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R19 R19 K5 ["Tag"]
      131 LOADK                            R20 K42 ["Button HeaderButton Secondary"]
      132 SETTABLE                         R20 R18 R19
      133 LOADK                            R21 K34 ["ResetMappingsConfirmationDialog"]
      134 LOADK                            R22 K43 ["No"]
      135 NAMECALL                         R19 R1 K36 ["getText"]
      137 CALL                             R19 3 1
      138 SETTABLEKS                       R19 R18 K14 ["Text"]
      140 GETUPVAL                         R19 4
      141 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      143 CALL                             R19 1 1
      144 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      146 GETUPVAL                         R19 1
      147 GETTABLEKS                       R19 R19 K15 ["Event"]
      149 GETTABLEKS                       R19 R19 K16 ["Activated"]
      151 GETTABLEKS                       R20 R0 K17 ["hideConfirmationDialog"]
      153 SETTABLE                         R20 R18 R19
      154 CALL                             R16 2 1
      155 SETTABLEKS                       R16 R15 K39 ["NoButton"]
      157 GETUPVAL                         R16 1
      158 GETTABLEKS                       R16 R16 K3 ["createElement"]
      160 LOADK                            R17 K4 ["TextButton"]
      161 NEWTABLE                         R18 4 0
      163 GETUPVAL                         R19 1
      164 GETTABLEKS                       R19 R19 K5 ["Tag"]
      166 LOADK                            R20 K44 ["Button HeaderButton Primary"]
      167 SETTABLE                         R20 R18 R19
      168 LOADK                            R21 K34 ["ResetMappingsConfirmationDialog"]
      169 LOADK                            R22 K45 ["Yes"]
      170 NAMECALL                         R19 R1 K36 ["getText"]
      172 CALL                             R19 3 1
      173 SETTABLEKS                       R19 R18 K14 ["Text"]
      175 GETUPVAL                         R19 4
      176 NAMECALL                         R19 R19 K11 ["getNextOrder"]
      178 CALL                             R19 1 1
      179 SETTABLEKS                       R19 R18 K12 ["LayoutOrder"]
      181 GETUPVAL                         R19 1
      182 GETTABLEKS                       R19 R19 K15 ["Event"]
      184 GETTABLEKS                       R19 R19 K16 ["Activated"]
      186 NEWCLOSURE                       R20 P0
      187 CAPTURE                          VAL R0
      188 CAPTURE                          VAL R3
      189 SETTABLE                         R20 R18 R19
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K40 ["YesButton"]
      193 CALL                             R12 3 1
      194 SETTABLEKS                       R12 R11 K24 ["Buttons"]
      196 CALL                             R8 3 1
      197 SETTABLEKS                       R8 R7 K18 ["DialogContents"]
      199 CALL                             R4 3 -1
      200 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETTABLEKS                       R4 R2 K11 ["Util"]
       27 GETTABLEKS                       R4 R4 K12 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R5 R4 K13 ["new"]
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R6 R2 K14 ["Styling"]
       34 GETTABLEKS                       R6 R6 K15 ["joinTags"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K16 ["Src"]
       40 GETTABLEKS                       R8 R8 K11 ["Util"]
       42 GETTABLEKS                       R8 R8 K17 ["MappingsActionsContext"]
       44 CALL                             R7 1 1
       45 DUPCLOSURE                       R8 K18 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 GETTABLEKS                       R9 R1 K19 ["memo"]
       53 MOVE                             R10 R8
       54 CALL                             R9 1 -1
       55 RETURN                           R9 -1

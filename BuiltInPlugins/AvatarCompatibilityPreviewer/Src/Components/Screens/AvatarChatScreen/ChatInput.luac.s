PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isGenerating"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["trimSpaces"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 LENGTH                           R1 R0
       11 JUMPIFNOTEQKN                    R1 K2 [0] ; [+2]
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 3
       15 LOADK                            R2 K3 [""]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K4 ["onSubmit"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useState"]
       11 LOADK                            R4 K3 [""]
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["useEventCallback"]
       16 NEWCLOSURE                       R6 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R4
       21 CALL                             R5 1 1
       22 LOADB                            R6 0
       23 LENGTH                           R7 R3
       24 LOADN                            R8 0
       25 JUMPIFNOTLT                      R8 R7 ; [+4]
       27 GETTABLEKS                       R7 R0 K5 ["isGenerating"]
       29 NOT                              R6 R7
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K6 ["createElement"]
       33 GETUPVAL                         R8 4
       34 DUPTABLE                         R9 K10 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-y-small padding-left-large padding-right-small stroke-emphasis radius-large", ["LayoutOrder"]}]
       35 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       37 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       39 DUPTABLE                         R10 K13 [{"InputWrap", "Action"}]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R11 R11 K6 ["createElement"]
       43 GETUPVAL                         R12 4
       44 DUPTABLE                         R13 K15 [{["tag"] = "grow auto-y", ["LayoutOrder"]}]
       45 MOVE                             R14 R2
       46 CALL                             R14 0 1
       47 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       49 DUPTABLE                         R14 K17 [{"Input"}]
       50 GETUPVAL                         R15 2
       51 GETTABLEKS                       R15 R15 K6 ["createElement"]
       53 GETUPVAL                         R16 5
       54 DUPTABLE                         R17 K22 [{"text", "placeholder", "onChanged", "onReturnPressed"}]
       55 SETTABLEKS                       R3 R17 K18 ["text"]
       57 GETTABLEKS                       R19 R0 K5 ["isGenerating"]
       59 JUMPIFNOT                        R19 ; [+6]
       60 LOADK                            R20 K23 ["AvatarChatScreen"]
       61 LOADK                            R21 K24 ["InputPlaceholderGenerating"]
       62 NAMECALL                         R18 R1 K25 ["getText"]
       64 CALL                             R18 3 1
       65 JUMP                             ; [+5]
       66 LOADK                            R20 K23 ["AvatarChatScreen"]
       67 LOADK                            R21 K26 ["InputPlaceholder"]
       68 NAMECALL                         R18 R1 K25 ["getText"]
       70 CALL                             R18 3 1
       71 SETTABLEKS                       R18 R17 K19 ["placeholder"]
       73 SETTABLEKS                       R4 R17 K20 ["onChanged"]
       75 SETTABLEKS                       R5 R17 K21 ["onReturnPressed"]
       77 CALL                             R15 2 1
       78 SETTABLEKS                       R15 R14 K16 ["Input"]
       80 CALL                             R11 3 1
       81 SETTABLEKS                       R11 R10 K11 ["InputWrap"]
       83 GETTABLEKS                       R12 R0 K5 ["isGenerating"]
       85 JUMPIFNOT                        R12 ; [+30]
       86 GETUPVAL                         R11 2
       87 GETTABLEKS                       R11 R11 K6 ["createElement"]
       89 GETUPVAL                         R12 6
       90 DUPTABLE                         R13 K33 [{["LayoutOrder"], ["icon"], ["isCircular"] = True, ["size"], ["variant"], ["onActivated"]}]
       91 MOVE                             R14 R2
       92 CALL                             R14 0 1
       93 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
       95 GETUPVAL                         R14 7
       96 GETTABLEKS                       R14 R14 K34 ["StopSmall"]
       98 SETTABLEKS                       R14 R13 K27 ["icon"]
      100 GETUPVAL                         R14 8
      101 GETTABLEKS                       R14 R14 K35 ["XSmall"]
      103 SETTABLEKS                       R14 R13 K30 ["size"]
      105 GETUPVAL                         R14 9
      106 GETTABLEKS                       R14 R14 K36 ["Standard"]
      108 SETTABLEKS                       R14 R13 K31 ["variant"]
      110 GETTABLEKS                       R14 R0 K37 ["onCancel"]
      112 SETTABLEKS                       R14 R13 K32 ["onActivated"]
      114 CALL                             R11 2 1
      115 JUMP                             ; [+48]
      116 GETUPVAL                         R11 2
      117 GETTABLEKS                       R11 R11 K6 ["createElement"]
      119 GETUPVAL                         R12 4
      120 DUPTABLE                         R13 K39 [{["LayoutOrder"], ["tag"] = "auto-xy"}]
      121 MOVE                             R14 R2
      122 CALL                             R14 0 1
      123 SETTABLEKS                       R14 R13 K9 ["LayoutOrder"]
      125 DUPTABLE                         R14 K41 [{"Rotated"}]
      126 GETUPVAL                         R15 2
      127 GETTABLEKS                       R15 R15 K6 ["createElement"]
      129 GETUPVAL                         R16 4
      130 DUPTABLE                         R17 K44 [{["tag"] = "auto-xy", ["Rotation"] = -90}]
      131 DUPTABLE                         R18 K46 [{"Submit"}]
      132 GETUPVAL                         R19 2
      133 GETTABLEKS                       R19 R19 K6 ["createElement"]
      135 GETUPVAL                         R20 6
      136 DUPTABLE                         R21 K51 [{["icon"] = "icons/navigation/seeAllArrow_small", ["isCircular"] = True, ["size"], ["variant"], ["isDisabled"], ["onActivated"], ["testId"] = "avatar-chat-send"}]
      137 GETUPVAL                         R22 8
      138 GETTABLEKS                       R22 R22 K35 ["XSmall"]
      140 SETTABLEKS                       R22 R21 K30 ["size"]
      142 JUMPIFNOT                        R6 ; [+4]
      143 GETUPVAL                         R22 9
      144 GETTABLEKS                       R22 R22 K52 ["Emphasis"]
      146 JUMP                             ; [+3]
      147 GETUPVAL                         R22 9
      148 GETTABLEKS                       R22 R22 K36 ["Standard"]
      150 SETTABLEKS                       R22 R21 K31 ["variant"]
      152 NOT                              R22 R6
      153 SETTABLEKS                       R22 R21 K48 ["isDisabled"]
      155 SETTABLEKS                       R5 R21 K32 ["onActivated"]
      157 CALL                             R19 2 1
      158 SETTABLEKS                       R19 R18 K45 ["Submit"]
      160 CALL                             R15 3 1
      161 SETTABLEKS                       R15 R14 K40 ["Rotated"]
      163 CALL                             R11 3 1
      164 SETTABLEKS                       R11 R10 K12 ["Action"]
      166 CALL                             R7 3 -1
      167 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Enums"]
       37 GETTABLEKS                       R5 R5 K12 ["ButtonVariant"]
       39 GETTABLEKS                       R6 R4 K11 ["Enums"]
       41 GETTABLEKS                       R6 R6 K13 ["IconName"]
       43 GETTABLEKS                       R7 R4 K11 ["Enums"]
       45 GETTABLEKS                       R7 R7 K14 ["InputSize"]
       47 GETTABLEKS                       R8 R4 K15 ["IconButton"]
       49 GETTABLEKS                       R9 R4 K16 ["View"]
       51 GETIMPORT                        R10 K5 [require]
       53 GETTABLEKS                       R11 R0 K17 ["Src"]
       55 GETTABLEKS                       R11 R11 K18 ["Components"]
       57 GETTABLEKS                       R11 R11 K19 ["Screens"]
       59 GETTABLEKS                       R11 R11 K20 ["AvatarChatScreen"]
       61 GETTABLEKS                       R11 R11 K21 ["ExpandingTextBox"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K17 ["Src"]
       68 GETTABLEKS                       R12 R12 K22 ["Util"]
       70 GETTABLEKS                       R12 R12 K23 ["StringUtil"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R1 K24 ["ContextServices"]
       75 GETTABLEKS                       R12 R12 K25 ["Localization"]
       77 DUPCLOSURE                       R13 K26 [PROTO_1]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R5
       88 RETURN                           R13 1

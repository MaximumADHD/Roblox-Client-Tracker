PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["Status"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETTABLEKS                       R4 R2 K2 ["IsAlert"]
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADK                            R3 K3 ["content-system-alert"]
       15 JUMP                             ; [+1]
       16 LOADK                            R3 K4 ["content-emphasis"]
       17 GETTABLEKS                       R5 R2 K2 ["IsAlert"]
       19 JUMPIFNOT                        R5 ; [+2]
       20 LOADK                            R4 K3 ["content-system-alert"]
       21 JUMP                             ; [+1]
       22 LOADK                            R4 K5 ["content-default"]
       23 LOADB                            R5 0
       24 GETTABLEKS                       R6 R2 K6 ["HasLearnMore"]
       26 JUMPIFNOTEQKB                    R6 TRUE ; [+7]
       28 GETTABLEKS                       R6 R0 K7 ["DocsLink"]
       30 JUMPIFNOTEQKS                    R6 K8 [""] ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K9 ["createElement"]
       37 GETUPVAL                         R7 3
       38 DUPTABLE                         R8 K13 [{["tag"] = "col gap-small auto-y padding-large", ["Size"]}]
       39 GETIMPORT                        R9 K16 [UDim2.fromOffset]
       41 LOADN                            R10 320
       42 LOADN                            R11 0
       43 CALL                             R9 2 1
       44 SETTABLEKS                       R9 R8 K12 ["Size"]
       46 DUPTABLE                         R9 K20 [{"Title", "Message", "Tip"}]
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R10 R10 K9 ["createElement"]
       50 GETUPVAL                         R11 4
       51 DUPTABLE                         R12 K24 [{["LayoutOrder"] = 1, ["tag"], ["Text"]}]
       52 LOADK                            R13 K25 ["size-full-0 auto-y text-title-medium text-wrap text-align-x-left %*"]
       53 MOVE                             R15 R3
       54 NAMECALL                         R13 R13 K26 ["format"]
       56 CALL                             R13 2 1
       57 SETTABLEKS                       R13 R12 K10 ["tag"]
       59 LOADK                            R15 K27 ["Popup"]
       60 GETTABLEKS                       R16 R2 K17 ["Title"]
       62 NAMECALL                         R13 R1 K28 ["getText"]
       64 CALL                             R13 3 1
       65 SETTABLEKS                       R13 R12 K23 ["Text"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K17 ["Title"]
       70 GETTABLEKS                       R11 R2 K18 ["Message"]
       72 JUMPIFNOT                        R11 ; [+22]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R10 R10 K9 ["createElement"]
       76 GETUPVAL                         R11 4
       77 DUPTABLE                         R12 K30 [{["LayoutOrder"] = 2, ["tag"], ["Text"]}]
       78 LOADK                            R13 K31 ["size-full-0 auto-y text-body-medium text-wrap text-align-x-left %*"]
       79 MOVE                             R15 R4
       80 NAMECALL                         R13 R13 K26 ["format"]
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K10 ["tag"]
       85 LOADK                            R15 K27 ["Popup"]
       86 GETTABLEKS                       R16 R2 K18 ["Message"]
       88 NAMECALL                         R13 R1 K28 ["getText"]
       90 CALL                             R13 3 1
       91 SETTABLEKS                       R13 R12 K23 ["Text"]
       93 CALL                             R10 2 1
       94 JUMP                             ; [+1]
       95 LOADNIL                          R10
       96 SETTABLEKS                       R10 R9 K18 ["Message"]
       98 GETTABLEKS                       R11 R2 K19 ["Tip"]
      100 JUMPIFNOT                        R11 ; [+53]
      101 GETUPVAL                         R10 2
      102 GETTABLEKS                       R10 R10 K9 ["createElement"]
      104 GETUPVAL                         R11 3
      105 DUPTABLE                         R12 K34 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-small radius-small bg-shift-200"}]
      106 DUPTABLE                         R13 K37 [{"TipText", "LearnMore"}]
      107 GETUPVAL                         R14 2
      108 GETTABLEKS                       R14 R14 K9 ["createElement"]
      110 GETUPVAL                         R15 4
      111 DUPTABLE                         R16 K39 [{["LayoutOrder"] = 1, ["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-default", ["Text"]}]
      112 LOADK                            R19 K27 ["Popup"]
      113 GETTABLEKS                       R20 R2 K19 ["Tip"]
      115 NAMECALL                         R17 R1 K28 ["getText"]
      117 CALL                             R17 3 1
      118 SETTABLEKS                       R17 R16 K23 ["Text"]
      120 CALL                             R14 2 1
      121 SETTABLEKS                       R14 R13 K35 ["TipText"]
      123 JUMPIFNOT                        R5 ; [+25]
      124 GETUPVAL                         R14 2
      125 GETTABLEKS                       R14 R14 K9 ["createElement"]
      127 GETUPVAL                         R15 5
      128 DUPTABLE                         R16 K43 [{["LayoutOrder"] = 2, ["text"], ["size"], ["onActivated"]}]
      129 LOADK                            R19 K27 ["Popup"]
      130 LOADK                            R20 K36 ["LearnMore"]
      131 NAMECALL                         R17 R1 K28 ["getText"]
      133 CALL                             R17 3 1
      134 SETTABLEKS                       R17 R16 K40 ["text"]
      136 GETUPVAL                         R17 6
      137 GETTABLEKS                       R17 R17 K44 ["InputSize"]
      139 GETTABLEKS                       R17 R17 K45 ["Small"]
      141 SETTABLEKS                       R17 R16 K41 ["size"]
      143 GETTABLEKS                       R17 R0 K46 ["onLearnMoreActivated"]
      145 SETTABLEKS                       R17 R16 K42 ["onActivated"]
      147 CALL                             R14 2 1
      148 JUMP                             ; [+1]
      149 LOADNIL                          R14
      150 SETTABLEKS                       R14 R13 K36 ["LearnMore"]
      152 CALL                             R10 3 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R10
      155 SETTABLEKS                       R10 R9 K19 ["Tip"]
      157 CALL                             R6 3 -1
      158 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ConnectionIndicator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["getPopupContent"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Enums"]
       39 GETTABLEKS                       R6 R1 K14 ["Link"]
       41 GETTABLEKS                       R7 R1 K15 ["Text"]
       43 GETTABLEKS                       R8 R1 K16 ["View"]
       45 GETTABLEKS                       R9 R2 K17 ["ContextServices"]
       47 GETTABLEKS                       R10 R9 K18 ["Localization"]
       49 DUPCLOSURE                       R11 K19 [PROTO_0]
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R5
       57 RETURN                           R11 1

PROTO_0:
        0 LOADNIL                          R4
        1 LOADNIL                          R5
        2 JUMPIFNOTEQKS                    R1 K0 ["DUPLICATE_KEYCODE"] ; [+29]
        4 LOADK                            R8 K1 ["Status"]
        5 LOADK                            R9 K2 ["DuplicateKeycodeTitle"]
        6 NAMECALL                         R6 R0 K3 ["getText"]
        8 CALL                             R6 3 1
        9 MOVE                             R4 R6
       10 LOADK                            R8 K1 ["Status"]
       11 LOADK                            R9 K4 ["DuplicateKeycodeDescription"]
       12 DUPTABLE                         R10 K7 [{"keycode", "actions"}]
       13 JUMPIFNOT                        R2 ; [+3]
       14 GETTABLEKS                       R11 R2 K5 ["keycode"]
       16 JUMPIF                           R11 ; [+1]
       17 LOADK                            R11 K8 [""]
       18 SETTABLEKS                       R11 R10 K5 ["keycode"]
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R11 R2 K6 ["actions"]
       23 JUMPIF                           R11 ; [+1]
       24 LOADK                            R11 K8 [""]
       25 SETTABLEKS                       R11 R10 K6 ["actions"]
       27 NAMECALL                         R6 R0 K3 ["getText"]
       29 CALL                             R6 4 1
       30 MOVE                             R5 R6
       31 JUMP                             ; [+140]
       32 JUMPIFNOTEQKS                    R1 K9 ["DUPLICATE_UI_BUTTON"] ; [+29]
       34 LOADK                            R8 K1 ["Status"]
       35 LOADK                            R9 K10 ["DuplicateUIButtonTitle"]
       36 NAMECALL                         R6 R0 K3 ["getText"]
       38 CALL                             R6 3 1
       39 MOVE                             R4 R6
       40 LOADK                            R8 K1 ["Status"]
       41 LOADK                            R9 K11 ["DuplicateUIButtonDescription"]
       42 DUPTABLE                         R10 K13 [{"uibutton", "actions"}]
       43 JUMPIFNOT                        R2 ; [+3]
       44 GETTABLEKS                       R11 R2 K14 ["uiButton"]
       46 JUMPIF                           R11 ; [+1]
       47 LOADK                            R11 K8 [""]
       48 SETTABLEKS                       R11 R10 K12 ["uibutton"]
       50 JUMPIFNOT                        R2 ; [+3]
       51 GETTABLEKS                       R11 R2 K6 ["actions"]
       53 JUMPIF                           R11 ; [+1]
       54 LOADK                            R11 K8 [""]
       55 SETTABLEKS                       R11 R10 K6 ["actions"]
       57 NAMECALL                         R6 R0 K3 ["getText"]
       59 CALL                             R6 4 1
       60 MOVE                             R5 R6
       61 JUMP                             ; [+110]
       62 JUMPIFNOTEQKS                    R1 K15 ["MODIFIER_KEYCODE"] ; [+19]
       64 LOADK                            R8 K1 ["Status"]
       65 LOADK                            R9 K16 ["ModifierKeycodeTitle"]
       66 NAMECALL                         R6 R0 K3 ["getText"]
       68 CALL                             R6 3 1
       69 MOVE                             R4 R6
       70 GETUPVAL                         R6 0
       71 CALL                             R6 0 1
       72 JUMPIFNOT                        R6 ; [+7]
       73 LOADK                            R8 K1 ["Status"]
       74 LOADK                            R9 K17 ["ModifierKeycodeDescription"]
       75 NAMECALL                         R6 R0 K3 ["getText"]
       77 CALL                             R6 3 1
       78 MOVE                             R5 R6
       79 JUMP                             ; [+92]
       80 MOVE                             R5 R4
       81 JUMP                             ; [+90]
       82 JUMPIFNOTEQKS                    R1 K18 ["NO_KEYCODE"] ; [+32]
       84 JUMPIFEQKNIL                     R3 ; [+17]
       86 GETUPVAL                         R7 1
       87 GETTABLE                         R6 R7 R3
       88 JUMPIFNOT                        R6 ; [+13]
       89 LOADK                            R8 K1 ["Status"]
       90 LOADK                            R9 K19 ["MissingCompositeKeycodeTitle"]
       91 NAMECALL                         R6 R0 K3 ["getText"]
       93 CALL                             R6 3 1
       94 MOVE                             R4 R6
       95 LOADK                            R8 K1 ["Status"]
       96 LOADK                            R9 K20 ["MissingCompositeKeycodeDescription"]
       97 NAMECALL                         R6 R0 K3 ["getText"]
       99 CALL                             R6 3 1
      100 MOVE                             R5 R6
      101 JUMP                             ; [+70]
      102 LOADK                            R8 K1 ["Status"]
      103 LOADK                            R9 K21 ["MissingKeycodeTitle"]
      104 NAMECALL                         R6 R0 K3 ["getText"]
      106 CALL                             R6 3 1
      107 MOVE                             R4 R6
      108 LOADK                            R8 K1 ["Status"]
      109 LOADK                            R9 K22 ["MissingKeycodeDescription"]
      110 NAMECALL                         R6 R0 K3 ["getText"]
      112 CALL                             R6 3 1
      113 MOVE                             R5 R6
      114 JUMP                             ; [+57]
      115 JUMPIFNOTEQKS                    R1 K23 ["COMPOSITE_KEYCODE"] ; [+29]
      117 LOADK                            R8 K1 ["Status"]
      118 LOADK                            R9 K24 ["CompositeKeycodeTitle"]
      119 NAMECALL                         R6 R0 K3 ["getText"]
      121 CALL                             R6 3 1
      122 MOVE                             R4 R6
      123 LOADK                            R8 K1 ["Status"]
      124 LOADK                            R9 K25 ["CompositeKeycodeDescription"]
      125 DUPTABLE                         R10 K27 [{"compositeProperty", "actions"}]
      126 JUMPIFNOT                        R2 ; [+3]
      127 GETTABLEKS                       R11 R2 K26 ["compositeProperty"]
      129 JUMPIF                           R11 ; [+1]
      130 LOADK                            R11 K8 [""]
      131 SETTABLEKS                       R11 R10 K26 ["compositeProperty"]
      133 JUMPIFNOT                        R2 ; [+3]
      134 GETTABLEKS                       R11 R2 K6 ["actions"]
      136 JUMPIF                           R11 ; [+1]
      137 LOADK                            R11 K8 [""]
      138 SETTABLEKS                       R11 R10 K6 ["actions"]
      140 NAMECALL                         R6 R0 K3 ["getText"]
      142 CALL                             R6 4 1
      143 MOVE                             R5 R6
      144 JUMP                             ; [+27]
      145 GETUPVAL                         R6 0
      146 CALL                             R6 0 1
      147 JUMPIFNOT                        R6 ; [+15]
      148 JUMPIFNOTEQKS                    R1 K28 ["MODIFIER_BUTTON"] ; [+14]
      150 LOADK                            R8 K1 ["Status"]
      151 LOADK                            R9 K29 ["ModifierButtonTitle"]
      152 NAMECALL                         R6 R0 K3 ["getText"]
      154 CALL                             R6 3 1
      155 MOVE                             R4 R6
      156 LOADK                            R8 K1 ["Status"]
      157 LOADK                            R9 K30 ["ModifierButtonDescription"]
      158 NAMECALL                         R6 R0 K3 ["getText"]
      160 CALL                             R6 3 1
      161 MOVE                             R5 R6
      162 JUMP                             ; [+9]
      163 GETIMPORT                        R6 K32 [error]
      165 LOADK                            R8 K33 ["Unknown status type: %*"]
      166 MOVE                             R10 R1
      167 NAMECALL                         R8 R8 K34 ["format"]
      169 CALL                             R8 2 1
      170 MOVE                             R7 R8
      171 CALL                             R6 1 0
      172 DUPTABLE                         R6 K39 [{"Message", "Severity", "Title", "Type"}]
      173 SETTABLEKS                       R5 R6 K35 ["Message"]
      175 GETUPVAL                         R8 2
      176 GETTABLE                         R7 R8 R1
      177 SETTABLEKS                       R7 R6 K36 ["Severity"]
      179 SETTABLEKS                       R4 R6 K37 ["Title"]
      181 SETTABLEKS                       R1 R6 K38 ["Type"]
      183 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K6 ["Src"]
       16 GETTABLEKS                       R2 R2 K8 ["Flags"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K9 ["getFFlagIAMUIModifier"]
       22 CALL                             R3 1 1
       23 NEWTABLE                         R4 8 0
       25 GETIMPORT                        R5 K13 [Enum.PropertyStatus.Error]
       27 SETTABLEKS                       R5 R4 K14 ["DUPLICATE_KEYCODE"]
       29 GETIMPORT                        R5 K16 [Enum.PropertyStatus.Warning]
       31 SETTABLEKS                       R5 R4 K17 ["MODIFIER_KEYCODE"]
       33 GETIMPORT                        R5 K16 [Enum.PropertyStatus.Warning]
       35 SETTABLEKS                       R5 R4 K18 ["NO_KEYCODE"]
       37 GETIMPORT                        R5 K13 [Enum.PropertyStatus.Error]
       39 SETTABLEKS                       R5 R4 K19 ["DUPLICATE_UI_BUTTON"]
       41 GETIMPORT                        R5 K13 [Enum.PropertyStatus.Error]
       43 SETTABLEKS                       R5 R4 K20 ["COMPOSITE_KEYCODE"]
       45 GETIMPORT                        R5 K16 [Enum.PropertyStatus.Warning]
       47 SETTABLEKS                       R5 R4 K21 ["MODIFIER_BUTTON"]
       49 DUPTABLE                         R5 K29 [{["up"] = True, ["down"] = True, ["left"] = True, ["right"] = True, ["forward"] = True, ["backward"] = True}]
       50 DUPCLOSURE                       R6 K30 [PROTO_0]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R4
       54 RETURN                           R6 1

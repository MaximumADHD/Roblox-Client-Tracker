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
       31 JUMP                             ; [+112]
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
       61 JUMP                             ; [+82]
       62 JUMPIFNOTEQKS                    R1 K15 ["MODIFIER_KEYCODE"] ; [+9]
       64 LOADK                            R8 K1 ["Status"]
       65 LOADK                            R9 K16 ["ModifierKeycodeTitle"]
       66 NAMECALL                         R6 R0 K3 ["getText"]
       68 CALL                             R6 3 1
       69 MOVE                             R4 R6
       70 MOVE                             R5 R4
       71 JUMP                             ; [+72]
       72 JUMPIFNOTEQKS                    R1 K17 ["NO_KEYCODE"] ; [+32]
       74 JUMPIFEQKNIL                     R3 ; [+17]
       76 GETUPVAL                         R7 0
       77 GETTABLE                         R6 R7 R3
       78 JUMPIFNOT                        R6 ; [+13]
       79 LOADK                            R8 K1 ["Status"]
       80 LOADK                            R9 K18 ["MissingCompositeKeycodeTitle"]
       81 NAMECALL                         R6 R0 K3 ["getText"]
       83 CALL                             R6 3 1
       84 MOVE                             R4 R6
       85 LOADK                            R8 K1 ["Status"]
       86 LOADK                            R9 K19 ["MissingCompositeKeycodeDescription"]
       87 NAMECALL                         R6 R0 K3 ["getText"]
       89 CALL                             R6 3 1
       90 MOVE                             R5 R6
       91 JUMP                             ; [+52]
       92 LOADK                            R8 K1 ["Status"]
       93 LOADK                            R9 K20 ["MissingKeycodeTitle"]
       94 NAMECALL                         R6 R0 K3 ["getText"]
       96 CALL                             R6 3 1
       97 MOVE                             R4 R6
       98 LOADK                            R8 K1 ["Status"]
       99 LOADK                            R9 K21 ["MissingKeycodeDescription"]
      100 NAMECALL                         R6 R0 K3 ["getText"]
      102 CALL                             R6 3 1
      103 MOVE                             R5 R6
      104 JUMP                             ; [+39]
      105 JUMPIFNOTEQKS                    R1 K22 ["COMPOSITE_KEYCODE"] ; [+29]
      107 LOADK                            R8 K1 ["Status"]
      108 LOADK                            R9 K23 ["CompositeKeycodeTitle"]
      109 NAMECALL                         R6 R0 K3 ["getText"]
      111 CALL                             R6 3 1
      112 MOVE                             R4 R6
      113 LOADK                            R8 K1 ["Status"]
      114 LOADK                            R9 K24 ["CompositeKeycodeDescription"]
      115 DUPTABLE                         R10 K26 [{"compositeProperty", "actions"}]
      116 JUMPIFNOT                        R2 ; [+3]
      117 GETTABLEKS                       R11 R2 K25 ["compositeProperty"]
      119 JUMPIF                           R11 ; [+1]
      120 LOADK                            R11 K8 [""]
      121 SETTABLEKS                       R11 R10 K25 ["compositeProperty"]
      123 JUMPIFNOT                        R2 ; [+3]
      124 GETTABLEKS                       R11 R2 K6 ["actions"]
      126 JUMPIF                           R11 ; [+1]
      127 LOADK                            R11 K8 [""]
      128 SETTABLEKS                       R11 R10 K6 ["actions"]
      130 NAMECALL                         R6 R0 K3 ["getText"]
      132 CALL                             R6 4 1
      133 MOVE                             R5 R6
      134 JUMP                             ; [+9]
      135 GETIMPORT                        R6 K28 [error]
      137 LOADK                            R8 K29 ["Unknown status type: %*"]
      138 MOVE                             R10 R1
      139 NAMECALL                         R8 R8 K30 ["format"]
      141 CALL                             R8 2 1
      142 MOVE                             R7 R8
      143 CALL                             R6 1 0
      144 DUPTABLE                         R6 K35 [{"Message", "Severity", "Title", "Type"}]
      145 SETTABLEKS                       R5 R6 K31 ["Message"]
      147 GETUPVAL                         R8 1
      148 GETTABLE                         R7 R8 R1
      149 SETTABLEKS                       R7 R6 K32 ["Severity"]
      151 SETTABLEKS                       R4 R6 K33 ["Title"]
      153 SETTABLEKS                       R1 R6 K34 ["Type"]
      155 RETURN                           R6 1

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
       14 NEWTABLE                         R2 8 0
       16 GETIMPORT                        R3 K11 [Enum.PropertyStatus.Error]
       18 SETTABLEKS                       R3 R2 K12 ["DUPLICATE_KEYCODE"]
       20 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       22 SETTABLEKS                       R3 R2 K15 ["MODIFIER_KEYCODE"]
       24 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       26 SETTABLEKS                       R3 R2 K16 ["NO_KEYCODE"]
       28 GETIMPORT                        R3 K11 [Enum.PropertyStatus.Error]
       30 SETTABLEKS                       R3 R2 K17 ["DUPLICATE_UI_BUTTON"]
       32 GETIMPORT                        R3 K11 [Enum.PropertyStatus.Error]
       34 SETTABLEKS                       R3 R2 K18 ["COMPOSITE_KEYCODE"]
       36 DUPTABLE                         R3 K26 [{["up"] = True, ["down"] = True, ["left"] = True, ["right"] = True, ["forward"] = True, ["backward"] = True}]
       37 DUPCLOSURE                       R4 K27 [PROTO_0]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 RETURN                           R4 1

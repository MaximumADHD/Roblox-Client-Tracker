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
       31 JUMP                             ; [+131]
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
       61 JUMP                             ; [+101]
       62 JUMPIFNOTEQKS                    R1 K15 ["MODIFIER_KEYCODE"] ; [+14]
       64 LOADK                            R8 K1 ["Status"]
       65 LOADK                            R9 K16 ["ModifierKeycodeTitle"]
       66 NAMECALL                         R6 R0 K3 ["getText"]
       68 CALL                             R6 3 1
       69 MOVE                             R4 R6
       70 LOADK                            R8 K1 ["Status"]
       71 LOADK                            R9 K17 ["ModifierKeycodeDescription"]
       72 NAMECALL                         R6 R0 K3 ["getText"]
       74 CALL                             R6 3 1
       75 MOVE                             R5 R6
       76 JUMP                             ; [+86]
       77 JUMPIFNOTEQKS                    R1 K18 ["NO_KEYCODE"] ; [+32]
       79 JUMPIFEQKNIL                     R3 ; [+17]
       81 GETUPVAL                         R7 0
       82 GETTABLE                         R6 R7 R3
       83 JUMPIFNOT                        R6 ; [+13]
       84 LOADK                            R8 K1 ["Status"]
       85 LOADK                            R9 K19 ["MissingCompositeKeycodeTitle"]
       86 NAMECALL                         R6 R0 K3 ["getText"]
       88 CALL                             R6 3 1
       89 MOVE                             R4 R6
       90 LOADK                            R8 K1 ["Status"]
       91 LOADK                            R9 K20 ["MissingCompositeKeycodeDescription"]
       92 NAMECALL                         R6 R0 K3 ["getText"]
       94 CALL                             R6 3 1
       95 MOVE                             R5 R6
       96 JUMP                             ; [+66]
       97 LOADK                            R8 K1 ["Status"]
       98 LOADK                            R9 K21 ["MissingKeycodeTitle"]
       99 NAMECALL                         R6 R0 K3 ["getText"]
      101 CALL                             R6 3 1
      102 MOVE                             R4 R6
      103 LOADK                            R8 K1 ["Status"]
      104 LOADK                            R9 K22 ["MissingKeycodeDescription"]
      105 NAMECALL                         R6 R0 K3 ["getText"]
      107 CALL                             R6 3 1
      108 MOVE                             R5 R6
      109 JUMP                             ; [+53]
      110 JUMPIFNOTEQKS                    R1 K23 ["COMPOSITE_KEYCODE"] ; [+29]
      112 LOADK                            R8 K1 ["Status"]
      113 LOADK                            R9 K24 ["CompositeKeycodeTitle"]
      114 NAMECALL                         R6 R0 K3 ["getText"]
      116 CALL                             R6 3 1
      117 MOVE                             R4 R6
      118 LOADK                            R8 K1 ["Status"]
      119 LOADK                            R9 K25 ["CompositeKeycodeDescription"]
      120 DUPTABLE                         R10 K27 [{"compositeProperty", "actions"}]
      121 JUMPIFNOT                        R2 ; [+3]
      122 GETTABLEKS                       R11 R2 K26 ["compositeProperty"]
      124 JUMPIF                           R11 ; [+1]
      125 LOADK                            R11 K8 [""]
      126 SETTABLEKS                       R11 R10 K26 ["compositeProperty"]
      128 JUMPIFNOT                        R2 ; [+3]
      129 GETTABLEKS                       R11 R2 K6 ["actions"]
      131 JUMPIF                           R11 ; [+1]
      132 LOADK                            R11 K8 [""]
      133 SETTABLEKS                       R11 R10 K6 ["actions"]
      135 NAMECALL                         R6 R0 K3 ["getText"]
      137 CALL                             R6 4 1
      138 MOVE                             R5 R6
      139 JUMP                             ; [+23]
      140 JUMPIFNOTEQKS                    R1 K28 ["MODIFIER_BUTTON"] ; [+14]
      142 LOADK                            R8 K1 ["Status"]
      143 LOADK                            R9 K29 ["ModifierButtonTitle"]
      144 NAMECALL                         R6 R0 K3 ["getText"]
      146 CALL                             R6 3 1
      147 MOVE                             R4 R6
      148 LOADK                            R8 K1 ["Status"]
      149 LOADK                            R9 K30 ["ModifierButtonDescription"]
      150 NAMECALL                         R6 R0 K3 ["getText"]
      152 CALL                             R6 3 1
      153 MOVE                             R5 R6
      154 JUMP                             ; [+8]
      155 GETIMPORT                        R6 K32 [error]
      157 LOADK                            R7 K33 ["Unknown status type: %*"]
      158 MOVE                             R9 R1
      159 NAMECALL                         R7 R7 K34 ["format"]
      161 CALL                             R7 2 1
      162 CALL                             R6 1 0
      163 DUPTABLE                         R6 K39 [{"Message", "Severity", "Title", "Type"}]
      164 SETTABLEKS                       R5 R6 K35 ["Message"]
      166 GETUPVAL                         R8 1
      167 GETTABLE                         R7 R8 R1
      168 SETTABLEKS                       R7 R6 K36 ["Severity"]
      170 SETTABLEKS                       R4 R6 K37 ["Title"]
      172 SETTABLEKS                       R1 R6 K38 ["Type"]
      174 RETURN                           R6 1

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
       36 GETIMPORT                        R3 K14 [Enum.PropertyStatus.Warning]
       38 SETTABLEKS                       R3 R2 K19 ["MODIFIER_BUTTON"]
       40 DUPTABLE                         R3 K27 [{["up"] = True, ["down"] = True, ["left"] = True, ["right"] = True, ["forward"] = True, ["backward"] = True}]
       41 DUPCLOSURE                       R4 K28 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 RETURN                           R4 1

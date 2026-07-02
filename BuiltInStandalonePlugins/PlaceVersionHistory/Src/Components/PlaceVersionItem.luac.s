PROTO_0:
        0 LOADB                            R1 1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["ControlState"]
        6 GETTABLEKS                       R2 R2 K2 ["Hover"]
        8 JUMPIFEQ                         R0 R2 ; [+12]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["Enums"]
       13 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       15 GETTABLEKS                       R2 R2 K3 ["Pressed"]
       17 JUMPIFEQ                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 GETUPVAL                         R2 1
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 2
       25 NOT                              R3 R1
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R0 K0 ["metadata"]
        6 GETTABLEKS                       R4 R4 K1 ["notes"]
        8 GETTABLEKS                       R4 R4 K2 ["description"]
       10 JUMPIFNOTEQKNIL                  R4 ; [+2]
       12 LOADB                            R3 0 +1
       13 LOADB                            R3 1
       14 GETTABLEKS                       R6 R0 K0 ["metadata"]
       16 GETTABLEKS                       R6 R6 K3 ["contributors"]
       18 LENGTH                           R5 R6
       19 JUMPIFNOTEQKN                    R5 K4 [0] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 OR                               R5 R3 R4
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K5 ["useContext"]
       27 GETUPVAL                         R7 3
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K6 ["useBinding"]
       32 LOADB                            R8 0
       33 CALL                             R7 1 2
       34 GETUPVAL                         R9 2
       35 GETTABLEKS                       R9 R9 K7 ["useState"]
       37 LOADB                            R10 0
       38 CALL                             R9 1 2
       39 GETUPVAL                         R11 2
       40 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       42 NEWCLOSURE                       R12 P0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R10
       46 NEWTABLE                         R13 0 0
       48 CALL                             R11 2 1
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K9 ["createElement"]
       52 GETUPVAL                         R13 4
       53 GETTABLEKS                       R13 R13 K10 ["View"]
       55 DUPTABLE                         R14 K17 [{["tag"] = "row align-y-top gap-small size-full-0 auto-y padding-small radius-small", ["onActivated"], ["onStateChanged"], ["isDisabled"], ["LayoutOrder"]}]
       56 GETTABLEKS                       R15 R2 K18 ["toggle"]
       58 SETTABLEKS                       R15 R14 K13 ["onActivated"]
       60 SETTABLEKS                       R11 R14 K14 ["onStateChanged"]
       62 GETTABLEKS                       R15 R6 K19 ["isHovered"]
       64 SETTABLEKS                       R15 R14 K15 ["isDisabled"]
       66 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
       68 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
       70 DUPTABLE                         R15 K24 [{"ExpandButton", "VersionChip", "VersionNote", "OverflowMenu"}]
       71 GETUPVAL                         R16 2
       72 GETTABLEKS                       R16 R16 K9 ["createElement"]
       74 GETUPVAL                         R17 4
       75 GETTABLEKS                       R17 R17 K25 ["IconButton"]
       77 DUPTABLE                         R18 K30 [{["onActivated"], ["icon"], ["size"], ["testId"] = "--place-version-item-expand-button", ["isDisabled"], ["LayoutOrder"]}]
       78 GETTABLEKS                       R19 R2 K18 ["toggle"]
       80 SETTABLEKS                       R19 R18 K13 ["onActivated"]
       82 JUMPIF                           R5 ; [+2]
       83 LOADNIL                          R19
       84 JUMP                             ; [+18]
       85 GETTABLEKS                       R20 R2 K31 ["enabled"]
       87 JUMPIFNOT                        R20 ; [+8]
       88 GETUPVAL                         R19 4
       89 GETTABLEKS                       R19 R19 K32 ["Enums"]
       91 GETTABLEKS                       R19 R19 K33 ["IconName"]
       93 GETTABLEKS                       R19 R19 K34 ["ChevronSmallUp"]
       95 JUMP                             ; [+7]
       96 GETUPVAL                         R19 4
       97 GETTABLEKS                       R19 R19 K32 ["Enums"]
       99 GETTABLEKS                       R19 R19 K33 ["IconName"]
      101 GETTABLEKS                       R19 R19 K35 ["ChevronSmallDown"]
      103 SETTABLEKS                       R19 R18 K26 ["icon"]
      105 GETUPVAL                         R19 4
      106 GETTABLEKS                       R19 R19 K32 ["Enums"]
      108 GETTABLEKS                       R19 R19 K36 ["InputSize"]
      110 GETTABLEKS                       R19 R19 K37 ["XSmall"]
      112 SETTABLEKS                       R19 R18 K27 ["size"]
      114 NOT                              R19 R5
      115 SETTABLEKS                       R19 R18 K15 ["isDisabled"]
      117 MOVE                             R19 R1
      118 CALL                             R19 0 1
      119 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K20 ["ExpandButton"]
      124 GETUPVAL                         R16 2
      125 GETTABLEKS                       R16 R16 K9 ["createElement"]
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R17 R17 K38 ["Chip"]
      130 DUPTABLE                         R18 K41 [{["onActivated"] = , ["size"], ["text"], ["LayoutOrder"]}]
      131 GETUPVAL                         R19 4
      132 GETTABLEKS                       R19 R19 K32 ["Enums"]
      134 GETTABLEKS                       R19 R19 K42 ["ChipSize"]
      136 GETTABLEKS                       R19 R19 K43 ["Small"]
      138 SETTABLEKS                       R19 R18 K27 ["size"]
      140 LOADK                            R20 K44 ["v%*"]
      141 GETTABLEKS                       R22 R0 K0 ["metadata"]
      143 GETTABLEKS                       R22 R22 K45 ["version"]
      145 NAMECALL                         R20 R20 K46 ["format"]
      147 CALL                             R20 2 1
      148 MOVE                             R19 R20
      149 SETTABLEKS                       R19 R18 K40 ["text"]
      151 MOVE                             R19 R1
      152 CALL                             R19 0 1
      153 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K21 ["VersionChip"]
      158 GETUPVAL                         R16 2
      159 GETTABLEKS                       R16 R16 K9 ["createElement"]
      161 GETUPVAL                         R17 5
      162 DUPTABLE                         R18 K48 [{"metadata", "isExpanded", "LayoutOrder"}]
      163 GETTABLEKS                       R19 R0 K0 ["metadata"]
      165 SETTABLEKS                       R19 R18 K0 ["metadata"]
      167 GETTABLEKS                       R19 R2 K31 ["enabled"]
      169 SETTABLEKS                       R19 R18 K47 ["isExpanded"]
      171 MOVE                             R19 R1
      172 CALL                             R19 0 1
      173 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      175 CALL                             R16 2 1
      176 SETTABLEKS                       R16 R15 K22 ["VersionNote"]
      178 GETUPVAL                         R16 2
      179 GETTABLEKS                       R16 R16 K9 ["createElement"]
      181 GETUPVAL                         R17 6
      182 DUPTABLE                         R18 K50 [{"metadata", "isVisible", "isDisabled", "LayoutOrder"}]
      183 GETTABLEKS                       R19 R0 K0 ["metadata"]
      185 SETTABLEKS                       R19 R18 K0 ["metadata"]
      187 SETTABLEKS                       R7 R18 K49 ["isVisible"]
      189 SETTABLEKS                       R9 R18 K15 ["isDisabled"]
      191 MOVE                             R19 R1
      192 CALL                             R19 0 1
      193 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K23 ["OverflowMenu"]
      198 CALL                             R12 3 -1
      199 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R0 K10 ["Src"]
       30 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R4 K12 ["PopoverContext"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Components"]
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R8 R6 K14 ["OverflowMenu"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K5 [require]
       48 GETTABLEKS                       R9 R6 K15 ["PlaceVersionNote"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R2 K16 ["createNextOrder"]
       53 GETTABLEKS                       R10 R2 K17 ["useToggleState"]
       55 GETIMPORT                        R11 K5 [require]
       57 GETTABLEKS                       R12 R0 K10 ["Src"]
       59 GETTABLEKS                       R12 R12 K18 ["Types"]
       61 CALL                             R11 1 1
       62 DUPCLOSURE                       R12 K19 [PROTO_1]
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 RETURN                           R12 1

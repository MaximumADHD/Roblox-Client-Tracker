PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnActivated"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fflagGroupGameEarlyTesters"]
        3 JUMPIFNOT                        R1 ; [+67]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R0 K1 ["Tabs"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K2 ["id"]
       13 DUPTABLE                         R10 K6 [{"text", "isChecked", "onActivated"}]
       14 GETTABLEKS                       R11 R6 K3 ["text"]
       16 SETTABLEKS                       R11 R10 K3 ["text"]
       18 GETTABLEKS                       R12 R0 K7 ["ActiveTabId"]
       20 JUMPIFEQ                         R7 R12 ; [+2]
       22 LOADB                            R11 0 +1
       23 LOADB                            R11 1
       24 SETTABLEKS                       R11 R10 K4 ["isChecked"]
       26 NEWCLOSURE                       R11 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R7
       29 SETTABLEKS                       R11 R10 K5 ["onActivated"]
       31 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       33 MOVE                             R9 R1
       34 GETIMPORT                        R8 K10 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R2 2 ; [-27]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K11 ["createElement"]
       42 GETUPVAL                         R3 2
       43 DUPTABLE                         R4 K15 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y padding-x-large padding-y-small padding-top-xlarge"}]
       44 GETTABLEKS                       R5 R0 K12 ["LayoutOrder"]
       46 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       48 DUPTABLE                         R5 K17 [{"Chips"}]
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K11 ["createElement"]
       52 GETUPVAL                         R7 3
       53 DUPTABLE                         R8 K21 [{"chips", "size", "variant"}]
       54 SETTABLEKS                       R1 R8 K18 ["chips"]
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R9 R9 K22 ["Medium"]
       59 SETTABLEKS                       R9 R8 K19 ["size"]
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K23 ["Wrap"]
       64 SETTABLEKS                       R9 R8 K20 ["variant"]
       66 CALL                             R6 2 1
       67 SETTABLEKS                       R6 R5 K16 ["Chips"]
       69 CALL                             R2 3 -1
       70 RETURN                           R2 -1
       71 NEWTABLE                         R1 0 0
       73 GETTABLEKS                       R2 R0 K1 ["Tabs"]
       75 LOADNIL                          R3
       76 LOADNIL                          R4
       77 FORGPREP                         R2
       78 GETTABLEKS                       R7 R6 K2 ["id"]
       80 LOADK                            R9 K24 ["Tab_"]
       81 MOVE                             R10 R7
       82 CONCAT                           R8 R9 R10
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K11 ["createElement"]
       86 GETUPVAL                         R10 6
       87 DUPTABLE                         R11 K25 [{"LayoutOrder", "text", "size", "variant", "onActivated"}]
       88 SETTABLEKS                       R5 R11 K12 ["LayoutOrder"]
       90 GETTABLEKS                       R12 R6 K3 ["text"]
       92 SETTABLEKS                       R12 R11 K3 ["text"]
       94 GETUPVAL                         R12 7
       95 GETTABLEKS                       R12 R12 K26 ["Small"]
       97 SETTABLEKS                       R12 R11 K19 ["size"]
       99 GETTABLEKS                       R13 R0 K7 ["ActiveTabId"]
      101 JUMPIFNOTEQ                      R7 R13 ; [+5]
      103 GETUPVAL                         R12 8
      104 GETTABLEKS                       R12 R12 K27 ["Standard"]
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R12 8
      108 GETTABLEKS                       R12 R12 K28 ["Utility"]
      110 SETTABLEKS                       R12 R11 K20 ["variant"]
      112 NEWCLOSURE                       R12 P1
      113 CAPTURE                          VAL R0
      114 CAPTURE                          VAL R7
      115 SETTABLEKS                       R12 R11 K5 ["onActivated"]
      117 CALL                             R9 2 1
      118 SETTABLE                         R9 R1 R8
      119 FORGLOOP                         R2 2 ; [-42]
      121 GETUPVAL                         R2 1
      122 GETTABLEKS                       R2 R2 K11 ["createElement"]
      124 GETUPVAL                         R3 2
      125 DUPTABLE                         R4 K30 [{["LayoutOrder"], ["tag"] = "row auto-xy align-y-center gap-medium padding-x-large padding-y-small padding-top-xlarge"}]
      126 GETTABLEKS                       R5 R0 K12 ["LayoutOrder"]
      128 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
      130 MOVE                             R5 R1
      131 CALL                             R2 3 -1
      132 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Bin"]
       27 GETTABLEKS                       R4 R4 K9 ["defineLuaFlags"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K10 ["Button"]
       32 GETTABLEKS                       R5 R2 K11 ["View"]
       34 GETTABLEKS                       R6 R2 K12 ["Enums"]
       36 GETTABLEKS                       R6 R6 K13 ["InputSize"]
       38 GETTABLEKS                       R7 R2 K12 ["Enums"]
       40 GETTABLEKS                       R7 R7 K14 ["ButtonVariant"]
       42 GETTABLEKS                       R8 R2 K15 ["ChipGroup"]
       44 GETTABLEKS                       R9 R2 K12 ["Enums"]
       46 GETTABLEKS                       R9 R9 K16 ["ChipGroupVariant"]
       48 GETTABLEKS                       R10 R2 K12 ["Enums"]
       50 GETTABLEKS                       R10 R10 K17 ["ChipSize"]
       52 DUPCLOSURE                       R11 K18 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 RETURN                           R11 1

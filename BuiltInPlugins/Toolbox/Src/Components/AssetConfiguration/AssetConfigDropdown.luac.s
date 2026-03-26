PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["selectable"]
        3 JUMPIFEQKNIL                     R2 ; [+3]
        5 GETTABLEKS                       R1 R0 K0 ["selectable"]
        7 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [ipairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_INEXT                   R1
        7 DUPTABLE                         R8 K5 [{"id", "text", "isDisabled"}]
        8 FASTCALL1                        TOSTRING R4 ; [+3]
        9 MOVE                             R10 R4
       10 GETIMPORT                        R9 K7 [tostring]
       12 CALL                             R9 1 1
       13 SETTABLEKS                       R9 R8 K2 ["id"]
       15 GETTABLEKS                       R10 R5 K9 ["name"]
       17 ORK                              R9 R10 K8 [""]
       18 SETTABLEKS                       R9 R8 K3 ["text"]
       20 LOADB                            R10 1
       21 GETTABLEKS                       R11 R5 K10 ["selectable"]
       23 JUMPIFEQKNIL                     R11 ; [+3]
       25 GETTABLEKS                       R10 R5 K10 ["selectable"]
       27 NOT                              R9 R10
       28 SETTABLEKS                       R9 R8 K4 ["isDisabled"]
       30 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       32 MOVE                             R7 R0
       33 GETIMPORT                        R6 K13 [table.insert]
       35 CALL                             R6 2 0
       36 FORGLOOP                         R1 2 [inext] ; [-30]
       38 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TONUMBER R2 ; [+2]
        6 GETIMPORT                        R1 K3 [tonumber]
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETUPVAL                         R3 0
       11 GETTABLE                         R2 R3 R1
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["onItemClicked"]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K4 ["onItemClicked"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R5 0
       22 GETTABLE                         R4 R5 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETIMPORT                        R1 K1 [error]
        5 LOADK                            R2 K2 ["AssetConfigDropdown is only supported when getFFlagToolboxAssetConfigFoundationMigration() is on"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K3 ["items"]
        9 JUMPIF                           R1 ; [+2]
       10 NEWTABLE                         R1 0 0
       12 GETTABLEKS                       R3 R0 K5 ["selectedDropDownIndex"]
       14 ORK                              R2 R3 K4 [1]
       15 LOADB                            R3 0
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R2 ; [+6]
       19 LENGTH                           R4 R1
       20 JUMPIFLE                         R2 R4 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K6 ["useMemo"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R1
       32 SETLIST                          R6 R7 1 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K7 ["useCallback"]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R7 0 2
       43 MOVE                             R8 R1
       44 GETTABLEKS                       R9 R0 K8 ["onItemClicked"]
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 JUMPIFNOT                        R3 ; [+6]
       50 FASTCALL1                        TOSTRING R2 ; [+3]
       51 MOVE                             R7 R2
       52 GETIMPORT                        R6 K10 [tostring]
       54 CALL                             R6 1 1
       55 JUMP                             ; [+1]
       56 LOADNIL                          R6
       57 LENGTH                           R8 R1
       58 MULK                             R7 R8 K11 [50]
       59 LOADN                            R9 200
       60 JUMPIFLT                         R9 R7 ; [+2]
       62 LOADB                            R8 0 +1
       63 LOADB                            R8 1
       64 GETUPVAL                         R10 1
       65 GETTABLEKS                       R9 R10 K12 ["createElement"]
       67 GETUPVAL                         R10 2
       68 DUPTABLE                         R11 K16 [{"tag", "LayoutOrder", "GroupTransparency"}]
       69 LOADK                            R12 K17 ["col gap-small size-full-0 auto-y"]
       70 SETTABLEKS                       R12 R11 K13 ["tag"]
       72 GETTABLEKS                       R12 R0 K14 ["LayoutOrder"]
       74 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       76 GETTABLEKS                       R13 R0 K18 ["isDisabled"]
       78 JUMPIFNOT                        R13 ; [+2]
       79 LOADK                            R12 K19 [0.5]
       80 JUMP                             ; [+1]
       81 LOADN                            R12 0
       82 SETTABLEKS                       R12 R11 K15 ["GroupTransparency"]
       84 DUPTABLE                         R12 K21 [{"DropdownWrapper"}]
       85 GETUPVAL                         R14 1
       86 GETTABLEKS                       R13 R14 K12 ["createElement"]
       88 GETUPVAL                         R14 3
       89 DUPTABLE                         R15 K29 [{"label", "placeholder", "value", "items", "onItemChanged", "isDisabled", "width", "size", "LayoutOrder", "maxHeight"}]
       90 LOADK                            R16 K30 [""]
       91 SETTABLEKS                       R16 R15 K22 ["label"]
       93 GETTABLEKS                       R16 R0 K23 ["placeholder"]
       95 SETTABLEKS                       R16 R15 K23 ["placeholder"]
       97 SETTABLEKS                       R6 R15 K24 ["value"]
       99 SETTABLEKS                       R4 R15 K3 ["items"]
      101 SETTABLEKS                       R5 R15 K25 ["onItemChanged"]
      103 GETTABLEKS                       R16 R0 K18 ["isDisabled"]
      105 SETTABLEKS                       R16 R15 K18 ["isDisabled"]
      107 GETIMPORT                        R16 K33 [UDim.new]
      109 LOADN                            R17 0
      110 GETTABLEKS                       R18 R0 K26 ["width"]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R15 K26 ["width"]
      115 GETUPVAL                         R19 4
      116 GETTABLEKS                       R18 R19 K34 ["Enums"]
      118 GETTABLEKS                       R17 R18 K35 ["InputSize"]
      120 GETTABLEKS                       R16 R17 K36 ["Small"]
      122 SETTABLEKS                       R16 R15 K27 ["size"]
      124 LOADN                            R16 1
      125 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      127 JUMPIFNOT                        R8 ; [+2]
      128 LOADN                            R16 200
      129 JUMP                             ; [+1]
      130 LOADNIL                          R16
      131 SETTABLEKS                       R16 R15 K28 ["maxHeight"]
      133 CALL                             R13 2 1
      134 SETTABLEKS                       R13 R12 K20 ["DropdownWrapper"]
      136 CALL                             R9 3 -1
      137 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R5 R2 K10 ["Dropdown"]
       25 GETTABLEKS                       R4 R5 K11 ["Root"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R8 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R8 K13 ["Flags"]
       33 GETTABLEKS                       R6 R7 K14 ["getFFlagToolboxAssetConfigFoundationMigration"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_0]
       37 DUPCLOSURE                       R7 K16 [PROTO_3]
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 RETURN                           R7 1

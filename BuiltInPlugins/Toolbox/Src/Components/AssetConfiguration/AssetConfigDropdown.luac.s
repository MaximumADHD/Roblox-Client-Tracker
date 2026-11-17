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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["onItemClicked"]
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["onItemClicked"]
       20 MOVE                             R3 R1
       21 GETUPVAL                         R5 0
       22 GETTABLE                         R4 R5 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["items"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 GETTABLEKS                       R3 R0 K2 ["selectedDropDownIndex"]
        7 ORK                              R2 R3 K1 [1]
        8 LOADB                            R3 0
        9 LOADN                            R4 0
       10 JUMPIFNOTLT                      R4 R2 ; [+6]
       12 LENGTH                           R4 R1
       13 JUMPIFLE                         R2 R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R1
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R7 0 2
       36 MOVE                             R8 R1
       37 GETTABLEKS                       R9 R0 K5 ["onItemClicked"]
       39 SETLIST                          R7 R8 2 [1]
       41 CALL                             R5 2 1
       42 JUMPIFNOT                        R3 ; [+6]
       43 FASTCALL1                        TOSTRING R2 ; [+3]
       44 MOVE                             R7 R2
       45 GETIMPORT                        R6 K7 [tostring]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 LENGTH                           R8 R1
       51 MULK                             R7 R8 K8 [50]
       52 LOADN                            R9 200
       53 JUMPIFLT                         R9 R7 ; [+2]
       55 LOADB                            R8 0 +1
       56 LOADB                            R8 1
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R9 R9 K9 ["createElement"]
       60 GETUPVAL                         R10 1
       61 DUPTABLE                         R11 K14 [{["tag"] = "col gap-small auto-xy", ["LayoutOrder"], ["GroupTransparency"]}]
       62 GETTABLEKS                       R12 R0 K12 ["LayoutOrder"]
       64 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       66 GETTABLEKS                       R13 R0 K15 ["isDisabled"]
       68 JUMPIFNOT                        R13 ; [+2]
       69 LOADK                            R12 K16 [0.5]
       70 JUMP                             ; [+1]
       71 LOADN                            R12 0
       72 SETTABLEKS                       R12 R11 K13 ["GroupTransparency"]
       74 DUPTABLE                         R12 K18 [{"DropdownWrapper"}]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R13 R13 K9 ["createElement"]
       78 GETUPVAL                         R14 2
       79 DUPTABLE                         R15 K27 [{["label"] = "", ["placeholder"], ["value"], [4], ["onItemChanged"], ["isDisabled"], ["width"], ["size"], ["LayoutOrder"] = 1, ["maxHeight"]}]
       80 GETTABLEKS                       R16 R0 K21 ["placeholder"]
       82 SETTABLEKS                       R16 R15 K21 ["placeholder"]
       84 SETTABLEKS                       R6 R15 K22 ["value"]
       86 SETTABLEKS                       R4 R15 K0 ["items"]
       88 SETTABLEKS                       R5 R15 K23 ["onItemChanged"]
       90 GETTABLEKS                       R16 R0 K15 ["isDisabled"]
       92 SETTABLEKS                       R16 R15 K15 ["isDisabled"]
       94 GETIMPORT                        R16 K30 [UDim.new]
       96 LOADN                            R17 0
       97 GETTABLEKS                       R18 R0 K24 ["width"]
       99 CALL                             R16 2 1
      100 SETTABLEKS                       R16 R15 K24 ["width"]
      102 GETUPVAL                         R16 3
      103 GETTABLEKS                       R16 R16 K31 ["Enums"]
      105 GETTABLEKS                       R16 R16 K32 ["InputSize"]
      107 GETTABLEKS                       R16 R16 K33 ["Small"]
      109 SETTABLEKS                       R16 R15 K25 ["size"]
      111 JUMPIFNOT                        R8 ; [+2]
      112 LOADN                            R16 200
      113 JUMP                             ; [+1]
      114 LOADNIL                          R16
      115 SETTABLEKS                       R16 R15 K26 ["maxHeight"]
      117 CALL                             R13 2 1
      118 SETTABLEKS                       R13 R12 K17 ["DropdownWrapper"]
      120 CALL                             R9 3 -1
      121 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Dropdown"]
       25 GETTABLEKS                       R4 R4 K11 ["Root"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 DUPCLOSURE                       R6 K13 [PROTO_3]
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 RETURN                           R6 1

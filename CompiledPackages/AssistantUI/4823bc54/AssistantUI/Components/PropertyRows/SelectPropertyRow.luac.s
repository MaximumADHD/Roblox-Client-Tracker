PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R8 1
        7 GETTABLEKS                       R9 R5 K0 ["id"]
        9 GETTABLE                         R7 R8 R9
       10 JUMPIFNOT                        R7 ; [+5]
       11 GETTABLEKS                       R7 R5 K1 ["text"]
       13 LOADK                            R8 K2 ["  ⚠"]
       14 CONCAT                           R6 R7 R8
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R6 R5 K1 ["text"]
       18 DUPTABLE                         R9 K3 [{"id", "text"}]
       19 GETTABLEKS                       R10 R5 K0 ["id"]
       21 SETTABLEKS                       R10 R9 K0 ["id"]
       23 SETTABLEKS                       R6 R9 K1 ["text"]
       25 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       27 MOVE                             R8 R0
       28 GETIMPORT                        R7 K6 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R1 2 ; [-26]
       33 RETURN                           R0 1

PROTO_2:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+3]
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 JUMPIFNOT                        R2 ; [+3]
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["definition"]
        2 GETTABLEKS                       R1 R1 K1 ["options"]
        4 GETTABLEKS                       R1 R1 K2 ["items"]
        6 GETTABLEN                        R2 R1 1
        7 GETTABLEKS                       R3 R0 K3 ["value"]
        9 JUMPIF                           R3 ; [+5]
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R3 R2 K4 ["id"]
       13 JUMPIF                           R3 ; [+1]
       14 LOADK                            R3 K5 [""]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K6 ["useState"]
       18 GETTABLEKS                       R5 R0 K0 ["definition"]
       20 GETTABLEKS                       R5 R5 K7 ["badges"]
       22 JUMPIF                           R5 ; [+2]
       23 NEWTABLE                         R5 0 0
       25 CALL                             R4 1 2
       26 GETTABLEKS                       R6 R0 K0 ["definition"]
       28 GETTABLEKS                       R6 R6 K8 ["registerSetBadges"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       33 NEWCLOSURE                       R8 P0
       34 CAPTURE                          VAL R6
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R9 0 0
       38 CALL                             R7 2 0
       39 GETUPVAL                         R7 0
       40 GETTABLEKS                       R7 R7 K10 ["useMemo"]
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 NEWTABLE                         R9 0 2
       47 MOVE                             R10 R1
       48 MOVE                             R11 R4
       49 SETLIST                          R9 R10 2 [1]
       51 CALL                             R7 2 1
       52 GETTABLEKS                       R8 R0 K0 ["definition"]
       54 GETTABLEKS                       R8 R8 K11 ["onChanged"]
       56 GETTABLEKS                       R9 R0 K12 ["onChange"]
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 NEWTABLE                         R12 0 2
       66 MOVE                             R13 R8
       67 MOVE                             R14 R9
       68 SETLIST                          R12 R13 2 [1]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 1
       72 GETUPVAL                         R12 2
       73 DUPTABLE                         R13 K17 [{["tag"] = "size-full-0 auto-y", ["LayoutOrder"]}]
       74 GETTABLEKS                       R14 R0 K16 ["LayoutOrder"]
       76 SETTABLEKS                       R14 R13 K16 ["LayoutOrder"]
       78 DUPTABLE                         R14 K19 [{"Control"}]
       79 GETUPVAL                         R15 1
       80 GETUPVAL                         R16 3
       81 DUPTABLE                         R17 K23 [{"segments", "value", "onActivated", "size"}]
       82 SETTABLEKS                       R7 R17 K20 ["segments"]
       84 SETTABLEKS                       R3 R17 K3 ["value"]
       86 SETTABLEKS                       R10 R17 K21 ["onActivated"]
       88 GETUPVAL                         R18 4
       89 GETTABLEKS                       R18 R18 K24 ["Enums"]
       91 GETTABLEKS                       R18 R18 K25 ["InputSize"]
       93 GETTABLEKS                       R18 R18 K26 ["Small"]
       95 SETTABLEKS                       R18 R17 K22 ["size"]
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K18 ["Control"]
      100 CALL                             R11 3 -1
      101 RETURN                           R11 -1

PROTO_4:
        0 DUPTABLE                         R1 K9 [{"type", "label", "prop", "fullWidth", "initialValue", "options", "onChanged", "badges", "registerSetBadges"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K10 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K11 ["Select"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["fullWidth"]
       18 SETTABLEKS                       R2 R1 K3 ["fullWidth"]
       20 GETTABLEKS                       R2 R0 K4 ["initialValue"]
       22 SETTABLEKS                       R2 R1 K4 ["initialValue"]
       24 GETTABLEKS                       R2 R0 K5 ["options"]
       26 SETTABLEKS                       R2 R1 K5 ["options"]
       28 GETTABLEKS                       R2 R0 K6 ["onChanged"]
       30 SETTABLEKS                       R2 R1 K6 ["onChanged"]
       32 GETTABLEKS                       R2 R0 K7 ["badges"]
       34 SETTABLEKS                       R2 R1 K7 ["badges"]
       36 GETTABLEKS                       R2 R0 K8 ["registerSetBadges"]
       38 SETTABLEKS                       R2 R1 K8 ["registerSetBadges"]
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K6 ["Parent"]
       27 GETTABLEKS                       R4 R4 K9 ["PropertyRowTypes"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K10 ["SegmentedControl"]
       32 GETTABLEKS                       R5 R1 K11 ["View"]
       34 GETTABLEKS                       R6 R2 K12 ["createElement"]
       36 DUPCLOSURE                       R7 K13 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R8 K14 [PROTO_4]
       43 CAPTURE                          VAL R3
       44 DUPTABLE                         R9 K17 [{"SelectPropertyRow", "createRowDefinition"}]
       45 SETTABLEKS                       R7 R9 K15 ["SelectPropertyRow"]
       47 SETTABLEKS                       R8 R9 K16 ["createRowDefinition"]
       49 RETURN                           R9 1

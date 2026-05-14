PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["property"]
        3 JUMPIFNOTEQKS                    R0 K1 ["keyCode"] ; [+7]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["action"]
        8 GETTABLEKS                       R0 R0 K3 ["type"]
       10 RETURN                           R0 1
       11 GETIMPORT                        R0 K7 [Enum.InputActionType.Bool]
       13 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 GETIMPORT                        R2 K6 [Enum.KeyCode.Unknown]
        5 GETTABLEKS                       R2 R2 K7 ["Value"]
        7 SETTABLEKS                       R2 R1 K0 ["id"]
        9 LOADK                            R2 K8 ["None"]
       10 SETTABLEKS                       R2 R1 K1 ["text"]
       12 SETLIST                          R0 R1 1 [1]
       14 GETUPVAL                         R1 0
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 1
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K9 ["schema"]
       21 GETTABLE                         R1 R2 R3
       22 JUMPIF                           R1 ; [+1]
       23 RETURN                           R0 1
       24 MOVE                             R2 R1
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 FORGPREP                         R2
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K10 ["Name"]
       31 JUMPIFNOTEQ                      R5 R7 ; [+26]
       33 MOVE                             R7 R6
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETIMPORT                        R12 K6 [Enum.KeyCode.Unknown]
       39 JUMPIFEQ                         R11 R12 ; [+16]
       41 DUPTABLE                         R14 K2 [{"id", "text"}]
       42 GETTABLEKS                       R15 R11 K7 ["Value"]
       44 SETTABLEKS                       R15 R14 K0 ["id"]
       46 GETTABLEKS                       R15 R11 K10 ["Name"]
       48 SETTABLEKS                       R15 R14 K1 ["text"]
       50 FASTCALL2                        TABLE_INSERT R0 R14 ; [+4]
       52 MOVE                             R13 R0
       53 GETIMPORT                        R12 K13 [table.insert]
       55 CALL                             R12 2 0
       56 FORGLOOP                         R7 2 ; [-20]
       58 FORGLOOP                         R2 2 ; [-31]
       60 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIF                           R0 ; [+5]
        4 GETIMPORT                        R0 K4 [Enum.KeyCode.Unknown]
        6 GETTABLEKS                       R0 R0 K5 ["Value"]
        8 RETURN                           R0 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["binding"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["property"]
       15 GETTABLE                         R0 R1 R2
       16 JUMPIFNOT                        R0 ; [+3]
       17 GETTABLEKS                       R1 R0 K5 ["Value"]
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K4 [Enum.KeyCode.Unknown]
       22 GETTABLEKS                       R1 R1 K5 ["Value"]
       24 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K6 ["binding"]
       18 JUMPIFNOT                        R1 ; [+35]
       19 GETIMPORT                        R1 K9 [Enum.KeyCode]
       21 MOVE                             R3 R0
       22 NAMECALL                         R1 R1 K10 ["FromValue"]
       24 CALL                             R1 2 1
       25 NEWTABLE                         R2 0 0
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K11 ["property"]
       30 SETTABLE                         R1 R2 R3
       31 LOADK                            R6 K12 ["Invalid key code value: %*"]
       32 MOVE                             R8 R0
       33 NAMECALL                         R6 R6 K13 ["format"]
       35 CALL                             R6 2 1
       36 MOVE                             R5 R6
       37 FASTCALL2                        ASSERT R1 R5 ; [+4]
       39 MOVE                             R4 R1
       40 GETIMPORT                        R3 K5 [assert]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R3 1
       44 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K6 ["binding"]
       49 GETTABLEKS                       R4 R4 K15 ["uuid"]
       51 MOVE                             R5 R2
       52 CALL                             R3 2 0
       53 RETURN                           R0 0
       54 GETIMPORT                        R1 K9 [Enum.KeyCode]
       56 MOVE                             R3 R0
       57 NAMECALL                         R1 R1 K10 ["FromValue"]
       59 CALL                             R1 2 1
       60 DUPTABLE                         R2 K18 [{"name", "parentUuid"}]
       61 LOADK                            R4 K19 ["%*%*"]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K20 ["action"]
       65 GETTABLEKS                       R6 R6 K16 ["name"]
       67 GETUPVAL                         R7 0
       68 GETTABLEKS                       R7 R7 K21 ["schema"]
       70 NAMECALL                         R4 R4 K13 ["format"]
       72 CALL                             R4 3 1
       73 MOVE                             R3 R4
       74 SETTABLEKS                       R3 R2 K16 ["name"]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K20 ["action"]
       79 GETTABLEKS                       R3 R3 K15 ["uuid"]
       81 SETTABLEKS                       R3 R2 K17 ["parentUuid"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R3 R3 K11 ["property"]
       86 SETTABLE                         R1 R2 R3
       87 GETUPVAL                         R3 1
       88 GETTABLEKS                       R3 R3 K14 ["updateBinding"]
       90 LOADNIL                          R4
       91 MOVE                             R5 R2
       92 CALL                             R3 2 0
       93 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWTABLE                         R5 0 2
       21 GETTABLEKS                       R6 R0 K3 ["action"]
       23 GETTABLEKS                       R7 R0 K4 ["property"]
       25 SETLIST                          R5 R6 2 [1]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       31 NEWCLOSURE                       R5 P1
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R6 0 2
       37 GETTABLEKS                       R7 R0 K5 ["schema"]
       39 MOVE                             R8 R3
       40 SETLIST                          R6 R7 2 [1]
       42 CALL                             R4 2 1
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       46 NEWCLOSURE                       R6 P2
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R7 0 2
       50 GETTABLEKS                       R8 R0 K6 ["binding"]
       52 GETTABLEKS                       R9 R0 K4 ["property"]
       54 SETLIST                          R7 R8 2 [1]
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       60 NEWCLOSURE                       R7 P3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 NEWTABLE                         R8 0 2
       65 GETTABLEKS                       R9 R0 K6 ["binding"]
       67 GETTABLEKS                       R10 R0 K4 ["property"]
       69 SETLIST                          R8 R9 2 [1]
       71 CALL                             R6 2 1
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K8 ["createElement"]
       75 GETUPVAL                         R8 3
       76 DUPTABLE                         R9 K11 [{"LayoutOrder", "tag"}]
       77 GETTABLEKS                       R10 R0 K9 ["LayoutOrder"]
       79 SETTABLEKS                       R10 R9 K9 ["LayoutOrder"]
       81 LOADK                            R10 K12 ["size-0-full columns-input align-y-center padding-left-xxsmall padding-right-xxsmall"]
       82 SETTABLEKS                       R10 R9 K10 ["tag"]
       84 DUPTABLE                         R10 K14 [{"Dropdown"}]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K8 ["createElement"]
       88 GETUPVAL                         R12 4
       89 DUPTABLE                         R13 K23 [{"items", "label", "maxHeight", "onItemChanged", "size", "testId", "value", "width"}]
       90 SETTABLEKS                       R4 R13 K15 ["items"]
       92 LOADK                            R14 K24 [""]
       93 SETTABLEKS                       R14 R13 K16 ["label"]
       95 LOADN                            R14 200
       96 SETTABLEKS                       R14 R13 K17 ["maxHeight"]
       98 SETTABLEKS                       R6 R13 K18 ["onItemChanged"]
      100 GETUPVAL                         R14 5
      101 GETTABLEKS                       R14 R14 K25 ["Enums"]
      103 GETTABLEKS                       R14 R14 K26 ["InputSize"]
      105 GETTABLEKS                       R14 R14 K27 ["Small"]
      107 SETTABLEKS                       R14 R13 K19 ["size"]
      109 LOADK                            R15 K28 ["binding-cell-%*-%*"]
      110 GETTABLEKS                       R17 R0 K4 ["property"]
      112 GETTABLEKS                       R18 R0 K5 ["schema"]
      114 NAMECALL                         R15 R15 K29 ["format"]
      116 CALL                             R15 3 1
      117 MOVE                             R14 R15
      118 SETTABLEKS                       R14 R13 K20 ["testId"]
      120 SETTABLEKS                       R5 R13 K21 ["value"]
      122 GETIMPORT                        R14 K32 [UDim.new]
      124 LOADN                            R15 1
      125 LOADN                            R16 0
      126 CALL                             R14 2 1
      127 SETTABLEKS                       R14 R13 K22 ["width"]
      129 CALL                             R11 2 1
      130 SETTABLEKS                       R11 R10 K13 ["Dropdown"]
      132 CALL                             R7 3 -1
      133 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
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
       21 GETTABLEKS                       R3 R2 K9 ["Dropdown"]
       23 GETTABLEKS                       R3 R3 K10 ["Root"]
       25 GETTABLEKS                       R4 R2 K11 ["View"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       33 GETTABLEKS                       R6 R6 K14 ["DatamodelReference"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Contexts"]
       42 GETTABLEKS                       R7 R7 K15 ["SchemaKeyCodes"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K16 ["Types"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K17 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 RETURN                           R8 1

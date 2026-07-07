PROTO_0:
        0 GETTABLEN                        R2 R0 1
        1 GETTABLEKS                       R2 R2 K0 ["Children"]
        3 GETTABLEN                        R3 R2 1
        4 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
        6 SETTABLEKS                       R4 R3 K2 ["Value"]
        8 GETTABLEN                        R3 R2 2
        9 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
       11 SETTABLEKS                       R4 R3 K3 ["Disabled"]
       13 GETTABLEN                        R3 R2 2
       14 GETTABLEKS                       R4 R1 K4 ["seed"]
       16 SETTABLEKS                       R4 R3 K2 ["Value"]
       18 GETTABLEN                        R3 R2 3
       19 GETTABLEKS                       R4 R1 K5 ["smartUVUnwrap"]
       21 SETTABLEKS                       R4 R3 K2 ["Value"]
       23 GETTABLEN                        R3 R2 4
       24 GETTABLEKS                       R4 R1 K6 ["promptMasking"]
       26 SETTABLEKS                       R4 R3 K2 ["Value"]
       28 RETURN                           R0 0

PROTO_1:
        0 GETTABLEN                        R3 R1 1
        1 GETTABLEKS                       R3 R3 K0 ["Children"]
        3 GETTABLEKS                       R4 R0 K1 ["setRandomizeSeed"]
        5 GETTABLEN                        R5 R3 1
        6 GETTABLEKS                       R5 R5 K2 ["Value"]
        8 CALL                             R4 1 0
        9 GETTABLEKS                       R4 R0 K3 ["setSeed"]
       11 GETTABLEN                        R5 R3 2
       12 GETTABLEKS                       R5 R5 K2 ["Value"]
       14 CALL                             R4 1 0
       15 GETTABLEN                        R4 R3 1
       16 GETTABLEKS                       R4 R4 K2 ["Value"]
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETTABLEKS                       R4 R0 K4 ["setValidSeed"]
       21 LOADB                            R5 1
       22 CALL                             R4 1 0
       23 JUMP                             ; [+5]
       24 GETTABLEN                        R4 R3 2
       25 GETTABLEKS                       R4 R4 K5 ["Validate"]
       27 MOVE                             R5 R2
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R0 K6 ["setSmartUVUnwrap"]
       31 GETTABLEN                        R5 R3 3
       32 GETTABLEKS                       R5 R5 K2 ["Value"]
       34 CALL                             R4 1 0
       35 GETTABLEKS                       R4 R0 K7 ["setPromptMasking"]
       37 GETTABLEN                        R5 R3 4
       38 GETTABLEKS                       R5 R5 K2 ["Value"]
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R4 0 1
        2 DUPTABLE                         R5 K4 [{[1] = "Advanced Options", ["Label"], ["Children"]}]
        3 LOADK                            R8 K5 ["Options"]
        4 LOADK                            R9 K6 ["AdvancedOptions"]
        5 NAMECALL                         R6 R0 K7 ["getText"]
        7 CALL                             R6 3 1
        8 SETTABLEKS                       R6 R5 K2 ["Label"]
       10 NEWTABLE                         R6 0 4
       12 DUPTABLE                         R7 K11 [{[1] = "RandomizeSeed", ["Label"], ["Tooltip"], ["Schema"]}]
       13 LOADK                            R10 K5 ["Options"]
       14 LOADK                            R11 K8 ["RandomizeSeed"]
       15 NAMECALL                         R8 R0 K7 ["getText"]
       17 CALL                             R8 3 1
       18 SETTABLEKS                       R8 R7 K2 ["Label"]
       20 LOADK                            R10 K5 ["Options"]
       21 LOADK                            R11 K12 ["RandomizeSeedTooltip"]
       22 NAMECALL                         R8 R0 K7 ["getText"]
       24 CALL                             R8 3 1
       25 SETTABLEKS                       R8 R7 K9 ["Tooltip"]
       27 DUPTABLE                         R8 K15 [{["Type"] = "Checkbox"}]
       28 SETTABLEKS                       R8 R7 K10 ["Schema"]
       30 DUPTABLE                         R8 K20 [{[1] = "Seed", ["Disabled"] = True, ["Label"], ["Validate"], ["Schema"]}]
       31 LOADK                            R11 K5 ["Options"]
       32 LOADK                            R12 K16 ["Seed"]
       33 NAMECALL                         R9 R0 K7 ["getText"]
       35 CALL                             R9 3 1
       36 SETTABLEKS                       R9 R8 K2 ["Label"]
       38 GETTABLEKS                       R9 R3 K16 ["Seed"]
       40 SETTABLEKS                       R9 R8 K19 ["Validate"]
       42 DUPTABLE                         R9 K22 [{["Type"] = "Number"}]
       43 SETTABLEKS                       R9 R8 K10 ["Schema"]
       45 DUPTABLE                         R9 K24 [{[1] = "SmartUVUnwrap", ["Label"], ["Tooltip"], ["Schema"]}]
       46 LOADK                            R12 K5 ["Options"]
       47 LOADK                            R13 K23 ["SmartUVUnwrap"]
       48 NAMECALL                         R10 R0 K7 ["getText"]
       50 CALL                             R10 3 1
       51 SETTABLEKS                       R10 R9 K2 ["Label"]
       53 LOADK                            R12 K5 ["Options"]
       54 LOADK                            R13 K25 ["SmartUVUnwrapTooltip"]
       55 NAMECALL                         R10 R0 K7 ["getText"]
       57 CALL                             R10 3 1
       58 SETTABLEKS                       R10 R9 K9 ["Tooltip"]
       60 DUPTABLE                         R10 K15 [{["Type"] = "Checkbox"}]
       61 SETTABLEKS                       R10 R9 K10 ["Schema"]
       63 DUPTABLE                         R10 K27 [{[1] = "PromptMasking", ["Label"], ["Tooltip"], ["Schema"]}]
       64 LOADK                            R13 K5 ["Options"]
       65 LOADK                            R14 K26 ["PromptMasking"]
       66 NAMECALL                         R11 R0 K7 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K2 ["Label"]
       71 LOADK                            R13 K5 ["Options"]
       72 LOADK                            R14 K28 ["PromptMaskingTooltip"]
       73 NAMECALL                         R11 R0 K7 ["getText"]
       75 CALL                             R11 3 1
       76 SETTABLEKS                       R11 R10 K9 ["Tooltip"]
       78 DUPTABLE                         R11 K15 [{["Type"] = "Checkbox"}]
       79 SETTABLEKS                       R11 R10 K10 ["Schema"]
       81 SETLIST                          R6 R7 4 [1]
       83 SETTABLEKS                       R6 R5 K3 ["Children"]
       85 SETLIST                          R4 R5 1 [1]
       87 RETURN                           R4 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["number"] ; [+18]
        7 GETUPVAL                         R1 0
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       13 LOADB                            R2 0
       14 CALL                             R1 1 0
       15 GETIMPORT                        R1 K7 [Enum.PropertyStatus.Error]
       17 GETUPVAL                         R2 2
       18 LOADK                            R4 K8 ["Options"]
       19 LOADK                            R5 K9 ["SeedNotANumber"]
       20 NAMECALL                         R2 R2 K10 ["getText"]
       22 CALL                             R2 3 -1
       23 RETURN                           R1 -1
       24 LOADN                            R1 0
       25 JUMPIFLT                         R0 R1 ; [+6]
       27 GETUPVAL                         R1 3
       28 GETTABLEKS                       R1 R1 K11 ["MAX_SEED_VALUE"]
       30 JUMPIFNOTLT                      R1 R0 ; [+18]
       32 GETUPVAL                         R1 0
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 1
       36 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       38 LOADB                            R2 0
       39 CALL                             R1 1 0
       40 GETIMPORT                        R1 K7 [Enum.PropertyStatus.Error]
       42 GETUPVAL                         R2 2
       43 LOADK                            R4 K8 ["Options"]
       44 LOADK                            R5 K12 ["SeedOutOfRange"]
       45 NAMECALL                         R2 R2 K10 ["getText"]
       47 CALL                             R2 3 -1
       48 RETURN                           R1 -1
       49 GETUPVAL                         R1 0
       50 MOVE                             R2 R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 1
       53 GETTABLEKS                       R1 R1 K3 ["setValidSeed"]
       55 LOADB                            R2 1
       56 CALL                             R1 1 0
       57 GETIMPORT                        R1 K14 [Enum.PropertyStatus.Ok]
       59 LOADK                            R2 K15 [""]
       60 RETURN                           R1 2

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"Seed"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Seed"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 GETUPVAL                         R4 4
        5 CALL                             R0 4 1
        6 GETUPVAL                         R1 2
        7 GETTABLEN                        R2 R0 1
        8 GETTABLEKS                       R2 R2 K0 ["Children"]
       10 GETTABLEN                        R3 R2 1
       11 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
       13 SETTABLEKS                       R4 R3 K2 ["Value"]
       15 GETTABLEN                        R3 R2 2
       16 GETTABLEKS                       R4 R1 K1 ["randomizeSeed"]
       18 SETTABLEKS                       R4 R3 K3 ["Disabled"]
       20 GETTABLEN                        R3 R2 2
       21 GETTABLEKS                       R4 R1 K4 ["seed"]
       23 SETTABLEKS                       R4 R3 K2 ["Value"]
       25 GETTABLEN                        R3 R2 3
       26 GETTABLEKS                       R4 R1 K5 ["smartUVUnwrap"]
       28 SETTABLEKS                       R4 R3 K2 ["Value"]
       30 GETTABLEN                        R3 R2 4
       31 GETTABLEKS                       R4 R1 K6 ["promptMasking"]
       33 SETTABLEKS                       R4 R3 K2 ["Value"]
       35 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setValidRotation"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setValidSeed"]
        8 LOADB                            R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["useState"]
       12 LOADN                            R4 0
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K3 ["useCallback"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U3
       22 NEWTABLE                         R7 0 1
       24 GETTABLEKS                       R8 R1 K4 ["setValidSeed"]
       26 SETLIST                          R7 R8 1 [1]
       28 CALL                             R5 2 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R8 0 1
       36 MOVE                             R9 R5
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R9 0 1
       51 MOVE                             R10 R1
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 1
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       58 NEWCLOSURE                       R9 P3
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R10 0 2
       64 MOVE                             R11 R1
       65 MOVE                             R12 R3
       66 SETLIST                          R10 R11 2 [1]
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K6 ["useEffect"]
       72 NEWCLOSURE                       R10 P4
       73 CAPTURE                          VAL R1
       74 NEWTABLE                         R11 0 0
       76 CALL                             R9 2 0
       77 GETUPVAL                         R9 0
       78 GETTABLEKS                       R9 R9 K7 ["createElement"]
       80 GETUPVAL                         R10 6
       81 DUPTABLE                         R11 K21 [{["AutomaticSize"], ["Expansion"], ["ExpandByDefault"] = False, ["Items"], ["LabelHeight"] = 24, ["LabelWidth"], ["LayoutOrder"], ["OnChange"], ["OnExpansionChange"], ["Size"], ["UseScrollingFrame"] = False}]
       82 GETIMPORT                        R12 K24 [Enum.AutomaticSize.Y]
       84 SETTABLEKS                       R12 R11 K8 ["AutomaticSize"]
       86 GETTABLEKS                       R12 R1 K25 ["optionsExpanded"]
       88 SETTABLEKS                       R12 R11 K9 ["Expansion"]
       90 SETTABLEKS                       R7 R11 K12 ["Items"]
       92 GETIMPORT                        R12 K28 [UDim.new]
       94 LOADN                            R13 0
       95 LOADN                            R14 164
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K15 ["LabelWidth"]
       99 GETTABLEKS                       R12 R0 K16 ["LayoutOrder"]
      101 SETTABLEKS                       R12 R11 K16 ["LayoutOrder"]
      103 SETTABLEKS                       R8 R11 K17 ["OnChange"]
      105 GETTABLEKS                       R12 R1 K29 ["setOptionsExpanded"]
      107 SETTABLEKS                       R12 R11 K18 ["OnExpansionChange"]
      109 GETIMPORT                        R12 K32 [UDim2.fromScale]
      111 LOADN                            R13 1
      112 LOADN                            R14 0
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K19 ["Size"]
      116 CALL                             R9 2 -1
      117 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R1 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["Form"]
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K13 ["Src"]
       33 GETTABLEKS                       R8 R8 K14 ["Util"]
       35 GETTABLEKS                       R8 R8 K15 ["Constants"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R9 R0 K13 ["Src"]
       42 GETTABLEKS                       R9 R9 K14 ["Util"]
       44 GETTABLEKS                       R9 R9 K16 ["OptionsContext"]
       46 CALL                             R8 1 1
       47 DUPCLOSURE                       R9 K17 [PROTO_0]
       48 DUPCLOSURE                       R10 K18 [PROTO_1]
       49 DUPCLOSURE                       R11 K19 [PROTO_2]
       50 DUPCLOSURE                       R12 K20 [PROTO_8]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R10
       57 CAPTURE                          VAL R6
       58 RETURN                           R12 1

PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K7 [{"Row1", "Row2"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K14 [{["name"], ["type"], ["value"], ["valueType"], ["LayoutOrder"] = 0}]
       13 GETTABLEKS                       R9 R1 K8 ["name"]
       15 SETTABLEKS                       R9 R8 K8 ["name"]
       17 GETTABLEKS                       R9 R1 K9 ["type"]
       19 SETTABLEKS                       R9 R8 K9 ["type"]
       21 GETTABLEKS                       R9 R1 K10 ["value"]
       23 SETTABLEKS                       R9 R8 K10 ["value"]
       25 GETTABLEKS                       R9 R1 K11 ["valueType"]
       27 SETTABLEKS                       R9 R8 K11 ["valueType"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K5 ["Row1"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K18 [{["name"] = "AnotherFlag", ["type"], ["value"] = "false", ["valueType"], ["LayoutOrder"] = 1}]
       37 GETTABLEKS                       R9 R1 K9 ["type"]
       39 SETTABLEKS                       R9 R8 K9 ["type"]
       41 GETTABLEKS                       R9 R1 K11 ["valueType"]
       43 SETTABLEKS                       R9 R8 K11 ["valueType"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K6 ["Row2"]
       48 CALL                             R2 3 -1
       49 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K7 [{"Row1", "Row2"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K15 [{["name"], ["type"], ["value"], ["valueType"], ["overrideValue"], ["LayoutOrder"] = 0}]
       13 GETTABLEKS                       R9 R1 K8 ["name"]
       15 SETTABLEKS                       R9 R8 K8 ["name"]
       17 GETTABLEKS                       R9 R1 K9 ["type"]
       19 SETTABLEKS                       R9 R8 K9 ["type"]
       21 GETTABLEKS                       R9 R1 K10 ["value"]
       23 SETTABLEKS                       R9 R8 K10 ["value"]
       25 GETTABLEKS                       R9 R1 K11 ["valueType"]
       27 SETTABLEKS                       R9 R8 K11 ["valueType"]
       29 GETTABLEKS                       R9 R1 K10 ["value"]
       31 SETTABLEKS                       R9 R8 K12 ["overrideValue"]
       33 CALL                             R6 2 1
       34 SETTABLEKS                       R6 R5 K5 ["Row1"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K1 ["createElement"]
       39 GETUPVAL                         R7 2
       40 DUPTABLE                         R8 K19 [{["name"] = "NoOverride", ["type"], ["value"] = "false", ["valueType"], ["LayoutOrder"] = 1}]
       41 GETTABLEKS                       R9 R1 K9 ["type"]
       43 SETTABLEKS                       R9 R8 K9 ["type"]
       45 GETTABLEKS                       R9 R1 K11 ["valueType"]
       47 SETTABLEKS                       R9 R8 K11 ["valueType"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K6 ["Row2"]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K7 [{"Row1", "Row2"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K16 [{["name"], ["type"], ["value"], ["valueType"], ["overrideValue"] = "different-value", ["LayoutOrder"] = 0}]
       13 GETTABLEKS                       R9 R1 K8 ["name"]
       15 SETTABLEKS                       R9 R8 K8 ["name"]
       17 GETTABLEKS                       R9 R1 K9 ["type"]
       19 SETTABLEKS                       R9 R8 K9 ["type"]
       21 GETTABLEKS                       R9 R1 K10 ["value"]
       23 SETTABLEKS                       R9 R8 K10 ["value"]
       25 GETTABLEKS                       R9 R1 K11 ["valueType"]
       27 SETTABLEKS                       R9 R8 K11 ["valueType"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K5 ["Row1"]
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K1 ["createElement"]
       35 GETUPVAL                         R7 2
       36 DUPTABLE                         R8 K20 [{["name"] = "NoOverride", ["type"], ["value"] = "false", ["valueType"], ["LayoutOrder"] = 1}]
       37 GETTABLEKS                       R9 R1 K9 ["type"]
       39 SETTABLEKS                       R9 R8 K9 ["type"]
       41 GETTABLEKS                       R9 R1 K11 ["valueType"]
       43 SETTABLEKS                       R9 R8 K11 ["valueType"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K6 ["Row2"]
       48 CALL                             R2 3 -1
       49 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K8 [{"Header", "Row1", "Row2"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K21 [{["name"] = "Name", ["type"] = "Type", ["value"] = "Value", ["valueType"] = "Value Type", ["isHeader"] = True, ["LayoutOrder"] = 0}]
       13 CALL                             R6 2 1
       14 SETTABLEKS                       R6 R5 K5 ["Header"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K1 ["createElement"]
       19 GETUPVAL                         R7 2
       20 DUPTABLE                         R8 K23 [{["name"], ["type"], ["value"], ["valueType"], ["LayoutOrder"] = 1}]
       21 GETTABLEKS                       R9 R1 K9 ["name"]
       23 SETTABLEKS                       R9 R8 K9 ["name"]
       25 GETTABLEKS                       R9 R1 K11 ["type"]
       27 SETTABLEKS                       R9 R8 K11 ["type"]
       29 GETTABLEKS                       R9 R1 K13 ["value"]
       31 SETTABLEKS                       R9 R8 K13 ["value"]
       33 GETTABLEKS                       R9 R1 K15 ["valueType"]
       35 SETTABLEKS                       R9 R8 K15 ["valueType"]
       37 CALL                             R6 2 1
       38 SETTABLEKS                       R6 R5 K6 ["Row1"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K1 ["createElement"]
       43 GETUPVAL                         R7 2
       44 DUPTABLE                         R8 K27 [{["name"] = "AnotherFlag", ["type"], ["value"] = "false", ["valueType"], ["LayoutOrder"] = 2}]
       45 GETTABLEKS                       R9 R1 K11 ["type"]
       47 SETTABLEKS                       R9 R8 K11 ["type"]
       49 GETTABLEKS                       R9 R1 K15 ["valueType"]
       51 SETTABLEKS                       R9 R8 K15 ["valueType"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K7 ["Row2"]
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["Delete clicked!"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y"}]
        7 DUPTABLE                         R5 K6 [{"Row"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 2
       12 DUPTABLE                         R8 K14 [{["name"], ["type"], ["value"], ["valueType"], ["actions"], ["LayoutOrder"] = 0}]
       13 GETTABLEKS                       R9 R1 K7 ["name"]
       15 SETTABLEKS                       R9 R8 K7 ["name"]
       17 GETTABLEKS                       R9 R1 K8 ["type"]
       19 SETTABLEKS                       R9 R8 K8 ["type"]
       21 GETTABLEKS                       R9 R1 K9 ["value"]
       23 SETTABLEKS                       R9 R8 K9 ["value"]
       25 GETTABLEKS                       R9 R1 K10 ["valueType"]
       27 SETTABLEKS                       R9 R8 K10 ["valueType"]
       29 GETUPVAL                         R9 0
       30 GETTABLEKS                       R9 R9 K1 ["createElement"]
       32 GETUPVAL                         R10 3
       33 DUPTABLE                         R11 K19 [{["text"] = "Delete", ["size"], ["onActivated"]}]
       34 GETUPVAL                         R12 4
       35 GETTABLEKS                       R12 R12 K20 ["XSmall"]
       37 SETTABLEKS                       R12 R11 K17 ["size"]
       39 DUPCLOSURE                       R12 K21 [PROTO_4]
       40 SETTABLEKS                       R12 R11 K18 ["onActivated"]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K11 ["actions"]
       45 CALL                             R6 2 1
       46 SETTABLEKS                       R6 R5 K5 ["Row"]
       48 CALL                             R2 3 -1
       49 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{["tag"] = "col size-full-0 auto-y"}]
        5 DUPTABLE                         R3 K8 [{"Header", "Row1", "Row2", "Row3"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R6 K17 [{["name"] = "Override Name", ["value"] = "Override Value", ["isHeader"] = True, ["LayoutOrder"] = 0}]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K4 ["Header"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K0 ["createElement"]
       17 GETUPVAL                         R5 2
       18 DUPTABLE                         R6 K21 [{["name"] = "FFlagDebugMode", ["value"] = "true", ["LayoutOrder"] = 1}]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K5 ["Row1"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["createElement"]
       25 GETUPVAL                         R5 2
       26 DUPTABLE                         R6 K25 [{["name"] = "FIntMaxRetries", ["value"] = "5", ["LayoutOrder"] = 2}]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K6 ["Row2"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K0 ["createElement"]
       33 GETUPVAL                         R5 2
       34 DUPTABLE                         R6 K29 [{["name"] = "FStringApiEndpoint", ["value"] = "https://api.example.com", ["LayoutOrder"] = 3}]
       35 CALL                             R4 2 1
       36 SETTABLEKS                       R4 R3 K7 ["Row3"]
       38 CALL                             R0 3 -1
       39 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K4 [{["tag"] = "col size-full-0 auto-y gap-large"}]
        7 DUPTABLE                         R5 K7 [{"OverridesSection", "FlagsSection"}]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K1 ["createElement"]
       11 GETUPVAL                         R7 1
       12 DUPTABLE                         R8 K11 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 0}]
       13 DUPTABLE                         R9 K14 [{"Header", "Row"}]
       14 GETUPVAL                         R10 0
       15 GETTABLEKS                       R10 R10 K1 ["createElement"]
       17 GETUPVAL                         R11 2
       18 DUPTABLE                         R12 K21 [{["name"] = "Override Name", ["value"] = "Override Value", ["isHeader"] = True, ["LayoutOrder"] = 0}]
       19 CALL                             R10 2 1
       20 SETTABLEKS                       R10 R9 K12 ["Header"]
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R10 R10 K1 ["createElement"]
       25 GETUPVAL                         R11 2
       26 DUPTABLE                         R12 K25 [{["name"] = "FFlagDebugMode", ["value"] = "true", ["LayoutOrder"] = 1}]
       27 CALL                             R10 2 1
       28 SETTABLEKS                       R10 R9 K13 ["Row"]
       30 CALL                             R6 3 1
       31 SETTABLEKS                       R6 R5 K5 ["OverridesSection"]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K1 ["createElement"]
       36 GETUPVAL                         R7 1
       37 DUPTABLE                         R8 K26 [{["tag"] = "col size-full-0 auto-y", ["LayoutOrder"] = 1}]
       38 DUPTABLE                         R9 K29 [{"Header", "Row1", "Row2"}]
       39 GETUPVAL                         R10 0
       40 GETTABLEKS                       R10 R10 K1 ["createElement"]
       42 GETUPVAL                         R11 2
       43 DUPTABLE                         R12 K36 [{["name"] = "Name", ["type"] = "Type", ["value"] = "Value", ["valueType"] = "Value Type", ["isHeader"] = True, ["LayoutOrder"] = 0}]
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K12 ["Header"]
       47 GETUPVAL                         R10 0
       48 GETTABLEKS                       R10 R10 K1 ["createElement"]
       50 GETUPVAL                         R11 2
       51 DUPTABLE                         R12 K39 [{["name"] = "FFlagDebugMode", ["type"], ["value"] = "false", ["valueType"], ["overrideValue"] = "true", ["LayoutOrder"] = 1}]
       52 GETTABLEKS                       R13 R1 K31 ["type"]
       54 SETTABLEKS                       R13 R12 K31 ["type"]
       56 GETTABLEKS                       R13 R1 K34 ["valueType"]
       58 SETTABLEKS                       R13 R12 K34 ["valueType"]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R9 K27 ["Row1"]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K1 ["createElement"]
       66 GETUPVAL                         R11 2
       67 DUPTABLE                         R12 K42 [{["name"] = "FFlagNoOverride", ["type"], ["value"] = "true", ["valueType"], ["LayoutOrder"] = 2}]
       68 GETTABLEKS                       R13 R1 K31 ["type"]
       70 SETTABLEKS                       R13 R12 K31 ["type"]
       72 GETTABLEKS                       R13 R1 K34 ["valueType"]
       74 SETTABLEKS                       R13 R12 K34 ["valueType"]
       76 CALL                             R10 2 1
       77 SETTABLEKS                       R10 R9 K28 ["Row2"]
       79 CALL                             R6 3 1
       80 SETTABLEKS                       R6 R5 K6 ["FlagsSection"]
       82 CALL                             R2 3 -1
       83 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FlagEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Foundation"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Enums"]
       26 GETTABLEKS                       R5 R5 K11 ["InputSize"]
       28 GETTABLEKS                       R6 R4 K12 ["Button"]
       30 GETTABLEKS                       R7 R4 K13 ["View"]
       32 GETIMPORT                        R8 K6 [require]
       34 GETTABLEKS                       R9 R0 K14 ["FlagType"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R0 K15 ["FlagValueType"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K16 ["FlagRow"]
       46 CALL                             R10 1 1
       47 DUPTABLE                         R11 K22 [{["name"] = "FlagRow", ["summary"] = "A row component for displaying flag information. Automatically computes icon, textStyle, and backgroundStyle based on overrideValue and defaultValue.", ["stories"], ["controls"]}]
       48 NEWTABLE                         R12 0 7
       50 DUPTABLE                         R13 K26 [{["name"] = "Default", ["summary"] = "A regular flag row with no override.", ["story"]}]
       51 DUPCLOSURE                       R14 K27 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R10
       55 SETTABLEKS                       R14 R13 K25 ["story"]
       57 DUPTABLE                         R14 K30 [{["name"] = "With Override (Same Value)", ["summary"] = "A flag with an override that matches the default value. Shows warning styling.", ["story"]}]
       58 DUPCLOSURE                       R15 K31 [PROTO_1]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R10
       62 SETTABLEKS                       R15 R14 K25 ["story"]
       64 DUPTABLE                         R15 K34 [{["name"] = "With Override (Different Value)", ["summary"] = "A flag with an override that differs from the default value. Shows alert styling.", ["story"]}]
       65 DUPCLOSURE                       R16 K35 [PROTO_2]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R10
       69 SETTABLEKS                       R16 R15 K25 ["story"]
       71 DUPTABLE                         R16 K38 [{["name"] = "Header", ["summary"] = "A header row with isHeader = true. Shows header icon and bottom text alignment.", ["story"]}]
       72 DUPCLOSURE                       R17 K39 [PROTO_3]
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R17 R16 K25 ["story"]
       78 DUPTABLE                         R17 K42 [{["name"] = "With Actions", ["summary"] = "A flag row with action buttons.", ["story"]}]
       79 DUPCLOSURE                       R18 K43 [PROTO_5]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R18 R17 K25 ["story"]
       87 DUPTABLE                         R18 K46 [{["name"] = "Overrides Section (No Icons)", ["summary"] = "Rows without valueType don't show icons. Used for the Overrides section.", ["story"]}]
       88 DUPCLOSURE                       R19 K47 [PROTO_6]
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R10
       92 SETTABLEKS                       R19 R18 K25 ["story"]
       94 DUPTABLE                         R19 K50 [{["name"] = "Overrides vs Flags Comparison", ["summary"] = "Compare rows with and without valueType to see icon visibility difference.", ["story"]}]
       95 DUPCLOSURE                       R20 K51 [PROTO_7]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R10
       99 SETTABLEKS                       R20 R19 K25 ["story"]
      101 SETLIST                          R12 R13 7 [1]
      103 SETTABLEKS                       R12 R11 K20 ["stories"]
      105 DUPTABLE                         R12 K57 [{["name"] = "SampleFlag", ["type"], ["value"] = "true", ["valueType"]}]
      106 GETTABLEKS                       R13 R2 K58 ["keys"]
      108 MOVE                             R14 R8
      109 CALL                             R13 1 1
      110 SETTABLEKS                       R13 R12 K53 ["type"]
      112 GETTABLEKS                       R13 R2 K58 ["keys"]
      114 MOVE                             R14 R9
      115 CALL                             R13 1 1
      116 SETTABLEKS                       R13 R12 K56 ["valueType"]
      118 SETTABLEKS                       R12 R11 K21 ["controls"]
      120 RETURN                           R11 1

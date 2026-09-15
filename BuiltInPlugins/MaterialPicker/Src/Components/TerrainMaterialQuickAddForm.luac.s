PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R0 K3 [{"instance", "requestOverlay", "screen"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["overlayGui"]
        4 SETTABLEKS                       R1 R0 K0 ["instance"]
        6 DUPCLOSURE                       R1 K5 [PROTO_0]
        7 SETTABLEKS                       R1 R0 K1 ["requestOverlay"]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K4 ["overlayGui"]
       12 SETTABLEKS                       R1 R0 K2 ["screen"]
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R4 R0 K1 ["overlayGui"]
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["createElement"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["Provider"]
       18 DUPTABLE                         R4 K5 [{"value"}]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K6 ["None"]
       22 SETTABLEKS                       R5 R4 K4 ["value"]
       24 DUPTABLE                         R5 K8 [{"Overlay"}]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K2 ["createElement"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K3 ["Provider"]
       31 DUPTABLE                         R8 K5 [{"value"}]
       32 SETTABLEKS                       R1 R8 K4 ["value"]
       34 DUPTABLE                         R9 K10 [{"Dropdown"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K2 ["createElement"]
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R12 R0 K11 ["dropdownProps"]
       41 CALL                             R10 2 1
       42 SETTABLEKS                       R10 R9 K9 ["Dropdown"]
       44 CALL                             R6 3 1
       45 SETTABLEKS                       R6 R5 K7 ["Overlay"]
       47 CALL                             R2 3 -1
       48 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K4 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-xsmall size-full-600"}]
        7 GETTABLEKS                       R5 R0 K5 ["layoutOrder"]
        9 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       11 DUPTABLE                         R5 K8 [{"Label", "Control"}]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K0 ["createElement"]
       15 GETUPVAL                         R7 3
       16 DUPTABLE                         R8 K12 [{["LayoutOrder"], ["Size"], ["Text"], ["tag"] = "text-body-small text-align-x-left content-muted"}]
       17 MOVE                             R9 R1
       18 CALL                             R9 0 1
       19 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       21 GETIMPORT                        R9 K15 [UDim2.new]
       23 LOADN                            R10 1
       24 LOADN                            R11 -144
       25 LOADN                            R12 1
       26 LOADN                            R13 0
       27 CALL                             R9 4 1
       28 SETTABLEKS                       R9 R8 K9 ["Size"]
       30 GETTABLEKS                       R9 R0 K16 ["label"]
       32 SETTABLEKS                       R9 R8 K10 ["Text"]
       34 CALL                             R6 2 1
       35 SETTABLEKS                       R6 R5 K6 ["Label"]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K0 ["createElement"]
       40 GETUPVAL                         R7 2
       41 DUPTABLE                         R8 K18 [{["LayoutOrder"], ["Size"], ["tag"] = "no-flex"}]
       42 MOVE                             R9 R1
       43 CALL                             R9 0 1
       44 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       46 GETIMPORT                        R9 K20 [UDim2.fromOffset]
       48 LOADN                            R10 140
       49 LOADN                            R11 24
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K9 ["Size"]
       53 GETTABLEKS                       R9 R0 K21 ["control"]
       55 CALL                             R6 3 1
       56 SETTABLEKS                       R6 R5 K7 ["Control"]
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

PROTO_4:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Frame"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["DropdownOverlay"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADN                            R1 1
        8 SETTABLEKS                       R1 R0 K6 ["BackgroundTransparency"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K7 ["BorderSizePixel"]
       13 LOADB                            R1 0
       14 SETTABLEKS                       R1 R0 K8 ["ClipsDescendants"]
       16 GETIMPORT                        R1 K11 [UDim2.fromScale]
       18 LOADN                            R2 1
       19 LOADN                            R3 1
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K12 ["Size"]
       23 LOADN                            R1 10
       24 SETTABLEKS                       R1 R0 K13 ["ZIndex"]
       26 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Parent"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_8:
        0 DUPTABLE                         R0 K5 [{[1], ["material"], ["name"], ["variantName"] = }]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["color"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["material"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["name"]
       10 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MaterialVariants"]
        3 GETTABLEKS                       R0 R0 K1 ["getByBaseMaterial"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["material"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_10:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K3 [{[1] = "__none__", ["text"]}]
        3 GETUPVAL                         R2 0
        4 LOADK                            R4 K4 ["Plugin"]
        5 LOADK                            R5 K5 ["NoVariantDefault"]
        6 NAMECALL                         R2 R2 K6 ["getText"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K2 ["text"]
       11 SETLIST                          R0 R1 1 [1]
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 DUPTABLE                         R8 K7 [{"id", "text"}]
       18 GETTABLEKS                       R9 R5 K8 ["Name"]
       20 SETTABLEKS                       R9 R8 K0 ["id"]
       22 GETTABLEKS                       R9 R5 K8 ["Name"]
       24 SETTABLEKS                       R9 R8 K2 ["text"]
       26 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K11 [table.insert]
       31 CALL                             R6 2 0
       32 FORGLOOP                         R1 2 ; [-16]
       34 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["material"]
        7 LOADNIL                          R2
        8 SETTABLEKS                       R2 R1 K4 ["variantName"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K5 ["TerrainMaterials"]
       13 GETTABLEKS                       R2 R2 K6 ["getColor"]
       15 GETUPVAL                         R3 0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K7 ["color"]
       19 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [tostring]
        5 CALL                             R3 1 1
        6 GETTABLE                         R1 R2 R3
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 1
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 LOADB                            R3 0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K3 ["color"]
        6 GETIMPORT                        R3 K6 [Color3.fromRGB]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOTEQKS                    R5 K7 ["R"] ; [+3]
       11 GETUPVAL                         R4 1
       12 JUMP                             ; [+7]
       13 GETTABLEKS                       R6 R2 K7 ["R"]
       15 MULK                             R5 R6 K8 [255]
       16 FASTCALL1                        MATH_ROUND R5 ; [+2]
       17 GETIMPORT                        R4 K11 [math.round]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 0
       21 JUMPIFNOTEQKS                    R6 K12 ["G"] ; [+3]
       23 GETUPVAL                         R5 1
       24 JUMP                             ; [+7]
       25 GETTABLEKS                       R7 R2 K12 ["G"]
       27 MULK                             R6 R7 K8 [255]
       28 FASTCALL1                        MATH_ROUND R6 ; [+2]
       29 GETIMPORT                        R5 K11 [math.round]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R7 0
       33 JUMPIFNOTEQKS                    R7 K13 ["B"] ; [+3]
       35 GETUPVAL                         R6 1
       36 JUMP                             ; [+7]
       37 GETTABLEKS                       R8 R2 K13 ["B"]
       39 MULK                             R7 R8 K8 [255]
       40 FASTCALL1                        MATH_ROUND R7 ; [+2]
       41 GETIMPORT                        R6 K11 [math.round]
       43 CALL                             R6 1 1
       44 CALL                             R3 3 1
       45 SETTABLEKS                       R3 R1 K3 ["color"]
       47 RETURN                           R1 1

PROTO_14:
        0 JUMPIFNOTEQKS                    R0 K0 ["R"] ; [+3]
        2 GETUPVAL                         R2 0
        3 JUMP                             ; [+5]
        4 JUMPIFNOTEQKS                    R0 K1 ["G"] ; [+3]
        6 GETUPVAL                         R2 1
        7 JUMP                             ; [+1]
        8 GETUPVAL                         R2 2
        9 LOADB                            R3 0
       10 GETTABLEKS                       R4 R2 K2 ["current"]
       12 JUMPIFEQKNIL                     R4 ; [+13]
       14 LOADB                            R3 0
       15 GETTABLEKS                       R4 R2 K2 ["current"]
       17 GETTABLEKS                       R4 R4 K3 ["getIsFocused"]
       19 JUMPIFEQKNIL                     R4 ; [+6]
       21 GETTABLEKS                       R3 R2 K2 ["current"]
       23 GETTABLEKS                       R3 R3 K3 ["getIsFocused"]
       25 CALL                             R3 0 1
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 FASTCALL1                        TONUMBER R1 ; [+3]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R4 K5 [tonumber]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 RETURN                           R0 0
       36 FASTCALL1                        MATH_ROUND R4 ; [+3]
       37 MOVE                             R7 R4
       38 GETIMPORT                        R6 K8 [math.round]
       40 CALL                             R6 1 1
       41 LOADN                            R7 0
       42 LOADN                            R8 255
       43 FASTCALL                         MATH_CLAMP ; [+2]
       44 GETIMPORT                        R5 K10 [math.clamp]
       46 CALL                             R5 3 1
       47 GETUPVAL                         R6 3
       48 NEWCLOSURE                       R7 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R5
       51 CALL                             R6 1 0
       52 GETUPVAL                         R6 4
       53 LOADB                            R7 0
       54 CALL                             R6 1 0
       55 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["R"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["G"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["B"]
        2 MOVE                             R3 R0
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["name"]
        7 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 FASTCALL1                        TOSTRING R4 ; [+2]
        6 GETIMPORT                        R3 K4 [tostring]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K5 ["__none__"] ; [+3]
       11 LOADNIL                          R2
       12 JUMP                             ; [+5]
       13 GETUPVAL                         R3 0
       14 FASTCALL1                        TOSTRING R3 ; [+2]
       15 GETIMPORT                        R2 K4 [tostring]
       17 CALL                             R2 1 1
       18 SETTABLEKS                       R2 R1 K6 ["variantName"]
       20 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 SETTABLEKS                       R2 R1 K3 ["color"]
        7 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["name"]
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTEQ                      R1 R2 ; [+2]
        6 LOADB                            R0 0 +1
        7 LOADB                            R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["color"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["TerrainMaterials"]
       14 GETTABLEKS                       R3 R3 K3 ["getColor"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["material"]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQ                      R2 R3 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K0 ["name"]
       27 LOADK                            R4 K5 ["^%s*$"]
       28 NAMECALL                         R2 R2 K6 ["match"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+13]
       32 GETUPVAL                         R2 3
       33 LOADB                            R3 1
       34 CALL                             R2 1 0
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K7 ["onResult"]
       38 LOADK                            R3 K8 ["invalidName"]
       39 GETUPVAL                         R4 0
       40 MOVE                             R5 R0
       41 MOVE                             R6 R1
       42 LOADNIL                          R7
       43 CALL                             R2 5 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 4
       46 GETTABLEKS                       R2 R2 K9 ["onCreate"]
       48 GETUPVAL                         R3 0
       49 CALL                             R2 1 2
       50 JUMPIFNOTEQKNIL                  R2 ; [+14]
       52 GETUPVAL                         R4 3
       53 LOADB                            R5 1
       54 CALL                             R4 1 0
       55 GETUPVAL                         R4 4
       56 GETTABLEKS                       R4 R4 K7 ["onResult"]
       58 ORK                              R5 R3 K10 ["mutationFailed"]
       59 GETUPVAL                         R6 0
       60 MOVE                             R7 R0
       61 MOVE                             R8 R1
       62 LOADNIL                          R9
       63 CALL                             R4 5 0
       64 RETURN                           R0 0
       65 GETUPVAL                         R4 4
       66 GETTABLEKS                       R4 R4 K7 ["onResult"]
       68 LOADK                            R5 K11 ["success"]
       69 GETUPVAL                         R6 0
       70 MOVE                             R7 R0
       71 MOVE                             R8 R1
       72 MOVE                             R9 R2
       73 CALL                             R4 5 0
       74 GETUPVAL                         R4 4
       75 GETTABLEKS                       R4 R4 K12 ["onCancel"]
       77 CALL                             R4 0 0
       78 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 LOADK                            R4 K2 ["Plugin"]
        8 LOADK                            R5 K3 ["NewSlotDefaultName"]
        9 NAMECALL                         R2 R1 K4 ["getText"]
       11 CALL                             R2 3 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K5 ["TerrainMaterials"]
       15 GETTABLEKS                       R3 R3 K6 ["getColor"]
       17 GETUPVAL                         R4 3
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["useState"]
       22 DUPCLOSURE                       R5 K8 [PROTO_4]
       23 CALL                             R4 1 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K9 ["useCallback"]
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R4
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K10 ["useEffect"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R8 0 1
       42 MOVE                             R9 R4
       43 SETLIST                          R8 R9 1 [1]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K7 ["useState"]
       49 NEWCLOSURE                       R7 P3
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          VAL R2
       53 CALL                             R6 1 2
       54 GETUPVAL                         R8 4
       55 CALL                             R8 0 1
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K7 ["useState"]
       59 LOADB                            R10 0
       60 CALL                             R9 1 2
       61 GETUPVAL                         R11 0
       62 GETTABLEKS                       R11 R11 K11 ["useRef"]
       64 LOADNIL                          R12
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 0
       67 GETTABLEKS                       R12 R12 K11 ["useRef"]
       69 LOADNIL                          R13
       70 CALL                             R12 1 1
       71 GETUPVAL                         R13 0
       72 GETTABLEKS                       R13 R13 K11 ["useRef"]
       74 LOADNIL                          R14
       75 CALL                             R13 1 1
       76 GETUPVAL                         R14 0
       77 GETTABLEKS                       R14 R14 K12 ["useMemo"]
       79 NEWCLOSURE                       R15 P4
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R6
       82 NEWTABLE                         R16 0 1
       84 GETTABLEKS                       R17 R6 K13 ["material"]
       86 SETLIST                          R16 R17 1 [1]
       88 CALL                             R14 2 1
       89 GETUPVAL                         R15 0
       90 GETTABLEKS                       R15 R15 K12 ["useMemo"]
       92 NEWCLOSURE                       R16 P5
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R14
       95 NEWTABLE                         R17 0 2
       97 MOVE                             R18 R1
       98 MOVE                             R19 R14
       99 SETLIST                          R17 R18 2 [1]
      101 CALL                             R15 2 1
      102 GETUPVAL                         R16 5
      103 NEWCLOSURE                       R17 P6
      104 CAPTURE                          UPVAL U6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R10
      108 CALL                             R16 1 1
      109 GETUPVAL                         R17 5
      110 NEWCLOSURE                       R18 P7
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R13
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R10
      116 CALL                             R17 1 1
      117 GETUPVAL                         R18 5
      118 NEWCLOSURE                       R19 P8
      119 CAPTURE                          VAL R17
      120 CALL                             R18 1 1
      121 GETUPVAL                         R19 5
      122 NEWCLOSURE                       R20 P9
      123 CAPTURE                          VAL R17
      124 CALL                             R19 1 1
      125 GETUPVAL                         R20 5
      126 NEWCLOSURE                       R21 P10
      127 CAPTURE                          VAL R17
      128 CALL                             R20 1 1
      129 GETUPVAL                         R21 5
      130 NEWCLOSURE                       R22 P11
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R10
      133 CALL                             R21 1 1
      134 GETUPVAL                         R22 5
      135 NEWCLOSURE                       R23 P12
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R10
      138 CALL                             R22 1 1
      139 GETUPVAL                         R23 5
      140 NEWCLOSURE                       R24 P13
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R10
      143 CALL                             R23 1 1
      144 GETUPVAL                         R24 5
      145 NEWCLOSURE                       R25 P14
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R2
      148 CAPTURE                          UPVAL U2
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R0
      151 CALL                             R24 1 1
      152 GETUPVAL                         R25 7
      153 CALL                             R25 0 1
      154 GETUPVAL                         R26 7
      155 CALL                             R26 0 1
      156 GETUPVAL                         R27 7
      157 CALL                             R27 0 1
      158 GETUPVAL                         R28 7
      159 CALL                             R28 0 1
      160 GETUPVAL                         R29 7
      161 CALL                             R29 0 1
      162 GETUPVAL                         R30 0
      163 GETTABLEKS                       R30 R30 K14 ["createElement"]
      165 GETUPVAL                         R31 8
      166 DUPTABLE                         R32 K17 [{["tag"] = "row align-y-center gap-xxsmall size-full padding-x-xsmall bg-surface-200 radius-small clip"}]
      167 DUPTABLE                         R33 K22 [{"SwatchPicker", "R", "G", "B"}]
      168 GETUPVAL                         R34 0
      169 GETTABLEKS                       R34 R34 K14 ["createElement"]
      171 GETUPVAL                         R35 9
      172 GETTABLEKS                       R35 R35 K23 ["Root"]
      174 DUPTABLE                         R36 K27 [{["isOpen"], ["testId"] = "terrain-material-color-picker-popover"}]
      175 GETTABLEKS                       R37 R8 K28 ["enabled"]
      177 SETTABLEKS                       R37 R36 K24 ["isOpen"]
      179 DUPTABLE                         R37 K31 [{"Anchor", "Content"}]
      180 GETUPVAL                         R38 0
      181 GETTABLEKS                       R38 R38 K14 ["createElement"]
      183 GETUPVAL                         R39 9
      184 GETTABLEKS                       R39 R39 K29 ["Anchor"]
      186 DUPTABLE                         R40 K33 [{"LayoutOrder"}]
      187 MOVE                             R41 R25
      188 CALL                             R41 0 1
      189 SETTABLEKS                       R41 R40 K32 ["LayoutOrder"]
      191 DUPTABLE                         R41 K35 [{"Swatch"}]
      192 GETUPVAL                         R42 0
      193 GETTABLEKS                       R42 R42 K14 ["createElement"]
      195 GETUPVAL                         R43 8
      196 DUPTABLE                         R44 K40 [{["backgroundStyle"], ["onActivated"], ["tag"] = "no-flex size-600 stroke-standard radius-xsmall", ["testId"] = "terrain-material-color-swatch"}]
      197 DUPTABLE                         R45 K44 [{["Color3"], ["Transparency"] = 0}]
      198 GETTABLEKS                       R46 R6 K45 ["color"]
      200 SETTABLEKS                       R46 R45 K41 ["Color3"]
      202 SETTABLEKS                       R45 R44 K36 ["backgroundStyle"]
      204 GETTABLEKS                       R45 R8 K46 ["toggle"]
      206 SETTABLEKS                       R45 R44 K37 ["onActivated"]
      208 CALL                             R42 2 1
      209 SETTABLEKS                       R42 R41 K34 ["Swatch"]
      211 CALL                             R38 3 1
      212 SETTABLEKS                       R38 R37 K29 ["Anchor"]
      214 GETUPVAL                         R38 0
      215 GETTABLEKS                       R38 R38 K14 ["createElement"]
      217 GETUPVAL                         R39 9
      218 GETTABLEKS                       R39 R39 K30 ["Content"]
      220 DUPTABLE                         R40 K54 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      221 GETUPVAL                         R41 10
      222 GETTABLEKS                       R41 R41 K55 ["Start"]
      224 SETTABLEKS                       R41 R40 K47 ["align"]
      226 GETTABLEKS                       R41 R8 K56 ["disable"]
      228 SETTABLEKS                       R41 R40 K52 ["onPressedOutside"]
      230 DUPTABLE                         R41 K60 [{["position"], ["offset"] = 4}]
      231 GETUPVAL                         R42 11
      232 GETTABLEKS                       R42 R42 K61 ["Bottom"]
      234 SETTABLEKS                       R42 R41 K57 ["position"]
      236 SETTABLEKS                       R41 R40 K53 ["side"]
      238 DUPTABLE                         R41 K63 [{"Wrapper"}]
      239 GETUPVAL                         R42 0
      240 GETTABLEKS                       R42 R42 K14 ["createElement"]
      242 GETUPVAL                         R43 8
      243 DUPTABLE                         R44 K66 [{["Size"], ["tag"] = "auto-y"}]
      244 GETIMPORT                        R45 K69 [UDim2.fromOffset]
      246 LOADN                            R46 208
      247 LOADN                            R47 0
      248 CALL                             R45 2 1
      249 SETTABLEKS                       R45 R44 K64 ["Size"]
      251 DUPTABLE                         R45 K71 [{"Picker"}]
      252 GETUPVAL                         R46 0
      253 GETTABLEKS                       R46 R46 K14 ["createElement"]
      255 GETUPVAL                         R47 12
      256 DUPTABLE                         R48 K74 [{"initialColor", "onColorChanged"}]
      257 GETTABLEKS                       R49 R6 K45 ["color"]
      259 SETTABLEKS                       R49 R48 K72 ["initialColor"]
      261 SETTABLEKS                       R23 R48 K73 ["onColorChanged"]
      263 CALL                             R46 2 1
      264 SETTABLEKS                       R46 R45 K70 ["Picker"]
      266 CALL                             R42 3 1
      267 SETTABLEKS                       R42 R41 K62 ["Wrapper"]
      269 CALL                             R38 3 1
      270 SETTABLEKS                       R38 R37 K30 ["Content"]
      272 CALL                             R34 3 1
      273 SETTABLEKS                       R34 R33 K18 ["SwatchPicker"]
      275 GETUPVAL                         R34 0
      276 GETTABLEKS                       R34 R34 K14 ["createElement"]
      278 GETUPVAL                         R35 13
      279 DUPTABLE                         R36 K84 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-r", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      280 MOVE                             R37 R25
      281 CALL                             R37 0 1
      282 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      284 SETTABLEKS                       R18 R36 K77 ["onChanged"]
      286 GETUPVAL                         R37 14
      287 GETTABLEKS                       R37 R37 K85 ["XSmall"]
      289 SETTABLEKS                       R37 R36 K78 ["size"]
      291 GETTABLEKS                       R40 R6 K45 ["color"]
      293 GETTABLEKS                       R40 R40 K19 ["R"]
      295 MULK                             R39 R40 K86 [255]
      296 FASTCALL1                        MATH_ROUND R39 ; [+2]
      297 GETIMPORT                        R38 K89 [math.round]
      299 CALL                             R38 1 1
      300 FASTCALL1                        TOSTRING R38 ; [+2]
      301 GETIMPORT                        R37 K91 [tostring]
      303 CALL                             R37 1 1
      304 SETTABLEKS                       R37 R36 K80 ["text"]
      306 SETTABLEKS                       R11 R36 K81 ["textBoxRef"]
      308 GETUPVAL                         R37 15
      309 GETTABLEKS                       R37 R37 K92 ["Utility"]
      311 SETTABLEKS                       R37 R36 K82 ["variant"]
      313 GETIMPORT                        R37 K95 [UDim.new]
      315 LOADN                            R38 0
      316 LOADN                            R39 34
      317 CALL                             R37 2 1
      318 SETTABLEKS                       R37 R36 K83 ["width"]
      320 CALL                             R34 2 1
      321 SETTABLEKS                       R34 R33 K19 ["R"]
      323 GETUPVAL                         R34 0
      324 GETTABLEKS                       R34 R34 K14 ["createElement"]
      326 GETUPVAL                         R35 13
      327 DUPTABLE                         R36 K97 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-g", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      328 MOVE                             R37 R25
      329 CALL                             R37 0 1
      330 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      332 SETTABLEKS                       R19 R36 K77 ["onChanged"]
      334 GETUPVAL                         R37 14
      335 GETTABLEKS                       R37 R37 K85 ["XSmall"]
      337 SETTABLEKS                       R37 R36 K78 ["size"]
      339 GETTABLEKS                       R40 R6 K45 ["color"]
      341 GETTABLEKS                       R40 R40 K20 ["G"]
      343 MULK                             R39 R40 K86 [255]
      344 FASTCALL1                        MATH_ROUND R39 ; [+2]
      345 GETIMPORT                        R38 K89 [math.round]
      347 CALL                             R38 1 1
      348 FASTCALL1                        TOSTRING R38 ; [+2]
      349 GETIMPORT                        R37 K91 [tostring]
      351 CALL                             R37 1 1
      352 SETTABLEKS                       R37 R36 K80 ["text"]
      354 SETTABLEKS                       R12 R36 K81 ["textBoxRef"]
      356 GETUPVAL                         R37 15
      357 GETTABLEKS                       R37 R37 K92 ["Utility"]
      359 SETTABLEKS                       R37 R36 K82 ["variant"]
      361 GETIMPORT                        R37 K95 [UDim.new]
      363 LOADN                            R38 0
      364 LOADN                            R39 34
      365 CALL                             R37 2 1
      366 SETTABLEKS                       R37 R36 K83 ["width"]
      368 CALL                             R34 2 1
      369 SETTABLEKS                       R34 R33 K20 ["G"]
      371 GETUPVAL                         R34 0
      372 GETTABLEKS                       R34 R34 K14 ["createElement"]
      374 GETUPVAL                         R35 13
      375 DUPTABLE                         R36 K99 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-b", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      376 MOVE                             R37 R25
      377 CALL                             R37 0 1
      378 SETTABLEKS                       R37 R36 K32 ["LayoutOrder"]
      380 SETTABLEKS                       R20 R36 K77 ["onChanged"]
      382 GETUPVAL                         R37 14
      383 GETTABLEKS                       R37 R37 K85 ["XSmall"]
      385 SETTABLEKS                       R37 R36 K78 ["size"]
      387 GETTABLEKS                       R40 R6 K45 ["color"]
      389 GETTABLEKS                       R40 R40 K21 ["B"]
      391 MULK                             R39 R40 K86 [255]
      392 FASTCALL1                        MATH_ROUND R39 ; [+2]
      393 GETIMPORT                        R38 K89 [math.round]
      395 CALL                             R38 1 1
      396 FASTCALL1                        TOSTRING R38 ; [+2]
      397 GETIMPORT                        R37 K91 [tostring]
      399 CALL                             R37 1 1
      400 SETTABLEKS                       R37 R36 K80 ["text"]
      402 SETTABLEKS                       R13 R36 K81 ["textBoxRef"]
      404 GETUPVAL                         R37 15
      405 GETTABLEKS                       R37 R37 K92 ["Utility"]
      407 SETTABLEKS                       R37 R36 K82 ["variant"]
      409 GETIMPORT                        R37 K95 [UDim.new]
      411 LOADN                            R38 0
      412 LOADN                            R39 34
      413 CALL                             R37 2 1
      414 SETTABLEKS                       R37 R36 K83 ["width"]
      416 CALL                             R34 2 1
      417 SETTABLEKS                       R34 R33 K21 ["B"]
      419 CALL                             R30 3 1
      420 GETUPVAL                         R31 0
      421 GETTABLEKS                       R31 R31 K14 ["createElement"]
      423 GETUPVAL                         R32 8
      424 DUPTABLE                         R33 K102 [{["Size"], ["tag"] = "col bg-surface-100 stroke-standard stroke-default radius-medium clip", ["testId"] = "terrain-material-quick-add-form"}]
      425 GETIMPORT                        R34 K69 [UDim2.fromOffset]
      427 LOADN                            R35 272
      428 LOADN                            R36 208
      429 CALL                             R34 2 1
      430 SETTABLEKS                       R34 R33 K64 ["Size"]
      432 DUPTABLE                         R34 K106 [{"Header", "Fields", "Footer"}]
      433 GETUPVAL                         R35 0
      434 GETTABLEKS                       R35 R35 K14 ["createElement"]
      436 GETUPVAL                         R36 8
      437 DUPTABLE                         R37 K109 [{["LayoutOrder"], ["Size"], ["padding"], ["tag"] = "row align-y-center stroke-bottom stroke-default"}]
      438 MOVE                             R38 R26
      439 CALL                             R38 0 1
      440 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      442 GETIMPORT                        R38 K110 [UDim2.new]
      444 LOADN                            R39 1
      445 LOADN                            R40 0
      446 LOADN                            R41 0
      447 LOADN                            R42 36
      448 CALL                             R38 4 1
      449 SETTABLEKS                       R38 R37 K64 ["Size"]
      451 DUPTABLE                         R38 K113 [{"left", "right"}]
      452 GETIMPORT                        R39 K95 [UDim.new]
      454 LOADN                            R40 0
      455 LOADN                            R41 12
      456 CALL                             R39 2 1
      457 SETTABLEKS                       R39 R38 K111 ["left"]
      459 GETIMPORT                        R39 K95 [UDim.new]
      461 LOADN                            R40 0
      462 LOADN                            R41 4
      463 CALL                             R39 2 1
      464 SETTABLEKS                       R39 R38 K112 ["right"]
      466 SETTABLEKS                       R38 R37 K107 ["padding"]
      468 DUPTABLE                         R38 K116 [{"Title", "Close"}]
      469 GETUPVAL                         R39 0
      470 GETTABLEKS                       R39 R39 K14 ["createElement"]
      472 GETUPVAL                         R40 16
      473 DUPTABLE                         R41 K119 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-small text-align-x-left content-emphasis"}]
      474 MOVE                             R42 R27
      475 CALL                             R42 0 1
      476 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      478 LOADK                            R44 K2 ["Plugin"]
      479 LOADK                            R45 K120 ["AddIconTooltip"]
      480 NAMECALL                         R42 R1 K4 ["getText"]
      482 CALL                             R42 3 1
      483 SETTABLEKS                       R42 R41 K117 ["Text"]
      485 CALL                             R39 2 1
      486 SETTABLEKS                       R39 R38 K114 ["Title"]
      488 GETUPVAL                         R39 0
      489 GETTABLEKS                       R39 R39 K14 ["createElement"]
      491 GETUPVAL                         R40 17
      492 DUPTABLE                         R41 K123 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-close"}]
      493 MOVE                             R42 R27
      494 CALL                             R42 0 1
      495 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      497 GETUPVAL                         R42 18
      498 GETTABLEKS                       R42 R42 K124 ["Enums"]
      500 GETTABLEKS                       R42 R42 K125 ["IconName"]
      502 GETTABLEKS                       R42 R42 K126 ["X"]
      504 SETTABLEKS                       R42 R41 K121 ["icon"]
      506 GETTABLEKS                       R42 R0 K127 ["onCancel"]
      508 SETTABLEKS                       R42 R41 K37 ["onActivated"]
      510 GETUPVAL                         R42 14
      511 GETTABLEKS                       R42 R42 K85 ["XSmall"]
      513 SETTABLEKS                       R42 R41 K78 ["size"]
      515 CALL                             R39 2 1
      516 SETTABLEKS                       R39 R38 K115 ["Close"]
      518 CALL                             R35 3 1
      519 SETTABLEKS                       R35 R34 K103 ["Header"]
      521 GETUPVAL                         R35 0
      522 GETTABLEKS                       R35 R35 K14 ["createElement"]
      524 GETUPVAL                         R36 8
      525 DUPTABLE                         R37 K129 [{["LayoutOrder"], ["tag"] = "col grow size-full-0 gap-xsmall padding-x-small padding-y-xsmall"}]
      526 MOVE                             R38 R26
      527 CALL                             R38 0 1
      528 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      530 DUPTABLE                         R38 K135 [{"Name", "Material", "Variant", "Color", "Error"}]
      531 GETUPVAL                         R39 0
      532 GETTABLEKS                       R39 R39 K14 ["createElement"]
      534 GETUPVAL                         R40 19
      535 DUPTABLE                         R41 K138 [{"control", "label", "layoutOrder"}]
      536 GETUPVAL                         R42 0
      537 GETTABLEKS                       R42 R42 K14 ["createElement"]
      539 GETUPVAL                         R43 13
      540 DUPTABLE                         R44 K140 [{["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-name", ["text"], ["variant"], ["width"]}]
      541 SETTABLEKS                       R21 R44 K77 ["onChanged"]
      543 GETUPVAL                         R45 14
      544 GETTABLEKS                       R45 R45 K85 ["XSmall"]
      546 SETTABLEKS                       R45 R44 K78 ["size"]
      548 GETTABLEKS                       R45 R6 K141 ["name"]
      550 SETTABLEKS                       R45 R44 K80 ["text"]
      552 GETUPVAL                         R45 15
      553 GETTABLEKS                       R45 R45 K92 ["Utility"]
      555 SETTABLEKS                       R45 R44 K82 ["variant"]
      557 GETIMPORT                        R45 K95 [UDim.new]
      559 LOADN                            R46 1
      560 LOADN                            R47 0
      561 CALL                             R45 2 1
      562 SETTABLEKS                       R45 R44 K83 ["width"]
      564 CALL                             R42 2 1
      565 SETTABLEKS                       R42 R41 K136 ["control"]
      567 LOADK                            R44 K2 ["Plugin"]
      568 LOADK                            R45 K142 ["NameLabel"]
      569 NAMECALL                         R42 R1 K4 ["getText"]
      571 CALL                             R42 3 1
      572 SETTABLEKS                       R42 R41 K75 ["label"]
      574 MOVE                             R42 R28
      575 CALL                             R42 0 1
      576 SETTABLEKS                       R42 R41 K137 ["layoutOrder"]
      578 CALL                             R39 2 1
      579 SETTABLEKS                       R39 R38 K130 ["Name"]
      581 GETUPVAL                         R39 0
      582 GETTABLEKS                       R39 R39 K14 ["createElement"]
      584 GETUPVAL                         R40 19
      585 DUPTABLE                         R41 K138 [{"control", "label", "layoutOrder"}]
      586 GETUPVAL                         R42 0
      587 GETTABLEKS                       R42 R42 K14 ["createElement"]
      589 GETUPVAL                         R43 20
      590 DUPTABLE                         R44 K145 [{"dropdownProps", "overlayGui"}]
      591 DUPTABLE                         R45 K152 [{["items"], ["label"] = "", ["maxHeight"] = 168, ["onItemChanged"], ["size"], ["testId"] = "terrain-material-base-material", ["value"], ["variant"], ["width"]}]
      592 GETUPVAL                         R46 21
      593 SETTABLEKS                       R46 R45 K146 ["items"]
      595 SETTABLEKS                       R16 R45 K149 ["onItemChanged"]
      597 GETUPVAL                         R46 14
      598 GETTABLEKS                       R46 R46 K85 ["XSmall"]
      600 SETTABLEKS                       R46 R45 K78 ["size"]
      602 GETTABLEKS                       R46 R6 K13 ["material"]
      604 GETTABLEKS                       R46 R46 K130 ["Name"]
      606 SETTABLEKS                       R46 R45 K151 ["value"]
      608 GETUPVAL                         R46 15
      609 GETTABLEKS                       R46 R46 K92 ["Utility"]
      611 SETTABLEKS                       R46 R45 K82 ["variant"]
      613 GETIMPORT                        R46 K95 [UDim.new]
      615 LOADN                            R47 1
      616 LOADN                            R48 0
      617 CALL                             R46 2 1
      618 SETTABLEKS                       R46 R45 K83 ["width"]
      620 SETTABLEKS                       R45 R44 K143 ["dropdownProps"]
      622 SETTABLEKS                       R4 R44 K144 ["overlayGui"]
      624 CALL                             R42 2 1
      625 SETTABLEKS                       R42 R41 K136 ["control"]
      627 LOADK                            R44 K2 ["Plugin"]
      628 LOADK                            R45 K153 ["BaseMaterialLabel"]
      629 NAMECALL                         R42 R1 K4 ["getText"]
      631 CALL                             R42 3 1
      632 SETTABLEKS                       R42 R41 K75 ["label"]
      634 MOVE                             R42 R28
      635 CALL                             R42 0 1
      636 SETTABLEKS                       R42 R41 K137 ["layoutOrder"]
      638 CALL                             R39 2 1
      639 SETTABLEKS                       R39 R38 K131 ["Material"]
      641 GETUPVAL                         R39 0
      642 GETTABLEKS                       R39 R39 K14 ["createElement"]
      644 GETUPVAL                         R40 19
      645 DUPTABLE                         R41 K138 [{"control", "label", "layoutOrder"}]
      646 GETUPVAL                         R42 0
      647 GETTABLEKS                       R42 R42 K14 ["createElement"]
      649 GETUPVAL                         R43 20
      650 DUPTABLE                         R44 K145 [{"dropdownProps", "overlayGui"}]
      651 DUPTABLE                         R45 K155 [{["items"], ["label"] = "", ["maxHeight"] = 168, ["onItemChanged"], ["size"], ["testId"] = "terrain-material-variant", ["value"], ["variant"], ["width"]}]
      652 SETTABLEKS                       R15 R45 K146 ["items"]
      654 SETTABLEKS                       R22 R45 K149 ["onItemChanged"]
      656 GETUPVAL                         R46 14
      657 GETTABLEKS                       R46 R46 K85 ["XSmall"]
      659 SETTABLEKS                       R46 R45 K78 ["size"]
      661 GETTABLEKS                       R47 R6 K157 ["variantName"]
      663 ORK                              R46 R47 K156 ["__none__"]
      664 SETTABLEKS                       R46 R45 K151 ["value"]
      666 GETUPVAL                         R46 15
      667 GETTABLEKS                       R46 R46 K92 ["Utility"]
      669 SETTABLEKS                       R46 R45 K82 ["variant"]
      671 GETIMPORT                        R46 K95 [UDim.new]
      673 LOADN                            R47 1
      674 LOADN                            R48 0
      675 CALL                             R46 2 1
      676 SETTABLEKS                       R46 R45 K83 ["width"]
      678 SETTABLEKS                       R45 R44 K143 ["dropdownProps"]
      680 SETTABLEKS                       R4 R44 K144 ["overlayGui"]
      682 CALL                             R42 2 1
      683 SETTABLEKS                       R42 R41 K136 ["control"]
      685 LOADK                            R44 K2 ["Plugin"]
      686 LOADK                            R45 K158 ["MaterialVariantLabel"]
      687 NAMECALL                         R42 R1 K4 ["getText"]
      689 CALL                             R42 3 1
      690 SETTABLEKS                       R42 R41 K75 ["label"]
      692 MOVE                             R42 R28
      693 CALL                             R42 0 1
      694 SETTABLEKS                       R42 R41 K137 ["layoutOrder"]
      696 CALL                             R39 2 1
      697 SETTABLEKS                       R39 R38 K132 ["Variant"]
      699 GETUPVAL                         R39 0
      700 GETTABLEKS                       R39 R39 K14 ["createElement"]
      702 GETUPVAL                         R40 19
      703 DUPTABLE                         R41 K138 [{"control", "label", "layoutOrder"}]
      704 SETTABLEKS                       R30 R41 K136 ["control"]
      706 LOADK                            R44 K2 ["Plugin"]
      707 LOADK                            R45 K159 ["ColorLabel"]
      708 NAMECALL                         R42 R1 K4 ["getText"]
      710 CALL                             R42 3 1
      711 SETTABLEKS                       R42 R41 K75 ["label"]
      713 MOVE                             R42 R28
      714 CALL                             R42 0 1
      715 SETTABLEKS                       R42 R41 K137 ["layoutOrder"]
      717 CALL                             R39 2 1
      718 SETTABLEKS                       R39 R38 K133 ["Color"]
      720 JUMPIFNOT                        R9 ; [+18]
      721 GETUPVAL                         R39 0
      722 GETTABLEKS                       R39 R39 K14 ["createElement"]
      724 GETUPVAL                         R40 16
      725 DUPTABLE                         R41 K162 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-400 text-caption-small text-align-x-right content-alert", ["testId"] = "terrain-material-quick-add-error"}]
      726 MOVE                             R42 R28
      727 CALL                             R42 0 1
      728 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      730 LOADK                            R44 K2 ["Plugin"]
      731 LOADK                            R45 K163 ["CreateError"]
      732 NAMECALL                         R42 R1 K4 ["getText"]
      734 CALL                             R42 3 1
      735 SETTABLEKS                       R42 R41 K117 ["Text"]
      737 CALL                             R39 2 1
      738 JUMP                             ; [+1]
      739 LOADNIL                          R39
      740 SETTABLEKS                       R39 R38 K134 ["Error"]
      742 CALL                             R35 3 1
      743 SETTABLEKS                       R35 R34 K104 ["Fields"]
      745 GETUPVAL                         R35 0
      746 GETTABLEKS                       R35 R35 K14 ["createElement"]
      748 GETUPVAL                         R36 8
      749 DUPTABLE                         R37 K165 [{["LayoutOrder"], ["Size"], ["tag"] = "row gap-xsmall padding-xsmall stroke-top stroke-default"}]
      750 MOVE                             R38 R26
      751 CALL                             R38 0 1
      752 SETTABLEKS                       R38 R37 K32 ["LayoutOrder"]
      754 GETIMPORT                        R38 K110 [UDim2.new]
      756 LOADN                            R39 1
      757 LOADN                            R40 0
      758 LOADN                            R41 0
      759 LOADN                            R42 36
      760 CALL                             R38 4 1
      761 SETTABLEKS                       R38 R37 K64 ["Size"]
      763 DUPTABLE                         R38 K168 [{"Cancel", "Create"}]
      764 GETUPVAL                         R39 0
      765 GETTABLEKS                       R39 R39 K14 ["createElement"]
      767 GETUPVAL                         R40 22
      768 DUPTABLE                         R41 K171 [{["fillBehavior"], ["LayoutOrder"], ["onActivated"], ["size"], ["text"], ["testId"] = "terrain-material-quick-add-cancel", ["variant"]}]
      769 GETUPVAL                         R42 23
      770 GETTABLEKS                       R42 R42 K172 ["Fill"]
      772 SETTABLEKS                       R42 R41 K169 ["fillBehavior"]
      774 MOVE                             R42 R29
      775 CALL                             R42 0 1
      776 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      778 GETTABLEKS                       R42 R0 K127 ["onCancel"]
      780 SETTABLEKS                       R42 R41 K37 ["onActivated"]
      782 GETUPVAL                         R42 14
      783 GETTABLEKS                       R42 R42 K85 ["XSmall"]
      785 SETTABLEKS                       R42 R41 K78 ["size"]
      787 LOADK                            R44 K2 ["Plugin"]
      788 LOADK                            R45 K173 ["CancelButton"]
      789 NAMECALL                         R42 R1 K4 ["getText"]
      791 CALL                             R42 3 1
      792 SETTABLEKS                       R42 R41 K80 ["text"]
      794 GETUPVAL                         R42 24
      795 GETTABLEKS                       R42 R42 K174 ["Standard"]
      797 SETTABLEKS                       R42 R41 K82 ["variant"]
      799 CALL                             R39 2 1
      800 SETTABLEKS                       R39 R38 K166 ["Cancel"]
      802 GETUPVAL                         R39 0
      803 GETTABLEKS                       R39 R39 K14 ["createElement"]
      805 GETUPVAL                         R40 22
      806 DUPTABLE                         R41 K177 [{["fillBehavior"], ["LayoutOrder"], ["isDisabled"], ["onActivated"], ["size"], ["text"], ["testId"] = "terrain-material-quick-add-create", ["variant"]}]
      807 GETUPVAL                         R42 23
      808 GETTABLEKS                       R42 R42 K172 ["Fill"]
      810 SETTABLEKS                       R42 R41 K169 ["fillBehavior"]
      812 MOVE                             R42 R29
      813 CALL                             R42 0 1
      814 SETTABLEKS                       R42 R41 K32 ["LayoutOrder"]
      816 GETTABLEKS                       R43 R6 K141 ["name"]
      818 LOADK                            R45 K178 ["^%s*$"]
      819 NAMECALL                         R43 R43 K179 ["match"]
      821 CALL                             R43 2 1
      822 JUMPIFNOTEQKNIL                  R43 ; [+2]
      824 LOADB                            R42 0 +1
      825 LOADB                            R42 1
      826 SETTABLEKS                       R42 R41 K175 ["isDisabled"]
      828 SETTABLEKS                       R24 R41 K37 ["onActivated"]
      830 GETUPVAL                         R42 14
      831 GETTABLEKS                       R42 R42 K85 ["XSmall"]
      833 SETTABLEKS                       R42 R41 K78 ["size"]
      835 LOADK                            R44 K2 ["Plugin"]
      836 LOADK                            R45 K180 ["CreateButton"]
      837 NAMECALL                         R42 R1 K4 ["getText"]
      839 CALL                             R42 3 1
      840 SETTABLEKS                       R42 R41 K80 ["text"]
      842 GETUPVAL                         R42 24
      843 GETTABLEKS                       R42 R42 K181 ["Emphasis"]
      845 SETTABLEKS                       R42 R41 K82 ["variant"]
      847 CALL                             R39 2 1
      848 SETTABLEKS                       R39 R38 K167 ["Create"]
      850 CALL                             R35 3 1
      851 SETTABLEKS                       R35 R34 K105 ["Footer"]
      853 CALL                             R31 3 1
      854 GETUPVAL                         R32 0
      855 GETTABLEKS                       R32 R32 K14 ["createElement"]
      857 GETUPVAL                         R33 8
      858 DUPTABLE                         R34 K183 [{"Size", "ref"}]
      859 GETIMPORT                        R35 K69 [UDim2.fromOffset]
      861 LOADN                            R36 272
      862 LOADN                            R37 208
      863 CALL                             R35 2 1
      864 SETTABLEKS                       R35 R34 K64 ["Size"]
      866 SETTABLEKS                       R5 R34 K182 ["ref"]
      868 DUPTABLE                         R35 K185 [{"Form"}]
      869 SETTABLEKS                       R31 R35 K184 ["Form"]
      871 CALL                             R32 3 -1
      872 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TerrainPalette"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Packages"]
       46 GETTABLEKS                       R7 R7 K12 ["_Index"]
       48 GETTABLEKS                       R7 R7 K7 ["Foundation"]
       50 GETTABLEKS                       R7 R7 K7 ["Foundation"]
       52 GETTABLEKS                       R7 R7 K13 ["Providers"]
       54 GETTABLEKS                       R7 R7 K14 ["Overlay"]
       56 GETTABLEKS                       R7 R7 K15 ["OverlayContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Packages"]
       63 GETTABLEKS                       R8 R8 K12 ["_Index"]
       65 GETTABLEKS                       R8 R8 K7 ["Foundation"]
       67 GETTABLEKS                       R8 R8 K7 ["Foundation"]
       69 GETTABLEKS                       R8 R8 K13 ["Providers"]
       71 GETTABLEKS                       R8 R8 K16 ["Plugin"]
       73 GETTABLEKS                       R8 R8 K17 ["PluginContext"]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R1 K18 ["Button"]
       78 GETTABLEKS                       R9 R1 K19 ["Enums"]
       80 GETTABLEKS                       R9 R9 K20 ["ButtonVariant"]
       82 GETTABLEKS                       R10 R1 K21 ["ColorPicker"]
       84 GETTABLEKS                       R11 R1 K22 ["Dropdown"]
       86 GETTABLEKS                       R11 R11 K23 ["Root"]
       88 GETTABLEKS                       R12 R1 K19 ["Enums"]
       90 GETTABLEKS                       R12 R12 K24 ["FillBehavior"]
       92 GETTABLEKS                       R13 R1 K25 ["IconButton"]
       94 GETTABLEKS                       R14 R1 K19 ["Enums"]
       96 GETTABLEKS                       R14 R14 K26 ["InputSize"]
       98 GETTABLEKS                       R15 R1 K19 ["Enums"]
      100 GETTABLEKS                       R15 R15 K27 ["InputVariant"]
      102 GETTABLEKS                       R16 R4 K28 ["Contexts"]
      104 GETTABLEKS                       R16 R16 K29 ["Localization"]
      106 GETTABLEKS                       R17 R1 K30 ["Popover"]
      108 GETTABLEKS                       R18 R1 K19 ["Enums"]
      110 GETTABLEKS                       R18 R18 K31 ["PopoverAlign"]
      112 GETTABLEKS                       R19 R1 K19 ["Enums"]
      114 GETTABLEKS                       R19 R19 K32 ["PopoverSide"]
      116 GETTABLEKS                       R20 R1 K33 ["Text"]
      118 GETTABLEKS                       R21 R1 K34 ["TextInput"]
      120 GETTABLEKS                       R22 R1 K35 ["View"]
      122 GETTABLEKS                       R23 R3 K36 ["createNextOrder"]
      124 GETTABLEKS                       R24 R3 K37 ["useEventCallback"]
      126 GETTABLEKS                       R25 R3 K38 ["useToggleState"]
      128 GETIMPORT                        R26 K42 [Enum.Material.Asphalt]
      130 DUPCLOSURE                       R27 K43 [PROTO_2]
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R11
      135 NEWTABLE                         R28 0 0
      137 NEWTABLE                         R29 0 0
      139 GETTABLEKS                       R30 R5 K44 ["TerrainMaterials"]
      141 GETTABLEKS                       R30 R30 K45 ["materials"]
      143 LOADNIL                          R31
      144 LOADNIL                          R32
      145 FORGPREP                         R30
      146 GETIMPORT                        R35 K47 [Enum.Material.Air]
      148 JUMPIFEQ                         R34 R35 ; [+23]
      150 GETIMPORT                        R35 K49 [Enum.Material.Water]
      152 JUMPIFEQ                         R34 R35 ; [+19]
      154 DUPTABLE                         R37 K52 [{"id", "text"}]
      155 GETTABLEKS                       R38 R34 K53 ["Name"]
      157 SETTABLEKS                       R38 R37 K50 ["id"]
      159 GETTABLEKS                       R38 R34 K53 ["Name"]
      161 SETTABLEKS                       R38 R37 K51 ["text"]
      163 FASTCALL2                        TABLE_INSERT R28 R37 ; [+4]
      165 MOVE                             R36 R28
      166 GETIMPORT                        R35 K56 [table.insert]
      168 CALL                             R35 2 0
      169 GETTABLEKS                       R35 R34 K53 ["Name"]
      171 SETTABLE                         R34 R29 R35
      172 FORGLOOP                         R30 2 ; [-27]
      174 DUPCLOSURE                       R30 K57 [PROTO_3]
      175 CAPTURE                          VAL R23
      176 CAPTURE                          VAL R2
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R20
      179 DUPCLOSURE                       R31 K58 [PROTO_25]
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R16
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R25
      185 CAPTURE                          VAL R24
      186 CAPTURE                          VAL R29
      187 CAPTURE                          VAL R23
      188 CAPTURE                          VAL R22
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R19
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R30
      200 CAPTURE                          VAL R27
      201 CAPTURE                          VAL R28
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R12
      204 CAPTURE                          VAL R9
      205 RETURN                           R31 1

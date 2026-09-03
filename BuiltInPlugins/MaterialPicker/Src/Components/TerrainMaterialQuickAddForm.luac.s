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
        6 DUPTABLE                         R4 K4 [{["LayoutOrder"], ["tag"] = "row align-y-center gap-small size-full-800"}]
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
       24 LOADN                            R11 -196
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
       48 LOADN                            R10 188
       49 LOADN                            R11 32
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
        2 GETTABLEKS                       R1 R1 K6 ["TerrainMaterials"]
        4 GETTABLEKS                       R1 R1 K7 ["getColor"]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 1
        8 SETTABLEKS                       R1 R0 K0 ["color"]
       10 GETUPVAL                         R1 1
       11 SETTABLEKS                       R1 R0 K1 ["material"]
       13 GETUPVAL                         R1 2
       14 LOADK                            R3 K8 ["Plugin"]
       15 LOADK                            R4 K9 ["NewSlotDefaultName"]
       16 NAMECALL                         R1 R1 K10 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["name"]
       21 RETURN                           R0 1

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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["name"]
        3 LOADK                            R2 K1 ["^%s*$"]
        4 NAMECALL                         R0 R0 K2 ["match"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["onCreate"]
       15 GETUPVAL                         R1 0
       16 CALL                             R0 1 1
       17 JUMPIFNOTEQKNIL                  R0 ; [+5]
       19 GETUPVAL                         R1 1
       20 LOADB                            R2 1
       21 CALL                             R1 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K4 ["onCancel"]
       26 CALL                             R1 0 0
       27 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 DUPCLOSURE                       R3 K3 [PROTO_4]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["useCallback"]
       15 NEWCLOSURE                       R4 P1
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 1
       19 MOVE                             R6 R2
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       26 NEWCLOSURE                       R5 P2
       27 CAPTURE                          VAL R2
       28 NEWTABLE                         R6 0 1
       30 MOVE                             R7 R2
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K2 ["useState"]
       37 NEWCLOSURE                       R5 P3
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R1
       41 CALL                             R4 1 2
       42 GETUPVAL                         R6 4
       43 CALL                             R6 0 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K2 ["useState"]
       47 LOADB                            R8 0
       48 CALL                             R7 1 2
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K6 ["useRef"]
       52 LOADNIL                          R10
       53 CALL                             R9 1 1
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R10 R10 K6 ["useRef"]
       57 LOADNIL                          R11
       58 CALL                             R10 1 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K6 ["useRef"]
       62 LOADNIL                          R12
       63 CALL                             R11 1 1
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K7 ["useMemo"]
       67 NEWCLOSURE                       R13 P4
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          VAL R4
       70 NEWTABLE                         R14 0 1
       72 GETTABLEKS                       R15 R4 K8 ["material"]
       74 SETLIST                          R14 R15 1 [1]
       76 CALL                             R12 2 1
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R13 R13 K7 ["useMemo"]
       80 NEWCLOSURE                       R14 P5
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R12
       83 NEWTABLE                         R15 0 2
       85 MOVE                             R16 R1
       86 MOVE                             R17 R12
       87 SETLIST                          R15 R16 2 [1]
       89 CALL                             R13 2 1
       90 GETUPVAL                         R14 5
       91 NEWCLOSURE                       R15 P6
       92 CAPTURE                          UPVAL U6
       93 CAPTURE                          VAL R5
       94 CAPTURE                          UPVAL U2
       95 CAPTURE                          VAL R8
       96 CALL                             R14 1 1
       97 GETUPVAL                         R15 5
       98 NEWCLOSURE                       R16 P7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CALL                             R15 1 1
      105 GETUPVAL                         R16 5
      106 NEWCLOSURE                       R17 P8
      107 CAPTURE                          VAL R15
      108 CALL                             R16 1 1
      109 GETUPVAL                         R17 5
      110 NEWCLOSURE                       R18 P9
      111 CAPTURE                          VAL R15
      112 CALL                             R17 1 1
      113 GETUPVAL                         R18 5
      114 NEWCLOSURE                       R19 P10
      115 CAPTURE                          VAL R15
      116 CALL                             R18 1 1
      117 GETUPVAL                         R19 5
      118 NEWCLOSURE                       R20 P11
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R8
      121 CALL                             R19 1 1
      122 GETUPVAL                         R20 5
      123 NEWCLOSURE                       R21 P12
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R8
      126 CALL                             R20 1 1
      127 GETUPVAL                         R21 5
      128 NEWCLOSURE                       R22 P13
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R8
      131 CALL                             R21 1 1
      132 GETUPVAL                         R22 5
      133 NEWCLOSURE                       R23 P14
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R0
      137 CALL                             R22 1 1
      138 GETUPVAL                         R23 7
      139 CALL                             R23 0 1
      140 GETUPVAL                         R24 7
      141 CALL                             R24 0 1
      142 GETUPVAL                         R25 7
      143 CALL                             R25 0 1
      144 GETUPVAL                         R26 7
      145 CALL                             R26 0 1
      146 GETUPVAL                         R27 7
      147 CALL                             R27 0 1
      148 GETUPVAL                         R28 0
      149 GETTABLEKS                       R28 R28 K9 ["createElement"]
      151 GETUPVAL                         R29 8
      152 DUPTABLE                         R30 K12 [{["tag"] = "row align-y-center gap-xxsmall size-full padding-x-small bg-surface-200 radius-medium clip"}]
      153 DUPTABLE                         R31 K17 [{"SwatchPicker", "R", "G", "B"}]
      154 GETUPVAL                         R32 0
      155 GETTABLEKS                       R32 R32 K9 ["createElement"]
      157 GETUPVAL                         R33 9
      158 GETTABLEKS                       R33 R33 K18 ["Root"]
      160 DUPTABLE                         R34 K22 [{["isOpen"], ["testId"] = "terrain-material-color-picker-popover"}]
      161 GETTABLEKS                       R35 R6 K23 ["enabled"]
      163 SETTABLEKS                       R35 R34 K19 ["isOpen"]
      165 DUPTABLE                         R35 K26 [{"Anchor", "Content"}]
      166 GETUPVAL                         R36 0
      167 GETTABLEKS                       R36 R36 K9 ["createElement"]
      169 GETUPVAL                         R37 9
      170 GETTABLEKS                       R37 R37 K24 ["Anchor"]
      172 DUPTABLE                         R38 K28 [{"LayoutOrder"}]
      173 MOVE                             R39 R23
      174 CALL                             R39 0 1
      175 SETTABLEKS                       R39 R38 K27 ["LayoutOrder"]
      177 DUPTABLE                         R39 K30 [{"Swatch"}]
      178 GETUPVAL                         R40 0
      179 GETTABLEKS                       R40 R40 K9 ["createElement"]
      181 GETUPVAL                         R41 8
      182 DUPTABLE                         R42 K35 [{["backgroundStyle"], ["onActivated"], ["tag"] = "no-flex size-700 stroke-standard radius-xsmall", ["testId"] = "terrain-material-color-swatch"}]
      183 DUPTABLE                         R43 K39 [{["Color3"], ["Transparency"] = 0}]
      184 GETTABLEKS                       R44 R4 K40 ["color"]
      186 SETTABLEKS                       R44 R43 K36 ["Color3"]
      188 SETTABLEKS                       R43 R42 K31 ["backgroundStyle"]
      190 GETTABLEKS                       R43 R6 K41 ["toggle"]
      192 SETTABLEKS                       R43 R42 K32 ["onActivated"]
      194 CALL                             R40 2 1
      195 SETTABLEKS                       R40 R39 K29 ["Swatch"]
      197 CALL                             R36 3 1
      198 SETTABLEKS                       R36 R35 K24 ["Anchor"]
      200 GETUPVAL                         R36 0
      201 GETTABLEKS                       R36 R36 K9 ["createElement"]
      203 GETUPVAL                         R37 9
      204 GETTABLEKS                       R37 R37 K25 ["Content"]
      206 DUPTABLE                         R38 K49 [{["align"], ["hasArrow"] = False, ["isFocusable"] = True, ["onPressedOutside"], ["side"]}]
      207 GETUPVAL                         R39 10
      208 GETTABLEKS                       R39 R39 K50 ["Start"]
      210 SETTABLEKS                       R39 R38 K42 ["align"]
      212 GETTABLEKS                       R39 R6 K51 ["disable"]
      214 SETTABLEKS                       R39 R38 K47 ["onPressedOutside"]
      216 DUPTABLE                         R39 K55 [{["position"], ["offset"] = 8}]
      217 GETUPVAL                         R40 11
      218 GETTABLEKS                       R40 R40 K56 ["Bottom"]
      220 SETTABLEKS                       R40 R39 K52 ["position"]
      222 SETTABLEKS                       R39 R38 K48 ["side"]
      224 DUPTABLE                         R39 K58 [{"Wrapper"}]
      225 GETUPVAL                         R40 0
      226 GETTABLEKS                       R40 R40 K9 ["createElement"]
      228 GETUPVAL                         R41 8
      229 DUPTABLE                         R42 K61 [{["Size"], ["tag"] = "auto-y"}]
      230 GETIMPORT                        R43 K64 [UDim2.fromOffset]
      232 LOADN                            R44 208
      233 LOADN                            R45 0
      234 CALL                             R43 2 1
      235 SETTABLEKS                       R43 R42 K59 ["Size"]
      237 DUPTABLE                         R43 K66 [{"Picker"}]
      238 GETUPVAL                         R44 0
      239 GETTABLEKS                       R44 R44 K9 ["createElement"]
      241 GETUPVAL                         R45 12
      242 DUPTABLE                         R46 K69 [{"initialColor", "onColorChanged"}]
      243 GETTABLEKS                       R47 R4 K40 ["color"]
      245 SETTABLEKS                       R47 R46 K67 ["initialColor"]
      247 SETTABLEKS                       R21 R46 K68 ["onColorChanged"]
      249 CALL                             R44 2 1
      250 SETTABLEKS                       R44 R43 K65 ["Picker"]
      252 CALL                             R40 3 1
      253 SETTABLEKS                       R40 R39 K57 ["Wrapper"]
      255 CALL                             R36 3 1
      256 SETTABLEKS                       R36 R35 K25 ["Content"]
      258 CALL                             R32 3 1
      259 SETTABLEKS                       R32 R31 K13 ["SwatchPicker"]
      261 GETUPVAL                         R32 0
      262 GETTABLEKS                       R32 R32 K9 ["createElement"]
      264 GETUPVAL                         R33 13
      265 DUPTABLE                         R34 K79 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-r", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      266 MOVE                             R35 R23
      267 CALL                             R35 0 1
      268 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      270 SETTABLEKS                       R16 R34 K72 ["onChanged"]
      272 GETUPVAL                         R35 14
      273 GETTABLEKS                       R35 R35 K80 ["XSmall"]
      275 SETTABLEKS                       R35 R34 K73 ["size"]
      277 GETTABLEKS                       R38 R4 K40 ["color"]
      279 GETTABLEKS                       R38 R38 K14 ["R"]
      281 MULK                             R37 R38 K81 [255]
      282 FASTCALL1                        MATH_ROUND R37 ; [+2]
      283 GETIMPORT                        R36 K84 [math.round]
      285 CALL                             R36 1 1
      286 FASTCALL1                        TOSTRING R36 ; [+2]
      287 GETIMPORT                        R35 K86 [tostring]
      289 CALL                             R35 1 1
      290 SETTABLEKS                       R35 R34 K75 ["text"]
      292 SETTABLEKS                       R9 R34 K76 ["textBoxRef"]
      294 GETUPVAL                         R35 15
      295 GETTABLEKS                       R35 R35 K87 ["Utility"]
      297 SETTABLEKS                       R35 R34 K77 ["variant"]
      299 GETIMPORT                        R35 K90 [UDim.new]
      301 LOADN                            R36 0
      302 LOADN                            R37 46
      303 CALL                             R35 2 1
      304 SETTABLEKS                       R35 R34 K78 ["width"]
      306 CALL                             R32 2 1
      307 SETTABLEKS                       R32 R31 K14 ["R"]
      309 GETUPVAL                         R32 0
      310 GETTABLEKS                       R32 R32 K9 ["createElement"]
      312 GETUPVAL                         R33 13
      313 DUPTABLE                         R34 K92 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-g", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      314 MOVE                             R35 R23
      315 CALL                             R35 0 1
      316 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      318 SETTABLEKS                       R17 R34 K72 ["onChanged"]
      320 GETUPVAL                         R35 14
      321 GETTABLEKS                       R35 R35 K80 ["XSmall"]
      323 SETTABLEKS                       R35 R34 K73 ["size"]
      325 GETTABLEKS                       R38 R4 K40 ["color"]
      327 GETTABLEKS                       R38 R38 K15 ["G"]
      329 MULK                             R37 R38 K81 [255]
      330 FASTCALL1                        MATH_ROUND R37 ; [+2]
      331 GETIMPORT                        R36 K84 [math.round]
      333 CALL                             R36 1 1
      334 FASTCALL1                        TOSTRING R36 ; [+2]
      335 GETIMPORT                        R35 K86 [tostring]
      337 CALL                             R35 1 1
      338 SETTABLEKS                       R35 R34 K75 ["text"]
      340 SETTABLEKS                       R10 R34 K76 ["textBoxRef"]
      342 GETUPVAL                         R35 15
      343 GETTABLEKS                       R35 R35 K87 ["Utility"]
      345 SETTABLEKS                       R35 R34 K77 ["variant"]
      347 GETIMPORT                        R35 K90 [UDim.new]
      349 LOADN                            R36 0
      350 LOADN                            R37 46
      351 CALL                             R35 2 1
      352 SETTABLEKS                       R35 R34 K78 ["width"]
      354 CALL                             R32 2 1
      355 SETTABLEKS                       R32 R31 K15 ["G"]
      357 GETUPVAL                         R32 0
      358 GETTABLEKS                       R32 R32 K9 ["createElement"]
      360 GETUPVAL                         R33 13
      361 DUPTABLE                         R34 K94 [{["LayoutOrder"], ["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-color-b", ["text"], ["textBoxRef"], ["variant"], ["width"]}]
      362 MOVE                             R35 R23
      363 CALL                             R35 0 1
      364 SETTABLEKS                       R35 R34 K27 ["LayoutOrder"]
      366 SETTABLEKS                       R18 R34 K72 ["onChanged"]
      368 GETUPVAL                         R35 14
      369 GETTABLEKS                       R35 R35 K80 ["XSmall"]
      371 SETTABLEKS                       R35 R34 K73 ["size"]
      373 GETTABLEKS                       R38 R4 K40 ["color"]
      375 GETTABLEKS                       R38 R38 K16 ["B"]
      377 MULK                             R37 R38 K81 [255]
      378 FASTCALL1                        MATH_ROUND R37 ; [+2]
      379 GETIMPORT                        R36 K84 [math.round]
      381 CALL                             R36 1 1
      382 FASTCALL1                        TOSTRING R36 ; [+2]
      383 GETIMPORT                        R35 K86 [tostring]
      385 CALL                             R35 1 1
      386 SETTABLEKS                       R35 R34 K75 ["text"]
      388 SETTABLEKS                       R11 R34 K76 ["textBoxRef"]
      390 GETUPVAL                         R35 15
      391 GETTABLEKS                       R35 R35 K87 ["Utility"]
      393 SETTABLEKS                       R35 R34 K77 ["variant"]
      395 GETIMPORT                        R35 K90 [UDim.new]
      397 LOADN                            R36 0
      398 LOADN                            R37 46
      399 CALL                             R35 2 1
      400 SETTABLEKS                       R35 R34 K78 ["width"]
      402 CALL                             R32 2 1
      403 SETTABLEKS                       R32 R31 K16 ["B"]
      405 CALL                             R28 3 1
      406 GETUPVAL                         R29 0
      407 GETTABLEKS                       R29 R29 K9 ["createElement"]
      409 GETUPVAL                         R30 8
      410 DUPTABLE                         R31 K97 [{["Size"], ["tag"] = "col bg-surface-100 stroke-standard stroke-default radius-medium clip", ["testId"] = "terrain-material-quick-add-form"}]
      411 GETIMPORT                        R32 K64 [UDim2.fromOffset]
      413 LOADN                            R33 368
      414 LOADN                            R34 340
      415 CALL                             R32 2 1
      416 SETTABLEKS                       R32 R31 K59 ["Size"]
      418 DUPTABLE                         R32 K101 [{"Header", "Fields", "Footer"}]
      419 GETUPVAL                         R33 0
      420 GETTABLEKS                       R33 R33 K9 ["createElement"]
      422 GETUPVAL                         R34 8
      423 DUPTABLE                         R35 K104 [{["LayoutOrder"], ["padding"], ["tag"] = "row align-y-center size-full-1200 stroke-bottom stroke-default"}]
      424 MOVE                             R36 R24
      425 CALL                             R36 0 1
      426 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      428 DUPTABLE                         R36 K107 [{"left", "right"}]
      429 GETIMPORT                        R37 K90 [UDim.new]
      431 LOADN                            R38 0
      432 LOADN                            R39 16
      433 CALL                             R37 2 1
      434 SETTABLEKS                       R37 R36 K105 ["left"]
      436 GETIMPORT                        R37 K90 [UDim.new]
      438 LOADN                            R38 0
      439 LOADN                            R39 8
      440 CALL                             R37 2 1
      441 SETTABLEKS                       R37 R36 K106 ["right"]
      443 SETTABLEKS                       R36 R35 K102 ["padding"]
      445 DUPTABLE                         R36 K110 [{"Title", "Close"}]
      446 GETUPVAL                         R37 0
      447 GETTABLEKS                       R37 R37 K9 ["createElement"]
      449 GETUPVAL                         R38 16
      450 DUPTABLE                         R39 K113 [{["LayoutOrder"], ["Text"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left content-emphasis"}]
      451 MOVE                             R40 R25
      452 CALL                             R40 0 1
      453 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      455 LOADK                            R42 K114 ["Plugin"]
      456 LOADK                            R43 K115 ["AddIconTooltip"]
      457 NAMECALL                         R40 R1 K116 ["getText"]
      459 CALL                             R40 3 1
      460 SETTABLEKS                       R40 R39 K111 ["Text"]
      462 CALL                             R37 2 1
      463 SETTABLEKS                       R37 R36 K108 ["Title"]
      465 GETUPVAL                         R37 0
      466 GETTABLEKS                       R37 R37 K9 ["createElement"]
      468 GETUPVAL                         R38 17
      469 DUPTABLE                         R39 K119 [{["LayoutOrder"], ["icon"], ["onActivated"], ["size"], ["testId"] = "terrain-material-quick-add-close"}]
      470 MOVE                             R40 R25
      471 CALL                             R40 0 1
      472 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      474 GETUPVAL                         R40 18
      475 GETTABLEKS                       R40 R40 K120 ["Enums"]
      477 GETTABLEKS                       R40 R40 K121 ["IconName"]
      479 GETTABLEKS                       R40 R40 K122 ["X"]
      481 SETTABLEKS                       R40 R39 K117 ["icon"]
      483 GETTABLEKS                       R40 R0 K123 ["onCancel"]
      485 SETTABLEKS                       R40 R39 K32 ["onActivated"]
      487 GETUPVAL                         R40 14
      488 GETTABLEKS                       R40 R40 K80 ["XSmall"]
      490 SETTABLEKS                       R40 R39 K73 ["size"]
      492 CALL                             R37 2 1
      493 SETTABLEKS                       R37 R36 K109 ["Close"]
      495 CALL                             R33 3 1
      496 SETTABLEKS                       R33 R32 K98 ["Header"]
      498 GETUPVAL                         R33 0
      499 GETTABLEKS                       R33 R33 K9 ["createElement"]
      501 GETUPVAL                         R34 8
      502 DUPTABLE                         R35 K125 [{["LayoutOrder"], ["tag"] = "col grow size-full-0 gap-small padding-large"}]
      503 MOVE                             R36 R24
      504 CALL                             R36 0 1
      505 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      507 DUPTABLE                         R36 K131 [{"Name", "Material", "Variant", "Color", "Error"}]
      508 GETUPVAL                         R37 0
      509 GETTABLEKS                       R37 R37 K9 ["createElement"]
      511 GETUPVAL                         R38 19
      512 DUPTABLE                         R39 K134 [{"control", "label", "layoutOrder"}]
      513 GETUPVAL                         R40 0
      514 GETTABLEKS                       R40 R40 K9 ["createElement"]
      516 GETUPVAL                         R41 13
      517 DUPTABLE                         R42 K136 [{["label"] = "", ["onChanged"], ["size"], ["testId"] = "terrain-material-name", ["text"], ["variant"], ["width"]}]
      518 SETTABLEKS                       R19 R42 K72 ["onChanged"]
      520 GETUPVAL                         R43 14
      521 GETTABLEKS                       R43 R43 K80 ["XSmall"]
      523 SETTABLEKS                       R43 R42 K73 ["size"]
      525 GETTABLEKS                       R43 R4 K137 ["name"]
      527 SETTABLEKS                       R43 R42 K75 ["text"]
      529 GETUPVAL                         R43 15
      530 GETTABLEKS                       R43 R43 K87 ["Utility"]
      532 SETTABLEKS                       R43 R42 K77 ["variant"]
      534 GETIMPORT                        R43 K90 [UDim.new]
      536 LOADN                            R44 1
      537 LOADN                            R45 0
      538 CALL                             R43 2 1
      539 SETTABLEKS                       R43 R42 K78 ["width"]
      541 CALL                             R40 2 1
      542 SETTABLEKS                       R40 R39 K132 ["control"]
      544 LOADK                            R42 K114 ["Plugin"]
      545 LOADK                            R43 K138 ["NameLabel"]
      546 NAMECALL                         R40 R1 K116 ["getText"]
      548 CALL                             R40 3 1
      549 SETTABLEKS                       R40 R39 K70 ["label"]
      551 MOVE                             R40 R26
      552 CALL                             R40 0 1
      553 SETTABLEKS                       R40 R39 K133 ["layoutOrder"]
      555 CALL                             R37 2 1
      556 SETTABLEKS                       R37 R36 K126 ["Name"]
      558 GETUPVAL                         R37 0
      559 GETTABLEKS                       R37 R37 K9 ["createElement"]
      561 GETUPVAL                         R38 19
      562 DUPTABLE                         R39 K134 [{"control", "label", "layoutOrder"}]
      563 GETUPVAL                         R40 0
      564 GETTABLEKS                       R40 R40 K9 ["createElement"]
      566 GETUPVAL                         R41 20
      567 DUPTABLE                         R42 K141 [{"dropdownProps", "overlayGui"}]
      568 DUPTABLE                         R43 K148 [{["items"], ["label"] = "", ["maxHeight"] = 240, ["onItemChanged"], ["size"], ["testId"] = "terrain-material-base-material", ["value"], ["variant"], ["width"]}]
      569 GETUPVAL                         R44 21
      570 SETTABLEKS                       R44 R43 K142 ["items"]
      572 SETTABLEKS                       R14 R43 K145 ["onItemChanged"]
      574 GETUPVAL                         R44 14
      575 GETTABLEKS                       R44 R44 K80 ["XSmall"]
      577 SETTABLEKS                       R44 R43 K73 ["size"]
      579 GETTABLEKS                       R44 R4 K8 ["material"]
      581 GETTABLEKS                       R44 R44 K126 ["Name"]
      583 SETTABLEKS                       R44 R43 K147 ["value"]
      585 GETUPVAL                         R44 15
      586 GETTABLEKS                       R44 R44 K87 ["Utility"]
      588 SETTABLEKS                       R44 R43 K77 ["variant"]
      590 GETIMPORT                        R44 K90 [UDim.new]
      592 LOADN                            R45 1
      593 LOADN                            R46 0
      594 CALL                             R44 2 1
      595 SETTABLEKS                       R44 R43 K78 ["width"]
      597 SETTABLEKS                       R43 R42 K139 ["dropdownProps"]
      599 SETTABLEKS                       R2 R42 K140 ["overlayGui"]
      601 CALL                             R40 2 1
      602 SETTABLEKS                       R40 R39 K132 ["control"]
      604 LOADK                            R42 K114 ["Plugin"]
      605 LOADK                            R43 K149 ["BaseMaterialLabel"]
      606 NAMECALL                         R40 R1 K116 ["getText"]
      608 CALL                             R40 3 1
      609 SETTABLEKS                       R40 R39 K70 ["label"]
      611 MOVE                             R40 R26
      612 CALL                             R40 0 1
      613 SETTABLEKS                       R40 R39 K133 ["layoutOrder"]
      615 CALL                             R37 2 1
      616 SETTABLEKS                       R37 R36 K127 ["Material"]
      618 GETUPVAL                         R37 0
      619 GETTABLEKS                       R37 R37 K9 ["createElement"]
      621 GETUPVAL                         R38 19
      622 DUPTABLE                         R39 K134 [{"control", "label", "layoutOrder"}]
      623 GETUPVAL                         R40 0
      624 GETTABLEKS                       R40 R40 K9 ["createElement"]
      626 GETUPVAL                         R41 20
      627 DUPTABLE                         R42 K141 [{"dropdownProps", "overlayGui"}]
      628 DUPTABLE                         R43 K151 [{["items"], ["label"] = "", ["maxHeight"] = 240, ["onItemChanged"], ["size"], ["testId"] = "terrain-material-variant", ["value"], ["variant"], ["width"]}]
      629 SETTABLEKS                       R13 R43 K142 ["items"]
      631 SETTABLEKS                       R20 R43 K145 ["onItemChanged"]
      633 GETUPVAL                         R44 14
      634 GETTABLEKS                       R44 R44 K80 ["XSmall"]
      636 SETTABLEKS                       R44 R43 K73 ["size"]
      638 GETTABLEKS                       R45 R4 K153 ["variantName"]
      640 ORK                              R44 R45 K152 ["__none__"]
      641 SETTABLEKS                       R44 R43 K147 ["value"]
      643 GETUPVAL                         R44 15
      644 GETTABLEKS                       R44 R44 K87 ["Utility"]
      646 SETTABLEKS                       R44 R43 K77 ["variant"]
      648 GETIMPORT                        R44 K90 [UDim.new]
      650 LOADN                            R45 1
      651 LOADN                            R46 0
      652 CALL                             R44 2 1
      653 SETTABLEKS                       R44 R43 K78 ["width"]
      655 SETTABLEKS                       R43 R42 K139 ["dropdownProps"]
      657 SETTABLEKS                       R2 R42 K140 ["overlayGui"]
      659 CALL                             R40 2 1
      660 SETTABLEKS                       R40 R39 K132 ["control"]
      662 LOADK                            R42 K114 ["Plugin"]
      663 LOADK                            R43 K154 ["MaterialVariantLabel"]
      664 NAMECALL                         R40 R1 K116 ["getText"]
      666 CALL                             R40 3 1
      667 SETTABLEKS                       R40 R39 K70 ["label"]
      669 MOVE                             R40 R26
      670 CALL                             R40 0 1
      671 SETTABLEKS                       R40 R39 K133 ["layoutOrder"]
      673 CALL                             R37 2 1
      674 SETTABLEKS                       R37 R36 K128 ["Variant"]
      676 GETUPVAL                         R37 0
      677 GETTABLEKS                       R37 R37 K9 ["createElement"]
      679 GETUPVAL                         R38 19
      680 DUPTABLE                         R39 K134 [{"control", "label", "layoutOrder"}]
      681 SETTABLEKS                       R28 R39 K132 ["control"]
      683 LOADK                            R42 K114 ["Plugin"]
      684 LOADK                            R43 K155 ["ColorLabel"]
      685 NAMECALL                         R40 R1 K116 ["getText"]
      687 CALL                             R40 3 1
      688 SETTABLEKS                       R40 R39 K70 ["label"]
      690 MOVE                             R40 R26
      691 CALL                             R40 0 1
      692 SETTABLEKS                       R40 R39 K133 ["layoutOrder"]
      694 CALL                             R37 2 1
      695 SETTABLEKS                       R37 R36 K129 ["Color"]
      697 JUMPIFNOT                        R7 ; [+18]
      698 GETUPVAL                         R37 0
      699 GETTABLEKS                       R37 R37 K9 ["createElement"]
      701 GETUPVAL                         R38 16
      702 DUPTABLE                         R39 K158 [{["LayoutOrder"], ["Text"], ["tag"] = "size-full-400 text-caption-small text-align-x-right content-alert", ["testId"] = "terrain-material-quick-add-error"}]
      703 MOVE                             R40 R26
      704 CALL                             R40 0 1
      705 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      707 LOADK                            R42 K114 ["Plugin"]
      708 LOADK                            R43 K159 ["CreateError"]
      709 NAMECALL                         R40 R1 K116 ["getText"]
      711 CALL                             R40 3 1
      712 SETTABLEKS                       R40 R39 K111 ["Text"]
      714 CALL                             R37 2 1
      715 JUMP                             ; [+1]
      716 LOADNIL                          R37
      717 SETTABLEKS                       R37 R36 K130 ["Error"]
      719 CALL                             R33 3 1
      720 SETTABLEKS                       R33 R32 K99 ["Fields"]
      722 GETUPVAL                         R33 0
      723 GETTABLEKS                       R33 R33 K9 ["createElement"]
      725 GETUPVAL                         R34 8
      726 DUPTABLE                         R35 K161 [{["LayoutOrder"], ["tag"] = "row gap-xsmall padding-small size-full-1200 stroke-top stroke-default"}]
      727 MOVE                             R36 R24
      728 CALL                             R36 0 1
      729 SETTABLEKS                       R36 R35 K27 ["LayoutOrder"]
      731 DUPTABLE                         R36 K164 [{"Cancel", "Create"}]
      732 GETUPVAL                         R37 0
      733 GETTABLEKS                       R37 R37 K9 ["createElement"]
      735 GETUPVAL                         R38 22
      736 DUPTABLE                         R39 K167 [{["fillBehavior"], ["LayoutOrder"], ["onActivated"], ["size"], ["text"], ["testId"] = "terrain-material-quick-add-cancel", ["variant"]}]
      737 GETUPVAL                         R40 23
      738 GETTABLEKS                       R40 R40 K168 ["Fill"]
      740 SETTABLEKS                       R40 R39 K165 ["fillBehavior"]
      742 MOVE                             R40 R27
      743 CALL                             R40 0 1
      744 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      746 GETTABLEKS                       R40 R0 K123 ["onCancel"]
      748 SETTABLEKS                       R40 R39 K32 ["onActivated"]
      750 GETUPVAL                         R40 14
      751 GETTABLEKS                       R40 R40 K80 ["XSmall"]
      753 SETTABLEKS                       R40 R39 K73 ["size"]
      755 LOADK                            R42 K114 ["Plugin"]
      756 LOADK                            R43 K169 ["CancelButton"]
      757 NAMECALL                         R40 R1 K116 ["getText"]
      759 CALL                             R40 3 1
      760 SETTABLEKS                       R40 R39 K75 ["text"]
      762 GETUPVAL                         R40 24
      763 GETTABLEKS                       R40 R40 K170 ["Standard"]
      765 SETTABLEKS                       R40 R39 K77 ["variant"]
      767 CALL                             R37 2 1
      768 SETTABLEKS                       R37 R36 K162 ["Cancel"]
      770 GETUPVAL                         R37 0
      771 GETTABLEKS                       R37 R37 K9 ["createElement"]
      773 GETUPVAL                         R38 22
      774 DUPTABLE                         R39 K173 [{["fillBehavior"], ["LayoutOrder"], ["isDisabled"], ["onActivated"], ["size"], ["text"], ["testId"] = "terrain-material-quick-add-create", ["variant"]}]
      775 GETUPVAL                         R40 23
      776 GETTABLEKS                       R40 R40 K168 ["Fill"]
      778 SETTABLEKS                       R40 R39 K165 ["fillBehavior"]
      780 MOVE                             R40 R27
      781 CALL                             R40 0 1
      782 SETTABLEKS                       R40 R39 K27 ["LayoutOrder"]
      784 GETTABLEKS                       R41 R4 K137 ["name"]
      786 LOADK                            R43 K174 ["^%s*$"]
      787 NAMECALL                         R41 R41 K175 ["match"]
      789 CALL                             R41 2 1
      790 JUMPIFNOTEQKNIL                  R41 ; [+2]
      792 LOADB                            R40 0 +1
      793 LOADB                            R40 1
      794 SETTABLEKS                       R40 R39 K171 ["isDisabled"]
      796 SETTABLEKS                       R22 R39 K32 ["onActivated"]
      798 GETUPVAL                         R40 14
      799 GETTABLEKS                       R40 R40 K80 ["XSmall"]
      801 SETTABLEKS                       R40 R39 K73 ["size"]
      803 LOADK                            R42 K114 ["Plugin"]
      804 LOADK                            R43 K176 ["CreateButton"]
      805 NAMECALL                         R40 R1 K116 ["getText"]
      807 CALL                             R40 3 1
      808 SETTABLEKS                       R40 R39 K75 ["text"]
      810 GETUPVAL                         R40 24
      811 GETTABLEKS                       R40 R40 K177 ["Emphasis"]
      813 SETTABLEKS                       R40 R39 K77 ["variant"]
      815 CALL                             R37 2 1
      816 SETTABLEKS                       R37 R36 K163 ["Create"]
      818 CALL                             R33 3 1
      819 SETTABLEKS                       R33 R32 K100 ["Footer"]
      821 CALL                             R29 3 1
      822 GETUPVAL                         R30 0
      823 GETTABLEKS                       R30 R30 K9 ["createElement"]
      825 GETUPVAL                         R31 8
      826 DUPTABLE                         R32 K179 [{"Size", "ref"}]
      827 GETIMPORT                        R33 K64 [UDim2.fromOffset]
      829 LOADN                            R34 368
      830 LOADN                            R35 340
      831 CALL                             R33 2 1
      832 SETTABLEKS                       R33 R32 K59 ["Size"]
      834 SETTABLEKS                       R3 R32 K178 ["ref"]
      836 DUPTABLE                         R33 K181 [{"Form"}]
      837 SETTABLEKS                       R29 R33 K180 ["Form"]
      839 CALL                             R30 3 -1
      840 RETURN                           R30 -1

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

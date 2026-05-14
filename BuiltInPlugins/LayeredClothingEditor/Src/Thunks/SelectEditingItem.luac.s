PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isItemEmpty"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["hasAnyCage"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+32]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["isClothes"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+16]
       18 GETUPVAL                         R4 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K3 ["EDIT_MODE"]
       22 GETTABLEKS                       R5 R5 K4 ["Mesh"]
       24 CALL                             R4 1 -1
       25 NAMECALL                         R2 R0 K5 ["dispatch"]
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K3 ["EDIT_MODE"]
       31 GETTABLEKS                       R2 R2 K4 ["Mesh"]
       33 RETURN                           R2 1
       34 GETUPVAL                         R4 1
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R5 R5 K6 ["None"]
       38 CALL                             R4 1 -1
       39 NAMECALL                         R2 R0 K5 ["dispatch"]
       41 CALL                             R2 -1 0
       42 LOADNIL                          R2
       43 RETURN                           R2 1
       44 GETIMPORT                        R2 K10 [Enum.CageType.Outer]
       46 GETUPVAL                         R3 0
       47 GETTABLEKS                       R3 R3 K11 ["hasOuterCage"]
       49 MOVE                             R4 R1
       50 CALL                             R3 1 1
       51 JUMPIF                           R3 ; [+8]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K12 ["hasInnerCage"]
       55 MOVE                             R4 R1
       56 CALL                             R3 1 1
       57 JUMPIFNOT                        R3 ; [+2]
       58 GETIMPORT                        R2 K14 [Enum.CageType.Inner]
       60 GETUPVAL                         R5 1
       61 MOVE                             R6 R2
       62 CALL                             R5 1 -1
       63 NAMECALL                         R3 R0 K5 ["dispatch"]
       65 CALL                             R3 -1 0
       66 RETURN                           R2 1

PROTO_1:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 JUMPIFEQKNIL                     R1 ; [+5]
        9 GETTABLEKS                       R8 R7 K2 ["LayoutOrder"]
       11 JUMPIFNOTLT                      R8 R2 ; [+4]
       13 MOVE                             R1 R6
       14 GETTABLEKS                       R2 R7 K2 ["LayoutOrder"]
       16 FORGLOOP                         R3 2 ; [-10]
       18 JUMPIF                           R1 ; [+6]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["TABS_KEYS"]
       22 GETTABLEKS                       R3 R3 K4 ["None"]
       24 RETURN                           R3 1
       25 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["previewStatus"]
        2 GETTABLEKS                       R2 R2 K1 ["selectedTab"]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["IsValidTabKey"]
       10 MOVE                             R5 R2
       11 CALL                             R4 1 1
       12 JUMPIF                           R4 ; [+4]
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 RETURN                           R4 1
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R5 R5 K3 ["List"]
       20 GETTABLEKS                       R5 R5 K4 ["find"]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K5 ["Dictionary"]
       25 GETTABLEKS                       R6 R6 K6 ["keys"]
       27 MOVE                             R7 R3
       28 CALL                             R6 1 1
       29 MOVE                             R7 R2
       30 CALL                             R5 2 1
       31 JUMPIFNOTEQKNIL                  R5 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 JUMPIFNOT                        R4 ; [+1]
       36 RETURN                           R2 1
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R3
       39 CALL                             R5 1 1
       40 RETURN                           R5 1

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["TOOL_MODE"]
        7 GETTABLEKS                       R5 R5 K2 ["None"]
        9 CALL                             R4 1 -1
       10 NAMECALL                         R2 R0 K3 ["dispatch"]
       12 CALL                             R2 -1 0
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 GETUPVAL                         R6 4
       16 MOVE                             R7 R1
       17 CALL                             R5 2 1
       18 CALL                             R4 1 -1
       19 NAMECALL                         R2 R0 K3 ["dispatch"]
       21 CALL                             R2 -1 0
       22 GETUPVAL                         R4 5
       23 GETUPVAL                         R5 6
       24 GETTABLEKS                       R5 R5 K2 ["None"]
       26 CALL                             R4 1 -1
       27 NAMECALL                         R2 R0 K3 ["dispatch"]
       29 CALL                             R2 -1 0
       30 GETUPVAL                         R4 7
       31 DUPTABLE                         R5 K6 [{"ItemCFrame", "AttachmentCFrame"}]
       32 GETIMPORT                        R6 K9 [CFrame.new]
       34 CALL                             R6 0 1
       35 SETTABLEKS                       R6 R5 K4 ["ItemCFrame"]
       37 GETIMPORT                        R6 K9 [CFrame.new]
       39 CALL                             R6 0 1
       40 SETTABLEKS                       R6 R5 K5 ["AttachmentCFrame"]
       42 CALL                             R4 1 -1
       43 NAMECALL                         R2 R0 K3 ["dispatch"]
       45 CALL                             R2 -1 0
       46 GETUPVAL                         R4 8
       47 NEWTABLE                         R5 0 0
       49 CALL                             R4 1 -1
       50 NAMECALL                         R2 R0 K3 ["dispatch"]
       52 CALL                             R2 -1 0
       53 GETUPVAL                         R2 9
       54 GETTABLEKS                       R2 R2 K10 ["isClothes"]
       56 GETUPVAL                         R3 4
       57 CALL                             R2 1 1
       58 JUMPIFNOT                        R2 ; [+24]
       59 GETUPVAL                         R4 10
       60 GETUPVAL                         R5 4
       61 GETTABLEKS                       R5 R5 K11 ["Size"]
       63 CALL                             R4 1 -1
       64 NAMECALL                         R2 R0 K3 ["dispatch"]
       66 CALL                             R2 -1 0
       67 GETUPVAL                         R2 9
       68 GETTABLEKS                       R2 R2 K12 ["isLegacyAccessory"]
       70 GETUPVAL                         R3 4
       71 CALL                             R2 1 1
       72 JUMPIFNOT                        R2 ; [+10]
       73 GETUPVAL                         R4 11
       74 GETUPVAL                         R5 12
       75 GETUPVAL                         R7 4
       76 NAMECALL                         R5 R5 K13 ["getSpecialMeshScale"]
       78 CALL                             R5 2 -1
       79 CALL                             R4 -1 -1
       80 NAMECALL                         R2 R0 K3 ["dispatch"]
       82 CALL                             R2 -1 0
       83 GETUPVAL                         R2 13
       84 MOVE                             R3 R0
       85 GETUPVAL                         R4 4
       86 CALL                             R2 2 1
       87 NEWTABLE                         R3 2 0
       89 GETIMPORT                        R4 K17 [Enum.CageType.Inner]
       91 GETUPVAL                         R5 1
       92 GETTABLEKS                       R5 R5 K18 ["DEFAULT_CAGE_TRANSPARENCY"]
       94 SETTABLE                         R5 R3 R4
       95 GETIMPORT                        R4 K20 [Enum.CageType.Outer]
       97 GETUPVAL                         R5 1
       98 GETTABLEKS                       R5 R5 K18 ["DEFAULT_CAGE_TRANSPARENCY"]
      100 SETTABLE                         R5 R3 R4
      101 GETUPVAL                         R6 14
      102 MOVE                             R7 R3
      103 CALL                             R6 1 -1
      104 NAMECALL                         R4 R0 K3 ["dispatch"]
      106 CALL                             R4 -1 0
      107 JUMPIFEQKNIL                     R2 ; [+49]
      109 GETUPVAL                         R4 1
      110 GETTABLEKS                       R4 R4 K21 ["EDIT_MODE"]
      112 GETTABLEKS                       R4 R4 K22 ["Mesh"]
      114 JUMPIFEQ                         R2 R4 ; [+42]
      116 GETUPVAL                         R4 15
      117 GETTABLEKS                       R4 R4 K8 ["new"]
      119 CALL                             R4 0 1
      120 GETUPVAL                         R5 15
      121 GETTABLEKS                       R5 R5 K8 ["new"]
      123 CALL                             R5 0 1
      124 GETIMPORT                        R8 K17 [Enum.CageType.Inner]
      126 GETUPVAL                         R9 4
      127 NAMECALL                         R6 R4 K23 ["initFromCageMesh"]
      129 CALL                             R6 3 0
      130 GETIMPORT                        R8 K20 [Enum.CageType.Outer]
      132 GETUPVAL                         R9 4
      133 NAMECALL                         R6 R5 K23 ["initFromCageMesh"]
      135 CALL                             R6 3 0
      136 GETUPVAL                         R6 16
      137 MOVE                             R8 R4
      138 NAMECALL                         R6 R6 K24 ["setInnerCageContext"]
      140 CALL                             R6 2 0
      141 GETUPVAL                         R6 16
      142 MOVE                             R8 R5
      143 NAMECALL                         R6 R6 K25 ["setOuterCageContext"]
      145 CALL                             R6 2 0
      146 GETUPVAL                         R6 17
      147 LOADB                            R7 0
      148 SETTABLEKS                       R7 R6 K26 ["RigidFlow"]
      150 GETUPVAL                         R6 18
      151 LOADK                            R8 K27 ["LayeredAccessorySelected"]
      152 NAMECALL                         R6 R6 K28 ["getHandler"]
      154 CALL                             R6 2 1
      155 CALL                             R6 0 0
      156 RETURN                           R0 0
      157 GETUPVAL                         R4 16
      158 NAMECALL                         R4 R4 K24 ["setInnerCageContext"]
      160 CALL                             R4 1 0
      161 GETUPVAL                         R4 16
      162 NAMECALL                         R4 R4 K25 ["setOuterCageContext"]
      164 CALL                             R4 1 0
      165 GETUPVAL                         R4 17
      166 LOADB                            R5 1
      167 SETTABLEKS                       R5 R4 K26 ["RigidFlow"]
      169 GETUPVAL                         R4 18
      170 LOADK                            R6 K29 ["RigidAccessorySelected"]
      171 NAMECALL                         R4 R4 K28 ["getHandler"]
      173 CALL                             R4 2 1
      174 CALL                             R4 0 0
      175 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U15
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K5 ["Packages"]
       18 GETTABLEKS                       R2 R2 K7 ["LuaMeshEditingModule"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Packages"]
       24 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R4 R3 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["AccessoryAndBodyToolShared"]
       31 GETTABLEKS                       R5 R4 K11 ["AccessoryUtil"]
       33 GETTABLEKS                       R6 R4 K12 ["ItemCharacteristics"]
       35 GETTABLEKS                       R7 R4 K13 ["PreviewConstants"]
       37 GETTABLEKS                       R8 R4 K14 ["PreviewConstantsInterface"]
       39 GETTABLEKS                       R9 R4 K15 ["getActivePreviewTabs"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R2 K16 ["MeshEditingContexts"]
       45 GETTABLEKS                       R11 R11 K17 ["CageEditingContext"]
       47 CALL                             R10 1 1
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R12 R0 K18 ["Src"]
       52 GETTABLEKS                       R12 R12 K19 ["Actions"]
       54 GETTABLEKS                       R12 R12 K20 ["SetPreviewAssetsSelected"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETTABLEKS                       R13 R0 K18 ["Src"]
       61 GETTABLEKS                       R13 R13 K9 ["Util"]
       63 GETTABLEKS                       R13 R13 K21 ["Constants"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K4 [require]
       68 GETTABLEKS                       R14 R0 K18 ["Src"]
       70 GETTABLEKS                       R14 R14 K19 ["Actions"]
       72 GETTABLEKS                       R14 R14 K22 ["SetEditingCage"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K4 [require]
       77 GETTABLEKS                       R15 R0 K18 ["Src"]
       79 GETTABLEKS                       R15 R15 K19 ["Actions"]
       81 GETTABLEKS                       R15 R15 K23 ["SetItemSize"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R0 K18 ["Src"]
       88 GETTABLEKS                       R16 R16 K19 ["Actions"]
       90 GETTABLEKS                       R16 R16 K24 ["SetMeshScale"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K4 [require]
       95 GETTABLEKS                       R17 R0 K18 ["Src"]
       97 GETTABLEKS                       R17 R17 K19 ["Actions"]
       99 GETTABLEKS                       R17 R17 K25 ["SetAccessoryTypeInfo"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K4 [require]
      104 GETTABLEKS                       R18 R0 K18 ["Src"]
      106 GETTABLEKS                       R18 R18 K19 ["Actions"]
      108 GETTABLEKS                       R18 R18 K26 ["SetAttachmentPoint"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K4 [require]
      113 GETTABLEKS                       R19 R0 K18 ["Src"]
      115 GETTABLEKS                       R19 R19 K19 ["Actions"]
      117 GETTABLEKS                       R19 R19 K27 ["SelectPreviewTab"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K4 [require]
      122 GETTABLEKS                       R20 R0 K18 ["Src"]
      124 GETTABLEKS                       R20 R20 K19 ["Actions"]
      126 GETTABLEKS                       R20 R20 K28 ["SetCagesTransparency"]
      128 CALL                             R19 1 1
      129 GETIMPORT                        R20 K4 [require]
      131 GETTABLEKS                       R21 R0 K18 ["Src"]
      133 GETTABLEKS                       R21 R21 K19 ["Actions"]
      135 GETTABLEKS                       R21 R21 K29 ["SetToolMode"]
      137 CALL                             R20 1 1
      138 GETIMPORT                        R21 K4 [require]
      140 GETTABLEKS                       R22 R0 K18 ["Src"]
      142 GETTABLEKS                       R22 R22 K9 ["Util"]
      144 GETTABLEKS                       R22 R22 K30 ["AnalyticsGlobals"]
      146 CALL                             R21 1 1
      147 DUPCLOSURE                       R22 K31 [PROTO_0]
      148 CAPTURE                          VAL R6
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R1
      152 DUPCLOSURE                       R23 K32 [PROTO_1]
      153 CAPTURE                          VAL R7
      154 DUPCLOSURE                       R24 K33 [PROTO_2]
      155 CAPTURE                          VAL R9
      156 CAPTURE                          VAL R8
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R1
      159 DUPCLOSURE                       R25 K34 [PROTO_4]
      160 CAPTURE                          VAL R20
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R24
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R17
      167 CAPTURE                          VAL R11
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R5
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R10
      175 CAPTURE                          VAL R21
      176 RETURN                           R25 1

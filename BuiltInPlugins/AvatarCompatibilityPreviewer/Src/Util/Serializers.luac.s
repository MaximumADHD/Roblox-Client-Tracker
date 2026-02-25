PROTO_0:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R3 R0 K0 ["item"]
        3 GETTABLEKS                       R2 R3 K1 ["source"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["SOURCE_BUILTIN"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+32]
       10 DUPTABLE                         R2 K4 [{"source", "builtinItem"}]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["SOURCE_BUILTIN"]
       14 SETTABLEKS                       R3 R2 K1 ["source"]
       16 GETTABLEKS                       R5 R0 K5 ["palette"]
       18 GETTABLEKS                       R4 R5 K6 ["Serializer"]
       20 JUMPIFNOT                        R4 ; [+12]
       21 GETTABLEKS                       R5 R0 K5 ["palette"]
       23 GETTABLEKS                       R4 R5 K6 ["Serializer"]
       25 GETTABLEKS                       R3 R4 K7 ["serialize"]
       27 GETTABLEKS                       R5 R0 K0 ["item"]
       29 GETTABLEKS                       R4 R5 K3 ["builtinItem"]
       31 CALL                             R3 1 1
       32 JUMP                             ; [+4]
       33 GETTABLEKS                       R4 R0 K0 ["item"]
       35 GETTABLEKS                       R3 R4 K3 ["builtinItem"]
       37 SETTABLEKS                       R3 R2 K3 ["builtinItem"]
       39 MOVE                             R1 R2
       40 JUMP                             ; [+63]
       41 GETTABLEKS                       R3 R0 K0 ["item"]
       43 GETTABLEKS                       R2 R3 K1 ["source"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R3 R4 K8 ["SOURCE_INSTANCE"]
       48 JUMPIFNOTEQ                      R2 R3 ; [+17]
       50 DUPTABLE                         R2 K10 [{"source", "key"}]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R3 R4 K8 ["SOURCE_INSTANCE"]
       54 SETTABLEKS                       R3 R2 K1 ["source"]
       56 GETTABLEKS                       R5 R0 K0 ["item"]
       58 GETTABLEKS                       R4 R5 K11 ["instance"]
       60 GETTABLEKS                       R3 R4 K12 ["Name"]
       62 SETTABLEKS                       R3 R2 K9 ["key"]
       64 MOVE                             R1 R2
       65 JUMP                             ; [+38]
       66 GETUPVAL                         R2 1
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+23]
       69 GETTABLEKS                       R3 R0 K0 ["item"]
       71 GETTABLEKS                       R2 R3 K1 ["source"]
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R3 R4 K13 ["SOURCE_MARKETPLACE"]
       76 JUMPIFNOTEQ                      R2 R3 ; [+15]
       78 DUPTABLE                         R2 K15 [{"source", "marketplaceItem"}]
       79 GETUPVAL                         R4 0
       80 GETTABLEKS                       R3 R4 K13 ["SOURCE_MARKETPLACE"]
       82 SETTABLEKS                       R3 R2 K1 ["source"]
       84 GETTABLEKS                       R4 R0 K0 ["item"]
       86 GETTABLEKS                       R3 R4 K14 ["marketplaceItem"]
       88 SETTABLEKS                       R3 R2 K14 ["marketplaceItem"]
       90 MOVE                             R1 R2
       91 JUMP                             ; [+12]
       92 GETIMPORT                        R2 K17 [error]
       94 LOADK                            R4 K18 ["Unknown item source in serialization: %*"]
       95 GETTABLEKS                       R7 R0 K0 ["item"]
       97 GETTABLEKS                       R6 R7 K1 ["source"]
       99 NAMECALL                         R4 R4 K19 ["format"]
      101 CALL                             R4 2 1
      102 MOVE                             R3 R4
      103 CALL                             R2 1 0
      104 DUPTABLE                         R2 K21 [{"palette", "item", "isHidden"}]
      105 GETTABLEKS                       R4 R0 K5 ["palette"]
      107 GETTABLEKS                       R3 R4 K22 ["Key"]
      109 SETTABLEKS                       R3 R2 K5 ["palette"]
      111 SETTABLEKS                       R1 R2 K0 ["item"]
      113 GETTABLEKS                       R3 R0 K20 ["isHidden"]
      115 SETTABLEKS                       R3 R2 K20 ["isHidden"]
      117 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["map"]
        4 MOVE                             R4 R0
        5 DUPCLOSURE                       R5 K1 [PROTO_0]
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R3 2 -1
        9 NAMECALL                         R1 R1 K2 ["JSONEncode"]
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["palette"]
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K3 [assert]
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 GETTABLEKS                       R5 R1 K4 ["item"]
       23 GETTABLEKS                       R4 R5 K5 ["source"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R5 R6 K6 ["SOURCE_BUILTIN"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+28]
       30 DUPTABLE                         R4 K8 [{"source", "builtinItem"}]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K6 ["SOURCE_BUILTIN"]
       34 SETTABLEKS                       R5 R4 K5 ["source"]
       36 GETTABLEKS                       R6 R2 K9 ["Serializer"]
       38 JUMPIFNOT                        R6 ; [+10]
       39 GETTABLEKS                       R6 R2 K9 ["Serializer"]
       41 GETTABLEKS                       R5 R6 K10 ["deserialize"]
       43 GETTABLEKS                       R7 R1 K4 ["item"]
       45 GETTABLEKS                       R6 R7 K7 ["builtinItem"]
       47 CALL                             R5 1 1
       48 JUMP                             ; [+4]
       49 GETTABLEKS                       R6 R1 K4 ["item"]
       51 GETTABLEKS                       R5 R6 K7 ["builtinItem"]
       53 SETTABLEKS                       R5 R4 K7 ["builtinItem"]
       55 MOVE                             R3 R4
       56 JUMP                             ; [+83]
       57 GETTABLEKS                       R5 R1 K4 ["item"]
       59 GETTABLEKS                       R4 R5 K5 ["source"]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R5 R6 K11 ["SOURCE_INSTANCE"]
       64 JUMPIFNOTEQ                      R4 R5 ; [+23]
       66 GETUPVAL                         R4 2
       67 GETTABLEKS                       R7 R1 K4 ["item"]
       69 GETTABLEKS                       R6 R7 K12 ["key"]
       71 NAMECALL                         R4 R4 K13 ["FindFirstChild"]
       73 CALL                             R4 2 1
       74 JUMPIFNOTEQKNIL                  R4 ; [+3]
       76 LOADNIL                          R5
       77 RETURN                           R5 1
       78 DUPTABLE                         R5 K15 [{"source", "instance"}]
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R6 R7 K11 ["SOURCE_INSTANCE"]
       82 SETTABLEKS                       R6 R5 K5 ["source"]
       84 SETTABLEKS                       R4 R5 K14 ["instance"]
       86 MOVE                             R3 R5
       87 JUMP                             ; [+52]
       88 GETUPVAL                         R4 3
       89 CALL                             R4 0 1
       90 JUMPIFNOT                        R4 ; [+37]
       91 GETTABLEKS                       R5 R1 K4 ["item"]
       93 GETTABLEKS                       R4 R5 K5 ["source"]
       95 GETUPVAL                         R6 1
       96 GETTABLEKS                       R5 R6 K16 ["SOURCE_MARKETPLACE"]
       98 JUMPIFNOTEQ                      R4 R5 ; [+29]
      100 GETUPVAL                         R4 4
      101 JUMPIF                           R4 ; [+2]
      102 LOADNIL                          R4
      103 RETURN                           R4 1
      104 GETUPVAL                         R5 5
      105 GETTABLEKS                       R4 R5 K17 ["extractUniqueId"]
      107 GETTABLEKS                       R6 R1 K4 ["item"]
      109 GETTABLEKS                       R5 R6 K18 ["marketplaceItem"]
      111 CALL                             R4 1 1
      112 GETUPVAL                         R5 4
      113 FASTCALL1                        TOSTRING R4 ; [+3]
      114 MOVE                             R8 R4
      115 GETIMPORT                        R7 K20 [tostring]
      117 CALL                             R7 1 1
      118 NAMECALL                         R5 R5 K13 ["FindFirstChild"]
      120 CALL                             R5 2 1
      121 JUMPIFNOTEQKNIL                  R5 ; [+3]
      123 LOADNIL                          R6
      124 RETURN                           R6 1
      125 GETTABLEKS                       R3 R1 K4 ["item"]
      127 JUMP                             ; [+12]
      128 GETIMPORT                        R4 K22 [error]
      130 LOADK                            R6 K23 ["Unknown item source in deserialization: %*"]
      131 GETTABLEKS                       R9 R1 K4 ["item"]
      133 GETTABLEKS                       R8 R9 K5 ["source"]
      135 NAMECALL                         R6 R6 K24 ["format"]
      137 CALL                             R6 2 1
      138 MOVE                             R5 R6
      139 CALL                             R4 1 0
      140 DUPTABLE                         R4 K26 [{"palette", "item", "isHidden"}]
      141 SETTABLEKS                       R2 R4 K0 ["palette"]
      143 SETTABLEKS                       R3 R4 K4 ["item"]
      145 GETTABLEKS                       R5 R1 K25 ["isHidden"]
      147 SETTABLEKS                       R5 R4 K25 ["isHidden"]
      149 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["JSONDecode"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["collectArray"]
        8 MOVE                             R3 R1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_4:
        0 DUPTABLE                         R2 K2 [{"serialize", "deserialize"}]
        1 DUPCLOSURE                       R3 K3 [PROTO_1]
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 SETTABLEKS                       R3 R2 K0 ["serialize"]
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R3 R2 K1 ["deserialize"]
       19 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R1 K12 ["Src"]
       24 GETTABLEKS                       R5 R6 K13 ["Util"]
       26 GETTABLEKS                       R4 R5 K14 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R1 K12 ["Src"]
       33 GETTABLEKS                       R5 R6 K15 ["Types"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R8 K13 ["Util"]
       42 GETTABLEKS                       R6 R7 K16 ["getPaletteFromKey"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R1 K12 ["Src"]
       49 GETTABLEKS                       R8 R9 K13 ["Util"]
       51 GETTABLEKS                       R7 R8 K17 ["MarketplaceCatalogUtils"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R10 R1 K12 ["Src"]
       58 GETTABLEKS                       R9 R10 K18 ["Flags"]
       60 GETTABLEKS                       R8 R9 K19 ["getFFlagAvatarPreviewerLookComposer"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 0 0
       65 DUPCLOSURE                       R9 K20 [PROTO_4]
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R9 R8 K21 ["createEquippedItemsSerializer"]
       74 RETURN                           R8 1

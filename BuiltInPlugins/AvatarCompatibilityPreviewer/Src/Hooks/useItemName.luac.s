PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["item"]
        2 GETTABLEKS                       R3 R3 K1 ["source"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["SOURCE_INSTANCE"]
        7 JUMPIFEQ                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       13 LOADK                            R3 K3 ["Non-user item passed to findUserItemName"]
       14 GETIMPORT                        R1 K5 [assert]
       16 CALL                             R1 2 0
       17 GETTABLEKS                       R1 R0 K0 ["item"]
       19 GETTABLEKS                       R1 R1 K6 ["instance"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K7 ["REFERENCE_VALUE_NAME"]
       24 NAMECALL                         R1 R1 K8 ["FindFirstChild"]
       26 CALL                             R1 2 1
       27 JUMPIFEQKNIL                     R1 ; [+15]
       29 LOADK                            R4 K9 ["ObjectValue"]
       30 NAMECALL                         R2 R1 K10 ["IsA"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+9]
       34 GETTABLEKS                       R2 R1 K11 ["Value"]
       36 JUMPIFEQKNIL                     R2 ; [+6]
       38 GETTABLEKS                       R2 R1 K11 ["Value"]
       40 GETTABLEKS                       R2 R2 K12 ["Name"]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["useContext"]
       10 GETUPVAL                         R3 3
       11 CALL                             R2 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 1
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+21]
       17 GETTABLEKS                       R3 R0 K2 ["item"]
       19 GETTABLEKS                       R3 R3 K3 ["source"]
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R4 R4 K4 ["SOURCE_MARKETPLACE"]
       24 JUMPIFNOTEQ                      R3 R4 ; [+13]
       26 GETTABLEKS                       R3 R2 K5 ["getItemData"]
       28 GETTABLEKS                       R4 R0 K2 ["item"]
       30 GETTABLEKS                       R4 R4 K6 ["marketplaceItem"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R3
       34 JUMPIFNOT                        R4 ; [+2]
       35 GETTABLEKS                       R4 R3 K7 ["name"]
       37 RETURN                           R4 1
       38 GETTABLEKS                       R3 R0 K2 ["item"]
       40 GETTABLEKS                       R3 R3 K3 ["source"]
       42 GETUPVAL                         R4 4
       43 GETTABLEKS                       R4 R4 K8 ["SOURCE_BUILTIN"]
       45 JUMPIFEQ                         R3 R4 ; [+46]
       47 GETTABLEKS                       R6 R0 K2 ["item"]
       49 GETTABLEKS                       R6 R6 K3 ["source"]
       51 GETUPVAL                         R7 4
       52 GETTABLEKS                       R7 R7 K9 ["SOURCE_INSTANCE"]
       54 JUMPIFEQ                         R6 R7 ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 FASTCALL2K                       ASSERT R5 K10 ; [+4]
       60 LOADK                            R6 K10 ["Non-user item passed to findUserItemName"]
       61 GETIMPORT                        R4 K12 [assert]
       63 CALL                             R4 2 0
       64 GETTABLEKS                       R4 R0 K2 ["item"]
       66 GETTABLEKS                       R4 R4 K13 ["instance"]
       68 GETUPVAL                         R6 4
       69 GETTABLEKS                       R6 R6 K14 ["REFERENCE_VALUE_NAME"]
       71 NAMECALL                         R4 R4 K15 ["FindFirstChild"]
       73 CALL                             R4 2 1
       74 JUMPIFEQKNIL                     R4 ; [+15]
       76 LOADK                            R7 K16 ["ObjectValue"]
       77 NAMECALL                         R5 R4 K17 ["IsA"]
       79 CALL                             R5 2 1
       80 JUMPIFNOT                        R5 ; [+9]
       81 GETTABLEKS                       R5 R4 K18 ["Value"]
       83 JUMPIFEQKNIL                     R5 ; [+6]
       85 GETTABLEKS                       R3 R4 K18 ["Value"]
       87 GETTABLEKS                       R3 R3 K19 ["Name"]
       89 RETURN                           R3 1
       90 LOADNIL                          R3
       91 RETURN                           R3 1
       92 GETTABLEKS                       R5 R0 K2 ["item"]
       94 GETTABLEKS                       R5 R5 K3 ["source"]
       96 GETUPVAL                         R6 4
       97 GETTABLEKS                       R6 R6 K8 ["SOURCE_BUILTIN"]
       99 JUMPIFEQ                         R5 R6 ; [+2]
      101 LOADB                            R4 0 +1
      102 LOADB                            R4 1
      103 GETUPVAL                         R5 4
      104 GETTABLEKS                       R5 R5 K20 ["LUAU_ANALYZE_ERROR"]
      106 FASTCALL2                        ASSERT R4 R5 ; [+3]
      108 GETIMPORT                        R3 K12 [assert]
      110 CALL                             R3 2 0
      111 GETTABLEKS                       R3 R0 K2 ["item"]
      113 GETTABLEKS                       R3 R3 K21 ["builtinItem"]
      115 GETTABLEKS                       R5 R0 K2 ["item"]
      117 GETTABLEKS                       R5 R5 K21 ["builtinItem"]
      119 FASTCALL1                        TYPEOF R5 ; [+2]
      120 GETIMPORT                        R4 K23 [typeof]
      122 CALL                             R4 1 1
      123 JUMPIFNOTEQKS                    R4 K24 ["number"] ; [+6]
      125 GETTABLEKS                       R4 R0 K2 ["item"]
      127 GETTABLEKS                       R3 R4 K21 ["builtinItem"]
      129 JUMP                             ; [+45]
      130 GETTABLEKS                       R5 R0 K2 ["item"]
      132 GETTABLEKS                       R5 R5 K21 ["builtinItem"]
      134 FASTCALL1                        TYPEOF R5 ; [+2]
      135 GETIMPORT                        R4 K23 [typeof]
      137 CALL                             R4 1 1
      138 JUMPIFNOTEQKS                    R4 K25 ["Color3"] ; [+4]
      140 LOADNIL                          R4
      141 CLOSEUPVALS                      R3
      142 RETURN                           R4 1
      143 GETTABLEKS                       R5 R0 K2 ["item"]
      145 GETTABLEKS                       R5 R5 K21 ["builtinItem"]
      147 FASTCALL1                        TYPEOF R5 ; [+2]
      148 GETIMPORT                        R4 K23 [typeof]
      150 CALL                             R4 1 1
      151 JUMPIFNOTEQKS                    R4 K26 ["table"] ; [+20]
      153 GETTABLEKS                       R4 R0 K2 ["item"]
      155 GETTABLEKS                       R4 R4 K21 ["builtinItem"]
      157 GETTABLEKS                       R4 R4 K27 ["left"]
      159 JUMPIFEQKNIL                     R4 ; [+8]
      161 GETTABLEKS                       R4 R0 K2 ["item"]
      163 GETTABLEKS                       R4 R4 K21 ["builtinItem"]
      165 GETTABLEKS                       R3 R4 K27 ["left"]
      167 JUMP                             ; [+7]
      168 LOADNIL                          R4
      169 CLOSEUPVALS                      R3
      170 RETURN                           R4 1
      171 JUMP                             ; [+3]
      172 LOADNIL                          R4
      173 CLOSEUPVALS                      R3
      174 RETURN                           R4 1
      175 LOADK                            R5 K28 ["%*_%*"]
      176 GETTABLEKS                       R7 R0 K29 ["palette"]
      178 GETTABLEKS                       R7 R7 K30 ["Key"]
      180 MOVE                             R8 R3
      181 NAMECALL                         R5 R5 K31 ["format"]
      183 CALL                             R5 3 1
      184 MOVE                             R4 R5
      185 GETUPVAL                         R5 5
      186 GETUPVAL                         R6 6
      187 GETTABLEKS                       R6 R6 K32 ["allItems"]
      189 NEWCLOSURE                       R7 P0
      190 CAPTURE                          REF R3
      191 CALL                             R5 2 1
      192 LOADK                            R11 K33 ["ItemNames2"]
      193 MOVE                             R12 R4
      194 NAMECALL                         R9 R1 K34 ["getText"]
      196 CALL                             R9 3 1
      197 MOVE                             R7 R9
      198 JUMPIFNOT                        R5 ; [+12]
      199 GETTABLEKS                       R9 R5 K35 ["accessoryType"]
      201 JUMPIFNOTEQKS                    R9 K36 ["rigid"] ; [+9]
      203 LOADK                            R9 K37 [" (%*)"]
      204 GETTABLEKS                       R11 R5 K38 ["attachment"]
      206 NAMECALL                         R9 R9 K31 ["format"]
      208 CALL                             R9 2 1
      209 MOVE                             R8 R9
      210 JUMP                             ; [+1]
      211 LOADK                            R8 K39 [""]
      212 CONCAT                           R6 R7 R8
      213 MOVE                             R9 R4
      214 NAMECALL                         R7 R6 K40 ["match"]
      216 CALL                             R7 2 1
      217 JUMPIFNOT                        R7 ; [+3]
      218 LOADNIL                          R7
      219 CLOSEUPVALS                      R3
      220 RETURN                           R7 1
      221 CLOSEUPVALS                      R3
      222 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["BuiltinItems"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Util"]
       43 GETTABLEKS                       R6 R6 K14 ["Constants"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K9 ["Src"]
       50 GETTABLEKS                       R7 R7 K13 ["Util"]
       52 GETTABLEKS                       R7 R7 K15 ["find"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K9 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Components"]
       61 GETTABLEKS                       R8 R8 K17 ["MarketplaceCatalogContext"]
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R8 R1 K18 ["ContextServices"]
       66 GETTABLEKS                       R8 R8 K19 ["Localization"]
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K9 ["Src"]
       72 GETTABLEKS                       R10 R10 K20 ["Flags"]
       74 GETTABLEKS                       R10 R10 K21 ["getFFlagAvatarPreviewerLookComposer"]
       76 CALL                             R9 1 1
       77 DUPCLOSURE                       R10 K22 [PROTO_0]
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R11 K23 [PROTO_2]
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 RETURN                           R11 1

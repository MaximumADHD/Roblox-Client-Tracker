PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["dialog"]
        2 JUMPIFNOT                        R2 ; [+11]
        3 GETTABLEKS                       R2 R0 K0 ["dialog"]
        5 GETTABLEKS                       R2 R2 K1 ["subsequentDialogQueue"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETTABLEKS                       R2 R0 K0 ["dialog"]
       10 GETTABLEKS                       R2 R2 K1 ["subsequentDialogQueue"]
       12 GETTABLEN                        R1 R2 1
       13 RETURN                           R1 1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["purchase"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["purchase"]
        5 GETTABLEKS                       R1 R1 K1 ["robuxBalance"]
        7 RETURN                           R1 1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Localization"]
        7 NAMECALL                         R1 R1 K0 ["use"]
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 GETUPVAL                         R3 3
       13 DUPCLOSURE                       R4 K2 [PROTO_0]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 3
       16 DUPCLOSURE                       R5 K3 [PROTO_1]
       17 CALL                             R4 1 1
       18 GETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       21 NEWCLOSURE                       R6 P2
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U5
       24 NEWTABLE                         R7 0 1
       26 MOVE                             R8 R2
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 JUMPIF                           R3 ; [+1]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R6 R3 K5 ["assetData"]
       34 GETTABLEKS                       R7 R3 K6 ["status"]
       36 JUMPIFNOT                        R6 ; [+3]
       37 GETTABLEKS                       R8 R6 K7 ["Asset"]
       39 JUMP                             ; [+1]
       40 LOADNIL                          R8
       41 JUMPIFNOT                        R6 ; [+3]
       42 GETTABLEKS                       R9 R6 K8 ["FiatProduct"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 LOADNIL                          R11
       48 JUMPIFNOT                        R9 ; [+14]
       49 MOVE                             R12 R9
       50 JUMPIFNOT                        R12 ; [+2]
       51 GETTABLEKS                       R12 R9 K9 ["PurchasePrice"]
       53 MOVE                             R11 R12
       54 MOVE                             R12 R9
       55 JUMPIFNOT                        R12 ; [+5]
       56 GETUPVAL                         R12 6
       57 GETTABLEKS                       R12 R12 K10 ["isFree"]
       59 MOVE                             R13 R11
       60 CALL                             R12 1 1
       61 MOVE                             R10 R12
       62 JUMP                             ; [+17]
       63 GETUPVAL                         R12 7
       64 CALL                             R12 0 1
       65 JUMPIF                           R12 ; [+14]
       66 JUMPIFNOT                        R6 ; [+13]
       67 GETTABLEKS                       R13 R6 K11 ["Product"]
       69 JUMPIFNOT                        R13 ; [+5]
       70 GETTABLEKS                       R12 R6 K11 ["Product"]
       72 GETTABLEKS                       R12 R12 K12 ["Price"]
       74 JUMPIF                           R12 ; [+1]
       75 LOADN                            R12 0
       76 JUMPIFEQKN                       R12 K13 [0] ; [+2]
       78 LOADB                            R10 0 +1
       79 LOADB                            R10 1
       80 JUMPIFNOT                        R8 ; [+3]
       81 GETTABLEKS                       R12 R8 K14 ["Name"]
       83 JUMP                             ; [+1]
       84 LOADK                            R12 K15 [""]
       85 GETUPVAL                         R13 8
       86 GETTABLEKS                       R13 R13 K16 ["ExcessiveTransactions"]
       88 JUMPIFNOTEQ                      R7 R13 ; [+30]
       90 GETUPVAL                         R13 4
       91 GETTABLEKS                       R13 R13 K17 ["createElement"]
       93 GETUPVAL                         R14 9
       94 DUPTABLE                         R15 K22 [{"Description", "Header", "Image", "OnClose"}]
       95 LOADK                            R18 K23 ["Purchase"]
       96 LOADK                            R19 K24 ["ExcessiveTransactionsDetails"]
       97 NAMECALL                         R16 R1 K25 ["getText"]
       99 CALL                             R16 3 1
      100 SETTABLEKS                       R16 R15 K18 ["Description"]
      102 LOADK                            R18 K23 ["Purchase"]
      103 LOADK                            R19 K26 ["ExcessiveTransactionsHeader"]
      104 NAMECALL                         R16 R1 K25 ["getText"]
      106 CALL                             R16 3 1
      107 SETTABLEKS                       R16 R15 K19 ["Header"]
      109 GETTABLEKS                       R16 R0 K27 ["dialog"]
      111 GETTABLEKS                       R16 R16 K28 ["errorIcon"]
      113 SETTABLEKS                       R16 R15 K20 ["Image"]
      115 SETTABLEKS                       R5 R15 K21 ["OnClose"]
      117 CALL                             R13 2 -1
      118 RETURN                           R13 -1
      119 GETUPVAL                         R13 8
      120 GETTABLEKS                       R13 R13 K29 ["PriceChanged"]
      122 JUMPIFNOTEQ                      R7 R13 ; [+43]
      124 GETUPVAL                         R13 4
      125 GETTABLEKS                       R13 R13 K17 ["createElement"]
      127 GETUPVAL                         R14 9
      128 DUPTABLE                         R15 K22 [{"Description", "Header", "Image", "OnClose"}]
      129 LOADK                            R18 K23 ["Purchase"]
      130 LOADK                            R19 K30 ["PriceChangedDetails"]
      131 DUPTABLE                         R20 K33 [{"name", "price"}]
      132 SETTABLEKS                       R12 R20 K31 ["name"]
      134 JUMPIFNOT                        R11 ; [+6]
      135 GETUPVAL                         R21 6
      136 GETTABLEKS                       R21 R21 K34 ["displayStringFromMoney"]
      138 MOVE                             R22 R11
      139 CALL                             R21 1 1
      140 JUMP                             ; [+1]
      141 LOADK                            R21 K15 [""]
      142 SETTABLEKS                       R21 R20 K32 ["price"]
      144 NAMECALL                         R16 R1 K25 ["getText"]
      146 CALL                             R16 4 1
      147 SETTABLEKS                       R16 R15 K18 ["Description"]
      149 LOADK                            R18 K23 ["Purchase"]
      150 LOADK                            R19 K35 ["FailedHeader"]
      151 NAMECALL                         R16 R1 K25 ["getText"]
      153 CALL                             R16 3 1
      154 SETTABLEKS                       R16 R15 K19 ["Header"]
      156 GETTABLEKS                       R16 R0 K27 ["dialog"]
      158 GETTABLEKS                       R16 R16 K28 ["errorIcon"]
      160 SETTABLEKS                       R16 R15 K20 ["Image"]
      162 SETTABLEKS                       R5 R15 K21 ["OnClose"]
      164 CALL                             R13 2 -1
      165 RETURN                           R13 -1
      166 GETUPVAL                         R13 8
      167 GETTABLEKS                       R13 R13 K36 ["PurchaseFailed"]
      169 JUMPIFNOTEQ                      R7 R13 ; [+33]
      171 GETUPVAL                         R13 4
      172 GETTABLEKS                       R13 R13 K17 ["createElement"]
      174 GETUPVAL                         R14 9
      175 DUPTABLE                         R15 K22 [{"Description", "Header", "Image", "OnClose"}]
      176 LOADK                            R18 K23 ["Purchase"]
      177 LOADK                            R19 K37 ["FailedDetails"]
      178 DUPTABLE                         R20 K38 [{"name"}]
      179 SETTABLEKS                       R12 R20 K31 ["name"]
      181 NAMECALL                         R16 R1 K25 ["getText"]
      183 CALL                             R16 4 1
      184 SETTABLEKS                       R16 R15 K18 ["Description"]
      186 LOADK                            R18 K23 ["Purchase"]
      187 LOADK                            R19 K35 ["FailedHeader"]
      188 NAMECALL                         R16 R1 K25 ["getText"]
      190 CALL                             R16 3 1
      191 SETTABLEKS                       R16 R15 K19 ["Header"]
      193 GETTABLEKS                       R16 R0 K27 ["dialog"]
      195 GETTABLEKS                       R16 R16 K28 ["errorIcon"]
      197 SETTABLEKS                       R16 R15 K20 ["Image"]
      199 SETTABLEKS                       R5 R15 K21 ["OnClose"]
      201 CALL                             R13 2 -1
      202 RETURN                           R13 -1
      203 GETUPVAL                         R13 8
      204 GETTABLEKS                       R13 R13 K39 ["PurchaseSuccess"]
      206 JUMPIFNOTEQ                      R7 R13 ; [+64]
      208 JUMPIFNOT                        R11 ; [+47]
      209 JUMPIFNOT                        R10 ; [+6]
      210 LOADK                            R15 K23 ["Purchase"]
      211 LOADK                            R16 K40 ["FreeTitle"]
      212 NAMECALL                         R13 R1 K25 ["getText"]
      214 CALL                             R13 3 1
      215 JUMP                             ; [+5]
      216 LOADK                            R15 K23 ["Purchase"]
      217 LOADK                            R16 K41 ["BuyTitle"]
      218 NAMECALL                         R13 R1 K25 ["getText"]
      220 CALL                             R13 3 1
      221 JUMPIFNOT                        R10 ; [+6]
      222 LOADK                            R16 K23 ["Purchase"]
      223 LOADK                            R17 K42 ["FreeSuccessHeader"]
      224 NAMECALL                         R14 R1 K25 ["getText"]
      226 CALL                             R14 3 1
      227 JUMP                             ; [+5]
      228 LOADK                            R16 K23 ["Purchase"]
      229 LOADK                            R17 K43 ["SuccessHeader"]
      230 NAMECALL                         R14 R1 K25 ["getText"]
      232 CALL                             R14 3 1
      233 GETUPVAL                         R15 4
      234 GETTABLEKS                       R15 R15 K17 ["createElement"]
      236 GETUPVAL                         R16 9
      237 DUPTABLE                         R17 K45 [{"Description", "Header", "OnClose", "Title"}]
      238 LOADK                            R20 K23 ["Purchase"]
      239 LOADK                            R21 K46 ["SuccessDetails"]
      240 DUPTABLE                         R22 K38 [{"name"}]
      241 SETTABLEKS                       R12 R22 K31 ["name"]
      243 NAMECALL                         R18 R1 K25 ["getText"]
      245 CALL                             R18 4 1
      246 SETTABLEKS                       R18 R17 K18 ["Description"]
      248 SETTABLEKS                       R14 R17 K19 ["Header"]
      250 SETTABLEKS                       R5 R17 K21 ["OnClose"]
      252 SETTABLEKS                       R13 R17 K44 ["Title"]
      254 CALL                             R15 2 -1
      255 RETURN                           R15 -1
      256 GETUPVAL                         R13 4
      257 GETTABLEKS                       R13 R13 K17 ["createElement"]
      259 GETUPVAL                         R14 10
      260 DUPTABLE                         R15 K49 [{"Balance", "IsFree", "Name", "OnClose"}]
      261 SETTABLEKS                       R4 R15 K47 ["Balance"]
      263 SETTABLEKS                       R10 R15 K48 ["IsFree"]
      265 SETTABLEKS                       R12 R15 K14 ["Name"]
      267 SETTABLEKS                       R5 R15 K21 ["OnClose"]
      269 CALL                             R13 2 -1
      270 RETURN                           R13 -1
      271 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Src"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["SharedFlags"]
       17 GETTABLEKS                       R3 R3 K10 ["getFFlagToolboxRemoveRobuxProductEntirely"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K4 ["Packages"]
       24 GETTABLEKS                       R4 R4 K11 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["Hooks"]
       33 GETTABLEKS                       R5 R5 K13 ["useDispatch"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K7 ["Src"]
       40 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       42 GETTABLEKS                       R6 R6 K14 ["useSelector"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K6 [require]
       47 GETTABLEKS                       R7 R0 K7 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Components"]
       51 GETTABLEKS                       R7 R7 K16 ["PurchaseFlow"]
       53 GETTABLEKS                       R7 R7 K17 ["GenericDialog"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R8 R0 K7 ["Src"]
       60 GETTABLEKS                       R8 R8 K15 ["Components"]
       62 GETTABLEKS                       R8 R8 K16 ["PurchaseFlow"]
       64 GETTABLEKS                       R8 R8 K18 ["PurchaseSuccessDialog"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K6 [require]
       69 GETTABLEKS                       R9 R0 K7 ["Src"]
       71 GETTABLEKS                       R9 R9 K8 ["Util"]
       73 GETTABLEKS                       R9 R9 K19 ["FiatUtil"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K6 [require]
       78 GETTABLEKS                       R10 R0 K7 ["Src"]
       80 GETTABLEKS                       R10 R10 K8 ["Util"]
       82 GETTABLEKS                       R10 R10 K20 ["Images"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K6 [require]
       87 GETTABLEKS                       R11 R0 K7 ["Src"]
       89 GETTABLEKS                       R11 R11 K8 ["Util"]
       91 GETTABLEKS                       R11 R11 K21 ["Urls"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K6 [require]
       96 GETTABLEKS                       R12 R1 K22 ["Framework"]
       98 CALL                             R11 1 1
       99 GETTABLEKS                       R12 R11 K23 ["ContextServices"]
      101 GETTABLEKS                       R13 R12 K24 ["Stylizer"]
      103 GETTABLEKS                       R14 R12 K25 ["withContext"]
      105 GETIMPORT                        R15 K6 [require]
      107 GETTABLEKS                       R16 R0 K7 ["Src"]
      109 GETTABLEKS                       R16 R16 K23 ["ContextServices"]
      111 GETTABLEKS                       R16 R16 K26 ["NetworkContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K6 [require]
      116 GETTABLEKS                       R17 R0 K7 ["Src"]
      118 GETTABLEKS                       R17 R17 K27 ["Types"]
      120 GETTABLEKS                       R17 R17 K28 ["SubsequentDialogStatus"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R0 K7 ["Src"]
      125 GETTABLEKS                       R17 R17 K29 ["Actions"]
      127 GETIMPORT                        R18 K6 [require]
      129 GETTABLEKS                       R19 R17 K30 ["DequeueSubsequentDialog"]
      131 CALL                             R18 1 1
      132 DUPCLOSURE                       R19 K31 [PROTO_3]
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 RETURN                           R19 1

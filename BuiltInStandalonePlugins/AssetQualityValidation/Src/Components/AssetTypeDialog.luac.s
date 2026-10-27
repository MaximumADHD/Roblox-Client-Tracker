PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 LOADK                            R0 K1 ["AssetQualityValidation_AssetTypeDialog_%*"]
        4 GETUPVAL                         R2 0
        5 NAMECALL                         R0 R0 K2 ["format"]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Model"] ; [+3]
        4 LOADK                            R1 K2 ["Body"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R2 R0 K3 ["IsLayered"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADK                            R1 K4 ["LayeredClothing"]
       10 RETURN                           R1 1
       11 LOADK                            R1 K5 ["RigidAccessory"]
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["models"]
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R3 R0 K2 ["pendingAssetTypes"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 GETTABLEKS                       R4 R0 K3 ["buildDropdownItems"]
       16 GETTABLEKS                       R5 R0 K4 ["bundleTypeItems"]
       18 LENGTH                           R7 R2
       19 LOADN                            R8 0
       20 JUMPIFLT                         R8 R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 NEWTABLE                         R7 0 0
       26 MOVE                             R8 R2
       27 LOADNIL                          R9
       28 LOADNIL                          R10
       29 FORGPREP                         R8
       30 JUMPIFNOT                        R4 ; [+6]
       31 MOVE                             R13 R4
       32 MOVE                             R14 R5
       33 GETTABLEKS                       R15 R12 K5 ["ClassName"]
       35 CALL                             R13 2 1
       36 JUMP                             ; [+2]
       37 NEWTABLE                         R13 0 0
       39 LOADNIL                          R14
       40 MOVE                             R15 R13
       41 LOADNIL                          R16
       42 LOADNIL                          R17
       43 FORGPREP                         R15
       44 GETTABLEKS                       R20 R19 K6 ["id"]
       46 GETTABLE                         R21 R3 R11
       47 JUMPIFNOTEQ                      R20 R21 ; [+4]
       49 GETTABLEKS                       R14 R19 K6 ["id"]
       51 JUMP                             ; [+2]
       52 FORGLOOP                         R15 2 ; [-9]
       54 JUMPIFNOTEQKNIL                  R14 ; [+2]
       56 LOADB                            R6 0
       57 LOADK                            R15 K7 ["AssetTypeRow_%*"]
       58 MOVE                             R17 R11
       59 NAMECALL                         R15 R15 K8 ["format"]
       61 CALL                             R15 2 1
       62 GETUPVAL                         R16 1
       63 GETTABLEKS                       R16 R16 K9 ["createElement"]
       65 GETUPVAL                         R17 2
       66 DUPTABLE                         R18 K14 [{["tag"] = "row align-y-center gap-large size-full-0 auto-y padding-y-small", ["testId"], ["LayoutOrder"]}]
       67 LOADK                            R19 K15 ["aqv-asset-type-row-%*"]
       68 MOVE                             R21 R11
       69 NAMECALL                         R19 R19 K8 ["format"]
       71 CALL                             R19 2 1
       72 SETTABLEKS                       R19 R18 K12 ["testId"]
       74 SETTABLEKS                       R11 R18 K13 ["LayoutOrder"]
       76 DUPTABLE                         R19 K18 [{"Labels", "Dropdown"}]
       77 GETUPVAL                         R20 1
       78 GETTABLEKS                       R20 R20 K9 ["createElement"]
       80 GETUPVAL                         R21 2
       81 DUPTABLE                         R22 K21 [{["tag"] = "col align-x-left grow auto-y", ["LayoutOrder"] = 1}]
       82 DUPTABLE                         R23 K24 [{"Name", "Category"}]
       83 GETUPVAL                         R24 1
       84 GETTABLEKS                       R24 R24 K9 ["createElement"]
       86 GETUPVAL                         R25 3
       87 DUPTABLE                         R26 K27 [{["tag"] = "size-full-0 auto-y text-title-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"] = 1}]
       88 GETTABLEKS                       R27 R12 K22 ["Name"]
       90 SETTABLEKS                       R27 R26 K26 ["Text"]
       92 CALL                             R24 2 1
       93 SETTABLEKS                       R24 R23 K22 ["Name"]
       95 GETUPVAL                         R24 1
       96 GETTABLEKS                       R24 R24 K9 ["createElement"]
       98 GETUPVAL                         R25 3
       99 DUPTABLE                         R26 K30 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left text-truncate-end content-default", ["Text"], ["testId"], ["LayoutOrder"] = 2}]
      100 LOADK                            R29 K26 ["Text"]
      101 GETTABLEKS                       R31 R12 K5 ["ClassName"]
      103 JUMPIFNOTEQKS                    R31 K31 ["Model"] ; [+3]
      105 LOADK                            R30 K32 ["Body"]
      106 JUMP                             ; [+6]
      107 GETTABLEKS                       R31 R12 K33 ["IsLayered"]
      109 JUMPIFNOT                        R31 ; [+2]
      110 LOADK                            R30 K34 ["LayeredClothing"]
      111 JUMP                             ; [+1]
      112 LOADK                            R30 K35 ["RigidAccessory"]
      113 NAMECALL                         R27 R1 K36 ["getText"]
      115 CALL                             R27 3 1
      116 SETTABLEKS                       R27 R26 K26 ["Text"]
      118 LOADK                            R27 K37 ["aqv-asset-type-category-%*"]
      119 MOVE                             R29 R11
      120 NAMECALL                         R27 R27 K8 ["format"]
      122 CALL                             R27 2 1
      123 SETTABLEKS                       R27 R26 K12 ["testId"]
      125 CALL                             R24 2 1
      126 SETTABLEKS                       R24 R23 K23 ["Category"]
      128 CALL                             R20 3 1
      129 SETTABLEKS                       R20 R19 K16 ["Labels"]
      131 GETUPVAL                         R20 1
      132 GETTABLEKS                       R20 R20 K9 ["createElement"]
      134 GETUPVAL                         R21 4
      135 GETTABLEKS                       R21 R21 K38 ["Root"]
      137 DUPTABLE                         R22 K50 [{["label"] = "", ["placeholder"], ["items"], ["value"], ["onItemChanged"], ["width"], ["size"], ["variant"], ["maxHeight"] = 200, ["testId"], ["LayoutOrder"] = 2}]
      138 LOADK                            R25 K26 ["Text"]
      139 LOADK                            R26 K23 ["Category"]
      140 NAMECALL                         R23 R1 K36 ["getText"]
      142 CALL                             R23 3 1
      143 SETTABLEKS                       R23 R22 K41 ["placeholder"]
      145 SETTABLEKS                       R13 R22 K42 ["items"]
      147 SETTABLEKS                       R14 R22 K43 ["value"]
      149 GETTABLEKS                       R23 R0 K51 ["onAssetTypeChanged"]
      151 MOVE                             R24 R11
      152 CALL                             R23 1 1
      153 SETTABLEKS                       R23 R22 K44 ["onItemChanged"]
      155 GETIMPORT                        R23 K54 [UDim.new]
      157 LOADN                            R24 0
      158 LOADN                            R25 130
      159 CALL                             R23 2 1
      160 SETTABLEKS                       R23 R22 K45 ["width"]
      162 GETUPVAL                         R23 5
      163 GETTABLEKS                       R23 R23 K55 ["XSmall"]
      165 SETTABLEKS                       R23 R22 K46 ["size"]
      167 GETUPVAL                         R23 6
      168 GETTABLEKS                       R23 R23 K56 ["Contrast"]
      170 SETTABLEKS                       R23 R22 K47 ["variant"]
      172 LOADK                            R23 K57 ["aqv-asset-type-dropdown-%*"]
      173 MOVE                             R25 R11
      174 NAMECALL                         R23 R23 K8 ["format"]
      176 CALL                             R23 2 1
      177 SETTABLEKS                       R23 R22 K12 ["testId"]
      179 CALL                             R20 2 1
      180 SETTABLEKS                       R20 R19 K17 ["Dropdown"]
      182 CALL                             R16 3 1
      183 SETTABLE                         R16 R7 R15
      184 FORGLOOP                         R8 2 ; [-155]
      186 GETUPVAL                         R8 1
      187 GETTABLEKS                       R8 R8 K9 ["createElement"]
      189 GETUPVAL                         R9 2
      190 DUPTABLE                         R10 K60 [{["tag"] = "col gap-small size-full-full bg-surface-100", ["testId"] = "aqv-asset-type-dialog"}]
      191 DUPTABLE                         R11 K63 [{"Rows", "Actions"}]
      192 GETUPVAL                         R12 1
      193 GETTABLEKS                       R12 R12 K9 ["createElement"]
      195 GETUPVAL                         R13 2
      196 DUPTABLE                         R14 K65 [{["tag"] = "size-full-0 grow padding-x-medium padding-bottom-medium", ["LayoutOrder"] = 1}]
      197 DUPTABLE                         R15 K67 [{"ScrollView"}]
      198 GETUPVAL                         R16 1
      199 GETTABLEKS                       R16 R16 K9 ["createElement"]
      201 GETUPVAL                         R17 7
      202 DUPTABLE                         R18 K71 [{"Size", "layout", "scroll"}]
      203 GETIMPORT                        R19 K74 [UDim2.fromScale]
      205 LOADN                            R20 1
      206 LOADN                            R21 1
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K68 ["Size"]
      210 DUPTABLE                         R19 K76 [{"FillDirection"}]
      211 GETIMPORT                        R20 K79 [Enum.FillDirection.Vertical]
      213 SETTABLEKS                       R20 R19 K75 ["FillDirection"]
      215 SETTABLEKS                       R19 R18 K69 ["layout"]
      217 DUPTABLE                         R19 K84 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      218 GETIMPORT                        R20 K87 [Enum.AutomaticSize.Y]
      220 SETTABLEKS                       R20 R19 K80 ["AutomaticCanvasSize"]
      222 GETIMPORT                        R20 K89 [UDim2.fromOffset]
      224 LOADN                            R21 0
      225 LOADN                            R22 0
      226 CALL                             R20 2 1
      227 SETTABLEKS                       R20 R19 K81 ["CanvasSize"]
      229 GETIMPORT                        R20 K90 [Enum.ScrollingDirection.Y]
      231 SETTABLEKS                       R20 R19 K82 ["ScrollingDirection"]
      233 GETUPVAL                         R20 8
      234 GETTABLEKS                       R20 R20 K91 ["Auto"]
      236 SETTABLEKS                       R20 R19 K83 ["scrollBarVisibility"]
      238 SETTABLEKS                       R19 R18 K70 ["scroll"]
      240 DUPTABLE                         R19 K93 [{"RowList"}]
      241 GETUPVAL                         R20 1
      242 GETTABLEKS                       R20 R20 K9 ["createElement"]
      244 GETUPVAL                         R21 2
      245 DUPTABLE                         R22 K95 [{["tag"] = "col size-full-0 auto-y padding-left-large padding-right-medium"}]
      246 MOVE                             R23 R7
      247 CALL                             R20 3 1
      248 SETTABLEKS                       R20 R19 K92 ["RowList"]
      250 CALL                             R16 3 1
      251 SETTABLEKS                       R16 R15 K66 ["ScrollView"]
      253 CALL                             R12 3 1
      254 SETTABLEKS                       R12 R11 K61 ["Rows"]
      256 GETUPVAL                         R12 1
      257 GETTABLEKS                       R12 R12 K9 ["createElement"]
      259 GETUPVAL                         R13 2
      260 DUPTABLE                         R14 K97 [{["tag"] = "row align-x-right align-y-center gap-small size-full-0 auto-y padding-x-medium padding-bottom-medium", ["LayoutOrder"] = 2}]
      261 DUPTABLE                         R15 K100 [{"SubmitButton", "CancelButton"}]
      262 GETUPVAL                         R16 1
      263 GETTABLEKS                       R16 R16 K9 ["createElement"]
      265 GETUPVAL                         R17 9
      266 DUPTABLE                         R18 K105 [{["text"], ["variant"], ["onActivated"], ["isDisabled"], ["size"], ["testId"] = "aqv-asset-type-submit", ["LayoutOrder"] = 1}]
      267 LOADK                            R21 K106 ["Common"]
      268 LOADK                            R22 K107 ["Action"]
      269 LOADK                            R23 K108 ["Continue"]
      270 NAMECALL                         R19 R1 K109 ["getProjectText"]
      272 CALL                             R19 4 1
      273 SETTABLEKS                       R19 R18 K101 ["text"]
      275 GETUPVAL                         R19 10
      276 GETTABLEKS                       R19 R19 K110 ["Emphasis"]
      278 SETTABLEKS                       R19 R18 K47 ["variant"]
      280 GETTABLEKS                       R19 R0 K111 ["onSubmit"]
      282 SETTABLEKS                       R19 R18 K102 ["onActivated"]
      284 NOT                              R19 R6
      285 SETTABLEKS                       R19 R18 K103 ["isDisabled"]
      287 GETUPVAL                         R19 5
      288 GETTABLEKS                       R19 R19 K55 ["XSmall"]
      290 SETTABLEKS                       R19 R18 K46 ["size"]
      292 CALL                             R16 2 1
      293 SETTABLEKS                       R16 R15 K98 ["SubmitButton"]
      295 GETUPVAL                         R16 1
      296 GETTABLEKS                       R16 R16 K9 ["createElement"]
      298 GETUPVAL                         R17 9
      299 DUPTABLE                         R18 K113 [{["text"], ["variant"], ["onActivated"], ["size"], ["testId"] = "aqv-asset-type-cancel", ["LayoutOrder"] = 2}]
      300 LOADK                            R21 K106 ["Common"]
      301 LOADK                            R22 K107 ["Action"]
      302 LOADK                            R23 K114 ["Cancel"]
      303 NAMECALL                         R19 R1 K109 ["getProjectText"]
      305 CALL                             R19 4 1
      306 SETTABLEKS                       R19 R18 K101 ["text"]
      308 GETUPVAL                         R19 10
      309 GETTABLEKS                       R19 R19 K115 ["Standard"]
      311 SETTABLEKS                       R19 R18 K47 ["variant"]
      313 GETTABLEKS                       R19 R0 K116 ["onCancel"]
      315 SETTABLEKS                       R19 R18 K102 ["onActivated"]
      317 GETUPVAL                         R19 5
      318 GETTABLEKS                       R19 R19 K55 ["XSmall"]
      320 SETTABLEKS                       R19 R18 K46 ["size"]
      322 CALL                             R16 2 1
      323 SETTABLEKS                       R16 R15 K99 ["CancelButton"]
      325 CALL                             R12 3 1
      326 SETTABLEKS                       R12 R11 K62 ["Actions"]
      328 CALL                             R8 3 -1
      329 RETURN                           R8 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K9 [{[1], ["InitialEnabled"] = True, ["Modal"] = True, ["Resizable"] = False, ["Size"], ["MinSize"], ["TitleBarColor"]}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["Id"]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K6 ["Size"]
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K7 ["MinSize"]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K8 ["TitleBarColor"]
       15 NAMECALL                         R0 R0 K10 ["CreateQWidgetPluginGui"]
       17 CALL                             R0 3 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 2
        8 GETUPVAL                         R2 4
        9 JUMPIFNOT                        R2 ; [+5]
       10 JUMPIFNOT                        R0 ; [+3]
       11 NAMECALL                         R2 R1 K2 ["Destroy"]
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 JUMPIF                           R0 ; [+16]
       16 GETIMPORT                        R2 K4 [warn]
       18 LOADK                            R3 K5 ["[AssetQualityValidation] Failed to open the asset category dialog:"]
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R5 R1
       21 GETIMPORT                        R4 K7 [tostring]
       23 CALL                             R4 1 1
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 5
       26 GETTABLEKS                       R2 R2 K8 ["current"]
       28 JUMPIFNOT                        R2 ; [+2]
       29 MOVE                             R3 R2
       30 CALL                             R3 0 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R2 K12 [Enum.ZIndexBehavior.Sibling]
       34 SETTABLEKS                       R2 R1 K10 ["ZIndexBehavior"]
       36 LOADK                            R4 K13 ["PluginGui"]
       37 NAMECALL                         R2 R1 K14 ["IsA"]
       39 CALL                             R2 2 1
       40 JUMPIFNOT                        R2 ; [+13]
       41 GETUPVAL                         R2 6
       42 LOADK                            R4 K15 ["Text"]
       43 LOADK                            R5 K16 ["ConfigureAssetCategory"]
       44 NAMECALL                         R2 R2 K17 ["getText"]
       46 CALL                             R2 3 1
       47 SETTABLEKS                       R2 R1 K18 ["Title"]
       49 NEWCLOSURE                       R4 P1
       50 CAPTURE                          UPVAL U5
       51 NAMECALL                         R2 R1 K19 ["BindToClose"]
       53 CALL                             R2 2 0
       54 SETUPVAL                         R1 7
       55 GETUPVAL                         R2 8
       56 MOVE                             R3 R1
       57 CALL                             R2 1 0
       58 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 0
        1 LOADNIL                          R1
        2 GETUPVAL                         R3 0
        3 ADDK                             R3 R3 K0 [1]
        4 SETUPVAL                         R3 0
        5 LOADK                            R2 K1 ["AssetQualityValidation_AssetTypeDialog_%*"]
        6 GETUPVAL                         R4 0
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 GETIMPORT                        R3 K5 [task.spawn]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          REF R0
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U5
       20 CAPTURE                          REF R1
       21 CAPTURE                          UPVAL U6
       22 CALL                             R3 1 0
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          REF R0
       25 CAPTURE                          REF R1
       26 CAPTURE                          UPVAL U6
       27 CLOSEUPVALS                      R0
       28 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 NAMECALL                         R2 R2 K1 ["get"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 3
       14 CALL                             R4 0 1
       15 GETTABLEKS                       R5 R4 K2 ["Color"]
       17 GETTABLEKS                       R5 R5 K3 ["Surface"]
       19 GETTABLEKS                       R5 R5 K4 ["Surface_100"]
       21 GETTABLEKS                       R5 R5 K5 ["Color3"]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K6 ["useState"]
       26 LOADNIL                          R7
       27 CALL                             R6 1 2
       28 GETUPVAL                         R8 4
       29 GETTABLEKS                       R8 R8 K7 ["useRef"]
       31 GETTABLEKS                       R9 R0 K8 ["onCancel"]
       33 CALL                             R8 1 1
       34 GETTABLEKS                       R9 R0 K8 ["onCancel"]
       36 SETTABLEKS                       R9 R8 K9 ["current"]
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       41 NEWCLOSURE                       R10 P0
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R11 0 3
       51 MOVE                             R12 R2
       52 MOVE                             R13 R1
       53 MOVE                             R14 R5
       54 SETLIST                          R11 R12 3 [1]
       56 CALL                             R9 2 0
       57 JUMPIF                           R6 ; [+2]
       58 LOADNIL                          R9
       59 RETURN                           R9 1
       60 GETUPVAL                         R9 7
       61 GETTABLEKS                       R9 R9 K11 ["createPortal"]
       63 GETUPVAL                         R10 4
       64 GETTABLEKS                       R10 R10 K12 ["createElement"]
       66 GETUPVAL                         R11 4
       67 GETTABLEKS                       R11 R11 K13 ["Fragment"]
       69 LOADNIL                          R12
       70 DUPTABLE                         R13 K16 [{"StyleLink", "Overlay"}]
       71 GETUPVAL                         R14 4
       72 GETTABLEKS                       R14 R14 K12 ["createElement"]
       74 LOADK                            R15 K14 ["StyleLink"]
       75 DUPTABLE                         R16 K18 [{"StyleSheet"}]
       76 SETTABLEKS                       R3 R16 K17 ["StyleSheet"]
       78 CALL                             R14 2 1
       79 SETTABLEKS                       R14 R13 K14 ["StyleLink"]
       81 GETUPVAL                         R14 4
       82 GETTABLEKS                       R14 R14 K12 ["createElement"]
       84 GETUPVAL                         R15 8
       85 DUPTABLE                         R16 K20 [{"gui"}]
       86 SETTABLEKS                       R6 R16 K19 ["gui"]
       88 DUPTABLE                         R17 K22 [{"Content"}]
       89 GETUPVAL                         R18 4
       90 GETTABLEKS                       R18 R18 K12 ["createElement"]
       92 GETUPVAL                         R19 9
       93 MOVE                             R20 R0
       94 CALL                             R18 2 1
       95 SETTABLEKS                       R18 R17 K21 ["Content"]
       97 CALL                             R14 3 1
       98 SETTABLEKS                       R14 R13 K15 ["Overlay"]
      100 CALL                             R10 3 1
      101 MOVE                             R11 R6
      102 CALL                             R9 2 -1
      103 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R5 K13 ["Plugin"]
       41 GETTABLEKS                       R8 R4 K14 ["View"]
       43 GETTABLEKS                       R9 R4 K15 ["Text"]
       45 GETTABLEKS                       R10 R4 K16 ["Button"]
       47 GETTABLEKS                       R11 R4 K17 ["Dropdown"]
       49 GETTABLEKS                       R12 R4 K18 ["ScrollView"]
       51 GETTABLEKS                       R13 R4 K19 ["OverlayProvider"]
       53 GETTABLEKS                       R14 R4 K20 ["Enums"]
       55 GETTABLEKS                       R14 R14 K21 ["ButtonVariant"]
       57 GETTABLEKS                       R15 R4 K20 ["Enums"]
       59 GETTABLEKS                       R15 R15 K22 ["InputSize"]
       61 GETTABLEKS                       R16 R4 K20 ["Enums"]
       63 GETTABLEKS                       R16 R16 K23 ["InputVariant"]
       65 GETTABLEKS                       R17 R4 K20 ["Enums"]
       67 GETTABLEKS                       R17 R17 K24 ["ScrollBarVisibility"]
       69 GETTABLEKS                       R18 R4 K25 ["Hooks"]
       71 GETTABLEKS                       R18 R18 K26 ["useTokens"]
       73 GETTABLEKS                       R19 R4 K25 ["Hooks"]
       75 GETTABLEKS                       R19 R19 K27 ["useStyleSheet"]
       77 GETIMPORT                        R20 K30 [Vector2.new]
       79 LOADN                            R21 480
       80 LOADN                            R22 256
       81 CALL                             R20 2 1
       82 LOADN                            R21 0
       83 NEWCLOSURE                       R22 P0
       84 CAPTURE                          REF R21
       85 DUPCLOSURE                       R23 K31 [PROTO_1]
       86 DUPCLOSURE                       R24 K32 [PROTO_2]
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R8
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R15
       93 CAPTURE                          VAL R16
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R17
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R14
       98 NEWCLOSURE                       R25 P3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R19
      102 CAPTURE                          VAL R18
      103 CAPTURE                          VAL R1
      104 CAPTURE                          REF R21
      105 CAPTURE                          VAL R20
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R24
      109 CLOSEUPVALS                      R21
      110 RETURN                           R25 1
